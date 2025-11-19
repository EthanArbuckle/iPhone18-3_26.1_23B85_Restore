uint64_t sub_10011DFC4()
{
  v1 = *(v0 + 1696);
  v2 = *(*v1 + 144);
  *(v0 + 1984) = v2;
  v3 = (v1 + v2);
  os_unfair_lock_lock((v1 + v2));
  v4 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 668) = v4;
  v5 = v3 + v4;
  v6 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
  v7 = *&v5[v6];
  if (*(v7 + 16))
  {
    v8 = sub_100006028(*(v0 + 1680), *(v0 + 1688));
    if (v9)
    {
      v10 = *(v0 + 1688);
      v11 = *(v0 + 1680);
      v12 = (*(v7 + 56) + (v8 << 7));
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      *(v0 + 832) = v12[2];
      *(v0 + 848) = v13;
      *(v0 + 800) = v15;
      *(v0 + 816) = v14;
      v17 = v12[5];
      v16 = v12[6];
      v18 = v12[4];
      *(v0 + 905) = *(v12 + 105);
      *(v0 + 880) = v17;
      *(v0 + 896) = v16;
      *(v0 + 864) = v18;
      v19 = *(v0 + 800);
      v20 = *(v0 + 808);
      sub_10001208C(v0 + 800, v0 + 928, &qword_100230150, &unk_1001D3700);
      sub_10012853C(v19);
      v21 = *(v0 + 896);
      v53 = *(v0 + 880);
      *v54 = v21;
      *&v54[9] = *(v0 + 905);
      v49 = *(v0 + 816);
      v50 = *(v0 + 832);
      v51 = *(v0 + 848);
      v52 = *(v0 + 864);
      *(v0 + 544) = xmmword_1001DE740;
      *(v0 + 560) = v49;
      *(v0 + 576) = v50;
      *(v0 + 592) = v51;
      *(v0 + 649) = *&v54[9];
      *(v0 + 624) = v53;
      *(v0 + 640) = v21;
      *(v0 + 608) = v52;

      sub_10001208C(v0 + 544, v0 + 1056, &qword_100230150, &unk_1001D3700);
      v22 = *&v5[v6];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *&v5[v6];
      sub_10001B1A4((v0 + 544), v11, v10, isUniquelyReferenced_nonNull_native);

      *&v5[v6] = v55;
      *(v0 + 736) = v52;
      *(v0 + 752) = v53;
      *(v0 + 768) = *v54;
      *(v0 + 777) = *&v54[9];
      *(v0 + 672) = xmmword_1001DE740;
      *(v0 + 688) = v49;
      *(v0 + 704) = v50;
      *(v0 + 720) = v51;
      sub_100011F00(v0 + 672, &qword_100230150, &unk_1001D3700);
    }
  }

  v24 = *(v0 + 1968);
  v25 = *(v0 + 1936);
  v26 = *(v0 + 1712);
  v27 = *(v0 + 1704);
  v28 = *(v0 + 1696);
  os_unfair_lock_unlock(v3);
  *(v0 + 1992) = *(*v28 + 296);
  sub_1001D0DE0();
  sub_1001D0DA0();
  *(v0 + 2000) = *(*v28 + 152);
  *(v0 + 2008) = sub_1001D20F0();
  *(v0 + 2016) = sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  v29 = swift_task_alloc();
  *(v0 + 2024) = v29;
  *(v29 + 16) = v27;
  *(v29 + 24) = v26;

  sub_100089C90(v26, v0 + 1280);

  sub_100089C90(v26, v0 + 1376);
  v30 = sub_1001D0DE0();
  v31 = sub_1001D1E90();
  if (sub_1001D1ED0())
  {
    v32 = *(v0 + 1968);
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v34, "VerifyAttestation", "", v33, 2u);
  }

  v35 = *(v0 + 1968);
  v36 = *(v0 + 1960);
  v37 = *(v0 + 1952);
  v38 = *(v0 + 1944);
  v39 = *(v0 + 1712);
  v40 = *(v0 + 1704);

  (*(v37 + 16))(v36, v35, v38);
  v41 = sub_1001D0E30();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  *(v0 + 2032) = sub_1001D0E20();

  sub_100089C90(v39, v0 + 1472);
  v44 = swift_task_alloc();
  *(v0 + 2040) = v44;
  *v44 = v0;
  v44[1] = sub_10011E42C;
  v45 = *(v0 + 1904);
  v46 = *(v0 + 1712);
  v47 = *(v0 + 1704);

  return sub_10011F90C(v45, v47, v46);
}

uint64_t sub_10011E42C()
{
  v2 = *(*v1 + 2040);
  v5 = *v1;
  *(*v1 + 2048) = v0;

  if (v0)
  {
    v3 = sub_10011F838;
  }

  else
  {
    v3 = sub_10011E540;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10011E540()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);
  v173 = *(v0 + 2008);
  v177 = *(v0 + 2016);
  v3 = *(v0 + 2000);
  v193 = *(v0 + 668);
  v181 = *(v0 + 1936);
  v4 = *(v0 + 1928);
  v204 = *(v0 + 2048);
  v210 = *(v0 + 1920);
  v5 = *(v0 + 1912);
  v197 = *(v0 + 1904);
  v6 = *(v0 + 1712);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v9 = (v8 + *(v0 + 1984));
  v185 = *(v0 + 1680);
  v189 = *(v0 + 1688);
  sub_100124054(v8 + *(v0 + 1992), "VerifyAttestation", 17, 2);

  sub_10005AF88(v6);

  sub_10005AF88(v6);

  sub_1001D2500();
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  v10 = *(v210 + 8);
  v10(v4, v5);
  v11 = *(v0 + 1632);
  v12 = *(v0 + 1640);
  os_unfair_lock_lock(v9);
  sub_10011FCC0(v9 + v193, v185, v189, v197);
  v13 = *(v0 + 1984);
  if (v204)
  {
    v14 = *(v0 + 1712);
    v15 = *(v0 + 1704);
    v16 = *(v0 + 1696);

    sub_10005AF88(v14);

    os_unfair_lock_unlock((v16 + v13));
    return;
  }

  v174 = v12;
  v166 = v10;
  v17 = *(v0 + 1904);
  v18 = *(v0 + 1896);
  v19 = *(v0 + 1864);
  os_unfair_lock_unlock((*(v0 + 1696) + v13));
  sub_10001208C(v17, v18, &qword_10022E328, &qword_1001DEFA8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *(v0 + 1896);
  v178 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    v167 = *(v0 + 1856);
    v22 = *(v0 + 1824);
    v23 = *(v0 + 1808);
    v24 = *(v0 + 1800);
    v25 = *(v0 + 1792);
    v26 = *(v0 + 1776);
    v143 = v25;
    v145 = *(v0 + 1768);
    v194 = *(v0 + 1760);
    v198 = *(v0 + 1752);
    v205 = *(v0 + 1744);
    v155 = *(v0 + 1736);
    v186 = *(v0 + 1728);
    v27 = *(v0 + 1696);
    v149 = *(v0 + 1688);
    v170 = *(v0 + 1680);
    v190 = *v21;
    swift_getErrorValue();
    v146 = *(v0 + 1608);
    v28 = *(v0 + 1616);
    v151 = *(v0 + 1624);
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    (*(v23 + 16))(v22, v27 + *(*v27 + 320), v24);
    v29 = *v27;
    v30 = (v27 + *(*v27 + 192));
    v31 = v30[1];
    v160 = *v30;
    v32 = (v27 + *(*v27 + 224));
    v33 = v32[1];
    v158 = *v32;
    v34 = (v27 + *(*v27 + 256));
    v36 = v34[1];
    v35 = v34[2];
    *(v0 + 16) = *v34;
    *(v0 + 32) = v36;
    *(v0 + 48) = v35;
    v37 = v34[6];
    v39 = v34[3];
    v38 = v34[4];
    *(v0 + 96) = v34[5];
    *(v0 + 112) = v37;
    *(v0 + 64) = v39;
    *(v0 + 80) = v38;
    v40 = v34[10];
    v42 = v34[7];
    v41 = v34[8];
    *(v0 + 160) = v34[9];
    *(v0 + 176) = v40;
    *(v0 + 128) = v42;
    *(v0 + 144) = v41;
    v43 = *v34;
    v44 = v34[2];
    *(v0 + 208) = v34[1];
    *(v0 + 224) = v44;
    *(v0 + 192) = v43;
    v45 = v34[3];
    v46 = v34[4];
    v47 = v34[6];
    *(v0 + 272) = v34[5];
    *(v0 + 288) = v47;
    *(v0 + 240) = v45;
    *(v0 + 256) = v46;
    v48 = v34[7];
    v49 = v34[8];
    v50 = v34[10];
    *(v0 + 336) = v34[9];
    *(v0 + 352) = v50;
    *(v0 + 304) = v48;
    *(v0 + 320) = v49;
    (*(v26 + 16))(v25, v27 + *(v29 + 264), v145);
    v51 = *(v28 - 8);
    v52 = *(v51 + 64) + 15;
    v53 = swift_task_alloc();
    (*(v51 + 16))(v53, v146, v28);
    v54 = (v27 + *(*v27 + 208));
    v55 = *v54;
    v56 = v54[1];
    LOBYTE(v24) = *(v27 + *(*v27 + 248));

    sub_1000884D8(v0 + 16, v0 + 368);

    sub_10001C2C8(v167, v22, v160, v31, v158, v33, v0 + 192, v143, (v0 + 1568), 0, v170, v149, v53, v178, v174, v55, v56, v24, &type metadata for SystemInfo, v28, &protocol witness table for SystemInfo, v151);

    v57 = *(*v27 + 288);
    v155[3] = &type metadata for AttestationVerificationErrorMetric;
    v155[4] = sub_10005AFDC();
    v58 = swift_allocObject();
    *v155 = v58;
    *(v58 + 48) = *(v0 + 1600);
    v59 = *(v0 + 1584);
    *(v58 + 16) = *(v0 + 1568);
    *(v58 + 32) = v59;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();

    (*(v198 + 8))(v194, v205);
  }

  else
  {
    sub_100011F00(v21, &qword_10022E328, &qword_1001DEFA8);
  }

  v60 = *(v0 + 1904);
  v199 = *(v0 + 1888);
  v206 = *(v0 + 1848);
  v61 = *(v0 + 1816);
  v62 = *(v0 + 1808);
  v63 = *(v0 + 1800);
  v64 = *(v0 + 1784);
  v65 = *(v0 + 1776);
  v66 = *(v0 + 1768);
  v67 = *(v0 + 1696);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v68 = (v67 + *(*v67 + 192));
  v69 = v68[1];
  v187 = *v68;
  (*(v62 + 16))(v61, v67 + *(*v67 + 320), v63);
  v70 = (v67 + *(*v67 + 224));
  v71 = v70[1];
  v168 = *v70;
  v72 = v67 + *(*v67 + 256);
  v171 = *(v72 + 160);
  v195 = *(v72 + 168);
  v73 = (v67 + *(*v67 + 208));
  v74 = v73[1];
  v147 = *v73;
  (*(v65 + 16))(v64, v67 + *(*v67 + 264), v66);
  sub_10001208C(v60, v199, &qword_10022E328, &qword_1001DEFA8);
  v75 = *(v67 + *(*v67 + 248));
  sub_100011AC0(&qword_10022E310, &qword_1001DEF50);
  v76 = sub_100011AC0(&qword_10022BCE8, &qword_1001DB7F8);
  v77 = (*(*(v76 - 8) + 80) + 32) & ~*(*(v76 - 8) + 80);
  v182 = *(*(v76 - 8) + 72);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1001D5480;
  v79 = v78 + v77;
  v80 = *(v76 + 48);
  *(v78 + v77) = 0;
  v163 = v74;

  v191 = v69;

  sub_1001CFD20();
  if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v81 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v81 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v152 = v78;
  v82 = *(v0 + 1816);
  v200 = *(v0 + 1784);
  *(v79 + v80) = v81;
  v83 = enum case for EventValue.int(_:);
  v84 = sub_1001CFEE0();
  v161 = *(v84 - 8);
  v85 = *(v161 + 104);
  v150 = v83;
  (v85)(v79 + v80, v83, v84);
  v86 = (v79 + v182 + *(v76 + 48));
  *(v79 + v182) = 6;
  *v86 = sub_1001CFD70();
  v86[1] = v87;
  v88 = enum case for EventValue.string(_:);
  (v85)(v86, enum case for EventValue.string(_:), v84);
  v89 = (v79 + 2 * v182);
  v90 = *(v76 + 48);
  *v89 = 1;
  v91 = &v89[v90];
  *v91 = v168;
  v91[1] = v71;
  v85();
  v92 = (v79 + 3 * v182);
  v93 = *(v76 + 48);
  *v92 = 2;
  v94 = &v92[v93];
  *v94 = v171;
  v94[1] = v195;
  v85();
  v95 = (v79 + 4 * v182);
  v96 = *(v76 + 48);
  *v95 = 4;
  v97 = &v95[v96];
  *v97 = v187;
  v97[1] = v191;
  v85();
  v98 = (v79 + 5 * v182);
  v99 = &v98[*(v76 + 48)];
  *v98 = 5;
  *v99 = sub_1001CFDB0();
  v99[1] = v100;
  v201 = v84;
  (v85)(v99, v88);
  v101 = *(v76 + 48);
  *(v79 + 6 * v182) = 7;

  sub_1001CFED0();
  v102 = (v79 - v182 + 8 * v182);
  v103 = *(v76 + 48);
  *v102 = 11;
  v104 = sub_1001D2600();
  v105 = 1000 * v104;
  if ((v104 * 1000) >> 64 != (1000 * v104) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1001D2600();
  if (__OFADD__(v105, v106 / 1000000000000000))
  {
LABEL_28:
    __break(1u);
    return;
  }

  *&v102[v103] = v105 + v106 / 1000000000000000;
  (v85)(&v102[v103], v150, v84);
  v107 = (v79 + 8 * v182);
  v108 = *(v76 + 48);
  *v107 = 12;
  v107[v108] = v75;
  (v85)(&v107[v108], enum case for EventValue.BOOL(_:), v84);
  v109 = sub_1000D5390(v152);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v211 = v109;
  if (v163)
  {
    v110 = *(v0 + 1720);
    *v110 = v147;
    v110[1] = v163;
    (v85)(v110, v88, v84);
    (*(v161 + 56))(v110, 0, 1, v84);
    sub_1000168A0(v110, 3);
  }

  v111 = *(v0 + 1864);
  sub_10001208C(*(v0 + 1888), *(v0 + 1880), &qword_10022E328, &qword_1001DEFA8);
  v112 = swift_getEnumCaseMultiPayload();
  v164 = *(v0 + 1888);
  v113 = *(v0 + 1848);
  v114 = *(v0 + 1840);
  v207 = *(v0 + 1832);
  v179 = *(v0 + 1816);
  v183 = *(v0 + 1808);
  v175 = *(v0 + 1800);
  v115 = *(v0 + 1776);
  v116 = *(v0 + 1768);
  v153 = v116;
  v156 = *(v0 + 1784);
  v117 = *(v0 + 1720);
  if (v112 == 1)
  {
    v118 = *(v0 + 1688);
    v144 = *(v0 + 1680);
    v148 = **(v0 + 1880);
    sub_1001CFED0();
    v119 = *(v161 + 56);
    v119(v117, 0, 1, v201);
    sub_1000168A0(v117, 8);
    *v117 = v144;
    v117[1] = v118;
    (v85)(v117, v88, v201);
    v119(v117, 0, 1, v201);

    sub_1000168A0(v117, 10);
    *v117 = sub_10012603C(v148);
    v117[1] = v120;
    (v85)(v117, v88, v201);
    v119(v117, 0, 1, v201);
    sub_1000168A0(v117, 9);

    sub_100011F00(v164, &qword_10022E328, &qword_1001DEFA8);
    (*(v115 + 8))(v156, v153);
    (*(v183 + 8))(v179, v175);
    (*(v114 + 8))(v113, v207);
  }

  else
  {
    v121 = *(v0 + 1880);
    sub_1001CFED0();
    (*(v161 + 56))(v117, 0, 1, v201);
    sub_1000168A0(v117, 8);
    sub_100011F00(v164, &qword_10022E328, &qword_1001DEFA8);
    (*(v115 + 8))(v156, v153);
    (*(v183 + 8))(v179, v175);
    (*(v114 + 8))(v113, v207);
    sub_100011F00(v121, &qword_10022E328, &qword_1001DEFA8);
  }

  v122 = *(v0 + 1872);
  v202 = *(v0 + 1904);
  v208 = *(v0 + 1864);
  v123 = *(v0 + 1760);
  v124 = *(v0 + 1752);
  v125 = *(v0 + 1744);
  v126 = *(v0 + 1736);
  v127 = *(v0 + 1728);
  v128 = *(**(v0 + 1696) + 288);
  v126[3] = &type metadata for AttestationVerificationMetric;
  v126[4] = sub_100127C7C();
  v129 = swift_allocObject();
  *v126 = v129;
  v129[2] = 0xD000000000000015;
  v129[3] = 0x80000001001E5B30;
  v129[4] = v211;
  v129[5] = v187;
  v129[6] = v191;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v124 + 8))(v123, v125);
  sub_10001208C(v202, v122, &qword_10022E328, &qword_1001DEFA8);
  v130 = swift_getEnumCaseMultiPayload();
  v131 = *(v0 + 1968);
  v157 = *(v0 + 1976);
  v159 = *(v0 + 1960);
  v132 = *(v0 + 1952);
  v133 = *(v0 + 1944);
  v134 = *(v0 + 1936);
  v135 = *(v0 + 1912);
  v136 = *(v0 + 1904);
  v162 = *(v0 + 1928);
  v165 = *(v0 + 1896);
  v169 = *(v0 + 1888);
  v172 = *(v0 + 1880);
  v176 = *(v0 + 1856);
  v180 = *(v0 + 1848);
  v184 = *(v0 + 1824);
  v188 = *(v0 + 1816);
  v192 = *(v0 + 1792);
  v196 = *(v0 + 1784);
  v203 = *(v0 + 1760);
  v209 = *(v0 + 1736);
  v137 = *(v0 + 1720);
  v138 = *(v0 + 1712);
  v139 = *(v0 + 1704);
  if (v130 == 1)
  {
    *(v0 + 1656) = **(v0 + 1872);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    v166(v134, v135);
    (*(v132 + 8))(v131, v133);
    sub_100011F00(v136, &qword_10022E328, &qword_1001DEFA8);

    sub_10005AF88(v138);

    sub_10005AF88(v138);
  }

  else
  {
    v154 = *(v0 + 1720);
    v141 = *(v0 + 1672);
    v142 = *(v0 + 1872);
    v166(v134, *(v0 + 1912));
    (*(v132 + 8))(v131, v133);
    sub_10012865C(v142, v141, type metadata accessor for ValidatedAttestation);
    sub_100011F00(v136, &qword_10022E328, &qword_1001DEFA8);

    sub_10005AF88(v138);

    sub_10005AF88(v138);
  }

  v140 = *(v0 + 8);

  v140();
}

uint64_t sub_10011F838()
{
  v1 = v0[256];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[214];
  v5 = v0[213];
  sub_100124054(v0[212] + v0[249], "VerifyAttestation", 17, 2);

  sub_10005AF88(v4);

  sub_10005AF88(v4);

  sub_10005AF88(v4);
}

