uint64_t sub_1778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20AC(&qword_18608, &qword_10230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_4458(0x6E6F697461727564, 0xE800000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2140(*(a1 + 56) + 48 * v8, v30);
  sub_20AC(&qword_18610, &unk_FB60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v10 = v29;
  v11 = sub_4458(0x756F4372656D6974, 0xEA0000000000746ELL);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2140(*(a1 + 56) + 48 * v11, v30);
  if (swift_dynamicCast() & 1) != 0 && *(a1 + 16) && (v13 = v29, v14 = sub_4458(0xD000000000000018, 0x8000000000010B00), (v15) && (sub_2140(*(a1 + 56) + 48 * v14, v30), (swift_dynamicCast()) && *(a1 + 16) && (v16 = v29, v17 = sub_4458(0xD00000000000001ALL, 0x8000000000010B20), (v18) && (sub_2140(*(a1 + 56) + 48 * v17, v30), (swift_dynamicCast()))
  {
    v19 = v29;
    if (*(a1 + 16) && (v20 = sub_4458(0x65736E6F70736572, 0xEC00000065646F4DLL), (v21 & 1) != 0))
    {
      sub_2140(*(a1 + 56) + 48 * v20, v30);

      v22 = sub_F1CC();
      v23 = swift_dynamicCast();
      (*(*(v22 - 8) + 56))(v7, v23 ^ 1u, 1, v22);
    }

    else
    {

      v26 = sub_F1CC();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    }

    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
    v27 = type metadata accessor for TimeSuggestionExecutionParameters();
    sub_21A4(v7, a2 + *(v27 + 28));
    *(a2 + *(v27 + 32)) = v19;
    return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
  }

  else
  {
LABEL_16:

    v24 = type metadata accessor for TimeSuggestionExecutionParameters();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

uint64_t sub_1B34()
{
  v0 = sub_F29C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_F2AC();
  qword_18E80 = result;
  return result;
}

uint64_t sub_1B88()
{
  sub_20AC(&qword_18600, &unk_FB50);
  v0 = *(sub_F0DC() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_FB40;
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  sub_F0CC();
  result = sub_F0CC();
  qword_18E88 = v3;
  return result;
}

uint64_t sub_20AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for TimeSuggestionExecutionParameters()
{
  result = qword_18670;
  if (!qword_18670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18608, &qword_10230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_20AC(&qword_18608, &qword_10230);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_20AC(&qword_18608, &qword_10230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A4()
{
  sub_2438();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2438()
{
  if (!qword_18680)
  {
    sub_F1CC();
    v0 = sub_F74C();
    if (!v1)
    {
      atomic_store(v0, &qword_18680);
    }
  }
}

uint64_t sub_2490(uint64_t a1, int a2)
{
  LODWORD(v177) = a2;
  v3 = sub_20AC(&qword_18808, &qword_FCE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v167 = v155 - v5;
  v176 = sub_F40C();
  v169 = *(v176 - 8);
  v6 = v169[8];
  __chkstk_darwin(v176);
  v168 = (v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v175 = sub_F08C();
  *&v174 = *(v175 - 8);
  v8 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 40);
  v172 = *(a1 + 24);
  sub_53CC(a1, v172);
  if (qword_185B0 != -1)
  {
    swift_once();
  }

  v179 = v172;
  v180 = v10;
  sub_5554(v178);
  sub_F45C();
  v171 = v180;
  v170 = v179;
  *&v172 = sub_53CC(v178, v179);
  sub_20AC(&qword_18810, &qword_FCE8);
  v11 = sub_F28C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_FBC0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, enum case for DeviceType.iPhone(_:), v11);
  v17(v16 + v13, enum case for DeviceType.iPad(_:), v11);
  v17(v16 + 2 * v13, enum case for DeviceType.visionPro(_:), v11);
  v17(v16 + 3 * v13, enum case for DeviceType.mac(_:), v11);
  v192 = v170;
  v193 = v171;
  sub_5554(v191);
  sub_F44C();

  v18 = v193;
  v172 = v192;
  sub_53CC(v191, v192);
  v19 = v173;
  LOBYTE(v16) = v177;
  sub_C220(v177);
  sub_F07C();
  (*(v174 + 8))(v19, v175);
  v189 = v172;
  v190 = v18;
  sub_5554(v188);
  sub_F42C();

  v20 = v190;
  v174 = v189;
  sub_53CC(v188, v189);
  v21 = sub_4054(v16, &off_14A10);
  sub_20AC(&qword_18818, &qword_FCF0);
  v22 = *(sub_F38C() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v175 = xmmword_FBD0;
  *(v25 + 16) = xmmword_FBD0;
  if (v21)
  {
    sub_F3AC();
  }

  else
  {
    sub_F39C();
  }

  v186 = v174;
  v187 = v20;
  sub_5554(v185);
  sub_F47C();

  v26 = v187;
  v174 = v186;
  sub_53CC(v185, v186);
  v183 = v174;
  v184 = v26;
  sub_5554(v182);
  sub_F49C();

  v27 = v183;
  v28 = sub_53CC(v182, v183);
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TimeSuggestionsAssetProvider();
  v34 = swift_allocObject();
  v181[3] = v33;
  v181[4] = sub_550C(&qword_18820, v35, type metadata accessor for TimeSuggestionsAssetProvider);
  v181[0] = v34;
  sub_F43C();
  (*(v29 + 8))(v32, v27);
  v36 = v177;
  sub_5410(v181);
  sub_5410(v182);
  sub_5410(v185);
  sub_5410(v188);
  sub_5410(v191);
  sub_5410(v178);
  v37 = sub_C470(v36);
  if (v38)
  {
    v39 = v37;
    v40 = v38;
    v41 = *(a1 + 24);
    v42 = *(a1 + 40);
    v43 = sub_53CC(a1, v41);
    *&v174 = v155;
    v44 = *(v41 - 8);
    v45 = *(v44 + 64);
    __chkstk_darwin(v43);
    v47 = v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = sub_F26C();
    *&v179 = v48;
    *(&v179 + 1) = &protocol witness table for SiriSuggestions.IntentType;
    v49 = sub_5554(v178);
    *v49 = v39;
    v49[1] = v40;
    (*(*(v48 - 8) + 104))();
    sub_F41C();
    (*(v44 + 8))(v47, v41);
    v36 = v177;
    sub_5410(v178);
  }

  if (sub_C61C(v36))
  {
    v50 = *(a1 + 24);
    v51 = *(a1 + 40);
    v52 = sub_53CC(a1, v50);
    v53 = *(v50 - 8);
    v54 = *(v53 + 64);
    __chkstk_darwin(v52);
    v56 = v155 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F46C();

    (*(v53 + 8))(v56, v50);
  }

  if (sub_DA90(v36) == 0x547373696D736964 && v57 == 0xEC00000072656D69)
  {

LABEL_14:
    v59 = *(a1 + 24);
    v173 = *(a1 + 40);
    v60 = sub_53CC(a1, v59);
    *&v174 = v155;
    v61 = *(v59 - 8);
    v62 = *(v61 + 64);
    __chkstk_darwin(v60);
    v64 = v155 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_20AC(&qword_18830, &qword_FD00);
    v65 = sub_F2EC();
    v66 = *(v65 - 8);
    v67 = *(v66 + 72);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v175;
    (*(v66 + 104))(v69 + v68, enum case for DeliveryVehicle.assistantSuggestions(_:), v65);
    sub_F48C();

    (*(v61 + 8))(v64, v59);
    v36 = v177;
    goto LABEL_15;
  }

  v58 = sub_F7BC();

  if (v58)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (sub_DA90(v36) == 0x656D695441746573 && v70 == 0xE900000000000072)
  {

LABEL_19:
    v72 = *(a1 + 24);
    v171 = *(a1 + 32);
    *&v170 = sub_53CC(a1, v72);
    v173 = v155;
    v166 = v72;
    *&v172 = *(v72 - 8);
    v73 = *(v172 + 64);
    __chkstk_darwin(v170);
    v167 = v155 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v174 = sub_20AC(&qword_18840, &qword_FD08);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_FC00;
    if (qword_185C8 != -1)
    {
      swift_once();
    }

    v155[1] = qword_18E98;
    *(v75 + 32) = qword_18E98;
    v165 = sub_20AC(&qword_18830, &qword_FD00);
    v76 = sub_F2EC();
    v162 = v76;
    v77 = *(v76 - 8);
    v79 = *(v77 + 80);
    v80 = (v79 + 32) & ~v79;
    v156 = *(v77 + 72);
    v78 = v156;
    v163 = v80;
    v164 = v79;
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_FBE0;
    v82 = v81 + v80;
    v83 = *(v77 + 104);
    v161 = v83;
    v83(v82, enum case for DeliveryVehicle.assistantSuggestions(_:), v76);
    v160 = enum case for DeliveryVehicle.siriHelp(_:);
    (v83)(v82 + v78);
    v84 = v168;
    *v168 = v81;
    v159[0] = enum case for SignalContextProperties.deliveryVehicle(_:);
    v85 = v169;
    v86 = v169[13];
    v157 = v169 + 13;
    v158 = v86;
    v87 = v176;
    v86(v84);

    v89 = v166;
    v88 = v167;
    sub_F23C();

    v171 = v85[1];
    (v171)(v84, v87);
    (*(v172 + 8))(v88, v89);
    v90 = *(a1 + 24);
    *&v172 = *(a1 + 32);
    v91 = sub_53CC(a1, v90);
    v173 = v155;
    v92 = *(v90 - 8);
    v169 = v91;
    *&v170 = v92;
    v93 = *(v92 + 64);
    __chkstk_darwin(v91);
    v95 = v155 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_FC10;
    sub_F5AC();
    *(v96 + 32) = sub_F55C();
    *(v96 + 40) = sub_F57C();
    *(v96 + 48) = sub_F58C();
    v97 = v163;
    v98 = swift_allocObject();
    *(v98 + 16) = v175;
    v161(v98 + v97, v160, v162);
    *v84 = v98;
    v99 = v176;
    v158(v84, v159[0], v176);
    sub_F23C();

    (v171)(v84, v99);
    (*(v170 + 8))(v95, v90);
    goto LABEL_22;
  }

  v71 = sub_F7BC();

  if (v71)
  {
    goto LABEL_19;
  }

  if (sub_DA90(v36) == 0x616C416E41746573 && v111 == 0xEA00000000006D72)
  {

LABEL_30:
    v113 = *(a1 + 24);
    *&v172 = *(a1 + 32);
    v171 = sub_53CC(a1, v113);
    *&v174 = v155;
    v173 = *(v113 - 8);
    v114 = *(v173 + 8);
    __chkstk_darwin(v171);
    *&v170 = v155 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_20AC(&qword_18828, &qword_FCF8);
    v116 = *(sub_F31C() - 8);
    v117 = *(v116 + 72);
    v118 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    *(swift_allocObject() + 16) = v175;
    if (qword_185C0 != -1)
    {
      swift_once();
    }

    sub_F59C();
    v166 = sub_20AC(&qword_18830, &qword_FD00);
    v119 = sub_F2EC();
    v163 = v119;
    v120 = *(v119 - 8);
    v121 = *(v120 + 80);
    v157 = *(v120 + 72);
    v122 = v157;
    v123 = (v121 + 32) & ~v121;
    v164 = v123;
    v165 = v121;
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_FBE0;
    v125 = v124 + v123;
    v126 = *(v120 + 104);
    v162 = v126;
    v126(v125, enum case for DeliveryVehicle.assistantSuggestions(_:), v119);
    LODWORD(v161) = enum case for DeliveryVehicle.siriHelp(_:);
    (v126)(v122 + v125);
    v127 = v167;
    *v167 = v124;
    v160 = enum case for SignalContextProperties.deliveryVehicle(_:);
    v128 = v169;
    v129 = v169[13];
    v158 = (v169 + 13);
    *v159 = v129;
    v130 = v176;
    v129(v127);
    (v128[7])(v127, 0, 1, v130);
    *&v179 = type metadata accessor for SetAlarmAssistantConfigurator();
    *(&v179 + 1) = sub_550C(&qword_18838, 255, type metadata accessor for SetAlarmAssistantConfigurator);
    v131 = sub_5554(v178);
    *v131 = 0x616C416E41746573;
    v131[1] = 0xEA00000000006D72;
    v132 = enum case for ActionIdentifier.suggestionId(_:);
    v133 = sub_F32C();
    (*(*(v133 - 8) + 104))(v131, v132, v133);
    v134 = v170;
    sub_F22C();

    sub_55B8(v127);
    (*(v173 + 1))(v134, v113);
    sub_5410(v178);
    v135 = *(a1 + 24);
    v173 = *(a1 + 32);
    *&v172 = sub_53CC(a1, v135);
    *&v174 = v155;
    v136 = *(v135 - 8);
    v137 = *(v136 + 64);
    __chkstk_darwin(v172);
    v139 = v155 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_20AC(&qword_18840, &qword_FD08);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_FBF0;
    sub_F5AC();
    *(v140 + 32) = sub_F55C();
    *(v140 + 40) = sub_F57C();
    v141 = v164;
    v142 = swift_allocObject();
    *(v142 + 16) = v175;
    v162(v142 + v141, v161, v163);
    v143 = v168;
    *v168 = v142;
    v144 = v176;
    (*v159)(v143, v160, v176);
    sub_F23C();

    (v128[1])(v143, v144);
    (*(v136 + 8))(v139, v135);
    goto LABEL_22;
  }

  v112 = sub_F7BC();

  if (v112)
  {
    goto LABEL_30;
  }

  sub_2140(a1, v178);
  v145 = v179;
  v146 = sub_53CC(v178, v179);
  v147 = *(v145 - 8);
  v148 = *(v147 + 64);
  __chkstk_darwin(v146);
  v150 = v155 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_185F0 != -1)
  {
    swift_once();
  }

  v151 = qword_18EC0;
  if (*(qword_18EC0 + 16))
  {
    v152 = sub_44D0(v177);
    if (v153)
    {
      v154 = *(*(v151 + 56) + 8 * v152);
    }
  }

  sub_F24C();

  (*(v147 + 8))(v150, v145);
  sub_5410(v178);
LABEL_22:
  v100 = sub_CC58(v177);
  v101 = v100[2];
  if (v101)
  {
    v177 = v100;
    v102 = (v100 + 4);
    do
    {
      sub_545C(v102, v178);
      v103 = *(a1 + 24);
      v104 = *(a1 + 40);
      v105 = sub_53CC(a1, v103);
      v106 = *(v103 - 8);
      v107 = *(v106 + 64);
      __chkstk_darwin(v105);
      v109 = v155 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_F4AC();
      (*(v106 + 8))(v109, v103);
      sub_54B8(v178);
      v102 += 64;
      --v101;
    }

    while (v101);
  }
}

uint64_t sub_3C50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3D04;

  return (sub_4A60)(a1, a2);
}

uint64_t sub_3D04(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_3E34()
{
  v0 = sub_F20C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_20AC(&qword_18848, &unk_FD10) - 8) + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v19 - v9);
  (*(v1 + 104))(v4, enum case for SiriTimeAppBundleId.clockApp(_:), v0);
  v11 = sub_F1FC();
  v13 = v12;
  (*(v1 + 8))(v4, v0);
  *v10 = v11;
  v10[1] = v13;
  v14 = enum case for Image.appIcon(_:);
  v15 = sub_F53C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v10, v14, v15);
  v17 = *(v16 + 56);
  v17(v10, 0, 1, v15);
  v17(v8, 1, 1, v15);
  return sub_F54C();
}

BOOL sub_4054(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE900000000000072;
    v9 = 0x656D695441746573;
    switch(*v4)
    {
      case 1:
        v9 = 0x616C416E41746573;
        v8 = 0xEA00000000006D72;
        break;
      case 2:
        v9 = 0xD000000000000010;
        v8 = 0x8000000000010A60;
        break;
      case 3:
        v11 = 1633972341;
        goto LABEL_13;
      case 4:
        v9 = 0xD000000000000010;
        v8 = 0x8000000000010A80;
        break;
      case 5:
        v9 = 0x656D695474616877;
        v8 = 0xEC00000074497349;
        break;
      case 6:
        v9 = 0x72656D6954746573;
        v8 = 0xEC000000746E6948;
        break;
      case 7:
        v9 = 0x547373696D736964;
        v8 = 0xEC00000072656D69;
        break;
      case 8:
        v12 = 0x686372616573;
        goto LABEL_20;
      case 9:
        v12 = 0x6574656C6564;
LABEL_20:
        v9 = v12 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v13 = 7497069;
        goto LABEL_21;
      case 0xA:
        v8 = 0xEA00000000007265;
        v9 = 0x6D69547465736572;
        break;
      case 0xB:
        v10 = 0x686372616573;
        goto LABEL_14;
      case 0xC:
        v11 = 1701602660;
LABEL_13:
        v10 = v11 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_14:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
        v13 = 7172705;
LABEL_21:
        v8 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      default:
        break;
    }

    v14 = 0x656D695441746573;
    v15 = 0xE900000000000072;
    switch(a1)
    {
      case 1:
        v15 = 0xEA00000000006D72;
        if (v9 == 0x616C416E41746573)
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      case 2:
        v15 = 0x8000000000010A60;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_46;
      case 3:
        v17 = 1633972341;
        goto LABEL_33;
      case 4:
        v15 = 0x8000000000010A80;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_46;
      case 5:
        v21 = 0x656D695474616877;
        v22 = 1950970697;
        goto LABEL_38;
      case 6:
        v21 = 0x72656D6954746573;
        v22 = 1953392968;
        goto LABEL_38;
      case 7:
        v21 = 0x547373696D736964;
        v22 = 1919249769;
LABEL_38:
        v15 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v21)
        {
          goto LABEL_2;
        }

        goto LABEL_46;
      case 8:
        v18 = 0x686372616573;
        goto LABEL_44;
      case 9:
        v18 = 0x6574656C6564;
LABEL_44:
        v19 = v18 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v20 = 7497069;
        goto LABEL_45;
      case 10:
        v15 = 0xEA00000000007265;
        v14 = 0x6D69547465736572;
        goto LABEL_41;
      case 11:
        v16 = 0x686372616573;
        goto LABEL_34;
      case 12:
        v17 = 1701602660;
LABEL_33:
        v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_34:
        v19 = v16 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
        v20 = 7172705;
LABEL_45:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 == v19)
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      default:
LABEL_41:
        if (v9 != v14)
        {
          goto LABEL_2;
        }

LABEL_46:
        if (v8 != v15)
        {
LABEL_2:
          v5 = sub_F7BC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

unint64_t sub_4458(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_F7CC();
  sub_F6DC();
  v6 = sub_F7DC();

  return sub_4558(a1, a2, v6);
}

unint64_t sub_44D0(char a1)
{
  v3 = *(v1 + 40);
  sub_F7CC();
  sub_DA90(a1);
  sub_F6DC();

  v4 = sub_F7DC();

  return sub_4610(a1, v4);
}

unint64_t sub_4558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_F7BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4610(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000072;
      v8 = 0x656D695441746573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x616C416E41746573;
          v7 = 0xEA00000000006D72;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000010A60;
          break;
        case 3:
          v10 = 1633972341;
          goto LABEL_11;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000010A80;
          break;
        case 5:
          v8 = 0x656D695474616877;
          v7 = 0xEC00000074497349;
          break;
        case 6:
          v8 = 0x72656D6954746573;
          v7 = 0xEC000000746E6948;
          break;
        case 7:
          v8 = 0x547373696D736964;
          v7 = 0xEC00000072656D69;
          break;
        case 8:
          v11 = 0x686372616573;
          goto LABEL_18;
        case 9:
          v11 = 0x6574656C6564;
LABEL_18:
          v8 = v11 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
          v12 = 7497069;
          goto LABEL_19;
        case 0xA:
          v7 = 0xEA00000000007265;
          v8 = 0x6D69547465736572;
          break;
        case 0xB:
          v9 = 0x686372616573;
          goto LABEL_12;
        case 0xC:
          v10 = 1701602660;
LABEL_11:
          v9 = v10 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
          v12 = 7172705;
LABEL_19:
          v7 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        default:
          break;
      }

      v13 = 0x656D695441746573;
      v14 = 0xE900000000000072;
      switch(a1)
      {
        case 1:
          v14 = 0xEA00000000006D72;
          if (v8 == 0x616C416E41746573)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        case 2:
          v14 = 0x8000000000010A60;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 3:
          v16 = 1633972341;
          goto LABEL_31;
        case 4:
          v14 = 0x8000000000010A80;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 5:
          v20 = 0x656D695474616877;
          v21 = 1950970697;
          goto LABEL_36;
        case 6:
          v20 = 0x72656D6954746573;
          v21 = 1953392968;
          goto LABEL_36;
        case 7:
          v20 = 0x547373696D736964;
          v21 = 1919249769;
LABEL_36:
          v14 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v20)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 8:
          v17 = 0x686372616573;
          goto LABEL_42;
        case 9:
          v17 = 0x6574656C6564;
LABEL_42:
          v18 = v17 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
          v19 = 7497069;
          goto LABEL_43;
        case 10:
          v14 = 0xEA00000000007265;
          v13 = 0x6D69547465736572;
          goto LABEL_39;
        case 11:
          v15 = 0x686372616573;
          goto LABEL_32;
        case 12:
          v16 = 1701602660;
LABEL_31:
          v15 = v16 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_32:
          v18 = v15 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
          v19 = 7172705;
LABEL_43:
          v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 == v18)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        default:
LABEL_39:
          if (v8 != v13)
          {
            goto LABEL_45;
          }

LABEL_44:
          if (v7 == v14)
          {

            return v4;
          }

LABEL_45:
          v22 = sub_F7BC();

          if (v22)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_4A60(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_F68C();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_4B20, 0, 0);
}

uint64_t sub_4B20()
{
  v1 = v0[16];
  sub_F21C();
  v2 = sub_F67C();
  v3 = sub_F71C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&def_5140, v2, v3, "TimeSuggestionsOwnerDefinitionFactory createOwnerDefinitions", v4, 2u);
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];

  (*(v6 + 8))(v5, v7);
  if (qword_185A8 != -1)
  {
    swift_once();
  }

  v8 = v0[12];
  v9 = qword_18E80;
  v0[5] = sub_F29C();
  v0[6] = sub_550C(&qword_187F0, 255, &type metadata accessor for DomainOwner);
  v0[2] = v9;

  v14 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_4D44;
  v12 = v0[13];

  return v14(v0 + 2);
}

uint64_t sub_4D44(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(v2 + 144) = a1;

  sub_5410((v2 + 16));

  return _swift_task_switch(sub_4E4C, 0, 0);
}

uint64_t sub_4E4C()
{
  v0 = 0;
  while (2)
  {
    v6 = *(&off_149E0 + v0++ + 32);
    sub_F76C(18);

    v2._countAndFlagsBits = 0x656D695441746573;
    v4 = 0xE900000000000072;
    switch(v6)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v2._countAndFlagsBits = 0x616C416E41746573;
        v4 = 0xEA00000000006D72;
        goto LABEL_5;
      case 2:
        v2._countAndFlagsBits = 0xD000000000000010;
        v4 = 0x8000000000010A60;
        goto LABEL_5;
      case 3:
        v7 = 1633972341;
        goto LABEL_13;
      case 4:
        v2._countAndFlagsBits = 0xD000000000000010;
        v4 = 0x8000000000010A80;
        goto LABEL_5;
      case 5:
        v2._countAndFlagsBits = 0x656D695474616877;
        v4 = 0xEC00000074497349;
        goto LABEL_5;
      case 6:
        v2._countAndFlagsBits = 0x72656D6954746573;
        v4 = 0xEC000000746E6948;
        goto LABEL_5;
      case 7:
        v2._countAndFlagsBits = 0x547373696D736964;
        v4 = 0xEC00000072656D69;
        goto LABEL_5;
      case 8:
        v8 = 0x686372616573;
        goto LABEL_19;
      case 9:
        v8 = 0x6574656C6564;
LABEL_19:
        v2._countAndFlagsBits = v8 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v3 = 7497069;
        goto LABEL_4;
      case 10:
        v4 = 0xEA00000000007265;
        v2._countAndFlagsBits = 0x6D69547465736572;
        goto LABEL_5;
      case 11:
        v1 = 0x686372616573;
        goto LABEL_3;
      case 12:
        v7 = 1701602660;
LABEL_13:
        v1 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_3:
        v2._countAndFlagsBits = v1 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
        v3 = 7172705;
LABEL_4:
        v4 = (v3 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
LABEL_5:
        v5 = v14[18];
        v2._object = v4;
        sub_F6EC(v2);

        *(swift_task_alloc() + 16) = v6;
        sub_F51C();

        if (v0 != 13)
        {
          continue;
        }

        v9 = v14[18];
        v10 = v14[16];
        v14[10] = &type metadata for TimeSourceGenerator;
        v14[11] = sub_5378();
        sub_F50C();

        sub_5410(v14 + 7);
        sub_20AC(&qword_18800, &qword_FCD8);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_FBD0;
        sub_F52C();

        v12 = v14[1];

        return v12(v11);
      default:
        JUMPOUT(0);
    }
  }
}

unint64_t sub_5378()
{
  result = qword_187F8;
  if (!qword_187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187F8);
  }

  return result;
}

void *sub_53CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5410(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_550C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *sub_5554(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_55B8(uint64_t a1)
{
  v2 = sub_20AC(&qword_18808, &qword_FCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5624()
{
  v0 = sub_F68C();
  sub_8544(v0, qword_18850);
  sub_850C(v0, qword_18850);
  return sub_F21C();
}

void sub_5670(void *a1@<X8>)
{
  a1[3] = &type metadata for String;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t sub_5688(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      goto LABEL_17;
    }

    if (a3 != 4 || !a2)
    {
      goto LABEL_29;
    }

    if (a1 == 0xD00000000000005ELL && 0x80000000000105B0 == a2 || (sub_F7BC() & 1) != 0)
    {
LABEL_17:
      sub_F64C();
      goto LABEL_18;
    }

    if (a1 == 0xD00000000000005ELL && 0x80000000000106E0 == a2 || (sub_F7BC() & 1) != 0)
    {
      sub_F65C();
      goto LABEL_18;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    if (a3 == 1 && a2)
    {
      if (a1 == 0xD000000000000063 && 0x8000000000010740 == a2 || (sub_F7BC() & 1) != 0)
      {
        sub_F61C();
LABEL_18:

        return sub_F3EC();
      }

      if (a1 == 0xD000000000000063 && 0x80000000000107B0 == a2 || (sub_F7BC() & 1) != 0)
      {
LABEL_24:
        sub_F62C();
        goto LABEL_18;
      }
    }
  }

LABEL_29:

  return sub_F3DC();
}

uint64_t sub_58E4(uint64_t *a1, void *a2)
{
  sub_5D30(a2, &selRef_proposedTime, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_5970(uint64_t *a1, void *a2)
{
  sub_5D30(a2, &selRef_time, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_59FC(uint64_t *a1, void *a2)
{
  sub_5B80(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_5A7C(uint64_t *a1, id a2)
{
  v4 = [a2 label];
  if (v4)
  {
    v5 = v4;
    v6 = sub_F6BC();
    v8 = v7;

    a1[3] = &type metadata for String;
    *a1 = v6;
    a1[1] = v8;
    v9 = enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v9 = enum case for IntentParameter.ignore(_:);
  }

  v10 = sub_F30C();
  (*(*(v10 - 8) + 104))(a1, v9, v10);
  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_5B80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_F1EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 type];
  v9 = sub_F66C();
  if (v9 == sub_F66C())
  {
    v10 = [a1 label];
    if (!v10)
    {
      v16 = enum case for IntentParameter.ignore(_:);
      goto LABEL_6;
    }

    v11 = v10;
    sub_F73C();

    v12 = sub_F1DC();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    a2[3] = &type metadata for String;
    *a2 = v12;
    a2[1] = v14;
    v15 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v15 = &enum case for IntentParameter.ignore(_:);
  }

  v16 = *v15;
LABEL_6:
  v17 = sub_F30C();
  return (*(*(v17 - 8) + 104))(a2, v16, v17);
}

uint64_t sub_5D30@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_F04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = [a1 *a2];
  if (v14)
  {
    v15 = v14;
    sub_F02C();

    v16 = *(v7 + 32);
    v16(v13, v11, v6);
    a3[3] = v6;
    v17 = sub_5554(a3);
    v16(v17, v13, v6);
    v18 = enum case for IntentParameter.context(_:);
  }

  else
  {
    v18 = enum case for IntentParameter.ignore(_:);
  }

  v19 = sub_F30C();
  return (*(*(v19 - 8) + 104))(a3, v18, v19);
}

uint64_t sub_5EF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B8FC;

  return sub_83D4();
}

uint64_t sub_5FA0(uint64_t a1, void *a2)
{
  sub_F5BC();
  v4 = v11;
  v5 = v12;
  v6 = sub_53CC(v10, v11);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  v7 = sub_5554(v9);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  sub_7DAC(a1, a2);
  sub_F5DC();

  sub_5410(v9);
  return sub_5410(v10);
}

uint64_t sub_60BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_6118()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_614C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_3D04;

  return sub_8780(a2);
}

uint64_t sub_6224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_B8FC;

  return sub_9CDC(a2, a3);
}

uint64_t sub_62F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_B8FC;

  return sub_A954(a2, a3);
}

uint64_t sub_63C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B8FC;

  return sub_AD6C();
}

uint64_t sub_6494(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_B8FC;

  return sub_AEA4(a2);
}

uint64_t sub_68A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_F18C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_F04C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_F10C();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_F11C();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_F0EC();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();
  v18 = *(*(sub_20AC(&qword_18C98, &qword_101C0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v19 = sub_F0BC();
  v2[20] = v19;
  v20 = *(v19 - 8);
  v2[21] = v20;
  v21 = *(v20 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v22 = sub_F15C();
  v2[24] = v22;
  v23 = *(v22 - 8);
  v2[25] = v23;
  v24 = *(v23 + 64) + 15;
  v2[26] = swift_task_alloc();
  v25 = sub_F2EC();
  v2[27] = v25;
  v26 = *(v25 - 8);
  v2[28] = v26;
  v27 = *(v26 + 64) + 15;
  v2[29] = swift_task_alloc();
  v28 = sub_20AC(&qword_18C88, &qword_101B0);
  v2[30] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v30 = *(*(sub_20AC(&qword_18C90, &qword_101B8) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_6CB8, 0, 0);
}

uint64_t sub_6CB8()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[3];
  sub_F3BC();
  (*(v6 + 104))(v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_9C0C(v1, v3);
  sub_9C0C(v2, v3 + v8);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[34];
    v11 = v0[27];
    sub_AD0C(v0[33], &qword_18C90, &qword_101B8);
    sub_AD0C(v10, &qword_18C90, &qword_101B8);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_AD0C(v0[31], &qword_18C90, &qword_101B8);
LABEL_11:
      v36 = v0[2];
      v0[35] = *v36;
      v37 = v36[1];
      v0[36] = v37;
      v0[37] = swift_getObjectType();
      v38 = *(*(v37 + 8) + 8);
      v40 = sub_F70C();
      v0[38] = v40;
      v0[39] = v39;

      return _swift_task_switch(sub_70E0, v40, v39);
    }

    goto LABEL_6;
  }

  v12 = v0[27];
  sub_9C0C(v0[31], v0[32]);
  v13 = v9(v3 + v8, 1, v12);
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  if (v13 == 1)
  {
    v17 = v0[27];
    v18 = v0[28];
    sub_AD0C(v0[33], &qword_18C90, &qword_101B8);
    sub_AD0C(v14, &qword_18C90, &qword_101B8);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    sub_AD0C(v0[31], &qword_18C88, &qword_101B0);
    goto LABEL_7;
  }

  v45 = v0[31];
  v32 = v0[28];
  v31 = v0[29];
  v33 = v0[27];
  (*(v32 + 32))(v31, v3 + v8, v33);
  sub_B834(&qword_18CB0, &type metadata accessor for DeliveryVehicle);
  v34 = sub_F6AC();
  v35 = *(v32 + 8);
  v35(v31, v33);
  sub_AD0C(v15, &qword_18C90, &qword_101B8);
  sub_AD0C(v14, &qword_18C90, &qword_101B8);
  v35(v16, v33);
  sub_AD0C(v45, &qword_18C90, &qword_101B8);
  if (v34)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = v0[33];
  v19 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[29];
  v24 = v0[26];
  v26 = v0[22];
  v25 = v0[23];
  v28 = v0[18];
  v27 = v0[19];
  v41 = v0[15];
  v42 = v0[12];
  v43 = v0[9];
  v44 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_70E0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  sub_B87C();

  return _swift_task_switch(sub_714C, 0, 0);
}

uint64_t sub_714C()
{
  v1 = v0[22];
  v33 = v0[26];
  v35 = v0[21];
  v37 = v0[20];
  v39 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v32 = v0[10];
  sub_F13C();
  sub_F0AC();
  (*(v3 + 104))(v2, enum case for Calendar.MatchingPolicy.nextTime(_:), v4);
  (*(v7 + 104))(v5, enum case for Calendar.RepeatedTimePolicy.first(_:), v6);
  (*(v8 + 104))(v9, enum case for Calendar.SearchDirection.forward(_:), v32);
  sub_F12C();
  (*(v8 + 8))(v9, v32);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v10 = *(v35 + 8);
  v0[40] = v10;
  v0[41] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v37);
  v11 = (*(v35 + 48))(v39, 1, v37);
  v12 = v0[26];
  v13 = v0[19];
  if (v11 == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_AD0C(v13, &qword_18C98, &qword_101C0);
    v15 = v0[33];
    v14 = v0[34];
    v17 = v0[31];
    v16 = v0[32];
    v18 = v0[29];
    v19 = v0[26];
    v21 = v0[22];
    v20 = v0[23];
    v23 = v0[18];
    v22 = v0[19];
    v34 = v0[15];
    v36 = v0[12];
    v38 = v0[9];
    v40 = v0[6];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[9];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];
    (*(v0[21] + 32))(v0[23], v0[19], v0[20]);
    sub_F14C();
    sub_F0FC();
    (*(v28 + 8))(v27, v29);
    v30 = v0[38];
    v31 = v0[39];

    return _swift_task_switch(sub_74BC, v30, v31);
  }
}

uint64_t sub_74BC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  sub_768C(v0[9]);

  return _swift_task_switch(sub_752C, 0, 0);
}

uint64_t sub_752C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[29];
  v13 = v0[26];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[18];
  v16 = v0[19];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_768C(uint64_t a1)
{
  v2 = sub_F04C();
  v5[3] = v2;
  v3 = sub_5554(v5);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  sub_7C38(0x6D69546D72616C61, 0xE900000000000065, v5);
  return sub_5410(v5);
}

uint64_t sub_7744(uint64_t a1, uint64_t a2)
{
  v4 = sub_B834(&qword_18D98, type metadata accessor for SetAlarmAssistantConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t sub_77CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_F32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_7834(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_78D0;

  return sub_68A4(a1, a2);
}

uint64_t sub_78D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_79C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_3D04;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_7A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7B24;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_7B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_7C38(uint64_t a1, void *a2, void *a3)
{
  sub_F5BC();
  v6 = v17;
  v7 = v18;
  v8 = sub_53CC(v16, v17);
  v15[3] = v6;
  v15[4] = *(v7 + 8);
  v9 = sub_5554(v15);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  sub_7DAC(a1, a2);
  v10 = a3[3];
  v11 = sub_53CC(a3, v10);
  v14[3] = v10;
  v12 = sub_5554(v14);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  sub_F5EC();

  sub_5410(v14);
  sub_5410(v15);
  return sub_5410(v16);
}

unint64_t sub_7DAC(uint64_t a1, void *a2)
{
  sub_F76C(28);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_F6EC(v5);
  return 0xD00000000000001ALL;
}

uint64_t sub_7E2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7EF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_9C7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5410(v11);
  return v7;
}

unint64_t sub_7EF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8004(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_F77C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_8004(uint64_t a1, unint64_t a2)
{
  v4 = sub_8050(a1, a2);
  sub_8180(&off_14A68);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_8050(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_826C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_F77C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_F6FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_826C(v10, 0);
        result = sub_F75C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8180(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_82E0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_826C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_20AC(&qword_18CE8, &qword_101F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_82E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_20AC(&qword_18CE8, &qword_101F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_83F0()
{
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v1 = sub_F68C();
  sub_850C(v1, qword_18850);
  v2 = sub_F67C();
  v3 = sub_F72C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&def_5140, v2, v3, "[AlarmLabelResolver] No alarm label value directly assigned in context. Running the AlarmLabelResolver", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

uint64_t sub_850C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_8544(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_85A8(void *a1)
{
  [a1 timeIntervalSince1970];
  v2 = v1;
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v3 = sub_F68C();
  sub_850C(v3, qword_18850);
  v4 = sub_F67C();
  v5 = sub_F72C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&def_5140, v4, v5, "AlarmTimeResolver resolveParameter() called", v6, 2u);
  }

  sub_20AC(&qword_18CB8, &qword_101D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_FBD0;
  sub_20AC(&qword_18CF0, &qword_10200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FBD0;
  *(inited + 32) = 1935893875;
  v9 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = (floor(v2 / 3600.0) + 2.0) * 3600.0;
  v10 = sub_C11C(inited);
  swift_setDeallocating();
  sub_AD0C(v9, &qword_18CF8, &qword_10208);
  *(v7 + 56) = sub_20AC(&qword_18D00, &qword_10210);
  *(v7 + 32) = v10;
  return v7;
}

uint64_t sub_8780(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = sub_F2EC();
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = sub_20AC(&qword_18C88, &qword_101B0);
  v2[47] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v8 = *(*(sub_20AC(&qword_18C90, &qword_101B8) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v9 = sub_F18C();
  v2[52] = v9;
  v10 = *(v9 - 8);
  v2[53] = v10;
  v11 = *(v10 + 64) + 15;
  v2[54] = swift_task_alloc();
  v12 = *(*(sub_20AC(&qword_18C98, &qword_101C0) - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v13 = sub_F0BC();
  v2[57] = v13;
  v14 = *(v13 - 8);
  v2[58] = v14;
  v15 = *(v14 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v16 = *(*(sub_20AC(&qword_18CA0, &qword_101C8) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v17 = sub_F04C();
  v2[64] = v17;
  v18 = *(v17 - 8);
  v2[65] = v18;
  v19 = *(v18 + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return _swift_task_switch(sub_8A98, 0, 0);
}

uint64_t sub_8A98()
{
  v1 = v0[42];
  v2 = v1[3];
  v0[69] = v2;
  v0[70] = v1[4];
  v0[71] = sub_53CC(v1, v2);
  v3 = sub_F35C();
  v5 = v4;
  v0[72] = v3;
  v0[73] = v4;
  v0[74] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_F70C();

  return _swift_task_switch(sub_8B5C, v8, v7);
}

uint64_t sub_8B5C()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  sub_F5CC();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_8BE4, 0, 0);
}

uint64_t sub_8BE4()
{
  v78 = v0;
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  if (!v0[37])
  {
    sub_AD0C((v0 + 34), &qword_18CA8, &qword_101D0);
    v7 = *(v1 + 56);
    v7(v2, 1, 1, v3);
    goto LABEL_6;
  }

  v4 = v0[63];
  v5 = v0[64];
  v6 = swift_dynamicCast();
  v7 = *(v1 + 56);
  v7(v2, v6 ^ 1u, 1, v3);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    v14 = v0[63];
    v12 = &unk_18CA0;
    v13 = &unk_101C8;
    goto LABEL_7;
  }

  v8 = v0[57];
  v9 = v0[58];
  v10 = v0[56];
  (*(v0[65] + 32))(v0[68], v0[63], v0[64]);
  sub_F03C();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[56];
    (*(v0[65] + 8))(v0[68], v0[64]);
    v12 = &unk_18C98;
    v13 = &unk_101C0;
    v14 = v11;
LABEL_7:
    sub_AD0C(v14, v12, v13);
    v0[75] = v7;
    v15 = v0[71];
    v16 = v0[70];
    v17 = v0[69];
    v18 = v0[43];
    v19 = sub_F35C();
    v21 = v20;
    v0[76] = v19;
    v0[77] = v20;
    v0[78] = swift_getObjectType();
    v0[79] = *(v18 + 16);
    v0[80] = *(v18 + 24);
    v22 = *(*(v21 + 8) + 8);
    v24 = sub_F70C();

    return _swift_task_switch(sub_9290, v24, v23);
  }

  (*(v0[58] + 32))(v0[61], v0[56], v0[57]);
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v25 = v0[68];
  v26 = v0[67];
  v27 = v0[65];
  v28 = v0[64];
  v29 = sub_F68C();
  sub_850C(v29, qword_18850);
  (*(v27 + 16))(v26, v25, v28);
  v30 = sub_F67C();
  v31 = sub_F72C();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[67];
  v34 = v0[65];
  v35 = v0[64];
  if (v32)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v77 = v37;
    *v36 = 136315138;
    sub_B834(&qword_18CE0, &type metadata accessor for DateComponents);
    v38 = sub_F7AC();
    v40 = v39;
    v75 = *(v34 + 8);
    v75(v33, v35);
    v41 = sub_7E2C(v38, v40, &v77);

    *(v36 + 4) = v41;
    _os_log_impl(&def_5140, v30, v31, "AlarmTimeResolver found time value %s from IntentTransformer", v36, 0xCu);
    sub_5410(v37);
  }

  else
  {

    v75 = *(v34 + 8);
    v75(v33, v35);
  }

  v70 = v0[64];
  v72 = v0[68];
  v42 = v0[61];
  v43 = v0[58];
  v68 = v0[57];
  v44 = v0[53];
  v45 = v0[54];
  v65 = v0[52];
  sub_20AC(&qword_18CB8, &qword_101D8);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_FBD0;
  sub_20AC(&qword_18CC0, &qword_101E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FBE0;
  *(inited + 32) = 1935893875;
  *(inited + 40) = 0xE400000000000000;
  sub_F09C();
  *(inited + 48) = v48;
  *(inited + 72) = &type metadata for Double;
  strcpy((inited + 80), "dateFormatter");
  *(inited + 94) = -4864;
  sub_F17C();
  v49 = sub_F16C();
  v51 = v50;
  (*(v44 + 8))(v45, v65);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v49;
  *(inited + 104) = v51;
  v52 = sub_BF9C(inited);
  swift_setDeallocating();
  sub_20AC(&qword_18CC8, &qword_101E8);
  swift_arrayDestroy();
  v67 = v46;
  *(v46 + 56) = sub_20AC(&qword_18CD0, &qword_101F0);
  *(v46 + 32) = v52;
  (*(v43 + 8))(v42, v68);
  v75(v72, v70);
  v53 = v0[68];
  v54 = v0[67];
  v55 = v0[66];
  v57 = v0[62];
  v56 = v0[63];
  v59 = v0[60];
  v58 = v0[61];
  v60 = v0[59];
  v62 = v0[55];
  v61 = v0[56];
  v66 = v0[54];
  v69 = v0[51];
  v71 = v0[50];
  v73 = v0[49];
  v74 = v0[48];
  v76 = v0[46];

  v63 = v0[1];

  return v63(v67);
}

uint64_t sub_9290()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  sub_5FA0(*(v0 + 632), *(v0 + 640));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_9314, 0, 0);
}

uint64_t sub_9314()
{
  v94 = v0;
  v1 = v0[75];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[62];
  if (!v0[41])
  {
    sub_AD0C((v0 + 38), &qword_18CA8, &qword_101D0);
    v1(v4, 1, 1, v3);
    goto LABEL_6;
  }

  v5 = v0[62];
  v6 = v0[64];
  v7 = swift_dynamicCast();
  v1(v4, v7 ^ 1u, 1, v3);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
LABEL_6:
    v14 = v0[62];
    v12 = &unk_18CA0;
    v13 = &unk_101C8;
LABEL_7:
    sub_AD0C(v14, v12, v13);
    v16 = v0[50];
    v15 = v0[51];
    v18 = v0[47];
    v17 = v0[48];
    v19 = v0[44];
    v20 = v0[45];
    v21 = v0[42];
    v22 = v21[4];
    sub_53CC(v21, v21[3]);
    sub_F34C();
    (*(v20 + 104))(v16, enum case for DeliveryVehicle.siriAutoComplete(_:), v19);
    (*(v20 + 56))(v16, 0, 1, v19);
    v23 = *(v18 + 48);
    sub_9C0C(v15, v17);
    sub_9C0C(v16, v17 + v23);
    v24 = *(v20 + 48);
    if (v24(v17, 1, v19) == 1)
    {
      v25 = v0[51];
      v26 = v0[44];
      sub_AD0C(v0[50], &qword_18C90, &qword_101B8);
      sub_AD0C(v25, &qword_18C90, &qword_101B8);
      if (v24(v17 + v23, 1, v26) == 1)
      {
        sub_AD0C(v0[48], &qword_18C90, &qword_101B8);
LABEL_15:
        v90 = &_swiftEmptyArrayStorage;
        goto LABEL_22;
      }
    }

    else
    {
      v27 = v0[44];
      sub_9C0C(v0[48], v0[49]);
      v28 = v24(v17 + v23, 1, v27);
      v30 = v0[50];
      v29 = v0[51];
      v31 = v0[49];
      if (v28 != 1)
      {
        v91 = v0[48];
        v35 = v0[45];
        v36 = v0[46];
        v37 = v0[44];
        (*(v35 + 32))(v36, v17 + v23, v37);
        sub_B834(&qword_18CB0, &type metadata accessor for DeliveryVehicle);
        v38 = sub_F6AC();
        v39 = *(v35 + 8);
        v39(v36, v37);
        sub_AD0C(v30, &qword_18C90, &qword_101B8);
        sub_AD0C(v29, &qword_18C90, &qword_101B8);
        v39(v31, v37);
        sub_AD0C(v91, &qword_18C90, &qword_101B8);
        if (v38)
        {
          goto LABEL_15;
        }

LABEL_13:
        v34 = [objc_allocWithZone(NSDate) init];
        v90 = sub_85A8(v34);

        goto LABEL_22;
      }

      v32 = v0[44];
      v33 = v0[45];
      sub_AD0C(v0[50], &qword_18C90, &qword_101B8);
      sub_AD0C(v29, &qword_18C90, &qword_101B8);
      (*(v33 + 8))(v31, v32);
    }

    sub_AD0C(v0[48], &qword_18C88, &qword_101B0);
    goto LABEL_13;
  }

  v8 = v0[57];
  v9 = v0[58];
  v10 = v0[55];
  (*(v0[65] + 32))(v0[66], v0[62], v0[64]);
  sub_F03C();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[55];
    (*(v0[65] + 8))(v0[66], v0[64]);
    v12 = &unk_18C98;
    v13 = &unk_101C0;
    v14 = v11;
    goto LABEL_7;
  }

  (*(v0[58] + 32))(v0[60], v0[55], v0[57]);
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v40 = v0[59];
  v41 = v0[60];
  v42 = v0[57];
  v43 = v0[58];
  v44 = sub_F68C();
  sub_850C(v44, qword_18850);
  (*(v43 + 16))(v40, v41, v42);
  v45 = sub_F67C();
  v46 = sub_F72C();
  v47 = os_log_type_enabled(v45, v46);
  v49 = v0[58];
  v48 = v0[59];
  v50 = v0[57];
  if (v47)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v93 = v52;
    *v51 = 136315138;
    sub_B834(&qword_18CD8, &type metadata accessor for Date);
    v53 = sub_F7AC();
    v55 = v54;
    v88 = *(v49 + 8);
    v88(v48, v50);
    v56 = sub_7E2C(v53, v55, &v93);

    *(v51 + 4) = v56;
    _os_log_impl(&def_5140, v45, v46, "AlarmTimeResolver found override time value %s from context", v51, 0xCu);
    sub_5410(v52);
  }

  else
  {

    v88 = *(v49 + 8);
    v88(v48, v50);
  }

  v57 = v0[65];
  v83 = v0[64];
  v85 = v0[66];
  v58 = v0[60];
  v81 = v0[57];
  v59 = v0[53];
  v60 = v0[54];
  v92 = v0[52];
  sub_20AC(&qword_18CB8, &qword_101D8);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_FBD0;
  sub_20AC(&qword_18CC0, &qword_101E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FBE0;
  *(inited + 32) = 1935893875;
  *(inited + 40) = 0xE400000000000000;
  sub_F09C();
  *(inited + 48) = v63;
  *(inited + 72) = &type metadata for Double;
  strcpy((inited + 80), "dateFormatter");
  *(inited + 94) = -4864;
  sub_F17C();
  v64 = sub_F16C();
  v66 = v65;
  (*(v59 + 8))(v60, v92);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v64;
  *(inited + 104) = v66;
  v67 = sub_BF9C(inited);
  swift_setDeallocating();
  sub_20AC(&qword_18CC8, &qword_101E8);
  swift_arrayDestroy();
  *(v61 + 56) = sub_20AC(&qword_18CD0, &qword_101F0);
  v90 = v61;
  *(v61 + 32) = v67;
  v88(v58, v81);
  (*(v57 + 8))(v85, v83);
LABEL_22:
  v68 = v0[68];
  v69 = v0[67];
  v70 = v0[66];
  v72 = v0[62];
  v71 = v0[63];
  v74 = v0[60];
  v73 = v0[61];
  v75 = v0[59];
  v77 = v0[55];
  v76 = v0[56];
  v80 = v0[54];
  v82 = v0[51];
  v84 = v0[50];
  v86 = v0[49];
  v87 = v0[48];
  v89 = v0[46];

  v78 = v0[1];

  return v78(v90);
}

uint64_t sub_9C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18C90, &qword_101B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9CDC(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_F2EC();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = sub_20AC(&qword_18C88, &qword_101B0);
  v2[38] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v8 = *(*(sub_20AC(&qword_18C90, &qword_101B8) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_9E28, 0, 0);
}

uint64_t sub_9E28()
{
  v1 = v0[33];
  v2 = v1[4];
  sub_53CC(v1, v1[3]);
  v3 = sub_F35C();
  v5 = v4;
  v0[43] = v3;
  v0[44] = v4;
  v0[45] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_F70C();

  return _swift_task_switch(sub_9ED8, v8, v7);
}

uint64_t sub_9ED8()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  sub_F5CC();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_9F64, 0, 0);
}

uint64_t sub_9F64()
{
  v70 = v0;
  if (*(v0 + 240))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 256);
      if (qword_185B8 != -1)
      {
        swift_once();
      }

      v2 = sub_F68C();
      sub_850C(v2, qword_18850);
      v3 = sub_F67C();
      v4 = sub_F72C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v1;
        _os_log_impl(&def_5140, v3, v4, "[TimerDurationResolver] got duration value %f from IntentTransformer. Returning", v5, 0xCu);
      }

      sub_20AC(&qword_18CB8, &qword_101D8);
      v6 = swift_allocObject();
      v67 = xmmword_FBD0;
      v6[1] = xmmword_FBD0;
      sub_20AC(&qword_18CF0, &qword_10200);
LABEL_8:
      inited = swift_initStackObject();
      *(inited + 16) = v67;
      *(inited + 32) = 1935893875;
      v8 = inited + 32;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v1;
      v9 = sub_C11C(inited);
      swift_setDeallocating();
      sub_AD0C(v8, &qword_18CF8, &qword_10208);
      *(v6 + 7) = sub_20AC(&qword_18D00, &qword_10210);
      *(v6 + 4) = v9;
      goto LABEL_38;
    }
  }

  else
  {
    sub_AD0C(v0 + 216, &qword_18CA8, &qword_101D0);
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = v16[4];
  sub_53CC(v16, v16[3]);
  sub_F34C();
  (*(v15 + 104))(v11, enum case for DeliveryVehicle.siriAutoComplete(_:), v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  v18 = *(v13 + 48);
  sub_9C0C(v10, v12);
  sub_9C0C(v11, v12 + v18);
  v19 = *(v15 + 48);
  if (v19(v12, 1, v14) == 1)
  {
    v20 = *(v0 + 336);
    v21 = *(v0 + 280);
    sub_AD0C(*(v0 + 328), &qword_18C90, &qword_101B8);
    sub_AD0C(v20, &qword_18C90, &qword_101B8);
    if (v19(v12 + v18, 1, v21) == 1)
    {
      sub_AD0C(*(v0 + 312), &qword_18C90, &qword_101B8);
LABEL_37:
      v6 = &_swiftEmptyArrayStorage;
      goto LABEL_38;
    }

    goto LABEL_15;
  }

  v22 = *(v0 + 280);
  sub_9C0C(*(v0 + 312), *(v0 + 320));
  v23 = v19(v12 + v18, 1, v22);
  v25 = *(v0 + 328);
  v24 = *(v0 + 336);
  v26 = *(v0 + 320);
  if (v23 == 1)
  {
    v27 = *(v0 + 280);
    v28 = *(v0 + 288);
    sub_AD0C(*(v0 + 328), &qword_18C90, &qword_101B8);
    sub_AD0C(v24, &qword_18C90, &qword_101B8);
    (*(v28 + 8))(v26, v27);
LABEL_15:
    sub_AD0C(*(v0 + 312), &qword_18C88, &qword_101B0);
    goto LABEL_16;
  }

  v68 = *(v0 + 312);
  v55 = *(v0 + 288);
  v56 = *(v0 + 296);
  v57 = *(v0 + 280);
  (*(v55 + 32))(v56, v12 + v18, v57);
  sub_B834(&qword_18CB0, &type metadata accessor for DeliveryVehicle);
  v58 = sub_F6AC();
  v59 = *(v55 + 8);
  v59(v56, v57);
  sub_AD0C(v25, &qword_18C90, &qword_101B8);
  sub_AD0C(v24, &qword_18C90, &qword_101B8);
  v59(v26, v57);
  sub_AD0C(v68, &qword_18C90, &qword_101B8);
  if (v58)
  {
    goto LABEL_37;
  }

LABEL_16:
  v29 = *(v0 + 272);
  v30 = v29[4];
  sub_53CC(v29, v29[3]);
  v31 = sub_F2CC();
  if (*(v31 + 16) && (v32 = sub_4458(0x6E6F697461727564, 0xE800000000000000), (v33 & 1) != 0))
  {
    sub_2140(*(v31 + 56) + 48 * v32, v0 + 128);

    sub_20AC(&qword_18610, &unk_FB60);
    if (swift_dynamicCast())
    {
      v34 = *(v0 + 248);
      if (qword_185B8 != -1)
      {
        swift_once();
      }

      v35 = sub_F68C();
      sub_850C(v35, qword_18850);
      v36 = sub_F67C();
      v37 = sub_F72C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v34;
        _os_log_impl(&def_5140, v36, v37, "TimerDurationResolver.resolveParameter called with duration of %f", v38, 0xCu);
      }

      v39 = ceil(v34 / 300.0) * 300.0;
      if (v34 == v39)
      {
        v1 = v39 + 300.0;
      }

      else
      {
        v1 = v39;
      }

      sub_20AC(&qword_18CB8, &qword_101D8);
      v6 = swift_allocObject();
      v67 = xmmword_FBD0;
      v6[1] = xmmword_FBD0;
      sub_20AC(&qword_18CF0, &qword_10200);
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v40 = sub_F68C();
  sub_850C(v40, qword_18850);
  v41 = sub_F67C();
  v42 = sub_F72C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&def_5140, v41, v42, "Could not get duration from interaction.executionParameters", v43, 2u);
  }

  v44 = *(v0 + 272);

  sub_A8F0(v44, v0 + 176);
  v45 = sub_F67C();
  v46 = sub_F72C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v69 = v48;
    *v47 = 136315138;
    v49 = *(v0 + 208);
    sub_53CC((v0 + 176), *(v0 + 200));
    sub_F2CC();
    sub_20AC(&qword_18610, &unk_FB60);
    v50 = sub_F69C();
    v52 = v51;

    sub_5410((v0 + 176));
    v53 = sub_7E2C(v50, v52, &v69);

    *(v47 + 4) = v53;
    _os_log_impl(&def_5140, v45, v46, "interaction.executionParameters: %s", v47, 0xCu);
    sub_5410(v48);
  }

  else
  {

    sub_5410((v0 + 176));
  }

  sub_20AC(&qword_18CB8, &qword_101D8);
  v6 = swift_allocObject();
  v6[1] = xmmword_FBD0;
  v54 = sub_C11C(&off_14A90);
  sub_AD0C(&unk_14AB0, &qword_18CF8, &qword_10208);
  *(v6 + 7) = sub_20AC(&qword_18D00, &qword_10210);
  *(v6 + 4) = v54;
LABEL_38:
  v61 = *(v0 + 328);
  v60 = *(v0 + 336);
  v63 = *(v0 + 312);
  v62 = *(v0 + 320);
  v64 = *(v0 + 296);

  v65 = *(v0 + 8);

  return v65(v6);
}

uint64_t sub_A8F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A954(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = *(*(sub_20AC(&qword_18608, &qword_10230) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_F1CC();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_AA58, 0, 0);
}

uint64_t sub_AA58()
{
  v1 = v0[8];
  v2 = v1[4];
  sub_53CC(v1, v1[3]);
  v3 = sub_F2CC();
  if (*(v3 + 16) && (v4 = sub_4458(0x65736E6F70736572, 0xEC00000065646F4DLL), (v5 & 1) != 0))
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    sub_2140(*(v3 + 56) + 48 * v4, (v0 + 2));

    sub_20AC(&qword_18610, &unk_FB60);
    v9 = swift_dynamicCast();
    (*(v7 + 56))(v8, v9 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      v11 = v0[12];
      v10 = v0[13];
      v12 = v0[10];
      v13 = v0[11];
      (*(v13 + 32))(v10, v0[9], v12);
      sub_20AC(&qword_18CB8, &qword_101D8);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_FBD0;
      sub_F1AC();
      v15 = sub_F1BC();
      v16 = *(v13 + 8);
      v16(v11, v12);
      *(v14 + 56) = &type metadata for Bool;
      *(v14 + 32) = v15 & 1;
      v16(v10, v12);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = v0[10];
    v18 = v0[11];
    v19 = v0[9];

    (*(v18 + 56))(v19, 1, 1, v17);
  }

  sub_AD0C(v0[9], &qword_18608, &qword_10230);
  sub_20AC(&qword_18CB8, &qword_101D8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_FBD0;
  *(v14 + 56) = &type metadata for Bool;
  *(v14 + 32) = 0;
LABEL_7:
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[9];

  v23 = v0[1];

  return v23(v14);
}

uint64_t sub_AD0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_AD88()
{
  if (qword_185B8 != -1)
  {
    swift_once();
  }

  v1 = sub_F68C();
  sub_850C(v1, qword_18850);
  v2 = sub_F67C();
  v3 = sub_F72C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&def_5140, v2, v3, "[TimerLabelResolver] No timer label value directly assigned in context. Running the TimerLabelResolver", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

uint64_t sub_AEA4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(sub_20AC(&qword_18CA0, &qword_101C8) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_AF40, 0, 0);
}

uint64_t sub_AF40()
{
  v1 = v0[22];
  v2 = v1[3];
  v0[25] = v2;
  v0[26] = v1[4];
  v0[27] = sub_53CC(v1, v2);
  v3 = sub_F35C();
  v5 = v4;
  v0[28] = v3;
  v0[29] = v4;
  v0[30] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_F70C();

  return _swift_task_switch(sub_B000, v8, v7);
}

uint64_t sub_B000()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_F5CC();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_B084, 0, 0);
}

uint64_t sub_B084()
{
  v1 = v0[24];
  if (v0[5])
  {
    v2 = sub_F04C();
    v3 = swift_dynamicCast();
    v4 = *(v2 - 8);
    (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
    if ((*(v4 + 48))(v1, 1, v2) != 1)
    {
      sub_AD0C(v0[24], &qword_18CA0, &qword_101C8);
      v5 = v0[24];

      v6 = v0[1];

      return v6(&_swiftEmptyArrayStorage);
    }
  }

  else
  {
    sub_AD0C((v0 + 2), &qword_18CA8, &qword_101D0);
    v8 = sub_F04C();
    (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  }

  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[25];
  v12 = v0[23];
  sub_AD0C(v0[24], &qword_18CA0, &qword_101C8);
  v13 = sub_F35C();
  v15 = v14;
  v0[31] = v13;
  v0[32] = v14;
  v0[33] = swift_getObjectType();
  v0[34] = *(v12 + 16);
  v0[35] = *(v12 + 24);
  v16 = *(*(v15 + 8) + 8);
  v18 = sub_F70C();

  return _swift_task_switch(sub_B2AC, v18, v17);
}

uint64_t sub_B2AC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_5FA0(*(v0 + 272), *(v0 + 280));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_B328, 0, 0);
}

uint64_t sub_B328()
{
  v19 = v0;
  if (*(v0 + 104))
  {
    sub_B620((v0 + 80), (v0 + 48));
    if (qword_185B8 != -1)
    {
      swift_once();
    }

    v1 = sub_F68C();
    sub_850C(v1, qword_18850);
    sub_9C7C(v0 + 48, v0 + 112);
    v2 = sub_F67C();
    v3 = sub_F72C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v18 = v5;
      *v4 = 136315138;
      sub_9C7C(v0 + 112, v0 + 144);
      v6 = sub_F6CC();
      v8 = v7;
      sub_5410((v0 + 112));
      v9 = sub_7E2C(v6, v8, &v18);

      *(v4 + 4) = v9;
      _os_log_impl(&def_5140, v2, v3, "AlarmRepeatScheduleResolver found override value %s from context", v4, 0xCu);
      sub_5410(v5);
    }

    else
    {

      sub_5410((v0 + 112));
    }

    sub_20AC(&qword_18CB8, &qword_101D8);
    v14 = swift_allocObject();
    v14[1] = xmmword_FBD0;
    sub_B620((v0 + 48), v14 + 2);
  }

  else
  {
    sub_AD0C(v0 + 80, &qword_18CA8, &qword_101D0);
    if (qword_185B8 != -1)
    {
      swift_once();
    }

    v10 = sub_F68C();
    sub_850C(v10, qword_18850);
    v11 = sub_F67C();
    v12 = sub_F72C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&def_5140, v11, v12, "[AlarmRepeatScheduleResolver] No alarmRepeatSchedule value directly assigned in context. Running the AlarmRepeatScheduleResolver", v13, 2u);
    }

    v14 = &_swiftEmptyArrayStorage;
  }

  v15 = *(v0 + 192);

  v16 = *(v0 + 8);

  return v16(v14);
}

_OWORD *sub_B620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B644(uint64_t a1, uint64_t a2)
{
  v4 = sub_F32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_F32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SetAlarmAssistantConfigurator()
{
  result = qword_18D60;
  if (!qword_18D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B780()
{
  result = sub_F32C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B87C()
{
  v1[3] = &type metadata for String;
  strcpy(v1, "everyMorning");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  sub_7C38(0xD000000000000013, 0x8000000000010E80, v1);
  return sub_5410(v1);
}

unint64_t sub_B91C()
{
  result = qword_18DA0;
  if (!qword_18DA0)
  {
    sub_F2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DA0);
  }

  return result;
}

uint64_t sub_B980(uint64_t a1, uint64_t *a2)
{
  sub_F5AC();
  v3 = sub_F2DC();
  v6[3] = v3;
  v6[4] = sub_B91C();
  v4 = sub_5554(v6);
  (*(*(v3 - 8) + 104))(v4, enum case for CoreSignalTypes.app(_:), v3);
  result = sub_F56C();
  *a2 = result;
  return result;
}

uint64_t sub_BA40()
{
  sub_F5AC();
  result = sub_F58C();
  qword_18EA8 = result;
  return result;
}

uint64_t sub_BA74()
{
  sub_F5AC();
  result = sub_F55C();
  qword_18EB0 = result;
  return result;
}

uint64_t sub_BAA8()
{
  sub_F5AC();
  result = sub_F57C();
  qword_18EB8 = result;
  return result;
}

uint64_t sub_BADC()
{
  sub_20AC(&qword_18DA8, &qword_10330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10310;
  *(inited + 32) = 0;
  sub_20AC(&qword_18840, &qword_FD08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10320;
  if (qword_185C8 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = qword_18E98;
  v2 = qword_185D8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = qword_18EA8;
  v3 = qword_185E0;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v1 + 48) = qword_18EB0;
  v4 = qword_185E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_18EB8;
  *(v1 + 56) = qword_18EB8;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_FC10;
  v7 = qword_185C0;

  if (v7 != -1)
  {
    swift_once();
    v5 = qword_18EB8;
  }

  v8 = qword_18E90;
  *(v6 + 32) = qword_18E90;
  *(v6 + 40) = v5;
  v9 = qword_18EB0;
  *(v6 + 48) = qword_18EB0;
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_FC10;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  *(v10 + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 3;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_FC00;
  *(v11 + 32) = v8;
  *(inited + 88) = v11;
  *(inited + 96) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_FC10;
  v13 = qword_185D0;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
    v9 = qword_18EB0;
  }

  v14 = qword_18EA0;
  *(v12 + 32) = qword_18EA0;
  *(v12 + 40) = v9;
  v15 = qword_18EA8;
  *(v12 + 48) = qword_18EA8;
  *(inited + 104) = v12;
  *(inited + 112) = 5;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_FC10;
  *(v16 + 32) = v14;
  *(v16 + 40) = v9;
  *(v16 + 48) = v15;
  *(inited + 120) = v16;
  *(inited + 128) = 6;
  *(inited + 136) = &_swiftEmptyArrayStorage;
  *(inited + 144) = 7;
  *(inited + 152) = &_swiftEmptyArrayStorage;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v17 = sub_BEA8(inited);
  swift_setDeallocating();
  sub_20AC(&qword_18DB0, &qword_10338);
  result = swift_arrayDestroy();
  qword_18EC0 = v17;
  return result;
}

unint64_t sub_BEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20AC(&qword_18DB8, &qword_10340);
    v3 = sub_F78C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_44D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_BF9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20AC(&qword_18DC0, &qword_10348);
    v3 = sub_F78C();
    v4 = a1 + 32;

    while (1)
    {
      sub_C0AC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_4458(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_B620(&v15, (v3[7] + 32 * result));
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

uint64_t sub_C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18CC8, &qword_101E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_C11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20AC(&qword_18DC8, &unk_10350);
    v3 = sub_F78C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4458(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_C220(unsigned __int8 a1)
{
  v2 = sub_F08C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = AFSystemRootDirectory();
  sub_F6BC();

  sub_F05C();

  sub_F06C();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_F76C(19);
  v12 = 0x6F6C466D72616C41;
  if (((1 << a1) & 0x180E) == 0)
  {
    v12 = 0x6F6C466B636F6C43;
  }

  if (((1 << a1) & 0x7C1) != 0)
  {
    v13 = 0xD000000000000017;
  }

  else
  {
    v13 = v12;
  }

  if (((1 << a1) & 0x7C1) != 0)
  {
    v14 = 0x8000000000010EF0;
  }

  else
  {
    v14 = 0xEF6E6967756C5077;
  }

  if (a1 <= 0xCu)
  {
    v15._countAndFlagsBits = v13;
  }

  else
  {
    v15._countAndFlagsBits = 0x6F6C466B636F6C43;
  }

  if (a1 <= 0xCu)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEF6E6967756C5077;
  }

  v15._object = v16;
  sub_F6EC(v15);

  v19._object = 0x8000000000010ED0;
  v19._countAndFlagsBits = 0xD000000000000011;
  sub_F6EC(v19);
  sub_F06C();

  return (v11)(v9, v2);
}

unint64_t sub_C470(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    v4 = 0xD000000000000069;
    if (a1 == 6)
    {
      v5 = 0xD000000000000064;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 3)
    {
      v5 = 0xD000000000000063;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    v6 = 0xD00000000000005ELL;
    v7 = 0xD000000000000063;
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 9u)
  {
    v8 = 0xD000000000000063;
    v9 = 0xD000000000000063;
    if (a1 != 12)
    {
      v9 = 0;
    }

    if (a1 != 11)
    {
      v8 = v9;
    }

    if (a1 == 10)
    {
      return 0xD00000000000005DLL;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v1 = 0xD00000000000005ELL;
    if (a1 == 9)
    {
      v2 = 0xD00000000000005ELL;
    }

    else
    {
      v2 = 0;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    if (a1 == 7)
    {
      return 0xD00000000000005FLL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_C61C(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 <= 5u)
  {
    if (a1 - 2 < 2)
    {
      sub_20AC(&qword_18830, &qword_FD00);
      v12 = sub_F2EC();
      v13 = *(v12 - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_FBE0;
      v16 = v1 + v15;
      v17 = *(v13 + 104);
      v17(v16, enum case for DeliveryVehicle.siriHelp(_:), v12);
      v17(v16 + v14, enum case for DeliveryVehicle.siriAutoComplete(_:), v12);
      return v1;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        sub_20AC(&qword_18830, &qword_FD00);
        v2 = sub_F2EC();
        v3 = *(v2 - 8);
        v4 = *(v3 + 72);
        v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_10360;
        v6 = v1 + v5;
        v7 = *(v3 + 104);
        v7(v6, enum case for DeliveryVehicle.siriHelp(_:), v2);
        v7(v6 + v4, enum case for DeliveryVehicle.siriAutoComplete(_:), v2);
        v7(v6 + 2 * v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v2);
      }

      return v1;
    }

    sub_20AC(&qword_18830, &qword_FD00);
    v26 = sub_F2EC();
    v27 = *(v26 - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBC0;
    v30 = v1 + v29;
    v31 = *(v27 + 104);
    v31(v30, enum case for DeliveryVehicle.siriHelp(_:), v26);
    v31(v30 + v28, enum case for DeliveryVehicle.assistantSuggestions(_:), v26);
    v31(v30 + 2 * v28, enum case for DeliveryVehicle.siriAutoComplete(_:), v26);
    v32 = 3 * v28;
LABEL_14:
    sub_F2FC();
    v31(v30 + v32, enum case for DeliveryVehicle.inApp(_:), v26);
    return v1;
  }

  if (a1 - 9 < 4)
  {
    sub_20AC(&qword_18830, &qword_FD00);
    v8 = sub_F2EC();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBD0;
    (*(v9 + 104))(v1 + v11, enum case for DeliveryVehicle.siriAutoComplete(_:), v8);
    return v1;
  }

  if (a1 == 8)
  {
    sub_20AC(&qword_18830, &qword_FD00);
    v26 = sub_F2EC();
    v33 = *(v26 - 8);
    v32 = *(v33 + 72);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBE0;
    v30 = v1 + v34;
    v31 = *(v33 + 104);
    v31(v30, enum case for DeliveryVehicle.siriAutoComplete(_:), v26);
    goto LABEL_14;
  }

  if (a1 == 6)
  {
    sub_20AC(&qword_18830, &qword_FD00);
    v18 = sub_F2EC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_FBE0;
    v22 = v1 + v21;
    v23 = enum case for SiriHintsMode.display(_:);
    v24 = sub_F25C();
    (*(*(v24 - 8) + 104))(v22, v23, v24);
    v25 = *(v19 + 104);
    v25(v22, enum case for DeliveryVehicle.siriHints(_:), v18);
    v25(v22 + v20, enum case for DeliveryVehicle.siriAutoComplete(_:), v18);
  }

  return v1;
}

void *sub_CC58(unsigned __int8 a1)
{
  v2 = sub_20AC(&qword_18DE8, &qword_10370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  result = &_swiftEmptyArrayStorage;
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      if (a1 - 4 < 2)
      {
        return result;
      }

      sub_20AC(&qword_18DF0, &unk_10378);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_FBE0;

      sub_20AC(&qword_18CA8, &qword_101D0);
      sub_F19C();
      sub_F62C();
      sub_F3EC();
      v26 = sub_F37C();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = sub_F36C();
      v30 = type metadata accessor for AlarmLabelResolver();
      v31 = swift_allocObject();
      *(v31 + 16) = 0x62614C6D72616C61;
      *(v31 + 24) = 0xEA00000000006C65;
      v57 = v30;
      v58 = sub_DA48(&qword_18DF8, type metadata accessor for AlarmLabelResolver);
      *&v56 = v31;
      sub_F014(&v56, v12 + 48);
      *(v12 + 32) = 0x62614C6D72616C61;
      *(v12 + 40) = 0xEA00000000006C65;
      *(v12 + 88) = v29;
      sub_F3FC();
      sub_5688(0xD000000000000063, 0x80000000000107B0, 1u);

      v32 = *(v26 + 48);
      v33 = *(v26 + 52);
      swift_allocObject();
      v21 = sub_F36C();
      v34 = type metadata accessor for AlarmTimeResolver();
      v35 = swift_allocObject();
      *(v35 + 16) = 0x6D69546D72616C61;
      *(v35 + 24) = 0xE900000000000065;
      v57 = v34;
      v58 = sub_DA48(&qword_18E00, type metadata accessor for AlarmTimeResolver);
      *&v56 = v35;
      sub_F014(&v56, v12 + 112);
      result = v12;
      v24 = 1701669236;
      v25 = 0xE400000000000000;
    }

    else
    {
      if (!a1)
      {
        sub_20AC(&qword_18DF0, &unk_10378);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_FBE0;

        sub_F3FC();
        sub_F64C();
        sub_F3EC();
        v41 = sub_F37C();
        v42 = *(v41 + 48);
        v43 = *(v41 + 52);
        swift_allocObject();
        v44 = sub_F36C();
        v45 = type metadata accessor for TimerDurationResolver();
        v46 = swift_allocObject();
        strcpy((v46 + 16), "timerDuration");
        *(v46 + 30) = -4864;
        v57 = v45;
        v58 = sub_DA48(&qword_18E20, type metadata accessor for TimerDurationResolver);
        *&v56 = v46;
        sub_F014(&v56, v12 + 48);
        *(v12 + 32) = 0x6E6F697461727564;
        *(v12 + 40) = 0xE800000000000000;
        *(v12 + 88) = v44;
        sub_20AC(&qword_18CA8, &qword_101D0);
        sub_F19C();
        sub_5688(0xD00000000000005ELL, 0x80000000000105B0, 4u);

        v47 = *(v41 + 48);
        v48 = *(v41 + 52);
        swift_allocObject();
        v21 = sub_F36C();
        v49 = type metadata accessor for TimerLabelResolver();
        v50 = swift_allocObject();
        *(v50 + 16) = 0x62614C72656D6974;
        *(v50 + 24) = 0xEA00000000006C65;
        v57 = v49;
        v58 = sub_DA48(&qword_18E08, type metadata accessor for TimerLabelResolver);
        *&v56 = v50;
        sub_F014(&v56, v12 + 112);
        result = v12;
        *(v12 + 96) = 0x62614C72656D6974;
        *(v12 + 104) = 0xEA00000000006C65;
        goto LABEL_15;
      }

      if (a1 != 1)
      {
        return result;
      }

      sub_20AC(&qword_18DF0, &unk_10378);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_FBE0;
      sub_F3FC();
      sub_5688(0xD000000000000063, 0x8000000000010740, 1u);

      v13 = sub_F37C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_F36C();
      v17 = type metadata accessor for AlarmTimeResolver();
      v18 = swift_allocObject();
      *(v18 + 16) = 0x6D69546D72616C61;
      *(v18 + 24) = 0xE900000000000065;
      v57 = v17;
      v58 = sub_DA48(&qword_18E00, type metadata accessor for AlarmTimeResolver);
      *&v56 = v18;
      sub_F014(&v56, v12 + 48);
      *(v12 + 32) = 1701669236;
      *(v12 + 40) = 0xE400000000000000;
      *(v12 + 88) = v16;

      sub_F3FC();
      sub_F3DC();
      v19 = *(v13 + 48);
      v20 = *(v13 + 52);
      swift_allocObject();
      v21 = sub_F36C();
      v22 = type metadata accessor for AlarmRepeatScheduleResolver();
      v23 = swift_allocObject();
      *(v23 + 16) = 0xD000000000000013;
      *(v23 + 24) = 0x8000000000010E80;
      v57 = v22;
      v58 = sub_DA48(&qword_18E18, type metadata accessor for AlarmRepeatScheduleResolver);
      *&v56 = v23;
      sub_F014(&v56, v12 + 112);
      result = v12;
      v24 = 0x6353746165706572;
      v25 = 0xEE00656C75646568;
    }

    *(v12 + 96) = v24;
    *(v12 + 104) = v25;
LABEL_15:
    *(v12 + 152) = v21;
    return result;
  }

  if (a1 <= 8u)
  {
    if (a1 == 6)
    {
      sub_20AC(&qword_18DF0, &unk_10378);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_FBD0;

      sub_F3FC();
      sub_F64C();
      sub_F3EC();
      v36 = sub_F37C();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v9 = sub_F36C();
      v39 = type metadata accessor for TimerDurationResolver();
      v40 = swift_allocObject();
      strcpy((v40 + 16), "timerDuration");
      *(v40 + 30) = -4864;
      v57 = v39;
      v58 = sub_DA48(&qword_18E20, type metadata accessor for TimerDurationResolver);
      *&v56 = v40;
      sub_F014(&v56, v5 + 48);
      result = v5;
      *(v5 + 32) = 0x6E6F697461727564;
      *(v5 + 40) = 0xE800000000000000;
    }

    else
    {
      sub_20AC(&qword_18DF0, &unk_10378);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_FBD0;
      if (a1 == 7)
      {

        sub_F3FC();
        sub_F3DC();
        v6 = sub_F37C();
        v7 = *(v6 + 48);
        v8 = *(v6 + 52);
        swift_allocObject();
        v9 = sub_F36C();
        v10 = type metadata accessor for DisplayOnlyResolver();
        v11 = swift_allocObject();
        strcpy((v11 + 16), "isDisplayOnly");
        *(v11 + 30) = -4864;
        v57 = v10;
        v58 = sub_DA48(&qword_18E10, type metadata accessor for DisplayOnlyResolver);
        *&v56 = v11;
        sub_F014(&v56, v5 + 48);
        result = v5;
        strcpy((v5 + 32), "isDisplayOnly");
        *(v5 + 46) = -4864;
      }

      else
      {
        sub_20AC(&qword_18CA8, &qword_101D0);
        sub_F19C();
        sub_5688(0xD00000000000005ELL, 0x80000000000106E0, 4u);

        v51 = sub_F37C();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v9 = sub_F36C();
        v54 = type metadata accessor for TimerLabelResolver();
        v55 = swift_allocObject();
        *(v55 + 16) = 0x62614C72656D6974;
        *(v55 + 24) = 0xEA00000000006C65;
        v57 = v54;
        v58 = sub_DA48(&qword_18E08, type metadata accessor for TimerLabelResolver);
        *&v56 = v55;
        sub_F014(&v56, v5 + 48);
        result = v5;
        *(v5 + 32) = 0x62614C72656D6974;
        *(v5 + 40) = 0xEA00000000006C65;
      }
    }

    *(v5 + 88) = v9;
  }

  return result;
}

uint64_t sub_D828(uint64_t *a1, id a2)
{
  v4 = [a2 alarm];
  if (v4 && (v5 = v4, v6 = [v4 label], v5, v6))
  {
    v7 = sub_F6BC();
    v9 = v8;

    a1[3] = &type metadata for String;
    *a1 = v7;
    a1[1] = v9;
    v10 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v10 = &enum case for IntentParameter.ignore(_:);
  }

  v11 = *v10;
  v12 = sub_F30C();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
  v13 = *(v2 + 8);

  return v13();
}

uint64_t sub_D94C(void *a1, id a2)
{
  [a2 type];
  v4 = sub_F66C();
  if (v4 == sub_F66C())
  {
    sub_F63C();
    a1[3] = &type metadata for Double;
    *a1 = v5;
    v6 = &enum case for IntentParameter.context(_:);
  }

  else
  {
    v6 = &enum case for IntentParameter.ignore(_:);
  }

  v7 = *v6;
  v8 = sub_F30C();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_DA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DA90(char a1)
{
  result = 0x656D695441746573;
  switch(a1)
  {
    case 1:
      return 0x616C416E41746573;
    case 2:
      return 0xD000000000000010;
    case 3:
      v4 = 1633972341;
      goto LABEL_10;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x656D695474616877;
    case 6:
      return 0x72656D6954746573;
    case 7:
      return 0x547373696D736964;
    case 8:
      v5 = 0x686372616573;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
    case 9:
      v5 = 0x6574656C6564;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
    case 10:
      return 0x6D69547465736572;
    case 11:
      v3 = 0x686372616573;
      goto LABEL_11;
    case 12:
      v4 = 1701602660;
LABEL_10:
      v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_DC3C()
{
  v0 = sub_F68C();
  sub_8544(v0, qword_18DD0);
  sub_850C(v0, qword_18DD0);
  return sub_F21C();
}

uint64_t sub_DC88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_DA90(*a1);
  v5 = v4;
  if (v3 == sub_DA90(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_F7BC();
  }

  return v8 & 1;
}

uint64_t sub_DD10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E4AC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_DD40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_DA90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_DD7C()
{
  v1 = *v0;
  sub_F7CC();
  sub_DA90(v1);
  sub_F6DC();

  return sub_F7DC();
}

uint64_t sub_DDE0()
{
  sub_DA90(*v0);
  sub_F6DC();
}

Swift::Int sub_DE34()
{
  v1 = *v0;
  sub_F7CC();
  sub_DA90(v1);
  sub_F6DC();

  return sub_F7DC();
}

uint64_t sub_DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3D04;

  return sub_E4F8(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for TimeSuggestion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeSuggestion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_E0C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_E0E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_E0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_E13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_E1B0()
{
  result = qword_18E28;
  if (!qword_18E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E28);
  }

  return result;
}

unint64_t sub_E208()
{
  result = qword_18E30;
  if (!qword_18E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E30);
  }

  return result;
}

unint64_t sub_E260()
{
  result = qword_18E38;
  if (!qword_18E38)
  {
    sub_E2C4(&qword_18E40, qword_104C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E38);
  }

  return result;
}

uint64_t sub_E2C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_E310()
{
  result = qword_18E48;
  if (!qword_18E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E48);
  }

  return result;
}

void *sub_E364(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_20AC(&qword_18E70, &qword_105B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20AC(&qword_18E78, &unk_105C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_E4AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_14AC8;
  v6._object = a2;
  v4 = sub_F79C(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a1;
  v3[23] = a3;
  v4 = sub_F5FC();
  v3[24] = v4;
  v5 = *(v4 - 8);
  v3[25] = v5;
  v6 = *(v5 + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = *(*(sub_20AC(&qword_18E50, &qword_10598) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for TimeSuggestionExecutionParameters();
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v10 = *(v9 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v11 = *(*(sub_20AC(&qword_18E58, &qword_105A0) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v12 = sub_F27C();
  v3[34] = v12;
  v13 = *(v12 - 8);
  v3[35] = v13;
  v14 = *(v13 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_E704, 0, 0);
}

uint64_t sub_E704()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v3 = v2[4];
  sub_53CC(v2, v2[3]);
  sub_F2BC();
  v4 = sub_F33C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 264);
  if (v6 != 1)
  {
    if ((*(v5 + 88))(v7, v4) != enum case for InteractionIntents.siriInteractionIntents(_:))
    {
      (*(v5 + 8))(*(v0 + 264), v4);
      goto LABEL_43;
    }

    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    v12 = *(v0 + 264);
    (*(v5 + 96))(v12, v4);
    v13 = *(v12 + *(sub_20AC(&qword_18E60, &qword_105A8) + 48));

    (*(v11 + 32))(v8, v12, v10);
    (*(v11 + 16))(v9, v8, v10);
    if ((*(v11 + 88))(v9, v10) != enum case for SiriSuggestions.Intent.inIntent(_:))
    {
      v39 = *(v0 + 288);
      v40 = *(v0 + 272);
      v41 = *(*(v0 + 280) + 8);
      v41(*(v0 + 296), v40);
      v41(v39, v40);
      goto LABEL_43;
    }

    v14 = *(v0 + 288);
    (*(*(v0 + 280) + 96))(v14, *(v0 + 272));
    v15 = *v14;
    sub_F64C();
    if (!swift_dynamicCastClass())
    {
      v45 = *(v0 + 296);
      v46 = *(v0 + 272);
      v47 = *(v0 + 280);

      (*(v47 + 8))(v45, v46);
      goto LABEL_43;
    }

    v68 = v15;
    v16 = 0;
    v17 = 0;
    v63 = *(v0 + 232);
    v18 = (*(v0 + 240) + 48);
    v19 = *(v0 + 200);
    v66 = (v19 + 8);
    v67 = (v19 + 104);
    v20 = &_swiftEmptyArrayStorage;
    v70 = *(v0 + 256);
    v69 = *(v0 + 248);
    v65 = *(v0 + 184);
    v64 = enum case for Objective.discoverability(_:);
    while (1)
    {
      v21 = v16;
      v22 = *(&off_14A10 + v17 + 32);
      v23 = v2[4];
      sub_53CC(*(v0 + 176), v2[3]);
      v24 = sub_F2CC();
      switch(v22)
      {
        case 6:
          v26 = *(v0 + 224);
          v25 = *(v0 + 232);
          sub_1778(v24, v26);
          if ((*v18)(v26, 1, v25) == 1)
          {
            v27 = *(v0 + 224);
            goto LABEL_14;
          }

          sub_EEE4(*(v0 + 224), *(v0 + 256));
          v30 = *(v0 + 256);
          if (*(v70 + 8))
          {
            goto LABEL_37;
          }

          v31 = *v30;
          sub_EF48(v30);
          if (v31 >= 120.0 && v31 < 1800.0)
          {
            goto LABEL_21;
          }

          goto LABEL_8;
        case 7:
          v28 = *(v0 + 232);
          v29 = *(v0 + 216);
          sub_1778(v24, v29);
          if ((*v18)(v29, 1, v28) == 1)
          {
            v27 = *(v0 + 216);
LABEL_14:
            sub_AD0C(v27, &qword_18E50, &qword_10598);
          }

          else
          {
            sub_EEE4(*(v0 + 216), *(v0 + 248));
            if (*(v69 + 16))
            {
              v30 = *(v0 + 248);
              if (!*(v69 + 8) && (*(v30 + *(v63 + 32)) & 1) != 0)
              {
                v37 = *v30;
                sub_EF48(v30);
                if (v37 >= 120.0 && v37 < 1800.0)
                {
LABEL_21:
                  v33 = *(v0 + 208);
                  v34 = *(v0 + 192);
                  v62 = *(v65 + 32);
                  sub_53CC(*(v0 + 184), *(v65 + 24));
                  (*v67)(v33, v64, v34);
                  sub_F4BC();

                  (*v66)(v33, v34);
                  sub_EFA4(v0 + 16, v0 + 96);
                  if (*(v0 + 120))
                  {
                    sub_F014((v0 + 96), v0 + 56);
                    sub_A8F0(v0 + 56, v0 + 136);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v20 = sub_E364(0, v20[2] + 1, 1, v20);
                    }

                    v36 = v20[2];
                    v35 = v20[3];
                    if (v36 >= v35 >> 1)
                    {
                      v20 = sub_E364((v35 > 1), v36 + 1, 1, v20);
                    }

                    sub_5410((v0 + 56));
                    sub_AD0C(v0 + 16, &qword_18E68, &qword_105B0);
                    v20[2] = v36 + 1;
                    sub_F014((v0 + 136), &v20[5 * v36 + 4]);
                  }

                  else
                  {
                    sub_AD0C(v0 + 16, &qword_18E68, &qword_105B0);
                    sub_AD0C(v0 + 96, &qword_18E68, &qword_105B0);
                  }
                }

                goto LABEL_8;
              }
            }

            else
            {
              v30 = *(v0 + 248);
            }

LABEL_37:
            sub_EF48(v30);
          }

LABEL_8:
          v16 = 1;
          v17 = 1;
          if (v21)
          {
            v42 = *(v0 + 296);
            v43 = *(v0 + 272);
            v44 = *(v0 + 280);

            (*(v44 + 8))(v42, v43);
            goto LABEL_48;
          }

          break;
        default:

          goto LABEL_8;
      }
    }
  }

  sub_AD0C(v7, &qword_18E58, &qword_105A0);
LABEL_43:
  if (qword_185F8 != -1)
  {
    swift_once();
  }

  v48 = sub_F68C();
  sub_850C(v48, qword_18DD0);
  v49 = sub_F67C();
  v50 = sub_F71C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&def_5140, v49, v50, "Current executing intent is not CreateTimerIntent. Not generating any suggestions", v51, 2u);
  }

  v20 = &_swiftEmptyArrayStorage;
LABEL_48:
  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  v55 = *(v0 + 256);
  v54 = *(v0 + 264);
  v56 = *(v0 + 248);
  v58 = *(v0 + 216);
  v57 = *(v0 + 224);
  v59 = *(v0 + 208);

  v60 = *(v0 + 8);

  return v60(v20);
}

uint64_t sub_EEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeSuggestionExecutionParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EF48(uint64_t a1)
{
  v2 = type metadata accessor for TimeSuggestionExecutionParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20AC(&qword_18E68, &qword_105B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F014(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}