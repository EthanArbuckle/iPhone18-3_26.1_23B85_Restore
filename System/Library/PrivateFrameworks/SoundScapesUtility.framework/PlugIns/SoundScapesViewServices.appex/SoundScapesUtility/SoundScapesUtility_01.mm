uint64_t sub_10002067C()
{
  result = sub_10002A490("Selected", 8uLL, 1);
  qword_100039F28 = result;
  qword_100039F30 = v1;
  return result;
}

uint64_t *sub_1000206C0()
{
  if (qword_100039560 != -1)
  {
    swift_once();
  }

  return &qword_100039F28;
}

uint64_t sub_100020720()
{
  v0 = sub_1000206C0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_10002075C()
{
  result = sub_10002A490("Cancelled", 9uLL, 1);
  qword_100039F38 = result;
  qword_100039F40 = v1;
  return result;
}

uint64_t *sub_1000207A0()
{
  if (qword_100039568 != -1)
  {
    swift_once();
  }

  return &qword_100039F38;
}

uint64_t sub_100020800()
{
  v0 = sub_1000207A0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_10002083C()
{
  result = sub_10002A490("SoundScapesID", 0xDuLL, 1);
  qword_100039F48 = result;
  qword_100039F50 = v1;
  return result;
}

uint64_t *sub_100020880()
{
  if (qword_100039570 != -1)
  {
    swift_once();
  }

  return &qword_100039F48;
}

uint64_t sub_1000208E0()
{
  v0 = sub_100020880();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_10002091C()
{
  result = sub_10002A490("PreviewPlayed", 0xDuLL, 1);
  qword_100039F58 = result;
  qword_100039F60 = v1;
  return result;
}

uint64_t *sub_100020960()
{
  if (qword_100039578 != -1)
  {
    swift_once();
  }

  return &qword_100039F58;
}

uint64_t sub_1000209C0()
{
  v0 = sub_100020960();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1000209FC()
{
  result = sub_10002A490("LastPreviewSince", 0x10uLL, 1);
  qword_100039F68 = result;
  qword_100039F70 = v1;
  return result;
}

uint64_t *sub_100020A40()
{
  if (qword_100039580 != -1)
  {
    swift_once();
  }

  return &qword_100039F68;
}

uint64_t sub_100020AA0()
{
  v0 = sub_100020A40();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_100020B1C()
{
  v21 = 0;
  v22 = v0;
  sub_10000F56C(&qword_100039F78, &unk_10002DB50);
  sub_10002A9D0();
  sub_10001C6A0();
  v21 = sub_10002A3A0();
  v1 = sub_1000206C0();
  v14 = *v1;
  v15 = v1[1];

  v2 = *v0;
  v20[7] = sub_10002A5D0().super.super.isa;
  v20[5] = v14;
  v20[6] = v15;
  sub_10000F56C(&qword_100039D08, &qword_10002D8A0);
  sub_10002A3C0();
  v3 = sub_1000207A0();
  v16 = *v3;
  v17 = v3[1];

  v4 = v0[1];
  v20[4] = sub_10002A5D0().super.super.isa;
  v20[2] = v16;
  v20[3] = v17;
  sub_10002A3C0();
  v5 = sub_100020880();
  v18 = *v5;
  v19 = v5[1];

  v27[0] = *(v0 + 8);
  sub_100020F48(v27, v20);
  v27[1] = v27[0];
  if (*(&v27[0] + 1))
  {
    sub_10002A420();
  }

  sub_10002A3C0();
  v6 = sub_100020960();
  v12 = *v6;
  v13 = v6[1];

  v25 = *(v0 + 3);
  v26 = v0[32];
  v28 = v25;
  v29 = v26;
  if ((v26 & 1) == 0)
  {
    v30 = v28;
    sub_10002A640();
  }

  sub_10002A3C0();
  v7 = sub_100020A40();
  v10 = *v7;
  v11 = v7[1];

  v23 = *(v0 + 5);
  v24 = v0[48];
  v31 = v23;
  v32 = v24;
  if ((v24 & 1) == 0)
  {
    v33 = v31;
    sub_10002A610();
  }

  sub_10002A3C0();
  v9 = v21;

  sub_10000FA4C(&v21);
  return v9;
}

void *sub_100020F48(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_100021038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100021168(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 49);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 48) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_10002134C()
{
  v5 = 0;
  v6 = 0;
  type metadata accessor for SoundScapesDataSource();
  sub_1000203A8();
  v4 = sub_10002A000();
  v3 = v0;
  _objc_retain(v4);
  v5 = v4;
  v6 = v3;
  sub_100021414();
  v2 = [swift_getObjCClassFromMetadata() appearance];
  [v2 setBounces:0];
  _objc_release(v2);
  sub_100010068(&v5);
  return v4;
}

unint64_t sub_100021414()
{
  v2 = qword_100039F80;
  if (!qword_100039F80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039F80);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1000214DC(void *a1)
{
  _objc_retain(a1);
  type metadata accessor for SoundScapesDataSource();
  sub_1000203A8();
  v3 = sub_100029FE0();
  _objc_release(a1);
  return v3;
}

uint64_t sub_10002155C(void *a1)
{
  _objc_retain(a1);
  type metadata accessor for SoundScapesDataSource();
  sub_1000203A8();
  v3 = sub_100029FF0();
  _objc_release(a1);
  return v3;
}

void sub_100021614(void *a1, uint64_t a2)
{
  _objc_retain(a1);
  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2;
  _objc_release(v3);
  _objc_release(a1);
}

uint64_t sub_100021674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = &v209;
  v109 = a3;
  v163 = a1;
  v162 = a2;
  v110 = &opaque type descriptor for <<opaque return type of View.progressViewStyle<A>(_:)>>;
  v111 = sub_100024324;
  v112 = &opaque type descriptor for <<opaque return type of View.listStyle<A>(_:)>>;
  v113 = sub_100024584;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v250 = 0;
  v248 = 0;
  v249 = 0;
  v246 = 0u;
  v247 = 0u;
  v234 = 0u;
  v235 = 0u;
  v222 = 0u;
  v223 = 0u;
  v209 = 0u;
  v210 = 0u;
  v194 = 0;
  v136 = 0;
  v114 = sub_10002A060();
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v114);
  v118 = &v36 - v117;
  v119 = sub_10000F56C(&qword_100039F88, &qword_10002DBE0);
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v119);
  v123 = &v36 - v122;
  v124 = sub_10000F56C(&qword_100039F90, &qword_10002DBE8);
  v125 = *(v124 - 8);
  v126 = v124 - 8;
  v127 = (v125[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v124);
  v128 = &v36 - v127;
  v129 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v36 - v127);
  v130 = &v36 - v129;
  v131 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v36 - v129);
  v132 = &v36 - v131;
  v253 = &v36 - v131;
  v133 = sub_10000F56C(&qword_100039F98, &qword_10002DBF0);
  v134 = (*(*(v133 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v135 = (&v36 - v134);
  v137 = sub_10000F56C(&qword_100039FA0, &qword_10002DBF8);
  v138 = (*(*(v137 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v136);
  v139 = &v36 - v138;
  v140 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v141 = (&v36 - v140);
  v252 = &v36 - v140;
  v142 = sub_100029FD0();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v142);
  v146 = &v36 - v145;
  v147 = sub_10000F56C(&qword_100039FA8, &qword_10002DC00);
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v147);
  v151 = &v36 - v150;
  v152 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v152);
  v156 = &v36 - v155;
  v157 = sub_10000F56C(&qword_100039FB8, &qword_10002DC10);
  v158 = (*(*(v157 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v157);
  v159 = &v36 - v158;
  v160 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v36 - v158);
  v161 = &v36 - v160;
  v251 = &v36 - v160;
  v164 = sub_10000F56C(&qword_100039FC0, &qword_10002DC18);
  v165 = (*(*(v164 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v163);
  v166 = &v36 - v165;
  v167 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v168 = &v36 - v167;
  v250 = &v36 - v167;
  v248 = v10;
  v249 = v11;
  v169 = sub_1000214DC(v10);
  v170 = sub_100007FEC();
  _objc_release(v169);
  if (v170)
  {
    if (v170 == 1)
    {
      sub_10002A490("LOADING", 7uLL, 1);
      sub_10002A020();
      sub_100029FB0();
      sub_1000233C0();
      v75 = sub_100023678();
      v76 = sub_100023700();
      sub_10002A100();
      (*(v115 + 8))(v118, v114);
      (*(v120 + 8))(v123, v119);
      v195 = v119;
      v196 = v114;
      v197 = v75;
      v198 = v76;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_100021478(v130, v124, v132);
      v78 = v125[1];
      v79 = v125 + 1;
      v78(v130, v124);
      v194 = v130;
      v72 = v125[2];
      v71 = v125 + 2;
      v72(v128, v132, v124);
      sub_100021478(v128, v124, v130);
      v78(v128, v124);
      v72(v128, v130, v124);
      v25 = sub_1000235F0();
      sub_1000233D8(v128, v137, v124, v25, OpaqueTypeConformance2, v135);
      v78(v128, v124);
      v73 = sub_10000F56C(&qword_100039FC8, &qword_10002DC20);
      v74 = sub_1000234D0();
      v26 = sub_100023780();
      sub_1000232C8(v135, v133, v73, v74, v26, v166);
      sub_1000240CC(v135);
      sub_1000238D4(v166, v168);
      v78(v130, v124);
      v78(v132, v124);
    }

    else if (v170 == 2)
    {
      v65 = 1;
      sub_10002A490("ERROR", 5uLL, 1);
      sub_10002A020();
      v218 = 0;
      v219 = 0;
      v220 = 0;
      v221 = v65 & 1;
      v214 = sub_10002A0C0();
      v215 = v27;
      v216 = v28;
      v217 = v29;
      v54 = v211;
      v211[0] = v214;
      v211[1] = v27;
      v212 = v28 & 1 & v65;
      v213 = v29;
      v70 = &v222;
      v62 = &type metadata for Text;
      v63 = &protocol witness table for Text;
      sub_100021478(v211, &type metadata for Text, &v222);
      sub_1000229D0(v54);
      v55 = v222;
      v56 = v223;
      v57 = *(&v223 + 1);
      sub_100022A5C(v222, *(&v222 + 1), v223 & 1);

      v58 = &v206;
      v206 = v55;
      v207 = v56 & 1 & v65;
      v208 = v57;
      v69 = &v209;
      sub_100021478(&v206, v62, &v209);
      sub_1000229D0(v58);
      v59 = v209;
      v60 = v210;
      v61 = *(&v210 + 1);
      sub_100022A5C(v209, *(&v209 + 1), v210 & 1);

      v64 = &v201;
      v201 = v59;
      v202 = v60 & 1 & v65;
      v203 = v61;
      sub_1000232C8(&v201, v62, v62, v63, v63, v204);
      sub_1000229D0(v64);
      v68 = v199;
      v199[0] = v204[0];
      v199[1] = v204[1];
      v199[2] = v204[2];
      v199[3] = v204[3];
      v200 = v205 & 1 & v65;
      v66 = sub_10000F56C(&qword_100039FC8, &qword_10002DC20);
      v67 = sub_1000234D0();
      v30 = sub_100023780();
      sub_1000233D8(v68, v133, v66, v67, v30, v166);
      sub_10002381C(v68);
      sub_1000238D4(v166, v168);
      sub_1000229D0(v69);
      sub_1000229D0(v70);
    }

    else
    {
      v12 = [objc_opt_self() separatorColor];
      v13 = sub_10002A1E0();
      v82 = v187;
      v187[0] = v13;
      v80 = &type metadata for Color;
      v81 = &protocol witness table for Color;
      sub_100022AA0();
      v83 = 1;
      sub_10002A180();
      sub_100011998(v82);
      v84 = v181;
      v181[0] = v187[1];
      v181[1] = v187[2];
      v182 = v188 & 1;
      v183 = v189;
      v184 = v190 & 1 & v83;
      v185 = v191;
      v186 = v192;
      v97 = sub_10000F56C(&qword_10003A018, &unk_10002DC40);
      v98 = sub_10002423C();
      v107 = v193;
      sub_100021478(v84, v97, v193);
      sub_100011998(v84);
      v85 = sub_1000214DC(v163);
      v86 = sub_100007698();
      _objc_release(v85);
      v91 = &v180;
      v180 = v86;
      _objc_retain(v163);
      v92 = 32;
      v93 = 7;
      v14 = swift_allocObject();
      v15 = v162;
      v87 = v14;
      *(v14 + 16) = v163;
      *(v14 + 24) = v15;
      v88 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
      v89 = sub_100024330();
      v90 = sub_1000243B8();
      sub_100024434();
      sub_100022E38(v91, v111, v87, v88, &unk_100036268, v89);
      sub_100022FFC();
      v94 = sub_1000244B4();
      v95 = &protocol witness table for PlainListStyle;
      sub_10002A1C0();
      (*(v143 + 8))(v146, v142);
      (*(v148 + 8))(v151, v147);
      _objc_retain(v163);
      v16 = swift_allocObject();
      v17 = v162;
      v18 = v147;
      v19 = v142;
      v20 = v94;
      v21 = v95;
      *(v16 + 16) = v163;
      *(v16 + 24) = v17;
      v96 = v16;
      v179[2] = v18;
      v179[3] = v19;
      v179[4] = v20;
      v179[5] = v21;
      v103 = 1;
      swift_getOpaqueTypeConformance2();
      sub_10002A120();
      sub_100024590(v113);
      (*(v153 + 8))(v156, v152);
      v99 = sub_1000245C4();
      sub_100021478(v159, v157, v161);
      sub_1000246DC(v159);
      v101 = v178;
      sub_1000247BC(v107, v178);
      v100 = v179;
      v179[0] = v101;
      sub_100024814(v161, v159);
      v179[1] = v159;
      v177[0] = v97;
      v177[1] = v157;
      v175 = v98;
      v176 = v99;
      sub_10002306C(v100, 2uLL, v177, v141);
      sub_1000246DC(v159);
      sub_100011998(v101);
      sub_1000249A0(v141, v139);
      v104 = sub_1000235F0();
      v102 = sub_100023678();
      v22 = sub_100023700();
      v171 = v119;
      v172 = v114;
      v173 = v102;
      v174 = v22;
      v23 = swift_getOpaqueTypeConformance2();
      sub_1000232C8(v139, v137, v124, v104, v23, v135);
      sub_100024BD0(v139);
      v105 = sub_10000F56C(&qword_100039FC8, &qword_10002DC20);
      v106 = sub_1000234D0();
      v24 = sub_100023780();
      sub_1000232C8(v135, v133, v105, v106, v24, v166);
      sub_1000240CC(v135);
      sub_1000238D4(v166, v168);
      sub_100024BD0(v141);
      sub_1000246DC(v161);
      sub_100011998(v107);
    }
  }

  else
  {
    *&v48[1] = 1;
    sub_10002A490("UNSUPPORTED", 0xBuLL, 1);
    sub_10002A020();
    v243 = 0;
    v244 = 0;
    v245 = *v48 & 0x100;
    v239 = sub_10002A0C0();
    v240 = v31;
    v241 = v32;
    v242 = v33;
    v37 = v236;
    v236[0] = v239;
    v236[1] = v31;
    v237 = v32 & 1 & v48[1];
    v238 = v33;
    v53 = &v246;
    v45 = &type metadata for Text;
    v46 = &protocol witness table for Text;
    sub_100021478(v236, &type metadata for Text, &v246);
    sub_1000229D0(v37);
    v38 = v246;
    v39 = v247;
    v40 = *(&v247 + 1);
    sub_100022A5C(v246, *(&v246 + 1), v247 & 1);

    v41 = &v231;
    v231 = v38;
    v232 = v39 & 1 & v48[1];
    v233 = v40;
    v52 = &v234;
    sub_100021478(&v231, v45, &v234);
    sub_1000229D0(v41);
    v42 = v234;
    v43 = v235;
    v44 = *(&v235 + 1);
    sub_100022A5C(v234, *(&v234 + 1), v235 & 1);

    v47 = &v226;
    v226 = v42;
    v227 = v43 & 1 & v48[1];
    v228 = v44;
    sub_1000233D8(&v226, v45, v45, v46, v46, v229);
    sub_1000229D0(v47);
    v51 = v224;
    v224[0] = v229[0];
    v224[1] = v229[1];
    v224[2] = v229[2];
    v224[3] = v229[3];
    v225 = v230 & 1 & v48[1];
    v49 = sub_10000F56C(&qword_100039FC8, &qword_10002DC20);
    v50 = sub_1000234D0();
    v34 = sub_100023780();
    sub_1000233D8(v51, v133, v49, v50, v34, v166);
    sub_10002381C(v51);
    sub_1000238D4(v166, v168);
    sub_1000229D0(v52);
    sub_1000229D0(v53);
  }

  sub_100023AD8(v168, v166);
  sub_100023E60();
  sub_100021478(v166, v164, v109);
  sub_100023F08(v166);
  return sub_100023F08(v168);
}

uint64_t sub_1000229D0(uint64_t a1)
{
  sub_100022A18(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_100022A18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100022A5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100022AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = 0;
  v24 = 0;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v26 = *a1;
  v11 = v26;
  v24 = a2;
  v25 = a3;

  _objc_retain(a2);

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v9 = sub_100022D8C();
  v10 = v4;
  sub_100022DC4();
  sub_100022DCC(v9, v10, v11, sub_100029260, v12, v27);
  memcpy(__dst, v27, sizeof(__dst));
  sub_1000243B8();
  sub_100021478(__dst, &unk_100036268, __b);
  sub_100025BFC(__dst);
  v13 = __b[0];
  v14 = __b[1];
  v15 = __b[2];
  v16 = __b[3];
  v17 = __b[4];
  v18 = __b[5];
  v19 = __b[6];
  _objc_retain(__b[0]);

  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v21[6] = v19;
  sub_100021478(v21, &unk_100036268, a4);
  sub_100025BFC(v21);
  return sub_100025BFC(__b);
}

uint64_t sub_100022CDC(void *a1)
{
  v2 = sub_1000214DC(a1);

  sub_100006560();
  _objc_release(v2);
  v4 = sub_1000214DC(a1);

  sub_100009010();
  _objc_release(v4);
  return sub_10001674C();
}

uint64_t sub_100022D8C()
{
  type metadata accessor for SoundScapesDataSource();
  sub_1000203A8();
  return sub_10002A000();
}

uint64_t sub_100022DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_100024F0C();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v7;
  a6[6] = result;
  return result;
}

uint64_t sub_100022E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_10002A2D0();
  swift_getWitnessTable();
  sub_10002A0B0();

  return (*(*(a4 - 8) + 8))(a1);
}

void sub_100023014(void *a1)
{
  v1 = sub_1000214DC(a1);
  sub_100009010();
  _objc_release(v1);
}

uint64_t *sub_10002306C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_10002A300();
  return v15;
}

uint64_t sub_1000232C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_10002A030();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_10002A040();
}

uint64_t sub_1000233D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_10002A030();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_10002A040();
}

unint64_t sub_1000234D0()
{
  v2 = qword_100039FD0;
  if (!qword_100039FD0)
  {
    sub_10000F9D8(&qword_100039F98, &qword_10002DBF0);
    sub_1000235F0();
    sub_10000F9D8(&qword_100039F88, &qword_10002DBE0);
    sub_10002A060();
    sub_100023678();
    sub_100023700();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000235F0()
{
  v2 = qword_100039FD8;
  if (!qword_100039FD8)
  {
    sub_10000F9D8(&qword_100039FA0, &qword_10002DBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039FD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100023678()
{
  v2 = qword_100039FE0;
  if (!qword_100039FE0)
  {
    sub_10000F9D8(&qword_100039F88, &qword_10002DBE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039FE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100023700()
{
  v2 = qword_100039FE8;
  if (!qword_100039FE8)
  {
    sub_10002A060();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039FE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100023780()
{
  v2 = qword_100039FF0;
  if (!qword_100039FF0)
  {
    sub_10000F9D8(&qword_100039FC8, &qword_10002DC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039FF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10002381C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  sub_100023860(*a1, *(a1 + 8), *(a1 + 16));
  return a1;
}

char *sub_1000238D4(char *a1, char *a2)
{
  v13 = sub_10000F56C(&qword_100039FF8, &qword_10002DC28);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v13 - 8) + 64));
  }

  else
  {
    sub_10000F56C(&qword_10003A000, &qword_10002DC30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_10000F56C(&qword_100039F90, &qword_10002DBE8);
      (*(*(v7 - 8) + 32))(a2, a1);
    }

    else
    {
      memcpy(a2, a1, 0x38uLL);
      v2 = sub_10000F56C(&qword_10003A008, &qword_10002DC38);
      v9 = &a2[*(v2 + 48)];
      v10 = &a1[*(v2 + 48)];
      v3 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
      (*(*(v3 - 8) + 32))(v9, v10);
      v4 = sub_10000F56C(&qword_100039FB8, &qword_10002DC10);
      v5 = &v9[*(v4 + 36)];
      v6 = &v10[*(v4 + 36)];
      *v5 = *v6;
      *(v5 + 1) = *(v6 + 1);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_100023AD8(uint64_t a1, uint64_t a2)
{
  sub_10000F56C(&qword_100039FF8, &qword_10002DC28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    sub_100023DEC(*a1, v8, v9);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11 & 1;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10000F56C(&qword_10003A000, &qword_10002DC30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_10000F56C(&qword_100039F90, &qword_10002DBE8);
      (*(*(v5 - 8) + 16))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v16 = *a1;

      *a2 = v16;
      memcpy((a2 + 8), (a1 + 8), 0x30uLL);
      v2 = sub_10000F56C(&qword_10003A008, &qword_10002DC38);
      v17 = a2 + *(v2 + 48);
      v18 = a1 + *(v2 + 48);
      v3 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
      (*(*(v3 - 8) + 16))(v17, v18);
      v4 = sub_10000F56C(&qword_100039FB8, &qword_10002DC10);
      v19 = (v17 + *(v4 + 36));
      v20 = (v18 + *(v4 + 36));
      if (*v20)
      {
        v14 = *v20;
        v15 = v20[1];

        *v19 = v14;
        v19[1] = v15;
      }

      else
      {
        *v19 = *v20;
      }

      if (v20[2])
      {
        v12 = v20[2];
        v13 = v20[3];

        v19[2] = v12;
        v19[3] = v13;
      }

      else
      {
        *(v19 + 1) = *(v20 + 1);
      }

      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_100023E60()
{
  v2 = qword_10003A010;
  if (!qword_10003A010)
  {
    sub_10000F9D8(&qword_100039FC0, &qword_10002DC18);
    sub_1000234D0();
    sub_100023780();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100023F08(uint64_t a1)
{
  sub_10000F56C(&qword_100039FF8, &qword_10002DC28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    sub_100023860(*a1, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    sub_10000F56C(&qword_10003A000, &qword_10002DC30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_10000F56C(&qword_100039F90, &qword_10002DBE8);
      (*(*(v5 - 8) + 8))(a1);
    }

    else
    {
      v1 = *a1;

      v9 = a1 + *(sub_10000F56C(&qword_10003A008, &qword_10002DC38) + 48);
      v2 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
      (*(*(v2 - 8) + 8))(v9);
      v10 = (v9 + *(sub_10000F56C(&qword_100039FB8, &qword_10002DC10) + 36));
      if (*v10)
      {
        v3 = v10[1];
      }

      if (v10[2])
      {
        v4 = v10[3];
      }
    }
  }

  return a1;
}

uint64_t *sub_1000240CC(uint64_t *a1)
{
  sub_10000F56C(&qword_10003A000, &qword_10002DC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10000F56C(&qword_100039F90, &qword_10002DBE8);
    (*(*(v5 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;

    v7 = a1 + *(sub_10000F56C(&qword_10003A008, &qword_10002DC38) + 48);
    v2 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
    (*(*(v2 - 8) + 8))(v7);
    v8 = &v7[*(sub_10000F56C(&qword_100039FB8, &qword_10002DC10) + 36)];
    if (*v8)
    {
      v3 = *(v8 + 1);
    }

    if (*(v8 + 2))
    {
      v4 = *(v8 + 3);
    }
  }

  return a1;
}

unint64_t sub_10002423C()
{
  v2 = qword_10003A020;
  if (!qword_10003A020)
  {
    sub_10000F9D8(&qword_10003A018, &unk_10002DC40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100024330()
{
  v2 = qword_10003A028;
  if (!qword_10003A028)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000243B8()
{
  v2 = qword_10003A030;
  if (!qword_10003A030)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100024434()
{
  v2 = qword_10003A038;
  if (!qword_10003A038)
  {
    type metadata accessor for SoundScapesOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000244B4()
{
  v2 = qword_10003A040;
  if (!qword_10003A040)
  {
    sub_10000F9D8(&qword_100039FA8, &qword_10002DC00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100024590(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000245C4()
{
  v2 = qword_10003A048;
  if (!qword_10003A048)
  {
    sub_10000F9D8(&qword_100039FB8, &qword_10002DC10);
    sub_10000F9D8(&qword_100039FA8, &qword_10002DC00);
    sub_100029FD0();
    sub_1000244B4();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000246DC(uint64_t a1)
{
  v1 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(sub_10000F56C(&qword_100039FB8, &qword_10002DC10) + 36);
  if (*(a1 + v6))
  {
    v2 = *(a1 + v6 + 8);
  }

  if (*(a1 + v6 + 16))
  {
    v3 = *(a1 + v6 + 24);
  }

  return a1;
}

void *sub_1000247BC(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  memcpy(a2 + 1, a1 + 1, 0x30uLL);
  return a2;
}

uint64_t sub_100024814(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(sub_10000F56C(&qword_100039FB8, &qword_10002DC10) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

char *sub_1000249A0(uint64_t *a1, char *a2)
{
  v12 = *a1;

  *a2 = v12;
  memcpy(a2 + 8, a1 + 1, 0x30uLL);
  v14 = *(sub_10000F56C(&qword_10003A008, &qword_10002DC38) + 48);
  v2 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
  (*(*(v2 - 8) + 16))(&a2[v14]);
  v16 = *(sub_10000F56C(&qword_100039FB8, &qword_10002DC10) + 36);
  if (*(a1 + v14 + v16))
  {
    v3 = (a1 + v14 + v16);
    v10 = *v3;
    v11 = v3[1];

    v4 = &a2[v14 + v16];
    *v4 = v10;
    *(v4 + 1) = v11;
  }

  else
  {
    *&a2[v14 + v16] = *(a1 + v14 + v16);
  }

  v8 = &a2[v14 + v16];
  v9 = a1 + v14 + v16;
  if (*(v9 + 2))
  {
    v6 = *(v9 + 2);
    v7 = *(a1 + v14 + v16 + 24);

    *(v8 + 2) = v6;
    *&a2[v14 + 24 + v16] = v7;
  }

  else
  {
    *(v8 + 1) = *(v9 + 1);
  }

  return a2;
}

uint64_t *sub_100024BD0(uint64_t *a1)
{
  v1 = *a1;

  v6 = *(sub_10000F56C(&qword_10003A008, &qword_10002DC38) + 48);
  v2 = sub_10000F56C(&qword_100039FB0, &qword_10002DC08);
  (*(*(v2 - 8) + 8))();
  v8 = *(sub_10000F56C(&qword_100039FB8, &qword_10002DC10) + 36);
  if (*(a1 + v6 + v8))
  {
    v3 = *(a1 + v6 + v8 + 8);
  }

  if (*(a1 + v6 + v8 + 16))
  {
    v4 = *(a1 + v6 + v8 + 24);
  }

  return a1;
}

uint64_t sub_100024D60()
{
  v3 = *v0;
  v2 = *(v0 + 8);
  _objc_retain(*v0);
  type metadata accessor for SoundScapesDataSource();
  sub_1000203A8();
  v4 = sub_100029FE0();
  _objc_release(v3);
  return v4;
}

uint64_t sub_100024DE4()
{
  v3 = *v0;
  v2 = *(v0 + 8);
  _objc_retain(*v0);
  type metadata accessor for SoundScapesDataSource();
  sub_1000203A8();
  v4 = sub_100029FF0();
  _objc_release(v3);
  return v4;
}

id sub_100024E68()
{
  v3 = *v0;
  v2 = *(v0 + 8);
  _objc_retain(*v0);
  return v3;
}

uint64_t sub_100024EA8()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100024ED4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v2;
}

double sub_100024F50()
{
  v4 = v0;
  v5 = *(v0 + 40);
  sub_100024FD4(&v5, &v3);
  sub_10000F56C(&qword_10003A050, &unk_10002DC50);
  sub_10002A260();
  sub_100025014(&v5);
  return v2;
}

void *sub_100024FD4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_100025014(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_100025040(double a1)
{
  v7 = a1;
  v6 = v1;
  v8 = *(v1 + 40);
  sub_100024FD4(&v8, &v5);
  sub_100024FD4(&v8, &v4);
  v3 = v8;
  sub_10000F56C(&qword_10003A050, &unk_10002DC50);
  sub_10002A270();
  sub_100025014(&v3);
  return sub_100025014(&v8);
}

uint64_t sub_1000250F0()
{
  v4 = v0;
  v5 = *(v0 + 40);
  sub_100024FD4(&v5, &v3);
  sub_10000F56C(&qword_10003A050, &unk_10002DC50);
  sub_10002A280();
  sub_100025014(&v5);
  return v2;
}

double sub_10002518C()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v3;
}

uint64_t sub_1000251C4(uint64_t a1, double a2)
{

  v3 = *(v2 + 48);
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
}

uint64_t sub_10002520C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v24 = sub_1000257FC;
  v21 = sub_100025AC8;
  v30 = sub_100026D84;
  v51 = 0;
  __n = 56;
  memset(&v50[7], 0, 0x38uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v11 = __dst[0];
  v12 = __dst[1];
  v17 = __dst[2];
  v18 = __dst[3];
  v19 = __dst[4];
  v13 = __dst[5];
  v14 = __dst[6];
  v36 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v9 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v35 = &v8 - v9;
  v40 = sub_10000F56C(&qword_10003A058, &qword_10002DC60);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v10 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v8 - v10;
  v42 = sub_10000F56C(&qword_10003A060, &qword_10002DC68);
  v16 = *(*(v42 - 8) + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v44 = &v8 - v15;
  v2 = __chkstk_darwin(&v8 - v15);
  v45 = &v8 - v3;
  v51 = &v8 - v3;
  v50[7] = v4;
  v50[8] = v5;
  v50[9] = v17;
  v50[10] = v18;
  v50[11] = v19;
  *&v50[12] = v2;
  v50[13] = v6;
  sub_1000256E4(v1, v50);
  v26 = 72;
  v27 = 7;
  v20 = swift_allocObject();
  memcpy((v20 + 16), v1, __n);
  sub_1000256E4(v1, v49);
  v22 = &v46;
  v47 = v1;
  v23 = sub_10000F56C(&qword_10003A068, &qword_10002DC70);
  sub_100025AD0();
  sub_10002A290();
  sub_100025BFC(v1);
  v25 = sub_100024D60();
  sub_100005D74();
  _objc_release(v25);
  sub_1000256E4(v28, v48);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v28, __n);
  v31 = sub_100026D8C();
  sub_100026E14();
  sub_10002A1D0();

  (*(v33 + 8))(v35, v36);
  (*(v37 + 8))(v39, v40);
  v43 = sub_100026E9C();
  sub_100021478(v44, v42, v45);
  sub_100026F24(v44);
  sub_100027010(v45, v44);
  sub_100021478(v44, v42, v41);
  sub_100026F24(v44);
  return sub_100026F24(v45);
}

uint64_t sub_100025688(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);

  v3(v1);
}

void *sub_1000256E4(uint64_t a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);
  *a2 = v3;
  a2[1] = *(a1 + 8);
  v4 = *(a1 + 16);

  a2[2] = v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);

  a2[3] = v6;
  a2[4] = v7;
  a2[5] = *(a1 + 40);
  v9 = *(a1 + 48);

  result = a2;
  a2[6] = v9;
  return result;
}

uint64_t sub_10002579C()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_100025804(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v5 = v2;
  __src = v1;
  memset(&v14[52], 0, 0x38uLL);
  memcpy(__dst, __src, sizeof(__dst));
  v14[52] = __dst[0];
  v14[53] = __dst[1];
  v14[54] = __dst[2];
  v14[55] = __dst[3];
  v14[56] = __dst[4];
  v14[57] = __dst[5];
  v14[58] = __dst[6];
  sub_1000256E4(__src, v11);
  sub_10000F56C(&qword_10003A0A0, &qword_10002DE28);
  sub_1000278D4();
  sub_100026B5C();
  sub_10002A2A0();
  sub_100025BFC(__src);
  memcpy(v16, v12, sizeof(v16));
  memcpy(v10, v16, sizeof(v10));
  sub_10002A2E0();
  sub_10000F56C(&qword_10003A080, &qword_10002DC78);
  sub_100025B74();
  sub_10002A190();
  sub_10002795C(v10);
  memcpy(v17, v13, sizeof(v17));
  memcpy(v9, v17, sizeof(v9));
  v6 = sub_10000F56C(&qword_10003A068, &qword_10002DC70);
  sub_100025AD0();
  sub_100021478(v9, v6, v14);
  sub_10002795C(v9);
  memcpy(v18, v14, sizeof(v18));
  sub_100027A38(v18, v8);
  memcpy(v7, v18, sizeof(v7));
  sub_100021478(v7, v6, v5);
  sub_10002795C(v7);
  return sub_10002795C(v14);
}

unint64_t sub_100025AD0()
{
  v2 = qword_10003A070;
  if (!qword_10003A070)
  {
    sub_10000F9D8(&qword_10003A068, &qword_10002DC70);
    sub_100025B74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025B74()
{
  v2 = qword_10003A078;
  if (!qword_10003A078)
  {
    sub_10000F9D8(&qword_10003A080, &qword_10002DC78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100025BFC(uint64_t a1)
{
  _objc_release(*a1);
  v1 = *(a1 + 16);

  v2 = *(a1 + 32);

  v3 = *(a1 + 48);

  return a1;
}

uint64_t *sub_100025C54(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v132 = v2;
  v135 = v1;
  v224 = 0;
  v173 = 0;
  v174 = 0;
  v3 = sub_10000F56C(&qword_10003A0B0, &qword_10002DE30);
  v133 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v134 = &v17 - v133;
  v136 = sub_10002A230();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v135);
  v140 = &v17 - v139;
  v224 = v4;
  v141 = *(v4 + 16);

  v142 = sub_100014EAC();

  v214 = v142;
  if (v142)
  {
    v215 = v214;
  }

  else
  {
    sub_100017574();
    v215 = sub_100026A60();
    if (v214)
    {
      sub_100010068(&v214);
    }
  }

  v78 = sub_10002A210();
  v74 = sub_100026A90();
  v75 = v5;
  v76 = v6;
  v77 = v7;
  sub_100026AA4(v140);
  v79 = sub_10002A240();
  (*(v137 + 8))(v140, v136);

  v80 = &v207;
  v207 = v79;
  v87 = 0;
  sub_10002A110();
  sub_100011998(v80);
  v84 = v204;
  v204[0] = v216;
  v204[1] = v217;
  v128 = 1;
  v205 = v218 & 1;
  v206 = v219;
  v81 = sub_10002A2F0();
  v82 = v8;
  v83 = sub_10000F56C(&qword_10003A0B8, &qword_10002DE38);
  sub_100027CCC();
  v85 = &v220;
  v127 = 0;
  sub_10002A180();
  sub_100011998(v84);
  v86 = v208;
  v112 = 72;
  memcpy(v208, v85, sizeof(v208));
  v90 = v203;
  memcpy(v203, v208, sizeof(v203));
  v89 = sub_10002A070();
  v88 = sub_10000F56C(&qword_10003A0C8, &qword_10002DE40);
  sub_100027D6C();
  v91 = &v221;
  sub_10002A1A0();
  sub_100011998(v90);
  v92 = v209;
  v93 = 113;
  memcpy(v209, v91, 0x71uLL);
  v95 = v202;
  memcpy(v202, v209, 0x71uLL);
  v94 = sub_10000F56C(&qword_10003A0D8, &qword_10002DE48);
  sub_100027E10();
  v96 = &v222;
  sub_10002A140();
  sub_100011998(v95);
  v97 = v210;
  v98 = 128;
  memcpy(v210, v96, sizeof(v210));
  v101 = v201;
  memcpy(v201, v210, sizeof(v201));
  v99 = sub_10000F56C(&qword_10003A0E8, &qword_10002DE50);
  v100 = sub_100027EB4();
  sub_100021478(v101, v99, v223);
  sub_100011998(v101);
  v102 = *(v135 + 16);

  v103 = *(v102 + 32);
  v104 = *(v102 + 40);

  v105 = v191;
  v191[0] = v103;
  v191[1] = v104;
  sub_10001CB94();
  v187 = sub_10002A0D0();
  v188 = v9;
  v189 = v10;
  v190 = v11;
  v106 = v184;
  v184[0] = v187;
  v184[1] = v9;
  v185 = v10 & 1 & v128;
  v186 = v11;
  sub_10002A1B0();
  sub_1000229D0(v106);
  v109 = v178;
  v178[0] = v191[2];
  v178[1] = v191[3];
  v179 = v192 & 1 & v128;
  v180 = v193;
  v181 = v194;
  v182 = v195;
  v183 = v196 & 1 & v128;
  v108 = sub_10002A0A0();
  v107 = sub_10000F56C(&qword_10003A108, &qword_10002DE60);
  sub_100027FE4();
  v110 = &v197;
  sub_10002A170();

  sub_100028110(v109);
  v111 = v211;
  memcpy(v211, v110, v112);
  v115 = v177;
  memcpy(v177, v111, v112);
  v114 = sub_10002A200();
  v113 = sub_10000F56C(&qword_10003A128, &qword_10002DE70);
  sub_100028164();
  v116 = &v198;
  sub_10002A150();

  sub_100028294(v115);
  v117 = v212;
  v118 = 88;
  memcpy(v212, v116, sizeof(v212));
  v120 = v176;
  memcpy(v176, v212, sizeof(v176));
  v119 = sub_10000F56C(&qword_10003A148, &qword_10002DE80);
  sub_100028300();
  v121 = &v199;
  sub_10002A140();
  v12 = v135;
  sub_100028430(v120);
  v122 = v213;
  v123 = 96;
  memcpy(v213, v121, sizeof(v213));
  v126 = v175;
  memcpy(v175, v213, sizeof(v175));
  v124 = sub_10000F56C(&qword_10003A168, &qword_10002DE90);
  v125 = sub_1000284B4();
  sub_100021478(v126, v124, v200);
  sub_100028430(v126);
  v171 = sub_10002A2B0();
  v172 = v13 & 1 & v128;
  sub_100021478(&v171, &type metadata for Spacer, &v173);
  v131 = *(v12 + 16);

  v129 = sub_100024D60();
  v130 = sub_1000063D0();
  _objc_release(v129);

  v164 = v131;
  v165 = v130;
  if (v131)
  {
    sub_100012E74(&v164, &v145);
    if (v165)
    {
      v144 = v145;
      v143 = v165;
      type metadata accessor for SoundScapesOption();
      v72 = sub_10001560C(v144, v143);

      sub_100011998(&v164);
      v73 = v72;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v165)
  {
LABEL_15:
    sub_100027894(&v164);
    v73 = 0;
    goto LABEL_13;
  }

  sub_100011998(&v164);
  v73 = 1;
LABEL_13:
  v71 = v73;

  if (v71)
  {
    v38 = 1;
    sub_10002A490("checkmark", 9uLL, 1);
    v14 = sub_10002A220();
    v40 = v152;
    v152[0] = v14;
    v37 = 0;
    v15 = sub_10002A080();
    (*(*(v15 - 8) + 56))(v134, v38);
    v39 = sub_10002A090();
    sub_1000289D4(v134);
    sub_10002A170();

    sub_100011998(v40);
    v43 = v151;
    v151[0] = v152[1];
    v151[1] = v152[2];
    v151[2] = v152[3];
    v42 = sub_10002A1F0();
    v41 = sub_10000F56C(&qword_10003A190, &qword_10002DEA0);
    sub_100028604();
    sub_10002A150();

    sub_100028A7C(v43);
    v44 = v150;
    v150[0] = v152[4];
    v150[1] = v152[5];
    v150[2] = v152[6];
    v150[3] = v152[7];
    v150[4] = v152[8];
    v56 = sub_10000F56C(&qword_10003A178, &qword_10002DE98);
    v57 = sub_10002855C();
    v60 = v153;
    sub_100021478(v44, v56, v153);
    sub_100028AC0(v44);
    v45 = v153[0];
    v46 = v153[1];
    v47 = v153[2];
    v48 = v153[3];
    v49 = v153[4];

    v50 = v148;
    v148[0] = v45;
    v148[1] = v46;
    v148[2] = v47;
    v148[3] = v48;
    v148[4] = v49;
    v59 = v149;
    sub_100021478(v148, v56, v149);
    sub_100028AC0(v50);
    v51 = v149[0];
    v52 = v149[1];
    v53 = v149[2];
    v54 = v149[3];
    v55 = v149[4];

    v58 = v146;
    v146[0] = v51;
    v146[1] = v52;
    v146[2] = v53;
    v146[3] = v54;
    v146[4] = v55;
    sub_100026B10(v146, v56, v147);
    sub_100028964(v58);
    v61 = v147[0];
    v62 = v147[1];
    v63 = v147[2];
    v64 = v147[3];
    v65 = v147[4];
    sub_1000286A8(v147[0]);
    v166 = v61;
    v167 = v62;
    v168 = v63;
    v169 = v64;
    v170 = v65;
    sub_100028AC0(v59);
    sub_100028AC0(v60);
    v66 = v61;
    v67 = v62;
    v68 = v63;
    v69 = v64;
    v70 = v65;
  }

  else
  {
    v31 = v162;
    memset(v162, 0, sizeof(v162));
    v30 = sub_10000F56C(&qword_10003A178, &qword_10002DE98);
    sub_10002855C();
    sub_100026B10(v31, v30, v163);
    v32 = v163[0];
    v33 = v163[1];
    v34 = v163[2];
    v35 = v163[3];
    v36 = v163[4];
    sub_1000286A8(v163[0]);
    v166 = v32;
    v167 = v33;
    v168 = v34;
    v169 = v35;
    v170 = v36;
    v66 = v32;
    v67 = v33;
    v68 = v34;
    v69 = v35;
    v70 = v36;
  }

  v21 = v70;
  v20 = v69;
  v19 = v68;
  v18 = v67;
  v17 = v66;
  v29 = v223;
  v27 = v160;
  sub_10002870C(v223, v160);
  v24 = v161;
  v161[0] = v27;
  v28 = v200;
  v26 = v159;
  sub_10002879C(v200, v159);
  v161[1] = v26;
  v157 = v173;
  v158 = v174;
  v161[2] = &v157;
  v25 = v156;
  v156[0] = v17;
  v156[1] = v18;
  v156[2] = v19;
  v156[3] = v20;
  v156[4] = v21;
  v161[3] = v156;
  v22 = v155;
  v155[0] = v99;
  v155[1] = v124;
  v155[2] = &type metadata for Spacer;
  v155[3] = sub_10000F56C(&qword_10003A198, qword_10002DEA8);
  v23 = v154;
  v154[0] = v100;
  v154[1] = v125;
  v154[2] = &protocol witness table for Spacer;
  v154[3] = sub_1000288CC();
  sub_10002306C(v24, 4uLL, v22, v132);
  sub_100028964(v25);
  sub_100028430(v26);
  sub_100011998(v27);
  sub_100028964(&v166);
  sub_100028430(v28);
  return sub_100011998(v29);
}

uint64_t sub_100026AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for Image.ResizingMode.stretch(_:);
  v1 = sub_10002A230();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_100026B80(double *a1, uint64_t a2)
{
  v16 = 0.0;
  v15 = 0;
  v5 = *a1;
  v16 = *a1;
  v15 = a2;
  v6 = sub_100024D60();
  v8 = sub_100008E80();
  _objc_release(v6);

  v9 = *(a2 + 16);

  v13 = v8;
  v14 = v9;
  if (v8)
  {
    sub_100012E74(&v13, &v12);
    if (v14)
    {
      v11 = v12;
      v10 = v14;
      type metadata accessor for SoundScapesOption();
      v3 = sub_10001560C(v11, v10);

      sub_100011998(&v13);
      v4 = v3;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v14)
  {
LABEL_9:
    sub_100027894(&v13);
    v4 = 0;
    goto LABEL_7;
  }

  sub_100011998(&v13);
  v4 = 1;
LABEL_7:

  if (v4)
  {
    return sub_100025040(v5);
  }

  else
  {
    return sub_100025040(0.0);
  }
}

uint64_t sub_100026D24()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

unint64_t sub_100026D8C()
{
  v2 = qword_10003A088;
  if (!qword_10003A088)
  {
    sub_10000F9D8(&qword_10003A058, &qword_10002DC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026E14()
{
  v2 = qword_10003A090;
  if (!qword_10003A090)
  {
    sub_10000F9D8(&qword_1000395C8, &qword_10002CD40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026E9C()
{
  v2 = qword_10003A098;
  if (!qword_10003A098)
  {
    sub_10000F9D8(&qword_10003A060, &qword_10002DC68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100026F24(uint64_t a1)
{
  v1 = sub_10000F56C(&qword_10003A058, &qword_10002DC60);
  (*(*(v1 - 8) + 8))(a1);
  v6 = sub_10000F56C(&qword_10003A060, &qword_10002DC68);
  v5 = *(v6 + 52);
  v2 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  (*(*(v2 - 8) + 8))(a1 + v5);
  v3 = *(a1 + *(v6 + 56) + 8);

  return a1;
}

uint64_t sub_100027010(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000F56C(&qword_10003A058, &qword_10002DC60);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = sub_10000F56C(&qword_10003A060, &qword_10002DC68);
  v6 = *(v7 + 52);
  v3 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  (*(*(v3 - 8) + 16))(a2 + v6, a1 + v6);
  v10 = *(v7 + 56);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);

  result = a2;
  v5 = (a2 + v10);
  *v5 = v11;
  v5[1] = v12;
  return result;
}

uint64_t sub_10002718C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000272DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000274F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002760C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t *sub_100027894(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

unint64_t sub_1000278D4()
{
  v2 = qword_10003A0A8;
  if (!qword_10003A0A8)
  {
    sub_10000F9D8(&qword_10003A0A0, &qword_10002DE28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10002795C(uint64_t a1)
{
  v1 = *(a1 + 24);

  sub_100022A18(*(a1 + 152), *(a1 + 160), *(a1 + 168) & 1);
  v2 = *(a1 + 176);

  v3 = *(a1 + 184);

  v4 = *(a1 + 208);

  v5 = *(a1 + 216);

  v6 = *(a1 + 224);

  v7 = *(a1 + 232);

  if (*(a1 + 264))
  {
    v8 = *(a1 + 264);

    v9 = *(a1 + 272);

    v10 = *(a1 + 280);

    v11 = *(a1 + 288);

    v12 = *(a1 + 296);
  }

  return a1;
}

uint64_t sub_100027A38(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = *(a1 + 24);

  *(a2 + 24) = v8;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x30uLL);
  memcpy((a2 + 96), (a1 + 96), 0x29uLL);
  *(a2 + 144) = *(a1 + 144);
  v9 = *(a1 + 152);
  v10 = *(a1 + 160);
  v11 = *(a1 + 168);
  sub_100022A5C(v9, v10, v11 & 1);
  *(a2 + 152) = v9;
  *(a2 + 160) = v10;
  *(a2 + 168) = v11 & 1;
  v12 = *(a1 + 176);

  *(a2 + 176) = v12;
  v13 = *(a1 + 184);

  *(a2 + 184) = v13;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 200) = *(a1 + 200);
  v14 = *(a1 + 208);

  *(a2 + 208) = v14;
  v15 = *(a1 + 216);

  *(a2 + 216) = v15;
  v16 = *(a1 + 224);

  *(a2 + 224) = v16;
  v18 = *(a1 + 232);

  *(a2 + 232) = v18;
  *(a2 + 240) = *(a1 + 240);
  *(a2 + 248) = *(a1 + 248);
  *(a2 + 256) = *(a1 + 256);
  if (*(a1 + 264))
  {
    v3 = *(a1 + 264);

    *(a2 + 264) = v3;
    v4 = *(a1 + 272);

    *(a2 + 272) = v4;
    v5 = *(a1 + 280);

    *(a2 + 280) = v5;
    v6 = *(a1 + 288);

    *(a2 + 288) = v6;
    v7 = *(a1 + 296);

    *(a2 + 296) = v7;
  }

  else
  {
    memcpy((a2 + 264), (a1 + 264), 0x28uLL);
  }

  memcpy((a2 + 304), (a1 + 304), 0x70uLL);
  return a2;
}

unint64_t sub_100027CCC()
{
  v2 = qword_10003A0C0;
  if (!qword_10003A0C0)
  {
    sub_10000F9D8(&qword_10003A0B8, &qword_10002DE38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100027D6C()
{
  v2 = qword_10003A0D0;
  if (!qword_10003A0D0)
  {
    sub_10000F9D8(&qword_10003A0C8, &qword_10002DE40);
    sub_100027CCC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100027E10()
{
  v2 = qword_10003A0E0;
  if (!qword_10003A0E0)
  {
    sub_10000F9D8(&qword_10003A0D8, &qword_10002DE48);
    sub_100027D6C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100027EB4()
{
  v2 = qword_10003A0F0;
  if (!qword_10003A0F0)
  {
    sub_10000F9D8(&qword_10003A0E8, &qword_10002DE50);
    sub_100027E10();
    sub_100027F5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100027F5C()
{
  v2 = qword_10003A0F8;
  if (!qword_10003A0F8)
  {
    sub_10000F9D8(&qword_10003A100, &qword_10002DE58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100027FE4()
{
  v2 = qword_10003A110;
  if (!qword_10003A110)
  {
    sub_10000F9D8(&qword_10003A108, &qword_10002DE60);
    sub_100028088();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100028088()
{
  v2 = qword_10003A118;
  if (!qword_10003A118)
  {
    sub_10000F9D8(&qword_10003A120, &qword_10002DE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100028110(uint64_t a1)
{
  sub_100022A18(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  return a1;
}

unint64_t sub_100028164()
{
  v2 = qword_10003A130;
  if (!qword_10003A130)
  {
    sub_10000F9D8(&qword_10003A128, &qword_10002DE70);
    sub_100027FE4();
    sub_10002820C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002820C()
{
  v2 = qword_10003A138;
  if (!qword_10003A138)
  {
    sub_10000F9D8(&qword_10003A140, &qword_10002DE78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100028294(uint64_t a1)
{
  sub_100022A18(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  v3 = *(a1 + 56);

  v4 = *(a1 + 64);

  return a1;
}

unint64_t sub_100028300()
{
  v2 = qword_10003A150;
  if (!qword_10003A150)
  {
    sub_10000F9D8(&qword_10003A148, &qword_10002DE80);
    sub_100028164();
    sub_1000283A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000283A8()
{
  v2 = qword_10003A158;
  if (!qword_10003A158)
  {
    sub_10000F9D8(&qword_10003A160, &qword_10002DE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A158);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100028430(uint64_t a1)
{
  sub_100022A18(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  v3 = *(a1 + 56);

  v4 = *(a1 + 64);

  v5 = *(a1 + 72);

  v6 = *(a1 + 80);

  return a1;
}

unint64_t sub_1000284B4()
{
  v2 = qword_10003A170;
  if (!qword_10003A170)
  {
    sub_10000F9D8(&qword_10003A168, &qword_10002DE90);
    sub_100028300();
    sub_100027F5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002855C()
{
  v2 = qword_10003A180;
  if (!qword_10003A180)
  {
    sub_10000F9D8(&qword_10003A178, &qword_10002DE98);
    sub_100028604();
    sub_1000283A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100028604()
{
  v2 = qword_10003A188;
  if (!qword_10003A188)
  {
    sub_10000F9D8(&qword_10003A190, &qword_10002DEA0);
    sub_10002820C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A188);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000286A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002870C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x30uLL);
  memcpy((a2 + 72), a1 + 9, 0x29uLL);
  result = a2;
  *(a2 + 120) = a1[15];
  return result;
}

uint64_t sub_10002879C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_100022A5C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  v8 = *(a1 + 56);

  *(a2 + 56) = v8;
  v9 = *(a1 + 64);

  *(a2 + 64) = v9;
  v10 = *(a1 + 72);

  *(a2 + 72) = v10;
  v12 = *(a1 + 80);

  result = a2;
  *(a2 + 80) = v12;
  *(a2 + 88) = *(a1 + 88);
  return result;
}

unint64_t sub_1000288CC()
{
  v2 = qword_10003A1A0;
  if (!qword_10003A1A0)
  {
    sub_10000F9D8(&qword_10003A198, qword_10002DEA8);
    sub_10002855C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10003A1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_100028964(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;

    v2 = a1[1];

    v3 = a1[2];

    v4 = a1[3];

    v5 = a1[4];
  }

  return a1;
}

uint64_t sub_1000289D4(uint64_t a1)
{
  v3 = sub_10002A080();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t *sub_100028A7C(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  return a1;
}

uint64_t *sub_100028AC0(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];

  return a1;
}

void *sub_100028B1C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_100028C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a9;
  v22[5] = a1;
  v27 = a2;
  v28 = a3;
  v31 = a4;
  v33 = a5;
  v34 = a6;
  v36 = a7;
  v29 = a8;
  v30 = sub_1000291E0;
  v37 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v54 = a4;
  v53 = a5;
  v26 = *(a4 - 8);
  v22[4] = a4 - 8;
  v22[0] = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v35 = v22 - v22[0];
  v10 = *(*(*(v9 + 8) + 8) + 8);
  v22[1] = 255;
  v22[3] = swift_getAssociatedTypeWitness();
  v22[2] = &protocol requirements base descriptor for Identifiable;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v31;
  v49 = AssociatedTypeWitness;
  v50 = v33;
  v51 = v34;
  v52 = AssociatedConformanceWitness;
  v44 = sub_10002A2D0();
  v38 = *(v44 - 8);
  v39 = v44 - 8;
  v24 = *(v38 + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v35);
  v40 = v22 - v23;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v12);
  v43 = v22 - v25;
  (*(v26 + 16))(v13);

  v14 = swift_allocObject();
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v33;
  v19 = v34;
  v20 = v36;
  v14[2] = v31;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[6] = v17;
  v14[7] = v15;
  v14[8] = v16;
  sub_10002A2C0();
  v47 = v36;
  WitnessTable = swift_getWitnessTable();
  sub_100021478(v40, v44, v43);
  v46 = *(v38 + 8);
  v45 = v38 + 8;
  v46(v40, v44);
  sub_100021478(v43, v44, v41);
  return (v46)(v43, v44);
}

uint64_t sub_10002903C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v15 = a5;
  v18 = a3;
  v16 = a4;
  v22 = a2;
  v21 = a3;
  v12 = *(a3 - 8);
  v13 = a3 - 8;
  v10 = *(v12 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(a1);
  v14 = &v9 - v9;
  v11 = v9;
  v6 = __chkstk_darwin(v5);
  v17 = &v9 - v11;
  v7(v6);
  sub_100021478(v14, v18, v17);
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v14, v18);
  sub_100021478(v17, v18, v15);
  return (v20)(v17, v18);
}

uint64_t sub_100029190()
{
  v4 = v0[2];
  v3 = v0[3];
  v1 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1000291E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  return sub_10002903C(a1, v2[2], v2[3], v2[5], a2);
}

uint64_t sub_100029210()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100029260()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_100022CDC(*(v0 + 16));
}

id sub_100029310()
{
  sub_100017E60();
  type metadata accessor for ResourceBundleClass();
  result = sub_100029358();
  qword_10003A1A8 = result;
  return result;
}

id sub_100029358()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_1000293B0()
{
  if (qword_100039588 != -1)
  {
    swift_once();
  }

  return &qword_10003A1A8;
}

void sub_10002944C()
{
  sub_100003CB8();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029564()
{
  sub_100003CB8();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000295A0()
{
  sub_100003CB8();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000295DC()
{
  sub_100003CB8();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029700()
{
  sub_100003CB8();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000298B4()
{
  sub_100003CB8();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029958(uint64_t *a1)
{
  v1 = *a1;
  sub_100003CC4();
  sub_100003CA0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000299CC(uint64_t *a1)
{
  v1 = *a1;
  sub_100003CC4();
  sub_100003CA0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100029AA8()
{
  sub_100003CAC();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100029B18()
{
  sub_100003CC4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Fetch asset catalog: %@ with error: %@", v2, 0x16u);
}

void sub_100029BB4()
{
  sub_100003CAC();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100029C94()
{
  sub_100003CC4();
  sub_100003CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}