uint64_t sub_10011F90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v6 = sub_100011AC0(&qword_10022E328, &qword_1001DEFA8);
  v3[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v3[6] = v8;
  v3[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[8] = v9;
  *v9 = v3;
  v9[1] = sub_10011FA0C;

  return sub_100124FC8(v8, a2, a3);
}

uint64_t sub_10011FA0C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10011FC00;
  }

  else
  {
    v3 = sub_10011FB20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10011FB20()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_storeEnumTagMultiPayload();
  sub_1000DBEF4(v1, v2, &qword_10022E328, &qword_1001DEFA8);
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  sub_1000DBEF4(v0[7], v0[2], &qword_10022E328, &qword_1001DEFA8);

  sub_10005AF88(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10011FC00()
{
  v1 = v0[5];
  *v0[7] = v0[9];
  swift_storeEnumTagMultiPayload();
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1000DBEF4(v0[7], v0[2], &qword_10022E328, &qword_1001DEFA8);

  sub_10005AF88(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10011FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100011AC0(&qword_10022E328, &qword_1001DEFA8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = (v33 - v11);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v14 = *(result + 144);
  v15 = *(a1 + v14);
  if (*(v15 + 16))
  {
    result = sub_100006028(a2, a3);
    if (v16)
    {
      v17 = (*(v15 + 56) + (result << 7));
      v18 = v17[3];
      v20 = *v17;
      v19 = v17[1];
      v40[2] = v17[2];
      v40[3] = v18;
      v40[0] = v20;
      v40[1] = v19;
      v21 = v17[4];
      v22 = v17[5];
      v23 = v17[6];
      *(v41 + 9) = *(v17 + 105);
      v40[5] = v22;
      v41[0] = v23;
      v40[4] = v21;
      v24 = v20;
      v25 = v17[2];
      v42 = v17[1];
      v43 = v25;
      v26 = v17[3];
      v27 = v17[4];
      *(v47 + 9) = *(v17 + 105);
      v28 = v17[6];
      v46 = v17[5];
      v47[0] = v28;
      v44 = v26;
      v45 = v27;
      if (v24 >> 62 == 3 && v24 == 0xC000000000000001)
      {
        sub_10001208C(a4, v12, &qword_10022E328, &qword_1001DEFA8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = *v12;
          sub_10001208C(v40, &v48, &qword_100230150, &unk_1001D3700);
        }

        else
        {
          sub_10001208C(v40, &v48, &qword_100230150, &unk_1001D3700);
          sub_100011F00(v12, &qword_10022E328, &qword_1001DEFA8);
          v29 = 0xC000000000000008;
        }

        v48 = v29;
        v53 = v46;
        v54[0] = v47[0];
        *(v54 + 9) = *(v47 + 9);
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v45;

        sub_10001208C(&v48, v33, &qword_100230150, &unk_1001D3700);
        v31 = *(a1 + v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33[0] = *(a1 + v14);
        sub_10001B1A4(&v48, a2, a3, isUniquelyReferenced_nonNull_native);

        *(a1 + v14) = v33[0];
        v33[0] = v29;
        v33[1] = 0;
        v38 = v46;
        v39[0] = v47[0];
        *(v39 + 9) = *(v47 + 9);
        v34 = v42;
        v35 = v43;
        v36 = v44;
        v37 = v45;
        v30 = v33;
      }

      else
      {
        v48 = v24;
        v53 = v46;
        v54[0] = v47[0];
        *(v54 + 9) = *(v47 + 9);
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v45;
        sub_10001208C(v40, v33, &qword_100230150, &unk_1001D3700);
        v30 = &v48;
      }

      return sub_100011F00(v30, &qword_100230150, &unk_1001D3700);
    }
  }

  return result;
}

uint64_t sub_10011FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[134] = v39;
  v8[133] = a8;
  v8[132] = a7;
  v8[131] = a6;
  v8[130] = a5;
  v8[129] = a4;
  v8[128] = a3;
  v8[127] = a2;
  v8[126] = a1;
  v13 = *(*(sub_100011AC0(&qword_100227DE0, &qword_1001D3B00) - 8) + 64) + 15;
  v8[135] = swift_task_alloc();
  v14 = type metadata accessor for ThimbledEvent();
  v8[136] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[137] = swift_task_alloc();
  v16 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v8[138] = v16;
  v17 = *(v16 - 8);
  v8[139] = v17;
  v18 = *(v17 + 64) + 15;
  v8[140] = swift_task_alloc();
  v19 = sub_1001CFDD0();
  v8[141] = v19;
  v20 = *(v19 - 8);
  v8[142] = v20;
  v21 = *(v20 + 64) + 15;
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  v22 = sub_1001CFDA0();
  v8[145] = v22;
  v23 = *(v22 - 8);
  v8[146] = v23;
  v24 = *(v23 + 64) + 15;
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v25 = sub_1001CFD60();
  v8[149] = v25;
  v26 = *(v25 - 8);
  v8[150] = v26;
  v27 = *(v26 + 64) + 15;
  v8[151] = swift_task_alloc();
  v8[152] = swift_task_alloc();
  v28 = sub_100011AC0(&qword_10022E300, &qword_1001DEF28);
  v8[153] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v8[154] = swift_task_alloc();
  v8[155] = swift_task_alloc();
  v8[156] = swift_task_alloc();
  v8[157] = swift_task_alloc();
  v8[158] = swift_task_alloc();
  v30 = sub_1001D20D0();
  v8[159] = v30;
  v31 = *(v30 - 8);
  v8[160] = v31;
  v32 = *(v31 + 64) + 15;
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v33 = sub_1001D0DC0();
  v8[163] = v33;
  v34 = *(v33 - 8);
  v8[164] = v34;
  v35 = *(v34 + 64) + 15;
  v8[165] = swift_task_alloc();
  v8[166] = swift_task_alloc();
  v36 = swift_task_alloc();
  v8[167] = v36;
  v36[2] = a5;
  v36[3] = a6;
  v36[4] = a7;
  v36[5] = a8;
  v36[6] = v39;

  sub_100012038(a8, v39);

  return _swift_task_switch(sub_1001203F4, 0, 0);
}

uint64_t sub_1001203F4()
{
  v1 = *(v0 + 1032);
  v2 = *(*v1 + 144);
  *(v0 + 1344) = v2;
  v3 = (v1 + v2);
  os_unfair_lock_lock((v1 + v2));
  v4 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 1416) = v4;
  v5 = v3 + v4;
  v6 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 148);
  v7 = *&v5[v6];
  if (*(v7 + 16))
  {
    v8 = sub_100006028(*(v0 + 1016), *(v0 + 1024));
    if (v9)
    {
      v10 = *(v0 + 1024);
      v50 = *(v0 + 1016);
      v11 = *(v7 + 56) + 72 * v8;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      *(v0 + 752) = *(v11 + 64);
      *(v0 + 720) = v13;
      *(v0 + 736) = v12;
      *(v0 + 704) = v14;
      *(v0 + 688) = *v11;
      v15 = *(v0 + 704);
      sub_10001208C(v0 + 688, v0 + 760, &qword_100230140, &qword_1001D36F0);
      sub_100127D1C(v15);
      v52 = *(v0 + 688);
      v53 = *(v0 + 712);
      v54 = *(v0 + 728);
      v55 = *(v0 + 744);
      *(v0 + 544) = v52;
      *(v0 + 560) = 1;
      *(v0 + 568) = v53;
      *(v0 + 584) = v54;
      *(v0 + 600) = v55;

      sub_10001208C(v0 + 544, v0 + 832, &qword_100230140, &qword_1001D36F0);
      v16 = *&v5[v6];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *&v5[v6];
      sub_10001B348(v0 + 544, v50, v10, isUniquelyReferenced_nonNull_native);

      *&v5[v6] = v56;
      *(v0 + 616) = v52;
      *(v0 + 632) = 1;
      *(v0 + 640) = v53;
      *(v0 + 656) = v54;
      *(v0 + 672) = v55;
      sub_100011F00(v0 + 616, &qword_100230140, &qword_1001D36F0);
    }
  }

  v18 = *(v0 + 1328);
  v19 = *(v0 + 1072);
  v20 = *(v0 + 1064);
  v21 = *(v0 + 1056);
  v49 = *(v0 + 1296);
  v51 = *(v0 + 1048);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1032);
  os_unfair_lock_unlock(v3);
  *(v0 + 1352) = *(*v23 + 296);
  sub_1001D0DE0();
  sub_1001D0DA0();
  *(v0 + 1360) = *(*v23 + 152);
  *(v0 + 1368) = sub_1001D20F0();
  *(v0 + 1376) = sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  v24 = swift_task_alloc();
  *(v0 + 1384) = v24;
  v24[2] = v22;
  v24[3] = v51;
  v24[4] = v21;
  v24[5] = v20;
  v24[6] = v19;

  sub_100012038(v20, v19);

  sub_100012038(v20, v19);
  v25 = sub_1001D0DE0();
  v26 = sub_1001D1E90();
  if (sub_1001D1ED0())
  {
    v27 = *(v0 + 1328);
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v29, "VerifyAttestation", "", v28, 2u);
  }

  v30 = *(v0 + 1328);
  v31 = *(v0 + 1320);
  v32 = *(v0 + 1312);
  v33 = *(v0 + 1304);
  v34 = *(v0 + 1072);
  v35 = *(v0 + 1064);
  v36 = *(v0 + 1056);
  v37 = *(v0 + 1040);

  (*(v32 + 16))(v31, v30, v33);
  v38 = sub_1001D0E30();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v0 + 1392) = sub_1001D0E20();

  sub_100012038(v35, v34);
  v41 = swift_task_alloc();
  *(v0 + 1400) = v41;
  *v41 = v0;
  v41[1] = sub_100120874;
  v42 = *(v0 + 1264);
  v43 = *(v0 + 1072);
  v44 = *(v0 + 1064);
  v45 = *(v0 + 1056);
  v46 = *(v0 + 1048);
  v47 = *(v0 + 1040);

  return sub_100121DC8(v42, v47, v46, v45, v44, v43);
}

uint64_t sub_100120874()
{
  v2 = *(*v1 + 1400);
  v5 = *v1;
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v3 = sub_100121CC0;
  }

  else
  {
    v3 = sub_100120988;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100120988()
{
  v206 = *(v0 + 1408);
  v1 = *(v0 + 1392);
  v166 = *(v0 + 1384);
  v174 = *(v0 + 1368);
  v178 = *(v0 + 1376);
  v170 = *(v0 + 1360);
  v182 = *(v0 + 1296);
  v2 = *(v0 + 1288);
  v212 = *(v0 + 1280);
  v3 = *(v0 + 1272);
  v195 = *(v0 + 1416);
  v199 = *(v0 + 1264);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = (v8 + *(v0 + 1344));
  v187 = *(v0 + 1016);
  v191 = *(v0 + 1024);
  sub_100124054(v8 + *(v0 + 1352), "VerifyAttestation", 17, 2);

  sub_100011E48(v5, v4);

  sub_100011E48(v5, v4);

  sub_1001D2500();
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  v10 = *(v212 + 8);
  v10(v2, v3);
  v11 = *(v0 + 968);
  v12 = *(v0 + 976);
  os_unfair_lock_lock(v9);
  sub_1001221D8(v9 + v195, v187, v191, v199);
  v13 = *(v0 + 1344);
  if (v206)
  {
    v14 = *(v0 + 1072);
    v15 = *(v0 + 1064);
    v16 = *(v0 + 1056);
    v17 = *(v0 + 1040);
    v18 = *(v0 + 1032);

    sub_100011E48(v15, v14);

    os_unfair_lock_unlock((v18 + v13));
    return;
  }

  v179 = v11;
  v164 = v10;
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1224);
  os_unfair_lock_unlock((*(v0 + 1032) + v13));
  sub_10001208C(v19, v20, &qword_10022E300, &qword_1001DEF28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1256);
  v175 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    v183 = *(v0 + 1216);
    v24 = *(v0 + 1184);
    v171 = v24;
    v25 = *(v0 + 1168);
    v26 = *(v0 + 1160);
    v27 = *(v0 + 1136);
    v144 = *(v0 + 1128);
    v147 = *(v0 + 1152);
    v196 = *(v0 + 1120);
    v200 = *(v0 + 1112);
    v207 = *(v0 + 1104);
    v157 = *(v0 + 1096);
    v28 = *(v0 + 1032);
    v188 = *(v0 + 1088);
    v192 = *v23;
    swift_getErrorValue();
    v29 = *(v0 + 952);
    v150 = *(v0 + 944);
    v154 = *(v0 + 960);
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    (*(v25 + 16))(v24, v28 + *(*v28 + 320), v26);
    v30 = *v28;
    v31 = (v28 + *(*v28 + 192));
    v32 = v31[1];
    v167 = *v31;
    v33 = (v28 + *(*v28 + 224));
    v34 = v33[1];
    v160 = *v33;
    v35 = (v28 + *(*v28 + 256));
    v37 = v35[1];
    v36 = v35[2];
    *(v0 + 16) = *v35;
    *(v0 + 32) = v37;
    *(v0 + 48) = v36;
    v38 = v35[6];
    v40 = v35[3];
    v39 = v35[4];
    *(v0 + 96) = v35[5];
    *(v0 + 112) = v38;
    *(v0 + 64) = v40;
    *(v0 + 80) = v39;
    v41 = v35[10];
    v43 = v35[7];
    v42 = v35[8];
    *(v0 + 160) = v35[9];
    *(v0 + 176) = v41;
    *(v0 + 128) = v43;
    *(v0 + 144) = v42;
    v44 = *v35;
    v45 = v35[2];
    *(v0 + 208) = v35[1];
    *(v0 + 224) = v45;
    *(v0 + 192) = v44;
    v46 = v35[3];
    v47 = v35[4];
    v48 = v35[6];
    *(v0 + 272) = v35[5];
    *(v0 + 288) = v48;
    *(v0 + 240) = v46;
    *(v0 + 256) = v47;
    v49 = v35[7];
    v50 = v35[8];
    v51 = v35[10];
    *(v0 + 336) = v35[9];
    *(v0 + 352) = v51;
    *(v0 + 304) = v49;
    *(v0 + 320) = v50;
    (*(v27 + 16))(v147, v28 + *(v30 + 264), v144);
    v52 = *(v29 - 8);
    v53 = *(v52 + 64) + 15;
    v54 = swift_task_alloc();
    (*(v52 + 16))(v54, v150, v29);
    v55 = (v28 + *(*v28 + 208));
    v57 = *v55;
    v56 = v55[1];
    LOBYTE(v26) = *(v28 + *(*v28 + 248));

    sub_1000884D8(v0 + 16, v0 + 368);

    sub_10001C2C8(v183, v171, v167, v32, v160, v34, v0 + 192, v147, (v0 + 904), 0, 0, 0xE000000000000000, v54, v179, v175, v57, v56, v26, &type metadata for SystemInfo, v29, &protocol witness table for SystemInfo, v154);

    v58 = *(*v28 + 288);
    v157[3] = &type metadata for AttestationVerificationErrorMetric;
    v157[4] = sub_10005AFDC();
    v59 = swift_allocObject();
    *v157 = v59;
    *(v59 + 48) = *(v0 + 936);
    v60 = *(v0 + 920);
    *(v59 + 16) = *(v0 + 904);
    *(v59 + 32) = v60;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();

    (*(v200 + 8))(v196, v207);
  }

  else
  {
    sub_100011F00(v23, &qword_10022E300, &qword_1001DEF28);
  }

  v61 = *(v0 + 1264);
  v201 = *(v0 + 1248);
  v208 = *(v0 + 1208);
  v62 = *(v0 + 1176);
  v63 = *(v0 + 1168);
  v64 = *(v0 + 1160);
  v65 = *(v0 + 1144);
  v66 = *(v0 + 1136);
  v67 = *(v0 + 1128);
  v68 = *(v0 + 1032);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v69 = (v68 + *(*v68 + 192));
  v70 = v69[1];
  v189 = *v69;
  (*(v63 + 16))(v62, v68 + *(*v68 + 320), v64);
  v71 = (v68 + *(*v68 + 224));
  v72 = v71[1];
  v168 = *v71;
  v73 = v68 + *(*v68 + 256);
  v172 = *(v73 + 160);
  v197 = *(v73 + 168);
  v74 = (v68 + *(*v68 + 208));
  v75 = v74[1];
  v145 = *v74;
  (*(v66 + 16))(v65, v68 + *(*v68 + 264), v67);
  sub_10001208C(v61, v201, &qword_10022E300, &qword_1001DEF28);
  v76 = *(v68 + *(*v68 + 248));
  sub_100011AC0(&qword_10022E310, &qword_1001DEF50);
  v77 = sub_100011AC0(&qword_10022BCE8, &qword_1001DB7F8);
  v78 = (*(*(v77 - 8) + 80) + 32) & ~*(*(v77 - 8) + 80);
  v184 = *(*(v77 - 8) + 72);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1001D5480;
  v80 = v79 + v78;
  v81 = *(v77 + 48);
  *(v79 + v78) = 0;
  v161 = v75;

  v193 = v70;

  sub_1001CFD20();
  if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v82 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v82 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v151 = v79;
  v83 = *(v0 + 1176);
  v202 = *(v0 + 1144);
  *(v80 + v81) = v82;
  v84 = enum case for EventValue.int(_:);
  v85 = sub_1001CFEE0();
  v158 = *(v85 - 8);
  v86 = *(v158 + 104);
  v148 = v84;
  (v86)(v80 + v81, v84, v85);
  v87 = (v80 + v184 + *(v77 + 48));
  *(v80 + v184) = 6;
  *v87 = sub_1001CFD70();
  v87[1] = v88;
  v89 = enum case for EventValue.string(_:);
  (v86)(v87, enum case for EventValue.string(_:), v85);
  v90 = (v80 + 2 * v184);
  v91 = *(v77 + 48);
  *v90 = 1;
  v92 = &v90[v91];
  *v92 = v168;
  v92[1] = v72;
  v86();
  v93 = (v80 + 3 * v184);
  v94 = *(v77 + 48);
  *v93 = 2;
  v95 = &v93[v94];
  *v95 = v172;
  v95[1] = v197;
  v86();
  v96 = (v80 + 4 * v184);
  v97 = *(v77 + 48);
  *v96 = 4;
  v98 = &v96[v97];
  *v98 = v189;
  v98[1] = v193;
  v86();
  v99 = (v80 + 5 * v184);
  v100 = &v99[*(v77 + 48)];
  *v99 = 5;
  *v100 = sub_1001CFDB0();
  v100[1] = v101;
  v203 = v85;
  (v86)(v100, v89);
  v102 = *(v77 + 48);
  *(v80 + 6 * v184) = 7;

  sub_1001CFED0();
  v103 = (v80 - v184 + 8 * v184);
  v104 = *(v77 + 48);
  *v103 = 11;
  v105 = sub_1001D2600();
  v106 = 1000 * v105;
  if ((v105 * 1000) >> 64 != (1000 * v105) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1001D2600();
  if (__OFADD__(v106, v107 / 1000000000000000))
  {
LABEL_28:
    __break(1u);
    return;
  }

  *&v103[v104] = v106 + v107 / 1000000000000000;
  (v86)(&v103[v104], v148, v85);
  v108 = (v80 + 8 * v184);
  v109 = *(v77 + 48);
  *v108 = 12;
  v108[v109] = v76;
  (v86)(&v108[v109], enum case for EventValue.BOOL(_:), v85);
  v110 = sub_1000D5390(v151);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v213 = v110;
  if (v161)
  {
    v111 = *(v0 + 1080);
    *v111 = v145;
    v111[1] = v161;
    (v86)(v111, v89, v85);
    (*(v158 + 56))(v111, 0, 1, v85);
    sub_1000168A0(v111, 3);
  }

  v112 = *(v0 + 1224);
  sub_10001208C(*(v0 + 1248), *(v0 + 1240), &qword_10022E300, &qword_1001DEF28);
  v113 = swift_getEnumCaseMultiPayload();
  v162 = *(v0 + 1248);
  v114 = *(v0 + 1240);
  v115 = *(v0 + 1208);
  v116 = *(v0 + 1200);
  v209 = *(v0 + 1192);
  v180 = *(v0 + 1176);
  v185 = *(v0 + 1168);
  v176 = *(v0 + 1160);
  v117 = *(v0 + 1136);
  v118 = *(v0 + 1128);
  v152 = v118;
  v155 = *(v0 + 1144);
  v119 = *(v0 + 1080);
  if (v113 == 1)
  {
    v120 = *v114;
    sub_1001CFED0();
    v121 = *(v158 + 56);
    v121(v119, 0, 1, v203);
    sub_1000168A0(v119, 8);
    *v119 = 0;
    v119[1] = 0xE000000000000000;
    (v86)(v119, v89, v203);
    v121(v119, 0, 1, v203);
    sub_1000168A0(v119, 10);
    *v119 = sub_10012603C(v120);
    v119[1] = v122;
    (v86)(v119, v89, v203);
    v121(v119, 0, 1, v203);
    sub_1000168A0(v119, 9);

    sub_100011F00(v162, &qword_10022E300, &qword_1001DEF28);
    (*(v117 + 8))(v155, v152);
    (*(v185 + 8))(v180, v176);
    (*(v116 + 8))(v115, v209);
  }

  else
  {
    sub_1001CFED0();
    (*(v158 + 56))(v119, 0, 1, v203);
    sub_1000168A0(v119, 8);
    sub_100011F00(v162, &qword_10022E300, &qword_1001DEF28);
    (*(v117 + 8))(v155, v152);
    (*(v185 + 8))(v180, v176);
    (*(v116 + 8))(v115, v209);
    sub_100011F00(v114, &qword_10022E300, &qword_1001DEF28);
  }

  v123 = *(v0 + 1232);
  v204 = *(v0 + 1264);
  v210 = *(v0 + 1224);
  v124 = *(v0 + 1120);
  v125 = *(v0 + 1112);
  v126 = *(v0 + 1104);
  v127 = *(v0 + 1096);
  v128 = *(v0 + 1088);
  v129 = *(**(v0 + 1032) + 288);
  v127[3] = &type metadata for AttestationVerificationMetric;
  v127[4] = sub_100127C7C();
  v130 = swift_allocObject();
  *v127 = v130;
  v130[2] = 0xD000000000000015;
  v130[3] = 0x80000001001E5B30;
  v130[4] = v213;
  v130[5] = v189;
  v130[6] = v193;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v125 + 8))(v124, v126);
  sub_10001208C(v204, v123, &qword_10022E300, &qword_1001DEF28);
  v131 = swift_getEnumCaseMultiPayload();
  v146 = *(v0 + 1328);
  v149 = *(v0 + 1336);
  v132 = *(v0 + 1312);
  v133 = *(v0 + 1304);
  v134 = *(v0 + 1296);
  v163 = *(v0 + 1288);
  v135 = *(v0 + 1272);
  v153 = *(v0 + 1264);
  v156 = *(v0 + 1320);
  v165 = *(v0 + 1256);
  v169 = *(v0 + 1248);
  v136 = *(v0 + 1232);
  v173 = *(v0 + 1240);
  v177 = *(v0 + 1216);
  v181 = *(v0 + 1208);
  v186 = *(v0 + 1184);
  v190 = *(v0 + 1176);
  v194 = *(v0 + 1152);
  v198 = *(v0 + 1144);
  v205 = *(v0 + 1120);
  v211 = *(v0 + 1096);
  v159 = *(v0 + 1080);
  v137 = *(v0 + 1072);
  v138 = *(v0 + 1064);
  v139 = *(v0 + 1056);
  v140 = *(v0 + 1040);
  if (v131 == 1)
  {
    *(v0 + 992) = *v136;
    v141 = v134;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    v164(v141, v135);
    (*(v132 + 8))(v146, v133);
    sub_100011F00(v153, &qword_10022E300, &qword_1001DEF28);

    sub_100011E48(v138, v137);

    sub_100011E48(v138, v137);
  }

  else
  {
    v143 = *(v0 + 1008);
    v164(v134, v135);
    (*(v132 + 8))(v146, v133);
    sub_10012865C(v136, v143, type metadata accessor for ValidatedProxiedAttestation);
    sub_100011F00(v153, &qword_10022E300, &qword_1001DEF28);

    sub_100011E48(v138, v137);

    sub_100011E48(v138, v137);
  }

  v142 = *(v0 + 8);

  v142();
}

