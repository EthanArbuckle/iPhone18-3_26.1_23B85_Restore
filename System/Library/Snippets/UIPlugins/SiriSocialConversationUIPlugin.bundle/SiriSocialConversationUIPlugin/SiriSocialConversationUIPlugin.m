uint64_t sub_13C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v3 = (a1 + *(v8 + 20));
  v6 = (a2 + *(v8 + 20));
  *v6 = *v3;
  v7 = v3[1];

  result = a2;
  v6[1] = v7;
  *(a2 + *(v8 + 24)) = *(a1 + *(v8 + 24));
  return result;
}

uint64_t sub_14A4(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_1510()
{
  v1 = v0 + *(type metadata accessor for ButtonStackView() + 20);
  v4 = *v1;
  v3 = *(v1 + 8);
  *v1;
  sub_14FF0();
  sub_1610();
  v5 = sub_14DF0();

  return v5;
}

uint64_t type metadata accessor for ButtonStackView()
{
  v1 = qword_1C150;
  if (!qword_1C150)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1610()
{
  v2 = qword_1C0A0;
  if (!qword_1C0A0)
  {
    sub_14FF0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1690()
{
  v1 = v0 + *(type metadata accessor for ButtonStackView() + 20);
  v4 = *v1;
  v3 = *(v1 + 8);
  *v1;
  sub_14FF0();
  sub_1610();
  v5 = sub_14E00();

  return v5;
}

id sub_171C()
{
  v1 = v0 + *(type metadata accessor for ButtonStackView() + 20);
  v4 = *v1;
  v3 = *(v1 + 8);
  *v1;
  return v4;
}

void sub_176C(void *a1, uint64_t a2)
{
  a1;
  v3 = v2 + *(type metadata accessor for ButtonStackView() + 20);
  v4 = *v3;
  *v3 = a1;
  *(v3 + 8) = a2;
}

void sub_17DC(uint64_t a1)
{
  v36 = a1;
  v42 = 0;
  v41 = 0;
  v30 = 0;
  v31 = sub_14D50();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = v10 - v34;
  v42 = v2;
  v41 = v1;
  v37 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v3 = (v36 + v37[5]);
  v38 = *v3;
  v39 = v3[1];

  v40 = sub_15060();

  if (v40)
  {
    v6 = (v36 + v37[8]);
    v17 = *v6;
    v18 = v6[1];

    v19 = sub_15060();

    if ((v19 & 1) == 0)
    {
      v10[1] = 0;
      v7 = v29 + *(type metadata accessor for ButtonStackView() + 20);
      v11 = *v7;
      v10[2] = *(v7 + 8);
      v11;
      v10[3] = sub_14FF0();
      sub_1610();
      v16 = sub_14DF0();

      v8 = (v36 + v37[8]);
      v14 = *v8;
      v15 = v8[1];

      v12 = variable initialization expression of SiriSocialConversationDataModels.ButtonStackModel.text();
      v13 = v9;
      variable initialization expression of SiriSocialConversationDataModels.ButtonStackModel.text();
      sub_14D40();
      sub_14FD0();
      (*(v32 + 8))(v35, v31);
    }
  }

  else
  {
    v20 = 0;
    v4 = v29 + *(type metadata accessor for ButtonStackView() + 20);
    v23 = *v4;
    v21 = *(v4 + 8);
    v23;
    v22 = sub_14FF0();
    sub_1610();
    v28 = sub_14DF0();

    v5 = (v36 + v37[5]);
    v24 = *v5;
    v27 = v5[1];

    v26 = *(v36 + v37[6]);

    v25 = sub_15120();
    sub_14FE0();
  }
}

uint64_t sub_1BBC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v19 = sub_3824;
  v30 = 0;
  v29 = 0;
  v1 = type metadata accessor for ButtonStackView();
  v8 = *(v1 - 8);
  v13 = v8;
  v14 = *(v8 + 64);
  v9 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = &v7 - v9;
  v26 = sub_14A4(&qword_1C0A8, &qword_15988);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v11 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v10);
  v24 = &v7 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v25 = &v7 - v12;
  v30 = &v7 - v12;
  v29 = v4;
  sub_34EC(v4, v5);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_3754(v16, v17 + v15);
  v18 = sub_14A4(&qword_1C0B0, &qword_15990);
  sub_3898();
  sub_14F60();
  v23 = sub_3A04();
  sub_39A0(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_39A0(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_1EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v183 = a1;
  v114 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v115 = sub_5D04;
  v116 = sub_6A10;
  v117 = sub_6C1C;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v208 = 0;
  v200 = 0;
  v195 = 0;
  v194 = 0;
  v118 = sub_14A4(&qword_1C198, &qword_15B58);
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (v119[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v122 = &v43 - v121;
  v123 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v43 - v121);
  v124 = &v43 - v123;
  v125 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v43 - v123);
  v126 = &v43 - v125;
  v223 = &v43 - v125;
  v172 = 0;
  v127 = sub_14F80();
  v128 = *(v127 - 8);
  v129 = v127 - 8;
  v130 = (v128[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v172);
  v131 = &v43 - v130;
  v132 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v133 = &v43 - v132;
  v134 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v135 = &v43 - v134;
  v222 = &v43 - v134;
  v8 = type metadata accessor for ButtonStackView();
  v136 = *(v8 - 8);
  v137 = v136;
  v138 = *(v136 + 64);
  v139 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v140 = &v43 - v139;
  v141 = sub_14A4(&qword_1C1A0, &qword_15B60);
  v142 = *(v141 - 8);
  v143 = v141 - 8;
  v144 = (v142[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v172);
  v145 = &v43 - v144;
  v221 = &v43 - v144;
  v146 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v147 = &v43 - v146;
  v220 = &v43 - v146;
  v148 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v149 = (*(*(v148 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v148);
  v150 = &v43 - v149;
  v151 = sub_14A4(&qword_1C1A8, &qword_15B68);
  v152 = (*(*(v151 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v172);
  v153 = &v43 - v152;
  v154 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v155 = &v43 - v154;
  v219 = &v43 - v154;
  v156 = sub_14FA0();
  v157 = *(v156 - 8);
  v158 = v156 - 8;
  v159 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v156);
  v160 = &v43 - v159;
  v161 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v43 - v159);
  v162 = &v43 - v161;
  v163 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v43 - v161);
  v164 = &v43 - v163;
  v218 = &v43 - v163;
  v165 = sub_14A4(&qword_1C1B0, &qword_15B70);
  v166 = (*(*(v165 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v172);
  v167 = &v43 - v166;
  v168 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v15);
  v169 = &v43 - v168;
  v170 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v171 = &v43 - v170;
  v217 = &v43 - v170;
  v173 = sub_14FB0();
  v174 = *(v173 - 8);
  v175 = v173 - 8;
  v176 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = __chkstk_darwin(v172);
  v177 = &v43 - v176;
  v178 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = __chkstk_darwin(v19);
  v179 = &v43 - v178;
  v180 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v181 = &v43 - v180;
  v216 = &v43 - v180;
  v191 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v182 = (*(*(v191 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v191);
  v192 = &v43 - v182;
  v184 = sub_14A4(&qword_1C1B8, &unk_15B78);
  v185 = (*(*(v184 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = __chkstk_darwin(v183);
  v186 = &v43 - v185;
  v187 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = __chkstk_darwin(v23);
  v188 = &v43 - v187;
  v189 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = __chkstk_darwin(v25);
  v190 = &v43 - v189;
  v215 = &v43 - v189;
  v214 = v27;
  sub_13C8(v27, v28);
  v193 = *(v192 + *(v191 + 24));
  sub_4F88(v192);
  if (v193)
  {
    v109 = sub_15040("com.apple.siri", 0xEuLL, 1);
    v108 = v29;
    sub_3994();
    sub_14FC0();
    v110 = sub_5734();
    sub_39A0(v179, v173, v181);
    v111 = *(v174 + 8);
    v112 = v174 + 8;
    v111(v179, v173);
    v194 = v179;
    v107 = *(v174 + 16);
    v106 = v174 + 16;
    v107(v177, v181, v173);
    sub_39A0(v177, v173, v179);
    v111(v177, v173);
    v107(v186, v179, v173);
    (*(v174 + 56))(v186, 0, 1, v173);
    sub_3A8C(v186, v173, v188);
    sub_57B4(v186);
    sub_585C(v188, v190);
    v111(v179, v173);
    v111(v181, v173);
  }

  else
  {
    (*(v174 + 56))(v186, 1, 1, v173);
    sub_5734();
    sub_3A8C(v186, v173, v188);
    sub_57B4(v186);
    sub_585C(v188, v190);
  }

  sub_13C8(v183, v192);
  v30 = (v192 + *(v191 + 20));
  v103 = *v30;
  v104 = v30[1];

  sub_4F88(v192);
  v105 = sub_15060();

  if (v105)
  {
    (*(v157 + 56))(v167, 1, 1, v156);
    sub_5984();
    sub_3A8C(v167, v156, v169);
    sub_5A04(v167);
    sub_5AAC(v169, v171);
  }

  else
  {
    sub_13C8(v183, v192);
    v31 = (v192 + *(v191 + 20));
    v98 = *v31;
    v99 = v31[1];

    sub_4F88(v192);
    v198 = &type metadata for String;
    v199 = &protocol witness table for String;
    v196 = v98;
    v197 = v99;
    sub_14F90();
    v100 = sub_5984();
    sub_39A0(v162, v156, v164);
    v101 = *(v157 + 8);
    v102 = v157 + 8;
    v101(v162, v156);
    v195 = v162;
    v97 = *(v157 + 16);
    v96 = v157 + 16;
    v97(v160, v164, v156);
    sub_39A0(v160, v156, v162);
    v101(v160, v156);
    v97(v167, v162, v156);
    (*(v157 + 56))(v167, 0, 1, v156);
    sub_3A8C(v167, v156, v169);
    sub_5A04(v167);
    sub_5AAC(v169, v171);
    v101(v162, v156);
    v101(v164, v156);
  }

  sub_13C8(v183, v192);
  v94 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
  sub_4F88(v192);
  v95 = sub_15070();

  if (v95 == 2)
  {
    sub_13C8(v183, v192);
    v91 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
    sub_4F88(v192);
    sub_150A0();

    v92 = *(v150 + *(v148 + 28));
    sub_6828(v150);
    v93 = v92 ^ 1;
  }

  else
  {
    v93 = 0;
  }

  if (v93)
  {
    sub_13C8(v183, v192);
    v67 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
    sub_4F88(v192);
    sub_150A0();

    v32 = SiriSocialConversationDataModels.ButtonModel.label.getter();
    v33 = v192;
    v68 = v32;
    v69 = v34;
    sub_6828(v150);
    v72 = v204;
    v204[0] = v68;
    v204[1] = v69;
    sub_34EC(v183, v140);
    v76 = *(v137 + 80);
    v70 = (v76 + 16) & ~v76;
    v77 = 7;
    v71 = swift_allocObject();
    sub_3754(v140, v71 + v70);
    v81 = sub_6A74();
    v80 = &type metadata for String;
    sub_14F10();
    sub_13C8(v183, v33);
    v73 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
    sub_4F88(v192);
    sub_150A0();

    v74 = SiriSocialConversationDataModels.ButtonModel.label.getter();
    v75 = v35;
    sub_6828(v150);
    v82 = v203;
    v203[0] = v74;
    v203[1] = v75;
    sub_34EC(v183, v140);
    v78 = (v76 + 16) & ~v76;
    v79 = swift_allocObject();
    sub_3754(v140, v79 + v78);
    sub_14F10();
    v87 = v202;
    v202[3] = v141;
    v83 = sub_6C80();
    v202[4] = v83;
    v36 = sub_6D08(v87);
    v85 = v142[2];
    v84 = v142 + 2;
    v85(v36, v145, v141);
    v86 = v201;
    v201[3] = v141;
    v201[4] = v83;
    v37 = sub_6D08(v201);
    v85(v37, v147, v141);
    sub_14F70();
    v88 = sub_60A4();
    sub_39A0(v133, v127, v135);
    v89 = v128[1];
    v90 = v128 + 1;
    v89(v133, v127);
    v200 = v133;
    v64 = v128[2];
    v63 = v128 + 2;
    v64(v131, v135, v127);
    sub_39A0(v131, v127, v133);
    v89(v131, v127);
    v64(v131, v133, v127);
    v38 = sub_5F94();
    sub_3D54(v131, v127, v118, v88, v38, v153);
    v89(v131, v127);
    sub_6124(v153, v155);
    v89(v133, v127);
    v89(v135, v127);
    v66 = v142[1];
    v65 = v142 + 1;
    v66(v145, v141);
    v66(v147, v141);
  }

  else
  {
    sub_13C8(v183, v192);
    v49 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
    sub_4F88(v192);
    v59 = &v213;
    v213 = v49;
    KeyPath = swift_getKeyPath();
    sub_34EC(v183, v140);
    v50 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v54 = swift_allocObject();
    sub_3754(v140, v54 + v50);
    v55 = sub_14A4(&qword_1C1D0, &qword_15BA0);
    v56 = sub_14A4(&qword_1C1D8, &qword_15BA8);
    v57 = sub_5D84();
    v58 = sub_5E0C();
    v51 = sub_14F50();
    v52 = sub_5E8C();
    v39 = sub_5F14();
    v209 = v141;
    v210 = v51;
    v211 = v52;
    v212 = v39;
    swift_getOpaqueTypeConformance2();
    sub_14F20();
    v60 = sub_5F94();
    sub_39A0(v124, v118, v126);
    v61 = v119[1];
    v62 = v119 + 1;
    v61(v124, v118);
    v208 = v124;
    v48 = v119[2];
    v47 = v119 + 2;
    v48(v122, v126, v118);
    sub_39A0(v122, v118, v124);
    v61(v122, v118);
    v48(v122, v124, v118);
    v40 = sub_60A4();
    sub_44CC(v122, v127, v118, v40, v60, v153);
    v61(v122, v118);
    sub_6124(v153, v155);
    v61(v124, v118);
    v61(v126, v118);
  }

  sub_6228(v190, v188);
  v46 = v207;
  v207[0] = v188;
  sub_6350(v171, v169);
  v207[1] = v169;
  sub_6478(v155, v153);
  v207[2] = v153;
  v44 = v206;
  v206[0] = v184;
  v206[1] = v165;
  v206[2] = v151;
  v41 = sub_657C();
  v45 = v205;
  v205[0] = v41;
  v205[1] = sub_6614();
  v205[2] = sub_66AC();
  sub_45C4(v46, 3uLL, v44, v113);
  sub_6754(v153);
  sub_5A04(v169);
  sub_57B4(v188);
  sub_6754(v155);
  sub_5A04(v171);
  return sub_57B4(v190);
}

uint64_t sub_34EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v3 = (a1 + *(v8 + 20));
  v6 = (a2 + *(v8 + 20));
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  *(a2 + *(v8 + 24)) = *(a1 + *(v8 + 24));
  v10 = *(type metadata accessor for ButtonStackView() + 20);
  v11 = *(a1 + v10);
  v11;
  result = a2;
  v5 = (a2 + v10);
  *v5 = v11;
  v5[1] = *(a1 + v10 + 8);
  return result;
}

uint64_t sub_3624()
{
  v6 = type metadata accessor for ButtonStackView();
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;
  v7 = v5 + *(*(v6 - 8) + 64);
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v5 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  return swift_deallocObject();
}

__n128 sub_3754(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));
  v4 = type metadata accessor for ButtonStackView();
  result = *(a1 + *(v4 + 20));
  *(a2 + *(v4 + 20)) = result;
  return result;
}

uint64_t sub_3824@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStackView();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1EA0(v3, a1);
}

unint64_t sub_3898()
{
  v2 = qword_1C0B8;
  if (!qword_1C0B8)
  {
    sub_3920(&qword_1C0B0, &qword_15990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3920(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t sub_3A04()
{
  v2 = qword_1C0C0;
  if (!qword_1C0C0)
  {
    sub_3920(&qword_1C0A8, &qword_15988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3AD8(uint64_t a1)
{
  v6 = a1;
  v12 = 0;
  v9 = 0;
  v8 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = &v3 - v4;
  v5 = (*(*(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v6);
  v7 = &v3 - v5;
  v12 = v1;
  sub_13C8(v1, &v3 - v5);
  v10 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
  sub_4F88(v7);
  sub_150A0();

  sub_17DC(v11);
  return sub_6828(v11);
}

uint64_t sub_3C14(uint64_t a1)
{
  v6 = a1;
  v11 = 0;
  v3[1] = 0;
  v8 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v5 = (*(*(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v6);
  v7 = v3 - v5;
  v11 = v1;
  sub_13C8(v1, v3 - v5);
  v9 = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
  sub_4F88(v7);
  sub_150A0();

  sub_17DC(v10);
  return sub_6828(v10);
}

uint64_t sub_3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_14E30();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_14E40();
}

uint64_t sub_3E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v21 = a1;
  v20 = a2;
  v30 = sub_71DC;
  v43 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v12 = 0;
  v40 = sub_14F50();
  v33 = *(v40 - 8);
  v34 = v40 - 8;
  v11 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &v10 - v11;
  v13 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() - 8);
  v24 = v13;
  v25 = *(v13 + 64);
  v14 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v29 = &v10 - v14;
  v4 = type metadata accessor for ButtonStackView();
  v15 = *(v4 - 8);
  v22 = v15;
  v23 = *(v15 + 64);
  v16 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v27 = &v10 - v16;
  v39 = sub_14A4(&qword_1C1A0, &qword_15B60);
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v17 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v38 = &v10 - v17;
  v50 = sub_14A4(&qword_1C1D8, &qword_15BA8);
  v44 = *(v50 - 8);
  v45 = v50 - 8;
  v18 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v48 = &v10 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v18);
  v49 = &v10 - v19;
  v60 = &v10 - v19;
  v59 = a1;
  v58 = v6;
  v7 = SiriSocialConversationDataModels.ButtonModel.label.getter();
  v32 = v57;
  v57[0] = v7;
  v57[1] = v8;
  sub_34EC(v20, v27);
  sub_6D88(v21, v29);
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v28 = (v26 + v23 + *(v24 + 80)) & ~*(v24 + 80);
  v31 = swift_allocObject();
  sub_3754(v27, v31 + v26);
  sub_710C(v29, v31 + v28);
  sub_6A74();
  sub_14F10();
  sub_14E50();
  v41 = sub_5E8C();
  v42 = sub_5F14();
  sub_14EE0();
  (*(v33 + 8))(v35, v40);
  (*(v36 + 8))(v38, v39);
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v56 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_39A0(v48, v50, v49);
  v52 = *(v44 + 8);
  v51 = v44 + 8;
  v52(v48, v50);
  (*(v44 + 16))(v48, v49, v50);
  sub_39A0(v48, v50, v46);
  v52(v48, v50);
  return (v52)(v49, v50);
}

uint64_t sub_44CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_14E30();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_14E40();
}

uint64_t *sub_45C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    __chkstk_darwin();
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
  __chkstk_darwin();
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

  sub_14F30();
  return v15;
}

uint64_t sub_4820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_567C(a1, a2);
  v5 = *(type metadata accessor for ButtonStackView() + 20);
  sub_14FF0();
  sub_1610();
  result = sub_14E10();
  v3 = (a2 + v5);
  *v3 = result;
  v3[1] = v4;
  return result;
}

uint64_t sub_48F4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v34 = 0;
  v33 = sub_4D64;
  v50 = 0;
  v49 = 0;
  v45 = sub_14A4(&qword_1C0C8, &qword_15998);
  v39 = *(v45 - 8);
  v40 = v45 - 8;
  v14 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v43 = &v13 - v14;
  v15 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v14);
  v44 = &v13 - v15;
  v50 = &v13 - v15;
  v32 = 0;
  v35 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v16 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v32);
  v38 = &v13 - v16;
  v17 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v48 = &v13 - v17;
  v49 = &v13 - v17;
  v28 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v27 = sub_151D0();
  v19 = v4;
  v18 = 1;
  v26 = sub_15040("Okay", 4uLL, 1);
  v20 = v5;
  v21 = sub_15040("", v32, v18 & 1);
  v22 = v6;
  v23 = variable initialization expression of SiriSocialConversationDataModels.ButtonModel.userData();
  v24 = variable initialization expression of SiriSocialConversationDataModels.ButtonStackModel.text();
  v25 = v7;
  v8 = sub_3994();
  SiriSocialConversationDataModels.ButtonModel.init(label:directInvocation:userData:link:separated:)(v26, v20, v21, v22, v23, v24, v25, v8 & 1, v19);
  v9 = v27;
  sub_4D14();
  v31 = v9;
  v29 = variable initialization expression of SiriSocialConversationDataModels.ButtonStackModel.text();
  v30 = v10;
  v11 = variable initialization expression of SiriSocialConversationDataModels.ButtonStackModel.sash();
  SiriSocialConversationDataModels.ButtonStackModel.init(buttons:text:sash:)(v31, v29, v30, v11 & 1, v48);
  sub_13C8(v48, v38);
  v36 = type metadata accessor for ButtonStackView();
  v37 = sub_4E00();
  sub_4E80();
  sub_14F40();
  v42 = sub_4F00();
  sub_39A0(v43, v45, v44);
  v47 = *(v39 + 8);
  v46 = v39 + 8;
  v47(v43, v45);
  (*(v39 + 16))(v43, v44, v45);
  sub_39A0(v43, v45, v41);
  v47(v43, v45);
  v47(v44, v45);
  return sub_4F88(v48);
}

uint64_t variable initialization expression of SiriSocialConversationDataModels.ButtonModel.userData()
{
  sub_14A4(&qword_1C0F0, &unk_159A0);
  sub_151D0();
  return sub_15000();
}

uint64_t sub_4D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v4 = a1;
  v8 = 0;
  v5 = (*(*(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v3 - v5;
  v8 = __chkstk_darwin(v4);
  sub_13C8(v8, &v3 - v5);
  return sub_4820(v7, v6);
}

unint64_t sub_4E00()
{
  v2 = qword_1C0D0;
  if (!qword_1C0D0)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4E80()
{
  v2 = qword_1C0D8;
  if (!qword_1C0D8)
  {
    type metadata accessor for ButtonStackView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F00()
{
  v2 = qword_1C0E0;
  if (!qword_1C0E0)
  {
    sub_3920(&qword_1C0C8, &qword_15998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4F88(uint64_t a1)
{
  v1 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  return a1;
}

unint64_t sub_5078()
{
  v2 = qword_1C0E8;
  if (!qword_1C0E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C0E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5188(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 2147483646)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v5 = *(a1 + *(a3 + 20));
    }

    v3 = v5 - 1;
    if (v5 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_52D4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_53C8()
{
  v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  if (v0 <= 0x3F)
  {
    v3 = sub_5494();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_5494()
{
  v4 = qword_1C160;
  if (!qword_1C160)
  {
    sub_14FF0();
    sub_1610();
    v3 = sub_14E20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1C160);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_5598()
{
  v2 = qword_1C190;
  if (!qword_1C190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C190);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_567C(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  result = *(a1 + *(v3 + 20));
  *(a2 + *(v3 + 20)) = result;
  *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));
  return result;
}

unint64_t sub_5734()
{
  v2 = qword_1C1C0;
  if (!qword_1C1C0)
  {
    sub_14FB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C1C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_57B4(uint64_t a1)
{
  v3 = sub_14FB0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_585C(const void *a1, void *a2)
{
  v6 = sub_14FB0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_14A4(&qword_1C1B8, &unk_15B78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_5984()
{
  v2 = qword_1C1C8;
  if (!qword_1C1C8)
  {
    sub_14FA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C1C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5A04(uint64_t a1)
{
  v3 = sub_14FA0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5AAC(const void *a1, void *a2)
{
  v6 = sub_14FA0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_14A4(&qword_1C1B0, &qword_15B70);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_5BD4()
{
  v6 = type metadata accessor for ButtonStackView();
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;
  v7 = v5 + *(*(v6 - 8) + 64);
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v5 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  return swift_deallocObject();
}

uint64_t sub_5D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ButtonStackView();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_3E4C(a1, v4, a2);
}

unint64_t sub_5D84()
{
  v2 = qword_1C1E0;
  if (!qword_1C1E0)
  {
    sub_3920(&qword_1C1D0, &qword_15BA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E0C()
{
  v2 = qword_1C1E8;
  if (!qword_1C1E8)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E8C()
{
  v2 = qword_1C1F0;
  if (!qword_1C1F0)
  {
    sub_3920(&qword_1C1A0, &qword_15B60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F14()
{
  v2 = qword_1C1F8;
  if (!qword_1C1F8)
  {
    sub_14F50();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F94()
{
  v2 = qword_1C200;
  if (!qword_1C200)
  {
    sub_3920(&qword_1C198, &qword_15B58);
    sub_3920(&qword_1C1A0, &qword_15B60);
    sub_14F50();
    sub_5E8C();
    sub_5F14();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_60A4()
{
  v2 = qword_1C208;
  if (!qword_1C208)
  {
    sub_14F80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6124(uint64_t a1, uint64_t a2)
{
  sub_14A4(&qword_1C210, &qword_15BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_14A4(&qword_1C198, &qword_15B58);
  }

  else
  {
    v2 = sub_14F80();
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_6228(const void *a1, void *a2)
{
  v6 = sub_14FB0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_14A4(&qword_1C1B8, &unk_15B78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_6350(const void *a1, void *a2)
{
  v6 = sub_14FA0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_14A4(&qword_1C1B0, &qword_15B70);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_6478(uint64_t a1, uint64_t a2)
{
  sub_14A4(&qword_1C210, &qword_15BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_14A4(&qword_1C198, &qword_15B58);
  }

  else
  {
    v2 = sub_14F80();
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_657C()
{
  v2 = qword_1C218;
  if (!qword_1C218)
  {
    sub_3920(&qword_1C1B8, &unk_15B78);
    sub_5734();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6614()
{
  v2 = qword_1C220;
  if (!qword_1C220)
  {
    sub_3920(&qword_1C1B0, &qword_15B70);
    sub_5984();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_66AC()
{
  v2 = qword_1C228;
  if (!qword_1C228)
  {
    sub_3920(&qword_1C1A8, &qword_15B68);
    sub_60A4();
    sub_5F94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6754(uint64_t a1)
{
  sub_14A4(&qword_1C210, &qword_15BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_14A4(&qword_1C198, &qword_15B58);
  }

  else
  {
    v1 = sub_14F80();
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_6828(uint64_t a1)
{
  v1 = sub_14A4(&qword_1C230, qword_15BB8);
  (*(*(v1 - 8) + 8))(a1);
  v6 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v2 = *(a1 + v6[5] + 8);

  v3 = *(a1 + v6[6]);

  v4 = *(a1 + v6[8] + 8);

  return a1;
}

uint64_t sub_68E0()
{
  v6 = type metadata accessor for ButtonStackView();
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;
  v7 = v5 + *(*(v6 - 8) + 64);
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v5 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  return swift_deallocObject();
}

uint64_t sub_6A10()
{
  v1 = *(type metadata accessor for ButtonStackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3AD8(v2);
}

unint64_t sub_6A74()
{
  v2 = qword_1C238;
  if (!qword_1C238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6AEC()
{
  v6 = type metadata accessor for ButtonStackView();
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;
  v7 = v5 + *(*(v6 - 8) + 64);
  v2 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v5 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  return swift_deallocObject();
}

uint64_t sub_6C1C()
{
  v1 = *(type metadata accessor for ButtonStackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3C14(v2);
}

unint64_t sub_6C80()
{
  v2 = qword_1C240;
  if (!qword_1C240)
  {
    sub_3920(&qword_1C1A0, &qword_15B60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C240);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_6D08(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_6D88(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C230, qword_15BB8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v11 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v3 = (a1 + v11[5]);
  v6 = (a2 + v11[5]);
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  v9 = v11[6];
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  *(a2 + v11[7]) = *(a1 + v11[7]);
  v4 = v11[8];
  v13 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v14 = *(a1 + v4 + 8);

  result = a2;
  *(v13 + 8) = v14;
  return result;
}

uint64_t sub_6ED0()
{
  v12 = type metadata accessor for ButtonStackView();
  v1 = *(*(v12 - 8) + 80);
  v11 = (v1 + 16) & ~v1;
  v10 = v11 + *(*(v12 - 8) + 64);
  v14 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v2 = *(*(v14 - 1) + 80);
  v13 = (v10 + v2) & ~v2;
  v15 = v13 + *(*(v14 - 1) + 64);
  v3 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v3 - 8) + 8))();
  v4 = *(v0 + v11 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  v5 = sub_14A4(&qword_1C230, qword_15BB8);
  (*(*(v5 - 8) + 8))();
  v6 = *(v0 + v13 + v14[5] + 8);

  v7 = *(v0 + v13 + v14[6]);

  v8 = *(v0 + v13 + v14[8] + 8);

  return swift_deallocObject();
}

__n128 sub_710C(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C230, qword_15BB8);
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  result = *(a1 + v3[8]);
  *(a2 + v3[8]) = result;
  return result;
}

void sub_71DC()
{
  v3 = *(type metadata accessor for ButtonStackView() - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() - 8);
  v2 = v0 + ((v4 + *(v1 + 80)) & ~*(v1 + 80));

  sub_4484(v0 + v5, v2);
}

void *sub_72C0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t SiriSocialConversationUIPlugin.snippet(for:mode:idiom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v33 = a2;
  v34 = a3;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v44 = 0;
  v43 = 0;
  v28 = 0;
  v18 = type metadata accessor for StoryView();
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v14 - v19;
  v21 = (*(*(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v28);
  v22 = &v14 - v21;
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v24 = &v14 - v23;
  v44 = &v14 - v23;
  v25 = type metadata accessor for ButtonStackView();
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v27 = &v14 - v26;
  v29 = (*(*(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v28);
  v30 = &v14 - v29;
  v31 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v32 = &v14 - v31;
  v43 = &v14 - v31;
  v37 = type metadata accessor for SiriSocialConversationDataModels();
  v36 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v35);
  v38 = &v14 - v36;
  v42 = v8;
  v41 = v9;
  v40 = v10;
  v39 = v3;
  sub_77D0(v8, &v14 - v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v20;
    sub_7984(v38, v24);
    v44 = v24;
    sub_7A38(v24, v22);
    sub_7E50(v22, v12);
    sub_7AEC();
    v15 = sub_14EB0();
    sub_7B6C(v20);
    sub_7B6C(v24);
    return v15;
  }

  else
  {
    v11 = v27;
    sub_567C(v38, v32);
    v43 = v32;
    sub_13C8(v32, v30);
    sub_4820(v30, v11);
    sub_4E80();
    v16 = sub_14EB0();
    sub_7C10(v27);
    sub_4F88(v32);
    return v16;
  }
}

uint64_t sub_77D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriSocialConversationDataModels();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_14A4(&qword_1C248, &qword_15C30);
    v7 = *(*(v6 - 8) + 16);
    v7(a2, a1);
    v4 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    (v7)(a2 + *(v4 + 20), a1 + *(v4 + 20), v6);
  }

  else
  {
    v2 = sub_14A4(&qword_1C098, &qword_15980);
    (*(*(v2 - 8) + 16))(a2, a1);
    v10 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
    v8 = (a2 + *(v10 + 20));
    v3 = (a1 + *(v10 + 20));
    *v8 = *v3;
    v9 = v3[1];

    v8[1] = v9;
    *(a2 + *(v10 + 24)) = *(a1 + *(v10 + 24));
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_7984(uint64_t a1, uint64_t a2)
{
  v5 = sub_14A4(&qword_1C248, &qword_15C30);
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  (v6)(a2 + *(v2 + 20), a1 + *(v2 + 20), v5);
  return a2;
}

uint64_t sub_7A38(uint64_t a1, uint64_t a2)
{
  v5 = sub_14A4(&qword_1C248, &qword_15C30);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  (v6)(a2 + *(v2 + 20), a1 + *(v2 + 20), v5);
  return a2;
}

unint64_t sub_7AEC()
{
  v2 = qword_1C250;
  if (!qword_1C250)
  {
    type metadata accessor for StoryView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7B6C(uint64_t a1)
{
  v4 = sub_14A4(&qword_1C248, &qword_15C30);
  v3 = *(*(v4 - 8) + 8);
  v3(a1);
  v1 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  (v3)(a1 + *(v1 + 20), v4);
  return a1;
}

uint64_t sub_7C10(uint64_t a1)
{
  v1 = sub_14A4(&qword_1C098, &qword_15980);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);

  v3 = type metadata accessor for ButtonStackView();

  return a1;
}

unint64_t sub_7D18()
{
  v2 = qword_1C258;
  if (!qword_1C258)
  {
    type metadata accessor for SiriSocialConversationDataModels();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7D98@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSocialConversationUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_7DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8 = SiriSocialConversationUIPlugin.snippet(for:mode:idiom:)(a1, a2, a3);
  if (v4)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_7E8C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v11 = sub_8594;
  v26 = 0;
  v25 = 0;
  v17 = sub_14A4(&qword_1C2F8, &qword_15C38);
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v5 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v16 = &v4 - v5;
  v19 = sub_14A4(&qword_1C300, &qword_15C40);
  v7 = *(*(v19 - 8) + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v4 - v6;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v6);
  v22 = &v4 - v8;
  v26 = &v4 - v8;
  v25 = v1;
  v9 = &v23;
  v24 = v1;
  v10 = sub_14A4(&qword_1C308, &qword_15C48);
  sub_859C();
  sub_14E80();
  sub_15040("NewYork", 7uLL, 1);
  v12 = v2;
  v13 = sub_14E70();

  sub_8630();
  sub_14F00();

  (*(v14 + 8))(v16, v17);
  v20 = sub_86B8();
  sub_39A0(v21, v19, v22);
  sub_87E8(v21);
  sub_888C(v22, v21);
  sub_39A0(v21, v19, v18);
  sub_87E8(v21);
  return sub_87E8(v22);
}

uint64_t sub_8110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v19 = a1;
  v28 = sub_896C;
  v30 = sub_9550;
  v48 = 0;
  v47 = 0;
  v2 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v20 = &v13 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v13);
  v4 = &v13 - v14;
  v17 = &v13 - v14;
  v40 = sub_14A4(&qword_1C308, &qword_15C48);
  v34 = *(v40 - 8);
  v35 = v40 - 8;
  v15 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v19);
  v38 = &v13 - v15;
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v39 = &v13 - v16;
  v48 = &v13 - v16;
  v47 = v7;
  sub_7A38(v7, v4);
  v8 = SiriSocialConversationDataModels.StoryDataModel.storyTexts.getter();
  v9 = v20;
  v18 = v8;
  sub_7B6C(v17);
  v24 = v46;
  v46[0] = v18;
  sub_7A38(v19, v9);
  v21 = SiriSocialConversationDataModels.StoryDataModel.dialogIds.getter();
  sub_7B6C(v20);
  v23 = &v45;
  v45 = v21;
  v22 = sub_14A4(&qword_1C3D8, &unk_15E00);
  sub_93D4();
  sub_151E0();
  sub_945C(v23);
  sub_945C(v24);
  v27 = v44;
  v44[0] = v46[1];
  v44[1] = v46[2];
  v25 = sub_14A4(&qword_1C0F0, &unk_159A0);
  v26 = sub_14A4(&qword_1C3E8, &qword_15E10);
  sub_9488();
  v10 = sub_15090();
  v33 = &v43;
  v43 = v10;
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  v31 = v11;
  *(v11 + 16) = v28;
  *(v11 + 24) = 0;
  v32 = sub_14A4(&qword_1C3F8, &qword_15E38);
  sub_955C();
  sub_14F20();
  v37 = sub_859C();
  sub_39A0(v38, v40, v39);
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v42(v38, v40);
  (*(v34 + 16))(v38, v39, v40);
  sub_39A0(v38, v40, v36);
  v42(v38, v40);
  return (v42)(v39, v40);
}

unint64_t sub_859C()
{
  v2 = qword_1C310;
  if (!qword_1C310)
  {
    sub_3920(&qword_1C308, &qword_15C48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8630()
{
  v2 = qword_1C318;
  if (!qword_1C318)
  {
    sub_3920(&qword_1C2F8, &qword_15C38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_86B8()
{
  v2 = qword_1C320;
  if (!qword_1C320)
  {
    sub_3920(&qword_1C300, &qword_15C40);
    sub_8630();
    sub_8760();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8760()
{
  v2 = qword_1C328;
  if (!qword_1C328)
  {
    sub_3920(&qword_1C330, qword_15C50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_87E8(uint64_t a1)
{
  v1 = sub_14A4(&qword_1C2F8, &qword_15C38);
  (*(*(v1 - 8) + 8))(a1);
  v5 = (a1 + *(sub_14A4(&qword_1C300, &qword_15C40) + 36));
  v2 = *v5;

  v3 = v5[1];

  return a1;
}

uint64_t sub_888C(uint64_t a1, uint64_t a2)
{
  v2 = sub_14A4(&qword_1C2F8, &qword_15C38);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_14A4(&qword_1C300, &qword_15C40) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);

  result = a2;
  *(a2 + v5 + 8) = v8;
  return result;
}

uint64_t sub_896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = 0u;
  v45 = 0u;
  v48 = a1;
  v49 = a2;
  v46 = a3;
  v47 = a4;

  v42 = a1;
  v43 = a2;
  sub_6A74();
  v38 = sub_14EA0();
  v39 = v4;
  v40 = v5;
  v41 = v6;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  sub_14E60();
  v34 = v38;
  v35 = v13;
  v36 = v14 & 1;
  v37 = v15;
  v30 = sub_14E90();
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v9;

  sub_95E4(v38, v13, v14 & 1);

  v27[0] = v30;
  v27[1] = v16;
  v28 = v17 & 1;
  v29 = v18;
  sub_39A0(v27, &type metadata for Text, &v44);
  sub_9628(v27);
  v19 = v44;
  v20 = v45;
  v21 = *(&v45 + 1);
  sub_9670(v44, *(&v44 + 1), v45 & 1);

  v23 = v19;
  v24 = v20 & 1;
  v25 = v21;
  sub_39A0(&v23, &type metadata for Text, &v26);
  sub_9628(&v23);
  v22 = v26;
  sub_9628(&v44);
  return v22;
}

uint64_t sub_8C1C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5 & 1;
  *(a3 + 24) = v6;
  return result;
}

uint64_t sub_8CBC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v51 = 0;
  v33[1] = 0;
  v34 = (*(*(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v45 = v33 - v34;
  v47 = type metadata accessor for StoryView();
  v35 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v49 = v33 - v35;
  v36 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33 - v35);
  v50 = v33 - v36;
  v51 = v33 - v36;
  v43 = &type metadata for String;
  v38 = sub_151D0();
  v37 = v2;
  v40 = 6;
  v39 = 1;
  v3 = sub_15040("String", 6uLL, 1);
  v4 = v37;
  v5 = v3;
  v6 = v38;
  *v37 = v5;
  v4[1] = v7;
  sub_4D14();
  v44 = v6;
  v42 = sub_151D0();
  v41 = v8;
  v9 = sub_15040("Item 1", v40, v39 & 1);
  v10 = v39;
  v11 = v41;
  v13 = v12;
  v14 = v40;
  *v41 = v9;
  v11[1] = v13;
  v15 = sub_15040("Item 2", v14, v10 & 1);
  v16 = v39;
  v17 = v41;
  v19 = v18;
  v20 = v40;
  v41[2] = v15;
  v17[3] = v19;
  v21 = sub_15040("Item 3", v20, v16 & 1);
  v22 = v39;
  v23 = v41;
  v25 = v24;
  v26 = v40;
  v41[4] = v21;
  v23[5] = v25;
  v27 = sub_15040("Item 4", v26, v22 & 1);
  v28 = v41;
  v29 = v27;
  v30 = v42;
  v41[6] = v29;
  v28[7] = v31;
  sub_4D14();
  SiriSocialConversationDataModels.StoryDataModel.init(storyTexts:dialogIds:)(v44, v30, v45);
  sub_7E50(v45, v49);
  v48 = sub_7AEC();
  sub_39A0(v49, v47, v50);
  sub_7B6C(v49);
  sub_7A38(v50, v49);
  sub_39A0(v49, v47, v46);
  sub_7B6C(v49);
  return sub_7B6C(v50);
}

uint64_t type metadata accessor for StoryView()
{
  v1 = qword_1C398;
  if (!qword_1C398)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_9034()
{
  v2 = qword_1C338;
  if (!qword_1C338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_91FC()
{
  v2 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_92F0()
{
  v2 = qword_1C3D0;
  if (!qword_1C3D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_93D4()
{
  v2 = qword_1C3E0;
  if (!qword_1C3E0)
  {
    sub_3920(&qword_1C3D8, &unk_15E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C3E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_945C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_9488()
{
  v2 = qword_1C3F0;
  if (!qword_1C3F0)
  {
    sub_3920(&qword_1C3E8, &qword_15E10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C3F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9510()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_955C()
{
  v2 = qword_1C400;
  if (!qword_1C400)
  {
    sub_3920(&qword_1C3F8, &qword_15E38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_95E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_9628(uint64_t a1)
{
  sub_95E4(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_9670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.buttons.getter()
{
  v10 = 0;
  v7 = sub_14A4(&qword_1C098, &qword_15980);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = &v2 - v3;
  v10 = v0;
  (*(v4 + 16))(&v2 - v3);
  sub_14D80();
  v8 = v9;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.label.getter()
{
  v12 = 0;
  v7 = sub_14A4(&qword_1C230, qword_15BB8);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = &v2 - v3;
  v12 = v0;
  (*(v4 + 16))(&v2 - v3);
  sub_14D80();
  v8 = v10;
  v9 = v11;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.init(label:directInvocation:userData:link:separated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v59 = a9;
  v53 = a1;
  v54 = a2;
  v55 = a3;
  v62 = a4;
  v61 = a5;
  v58 = a6;
  v60 = a7;
  v56 = a8;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v52 = sub_14A4(&qword_1C230, qword_15BB8);
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v41 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v43 = &v41 - v41;
  v46 = 0;
  v57 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v42 = (*(*(v57 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v53);
  v63 = &v41 - v42;
  v72 = &v41 - v42;
  v70 = v9;
  v71 = v10;
  v68 = v11;
  v69 = v12;
  v67 = v13;
  v65 = v14;
  v66 = v15;
  v47 = 1;
  v64 = v16 & 1;
  v48 = "";
  sub_15040("", v17, 1);
  property wrapper backing initializer of SiriSocialConversationDataModels.ButtonModel.label();
  (*(v50 + 32))(v63, v43, v52);
  v44 = v57[5];
  v18 = sub_15040(v48, v46, v47 & 1);
  v19 = v57;
  v20 = (v63 + v44);
  *v20 = v18;
  v20[1] = v21;
  v45 = v19[6];
  sub_14A4(&qword_1C0F0, &unk_159A0);
  sub_151D0();
  v22 = sub_15000();
  v23 = v46;
  v24 = v47;
  v25 = v57;
  v26 = v22;
  v27 = v48;
  *(v63 + v45) = v26;
  v49 = v25[8];
  v28 = sub_15040(v27, v23, v24 & 1);
  v29 = v50;
  v30 = (v63 + v49);
  *v30 = v28;
  v30[1] = v31;
  (*(v29 + 8))();
  property wrapper backing initializer of SiriSocialConversationDataModels.ButtonModel.label();

  v32 = v62;
  v33 = (v63 + v57[5]);
  v34 = v33[1];
  *v33 = v55;
  v33[1] = v32;

  v35 = (v63 + v57[6]);
  v36 = *v35;
  *v35 = v61;

  *(v63 + v57[7]) = v56;

  v37 = v60;
  v38 = (v63 + v57[8]);
  v39 = v38[1];
  *v38 = v58;
  v38[1] = v37;

  sub_6D88(v63, v59);

  return sub_6828(v63);
}

uint64_t type metadata accessor for SiriSocialConversationDataModels.ButtonModel()
{
  v1 = qword_1C6B0;
  if (!qword_1C6B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.init(buttons:text:sash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v31 = a1;
  v32 = a2;
  v36 = a3;
  v34 = a4;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v26 = sub_14A4(&qword_1C098, &qword_15980);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v21 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v25 = &v21 - v21;
  v27 = 0;
  v33 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v22 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v5 = &v21 - v22;
  v37 = &v21 - v22;
  v42 = &v21 - v22;
  v41 = v6;
  v39 = v7;
  v40 = v8;
  v30 = 1;
  v28 = 1;
  v38 = v9 & 1;
  type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  sub_151D0();
  property wrapper backing initializer of SiriSocialConversationDataModels.ButtonStackModel.buttons();
  (*(v23 + 32))(v5, v25, v26);
  v29 = *(v33 + 20);
  v10 = sub_15040("", v27, v28 & 1);
  v11 = v30;
  v12 = v33;
  v13 = &v5[v29];
  *v13 = v10;
  v13[1] = v14;
  v5[*(v12 + 24)] = v11;
  SiriSocialConversationDataModels.ButtonStackModel.buttons.setter();

  v15 = v36;
  v16 = (v37 + *(v33 + 20));
  v17 = v16[1];
  *v16 = v32;
  v16[1] = v15;

  v18 = v35;
  v19 = v37;
  *(v37 + *(v33 + 24)) = v34;
  sub_13C8(v19, v18);

  return sub_4F88(v37);
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.storyTexts.getter()
{
  v13 = 0;
  v10 = sub_14A4(&qword_1C248, &qword_15C30);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v0 = &v4 - v5;
  v9 = &v4 - v5;
  v13 = v1;
  v2 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  (*(v7 + 16))(v0, v6 + *(v2 + 20), v10);
  sub_14D80();
  v11 = v12;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.dialogIds.getter()
{
  v10 = 0;
  v7 = sub_14A4(&qword_1C248, &qword_15C30);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = &v2 - v3;
  v10 = v0;
  (*(v4 + 16))(&v2 - v3);
  sub_14D80();
  v8 = v9;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.init(storyTexts:dialogIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a3;
  v9 = a1;
  v6 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v8 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v5 - v7;
  v14 = &v5 - v7;
  v13 = v9;
  v12 = __chkstk_darwin(v6);
  property wrapper backing initializer of SiriSocialConversationDataModels.StoryDataModel.dialogIds();
  v3 = *(v8 + 20);
  property wrapper backing initializer of SiriSocialConversationDataModels.StoryDataModel.dialogIds();
  sub_7A38(v11, v10);
  return sub_7B6C(v11);
}

uint64_t sub_A29C()
{
  result = sub_15040("SiriSocialConversationUIPlugin", 0x1EuLL, 1);
  static SiriSocialConversationDataModels.bundleName = result;
  qword_1E1F8 = v1;
  return result;
}

uint64_t *SiriSocialConversationDataModels.bundleName.unsafeMutableAddressor()
{
  if (qword_1C090 != -1)
  {
    swift_once();
  }

  return &static SiriSocialConversationDataModels.bundleName;
}

uint64_t static SiriSocialConversationDataModels.bundleName.getter()
{
  v0 = SiriSocialConversationDataModels.bundleName.unsafeMutableAddressor();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t property wrapper backing initializer of SiriSocialConversationDataModels.ButtonModel.label()
{

  sub_14D60();
}

uint64_t type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel()
{
  v1 = qword_1C760;
  if (!qword_1C760)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.label.setter()
{

  sub_14A4(&qword_1C230, qword_15BB8);
  sub_14D90();
}

void (*SiriSocialConversationDataModels.ButtonModel.label.modify(void *a1))(void **a1)
{
  v2 = sub_E0F0(0x28uLL);
  *a1 = v2;
  sub_14A4(&qword_1C230, qword_15BB8);
  v2[4] = sub_14D70();
  return sub_A588;
}

void sub_A588(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t sub_A670(uint64_t a1)
{
  v9 = a1;
  v8 = sub_14A4(&qword_1C230, qword_15BB8);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t SiriSocialConversationDataModels.ButtonModel.directInvocation.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() + 20));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.directInvocation.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() + 20));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.userData.getter()
{
  v2 = *(v0 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() + 24));

  return v2;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.userData.setter(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.separated.setter(unsigned int a1)
{
  v2 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.link.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() + 32));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.link.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel() + 32));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_AB08(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;

  v21[0] = sub_15040("label", 5uLL, 1);
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = sub_15050();
  sub_E478(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  v20[0] = sub_15040("directInvocation", 0x10uLL, 1);
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = sub_15050();
  sub_E478(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  v19[0] = sub_15040("userData", 8uLL, 1);
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = sub_15050();
  sub_E478(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  v18[0] = sub_15040("separated", 9uLL, 1);
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = sub_15050();
  sub_E478(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  v17[0] = sub_15040("link", 4uLL, 1);
  v17[1] = v6;
  v9 = sub_15050();
  sub_E478(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

BOOL sub_AE94(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_B170(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_15040("label", 5uLL, 1);
    case 1:
      return sub_15040("directInvocation", 0x10uLL, 1);
    case 2:
      return sub_15040("userData", 8uLL, 1);
    case 3:
      return sub_15040("separated", 9uLL, 1);
  }

  return sub_15040("link", 4uLL, 1);
}

uint64_t sub_B344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AB08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AE7C();
  *a1 = result;
  return result;
}

BOOL static SiriSocialConversationDataModels.ButtonModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v28 = a2;
  v40 = 0;
  v39 = 0;
  v35 = sub_14A4(&qword_1C230, qword_15BB8);
  v31 = *(v35 - 8);
  v32 = v35 - 8;
  v26 = v31[8];
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v33 = &v8[-v25];
  v27 = v25;
  __chkstk_darwin(&v8[-v25]);
  v34 = &v8[-v27];
  v40 = v2;
  v39 = v28;
  v30 = v31[2];
  v29 = v31 + 2;
  v30();
  (v30)(v33, v28, v35);
  v38 = sub_14DA0();
  v37 = v31[1];
  v36 = v31 + 1;
  v37(v33, v35);
  v37(v34, v35);
  if (v38)
  {
    v18 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
    v3 = (v24 + v18[5]);
    v19 = *v3;
    v22 = v3[1];

    v4 = (v28 + v18[5]);
    v20 = *v4;
    v21 = v4[1];

    v23 = sub_15050();

    if (v23)
    {
      v16 = *(v24 + v18[6]);

      v15 = *(v28 + v18[6]);

      v17 = sub_15020();

      if (v17)
      {
        if ((*(v24 + v18[7]) & 1) == (*(v28 + v18[7]) & 1))
        {
          v5 = (v24 + v18[8]);
          v10 = *v5;
          v13 = v5[1];

          v6 = (v28 + v18[8]);
          v11 = *v6;
          v12 = v6[1];

          v14 = sub_15050();

          return (v14 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t SiriSocialConversationDataModels.ButtonModel.encode(to:)(uint64_t a1)
{
  v35 = a1;
  v59 = 0;
  v58 = 0;
  v47 = sub_14A4(&qword_1C230, qword_15BB8);
  v42 = *(v47 - 8);
  v43 = v47 - 8;
  v34 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v49 = v12 - v34;
  v46 = sub_14A4(&qword_1C418, &qword_15E60);
  v36 = *(v46 - 8);
  v37 = v46 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v35);
  v41 = v12 - v38;
  v59 = v2;
  v58 = v1;
  v39 = v2[3];
  v40 = v2[4];
  sub_E23C(v2, v39);
  sub_E1C0();
  sub_15210();
  (*(v42 + 16))(v49, v44, v47);
  v45 = &v57;
  v57 = 0;
  sub_E2A8();
  v3 = v48;
  sub_151C0();
  v50 = v3;
  v51 = v3;
  if (v3)
  {
    v15 = v51;
    (*(v42 + 8))(v49, v47);
    result = (*(v36 + 8))(v41, v46);
    v16 = v15;
  }

  else
  {
    (*(v42 + 8))(v49, v47);
    v4 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
    v5 = v50;
    v29 = v4;
    v6 = (v44 + *(v4 + 20));
    v30 = *v6;
    v31 = v6[1];

    v56 = 1;
    sub_151A0();
    v32 = v5;
    v33 = v5;
    if (v5)
    {
      v14 = v33;

      result = (*(v36 + 8))(v41, v46);
      v16 = v14;
    }

    else
    {

      v23 = *(v44 + v29[6]);

      v26 = &v55;
      v55 = v23;
      v24 = &v54;
      v54 = 2;
      v25 = sub_14A4(&qword_1C428, &qword_15E68);
      sub_E348();
      v7 = v32;
      sub_151C0();
      v27 = v7;
      v28 = v7;
      if (v7)
      {
        v13 = v28;
        sub_945C(&v55);
        result = (*(v36 + 8))(v41, v46);
        v16 = v13;
      }

      else
      {
        sub_945C(&v55);
        v8 = v27;
        v9 = *(v44 + v29[7]);
        v53 = 3;
        sub_151B0();
        v21 = v8;
        v22 = v8;
        if (v8)
        {
          v12[1] = v22;
        }

        else
        {
          v10 = (v44 + v29[8]);
          v17 = *v10;
          v18 = v10[1];

          v52 = 4;
          sub_151A0();
          v19 = 0;
          v20 = 0;
        }

        return (*(v36 + 8))(v41, v46);
      }
    }
  }

  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.hash(into:)(uint64_t a1)
{
  v20 = a1;
  v2 = v1;
  v22 = v2;
  v33 = 0;
  v32 = 0;
  v13 = sub_14A4(&qword_1C230, qword_15BB8);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v8 - v9;
  v33 = a1;
  v32 = v4;
  (*(v10 + 16))();
  sub_E3E4();
  sub_151F0();
  (*(v10 + 8))(v12, v13);
  v21 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v5 = (v22 + v21[5]);
  v14 = *v5;
  v15 = v5[1];

  v16 = v31;
  v31[0] = v14;
  v31[1] = v15;
  v25 = &type metadata for String;
  v26 = &protocol witness table for String;
  sub_151F0();
  sub_E478(v16);
  v17 = *(v22 + v21[6]);

  v19 = &v30;
  v30 = v17;
  v18 = sub_14A4(&qword_1C428, &qword_15E68);
  sub_E4A4();
  sub_151F0();
  sub_945C(v19);
  v29 = *(v22 + v21[7]);
  sub_151F0();
  v6 = (v22 + v21[8]);
  v23 = *v6;
  v24 = v6[1];

  v27 = v28;
  v28[0] = v23;
  v28[1] = v24;
  sub_151F0();
  return sub_E478(v27);
}

uint64_t SiriSocialConversationDataModels.ButtonModel.hashValue.getter()
{
  type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  sub_5E0C();
  return sub_150F0();
}

uint64_t SiriSocialConversationDataModels.ButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v82 = a1;
  v95 = 0;
  v62 = sub_14A4(&qword_1C448, &unk_15E70);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v83 = v37 - v65;
  v73 = sub_14A4(&qword_1C230, qword_15BB8);
  v70 = *(v73 - 8);
  v71 = v73 - 8;
  v66 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v67 = v37 - v66;
  v68 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37 - v66);
  v72 = v37 - v68;
  v77 = 0;
  v76 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  v69 = (*(*(v76 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v82);
  v80 = v37 - v69;
  v95 = v3;
  v79 = "";
  v78 = 1;
  sub_15040("", v4, 1);
  property wrapper backing initializer of SiriSocialConversationDataModels.ButtonModel.label();
  (*(v70 + 32))(v80, v72, v73);
  v74 = v76[5];
  v5 = sub_15040(v79, v77, v78 & 1);
  v6 = v76;
  v7 = (v80 + v74);
  *v7 = v5;
  v7[1] = v8;
  v75 = v6[6];
  sub_14A4(&qword_1C0F0, &unk_159A0);
  sub_151D0();
  v9 = sub_15000();
  v10 = v76;
  v11 = v77;
  v12 = v78;
  v13 = v9;
  v14 = v79;
  *(v80 + v75) = v13;
  v81 = v10[8];
  v15 = sub_15040(v14, v11, v12 & 1);
  v16 = v82;
  v17 = (v80 + v81);
  *v17 = v15;
  v17[1] = v18;
  v85 = v16[3];
  v86 = v16[4];
  sub_E23C(v16, v85);
  sub_E1C0();
  v19 = v84;
  sub_15200();
  v87 = v19;
  v88 = v19;
  if (v19)
  {
    v42 = v88;
  }

  else
  {
    v58 = &v94;
    v94 = 0;
    sub_E5D8();
    v20 = v87;
    sub_15170();
    v59 = v20;
    v60 = v20;
    if (v20)
    {
      v41 = v60;
      (*(v63 + 8))(v83, v62);
      v42 = v41;
    }

    else
    {
      (*(v70 + 40))(v80, v67, v73);
      v21 = v59;
      v93 = 1;
      v22 = sub_15150();
      v54 = v21;
      v55 = v22;
      v56 = v23;
      v57 = v21;
      if (v21)
      {
        v40 = v57;
        (*(v63 + 8))(v83, v62);
        v42 = v40;
      }

      else
      {
        v24 = v56;
        v25 = (v80 + v76[5]);
        v26 = v25[1];
        *v25 = v55;
        v25[1] = v24;

        v51 = sub_14A4(&qword_1C428, &qword_15E68);
        v50 = &v91;
        v91 = 2;
        sub_E678();
        v27 = v54;
        sub_15170();
        v52 = v27;
        v53 = v27;
        if (v27)
        {
          v39 = v53;
          (*(v63 + 8))(v83, v62);
          v42 = v39;
        }

        else
        {
          v28 = (v80 + v76[6]);
          v29 = *v28;
          *v28 = v92;

          v30 = v52;
          v90 = 3;
          v31 = sub_15160();
          v47 = v30;
          v48 = v31;
          v49 = v30;
          if (!v30)
          {
            *(v80 + v76[7]) = v48 & 1;
            v89 = 4;
            v32 = sub_15150();
            v43 = 0;
            v44 = v32;
            v45 = v33;
            v46 = 0;
            v34 = (v80 + v76[8]);
            v35 = v34[1];
            *v34 = v44;
            v34[1] = v33;

            (*(v63 + 8))(v83, v62);
            sub_6D88(v80, v61);
            sub_E538(v82);
            return sub_6828(v80);
          }

          v38 = v49;
          (*(v63 + 8))(v83, v62);
          v42 = v38;
        }
      }
    }
  }

  v37[1] = v42;
  sub_E538(v82);
  (*(v70 + 8))(v80, v73);
  sub_E478(v80 + v76[5]);
  sub_945C((v80 + v76[6]));
  return sub_E478(v80 + v76[8]);
}

uint64_t property wrapper backing initializer of SiriSocialConversationDataModels.ButtonStackModel.buttons()
{

  sub_14A4(&qword_1C1D0, &qword_15BA0);
  sub_14D60();
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.buttons.setter()
{

  sub_14A4(&qword_1C098, &qword_15980);
  sub_14D90();
}

uint64_t type metadata accessor for SiriSocialConversationDataModels.StoryDataModel()
{
  v1 = qword_1C800;
  if (!qword_1C800)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void (*SiriSocialConversationDataModels.ButtonStackModel.buttons.modify(void *a1))(void **a1)
{
  v2 = sub_E0F0(0x28uLL);
  *a1 = v2;
  sub_14A4(&qword_1C098, &qword_15980);
  v2[4] = sub_14D70();
  return sub_A588;
}

uint64_t sub_CCC8(uint64_t a1)
{
  v9 = a1;
  v8 = sub_14A4(&qword_1C098, &qword_15980);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.text.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.text.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.sash.setter(unsigned int a1)
{
  v2 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  result = a1;
  *(v1 + *(v2 + 24)) = a1;
  return result;
}

uint64_t sub_CF94(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;

  v15[0] = sub_15040("buttons", 7uLL, 1);
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = sub_15050();
  sub_E478(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  v14[0] = sub_15040("text", 4uLL, 1);
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = sub_15050();
  sub_E478(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  v13[0] = sub_15040("sash", 4uLL, 1);
  v13[1] = v4;
  v7 = sub_15050();
  sub_E478(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_D1E8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_D3D0(char a1)
{
  if (!a1)
  {
    return sub_15040("buttons", 7uLL, 1);
  }

  if (a1 == 1)
  {
    return sub_15040("text", 4uLL, 1);
  }

  return sub_15040("sash", 4uLL, 1);
}

uint64_t sub_D514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CF94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D1D0();
  *a1 = result;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.encode(to:)(uint64_t a1)
{
  v21 = a1;
  v42 = 0;
  v41 = 0;
  v33 = sub_14A4(&qword_1C098, &qword_15980);
  v28 = *(v33 - 8);
  v29 = v33 - 8;
  v20 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v35 = v10 - v20;
  v32 = sub_14A4(&qword_1C470, &qword_15E80);
  v22 = *(v32 - 8);
  v23 = v32 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v21);
  v27 = v10 - v24;
  v42 = v2;
  v41 = v1;
  v25 = v2[3];
  v26 = v2[4];
  sub_E23C(v2, v25);
  sub_E790();
  sub_15210();
  (*(v28 + 16))(v35, v30, v33);
  v31 = &v40;
  v40 = 0;
  sub_E80C();
  v3 = v34;
  sub_151C0();
  v36 = v3;
  v37 = v3;
  if (v3)
  {
    v11 = v37;
    (*(v28 + 8))(v35, v33);
    result = (*(v22 + 8))(v27, v32);
    v12 = v11;
  }

  else
  {
    (*(v28 + 8))(v35, v33);
    v4 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
    v5 = v36;
    v15 = v4;
    v6 = (v30 + *(v4 + 20));
    v16 = *v6;
    v17 = v6[1];

    v39 = 1;
    sub_151A0();
    v18 = v5;
    v19 = v5;
    if (v5)
    {
      v10[1] = v19;

      return (*(v22 + 8))(v27, v32);
    }

    else
    {

      v7 = v18;
      v8 = *(v30 + *(v15 + 24));
      v38 = 2;
      sub_151B0();
      v13 = v7;
      v14 = v7;
      if (v7)
      {
        v10[0] = v14;
      }

      return (*(v22 + 8))(v27, v32);
    }
  }

  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v57 = a1;
  v67 = 0;
  v41 = sub_14A4(&qword_1C4A0, &unk_15E88);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v58 = v25 - v44;
  v52 = sub_14A4(&qword_1C098, &qword_15980);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v45 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v46 = v25 - v45;
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v45);
  v51 = v25 - v47;
  v53 = 0;
  v55 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v48 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v56 = v25 - v48;
  v67 = v3;
  type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
  sub_151D0();
  property wrapper backing initializer of SiriSocialConversationDataModels.ButtonStackModel.buttons();
  (*(v49 + 32))(v56, v51, v52);
  v54 = *(v55 + 20);
  v4 = sub_15040("", v53, 1);
  v5 = v55;
  v6 = v56;
  v7 = v4;
  v8 = v57;
  v9 = (v56 + v54);
  *v9 = v7;
  v9[1] = v10;
  *(v6 + *(v5 + 24)) = 1;
  v60 = v8[3];
  v61 = v8[4];
  sub_E23C(v8, v60);
  sub_E790();
  v11 = v59;
  sub_15200();
  v62 = v11;
  v63 = v11;
  if (v11)
  {
    v29 = v63;
  }

  else
  {
    v37 = &v66;
    v66 = 0;
    sub_EAE4();
    v12 = v62;
    sub_15170();
    v38 = v12;
    v39 = v12;
    if (v12)
    {
      v28 = v39;
      (*(v42 + 8))(v58, v41);
      v29 = v28;
    }

    else
    {
      (*(v49 + 40))(v56, v46, v52);
      v13 = v38;
      v65 = 1;
      v14 = sub_15150();
      v33 = v13;
      v34 = v14;
      v35 = v15;
      v36 = v13;
      if (v13)
      {
        v27 = v36;
        (*(v42 + 8))(v58, v41);
        v29 = v27;
      }

      else
      {
        v16 = v35;
        v17 = (v56 + *(v55 + 20));
        v18 = v17[1];
        *v17 = v34;
        v17[1] = v16;

        v19 = v33;
        v64 = 2;
        v20 = sub_15160();
        v30 = v19;
        v31 = v20;
        v32 = v19;
        if (!v19)
        {
          v21 = v41;
          v22 = v58;
          v23 = v42;
          *(v56 + *(v55 + 24)) = v31 & 1;
          (*(v23 + 8))(v22, v21);
          sub_13C8(v56, v40);
          sub_E538(v57);
          return sub_4F88(v56);
        }

        v26 = v32;
        (*(v42 + 8))(v58, v41);
        v29 = v26;
      }
    }
  }

  v25[1] = v29;
  sub_E538(v57);
  return sub_4F88(v56);
}

uint64_t property wrapper backing initializer of SiriSocialConversationDataModels.StoryDataModel.dialogIds()
{

  sub_14A4(&qword_1C3D8, &unk_15E00);
  sub_14D60();
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.dialogIds.setter()
{

  sub_14A4(&qword_1C248, &qword_15C30);
  sub_14D90();
}

void *sub_E0F0(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_E144()
{
  v2 = qword_1C408;
  if (!qword_1C408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E1C0()
{
  v2 = qword_1C410;
  if (!qword_1C410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C410);
    return WitnessTable;
  }

  return v2;
}

void *sub_E23C(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_E2A8()
{
  v2 = qword_1C420;
  if (!qword_1C420)
  {
    sub_3920(&qword_1C230, qword_15BB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E348()
{
  v2 = qword_1C430;
  if (!qword_1C430)
  {
    sub_3920(&qword_1C428, &qword_15E68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E3E4()
{
  v2 = qword_1C438;
  if (!qword_1C438)
  {
    sub_3920(&qword_1C230, qword_15BB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C438);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_E478(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t sub_E4A4()
{
  v2 = qword_1C440;
  if (!qword_1C440)
  {
    sub_3920(&qword_1C428, &qword_15E68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C440);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_E538(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

unint64_t sub_E5D8()
{
  v2 = qword_1C450;
  if (!qword_1C450)
  {
    sub_3920(&qword_1C230, qword_15BB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E678()
{
  v2 = qword_1C458;
  if (!qword_1C458)
  {
    sub_3920(&qword_1C428, &qword_15E68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E714()
{
  v2 = qword_1C460;
  if (!qword_1C460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E790()
{
  v2 = qword_1C468;
  if (!qword_1C468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E80C()
{
  v2 = qword_1C478;
  if (!qword_1C478)
  {
    sub_3920(&qword_1C098, &qword_15980);
    sub_E8B4();
    sub_E9CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E8B4()
{
  v2 = qword_1C480;
  if (!qword_1C480)
  {
    sub_3920(&qword_1C1D0, &qword_15BA0);
    sub_E94C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E94C()
{
  v2 = qword_1C488;
  if (!qword_1C488)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E9CC()
{
  v2 = qword_1C490;
  if (!qword_1C490)
  {
    sub_3920(&qword_1C1D0, &qword_15BA0);
    sub_EA64();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EA64()
{
  v2 = qword_1C498;
  if (!qword_1C498)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EAE4()
{
  v2 = qword_1C4A8;
  if (!qword_1C4A8)
  {
    sub_3920(&qword_1C098, &qword_15980);
    sub_E8B4();
    sub_E9CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.storyTexts.setter()
{

  v1 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel() + 20);
  sub_14A4(&qword_1C248, &qword_15C30);
  sub_14D90();
}

void (*SiriSocialConversationDataModels.StoryDataModel.dialogIds.modify(void *a1))(void **a1)
{
  v2 = sub_E0F0(0x28uLL);
  *a1 = v2;
  sub_14A4(&qword_1C248, &qword_15C30);
  v2[4] = sub_14D70();
  return sub_A588;
}

uint64_t sub_ED1C(uint64_t a1)
{
  v9 = a1;
  v8 = sub_14A4(&qword_1C248, &qword_15C30);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

void (*SiriSocialConversationDataModels.StoryDataModel.storyTexts.modify(void *a1))(void **a1)
{
  v3 = sub_E0F0(0x28uLL);
  *a1 = v3;
  v2 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel() + 20);
  sub_14A4(&qword_1C248, &qword_15C30);
  v3[4] = sub_14D70();
  return sub_A588;
}

uint64_t sub_EEEC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel() + 20);
  v2 = sub_14A4(&qword_1C248, &qword_15C30);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_EF68(uint64_t a1)
{
  v9 = a1;
  v8 = sub_14A4(&qword_1C248, &qword_15C30);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v5 = &v4 - v4;
  (*(v6 + 16))();
  v2 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  (*(v6 + 40))(v1 + *(v2 + 20), v5, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_F090(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_15040("dialogIds", 9uLL, 1);
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = sub_15050();
  sub_E478(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_15040("storyTexts", 0xAuLL, 1);
  v11[1] = v3;
  v6 = sub_15050();
  sub_E478(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_F3D4()
{
  v2 = qword_1C4B0;
  if (!qword_1C4B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_F474(char a1)
{
  if (a1)
  {
    return sub_15040("storyTexts", 0xAuLL, 1);
  }

  else
  {
    return sub_15040("dialogIds", 9uLL, 1);
  }
}

uint64_t sub_F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F5DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F234();
  *a1 = result;
  return result;
}

unint64_t sub_F638()
{
  v2 = qword_1C4B8;
  if (!qword_1C4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.encode(to:)(uint64_t a1)
{
  v17 = a1;
  v40 = 0;
  v39 = 0;
  v31 = sub_14A4(&qword_1C248, &qword_15C30);
  v24 = *(v31 - 8);
  v25 = v31 - 8;
  v14 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v15 = v9 - v14;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9 - v14);
  v33 = v9 - v16;
  v30 = sub_14A4(&qword_1C4C0, &qword_15E98);
  v18 = *(v30 - 8);
  v19 = v30 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v17);
  v23 = v9 - v20;
  v40 = v3;
  v39 = v1;
  v21 = v3[3];
  v22 = v3[4];
  sub_E23C(v3, v21);
  sub_F638();
  sub_15210();
  v27 = *(v24 + 16);
  v28 = v24 + 16;
  v27(v33, v26, v31);
  v29 = &v38;
  v38 = 0;
  v4 = sub_FAFC();
  v5 = v32;
  v34 = v4;
  sub_151C0();
  v35 = v5;
  v36 = v5;
  if (v5)
  {
    v9[2] = v36;
    (*(v24 + 8))(v33, v31);
    return (*(v18 + 8))(v23, v30);
  }

  else
  {
    v10 = *(v24 + 8);
    v11 = v24 + 8;
    v10(v33, v31);
    v6 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    v27(v15, v26 + *(v6 + 20), v31);
    v7 = v35;
    v37 = 1;
    sub_151C0();
    v12 = v7;
    v13 = v7;
    if (v7)
    {
      v9[1] = v13;
    }

    v10(v15, v31);
    return (*(v18 + 8))(v23, v30);
  }
}

unint64_t sub_FAFC()
{
  v2 = qword_1C4C8;
  if (!qword_1C4C8)
  {
    sub_3920(&qword_1C248, &qword_15C30);
    sub_FBA4();
    sub_FC38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_FBA4()
{
  v2 = qword_1C4D0;
  if (!qword_1C4D0)
  {
    sub_3920(&qword_1C3D8, &unk_15E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_FC38()
{
  v2 = qword_1C4D8;
  if (!qword_1C4D8)
  {
    sub_3920(&qword_1C3D8, &unk_15E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v35 = a1;
  v47 = 0;
  v24 = sub_14A4(&qword_1C248, &qword_15C30);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = &v9 - v27;
  v29 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v27);
  v30 = &v9 - v29;
  v31 = sub_14A4(&qword_1C4E0, &qword_15EA0);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v39 = &v9 - v34;
  v36 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v35);
  v38 = &v9 - v37;
  v47 = v3;
  v41 = v3[3];
  v42 = v3[4];
  sub_E23C(v3, v41);
  sub_F638();
  v4 = v40;
  sub_15200();
  v43 = v4;
  v44 = v4;
  if (v4)
  {
    v13 = v44;
    v14 = 0;
  }

  else
  {
    v19 = &v46;
    v46 = 0;
    v5 = sub_1017C();
    v6 = v43;
    v20 = v5;
    sub_15170();
    v21 = v6;
    v22 = v6;
    if (v6)
    {
      v12 = v22;
      (*(v32 + 8))(v39, v31);
      v13 = v12;
      v14 = 0;
    }

    else
    {
      v15 = *(v25 + 32);
      v16 = v25 + 32;
      v15(v38, v30, v24);
      v7 = v21;
      v45 = 1;
      sub_15170();
      v17 = v7;
      v18 = v7;
      if (!v7)
      {
        v15(v38 + *(v36 + 20), v28, v24);
        (*(v32 + 8))(v39, v31);
        sub_7A38(v38, v23);
        sub_E538(v35);
        return sub_7B6C(v38);
      }

      v11 = v18;
      (*(v32 + 8))(v39, v31);
      v13 = v11;
      v14 = 1;
    }
  }

  v10 = v14;
  v9 = v13;
  result = sub_E538(v35);
  if (v10)
  {
    return (*(v25 + 8))(v38, v24);
  }

  return result;
}

unint64_t sub_1017C()
{
  v2 = qword_1C4E8;
  if (!qword_1C4E8)
  {
    sub_3920(&qword_1C248, &qword_15C30);
    sub_FBA4();
    sub_FC38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4E8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_10224(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[3] = a2;

  v5[0] = sub_15040("_0", 2uLL, 1);
  v5[1] = v2;
  v4 = sub_15050();
  sub_E478(v5);

  return (v4 & 1) == 0;
}

unint64_t sub_10484()
{
  v2 = qword_1C4F0;
  if (!qword_1C4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10540(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_15040("buttonStackView", 0xFuLL, 1);
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = sub_15050();
  sub_E478(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_15040("storyView", 9uLL, 1);
  v11[1] = v3;
  v6 = sub_15050();
  sub_E478(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

BOOL sub_10748@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1031C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_107FC()
{
  v2 = qword_1C4F8;
  if (!qword_1C4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10904()
{
  v2 = qword_1C500;
  if (!qword_1C500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C500);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10980(char a1)
{
  if (a1)
  {
    return sub_15040("storyView", 9uLL, 1);
  }

  else
  {
    return sub_15040("buttonStackView", 0xFuLL, 1);
  }
}

uint64_t sub_10A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10540(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10AA8()
{
  v2 = qword_1C508;
  if (!qword_1C508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10B8C()
{
  v2 = qword_1C510;
  if (!qword_1C510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10C50()
{
  v2 = qword_1C518;
  if (!qword_1C518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C518);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriSocialConversationDataModels.encode(to:)(uint64_t a1)
{
  v36 = a1;
  v50 = 0;
  v49 = 0;
  v18 = sub_14A4(&qword_1C520, &qword_15EA8);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v22 = v6 - v21;
  v31 = 0;
  v23 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v25 = v6 - v24;
  v26 = sub_14A4(&qword_1C528, &qword_15EB0);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = v6 - v29;
  v32 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v34 = v6 - v33;
  v45 = type metadata accessor for SiriSocialConversationDataModels();
  v35 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v46 = v6 - v35;
  v37 = sub_14A4(&qword_1C530, &qword_15EB8);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v36);
  v41 = v6 - v40;
  v50 = v2;
  v49 = v1;
  v42 = v2[3];
  v43 = v2[4];
  sub_E23C(v2, v42);
  sub_10AA8();
  sub_15210();
  sub_77D0(v44, v46);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_7984(v46, v25);
    v10 = &v48;
    v48 = 1;
    sub_10C50();
    sub_15190();
    sub_113D4();
    v4 = v17;
    sub_151C0();
    v11 = v4;
    v12 = v4;
    if (!v4)
    {
      (*(v19 + 8))(v22, v18);
      sub_7B6C(v25);
      v13 = v11;
      goto LABEL_6;
    }

    v6[1] = v12;
    (*(v19 + 8))(v22, v18);
    sub_7B6C(v25);
    return (*(v38 + 8))(v41, v37);
  }

  else
  {
    sub_567C(v46, v34);
    v14 = &v47;
    v47 = 0;
    sub_107FC();
    sub_15190();
    sub_11454();
    v3 = v17;
    sub_151C0();
    v15 = v3;
    v16 = v3;
    if (!v3)
    {
      (*(v27 + 8))(v30, v26);
      sub_4F88(v34);
      v13 = v15;
LABEL_6:
      v9 = v13;
      return (*(v38 + 8))(v41, v37);
    }

    v7 = v16;
    (*(v27 + 8))(v30, v26);
    sub_4F88(v34);
    result = (*(v38 + 8))(v41, v37);
    v8 = v7;
  }

  return result;
}

uint64_t type metadata accessor for SiriSocialConversationDataModels()
{
  v1 = qword_1C620;
  if (!qword_1C620)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_113D4()
{
  v2 = qword_1C538;
  if (!qword_1C538)
  {
    type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_11454()
{
  v2 = qword_1C540;
  if (!qword_1C540)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C540);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriSocialConversationDataModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v74 = a1;
  v100 = 0;
  v60 = sub_14A4(&qword_1C548, &qword_15EC0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v64 = v19 - v63;
  v65 = sub_14A4(&qword_1C550, &qword_15EC8);
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v69 = v19 - v68;
  v70 = sub_14A4(&qword_1C558, &qword_15ED0);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v82 = v19 - v73;
  v75 = type metadata accessor for SiriSocialConversationDataModels();
  v76 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v74);
  v77 = v19 - v76;
  v78 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v79 = v19 - v78;
  v80 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v81 = v19 - v80;
  v100 = v6;
  v84 = v6[3];
  v85 = v6[4];
  sub_E23C(v6, v84);
  sub_10AA8();
  v7 = v83;
  sub_15200();
  v86 = v7;
  v87 = v7;
  if (v7)
  {
    v32 = v87;
  }

  else
  {
    v8 = sub_15180();
    v55 = &v95;
    v95 = v8;
    v54 = sub_14A4(&qword_1C560, &qword_15ED8);
    sub_12014();
    v96 = sub_150E0();
    v97 = v9;
    v98 = v10;
    v99 = v11;
    v56 = sub_14A4(&qword_1C570, &qword_15EE0);
    v57 = sub_1209C();
    sub_150B0();
    v58 = v94;
    if (v94 == 2)
    {
      goto LABEL_14;
    }

    v53 = v58;
    v47 = v58;
    v51 = v96;
    v48 = v97;
    v49 = v98;
    v50 = v99;
    swift_unknownObjectRetain();
    v90 = v51;
    v91 = v48;
    v92 = v49;
    v93 = v50;
    v52 = sub_150C0();
    swift_unknownObjectRelease();
    if ((v52 & 1) == 0)
    {
LABEL_14:
      v26 = 0;
      v30 = sub_15110();
      v24 = 1;
      v31 = swift_allocError();
      v29 = v17;
      v18 = sub_14A4(&qword_1C580, &qword_15EE8);
      v25 = v29 + *(v18 + 48);
      *v29 = v75;
      v27 = sub_15140();
      v28 = sub_15040("Invalid number of keys found, expected one.", 0x2BuLL, v24 & 1);
      sub_15100();
      (*(*(v30 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:));
      swift_willThrow();
      sub_12124(&v96);
      (*(v71 + 8))(v82, v70);
      v32 = v31;
    }

    else if (v47)
    {
      v37 = &v89;
      v89 = v47 & 1;
      sub_10C50();
      v14 = v86;
      sub_15130();
      v38 = v14;
      v39 = v14;
      if (v14)
      {
        v21 = v39;
        sub_12124(&v96);
        (*(v71 + 8))(v82, v70);
        v32 = v21;
      }

      else
      {
        v34 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
        sub_12150();
        v15 = v38;
        sub_15170();
        v35 = v15;
        v36 = v15;
        if (!v15)
        {
          swift_storeEnumTagMultiPayload();
          sub_121D0(v77, v81);
          (*(v61 + 8))(v64, v60);
          v40 = v35;
          goto LABEL_13;
        }

        v20 = v36;
        (*(v61 + 8))(v64, v60);
        sub_12124(&v96);
        (*(v71 + 8))(v82, v70);
        v32 = v20;
      }
    }

    else
    {
      v44 = &v88;
      v88 = v47 & 1;
      sub_107FC();
      v12 = v86;
      sub_15130();
      v45 = v12;
      v46 = v12;
      if (v12)
      {
        v23 = v46;
        sub_12124(&v96);
        (*(v71 + 8))(v82, v70);
        v32 = v23;
      }

      else
      {
        v41 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
        sub_12480();
        v13 = v45;
        sub_15170();
        v42 = v13;
        v43 = v13;
        if (!v13)
        {
          swift_storeEnumTagMultiPayload();
          sub_121D0(v79, v81);
          (*(v66 + 8))(v69, v65);
          v40 = v42;
LABEL_13:
          v33 = v40;
          sub_12124(&v96);
          (*(v71 + 8))(v82, v70);
          sub_77D0(v81, v59);
          sub_E538(v74);
          return sub_12358(v81);
        }

        v22 = v43;
        (*(v66 + 8))(v69, v65);
        sub_12124(&v96);
        (*(v71 + 8))(v82, v70);
        v32 = v22;
      }
    }
  }

  v19[1] = v32;
  return sub_E538(v74);
}

unint64_t sub_12014()
{
  v2 = qword_1C568;
  if (!qword_1C568)
  {
    sub_3920(&qword_1C560, &qword_15ED8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1209C()
{
  v2 = qword_1C578;
  if (!qword_1C578)
  {
    sub_3920(&qword_1C570, &qword_15EE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C578);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_12124(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_12150()
{
  v2 = qword_1C588;
  if (!qword_1C588)
  {
    type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C588);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_121D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriSocialConversationDataModels();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_14A4(&qword_1C248, &qword_15C30);
    v7 = *(*(v6 - 8) + 32);
    v7(a2, a1);
    v4 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    (v7)(a2 + *(v4 + 20), a1 + *(v4 + 20), v6);
  }

  else
  {
    v2 = sub_14A4(&qword_1C098, &qword_15980);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
    *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
    *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_12358(uint64_t a1)
{
  type metadata accessor for SiriSocialConversationDataModels();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_14A4(&qword_1C248, &qword_15C30);
    v5 = *(*(v6 - 8) + 8);
    v5(a1);
    v3 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    (v5)(a1 + *(v3 + 20), v6);
  }

  else
  {
    v1 = sub_14A4(&qword_1C098, &qword_15980);
    (*(*(v1 - 8) + 8))(a1);
    v2 = *(a1 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel() + 20) + 8);
  }

  return a1;
}

unint64_t sub_12480()
{
  v2 = qword_1C590;
  if (!qword_1C590)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12518()
{
  v2 = qword_1C598;
  if (!qword_1C598)
  {
    type metadata accessor for SiriSocialConversationDataModels.ButtonModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12610()
{
  v2 = qword_1C5A0;
  if (!qword_1C5A0)
  {
    type metadata accessor for SiriSocialConversationDataModels();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_126A8()
{
  v2 = qword_1C5A8;
  if (!qword_1C5A8)
  {
    type metadata accessor for SiriSocialConversationDataModels();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_12870()
{
  v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_12950(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_14A4(&qword_1C230, qword_15BB8);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_12AA0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_14A4(&qword_1C230, qword_15BB8);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_12BA0()
{
  v3 = sub_12C9C();
  if (v0 <= 0x3F)
  {
    v3 = sub_12D30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_12C9C()
{
  v4 = qword_1C6C0;
  if (!qword_1C6C0)
  {
    v3 = sub_14DB0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1C6C0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_12D30()
{
  v4 = qword_1C6C8;
  if (!qword_1C6C8)
  {
    v3 = sub_15010();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1C6C8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_12DE0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_12F48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_13190(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_14A4(&qword_1C098, &qword_15980);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_132E0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_14A4(&qword_1C098, &qword_15980);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_133E0()
{
  v2 = sub_13498();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_13498()
{
  v4 = qword_1C770;
  if (!qword_1C770)
  {
    sub_3920(&qword_1C1D0, &qword_15BA0);
    v3 = sub_14DB0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1C770);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1353C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_136A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_138DC(uint64_t a1, unsigned int a2)
{
  v6 = sub_14A4(&qword_1C248, &qword_15C30);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else
  {
    __break(1u);
  }

  return v3;
}

uint64_t sub_139C8(uint64_t a1, unsigned int a2, int a3)
{
  result = sub_14A4(&qword_1C248, &qword_15C30);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_13A8C()
{
  v2 = sub_13B30();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_13B30()
{
  v4 = qword_1C810;
  if (!qword_1C810)
  {
    sub_3920(&qword_1C3D8, &unk_15E00);
    v3 = sub_14DB0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1C810);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_13BD4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_13D3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_13F80(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_140D0(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_142E0()
{
  v2 = qword_1C840;
  if (!qword_1C840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14374()
{
  v2 = qword_1C848;
  if (!qword_1C848)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14408()
{
  v2 = qword_1C850;
  if (!qword_1C850)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1449C()
{
  v2 = qword_1C858;
  if (!qword_1C858)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14530()
{
  v2 = qword_1C860;
  if (!qword_1C860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_145C4()
{
  v2 = qword_1C868;
  if (!qword_1C868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14658()
{
  v2 = qword_1C870;
  if (!qword_1C870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_146EC()
{
  v2 = qword_1C878;
  if (!qword_1C878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14780()
{
  v2 = qword_1C880;
  if (!qword_1C880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14814()
{
  v2 = qword_1C888;
  if (!qword_1C888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_148A8()
{
  v2 = qword_1C890;
  if (!qword_1C890)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1493C()
{
  v2 = qword_1C898;
  if (!qword_1C898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_149D0()
{
  v2 = qword_1C8A0;
  if (!qword_1C8A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14A64()
{
  v2 = qword_1C8A8;
  if (!qword_1C8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14AF8()
{
  v2 = qword_1C8B0;
  if (!qword_1C8B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C8B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14B8C()
{
  v2 = qword_1C8B8;
  if (!qword_1C8B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14C20()
{
  v2 = qword_1C8C0;
  if (!qword_1C8C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C8C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_14CB4()
{
  v2 = qword_1C8C8;
  if (!qword_1C8C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1C8C8);
    return WitnessTable;
  }

  return v2;
}