uint64_t sub_100121CC0()
{
  v1 = v0[176];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[130];
  sub_100124054(v0[129] + v0[169], "VerifyAttestation", 17, 2);

  sub_100011E48(v5, v4);

  sub_100011E48(v5, v4);

  sub_100011E48(v5, v4);
}

uint64_t sub_100121DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  v12 = sub_100011AC0(&qword_10022E300, &qword_1001DEF28);
  v6[7] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v6[8] = v14;
  v6[9] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[10] = v15;
  *v15 = v6;
  v15[1] = sub_100121EF4;

  return sub_100125828(v14, a2, a3, a4, a5, a6);
}

uint64_t sub_100121EF4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100122100;
  }

  else
  {
    v3 = sub_100122008;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100122008()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  swift_storeEnumTagMultiPayload();
  sub_1000DBEF4(v1, v2, &qword_10022E300, &qword_1001DEF28);
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_1000DBEF4(v0[9], v0[2], &qword_10022E300, &qword_1001DEF28);

  sub_100011E48(v6, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100122100()
{
  v1 = v0[7];
  *v0[9] = v0[11];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  sub_1000DBEF4(v0[9], v0[2], &qword_10022E300, &qword_1001DEF28);

  sub_100011E48(v4, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001221D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v7 = type metadata accessor for ValidatedProxiedAttestation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100011AC0(&qword_10022E300, &qword_1001DEF28);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = (&v37 - v15);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v18 = *(result + 148);
  v40 = a1;
  v19 = *(a1 + v18);
  if (*(v19 + 16))
  {
    result = sub_100006028(a2, a3);
    if (v20)
    {
      v37 = a2;
      v38 = a3;
      v21 = *(v19 + 56) + 72 * result;
      v23 = *(v21 + 32);
      v22 = *(v21 + 48);
      v24 = *(v21 + 64);
      v48 = *(v21 + 16);
      v47 = *v21;
      v49 = v23;
      v50 = v22;
      v51 = v24;
      v54 = *v21;
      v25 = *(v21 + 40);
      v52 = *(v21 + 24);
      v53 = v25;
      v26 = *(&v22 + 1);
      v27 = v24;
      if (v48 == 1)
      {
        sub_10001208C(v39, v16, &qword_10022E300, &qword_1001DEF28);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v28 = *v16;
          sub_10001208C(&v47, &v55, &qword_100230140, &qword_1001D36F0);
          v29 = v27;
        }

        else
        {
          sub_10012865C(v16, v11, type metadata accessor for ValidatedProxiedAttestation);
          v31 = &v11[*(v7 + 32)];
          v26 = *v31;
          v29 = *(v31 + 1);
          sub_10001208C(&v47, &v55, &qword_100230140, &qword_1001D36F0);

          sub_1001285B4(v11, type metadata accessor for ValidatedProxiedAttestation);

          v28 = 2;
        }

        v32 = v38;
        v55 = v54;
        v57 = v52;
        v58 = v53;
        v56 = v28;
        v59 = v26;
        v60 = v29;

        sub_10001208C(&v55, &v41, &qword_100230140, &qword_1001D36F0);
        v33 = v26;
        v34 = v40;
        v35 = *(v40 + v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = *(v34 + v18);
        sub_10001B348(&v55, v37, v32, isUniquelyReferenced_nonNull_native);

        *(v34 + v18) = v41;
        v41 = v54;
        v42 = v28;
        v43 = v52;
        v44 = v53;
        v45 = v33;
        v46 = v29;
        v30 = &v41;
      }

      else
      {
        v55 = v54;
        v57 = v52;
        v58 = v53;
        v56 = v48;
        v59 = *(&v22 + 1);
        v60 = v24;
        sub_10001208C(&v47, &v41, &qword_100230140, &qword_1001D36F0);
        v30 = &v55;
      }

      return sub_100011F00(v30, &qword_100230140, &qword_1001D36F0);
    }
  }

  return result;
}

void sub_10012254C(char a1)
{
  v2 = *v1;
  lock = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(lock);
  v12 = v2[10];
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[13];
  v6 = v2[14];
  v7 = v2[15];
  v8 = v2[16];
  v9 = v2[17];
  type metadata accessor for RequestMetrics.State();
  v10 = lock + *(sub_1001CFF60() + 28);
  v10[*(type metadata accessor for RequestMetrics.State() + 152)] = a1 & 1;
  j__os_unfair_lock_unlock(lock);
}

uint64_t sub_1001226EC()
{
  v1 = v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 104);
  v38 = *(*v0 + 88);
  v37 = *(*v0 + 112);
  v39 = *(*v0 + 128);
  type metadata accessor for RequestMetrics.State();
  v6 = v0 + *(sub_1001CFF60() + 28);
  v7 = sub_1001CFF70();
  sub_10015607C(v7);
  (*(*(v3 - 8) + 8))(v1 + *(*v1 + 152), v3);
  v8 = *(*v0 + 160);
  v9 = sub_1001CFDA0();
  v10 = *(*(v9 - 8) + 8);
  v10(v1 + v8, v9);
  v10(v1 + *(*v1 + 168), v9);
  v11 = *(*v1 + 176);
  v12 = sub_1001CFD60();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = *(*v1 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v1 + v13, AssociatedTypeWitness);
  v15 = *(v1 + *(*v1 + 192) + 8);

  v16 = *(v1 + *(*v1 + 200) + 8);

  v17 = *(v1 + *(*v1 + 208) + 8);

  sub_100011F00(v1 + *(*v1 + 216), &qword_1002288B0, &qword_1001D5FC0);
  v18 = *(v1 + *(*v1 + 224) + 8);

  v19 = *(*v1 + 240);
  v20 = sub_1001D08A0();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  (*(*(v4 - 8) + 8))(v1 + *(*v1 + 256), v4);
  v21 = *(*v1 + 264);
  v22 = sub_1001CFDD0();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v23 = *(*v1 + 272);
  v24 = sub_1001D0E60();
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v25 = *(v1 + *(*v1 + 280) + 8);

  v26 = *(*v1 + 288);
  v27 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v27 - 8) + 8))(v1 + v26, v27);
  v28 = *(*v1 + 296);
  v29 = sub_1001D0DF0();
  (*(*(v29 - 8) + 8))(v1 + v28, v29);
  v30 = *(*v1 + 304);
  v31 = sub_1001D0DC0();
  (*(*(v31 - 8) + 8))(v1 + v30, v31);
  v32 = *(v1 + *(*v1 + 312));

  v10(v1 + *(*v1 + 320), v9);
  v33 = *(*v1 + 328);
  v34 = sub_1001D1F00();
  (*(*(v34 - 8) + 8))(v1 + v33, v34);
  (*(*(v5 - 8) + 8))(v1 + *(*v1 + 336), v5);
  v35 = *(v1 + *(*v1 + 344));

  return v1;
}

uint64_t sub_100122D5C()
{
  sub_1001226EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_100122DE4(__int128 *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  type metadata accessor for RequestMetrics.State();
  return sub_1001CFF60();
}

void sub_100122E50(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  type metadata accessor for RequestMetrics.State.OHTTPConnectionEstablishmentState();
  if (v9 <= 0x3F)
  {
    type metadata accessor for RequestMetrics.State.RopesRequestState();
    if (v10 <= 0x3F)
    {
      type metadata accessor for RequestMetrics.State.RopesRequestSentState();
      if (v11 <= 0x3F)
      {
        sub_1001234B0(319, &qword_10022DCC8, &type metadata accessor for HTTPFields, &type metadata accessor for Optional);
        if (v12 <= 0x3F)
        {
          type metadata accessor for RequestMetrics.State.DataStreamState();
          if (v13 <= 0x3F)
          {
            type metadata accessor for RequestMetrics.State.ResponseStreamState();
            if (v14 <= 0x3F)
            {
              type metadata accessor for RequestMetrics.State.AuthTokenFetchState();
              if (v15 <= 0x3F)
              {
                type metadata accessor for RequestMetrics.State.AuthTokenSendState();
                if (v16 <= 0x3F)
                {
                  type metadata accessor for RequestMetrics.State.FirstChunkSentState();
                  if (v17 <= 0x3F)
                  {
                    type metadata accessor for RequestMetrics.State.AttestationsReceivedState();
                    if (v18 <= 0x3F)
                    {
                      type metadata accessor for RequestMetrics.State.KDataSendState();
                      if (v19 <= 0x3F)
                      {
                        sub_1001235EC(319, &qword_10022DCD0);
                        if (v20 <= 0x3F)
                        {
                          sub_1001235EC(319, &qword_10022DCD8);
                          if (v21 <= 0x3F)
                          {
                            sub_1001235EC(319, &qword_100229738);
                            if (v22 <= 0x3F)
                            {
                              type metadata accessor for RequestMetrics.State.NodeMetadata();
                              sub_1001D1720();
                              if (v23 <= 0x3F)
                              {
                                type metadata accessor for RequestMetrics.State.ProxiedNodeMetadata();
                                sub_1001D1720();
                                if (v24 <= 0x3F)
                                {
                                  sub_1001235EC(319, qword_10022DCE0);
                                  if (v25 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100123228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  v15 = *(a3 + 48);
  v16 = *(a3 + 64);
  v6 = type metadata accessor for RequestMetrics.State.RopesRequestState();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = *(a3 + 84);
    return (*(v8 + 48))(a1 + v9, a2, v7);
  }

  v10 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = *(a3 + 92);
    return (*(v8 + 48))(a1 + v9, a2, v7);
  }

  v12 = *(a1 + *(a3 + 144));
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_10012336C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = *(a4 + 16);
  v14 = *(a4 + 32);
  v15 = *(a4 + 48);
  v16 = *(a4 + 64);
  v8 = type metadata accessor for RequestMetrics.State.RopesRequestState();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a4 + 84);
    return (*(v10 + 56))(a1 + v11, a2, a2, v9);
  }

  result = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = *(a4 + 92);
    return (*(v10 + 56))(a1 + v11, a2, a2, v9);
  }

  *(a1 + *(a4 + 144)) = (a2 - 1);
  return result;
}

void sub_1001234B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1001235EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1001D1F00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100123638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123674(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10012368C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001236B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001236F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100123748()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123784(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001237A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001237CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001237F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100123840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001238A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001238BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1001238EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012390C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_100123940(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012395C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_100123980(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001239D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100123A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100123A38(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2 + 1;
  }

  return result;
}

uint64_t sub_100123A60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123A9C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_100123AC0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100123ADC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123B18(uint64_t a1)
{
  v1 = *(a1 + 24) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100123B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 32))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 24) >> 57) >> 4) | (8 * ((*(a1 + 24) >> 57) & 8 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100123B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100123BF8(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    result[3] = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0xA000000000000000;
  }

  return result;
}

uint64_t sub_100123C24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123C60(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100123C7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100123CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100123D08(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100123D20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100123D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100123DB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123DEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100123E04(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 sub_100123E20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100123E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100123E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_100123EC8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void sub_100123EFC()
{
  sub_100123F7C();
  if (v0 <= 0x3F)
  {
    sub_100123FC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100123F7C()
{
  if (!qword_10022E2E8)
  {
    v0 = sub_1001D0F30();
    if (!v1)
    {
      atomic_store(v0, &qword_10022E2E8);
    }
  }
}

void sub_100123FC4()
{
  if (!qword_10022E2F0)
  {
    sub_1001D0200();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022E2F0);
    }
  }
}

uint64_t sub_100124054(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v5 = sub_1001D0E00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001D0DC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1001D0DE0();
  sub_1001D0E10();
  v24 = sub_1001D1E80();
  result = sub_1001D1ED0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v11);
  }

  if ((a4 & 1) == 0)
  {
    v19 = v25;
    if (v25)
    {
LABEL_9:

      sub_1001D0E40();

      if ((*(v6 + 88))(v10, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v5);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v24, v22, v19, v20, v21, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v19 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001242F0()
{
  v1[2] = v0;
  v2 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = *(*(sub_100011AC0(&qword_1002292B0, &unk_1001D6420) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = sub_1001D08A0();
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100124488, 0, 0);
}

uint64_t sub_100124488()
{
  v38 = v0;
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *(v1 + *(*v1 + 296));
  *(v0 + 96) = v3;
  if (!v3)
  {
    v16 = *(v2 + 392);

    v17 = sub_1001D0E50();
    v18 = sub_1001D1DE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 16);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      sub_1001CFDA0();
      sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
      v36 = sub_1001D23A0();
      v37 = v22;
      v41._countAndFlagsBits = 58;
      v41._object = 0xE100000000000000;
      sub_1001D18B0(v41);
      v23 = sub_1000954E0(v36, v37, &v35);

      *(v20 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s unable to access attestation store", v20, 0xCu);
      sub_100011CF0(v21);
    }

    goto LABEL_9;
  }

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  sub_100096A60(v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = *(v0 + 16);
    sub_100011F00(*(v0 + 64), &qword_1002292B0, &unk_1001D6420);
    v8 = *(*v7 + 392);

    v9 = sub_1001D0E50();
    v10 = sub_1001D1DE0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 16);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      sub_1001CFDA0();
      sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
      v36 = sub_1001D23A0();
      v37 = v14;
      v40._countAndFlagsBits = 58;
      v40._object = 0xE100000000000000;
      sub_1001D18B0(v40);
      v15 = sub_1000954E0(v36, v37, &v35);

      *(v12 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s invalid set of parameters for prefetching", v12, 0xCu);
      sub_100011CF0(v13);
    }

LABEL_9:
    v24 = *(v0 + 88);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 32);
    v27 = *(v0 + 40);

    v29 = *(v0 + 8);

    return v29(&_swiftEmptyArrayStorage);
  }

  v31 = *(v0 + 16);
  (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  v32 = v31 + qword_100243500;
  *(v0 + 104) = *(v31 + qword_100243500);
  *(v0 + 128) = *(v32 + 72);
  *(v0 + 112) = qword_1002434F8;
  type metadata accessor for AttestationStore();
  sub_100128614(&qword_1002287B8, type metadata accessor for AttestationStore);
  v34 = sub_1001D1A70();

  return _swift_task_switch(sub_100124990, v34, v33);
}

uint64_t sub_100124990()
{
  v1 = *(v0 + 96);
  *(v0 + 120) = sub_10002ACBC(*(v0 + 128), *(v0 + 88), *(v0 + 16) + *(v0 + 112), *(v0 + 104));

  return _swift_task_switch(sub_100124A0C, 0, 0);
}

uint64_t sub_100124A0C()
{
  v83 = v0;
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(**(v0 + 16) + 392);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[15];
  if (v6)
  {
    v78 = *(v1 + 128);
    v8 = v1;
    v11 = v1 + 13;
    v10 = v1[13];
    v9 = v11[1];
    v12 = v8[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v80 = v14;
    *v13 = 136315906;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
    v81 = sub_1001D23A0();
    v82 = v15;
    v85._countAndFlagsBits = 58;
    v85._object = 0xE100000000000000;
    sub_1001D18B0(v85);
    v16 = sub_1000954E0(v81, v82, &v80);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2048;
    v17 = *(v7 + 16);

    *(v13 + 14) = v17;

    *(v13 + 22) = 2048;
    *(v13 + 24) = v10;
    v1 = v8;
    *(v13 + 32) = 1024;

    *(v13 + 34) = v78;

    _os_log_impl(&_mh_execute_header, v4, v5, "%s Total cached attestations from store: %ld maxCachedAttestations: %ld proxy: %{BOOL}d", v13, 0x26u);
    sub_100011CF0(v14);
  }

  else
  {
    v18 = v1[2];

    swift_bridgeObjectRelease_n();
  }

  v19 = v1[15];
  v80 = 0;
  v20 = *(v19 + 16);
  if (v20)
  {
    v73 = v1[4];
    v74 = v1[6];
    v72 = v1[3];
    v81 = &_swiftEmptyArrayStorage;
    sub_100151730(0, v20, 0);
    v21 = v81;
    v22 = v19 + 64;
    v23 = -1 << *(v19 + 32);
    result = sub_1001D1FB0();
    v25 = result;
    v26 = 0;
    v68 = *(v19 + 36);
    v27 = *(v19 + 32);
    v66 = v19 + 72;
    v67 = v20;
    v69 = v19 + 64;
    v70 = v19;
    v71 = v1;
    while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << v27)
    {
      v30 = v25 >> 6;
      if ((*(v22 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_27;
      }

      v31 = *(v72 + 48);
      v77 = v1[7];
      v79 = v21;
      v33 = v1[4];
      v32 = v1[5];
      v75 = v26;
      v76 = v1[2];
      v34 = *(v19 + 56);
      v35 = (*(v19 + 48) + 16 * v25);
      v37 = *v35;
      v36 = v35[1];
      v38 = type metadata accessor for ValidatedAttestation();
      sub_10012854C(v34 + *(*(v38 - 8) + 72) * v25, v32 + v31, type metadata accessor for ValidatedAttestation);
      *v33 = v37;
      *(v73 + 8) = v36;
      v39 = *(v72 + 48);
      sub_10012865C(v32 + v31, v33 + v39, type metadata accessor for ValidatedAttestation);

      v40 = v33 + v39;
      v21 = v79;
      sub_1001291E8(v37, v36, v40, &v80, v76, v77);
      sub_100011F00(v33, &qword_10022E330, &unk_1001DEFD8);
      v81 = v79;
      v42 = v79[2];
      v41 = v79[3];
      if (v42 >= v41 >> 1)
      {
        sub_100151730(v41 > 1, v42 + 1, 1);
        v21 = v81;
      }

      v43 = v71[7];
      v21[2] = v42 + 1;
      result = sub_10012865C(v43, v21 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v42, type metadata accessor for ValidatedAttestationOrAttestation);
      v19 = v70;
      v27 = *(v70 + 32);
      v28 = 1 << v27;
      if (v25 >= 1 << v27)
      {
        goto LABEL_28;
      }

      v1 = v71;
      v22 = v69;
      v44 = *(v69 + 8 * v30);
      if ((v44 & (1 << v25)) == 0)
      {
        goto LABEL_29;
      }

      if (v68 != *(v70 + 36))
      {
        goto LABEL_30;
      }

      v45 = v44 & (-2 << (v25 & 0x3F));
      if (v45)
      {
        v28 = __clz(__rbit64(v45)) | v25 & 0x7FFFFFFFFFFFFFC0;
        v29 = v67;
      }

      else
      {
        v46 = v30 << 6;
        v29 = v67;
        v47 = (v66 + 8 * v30);
        v48 = v30 + 1;
        while (v48 < (v28 + 63) >> 6)
        {
          v50 = *v47++;
          v49 = v50;
          v46 += 64;
          ++v48;
          if (v50)
          {
            v28 = __clz(__rbit64(v49)) + v46;
            break;
          }
        }
      }

      v25 = v28;
      v26 = v75 + 1;
      if (v75 + 1 == v29)
      {
        v51 = v71[15];
        v53 = v71[11];
        v52 = v71[12];
        v55 = v71[9];
        v54 = v71[10];

        (*(v54 + 8))(v53, v55);

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v57 = v1[11];
    v56 = v1[12];
    v59 = v1[9];
    v58 = v1[10];

    (*(v58 + 8))(v57, v59);

    v21 = &_swiftEmptyArrayStorage;
LABEL_23:
    v60 = v1[11];
    v62 = v1[7];
    v61 = v1[8];
    v64 = v1[4];
    v63 = v1[5];

    v65 = v1[1];

    return v65(v21);
  }

  return result;
}

uint64_t sub_100124FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for ValidatedAttestation();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10012506C, 0, 0);
}

uint64_t sub_10012506C()
{
  v1 = v0[3];
  v2 = *(v1 + qword_100243500 + 72);
  v3 = *(*v1 + 304);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100125154;
  v5 = v0[4];
  v6 = v0[2];

  return sub_100076C40(v6, v5, v2);
}

uint64_t sub_100125154()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1001255C0;
  }

  else
  {
    v3 = sub_100125268;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100125268()
{
  v32 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 24) + 392);
  sub_10012854C(v2, *(v0 + 56), type metadata accessor for ValidatedAttestation);
  sub_10012854C(v2, v1, type metadata accessor for ValidatedAttestation);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v6)
  {
    v28 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136315650;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
    v30 = sub_1001D23A0();
    v31 = v11;
    v34._countAndFlagsBits = 58;
    v34._object = 0xE100000000000000;
    sub_1001D18B0(v34);
    v12 = sub_1000954E0(v30, v31, &v29);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = *(v8 + 104);
    v14 = *(v8 + 112);
    v15 = sub_1001CFB50();
    v17 = v16;
    sub_1001285B4(v8, type metadata accessor for ValidatedAttestation);
    v18 = sub_1000954E0(v15, v17, &v29);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = *(v28 + 28);
    sub_1001CFD60();
    sub_100128614(&qword_100227A40, &type metadata accessor for Date);
    v20 = sub_1001D23A0();
    v22 = v21;
    sub_1001285B4(v7, type metadata accessor for ValidatedAttestation);
    v23 = sub_1000954E0(v20, v22, &v29);

    *(v10 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s attestation success with package key %s, validationExpiration: %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001285B4(v7, type metadata accessor for ValidatedAttestation);
    sub_1001285B4(v8, type metadata accessor for ValidatedAttestation);
  }

  v25 = *(v0 + 48);
  v24 = *(v0 + 56);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1001255C0()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = *(**(v0 + 24) + 392);

  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
    v20 = sub_1001D23A0();
    v21 = v10;
    v24._countAndFlagsBits = 58;
    v24._object = 0xE100000000000000;
    sub_1001D18B0(v24);
    v11 = sub_1000954E0(v20, v21, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v8 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s attestation failure with error %@", v7, 0x16u);
    sub_100011F00(v8, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v9);
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  swift_willThrow();

  v16 = *(v0 + 8);
  v17 = *(v0 + 72);

  return v16();
}

uint64_t sub_100125828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v6;
  v12[2] = a1;
  v12[3] = a2;
  v14 = type metadata accessor for ValidatedProxiedAttestation();
  v12[4] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v12[5] = swift_task_alloc();
  v12[6] = swift_task_alloc();
  v16 = *(*a2 + 304);
  v17 = swift_task_alloc();
  v12[7] = v17;
  *v17 = v12;
  v17[1] = sub_10012596C;

  return sub_10011A7F8(a1, a3, a4, a5, a6);
}

uint64_t sub_10012596C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100125DD4;
  }

  else
  {
    v3 = sub_100125A80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100125A80()
{
  v32 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 24) + 392);
  sub_10012854C(v2, *(v0 + 48), type metadata accessor for ValidatedProxiedAttestation);
  sub_10012854C(v2, v1, type metadata accessor for ValidatedProxiedAttestation);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  if (v6)
  {
    v9 = *(v0 + 24);
    v28 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136315650;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
    v30 = sub_1001D23A0();
    v31 = v11;
    v34._countAndFlagsBits = 58;
    v34._object = 0xE100000000000000;
    sub_1001D18B0(v34);
    v12 = sub_1000954E0(v30, v31, &v29);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    v15 = sub_1001CFB50();
    v17 = v16;
    sub_1001285B4(v8, type metadata accessor for ValidatedProxiedAttestation);
    v18 = sub_1000954E0(v15, v17, &v29);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = *(v28 + 24);
    sub_1001CFD60();
    sub_100128614(&qword_100227A40, &type metadata accessor for Date);
    v20 = sub_1001D23A0();
    v22 = v21;
    sub_1001285B4(v7, type metadata accessor for ValidatedProxiedAttestation);
    v23 = sub_1000954E0(v20, v22, &v29);

    *(v10 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s proxied attestation success with package key %s, validationExpiration: %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001285B4(v7, type metadata accessor for ValidatedProxiedAttestation);
    sub_1001285B4(v8, type metadata accessor for ValidatedProxiedAttestation);
  }

  v25 = *(v0 + 40);
  v24 = *(v0 + 48);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100125DD4()
{
  v22 = v0;
  v1 = *(v0 + 64);
  v2 = *(**(v0 + 24) + 392);

  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID);
    v20 = sub_1001D23A0();
    v21 = v10;
    v24._countAndFlagsBits = 58;
    v24._object = 0xE100000000000000;
    sub_1001D18B0(v24);
    v11 = sub_1000954E0(v20, v21, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v12;
    *v8 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s proxied attestation failure with error %@", v7, 0x16u);
    sub_100011F00(v8, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v9);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  swift_willThrow();

  v16 = *(v0 + 8);
  v17 = *(v0 + 64);

  return v16();
}

unint64_t sub_10012603C(uint64_t a1)
{
  v87 = sub_1001D1310();
  v82 = *(v87 - 8);
  v2 = *(v82 + 64);
  v4 = __chkstk_darwin(v87, v3);
  v81 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v86 = &v80 - v7;
  v92 = sub_1001D0950();
  v85 = *(v92 - 8);
  v8 = *(v85 + 64);
  v10 = __chkstk_darwin(v92, v9);
  v84 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v89 = &v80 - v13;
  v96 = sub_1001D0960();
  v91 = *(v96 - 8);
  v14 = *(v91 + 64);
  v16 = __chkstk_darwin(v96, v15);
  v90 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v88 = &v80 - v20;
  __chkstk_darwin(v19, v21);
  v95 = &v80 - v22;
  v99 = sub_1001D0050();
  v94 = *(v99 - 8);
  v23 = *(v94 + 64);
  v25 = __chkstk_darwin(v99, v24);
  v93 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v98 = &v80 - v28;
  v101 = sub_1001D0060();
  v97 = *(v101 - 8);
  v29 = *(v97 + 64);
  v31 = __chkstk_darwin(v101, v30);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v34);
  v36 = &v80 - v35;
  v37 = sub_1001CFFC0();
  v100 = *(v37 - 8);
  v38 = *(v100 + 64);
  v40 = __chkstk_darwin(v37, v39);
  v42 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v43);
  v45 = &v80 - v44;
  v46 = sub_1001D0200();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v50 = __chkstk_darwin(v46, v49);
  v52 = &v80 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v53);
  v55 = &v80 - v54;
  v103 = a1;
  v83 = a1;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    (*(v47 + 32))(v52, v55, v46);
    v56 = sub_1001D0190();
    (*(v47 + 8))(v52, v46);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v56 = sub_1001281A0(v102, SBYTE1(v102));

    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v57 = v100;
    (*(v100 + 32))(v42, v45, v37);
    v56 = sub_10012698C(v42);
    (*(v57 + 8))(v42, v37);
    goto LABEL_12;
  }

  v58 = v101;
  if (swift_dynamicCast())
  {
    v59 = v97;
    (*(v97 + 32))(v33, v36, v58);
    v56 = sub_100126DF4(v33);
    (*(v59 + 8))(v33, v58);
    goto LABEL_12;
  }

  v60 = v98;
  v61 = v99;
  if (swift_dynamicCast())
  {
    v63 = v93;
    v62 = v94;
    (*(v94 + 32))(v93, v60, v61);
    v64 = sub_1001272F0(v63);
LABEL_11:
    v56 = v64;
    (*(v62 + 8))(v63, v61);
    goto LABEL_12;
  }

  v66 = v95;
  v67 = v96;
  if (swift_dynamicCast())
  {
    v56 = 0xD000000000000024;
    v68 = v91;
    v69 = v88;
    (*(v91 + 32))(v88, v66, v67);
    v70 = v90;
    (*(v68 + 16))(v90, v69, v67);
    v71 = (*(v68 + 88))(v70, v67);
    v72 = *(v68 + 8);
    if (v71 == enum case for BinaryEncodingError.anyTranscodeFailure(_:))
    {
      v72(v69, v67);
      v56 = 0xD000000000000027;
    }

    else
    {
      v74 = v71;
      v75 = enum case for BinaryEncodingError.missingRequiredFields(_:);
      v72(v69, v67);
      if (v74 == v75)
      {
        v56 = 0xD000000000000029;
      }

      else
      {
        v72(v70, v67);
      }
    }
  }

  else
  {
    v73 = v89;
    v61 = v92;
    if (swift_dynamicCast())
    {
      v63 = v84;
      v62 = v85;
      (*(v85 + 32))(v84, v73, v61);
      v64 = sub_1001275A8(v63);
      goto LABEL_11;
    }

    v76 = v86;
    v61 = v87;
    if (swift_dynamicCast())
    {
      v62 = v82;
      v63 = v81;
      (*(v82 + 32))(v81, v76, v61);
      v64 = sub_1001277D8(v63);
      goto LABEL_11;
    }

    v77 = v83;
    v102 = v83;
    swift_errorRetain();
    if (sub_1001D2430())
    {
    }

    else
    {
      swift_allocError();
      *v78 = v77;
    }

    v79 = sub_1001CFA10();

    v56 = sub_100127B28(v79);
  }

LABEL_12:

  return v56;
}

unint64_t sub_10012698C(uint64_t a1)
{
  v2 = sub_1001CFFC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for CloudAttestationError.unexpected(_:))
  {
    (*(v3 + 96))(v7, v2);
    v10 = *v7;
    v9 = v7[1];
    v11 = v10 == 0xD000000000000017 && 0x80000001001E5DD0 == v9;
    if (v11 || (sub_1001D2470() & 1) != 0)
    {

      return 0xD000000000000035;
    }

    else if (v10 == 0x6C706D6920746F4ELL && v9 == 0xEF6465746E656D65)
    {

      return 0xD00000000000002FLL;
    }

    else
    {
      v14 = sub_1001D2470();

      if (v14)
      {
        return 0xD00000000000002FLL;
      }

      else
      {
        return 0xD000000000000020;
      }
    }
  }

  else if (v8 == enum case for CloudAttestationError.attestError(_:))
  {
    (*(v3 + 8))(v7, v2);
    return 0xD000000000000021;
  }

  else if (v8 == enum case for CloudAttestationError.validateError(_:))
  {
    (*(v3 + 8))(v7, v2);
    return 0xD000000000000023;
  }

  else if (v8 == enum case for CloudAttestationError.expired(_:))
  {
    (*(v3 + 96))(v7, v2);
    v15 = sub_1001CFD60();
    (*(*(v15 - 8) + 8))(v7, v15);
    return 0xD00000000000001DLL;
  }

  else if (v8 == enum case for CloudAttestationError.missingSealedHash(_:))
  {
    (*(v3 + 96))(v7, v2);
    v16 = sub_1001CFDA0();
    (*(*(v16 - 8) + 8))(v7, v16);
    return 0xD000000000000027;
  }

  else if (v8 == enum case for CloudAttestationError.invalidNonce(_:))
  {
    return 0xD000000000000022;
  }

  else
  {
    v17 = v8;
    result = 0xD00000000000002BLL;
    if (v17 != enum case for CloudAttestationError.emptyCertificateChain(_:) && v17 != enum case for CloudAttestationError.malformedSecureConfig(_:))
    {
      if (v17 == enum case for CloudAttestationError.missingAttestingKey(_:))
      {
        return 0xD000000000000029;
      }

      else
      {
        result = 0xD000000000000026;
        if (v17 != enum case for CloudAttestationError.untrustedAppData(_:))
        {
          (*(v3 + 8))(v7, v2);
          return 0xD000000000000026;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100126DF4(uint64_t a1)
{
  v2 = 0xD000000000000022;
  v3 = sub_1001D0060();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for TransparencyLogError.httpError(_:))
  {
    v10 = *(v4 + 96);
    v4 += 96;
    v9 = v10(v8, v3);
    v11 = *v8;
    v24 = 0xD00000000000001FLL;
    v25 = 0x80000001001E60D0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v22 = v11;
LABEL_7:
      v14._countAndFlagsBits = sub_1001D23A0();
      object = v14._object;
LABEL_18:
      v14._object = object;
      sub_1001D18B0(v14);

      return v24;
    }

    v22 = 78;
    v23 = 0xE100000000000000;
    v16 = __OFSUB__(0, v11);
    v17 = -v11;
    if (!v16)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v9 != enum case for TransparencyLogError.unrecognized(_:))
  {
    if (v9 == enum case for TransparencyLogError.unknown(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD00000000000001CLL;
    }

LABEL_14:
    if (v9 == enum case for TransparencyLogError.clientError(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD000000000000020;
    }

    if (v9 == enum case for TransparencyLogError.pendingExpiration(_:))
    {
      (*(v4 + 96))(v8, v3);
      v18 = *(sub_100011AC0(&qword_10022E320, &qword_1001DEF58) + 48);
      v19 = sub_1001CFD60();
      v20 = *(*(v19 - 8) + 8);
      v20(v8 + v18, v19);
      v20(v8, v19);
      return 0xD000000000000026;
    }

    if (v9 == enum case for TransparencyLogError.internalError(_:))
    {
      return v2;
    }

    if (v9 == enum case for TransparencyLogError.mutationPending(_:))
    {
      return 0xD000000000000024;
    }

    if (v9 == enum case for TransparencyLogError.invalidRequest(_:))
    {
      return 0xD000000000000023;
    }

    if (v9 == enum case for TransparencyLogError.notFound(_:))
    {
      return 0xD00000000000001DLL;
    }

    if (v9 == enum case for TransparencyLogError.invalidProof(_:))
    {
      return 0xD000000000000021;
    }

    if (v9 == enum case for TransparencyLogError.unknownStatus(_:))
    {
      return v2;
    }

    if (v9 == enum case for TransparencyLogError.insertFailed(_:))
    {
      return 0xD000000000000021;
    }

    if (v9 != enum case for TransparencyLogError.expired(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD000000000000025;
    }

    return 0xD00000000000001CLL;
  }

  (*(v4 + 96))(v8, v3);
  v12 = *v8;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1001D2030(18);

  v24 = 0xD000000000000022;
  v25 = 0x80000001001E5F90;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v22 = v12;
    goto LABEL_7;
  }

  v22 = 78;
  v23 = 0xE100000000000000;
  v17 = -v12;
  if (!__OFSUB__(0, v12))
  {
LABEL_17:
    v21[1] = v17;
    v26._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v26);

    v14._countAndFlagsBits = v22;
    object = v23;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001272F0(uint64_t a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = sub_1001D0050();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for TransparencyPolicy.Error.malformedRelease(_:))
  {
    (*(v4 + 96))(v8, v3);
    v10 = *v8;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1001D2030(22);

    v19 = 0xD000000000000029;
    v20 = 0x80000001001E61B0;
    v11 = sub_1001CFA10();
    v12 = sub_100127B28(v11);
    v14 = v13;

LABEL_5:
    v21._countAndFlagsBits = v12;
    v21._object = v14;
    sub_1001D18B0(v21);

    return v19;
  }

  if (v9 == enum case for TransparencyPolicy.Error.unknown(_:))
  {
    (*(v4 + 96))(v8, v3);
    v15 = *v8;
    v19 = 0xD000000000000020;
    v20 = 0x80000001001E6120;
    v16 = sub_1001CFA10();
    v12 = sub_100127B28(v16);
    v14 = v17;

    goto LABEL_5;
  }

  if (v9 == enum case for TransparencyPolicy.Error.missingProofs(_:))
  {
    return 0xD000000000000025;
  }

  if (v9 == enum case for TransparencyPolicy.Error.notIncluded(_:))
  {
    return 0xD000000000000023;
  }

  if (v9 != enum case for TransparencyPolicy.Error.expired(_:))
  {
    (*(v4 + 8))(v8, v3);
    return 0xD000000000000028;
  }

  return v2;
}

unint64_t sub_1001275A8(uint64_t a1)
{
  v2 = 0xD000000000000025;
  v3 = sub_1001D0950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for BinaryDecodingError.trailingGarbage(_:))
  {
    return 0xD000000000000023;
  }

  if (v9 == enum case for BinaryDecodingError.truncated(_:))
  {
    return 0xD00000000000001DLL;
  }

  if (v9 == enum case for BinaryDecodingError.invalidUTF8(_:))
  {
    return 0xD00000000000001FLL;
  }

  if (v9 != enum case for BinaryDecodingError.malformedProtobuf(_:))
  {
    if (v9 == enum case for BinaryDecodingError.missingRequiredFields(_:))
    {
      return 0xD000000000000029;
    }

    else if (v9 == enum case for BinaryDecodingError.internalExtensionError(_:))
    {
      return 0xD00000000000002ALL;
    }

    else if (v9 != enum case for BinaryDecodingError.messageDepthLimit(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD000000000000024;
    }
  }

  return v2;
}

uint64_t sub_1001277D8(uint64_t a1)
{
  v2 = sub_1001D1310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for NWError.posix(_:))
  {
    (*(v3 + 96))(v7, v2);
    v9 = *v7;
    strcpy(v20, "NWError_posix_");
    HIBYTE(v20[1]) = -18;
    result = sub_1001D0EA0();
    if ((result & 0x80000000) == 0)
    {
      LODWORD(v18) = result;
LABEL_19:
      v15._countAndFlagsBits = sub_1001D23A0();
      object = v15._object;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v8 == enum case for NWError.dns(_:))
  {
    v11 = *(v3 + 96);
    v3 += 96;
    v8 = v11(v7, v2);
    v12 = *v7;
    strcpy(v20, "NWError_dns_");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v18 = 78;
    v19 = 0xE100000000000000;
    v13 = __OFSUB__(0, v12);
    v14 = -v12;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v8 != enum case for NWError.tls(_:))
  {
    if (v8 != enum case for NWError.wifiAware(_:))
    {
      (*(v3 + 8))(v7, v2);
      return 0xD000000000000018;
    }

    result = (*(v3 + 96))(v7, v2);
    v12 = *v7;
    v20[0] = 0xD000000000000012;
    v20[1] = 0x80000001001E6380;
    if ((v12 & 0x80000000) != 0)
    {
      v18 = 78;
      v19 = 0xE100000000000000;
      v13 = __OFSUB__(0, v12);
      v14 = -v12;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    LODWORD(v18) = v12;
    goto LABEL_19;
  }

  result = (*(v3 + 96))(v7, v2);
  v12 = *v7;
  strcpy(v20, "NWError_tls_");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v18 = 78;
  v19 = 0xE100000000000000;
  v13 = __OFSUB__(0, v12);
  v14 = -v12;
  if (!v13)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v18 = 78;
  v19 = 0xE100000000000000;
  v14 = -result;
  if (__OFSUB__(0, result))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17[3] = v14;
  v21._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v21);

  v15._countAndFlagsBits = v18;
  object = v19;
LABEL_20:
  v15._object = object;
  sub_1001D18B0(v15);

  return v20[0];
}

uint64_t sub_100127B28(void *a1)
{
  v2 = [a1 domain];
  sub_1001D17D0();

  v6._countAndFlagsBits = sub_1001D1910();
  sub_1001D18B0(v6);

  v7._countAndFlagsBits = 95;
  v7._object = 0xE100000000000000;
  sub_1001D18B0(v7);
  result = [a1 code];
  if ((result & 0x8000000000000000) == 0)
  {
    v4._countAndFlagsBits = sub_1001D23A0();
    object = v4._object;
LABEL_5:
    v4._object = object;
    sub_1001D18B0(v4);

    return 0x5F726F727245534ELL;
  }

  if (!__OFSUB__(0, result))
  {
    v8._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v8);

    v4._countAndFlagsBits = 78;
    object = 0xE100000000000000;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100127C7C()
{
  result = qword_10022E318;
  if (!qword_10022E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022E318);
  }

  return result;
}

uint64_t sub_100127CD4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100127D1C(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_100127D2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 112) = a3;
  *(v6 + 24) = a1;
  v7 = sub_1001D0DC0();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100127E08, 0, 0);
}

uint64_t sub_100127E08()
{
  v1 = *(v0 + 48);
  v2 = sub_1001D0DE0();
  v3 = sub_1001D1E90();
  result = sub_1001D1ED0();
  if (result)
  {
    v5 = *(v0 + 24);
    if ((*(v0 + 112) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 40);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v8, v5, "", v7, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 40), *(v0 + 64));
  v10 = sub_1001D0E30();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 88) = sub_1001D0E20();

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_100127FD8;
  v14 = *(v0 + 56);

  return sub_1001242F0();
}

uint64_t sub_100127FD8(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1001280D8, 0, 0);
}

uint64_t sub_1001280D8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 112);

  sub_100124054(v5, v7, v6, v8);

  v9 = *(v0 + 8);

  return v9(v1, 0);
}

unint64_t sub_1001281A0(char a1, char a2)
{
  if (a2 == 23)
  {
    sub_1001D2030(22);

    v4 = 0xD000000000000014;
    v5._countAndFlagsBits = sub_10012DB48(a1);
    sub_1001D18B0(v5);
  }

  else
  {
    v4 = 0;
    sub_1001D2030(25);
    v6._object = 0x80000001001E5BE0;
    v6._countAndFlagsBits = 0xD000000000000014;
    sub_1001D18B0(v6);
    v7._countAndFlagsBits = sub_10012DB48(a1);
    sub_1001D18B0(v7);

    v8._countAndFlagsBits = 95;
    v8._object = 0xE100000000000000;
    sub_1001D18B0(v8);
    sub_1001D2120();
  }

  return v4;
}

uint64_t sub_1001282D4()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100128424()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10012845C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000130E0;

  return sub_100159A10(v2, v3, v4);
}

uint64_t sub_100128504()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10012853C(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_10012854C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001285B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100128614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012865C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001286C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    sub_100011E48(a1, a2);
    sub_100011E48(a3, a4);

    return sub_100011E48(a5, a6);
  }
}

uint64_t sub_100128734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_100128748()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100128790(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001287A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100128800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_10012889C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001288E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 33))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10012895C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

void *sub_1001289E8(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_100128A18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100128A54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100128B00(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100128B38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100128B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128BC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_100128C18(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100128C60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100128C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 16))
  {
    return (*a1 + 61);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100128CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_100128D4C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    *result = (4 * (a2 - 3)) & 0x3FFFFFFF8 | (a2 - 3) & 1 | 0xC000000000000000;
    result[1] = 0;
  }

  return result;
}

void sub_100128DCC(void *a1)
{
  v2 = sub_1001CFDA0();
  if (v3 <= 0x3F)
  {
    v42 = *(v2 - 8) + 64;
    v4 = type metadata accessor for TrustedRequestConfiguration();
    if (v5 <= 0x3F)
    {
      v43 = *(v4 - 8) + 64;
      v6 = sub_1001D08A0();
      if (v7 <= 0x3F)
      {
        v44 = *(v6 - 8) + 64;
        v8 = a1[10];
        v9 = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v45 = *(v9 - 8) + 64;
          v11 = a1[11];
          v12 = swift_checkMetadataState();
          if (v13 <= 0x3F)
          {
            v46 = *(v12 - 8) + 64;
            v14 = a1[12];
            v15 = swift_checkMetadataState();
            if (v16 <= 0x3F)
            {
              v47 = *(v15 - 8) + 64;
              v17 = a1[13];
              v18 = sub_1001D1F00();
              if (v19 <= 0x3F)
              {
                v48 = *(v18 - 8) + 64;
                v20 = a1[14];
                v21 = swift_checkMetadataState();
                if (v22 <= 0x3F)
                {
                  v49 = *(v21 - 8) + 64;
                  v23 = a1[15];
                  v24 = swift_checkMetadataState();
                  if (v25 <= 0x3F)
                  {
                    v50 = *(v24 - 8) + 64;
                    v26 = a1[16];
                    v27 = swift_checkMetadataState();
                    if (v28 <= 0x3F)
                    {
                      v51 = *(v27 - 8) + 64;
                      v29 = a1[17];
                      v30 = swift_checkMetadataState();
                      if (v31 <= 0x3F)
                      {
                        v52 = *(v30 - 8) + 64;
                        v32 = a1[19];
                        v33 = swift_checkMetadataState();
                        if (v34 <= 0x3F)
                        {
                          v53 = *(v33 - 8) + 64;
                          v35 = a1[18];
                          v36 = swift_checkMetadataState();
                          if (v37 <= 0x3F)
                          {
                            v54 = *(v36 - 8) + 64;
                            sub_100012FF8();
                            if (v39 <= 0x3F)
                            {
                              v55 = *(v38 - 8) + 64;
                              v40 = sub_1001D0E60();
                              if (v41 <= 0x3F)
                              {
                                v56 = *(v40 - 8) + 64;
                                swift_initClassMetadata2();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001291E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ValidatedAttestation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*a5 + 392);
  sub_10003C450(a3, v16);

  v18 = sub_1001D0E50();
  v19 = sub_1001D1E00();

  if (os_log_type_enabled(v18, v19))
  {
    v31 = a3;
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v20 = 136315906;
    sub_1001CFDA0();
    v32 = a1;
    sub_10012AA68(&qword_100228AF8, &type metadata accessor for UUID);
    v34 = sub_1001D23A0();
    v35 = v21;
    v36._countAndFlagsBits = 58;
    v36._object = 0xE100000000000000;
    sub_1001D18B0(v36);
    v22 = sub_1000954E0(v34, v35, v33);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1000954E0(v32, a2, v33);
    *(v20 + 22) = 2048;
    result = swift_beginAccess();
    if (__OFADD__(*a4, 10))
    {
      goto LABEL_16;
    }

    *(v20 + 24) = *a4 + 10;
    *(v20 + 32) = 2080;
    if (v16[96])
    {
      v24 = 0x79786F7270;
    }

    else
    {
      v24 = 0x746365726964;
    }

    if (v16[96])
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE600000000000000;
    }

    sub_10012AAB0(v16, type metadata accessor for ValidatedAttestation);
    v26 = sub_1000954E0(v24, v25, v33);

    *(v20 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s creating verified node with identifier: %s, ohttpcontext: %ld, kind: %s", v20, 0x2Au);
    swift_arrayDestroy();

    a3 = v31;
  }

  else
  {

    sub_10012AAB0(v16, type metadata accessor for ValidatedAttestation);
  }

  v27 = *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48);
  sub_10003C450(a3, a6);
  result = swift_beginAccess();
  v28 = *a4;
  v29 = *a4 + 10;
  if (__OFADD__(*a4, 10))
  {
    __break(1u);
  }

  else if ((v29 & 0x8000000000000000) == 0)
  {
    *(a6 + v27) = v29;
    type metadata accessor for ValidatedAttestationOrAttestation();
    swift_storeEnumTagMultiPayload();
    result = swift_beginAccess();
    *a4 = v28 + 1;
    return result;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100129580(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_100011F00(a1, &qword_100229920, &qword_1001D7190);
  *a1 = a2;
  a1[1] = a3;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  return sub_100012038(a2, a3);
}

uint64_t sub_100129638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v98 = a3;
  v105 = sub_1001D1380();
  v92 = *(v105 - 8);
  v4 = *(v92 + 64);
  __chkstk_darwin(v105, v5);
  v103 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v94 = v85 - v10;
  v104 = sub_1001D13D0();
  v91 = *(v104 - 8);
  v11 = *(v91 + 64);
  v13 = __chkstk_darwin(v104, v12);
  v89 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v102 = v85 - v16;
  v106 = sub_1001D0ED0();
  v17 = *(v106 - 8);
  v18 = v17[8];
  v20 = __chkstk_darwin(v106, v19);
  v90 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v24 = v85 - v23;
  v25 = sub_100011AC0(&qword_10022E648, &qword_1001DF4F8);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25, v27);
  v97 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v32 = v85 - v31;
  v33 = sub_1001CFD60();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8, v35);
  v36 = sub_1001D0FD0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  v41 = v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D0FE0();
  sub_1001D0FC0();
  v42 = v41;
  v43 = v98;
  v44 = v36;
  v45 = v106;
  (*(v37 + 8))(v42, v44);
  sub_1001D0660();
  sub_1001D0650();
  v95 = a1;
  sub_1001D0F90();
  v46 = v17[2];
  v85[1] = v17 + 2;
  v85[0] = v46;
  v46(v32, v24, v45);
  v86 = v25;
  v47 = *(v25 + 36);
  v48 = sub_10012AA68(&qword_100229338, &type metadata accessor for HTTPFields);
  sub_1001D1CF0();
  v93 = v17;
  v49 = v17[1];
  v88 = v17 + 1;
  v87 = v49;
  v49(v24, v45);
  sub_1001D1D10();
  if (*&v32[v47] != v107[0])
  {
    v100 = (v91 + 8);
    v101 = (v91 + 16);
    v99 = (v92 + 8);
    do
    {
      v50 = sub_1001D1D40();
      v51 = v102;
      v52 = v104;
      (*v101)(v102);
      v50(v107, 0);
      sub_1001D1D20();
      v53 = v43;
      v54 = sub_1001D13C0();
      v56 = v55;
      v57 = v103;
      sub_1001D13B0();
      (*v100)(v51, v52);
      v58 = sub_1001D1320();
      v60 = v59;
      (*v99)(v57, v105);
      v108._countAndFlagsBits = v54;
      v43 = v53;
      v108._object = v56;
      v110._countAndFlagsBits = v58;
      v110._object = v60;
      sub_1001D0670(v108, v110);
      v45 = v106;

      sub_1001D1D10();
    }

    while (*&v32[v47] != v107[0]);
  }

  v102 = v48;
  v61 = v103;
  sub_100011F00(v32, &qword_10022E648, &qword_1001DF4F8);
  sub_1001D12A0();
  sub_1001D1250();
  v62 = sub_1001D1070();

  if (!v62)
  {

    v64 = v94;
LABEL_10:
    v67 = sub_1001D0FF0();
    (*(*(v67 - 8) + 8))(v95, v67);
    (v93[7])(v64, 1, 1, v45);
    return sub_100011F00(v64, &unk_100230110, &unk_1001D6520);
  }

  sub_1001D1290();
  v63 = swift_dynamicCastClass();
  v64 = v94;
  if (!v63)
  {

    goto LABEL_10;
  }

  sub_1001D1280();

  v65 = v93;
  if ((v93[6])(v64, 1, v45) == 1)
  {
    v66 = sub_1001D0FF0();
    (*(*(v66 - 8) + 8))(v95, v66);

    return sub_100011F00(v64, &unk_100230110, &unk_1001D6520);
  }

  v69 = v90;
  (v65[4])(v90, v64, v45);
  v70 = v97;
  (v85[0])(v97, v69, v45);
  v71 = *(v86 + 36);
  sub_1001D1CF0();
  sub_1001D1D10();
  v72 = v89;
  if (*(v70 + v71) != v107[0])
  {
    v73 = v61;
    v101 = (v91 + 16);
    v74 = (v91 + 8);
    v75 = (v92 + 8);
    do
    {
      v76 = sub_1001D1D40();
      v77 = v104;
      (*v101)(v72);
      v76(v107, 0);
      sub_1001D1D20();
      v78 = sub_1001D13C0();
      v80 = v79;
      sub_1001D13B0();
      (*v74)(v72, v77);
      v81 = sub_1001D1320();
      v83 = v82;
      (*v75)(v73, v105);
      v109._countAndFlagsBits = v78;
      v109._object = v80;
      v111._countAndFlagsBits = v81;
      v111._object = v83;
      v70 = v97;
      sub_1001D0670(v109, v111);

      v45 = v106;

      sub_1001D1D10();
    }

    while (*(v70 + v71) != v107[0]);
  }

  v84 = sub_1001D0FF0();
  (*(*(v84 - 8) + 8))(v95, v84);
  sub_100011F00(v70, &qword_10022E648, &qword_1001DF4F8);
  return v87(v90, v45);
}

uint64_t sub_10012A010(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  sub_100089C38(v4, v3);

  return _swift_task_switch(sub_10012A084, 0, 0);
}

uint64_t sub_10012A0A4()
{
  v1 = *(*(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10012A16C;

  return sub_10013F73C(v2);
}

uint64_t sub_10012A16C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_10012A344;
  }

  else
  {
    v3 = sub_10012A280;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012A280()
{
  v1 = *(v0 + 16);
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_100012038(v2, v3);
  sub_100012038(v4, v5);
  sub_10012AAB0(v1, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);

  v6 = *(v0 + 8);

  return v6(v2, v3, v4, v5);
}

uint64_t sub_10012A344()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t sub_10012A3A8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  sub_100089C38(v4, v3);

  return _swift_task_switch(sub_10012B040, 0, 0);
}

uint64_t sub_10012A41C()
{
  v1 = *v0;
  v2 = qword_1002434F0;
  v3 = sub_1001CFDA0();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + qword_1002434F8, v3);
  sub_10012AAB0(v0 + qword_100243500, type metadata accessor for TrustedRequestConfiguration);
  v5 = qword_100243508;
  v6 = sub_1001D08A0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 272));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 280));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 288));
  v7 = *(*v0 + 296);
  v8 = v1[13];
  v9 = sub_1001D1F00();
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  (*(*(v1[14] - 8) + 8))(v0 + *(*v0 + 304));
  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 312));
  (*(*(v1[16] - 8) + 8))(v0 + *(*v0 + 320));
  (*(*(v1[17] - 8) + 8))(v0 + *(*v0 + 328));
  (*(*(v1[19] - 8) + 8))(v0 + *(*v0 + 336));
  v10 = *(v0 + *(*v0 + 344));

  (*(*(v1[18] - 8) + 8))(v0 + *(*v0 + 352));
  v11 = *(*v0 + 360);
  v12 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + *(*v0 + 368));

  v14 = *(*v0 + 392);
  v15 = sub_1001D0E60();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  return v0;
}

uint64_t sub_10012A944()
{
  sub_10012A41C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_10012A9C8()
{
  result = qword_10022E640;
  if (!qword_10022E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022E640);
  }

  return result;
}

uint64_t type metadata accessor for ValidatedAttestationOrAttestation()
{
  result = qword_10022E8C8;
  if (!qword_10022E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012AA68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012AAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012AB10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012AB64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012ABA0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10012ABB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012AC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10012AC80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012ACC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10012ACE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10012AD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_10012ADA0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_10012ADE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10012AE20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10012AE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10012AE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10012AEFC()
{
  sub_10012AF70();
  if (v0 <= 0x3F)
  {
    sub_10012AFDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10012AF70()
{
  if (!qword_10022E8D8)
  {
    type metadata accessor for ValidatedAttestation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022E8D8);
    }
  }
}

void sub_10012AFDC()
{
  if (!qword_10022E8E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022E8E0);
    }
  }
}

uint64_t sub_10012B050@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v185 = a3;
  v186 = a4;
  v189 = a1;
  v5 = type metadata accessor for TrustedRequestConfiguration();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v180 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v179 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v178 = &v161 - v15;
  v193 = sub_1001D0900();
  v187 = *(v193 - 8);
  v16 = *(v187 + 64);
  v18 = __chkstk_darwin(v193, v17);
  v181 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v190 = &v161 - v21;
  v22 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v177 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v195 = &v161 - v28;
  v29 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v196 = *(v29 - 8);
  v30 = *(v196 + 64);
  v32 = __chkstk_darwin(v29, v31);
  v34 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v35);
  v37 = &v161 - v36;
  v38 = sub_1001CFD60();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38, v41);
  v43 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for RateLimitTimingDetails(0);
  v45 = *(*(v44 - 8) + 64);
  v47 = __chkstk_darwin(v44, v46);
  v49 = &v161 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47, v50);
  v52 = &v161 - v51;
  v53 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
  v54 = *(*(v53 - 8) + 64);
  v56 = __chkstk_darwin(v53, v55);
  if (a2[7])
  {
    sub_10012BFB8(v185, type metadata accessor for TrustedRequestConfiguration);
    (*(v39 + 8))(v189, v38);
    sub_10012BFB8(a2, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    v58 = type metadata accessor for RateLimitConfiguration(0);
    v59 = *(*(v58 - 8) + 56);
    v60 = v58;
    v61 = v186;

    return v59(v61, 1, 1, v60);
  }

  else
  {
    v194 = &v161 - v57;
    v184 = v56;
    v161 = v37;
    v183 = v29;
    v162 = v34;
    v63 = v193;
    v174 = v43;
    v169 = v49;
    v170 = v44;
    v175 = v39;
    v171 = v52;
    v64 = a2[1];
    v65 = a2;
    v66 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v66 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      v168 = *a2;
      v167 = v64;
    }

    else
    {
      v168 = 0;
      v167 = 0;
    }

    v67 = v63;
    v68 = v190;
    v69 = v195;
    v70 = v196;
    v71 = v184;
    v72 = a2;
    v73 = a2[3];
    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = a2[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      v166 = a2[2];
      v165 = v73;
    }

    else
    {
      v166 = 0;
      v165 = 0;
    }

    v182 = v38;
    v75 = a2[5];
    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = a2[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v76)
    {
      v164 = a2[4];
      v163 = v75;
    }

    else
    {
      v164 = 0;
      v163 = 0;
    }

    v77 = a2[6];
    v78 = *(v77 + 64);
    v173 = v77 + 64;
    v79 = 1 << *(v77 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & v78;
    v172 = (v79 + 63) >> 6;
    v188 = v77;

    v82 = 0;
    v83 = &_swiftEmptyArrayStorage;
    v176 = v65;
    while (v81)
    {
LABEL_30:
      v197 = v82;
      v198 = v81;
      v87 = __clz(__rbit64(v81)) | (v82 << 6);
      v88 = *(v188 + 56);
      v89 = (*(v188 + 48) + 16 * v87);
      v90 = *v89;
      v91 = v89[1];
      v92 = v88 + *(*(type metadata accessor for Proto_Ropes_RateLimit_Values(0) - 8) + 72) * v87;
      v93 = *(v71 + 48);
      v94 = v194;
      sub_10012C018(v92, &v194[v93], type metadata accessor for Proto_Ropes_RateLimit_Values);
      v191 = v90;
      *v94 = v90;
      v94[1] = v91;
      v95 = *(v94 + v93);
      v96 = *(v95 + 16);
      if (v96)
      {
        v192 = v83;
        v199 = &_swiftEmptyArrayStorage;

        sub_100151604(0, v96, 0);
        v97 = v199;
        v98 = (v95 + 40);
        v99 = v191;
        do
        {
          v101 = *(v98 - 1);
          v100 = *v98;
          v199 = v97;
          v102 = v97[2];
          v103 = v97[3];

          if (v102 >= v103 >> 1)
          {
            sub_100151604((v103 > 1), v102 + 1, 1);
            v99 = v191;
            v97 = v199;
          }

          v97[2] = v102 + 1;
          v104 = &v97[4 * v102];
          v104[4] = v99;
          v104[5] = v91;
          v104[6] = v101;
          v104[7] = v100;
          v98 += 2;
          --v96;
        }

        while (v96);
        v72 = v176;
        v83 = v192;
        v67 = v193;
        v68 = v190;
        v71 = v184;
        v94 = v194;
      }

      else
      {

        v97 = &_swiftEmptyArrayStorage;
      }

      result = sub_100011F00(v94, &qword_10022BDF0, &qword_1001DB888);
      v105 = v97[2];
      v106 = *(v83 + 2);
      v107 = v106 + v105;
      v70 = v196;
      if (__OFADD__(v106, v105))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || v107 > *(v83 + 3) >> 1)
      {
        if (v106 <= v107)
        {
          v108 = v106 + v105;
        }

        else
        {
          v108 = v106;
        }

        result = sub_1000094BC(result, v108, 1, v83);
        v83 = result;
      }

      v81 = (v198 - 1) & v198;
      if (v97[2])
      {
        if ((*(v83 + 3) >> 1) - *(v83 + 2) < v105)
        {
          goto LABEL_81;
        }

        swift_arrayInitWithCopy();

        v69 = v195;
        v82 = v197;
        if (v105)
        {
          v109 = *(v83 + 2);
          v110 = __OFADD__(v109, v105);
          v111 = v109 + v105;
          if (v110)
          {
            goto LABEL_82;
          }

          *(v83 + 2) = v111;
        }
      }

      else
      {

        v69 = v195;
        v82 = v197;
        if (v105)
        {
          goto LABEL_80;
        }
      }
    }

    v84 = v182;
    v85 = v187;
    while (1)
    {
      v86 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v86 >= v172)
      {
        break;
      }

      v81 = *(v173 + 8 * v86);
      ++v82;
      if (v81)
      {
        v82 = v86;
        goto LABEL_30;
      }
    }

    (*(v175 + 16))(v174, v189, v84);
    v197 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
    v112 = *(v197 + 44);
    sub_10001208C(v72 + v112, v69, &qword_10022BF08, &qword_1001DB9A0);
    v113 = *(v70 + 48);
    v114 = v183;
    if (v113(v69, 1, v183) == 1)
    {
      v115 = v72;
      v116 = v67;
      v117 = v161;
      *v161 = 0;
      v118 = &v117[*(v114 + 20)];
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v119 = v116;
      v72 = v115;
      v68 = v190;
      (*(v85 + 56))(&v117[*(v114 + 24)], 1, 1, v119);
      if (v113(v69, 1, v114) != 1)
      {
        sub_100011F00(v69, &qword_10022BF08, &qword_1001DB9A0);
      }
    }

    else
    {
      v117 = v161;
      sub_10012C080(v69, v161, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
    }

    v120 = *v117;
    sub_10012BFB8(v117, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
    v121 = v72 + v112;
    v122 = v177;
    sub_10001208C(v121, v177, &qword_10022BF08, &qword_1001DB9A0);
    v123 = v183;
    v124 = v113(v122, 1, v183);
    v192 = v83;
    v198 = v120;
    if (v124 == 1)
    {
      v125 = v122;
      v126 = v162;
      *v162 = 0;
      v127 = &v126[*(v123 + 20)];
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v128 = v187;
      v129 = v193;
      (*(v187 + 56))(&v126[*(v123 + 24)], 1, 1, v193);
      v130 = v113(v125, 1, v123);
      v131 = v197;
      if (v130 != 1)
      {
        sub_100011F00(v125, &qword_10022BF08, &qword_1001DB9A0);
      }
    }

    else
    {
      v132 = v122;
      v126 = v162;
      sub_10012C080(v132, v162, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      v129 = v193;
      v128 = v187;
      v131 = v197;
    }

    v133 = v178;
    sub_10001208C(&v126[*(v183 + 24)], v178, &qword_10022BF10, &qword_1001DB9A8);
    v134 = *(v128 + 48);
    if (v134(v133, 1, v129) == 1)
    {
      sub_1001D08F0();
      sub_10012BFB8(v126, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      if (v134(v133, 1, v129) != 1)
      {
        sub_100011F00(v133, &qword_10022BF10, &qword_1001DB9A8);
      }
    }

    else
    {
      sub_10012BFB8(v126, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      (*(v128 + 32))(v68, v133, v129);
    }

    sub_1001D08E0();
    v136 = v135;
    v137 = v128;
    v138 = *(v128 + 8);
    v138(v68, v129);
    v139 = v179;
    sub_10001208C(v72 + *(v131 + 48), v179, &qword_10022BF10, &qword_1001DB9A8);
    if (v134(v139, 1, v129) == 1)
    {
      v140 = v181;
      sub_1001D08F0();
      v141 = v134(v139, 1, v129);
      v142 = v186;
      v143 = v171;
      if (v141 != 1)
      {
        sub_100011F00(v139, &qword_10022BF10, &qword_1001DB9A8);
      }
    }

    else
    {
      v140 = v181;
      (*(v137 + 32))(v181, v139, v129);
      v142 = v186;
      v143 = v171;
    }

    sub_1001D08E0();
    v138(v140, v129);
    v144 = *(v72 + 72);
    v145 = v185;
    v146 = v180;
    sub_10012C018(v185, v180, type metadata accessor for TrustedRequestConfiguration);
    v147 = v169;
    *v169 = v198;
    if (v136 < 0.0)
    {
      v148 = 0.0;
    }

    else
    {
      v148 = v136;
    }

    v149 = *(v146 + 56);
    if (*(v146 + 48) >= v148)
    {
      v150 = v148;
    }

    else
    {
      v150 = *(v146 + 48);
    }

    *(v147 + 8) = v150;
    v151 = v170;
    v152 = v147 + *(v170 + 24);
    v153 = v174;
    sub_1001CFCE0();
    sub_10012BFB8(v145, type metadata accessor for TrustedRequestConfiguration);
    v154 = *(v175 + 8);
    v155 = v182;
    v154(v189, v182);
    v154(v153, v155);
    if (v144 == 0.0)
    {
      v144 = *(v146 + 64);
    }

    sub_10012BFB8(v146, type metadata accessor for TrustedRequestConfiguration);
    v156 = 1.0;
    if (v144 <= 1.0)
    {
      v156 = v144;
    }

    if (v144 < 0.0)
    {
      v156 = 0.0;
    }

    *(v147 + *(v151 + 28)) = v150 * v156;
    sub_10012C080(v147, v143, type metadata accessor for RateLimitTimingDetails);
    v157 = v167;
    *v142 = v168;
    v142[1] = v157;
    v158 = v165;
    v142[2] = v166;
    v142[3] = v158;
    v159 = v163;
    v142[4] = v164;
    v142[5] = v159;
    v142[6] = v192;
    v160 = type metadata accessor for RateLimitConfiguration(0);
    sub_10012C080(v143, v142 + *(v160 + 20), type metadata accessor for RateLimitTimingDetails);
    sub_10012BFB8(v72, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    return (*(*(v160 - 8) + 56))(v142, 0, 1, v160);
  }
}

uint64_t sub_10012BFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012C018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012C080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFB10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 64);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 116);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10012C240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001CFB10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 116);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TrustedRequestConfiguration()
{
  result = qword_10022E968;
  if (!qword_10022E968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012C3BC()
{
  sub_1001235EC(319, &qword_100229738);
  if (v0 <= 0x3F)
  {
    sub_1001CFB10();
    if (v1 <= 0x3F)
    {
      sub_1001235EC(319, &unk_10022E978);
      if (v2 <= 0x3F)
      {
        sub_10012C534();
        if (v3 <= 0x3F)
        {
          sub_1001235EC(319, &qword_10022A698);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10012C534()
{
  if (!qword_10022DC40[0])
  {
    sub_1001CFDA0();
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, qword_10022DC40);
    }
  }
}

uint64_t sub_10012C59C(void *a1)
{
  v2 = sub_1001D1810();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0330();
  sub_10005956C();
  sub_1001D0210();
  (*(v8 + 8))(v12, v7);
  if (!v32)
  {
    goto LABEL_12;
  }

  if (sub_1001D1890() <= 0)
  {

LABEL_12:
    v23 = sub_1001CF8C0();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v19 = swift_allocObject();
    v26 = sub_1001CF880();
    v31 = 0x1000000000;
    v32 = v26 | 0x4000000000000000;
    if (!sub_10012D430(&v31))
    {
      return v31;
    }

    sub_100089BE4();
    swift_allocError();
    *v27 = 5888;
    *(v27 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    sub_100011E48(v31, v32);
    return v19;
  }

  sub_1001D1800();
  v14 = sub_1001D17E0();
  v16 = v15;

  (*(v30 + 8))(v6, v2);
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  if (v16 >> 60 == 15)
  {
    v18 = 0xC000000000000000;
  }

  else
  {
    v18 = v16;
  }

  v19 = sub_1001CFB60();
  v21 = v20;
  sub_100011E48(v17, v18);
  if (v21 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v22 = 5888;
    *(v22 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_10012C8DC()
{
  v1 = v0;
  v38 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v2 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v3);
  v37 = &v37 - v4;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1001D2030(762);
  v43._countAndFlagsBits = 0xD000000000000038;
  v43._object = 0x80000001001E64A0;
  sub_1001D18B0(v43);
  countAndFlagsBits = v0->_countAndFlagsBits;
  v44._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v44);

  v45._countAndFlagsBits = 0xD00000000000001BLL;
  v45._object = 0x80000001001E64E0;
  sub_1001D18B0(v45);
  countAndFlagsBits = v0->_object;
  v46._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v46);

  v47._countAndFlagsBits = 0xD00000000000001CLL;
  v47._object = 0x80000001001E6500;
  sub_1001D18B0(v47);
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  v48._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v48);

  v49._countAndFlagsBits = 0xD000000000000016;
  v49._object = 0x80000001001E6520;
  sub_1001D18B0(v49);
  object = v0[2]._object;
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v40 = object;

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v50._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v50);

  v51._countAndFlagsBits = 0xD00000000000002BLL;
  v51._object = 0x80000001001E6540;
  sub_1001D18B0(v51);
  v6 = v0[3]._countAndFlagsBits;
  sub_1001D1CB0();
  v52._countAndFlagsBits = 0xD000000000000025;
  v52._object = 0x80000001001E6570;
  sub_1001D18B0(v52);
  v7 = v0[3]._object;
  sub_1001D1CB0();
  v53._countAndFlagsBits = 0xD000000000000025;
  v53._object = 0x80000001001E65A0;
  sub_1001D18B0(v53);
  v8 = v0[4]._countAndFlagsBits;
  sub_1001D1CB0();
  v54._countAndFlagsBits = 0xD000000000000017;
  v54._object = 0x80000001001E65D0;
  sub_1001D18B0(v54);
  if (LOBYTE(v0[4]._object))
  {
    v9._countAndFlagsBits = 1702195828;
  }

  else
  {
    v9._countAndFlagsBits = 0x65736C6166;
  }

  if (LOBYTE(v0[4]._object))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v9._object = v10;
  sub_1001D18B0(v9);

  v55._countAndFlagsBits = 0xD000000000000024;
  v55._object = 0x80000001001E65F0;
  sub_1001D18B0(v55);
  v11 = type metadata accessor for TrustedRequestConfiguration();
  v12 = (&v0->_countAndFlagsBits + v11[25]);
  v13 = v12[1];
  countAndFlagsBits = *v12;
  v40 = v13;

  v56._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v56);

  v57._countAndFlagsBits = 0xD00000000000001FLL;
  v57._object = 0x80000001001E6620;
  sub_1001D18B0(v57);
  if (BYTE1(v0[4]._object))
  {
    v14._countAndFlagsBits = 1702195828;
  }

  else
  {
    v14._countAndFlagsBits = 0x65736C6166;
  }

  if (BYTE1(v0[4]._object))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v14._object = v15;
  sub_1001D18B0(v14);

  v58._countAndFlagsBits = 0xD000000000000012;
  v58._object = 0x80000001001E6640;
  sub_1001D18B0(v58);
  sub_1001D18B0(v0[5]);
  v59._countAndFlagsBits = 0xD000000000000011;
  v59._object = 0x80000001001E6660;
  sub_1001D18B0(v59);
  if (LOBYTE(v0[6]._countAndFlagsBits))
  {
    v16._countAndFlagsBits = 1702195828;
  }

  else
  {
    v16._countAndFlagsBits = 0x65736C6166;
  }

  if (LOBYTE(v0[6]._countAndFlagsBits))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v16._object = v17;
  sub_1001D18B0(v16);

  v60._countAndFlagsBits = 0xD000000000000012;
  v60._object = 0x80000001001E6680;
  sub_1001D18B0(v60);
  v18 = v11[16];
  sub_1001CFB10();
  sub_10012DAF0(&qword_1002302F0, &type metadata accessor for URL);
  v61._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v61);

  v62._countAndFlagsBits = 0xD00000000000001DLL;
  v62._object = 0x80000001001E66A0;
  sub_1001D18B0(v62);
  sub_1001D18B0(*(v1 + v11[17]));
  v63._countAndFlagsBits = 0xD000000000000019;
  v63._object = 0x80000001001E66C0;
  sub_1001D18B0(v63);
  sub_1001D18B0(*(v1 + v11[18]));
  v64._countAndFlagsBits = 0xD000000000000029;
  v64._object = 0x80000001001E66E0;
  sub_1001D18B0(v64);
  if (*(&v1->_countAndFlagsBits + v11[19]))
  {
    v19._countAndFlagsBits = 1702195828;
  }

  else
  {
    v19._countAndFlagsBits = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + v11[19]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v19._object = v20;
  sub_1001D18B0(v19);

  v65._countAndFlagsBits = 0xD000000000000018;
  v65._object = 0x80000001001E6710;
  sub_1001D18B0(v65);
  v21 = (&v1->_countAndFlagsBits + v11[20]);
  v22 = v21[1];
  countAndFlagsBits = *v21;
  v40 = v22;

  v66._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v66);

  v67._countAndFlagsBits = 0xD000000000000018;
  v67._object = 0x80000001001E6730;
  sub_1001D18B0(v67);
  v23 = (&v1->_countAndFlagsBits + v11[21]);
  v24 = v23[1];
  countAndFlagsBits = *v23;
  v40 = v24;

  v68._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v68);

  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = 0x80000001001E6750;
  sub_1001D18B0(v69);
  v25 = (&v1->_countAndFlagsBits + v11[22]);
  v26 = v25[1];
  countAndFlagsBits = *v25;
  v40 = v26;

  v70._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v70);

  v71._object = 0x80000001001E6770;
  v71._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v71);
  sub_1001D18B0(*(v1 + v11[27]));
  v72._object = 0x80000001001E6790;
  v72._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v72);
  v27 = (&v1->_countAndFlagsBits + v11[28]);
  v28 = v27[1];
  countAndFlagsBits = *v27;
  v40 = v28;

  v73._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v73);

  v74._object = 0x80000001001E67B0;
  v74._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v74);
  sub_100043820(v1 + v11[29], v37);
  v75._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v75);

  v76._countAndFlagsBits = 0xD00000000000001ALL;
  v76._object = 0x80000001001E67D0;
  sub_1001D18B0(v76);
  v29 = (&v1->_countAndFlagsBits + v11[30]);
  v30 = v29[1];
  countAndFlagsBits = *v29;
  v40 = v30;

  v77._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v77);

  v78._countAndFlagsBits = 0x6561202020200A0ALL;
  v78._object = 0xEF203A79654B6461;
  sub_1001D18B0(v78);
  v31 = (&v1->_countAndFlagsBits + v11[32]);
  v32 = *v31;
  v33 = v31[1];
  v79._countAndFlagsBits = sub_1001CFB50();
  sub_1001D18B0(v79);

  v80._object = 0x80000001001E67F0;
  v80._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v80);
  LOBYTE(countAndFlagsBits) = *(&v1->_countAndFlagsBits + v11[33]);
  sub_1001D2120();
  v81._countAndFlagsBits = 0xD00000000000002BLL;
  v81._object = 0x80000001001E6810;
  sub_1001D18B0(v81);
  if (*(&v1->_countAndFlagsBits + v11[34]))
  {
    v34._countAndFlagsBits = 1702195828;
  }

  else
  {
    v34._countAndFlagsBits = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + v11[34]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  v34._object = v35;
  sub_1001D18B0(v34);

  v82._countAndFlagsBits = 15882;
  v82._object = 0xE200000000000000;
  sub_1001D18B0(v82);
  return v41;
}

uint64_t sub_10012D0B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7827308;
  if (v2 != 1)
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1751607656;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (*a2 != 1)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1751607656;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1001D2470();
  }

  return v11 & 1;
}

Swift::Int sub_10012D1A4()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10012D23C()
{
  *v0;
  *v0;
  sub_1001D1880();
}

Swift::Int sub_10012D2C0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10012D354@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012DAA4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10012D384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827308;
  if (v2 != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1751607656;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10012D3DC()
{
  result = qword_10022EA20;
  if (!qword_10022EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EA20);
  }

  return result;
}

uint64_t sub_10012D430(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, &bytes);
    }

    v7 = *a1;

    sub_100011E48(v3, v2);
    *&bytes = v3;
    *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    sub_1001CFB20();
    v8 = *(&bytes + 1);
    v9 = *(bytes + 16);
    result = sub_1001CF870();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v10 = result;
    v11 = sub_1001CF8A0();
    v12 = __OFSUB__(v9, v11);
    v13 = v9 - v11;
    if (!v12)
    {
      sub_1001CF890();
      result = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, (v10 + v13));
      *a1 = bytes;
      a1[1] = v8 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    sub_100011E48(v3, v2);
    *&bytes = v3;
    WORD4(bytes) = v2;
    BYTE10(bytes) = BYTE2(v2);
    BYTE11(bytes) = BYTE3(v2);
    BYTE12(bytes) = BYTE4(v2);
    BYTE13(bytes) = BYTE5(v2);
    BYTE14(bytes) = BYTE6(v2);
    result = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, &bytes);
    v6 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v6;
    return result;
  }

  v14 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100011E48(v3, v2);
  *a1 = xmmword_1001D3A00;
  sub_100011E48(0, 0xC000000000000000);
  v15 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v15 < v3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_1001CF870() && __OFSUB__(v3, sub_1001CF8A0()))
    {
LABEL_23:
      __break(1u);
    }

    v16 = sub_1001CF8C0();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1001CF850();

    v14 = v19;
  }

  if (v15 < v3)
  {
    goto LABEL_20;
  }

  result = sub_1001CF870();
  if (result)
  {
    v20 = result;
    v21 = sub_1001CF8A0();
    v22 = v3 - v21;
    if (!__OFSUB__(v3, v21))
    {
      sub_1001CF890();
      v23 = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, (v20 + v22));

      *a1 = v3;
      a1[1] = v14 | 0x4000000000000000;
      return v23;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10012D7B8(char *a1)
{
  v2 = sub_1001D1BA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v21 - v10;
  (*(v3 + 16))(&v21 - v10, a1, v2);
  sub_1001D1B30();
  sub_10012DAF0(&qword_10022EA28, &type metadata accessor for TaskPriority);
  v12 = sub_1001D1790();
  v13 = *(v3 + 8);
  v13(v8, v2);
  if (v12)
  {
    v13(a1, v2);
    v14 = 2;
  }

  else
  {
    sub_1001D1B70();
    v15 = sub_1001D1790();
    v13(v8, v2);
    if (v15 & 1) != 0 || (sub_1001D1B50(), v16 = sub_1001D1790(), v13(v8, v2), (v16))
    {
      v13(a1, v2);
      v14 = 1;
    }

    else
    {
      sub_1001D1B80();
      v17 = sub_1001D1790();
      v13(v8, v2);
      if (v17 & 1) != 0 || (sub_1001D1B60(), v18 = sub_1001D1790(), v13(v8, v2), (v18))
      {
        v19 = a1;
      }

      else
      {
        sub_1001D1B40();
        sub_1001D1790();
        v13(a1, v2);
        v19 = v8;
      }

      v13(v19, v2);
      v14 = 0;
    }
  }

  v13(v11, v2);
  return v14;
}

uint64_t sub_10012DAA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CF48;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10012DAF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10012DB48(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
    case 28:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 8:
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 4:
    case 25:
    case 26:
    case 29:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
    case 10:
      result = 0xD000000000000021;
      break;
    case 7:
    case 31:
      result = 0xD000000000000019;
      break;
    case 9:
    case 32:
      result = 0xD000000000000017;
      break;
    case 11:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 18:
    case 19:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000027;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD000000000000026;
      break;
    case 23:
      result = 0xD00000000000002CLL;
      break;
    case 24:
      result = 0xD000000000000032;
      break;
    case 30:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustedRequestError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012DFD0()
{
  result = qword_10022EA30[0];
  if (!qword_10022EA30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022EA30);
  }

  return result;
}

void sub_10012E024(void *a1)
{
  v2 = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v33 = *(v2 - 8) + 64;
    v4 = a1[14];
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v34 = *(v5 - 8) + 64;
      v7 = a1[15];
      v8 = swift_checkMetadataState();
      if (v9 <= 0x3F)
      {
        v35 = *(v8 - 8) + 64;
        v10 = a1[10];
        v11 = swift_checkMetadataState();
        if (v12 <= 0x3F)
        {
          v36 = *(v11 - 8) + 64;
          v13 = a1[11];
          v14 = sub_1001D1F00();
          if (v15 <= 0x3F)
          {
            v37 = *(v14 - 8) + 64;
            v16 = a1[12];
            v17 = swift_checkMetadataState();
            if (v18 <= 0x3F)
            {
              v38 = *(v17 - 8) + 64;
              v19 = a1[13];
              v20 = swift_checkMetadataState();
              if (v21 <= 0x3F)
              {
                v39 = *(v20 - 8) + 64;
                v22 = a1[16];
                v23 = swift_checkMetadataState();
                if (v24 <= 0x3F)
                {
                  v40 = *(v23 - 8) + 64;
                  v25 = a1[18];
                  v26 = swift_checkMetadataState();
                  if (v27 <= 0x3F)
                  {
                    v41 = *(v26 - 8) + 64;
                    sub_100012FF8();
                    if (v29 <= 0x3F)
                    {
                      v42 = *(v28 - 8) + 64;
                      v30 = a1[17];
                      v31 = swift_checkMetadataState();
                      if (v32 <= 0x3F)
                      {
                        v43 = *(v31 - 8) + 64;
                        swift_initClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10012E35C()
{
  v1 = v0;
  v2 = *v0;
  v15 = *v0;
  v3 = qword_100243510;
  v4 = sub_1001D0E60();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100011CF0((v0 + qword_100243518));
  (*(*(v2[14] - 8) + 8))(v0 + *(*v0 + 240));
  (*(*(v2[15] - 8) + 8))(v0 + *(*v0 + 248), v2[15]);
  (*(*(v2[10] - 8) + 8))(v0 + *(*v0 + 256), v2[10]);
  v5 = *(*v0 + 264);
  v14 = v2[11];
  v6 = sub_1001D1F00();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  (*(*(v2[12] - 8) + 8))(v0 + *(*v0 + 272), v2[12]);
  (*(*(v2[13] - 8) + 8))(v0 + *(*v0 + 280), v2[13]);
  (*(*(v2[16] - 8) + 8))(v0 + *(*v0 + 288), v2[16]);
  (*(*(v2[18] - 8) + 8))(v0 + *(*v0 + 296), v2[18]);
  v7 = *(v0 + *(*v0 + 304) + 8);

  v8 = *(v0 + *(*v0 + 320));

  v9 = *(*v0 + 328);
  v10 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  (*(*(v2[17] - 8) + 8))(v0 + *(*v0 + 336), v2[17]);
  v11 = v0 + *(*v0 + 344);
  v16 = *(v15 + 19);
  v17 = *(v15 + 21);
  v18 = *(v15 + 23);
  v19 = *(v15 + 25);
  v20 = v2[27];
  type metadata accessor for TrustedRequestFactory.Metrics();
  v12 = sub_1001CFF70();
  sub_10015607C(v12);
  return v1;
}

uint64_t sub_10012E880()
{
  sub_10012E35C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_10012E8F0(__int128 *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  type metadata accessor for TrustedRequestFactory.Metrics();
  return sub_1001CFF60();
}

uint64_t sub_10012E984()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012E9C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012EA08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10012EA44(char a1)
{
  v2 = v1;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000954E0(*(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v14);
    *(v6 + 12) = 2080;
    v7 = a1 & 1;
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s request task cancelled reason=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v7 = a1 & 1;
  }

  v11 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 24);
  v12 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 32);
  sub_100024DC8((v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver), v11);
  (*(v12 + 8))(v7, v11, v12);
  v13 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_task);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();
}

uint64_t sub_10012EC34()
{
  v1 = OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logger;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8);

  v4 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_outgoingUserDataWriter);

  v5 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_incomingUserDataReader);

  v6 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_task);

  v7 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_jsonEncoder);

  sub_100011CF0((v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver));
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedRequestXPCProxy()
{
  result = qword_10022EB68;
  if (!qword_10022EB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012ED88()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10012EE48()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &unk_100222048;
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10012EE70(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v29 - v15;

  sub_100012038(a1, a2);
  v17 = sub_1001D0E50();
  v18 = sub_1001D1E00();

  if (!os_log_type_enabled(v17, v18))
  {
    sub_100011E48(a1, a2);

LABEL_14:
    v27 = sub_1001D1BA0();
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v6;
    *(v28 + 40) = a1;
    *(v28 + 48) = a2;
    *(v28 + 56) = a3 & 1;
    *(v28 + 64) = a4;
    *(v28 + 72) = a5;

    sub_100012038(a1, a2);

    sub_10015C9F4(0, 0, v16, &unk_1001DFD20, v28);
  }

  v29 = a4;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v30 = v20;
  *v19 = 136315650;
  result = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v30);
  *(v19 + 4) = result;
  *(v19 + 12) = 2048;
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v22)
  {
    v23 = BYTE6(a2);
LABEL_13:
    *(v19 + 14) = v23;
    sub_100011E48(a1, a2);
    *(v19 + 22) = 1024;
    *(v19 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s xpc.send received data.count=%ld isComplete=%{BOOL}d", v19, 0x1Cu);
    sub_100011CF0(v20);

    a4 = v29;
    goto LABEL_14;
  }

  LODWORD(v23) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v23 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v14;
  *(v8 + 128) = a7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_1001D0200();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10012F230, 0, 0);
}

uint64_t sub_10012F230()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(*(v0 + 24) + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_outgoingUserDataWriter);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  sub_100012038(v2, v3);
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_10012F354;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000017, 0x80000001001E6E60, sub_100130DDC, v5, &type metadata for () + 8);
}

uint64_t sub_10012F354()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10012F500;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_10012F470;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012F470()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_100011E48(v0[4], v0[5]);
  v1(0, 0xF000000000000000);
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10012F500()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  sub_100011E48(v0[4], v0[5]);

  static PrivateCloudComputeError.wrapAny(error:)(v1, v3);
  sub_1001309E4(&qword_1002292F0);
  swift_willThrowTypedImpl();

  v7 = swift_allocError();
  v8 = *(v6 + 32);
  v8(v9, v3, v5);
  v0[2] = v7;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    v10 = v0[10];
    v11 = v0[8];
    v12 = v0[9];
    v14 = v0[6];
    v13 = v0[7];
    v8(v10, v0[11], v11);
    sub_1001309E4(&qword_10022EC28);
    sub_1001309E4(qword_10022EC30);
    v15 = sub_1001D07B0();
    v17 = v16;
    v14();
    sub_100011E48(v15, v17);
    (*(v12 + 8))(v10, v11);
    v18 = v0[2];

    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[2];

    return sub_1001D2180();
  }
}

uint64_t sub_10012F8AC(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_10012F920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6 - 8, v8);
  v11 = &v22 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_callIDs);
  v13 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_callIDs);
  do
  {
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    v14 = v12;
    atomic_compare_exchange_strong_explicit(v13, &v14, v12 + 1, memory_order_relaxed, memory_order_relaxed);
    v15 = v14 == v12;
    v12 = v14;
  }

  while (!v15);

  v16 = sub_1001D0E50();
  v17 = sub_1001D1E00();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v23);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s xpc.next received callID=%ld", v18, 0x16u);
    sub_100011CF0(v19);
  }

  v20 = sub_1001D1BA0();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v3;
  v21[5] = v12;
  v21[6] = a1;
  v21[7] = a2;

  sub_10015C9F4(0, 0, v11, &unk_1001DFD08, v21);
}

uint64_t sub_10012FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1001D0200();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[12] = v11;
  v12 = swift_task_alloc();
  v7[13] = v12;
  *v12 = v7;
  v12[1] = sub_10012FC90;

  return sub_100130470(v11);
}

uint64_t sub_10012FC90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 104);
  v8 = *v3;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;

  if (v2)
  {
    v6 = sub_10012FFF4;
  }

  else
  {
    v6 = sub_10012FDA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012FDA4()
{
  v32 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 24);

  sub_100089C38(v1, v2);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (!v6)
  {
    sub_10002683C(*(v0 + 112), *(v0 + 120));
    goto LABEL_5;
  }

  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = -1;
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v31 = v12;
  *v11 = 136315650;
  result = sub_1000954E0(*(v9 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v9 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v31);
  *(v11 + 4) = result;
  *(v11 + 12) = 2048;
  *(v11 + 14) = v8;
  *(v11 + 22) = 2048;
  v14 = *(v0 + 120);
  if (v7 >> 60 != 15)
  {
    v24 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v10 = 0;
        goto LABEL_3;
      }

      v25 = *(*(v0 + 112) + 16);
      v26 = *(*(v0 + 112) + 24);
      v10 = v26 - v25;
      if (!__OFSUB__(v26, v25))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v10 = BYTE6(v14);
      goto LABEL_3;
    }

    v27 = *(v0 + 112);
    v28 = *(v0 + 116);
    v29 = __OFSUB__(v28, v27);
    v30 = v28 - v27;
    if (v29)
    {
      __break(1u);
      return result;
    }

    v10 = v30;
  }

LABEL_3:
  v15 = *(v0 + 112);
  *(v11 + 24) = v10;
  sub_10002683C(v15, v14);
  _os_log_impl(&_mh_execute_header, v4, v5, "%s xpc.next responding callID=%ld count=%ld", v11, 0x20u);
  sub_100011CF0(v12);

LABEL_5:

  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 48);
  (*(v0 + 40))(v17, v16, 0, 0xF000000000000000);
  sub_10002683C(v17, v16);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10012FFF4()
{
  v44 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1001309E4(&qword_1002292F0);
  v5 = swift_allocError();
  v6 = *(v3 + 32);
  v6(v7, v1, v4);
  v0[2] = v5;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = v0[7];
    v12 = v0[3];
    v6(v8, v0[9], v11);
    v41 = *(v10 + 16);
    v41(v9, v8, v11);

    v13 = sub_1001D0E50();
    v14 = sub_1001D1DE0();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    if (v15)
    {
      v37 = v0[3];
      v38 = v0[4];
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v19 = 136315650;
      *(v19 + 4) = sub_1000954E0(*(v37 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v37 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v43);
      *(v19 + 12) = 2048;
      *(v19 + 14) = v38;
      *(v19 + 22) = 2112;
      swift_allocError();
      v41(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v18 + 8);
      v42(v16, v17);
      *(v19 + 24) = v21;
      *v39 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s xpc.next responding callID=%ld error=%@", v19, 0x20u);
      sub_100024B10(v39);

      sub_100011CF0(v40);
    }

    else
    {

      v42 = *(v18 + 8);
      v42(v16, v17);
    }

    v24 = v0[11];
    v26 = v0[6];
    v25 = v0[7];
    v27 = v0[5];
    sub_1001309E4(&qword_10022EC28);
    sub_1001309E4(qword_10022EC30);
    v28 = sub_1001D07B0();
    v30 = v29;
    v27(0, 0xF000000000000000, v28, v29);
    sub_100011E48(v28, v30);
    v42(v24, v25);
    v31 = v0[2];

    v33 = v0[11];
    v32 = v0[12];
    v35 = v0[9];
    v34 = v0[10];

    v36 = v0[1];

    return v36();
  }

  else
  {
    v22 = v0[2];

    return sub_1001D2180();
  }
}

uint64_t sub_100130470(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;
  return _swift_task_switch(sub_100130490, 0, 0);
}

uint64_t sub_100130490()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_incomingUserDataReader);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_100011AC0(qword_100229648, &unk_1001D6B30);
  *v3 = v0;
  v3[1] = sub_100130580;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_100130A28, v1, v4);
}

uint64_t sub_100130580()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100130694;
  }

  else
  {
    v3 = sub_10001477C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100130694()
{
  static PrivateCloudComputeError.wrapAny(error:)(*(v0 + 56), *(v0 + 40));
  sub_1001D0200();
  sub_1001309E4(&qword_1002292F0);
  swift_willThrowTypedImpl();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001307E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001CFBE0().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1001CFBE0().super.isa;
  }

  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t sub_100130888()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001308C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100130910(uint64_t a1)
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
  v10[1] = sub_1000130E0;

  return sub_10012FB70(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001309E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001D0200();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100130A30(uint64_t a1, uint64_t a2)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s xpc.cancel received", v6, 0xCu);
    sub_100011CF0(v7);
  }

  sub_10012EA44(0);
  v8 = *(a2 + 16);

  return v8(a2);
}

uint64_t sub_100130B68(uint64_t a1, uint64_t a2)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s xpc.close received (no-op)", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = *(a2 + 16);

  return v8(a2);
}

uint64_t sub_100130C9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_100011E48(v0[5], v0[6]);
  v3 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100130CEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_10012F144(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_100130DF0(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      v6 = *(a1 + 88);
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

unint64_t sub_100130EFC(char a1)
{
  result = 0x5F44494C41564E49;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x425F4445494E4544;
      break;
    case 5:
    case 9:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 14:
    case 19:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
    case 21:
      result = 0xD000000000000035;
      break;
    case 18:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 22:
      result = 0xD000000000000028;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1001311A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100130EFC(*a1);
  v5 = v4;
  if (v3 == sub_100130EFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_100131230()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100130EFC(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100131294()
{
  sub_100130EFC(*v0);
  sub_1001D1880();
}

Swift::Int sub_1001312E8()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100130EFC(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100131348@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100131544();
  *a2 = result;
  return result;
}

unint64_t sub_100131378@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100130EFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t *sub_1001313A4()
{
  v1 = *v0;
  v2 = qword_100243558;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t sub_1001314B8()
{
  sub_1001313A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100131544()
{
  v0 = sub_1001D24A0();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for PrivacyProxyErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyProxyErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001316EC()
{
  result = qword_10022ECD8[0];
  if (!qword_10022ECD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022ECD8);
  }

  return result;
}

uint64_t sub_100131740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1, v4);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  return (*(v7 + 32))(a3, v10, a2);
}

double sub_100131814@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1, a2);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness - 8, v15);
  v17 = &v24 - v16;
  (*(v7 + 16))(v11, v3, v6);
  sub_1001D1C90();
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[6];
  v21 = a1[7];
  v22 = a1[8];
  return sub_100131970(v17, a3);
}

double sub_100131970@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LengthPrefixDeframer.AsyncIterator();
  v4 = *(v3 + 80);
  type metadata accessor for LengthPrefixDeframer.AsyncIterator.State();
  swift_storeEnumTagMultiPayload();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a2, a1, AssociatedTypeWitness);
  result = 0.0;
  *(a2 + *(v3 + 76)) = xmmword_1001D3A00;
  return result;
}

uint64_t sub_100131AB8(uint64_t a1, void *a2)
{
  *(v3 + 112) = a2;
  *(v3 + 120) = v2;
  *(v3 + 104) = a1;
  v5 = *(*(sub_1001D0980() - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v6 = a2[6];
  v7 = *(v6 + 8);
  *(v3 + 136) = v7;
  *(v3 + 144) = *(*(v7 + 24) + 16);
  v8 = a2[3];
  *(v3 + 152) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v3 + 160) = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v11 = sub_1001D1F00();
  *(v3 + 176) = v11;
  v12 = *(v11 - 8);
  *(v3 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v14 = *(v8 - 8);
  *(v3 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v16 = a2[4];
  *(v3 + 240) = v16;
  v17 = a2[7];
  v18 = a2[8];
  *(v3 + 248) = v18;
  *&v19 = a2[2];
  *(&v19 + 1) = v8;
  *&v20 = v16;
  *(&v20 + 1) = a2[5];
  *(v3 + 32) = v20;
  *(v3 + 16) = v19;
  *(v3 + 48) = v6;
  *(v3 + 56) = v17;
  *(v3 + 64) = v18;
  v21 = type metadata accessor for LengthPrefixDeframer.AsyncIterator.State();
  *(v3 + 256) = v21;
  v22 = *(v21 - 8);
  *(v3 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_100131D30, 0, 0);
}

uint64_t sub_100131D30()
{
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 112) + 80);
  *(v0 + 320) = v2;
  v3 = *(v1 + 16);
  *(v0 + 280) = v3;
  v3(*(v0 + 272), *(v0 + 120) + v2, *(v0 + 256));
  while (1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 152);
    v8 = *(v0 + 120);
    sub_1001337B8(*(v0 + 112), v5);
    if ((*(v6 + 48))(v5, 1, v7) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v41 = swift_task_alloc();
      *(v0 + 288) = v41;
      *v41 = v0;
      v42 = sub_100132570;
      goto LABEL_38;
    }

    v9 = *(v0 + 320);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    v12 = *(v0 + 232);
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v15 = *(*(v0 + 200) + 32);
    v15(v12, *(v0 + 192), v13);
    (*(v11 + 8))(v14 + v9, v10);
    v15(v14 + v9, v12, v13);
    swift_storeEnumTagMultiPayload();
    v16 = *(v0 + 264);
    (*(v0 + 280))(*(v0 + 272), *(v0 + 120) + *(v0 + 320), *(v0 + 256));
  }

  if (EnumCaseMultiPayload)
  {
    v39 = *(v0 + 272);
    if (*v39)
    {
      v40 = *v39;
      swift_willThrow();
      v108 = *(v0 + 272);
      v110 = *(v0 + 224);
      v109 = *(v0 + 232);
      v112 = *(v0 + 208);
      v111 = *(v0 + 216);
      v113 = *(v0 + 192);
      v114 = *(v0 + 168);
      v115 = *(v0 + 128);

      v116 = *(v0 + 8);
LABEL_43:

      return v116();
    }

    v127 = EnumCaseMultiPayload;
LABEL_42:
    v118 = *(v0 + 232);
    v120 = *(v0 + 216);
    v119 = *(v0 + 224);
    v121 = *(v0 + 208);
    v122 = *(v0 + 192);
    v123 = *(v0 + 168);
    v124 = *(v0 + 128);
    (*(*(*(v0 + 240) - 8) + 56))(*(v0 + 104), v127, 1);

    v116 = *(v0 + 8);
    goto LABEL_43;
  }

  v127 = 0;
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 200);
  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  (*(v19 + 32))(v17, *(v0 + 272), v20);
  (*(v19 + 16))(v18, v17, v20);
  if (sub_1001D1F80())
  {
    v22 = *(v0 + 216);
    v23 = *(v0 + 152);
    v24 = *(v0 + 136);
    if (sub_1001D1F70() > 64)
    {
      v25 = *(v0 + 152);
      v26 = *(v0 + 136);
      *(v0 + 96) = 0x8000000000000000;
      v27 = sub_1001D1F80();
      v28 = *(v0 + 216);
      v29 = *(v0 + 152);
      v30 = *(v0 + 136);
      if (v27)
      {
        v31 = *(v0 + 216);
        v32 = *(v0 + 152);
        v33 = *(v0 + 136);
        v34 = sub_1001D1F70();
        v35 = *(v0 + 216);
        if (v34 < 64)
        {
          v36 = *(v0 + 152);
          v37 = *(v0 + 136);
          v38 = *(v0 + 216);
LABEL_25:
          sub_1001D1F60();
          goto LABEL_26;
        }

        v55 = *(v0 + 200);
        v56 = *(v0 + 208);
        v57 = *(v0 + 152);
        v58 = *(v0 + 136);
        sub_1001354C4();
        sub_1001D1F50();
        v59 = *(*(v58 + 32) + 8);
        v60 = sub_1001D1760();
        result = (*(v55 + 8))(v56, v57);
        if ((v60 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v43 = *(v0 + 152);
      v44 = *(v0 + 136);
      v45 = sub_1001D1F80();
      v46 = sub_1001D1F70();
      if (v45)
      {
        v47 = *(v0 + 208);
        v48 = *(v0 + 216);
        v49 = *(v0 + 200);
        if (v46 > 64)
        {
          v50 = *(v0 + 152);
          v51 = *(v0 + 136);
          sub_1001354C4();
          sub_1001D1F50();
          v52 = *(*(v51 + 32) + 8);
          v53 = sub_1001D1760();
          result = (*(v49 + 8))(v47, v50);
          if ((v53 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_46;
        }

        v61 = *(v0 + 160);
        v62 = *(v0 + 168);
        v64 = *(v0 + 144);
        v63 = *(v0 + 152);
        v65 = *(v0 + 136);
        swift_getAssociatedConformanceWitness();
        sub_1001D24D0();
        sub_1001D2450();
        v66 = *(*(v65 + 32) + 8);
        LOBYTE(v61) = sub_1001D1760();
        result = (*(v49 + 8))(v47, v63);
        if (v61)
        {
          goto LABEL_46;
        }

LABEL_24:
        v67 = *(v0 + 216);
        v68 = *(v0 + 152);
        v69 = *(v0 + 136);
        goto LABEL_25;
      }

      if (v46 < 64)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_26:
  v70 = *(v0 + 216);
  v71 = *(v0 + 152);
  v72 = *(v0 + 136);
  if (sub_1001D1F70() <= 64)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v73 = *(v0 + 216);
    v74 = *(v0 + 152);
    v75 = *(v0 + 136);
    *(v0 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    v76 = sub_1001D1F80();
    v77 = sub_1001D1F70();
    if ((v76 & 1) == 0)
    {
      break;
    }

    if (v77 < 65)
    {
      goto LABEL_35;
    }

LABEL_29:
    v79 = *(v0 + 208);
    v78 = *(v0 + 216);
    v80 = *(v0 + 200);
    v81 = *(v0 + 152);
    v82 = *(v0 + 136);
    sub_1001354C4();
    sub_1001D1F50();
    v83 = *(*(v82 + 32) + 8);
    LOBYTE(v78) = sub_1001D1760();
    (*(v80 + 8))(v79, v81);
    if (v78)
    {
      __break(1u);
LABEL_31:
      v84 = *(v0 + 216);
      v85 = *(v0 + 152);
      v86 = *(v0 + 136);
      if (sub_1001D1F70() == 64)
      {
        v87 = *(v0 + 136);
        v88 = *(v0 + 152);
        if ((sub_1001D1F80() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_36;
  }

  if (v77 >= 64)
  {
    goto LABEL_29;
  }

LABEL_35:
  v89 = *(v0 + 216);
  v90 = *(v0 + 152);
  v91 = *(v0 + 136);
  sub_1001D1F60();
LABEL_36:
  v92 = *(v0 + 216);
  v93 = *(v0 + 200);
  v94 = *(v0 + 152);
  v95 = *(v0 + 136);
  v97 = *(v0 + 112);
  v96 = *(v0 + 120);
  v98 = sub_1001D1F60();
  v99 = *(v93 + 8);
  *(v0 + 296) = v99;
  *(v0 + 304) = (v93 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99(v92, v94);
  v100 = sub_100133F10(v98, v97);
  if (v101 >> 60 != 15)
  {
    v104 = *(v0 + 240);
    v105 = *(v0 + 128);
    v125 = *(v0 + 104);
    v126 = *(v0 + 248);
    v106 = v100;
    v107 = v101;
    (*(*(v0 + 264) + 8))(*(v0 + 120) + *(v0 + 320), *(v0 + 256));
    swift_storeEnumTagMultiPayload();
    *(v0 + 72) = v106;
    *(v0 + 80) = v107;
    sub_100012038(v106, v107);
    sub_1001D0970();
    sub_1001D0B10();
    v99(*(v0 + 224), *(v0 + 152));
    sub_10002683C(v106, v107);
    v117 = *(v0 + 272);
    goto LABEL_42;
  }

  v41 = swift_task_alloc();
  *(v0 + 312) = v41;
  *v41 = v0;
  v42 = sub_100132E8C;
LABEL_38:
  v41[1] = v42;
  v102 = *(v0 + 112);
  v103 = *(v0 + 120);

  return sub_100133954(v102);
}

uint64_t sub_100132570()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return _swift_task_switch(sub_10013266C, 0, 0);
}

uint64_t sub_10013266C()
{
  while (1)
  {
    v1 = *(v0 + 264) + 16;
    (*(v0 + 280))(*(v0 + 272), *(v0 + 120) + *(v0 + 320), *(v0 + 256));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v3 = *(v0 + 192);
    v4 = *(v0 + 200);
    v5 = *(v0 + 152);
    v6 = *(v0 + 120);
    sub_1001337B8(*(v0 + 112), v3);
    if ((*(v4 + 48))(v3, 1, v5) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v38 = swift_task_alloc();
      *(v0 + 288) = v38;
      *v38 = v0;
      v39 = sub_100132570;
      goto LABEL_37;
    }

    v7 = *(v0 + 320);
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);
    v10 = *(v0 + 232);
    v11 = *(v0 + 152);
    v12 = *(v0 + 120);
    v13 = *(*(v0 + 200) + 32);
    v13(v10, *(v0 + 192), v11);
    (*(v9 + 8))(v12 + v7, v8);
    v13(v12 + v7, v10, v11);
    swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    v36 = *(v0 + 272);
    if (*v36)
    {
      v37 = *v36;
      swift_willThrow();
      v105 = *(v0 + 272);
      v107 = *(v0 + 224);
      v106 = *(v0 + 232);
      v109 = *(v0 + 208);
      v108 = *(v0 + 216);
      v110 = *(v0 + 192);
      v111 = *(v0 + 168);
      v112 = *(v0 + 128);

      v113 = *(v0 + 8);
LABEL_42:

      return v113();
    }

    v124 = EnumCaseMultiPayload;
LABEL_41:
    v115 = *(v0 + 232);
    v117 = *(v0 + 216);
    v116 = *(v0 + 224);
    v118 = *(v0 + 208);
    v119 = *(v0 + 192);
    v120 = *(v0 + 168);
    v121 = *(v0 + 128);
    (*(*(*(v0 + 240) - 8) + 56))(*(v0 + 104), v124, 1);

    v113 = *(v0 + 8);
    goto LABEL_42;
  }

  v124 = 0;
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 200);
  v17 = *(v0 + 152);
  v18 = *(v0 + 136);
  (*(v16 + 32))(v14, *(v0 + 272), v17);
  (*(v16 + 16))(v15, v14, v17);
  if (sub_1001D1F80())
  {
    v19 = *(v0 + 216);
    v20 = *(v0 + 152);
    v21 = *(v0 + 136);
    if (sub_1001D1F70() > 64)
    {
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      *(v0 + 96) = 0x8000000000000000;
      v24 = sub_1001D1F80();
      v25 = *(v0 + 216);
      v26 = *(v0 + 152);
      v27 = *(v0 + 136);
      if (v24)
      {
        v28 = *(v0 + 216);
        v29 = *(v0 + 152);
        v30 = *(v0 + 136);
        v31 = sub_1001D1F70();
        v32 = *(v0 + 216);
        if (v31 < 64)
        {
          v33 = *(v0 + 152);
          v34 = *(v0 + 136);
          v35 = *(v0 + 216);
LABEL_24:
          sub_1001D1F60();
          goto LABEL_25;
        }

        v52 = *(v0 + 200);
        v53 = *(v0 + 208);
        v54 = *(v0 + 152);
        v55 = *(v0 + 136);
        sub_1001354C4();
        sub_1001D1F50();
        v56 = *(*(v55 + 32) + 8);
        v57 = sub_1001D1760();
        result = (*(v52 + 8))(v53, v54);
        if ((v57 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v40 = *(v0 + 152);
      v41 = *(v0 + 136);
      v42 = sub_1001D1F80();
      v43 = sub_1001D1F70();
      if (v42)
      {
        v44 = *(v0 + 208);
        v45 = *(v0 + 216);
        v46 = *(v0 + 200);
        if (v43 > 64)
        {
          v47 = *(v0 + 152);
          v48 = *(v0 + 136);
          sub_1001354C4();
          sub_1001D1F50();
          v49 = *(*(v48 + 32) + 8);
          v50 = sub_1001D1760();
          result = (*(v46 + 8))(v44, v47);
          if ((v50 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_45;
        }

        v58 = *(v0 + 160);
        v59 = *(v0 + 168);
        v61 = *(v0 + 144);
        v60 = *(v0 + 152);
        v62 = *(v0 + 136);
        swift_getAssociatedConformanceWitness();
        sub_1001D24D0();
        sub_1001D2450();
        v63 = *(*(v62 + 32) + 8);
        LOBYTE(v58) = sub_1001D1760();
        result = (*(v46 + 8))(v44, v60);
        if (v58)
        {
          goto LABEL_45;
        }

LABEL_23:
        v64 = *(v0 + 216);
        v65 = *(v0 + 152);
        v66 = *(v0 + 136);
        goto LABEL_24;
      }

      if (v43 < 64)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_25:
  v67 = *(v0 + 216);
  v68 = *(v0 + 152);
  v69 = *(v0 + 136);
  if (sub_1001D1F70() <= 64)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v70 = *(v0 + 216);
    v71 = *(v0 + 152);
    v72 = *(v0 + 136);
    *(v0 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    v73 = sub_1001D1F80();
    v74 = sub_1001D1F70();
    if ((v73 & 1) == 0)
    {
      break;
    }

    if (v74 < 65)
    {
      goto LABEL_34;
    }

LABEL_28:
    v76 = *(v0 + 208);
    v75 = *(v0 + 216);
    v77 = *(v0 + 200);
    v78 = *(v0 + 152);
    v79 = *(v0 + 136);
    sub_1001354C4();
    sub_1001D1F50();
    v80 = *(*(v79 + 32) + 8);
    LOBYTE(v75) = sub_1001D1760();
    (*(v77 + 8))(v76, v78);
    if (v75)
    {
      __break(1u);
LABEL_30:
      v81 = *(v0 + 216);
      v82 = *(v0 + 152);
      v83 = *(v0 + 136);
      if (sub_1001D1F70() == 64)
      {
        v84 = *(v0 + 136);
        v85 = *(v0 + 152);
        if ((sub_1001D1F80() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_35;
  }

  if (v74 >= 64)
  {
    goto LABEL_28;
  }

LABEL_34:
  v86 = *(v0 + 216);
  v87 = *(v0 + 152);
  v88 = *(v0 + 136);
  sub_1001D1F60();
LABEL_35:
  v89 = *(v0 + 216);
  v90 = *(v0 + 200);
  v91 = *(v0 + 152);
  v92 = *(v0 + 136);
  v94 = *(v0 + 112);
  v93 = *(v0 + 120);
  v95 = sub_1001D1F60();
  v96 = *(v90 + 8);
  *(v0 + 296) = v96;
  *(v0 + 304) = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v89, v91);
  v97 = sub_100133F10(v95, v94);
  if (v98 >> 60 != 15)
  {
    v101 = *(v0 + 240);
    v102 = *(v0 + 128);
    v122 = *(v0 + 104);
    v123 = *(v0 + 248);
    v103 = v97;
    v104 = v98;
    (*(*(v0 + 264) + 8))(*(v0 + 120) + *(v0 + 320), *(v0 + 256));
    swift_storeEnumTagMultiPayload();
    *(v0 + 72) = v103;
    *(v0 + 80) = v104;
    sub_100012038(v103, v104);
    sub_1001D0970();
    sub_1001D0B10();
    v96(*(v0 + 224), *(v0 + 152));
    sub_10002683C(v103, v104);
    v114 = *(v0 + 272);
    goto LABEL_41;
  }

  v38 = swift_task_alloc();
  *(v0 + 312) = v38;
  *v38 = v0;
  v39 = sub_100132E8C;
LABEL_37:
  v38[1] = v39;
  v99 = *(v0 + 112);
  v100 = *(v0 + 120);

  return sub_100133954(v99);
}

uint64_t sub_100132E8C()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_100132F88, 0, 0);
}

uint64_t sub_100132F88()
{
  v1 = *(v0 + 304);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 152));
  while (1)
  {
    v2 = *(v0 + 264) + 16;
    (*(v0 + 280))(*(v0 + 272), *(v0 + 120) + *(v0 + 320), *(v0 + 256));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v4 = *(v0 + 192);
    v5 = *(v0 + 200);
    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    sub_1001337B8(*(v0 + 112), v4);
    if ((*(v5 + 48))(v4, 1, v6) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v39 = swift_task_alloc();
      *(v0 + 288) = v39;
      *v39 = v0;
      v40 = sub_100132570;
      goto LABEL_38;
    }

    v8 = *(v0 + 320);
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);
    v11 = *(v0 + 232);
    v12 = *(v0 + 152);
    v13 = *(v0 + 120);
    v14 = *(*(v0 + 200) + 32);
    v14(v11, *(v0 + 192), v12);
    (*(v10 + 8))(v13 + v8, v9);
    v14(v13 + v8, v11, v12);
    swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    v37 = *(v0 + 272);
    if (*v37)
    {
      v38 = *v37;
      swift_willThrow();
      v106 = *(v0 + 272);
      v108 = *(v0 + 224);
      v107 = *(v0 + 232);
      v110 = *(v0 + 208);
      v109 = *(v0 + 216);
      v111 = *(v0 + 192);
      v112 = *(v0 + 168);
      v113 = *(v0 + 128);

      v114 = *(v0 + 8);
LABEL_43:

      return v114();
    }

    v125 = EnumCaseMultiPayload;
LABEL_42:
    v116 = *(v0 + 232);
    v118 = *(v0 + 216);
    v117 = *(v0 + 224);
    v119 = *(v0 + 208);
    v120 = *(v0 + 192);
    v121 = *(v0 + 168);
    v122 = *(v0 + 128);
    (*(*(*(v0 + 240) - 8) + 56))(*(v0 + 104), v125, 1);

    v114 = *(v0 + 8);
    goto LABEL_43;
  }

  v125 = 0;
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 152);
  v19 = *(v0 + 136);
  (*(v17 + 32))(v15, *(v0 + 272), v18);
  (*(v17 + 16))(v16, v15, v18);
  if (sub_1001D1F80())
  {
    v20 = *(v0 + 216);
    v21 = *(v0 + 152);
    v22 = *(v0 + 136);
    if (sub_1001D1F70() > 64)
    {
      v23 = *(v0 + 152);
      v24 = *(v0 + 136);
      *(v0 + 96) = 0x8000000000000000;
      v25 = sub_1001D1F80();
      v26 = *(v0 + 216);
      v27 = *(v0 + 152);
      v28 = *(v0 + 136);
      if (v25)
      {
        v29 = *(v0 + 216);
        v30 = *(v0 + 152);
        v31 = *(v0 + 136);
        v32 = sub_1001D1F70();
        v33 = *(v0 + 216);
        if (v32 < 64)
        {
          v34 = *(v0 + 152);
          v35 = *(v0 + 136);
          v36 = *(v0 + 216);
LABEL_25:
          sub_1001D1F60();
          goto LABEL_26;
        }

        v53 = *(v0 + 200);
        v54 = *(v0 + 208);
        v55 = *(v0 + 152);
        v56 = *(v0 + 136);
        sub_1001354C4();
        sub_1001D1F50();
        v57 = *(*(v56 + 32) + 8);
        v58 = sub_1001D1760();
        result = (*(v53 + 8))(v54, v55);
        if ((v58 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v41 = *(v0 + 152);
      v42 = *(v0 + 136);
      v43 = sub_1001D1F80();
      v44 = sub_1001D1F70();
      if (v43)
      {
        v45 = *(v0 + 208);
        v46 = *(v0 + 216);
        v47 = *(v0 + 200);
        if (v44 > 64)
        {
          v48 = *(v0 + 152);
          v49 = *(v0 + 136);
          sub_1001354C4();
          sub_1001D1F50();
          v50 = *(*(v49 + 32) + 8);
          v51 = sub_1001D1760();
          result = (*(v47 + 8))(v45, v48);
          if ((v51 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_46;
        }

        v59 = *(v0 + 160);
        v60 = *(v0 + 168);
        v62 = *(v0 + 144);
        v61 = *(v0 + 152);
        v63 = *(v0 + 136);
        swift_getAssociatedConformanceWitness();
        sub_1001D24D0();
        sub_1001D2450();
        v64 = *(*(v63 + 32) + 8);
        LOBYTE(v59) = sub_1001D1760();
        result = (*(v47 + 8))(v45, v61);
        if (v59)
        {
          goto LABEL_46;
        }

LABEL_24:
        v65 = *(v0 + 216);
        v66 = *(v0 + 152);
        v67 = *(v0 + 136);
        goto LABEL_25;
      }

      if (v44 < 64)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_26:
  v68 = *(v0 + 216);
  v69 = *(v0 + 152);
  v70 = *(v0 + 136);
  if (sub_1001D1F70() <= 64)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v71 = *(v0 + 216);
    v72 = *(v0 + 152);
    v73 = *(v0 + 136);
    *(v0 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    v74 = sub_1001D1F80();
    v75 = sub_1001D1F70();
    if ((v74 & 1) == 0)
    {
      break;
    }

    if (v75 < 65)
    {
      goto LABEL_35;
    }

LABEL_29:
    v77 = *(v0 + 208);
    v76 = *(v0 + 216);
    v78 = *(v0 + 200);
    v79 = *(v0 + 152);
    v80 = *(v0 + 136);
    sub_1001354C4();
    sub_1001D1F50();
    v81 = *(*(v80 + 32) + 8);
    LOBYTE(v76) = sub_1001D1760();
    (*(v78 + 8))(v77, v79);
    if (v76)
    {
      __break(1u);
LABEL_31:
      v82 = *(v0 + 216);
      v83 = *(v0 + 152);
      v84 = *(v0 + 136);
      if (sub_1001D1F70() == 64)
      {
        v85 = *(v0 + 136);
        v86 = *(v0 + 152);
        if ((sub_1001D1F80() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_36;
  }

  if (v75 >= 64)
  {
    goto LABEL_29;
  }

LABEL_35:
  v87 = *(v0 + 216);
  v88 = *(v0 + 152);
  v89 = *(v0 + 136);
  sub_1001D1F60();
LABEL_36:
  v90 = *(v0 + 216);
  v91 = *(v0 + 200);
  v92 = *(v0 + 152);
  v93 = *(v0 + 136);
  v95 = *(v0 + 112);
  v94 = *(v0 + 120);
  v96 = sub_1001D1F60();
  v97 = *(v91 + 8);
  *(v0 + 296) = v97;
  *(v0 + 304) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v97(v90, v92);
  v98 = sub_100133F10(v96, v95);
  if (v99 >> 60 != 15)
  {
    v102 = *(v0 + 240);
    v103 = *(v0 + 128);
    v123 = *(v0 + 104);
    v124 = *(v0 + 248);
    v104 = v98;
    v105 = v99;
    (*(*(v0 + 264) + 8))(*(v0 + 120) + *(v0 + 320), *(v0 + 256));
    swift_storeEnumTagMultiPayload();
    *(v0 + 72) = v104;
    *(v0 + 80) = v105;
    sub_100012038(v104, v105);
    sub_1001D0970();
    sub_1001D0B10();
    v97(*(v0 + 224), *(v0 + 152));
    sub_10002683C(v104, v105);
    v115 = *(v0 + 272);
    goto LABEL_42;
  }

  v39 = swift_task_alloc();
  *(v0 + 312) = v39;
  *v39 = v0;
  v40 = sub_100132E8C;
LABEL_38:
  v39[1] = v40;
  v100 = *(v0 + 112);
  v101 = *(v0 + 120);

  return sub_100133954(v100);
}