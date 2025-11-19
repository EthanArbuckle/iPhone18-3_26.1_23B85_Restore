uint64_t sub_1E388E060()
{
  v22 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1E324FBDC();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1E41FFC94();
  v6 = sub_1E42067D4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1E3270FC8(v11, v10, &v21);
    _os_log_impl(&dword_1E323F000, v5, v6, "FlowcaseOverlayView::ScoreboardManager::unregistering from sportskit scoreboard updates [%s]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);

    (*(v15 + 8))(v14, v16);
  }

  v17 = sub_1E376DBD0();
  v18 = *v17;
  *(v0 + 88) = *v17;

  *(v0 + 112) = j__OUTLINED_FUNCTION_18() & 1;
  v19 = *v18;
  *(v0 + 96) = *(*v18 + 496);
  *(v0 + 104) = (v19 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E388E260, v18, 0);
}

uint64_t sub_1E388E260()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 96))(*(v0 + 32), &off_1F5D609E0, *(v0 + 16), *(v0 + 24), *(v0 + 112));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E388E2E0, v1, v2);
}

uint64_t sub_1E388E2E0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E388E340()
{
  sub_1E3280A90(0, &qword_1EE23B220);
  OUTLINED_FUNCTION_26_3();
  v1 = (*((*MEMORY[0x1E69E7D40] & v0) + 0x268))();
  v2 = OUTLINED_FUNCTION_3_24();

  return v2;
}

uint64_t sub_1E388E428()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 616))();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1E388ED3C(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E388E4E8(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 616))();
  if (!v4)
  {
    return 0;
  }

  result = sub_1E388ED3C(v4);
  if (!result)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v6 = *(result + 8 * a2 + 32);

    v7 = *(v6 + 16);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E388E5F4()
{
  sub_1E3280A90(0, &qword_1EE23B220);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x268))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABB6C(v2, v3, v4);

  return v5;
}

double sub_1E388E798(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1.0;
  }

  if (a1 == 1)
  {
    return -1.5;
  }

  if (a1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  return 3.0;
}

uint64_t sub_1E388E8CC()
{
  sub_1E3280A90(0, &qword_1EE23B220);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x268))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABC1C(v2, v3, v4);

  return v5;
}

BOOL sub_1E388E9C4()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v1 + 592))();
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*v0 & v2) + 0x268))();
  sub_1E377A8DC();
  v5 = v4;

  if (v5)
  {
    sub_1E388CF08(v5);
  }

  return v5 != 0;
}

void sub_1E388EAF4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E388CB80(v1);
  }
}

void sub_1E388EB58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E388CA64(0);
  }
}

unint64_t sub_1E388EBAC()
{
  result = qword_1EE23B4F0;
  if (!qword_1EE23B4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B4F0);
  }

  return result;
}

uint64_t sub_1E388EC10()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E388DF6C();
}

uint64_t sub_1E388ECA4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E388DC50();
}

uint64_t sub_1E388ED3C(void *a1)
{
  v2 = [a1 scores];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E388EDB8()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0();
  __asm { FMOV            V0.2D, #12.0 }

  v623 = v0;
  v573 = _Q0;
  if (*(v0 + 172) == 1)
  {
    v886 = xmmword_1E4296CE0;
    v939 = xmmword_1E4296C50;
    LOBYTE(v991) = 0;
    sub_1E3C2CC78();
    v728 = 0u;
    v781 = 0u;
    LOBYTE(v833) = 1;
    sub_1E3C2D7EC();
    sub_1E3C2DE50();
    sub_1E3C2E258();
    (*(**(v0 + 112) + 1656))();
    OUTLINED_FUNCTION_36();
    (*(v7 + 1656))();
    sub_1E3C6DC94();
    sub_1E3C6DE18();
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    sub_1E3C2CDD0();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2CE80();
    OUTLINED_FUNCTION_10_7();
    sub_1E3C2D150();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2D200();
    *(&v1361 + 1) = 0x4028000000000000;
    v1362 = v573;
    v1363 = 0;
    v1376 = xmmword_1E42A76A0;
    v1377 = xmmword_1E42A76B0;
    v1378 = 0;
    v1373 = xmmword_1E42A76A0;
    v1374 = xmmword_1E42A76B0;
    v1375 = 0;
    __asm { FMOV            V2.2D, #14.0 }

    v1370 = xmmword_1E42A76C0;
    v1371 = _Q2;
    v1372 = 0;
    v1367 = xmmword_1E42A76A0;
    v1368 = v573;
    v1369 = 0;
    type metadata accessor for UIEdgeInsets();
    v10 = sub_1E3C3DE00(v9);
    LOBYTE(v1359) = v1366;
    v18 = OUTLINED_FUNCTION_0_60(v10, v11, v12, v13, v14, v15, v16, v17, v413, v440, v467, v494, v521, v548, v573, *(&v573 + 1), v0, v649, v675, v701, v727, v754, v780, v807, v833, v859, v885, v912, v938, v965, v991, v1017, v1043, v1069, v1095, v1121, v1147, v1173, v1199, v1225, v1250, v1276, v1301, v1327, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1364, *(&v1364 + 1), v1365, *(&v1365 + 1), v1359, v1360, 0);
    sub_1E3C2FCB8(v18, v19);
    v28 = OUTLINED_FUNCTION_9_41(v20, v21, v22, v23, v24, v25, v26, v27, v414, v441, v468, v495, v522, v549, v574, v599, v624, v650, v676, v702, v729, v755, v782, v808, v834, v860, v887, v913, v940, v966, v992, v1018, v1044, v1070, v1096, v1122, v1148, v1174, v1200, v1226, v1251, v1277, v1302, v1328, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
    memcpy(v28, v29, 0xE9uLL);
    v30 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_2_55(v30, v31, v32, v33, v34, v35, v36, v37, v415, v442, v469, v496, v523, v550, v575, v600, v625, v651, v677, v703, v730, v756, v783, v809, v835, v861, v888, v914, v941, v967, v993, v1019, v1045, v1071, v1097, v1123, v1149, v1175, v1201, v1227, v1252, v1278, v1303, v1329, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
    sub_1E3C2FDFC();
    sub_1E39537A8();
    v889 = v38;
    v915 = v39;
    v942 = v40;
    v968 = v41;
    LOBYTE(v994) = 0;
    sub_1E3C2D7EC();
    v42 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
    v43 = *(v0 + 112);
    OUTLINED_FUNCTION_36();
    (*(v44 + 1656))();
    OUTLINED_FUNCTION_36();
    v45 = OUTLINED_FUNCTION_15_8();
    v46(v45);
    OUTLINED_FUNCTION_36();
    v47 = OUTLINED_FUNCTION_10_7();
    v48(v47);
    OUTLINED_FUNCTION_36();
    v49 = OUTLINED_FUNCTION_10_7();
    v50(v49);
    OUTLINED_FUNCTION_36();
    (*(v51 + 2008))(1);
    sub_1E3952C94();
    OUTLINED_FUNCTION_7_64(v52, v53, v54, v55);
    (*(v56 + 160))(&v1379);
    OUTLINED_FUNCTION_36();
    v57 = OUTLINED_FUNCTION_13_12();
    v58(v57);
    OUTLINED_FUNCTION_36();
    (*(v59 + 1984))(5);
    LOBYTE(v1376) = 22;
    LOBYTE(v1373) = 22;
    LOBYTE(v1370) = 22;
    LOBYTE(v1367) = 17;
    LOBYTE(v1364) = 19;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v1353) = v1357;
    OUTLINED_FUNCTION_8_40(&v1353, &v1361);
    LODWORD(v1376) = v1361;
    WORD2(v1376) = WORD2(v1361);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v60 + 1600))(&v1376, 48, v61 & 1, &qword_1F5D549D8);
    OUTLINED_FUNCTION_36();
    (*(v62 + 1792))(10);
    OUTLINED_FUNCTION_5_0();
    if (*(v1 + 172))
    {
      v63 = 0;
    }

    else
    {
      v63 = 2;
    }

    (*(*v43 + 1936))(v63);
    v64 = *sub_1E3E5FDEC();
    v65 = *(*v43 + 680);
    v66 = v64;
    v65(v64);
    v1 = v626;
    v67 = *(v626 + 120);
    OUTLINED_FUNCTION_36();
    (*(v68 + 1656))();
    OUTLINED_FUNCTION_36();
    v69 = OUTLINED_FUNCTION_15_8();
    v70(v69);
    OUTLINED_FUNCTION_36();
    v71 = OUTLINED_FUNCTION_10_7();
    v72(v71);
    OUTLINED_FUNCTION_36();
    v73 = OUTLINED_FUNCTION_10_7();
    v74(v73);
    OUTLINED_FUNCTION_36();
    (*(v75 + 2008))(1);
    LOBYTE(v1361) = 17;
    LOBYTE(v1376) = 17;
    LOBYTE(v1373) = 22;
    LOBYTE(v1370) = 3;
    LOBYTE(v1367) = 14;
    v76 = OUTLINED_FUNCTION_12_39();
    v77 = sub_1E3C3DE00(v76);
    v85 = OUTLINED_FUNCTION_3_53(v77, v78, v79, v80, v81, v82, v83, v84, v416, v443, v470, v497, v524, v551, v576, v601, v626, v652, v678, v704, v731, v757, v784, v810, v836, v862, v889, v915, v942, v968, v994, v1020, v1046, v1072, v1098, v1124, v1150, v1176, v1202, v1228, v1253, v1279, v1304, v1330, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1364);
    sub_1E3C2FCB8(v85, v86);
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v88 = *(v87 + 1600);
    v97 = OUTLINED_FUNCTION_5_57(v89, v90, v91, v92, v93, v94, v95, v96, v417, v444, v471, v498, v525, v552, v577, v602, v627, v653, v679, v705, v732, v758, v785, v811, v837, v863, v890, v916, v943, v969, v995, v1021, v1047, v1073, v1099, v1125, v1151, v1177, v1203, v1229, v1254, v1280, v1305, v1331, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
    v88(v97, 48);
    LOBYTE(v1361) = 5;
    LOBYTE(v1376) = 3;
    sub_1E3C2FC98();
    LOBYTE(v1370) = v1373;
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v1364) = v1367;
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v1353) = v1357;
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v1126) = v1204;
    sub_1E3C2FCB8(&v1361, &v1379);
    OUTLINED_FUNCTION_1_80();
    v98 = OUTLINED_FUNCTION_18();
    v106 = OUTLINED_FUNCTION_2_55(v98, v99, v100, v101, v102, v103, v104, v105, v418, v445, v472, v499, v526, v553, v578, v603, v628, v654, v680, v706, v733, v759, v786, v812, v838, v864, v891, v917, v944, v970, v996, v1022, v1048, v1074, v1100, v1126, v1152, v1178, v1204, v1230, v1255, v1281, v1306, v1332, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
    v88(v106, 55);
    LOBYTE(v1361) = 11;
    LOBYTE(v1376) = 5;
    LOBYTE(v1373) = 5;
    LOBYTE(v1370) = 5;
    LOBYTE(v1367) = 5;
    v107 = OUTLINED_FUNCTION_12_39();
    v108 = sub_1E3C3DE00(v107);
    LOBYTE(v1357) = v1364;
    v116 = OUTLINED_FUNCTION_0_60(v108, v109, v110, v111, v112, v113, v114, v115, v419, v446, v473, v500, v527, v554, v579, v604, v629, v655, v681, v707, v734, v760, v787, v813, v839, v865, v892, v918, v945, v971, v997, v1023, v1049, v1075, v1101, v1127, v1153, v1179, v1205, v1231, v1256, v1282, v1307, v1333, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
    sub_1E3C2FCB8(v116, v117);
    OUTLINED_FUNCTION_1_80();
    v118 = OUTLINED_FUNCTION_18();
    v126 = OUTLINED_FUNCTION_2_55(v118, v119, v120, v121, v122, v123, v124, v125, v420, v447, v474, v501, v528, v555, v580, v605, v630, v656, v682, v708, v735, v761, v788, v814, v840, v866, v893, v919, v946, v972, v998, v1024, v1050, v1076, v1102, v1128, v1154, v1180, v1206, v1232, v1257, v1283, v1308, v1334, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
    v88(v126, 54);
    v127 = *sub_1E3E5FD88();
    v128 = *(*v67 + 680);
    v129 = v127;
    v128(v127);
    sub_1E3952C94();
    OUTLINED_FUNCTION_7_64(v130, v131, v132, v133);
    (*(v134 + 160))(&v1379);
    OUTLINED_FUNCTION_36();
    v135 = OUTLINED_FUNCTION_13_12();
    v136(v135);
    OUTLINED_FUNCTION_36();
    (*(v137 + 1984))(5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_1E42A76D0;
  v139 = [objc_opt_self() blackColor];
  v140 = [v139 colorWithAlphaComponent_];

  *(v138 + 32) = v140;
  v141 = OUTLINED_FUNCTION_14_45();
  v142 = [v141 colorWithAlphaComponent_];

  *(v138 + 40) = v142;
  v143 = OUTLINED_FUNCTION_14_45();
  v144 = [v143 colorWithAlphaComponent_];

  *(v138 + 48) = v144;
  v145 = OUTLINED_FUNCTION_14_45();
  v146 = [v145 colorWithAlphaComponent_];

  *(v138 + 56) = v146;
  *(v138 + 64) = OUTLINED_FUNCTION_14_45();
  type metadata accessor for ViewGradientLayout();
  sub_1E40C2E40();
  sub_1E3C2E134();
  v147 = *sub_1E3E5FB0C();
  sub_1E3C2DE50();
  v148 = *sub_1E3E5FB88();
  sub_1E3C2E258();
  v149 = sub_1E3E61064();
  v150 = *(v149 + 1);
  v1379 = *v149;
  v1380 = v150;
  v1381 = 0;
  sub_1E3C2D7EC();
  v151 = *(v1 + 104);
  OUTLINED_FUNCTION_36();
  (*(v152 + 1808))(3);
  v153 = *sub_1E3E60A14();
  v154 = *(*v151 + 872);
  v155 = v153;
  v154(v153);
  OUTLINED_FUNCTION_36();
  v157 = *(v156 + 440);
  v158 = OUTLINED_FUNCTION_36_0();
  v421 = v159;
  v157(v158);
  v1379 = 0u;
  v1380 = 0u;
  v1381 = 1;
  v160 = *(*v151 + 560);
  v448 = *v151 + 560;
  v160(&v1379);
  OUTLINED_FUNCTION_36();
  v162 = *(v161 + 360);
  v163 = OUTLINED_FUNCTION_36_0();
  v162(v163);
  v475 = (*v151 + 160);
  v502 = *v475;
  (*v475)(&v1379);
  OUTLINED_FUNCTION_36();
  v165 = *(v164 + 312);
  v166 = OUTLINED_FUNCTION_36_0();
  v165(v166);
  OUTLINED_FUNCTION_36();
  (*(v167 + 1712))(1);
  v168 = *sub_1E3E5FB0C();
  v169 = *(*v151 + 776);
  v170 = v168;
  v169(v168);
  v171 = v623;
  OUTLINED_FUNCTION_5_0();
  __asm { FMOV            V0.2D, #10.0 }

  v529 = _Q0;
  if (*(v623 + 172) == 1)
  {
    v173 = sub_1E418A524();
    (v157)(*v173, 0);
    OUTLINED_FUNCTION_36();
    (*(v174 + 2240))(1);
    sub_1E39537A8();
    *&v1361 = v175;
    *(&v1361 + 1) = v176;
    *&v1362 = v177;
    *(&v1362 + 1) = v178;
    v1363 = 0;
    v160(&v1361);
    (v165)(0x4048000000000000, 0);
    v1376 = 0uLL;
    v1377 = v529;
    v1378 = 0;
    v502(&v1376);
  }

  else
  {
    (*(*v151 + 2240))(0);
    v160(&v1379);
    v179 = OUTLINED_FUNCTION_36_0();
    v162(v179);
    v502(&v1379);
    v180 = OUTLINED_FUNCTION_36_0();
    v165(v180);
  }

  v181 = *(v623 + 144);
  v1379 = xmmword_1E42A76E0;
  v1380 = xmmword_1E42A76E0;
  v1381 = 0;
  (*(*v181 + 160))(&v1379);
  v182 = [objc_opt_self() whiteColor];
  v183 = [v182 colorWithAlphaComponent_];

  (*(*v181 + 752))(v183);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();
  v185 = *(v184 + 2056);

  v186 = OUTLINED_FUNCTION_15_8();
  v185(v186);

  OUTLINED_FUNCTION_36();
  v188 = *(v187 + 2080);

  v189 = OUTLINED_FUNCTION_15_8();
  v188(v189);

  OUTLINED_FUNCTION_36();
  v191 = *(v190 + 2104);

  v192 = OUTLINED_FUNCTION_10_7();
  v191(v192);

  v193 = *(v623 + 128);
  OUTLINED_FUNCTION_36();
  v194 = OUTLINED_FUNCTION_15_8();
  v195(v194);
  OUTLINED_FUNCTION_36();
  v196 = OUTLINED_FUNCTION_10_7();
  v197(v196);
  OUTLINED_FUNCTION_36();
  v198 = OUTLINED_FUNCTION_10_7();
  v199(v198);
  LOBYTE(v1361) = 11;
  LOBYTE(v1376) = 10;
  LOBYTE(v1373) = 10;
  LOBYTE(v1370) = 10;
  LOBYTE(v1367) = 5;
  v200 = OUTLINED_FUNCTION_12_39();
  v201 = sub_1E3C3DE00(v200);
  LOBYTE(v1357) = v1364;
  v209 = OUTLINED_FUNCTION_0_60(v201, v202, v203, v204, v205, v206, v207, v208, v421, v448, v475, v502, v529, *(&v529 + 1), v573, *(&v573 + 1), v623, v649, v675, v701, v728, *(&v728 + 1), v781, *(&v781 + 1), v833, v859, v886, *(&v886 + 1), v939, *(&v939 + 1), v991, v1017, v1043, v1069, v1095, v1121, v1147, v1173, v1199, v1225, v1250, v1276, v1301, v1327, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  sub_1E3C2FCB8(v209, v210);
  OUTLINED_FUNCTION_1_80();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v212 = *(v211 + 1600);
  v221 = OUTLINED_FUNCTION_5_57(v213, v214, v215, v216, v217, v218, v219, v220, v422, v449, v476, v503, v530, v556, v581, v606, v631, v657, v683, v709, v736, v762, v789, v815, v841, v867, v894, v920, v947, v973, v999, v1025, v1051, v1077, v1103, v1129, v1155, v1181, v1207, v1233, v1258, v1284, v1309, v1335, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v222 = v212(v221, 54);
  LOBYTE(v1376) = 22;
  LOBYTE(v1373) = 22;
  LOBYTE(v1370) = 26;
  LOBYTE(v1367) = 17;
  LOBYTE(v1364) = 22;
  v230 = OUTLINED_FUNCTION_0_60(v222, v223, v224, v225, v226, v227, v228, v229, v423, v450, v477, v504, v531, v557, v582, v607, v632, v658, v684, v710, v737, v763, v790, v816, v842, v868, v895, v921, v948, v974, v1000, v1026, v1052, v1078, v1104, v1130, v1156, v1182, v1208, v1234, v1259, v1285, v1310, v1336, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, 21);
  OUTLINED_FUNCTION_8_40(v230, v231);
  OUTLINED_FUNCTION_1_80();
  v232 = OUTLINED_FUNCTION_18();
  v240 = OUTLINED_FUNCTION_2_55(v232, v233, v234, v235, v236, v237, v238, v239, v424, v451, v478, v505, v532, v558, v583, v608, v633, v659, v685, v711, v738, v764, v791, v817, v843, v869, v896, v922, v949, v975, v1001, v1027, v1053, v1079, v1105, v1131, v1157, v1183, v1209, v1235, v1260, v1286, v1311, v1337, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v212(v240, 48);
  v1361 = 0u;
  v1362 = 0u;
  v1363 = 1;
  v1376 = 0x4020000000000000uLL;
  v1377 = 0uLL;
  v1378 = 0;
  v1373 = 0x4020000000000000uLL;
  v1374 = 0uLL;
  v1375 = 0;
  v1370 = 0x402C000000000000uLL;
  v1371 = 0uLL;
  v1372 = 0;
  v1367 = 0x4024000000000000uLL;
  v1368 = 0uLL;
  v1369 = 0;
  v241 = *(MEMORY[0x1E69DDCE0] + 16);
  v1364 = *MEMORY[0x1E69DDCE0];
  v1365 = v241;
  v1366 = 0;
  type metadata accessor for UIEdgeInsets();
  v243 = v242;
  v251 = OUTLINED_FUNCTION_0_60(v242, v244, v245, v246, v247, v248, v249, v250, v425, v452, v479, v506, v533, v559, v584, v609, v634, v660, v686, v712, v739, v765, v792, v818, v844, v870, v897, v923, v950, v976, v1002, v1028, v1054, v1080, v1106, v1132, v1158, v1184, v1210, v1236, v1261, v1287, v1312, v1338, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  OUTLINED_FUNCTION_8_40(v251, v252);
  v261 = OUTLINED_FUNCTION_9_41(v253, v254, v255, v256, v257, v258, v259, v260, v426, v453, v480, v507, v534, v560, v585, v610, v635, v661, v687, v713, v740, v766, v793, v819, v845, v871, v898, v924, v951, v977, v1003, v1029, v1055, v1081, v1107, v1133, v1159, v1185, v1211, v1237, v1262, v1288, v1313, v1339, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  memcpy(v261, v262, 0xE9uLL);
  v263 = OUTLINED_FUNCTION_18();
  v271 = OUTLINED_FUNCTION_2_55(v263, v264, v265, v266, v267, v268, v269, v270, v427, v454, v481, v508, v535, v561, v586, v611, v636, v662, v688, v714, v741, v767, v794, v820, v846, v872, v899, v925, v952, v978, v1004, v1030, v1056, v1082, v1108, v1134, v1160, v1186, v1212, v1238, v1263, v1289, v1314, v1340, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v212(v271, 0);
  v272 = *sub_1E3E5FDEC();
  v273 = v171;
  v274 = *(*v193 + 680);
  v275 = v272;
  v274(v272);
  LOBYTE(v1361) = 11;
  LOBYTE(v1376) = 0;
  LOBYTE(v1373) = 0;
  LOBYTE(v1370) = 0;
  sub_1E3C3DE00(&unk_1F5D999E0);
  LOBYTE(v1364) = v1367;
  sub_1E3C3DE00(&unk_1F5D999E0);
  LOBYTE(v1353) = v1357;
  sub_1E3C2FCB8(&v1361, &v1379);
  OUTLINED_FUNCTION_1_80();
  v276 = OUTLINED_FUNCTION_18();
  v284 = OUTLINED_FUNCTION_2_55(v276, v277, v278, v279, v280, v281, v282, v283, v428, v455, v482, v509, v536, v562, v587, v612, v637, v663, v689, v715, v742, v768, v795, v821, v847, v873, v900, v926, v953, v979, v1005, v1031, v1057, v1083, v1109, v1135, v1161, v1187, v1213, v1239, v1264, v1290, v1315, v1341, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v212(v284, 23);
  OUTLINED_FUNCTION_36();
  v286 = *(v285 + 1936);
  v286(2);
  OUTLINED_FUNCTION_36();
  (*(v287 + 2008))(1);
  v288 = *sub_1E3E5FD88();
  v289 = *(*v193 + 872);
  v290 = v288;
  v289(v288);
  v286(2);
  v291 = *(v273 + 136);
  v1361 = v537;
  v1362 = 0uLL;
  v1363 = 0;
  v1376 = 0u;
  v1377 = 0u;
  v1378 = 1;
  v1373 = v588;
  v1374 = 0uLL;
  v1375 = 0;
  sub_1E3C2FC98();
  v1367 = v1370;
  v1368 = v1371;
  v1369 = v1372;
  v292 = OUTLINED_FUNCTION_12_39();
  sub_1E3C3DE00(v292);
  v1357 = v1364;
  v1358 = v1365;
  LOBYTE(v1359) = v1366;
  sub_1E3C3DE00(v243);
  v1214 = v1353;
  v1265 = v1354;
  LOBYTE(v1316) = v1355;
  sub_1E3C2FCB8(&v1361, &v1379);
  v301 = OUTLINED_FUNCTION_9_41(v293, v294, v295, v296, v297, v298, v299, v300, v429, v456, v483, v510, v537, *(&v537 + 1), v588, *(&v588 + 1), v638, v664, v690, v716, v743, v769, v796, v822, v848, v874, v901, v927, v954, v980, v1006, v1032, v1058, v1084, v1110, v1136, v1162, v1188, v1214, *(&v1214 + 1), v1265, *(&v1265 + 1), v1316, v1342, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  memcpy(v301, v302, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v311 = OUTLINED_FUNCTION_5_57(v303, v304, v305, v306, v307, v308, v309, v310, v430, v457, v484, v511, v538, v563, v589, v613, v639, v665, v691, v717, v744, v770, v797, v823, v849, v875, v902, v928, v955, v981, v1007, v1033, v1059, v1085, v1111, v1137, v1163, v1189, v1215, v1240, v1266, v1291, v1317, v1343, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v312(v311, 0);
  v313 = sub_1E3E5FDEC();
  v314 = *v313;
  v315 = *(*v291 + 680);
  v316 = *v313;
  v315(v314);
  v317 = *v313;
  v318 = *(*v291 + 872);
  v319 = v317;
  v318(v317);
  v320 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_36();
  (*(v321 + 752))();
  v322 = *(v273 + 152);
  *&v1361 = sub_1E3890B6C(26.0);
  BYTE8(v1361) = 0;
  *&v1376 = sub_1E3890B6C(26.0);
  BYTE8(v1376) = 0;
  *&v1373 = 0x4040000000000000;
  BYTE8(v1373) = 0;
  *&v1370 = 0x4038000000000000;
  BYTE8(v1370) = 0;
  *&v1367 = sub_1E3890B6C(20.0);
  BYTE8(v1367) = 0;
  v323 = MEMORY[0x1E69E7DE0];
  v324 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  BYTE8(v1357) = BYTE8(v1364);
  v332 = OUTLINED_FUNCTION_3_53(v324, v325, v326, v327, v328, v329, v330, v331, v431, v458, v485, v512, v539, v564, v590, v614, v640, v666, v692, v718, v745, v771, v798, v824, v850, v876, v903, v929, v956, v982, v1008, v1034, v1060, v1086, v1112, v1138, v1164, v1190, v1216, v1241, v1267, v1292, v1318, v1344, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1364);
  sub_1E3C2FCB8(v332, v333);
  v342 = OUTLINED_FUNCTION_9_41(v334, v335, v336, v337, v338, v339, v340, v341, v432, v459, v486, v513, v540, v565, v591, v615, v641, v667, v693, v719, v746, v772, v799, v825, v851, v877, v904, v930, v957, v983, v1009, v1035, v1061, v1087, v1113, v1139, v1165, v1191, v1217, v1242, v1268, v1293, v1319, v1345, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  memcpy(v342, v343, 0x59uLL);
  v344 = OUTLINED_FUNCTION_18();
  v345 = *(*v322 + 1600);
  v353 = OUTLINED_FUNCTION_5_57(v344, v346, v347, v348, v349, v350, v351, v352, v433, v460, v487, v514, v541, v566, v592, v616, v642, v668, v694, v720, v747, v773, v800, v826, v852, v878, v905, v931, v958, v984, v1010, v1036, v1062, v1088, v1114, v1140, v1166, v1192, v1218, v1243, v1269, v1294, v1320, v1346, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v345(v353, 6);
  *&v1361 = sub_1E3890B6C(26.0);
  BYTE8(v1361) = 0;
  *&v1376 = sub_1E3890B6C(26.0);
  BYTE8(v1376) = 0;
  *&v1373 = 0x4040000000000000;
  BYTE8(v1373) = 0;
  *&v1370 = 0x4038000000000000;
  BYTE8(v1370) = 0;
  *&v1367 = sub_1E3890B6C(20.0);
  BYTE8(v1367) = 0;
  v354 = sub_1E3C3DE00(v323);
  BYTE8(v1357) = BYTE8(v1364);
  v362 = OUTLINED_FUNCTION_3_53(v354, v355, v356, v357, v358, v359, v360, v361, v434, v461, v488, v515, v542, v567, v593, v617, v643, v669, v695, v721, v748, v774, v801, v827, v853, v879, v906, v932, v959, v985, v1011, v1037, v1063, v1089, v1115, v1141, v1167, v1193, v1219, v1244, v1270, v1295, v1321, v1347, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1364);
  sub_1E3C2FCB8(v362, v363);
  v372 = OUTLINED_FUNCTION_9_41(v364, v365, v366, v367, v368, v369, v370, v371, v435, v462, v489, v516, v543, v568, v594, v618, v644, v670, v696, v722, v749, v775, v802, v828, v854, v880, v907, v933, v960, v986, v1012, v1038, v1064, v1090, v1116, v1142, v1168, v1194, v1220, v1245, v1271, v1296, v1322, v1348, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  memcpy(v372, v373, 0x59uLL);
  v374 = OUTLINED_FUNCTION_18();
  v382 = OUTLINED_FUNCTION_2_55(v374, v375, v376, v377, v378, v379, v380, v381, v436, v463, v490, v517, v544, v569, v595, v619, v645, v671, v697, v723, v750, v776, v803, v829, v855, v881, v908, v934, v961, v987, v1013, v1039, v1065, v1091, v1117, v1143, v1169, v1195, v1221, v1246, v1272, v1297, v1323, v1349, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  v383 = (v345)(v382, 2);
  v1363 = 0;
  v1361 = 0u;
  v1362 = 0u;
  v1376 = 0x4024000000000000uLL;
  *&v1377 = 0;
  *(&v1377 + 1) = 0x402C000000000000;
  v1378 = 0;
  v1373 = 0x4028000000000000uLL;
  *&v1374 = 0;
  *(&v1374 + 1) = 0x402C000000000000;
  v1375 = 0;
  v1370 = 0x402C000000000000uLL;
  *&v1371 = 0;
  *(&v1371 + 1) = 0x402C000000000000;
  v1372 = 0;
  v1367 = 0x4028000000000000uLL;
  *&v1368 = 0;
  *(&v1368 + 1) = 0x4028000000000000;
  v1369 = 0;
  v1364 = 0x4028000000000000uLL;
  *&v1365 = 0;
  *(&v1365 + 1) = 0x4028000000000000;
  v1366 = 0;
  v391 = OUTLINED_FUNCTION_0_60(v383, v384, v385, v386, v387, v388, v389, v390, v437, v464, v491, v518, v545, v570, v596, v620, v646, v672, v698, v724, v751, v777, v804, v830, v856, v882, v909, v935, v962, v988, v1014, v1040, v1066, v1092, v1118, v1144, v1170, v1196, v1222, v1247, v1273, v1298, v1324, v1350, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, 0);
  OUTLINED_FUNCTION_8_40(v391, v392);
  v401 = OUTLINED_FUNCTION_9_41(v393, v394, v395, v396, v397, v398, v399, v400, v438, v465, v492, v519, v546, v571, v597, v621, v647, v673, v699, v725, v752, v778, v805, v831, v857, v883, v910, v936, v963, v989, v1015, v1041, v1067, v1093, v1119, v1145, v1171, v1197, v1223, v1248, v1274, v1299, v1325, v1351, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  memcpy(v401, v402, 0xE9uLL);
  v403 = OUTLINED_FUNCTION_18();
  v411 = OUTLINED_FUNCTION_2_55(v403, v404, v405, v406, v407, v408, v409, v410, v439, v466, v493, v520, v547, v572, v598, v622, v648, v674, v700, v726, v753, v779, v806, v832, v858, v884, v911, v937, v964, v990, v1016, v1042, v1068, v1094, v1120, v1146, v1172, v1198, v1224, v1249, v1275, v1300, v1326, v1352, v1353, *(&v1353 + 1), v1354, *(&v1354 + 1), v1355, v1356, v1357, *(&v1357 + 1), v1358, *(&v1358 + 1), v1359, v1360, v1361);
  return (v345)(v411, 0);
}

uint64_t sub_1E38905E0(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 172);
  *(v1 + 172) = a1;
  result = OUTLINED_FUNCTION_5_0();
  if (v3 != *(v1 + 172))
  {
    return sub_1E388EDB8();
  }

  return result;
}

uint64_t *sub_1E3890684(__int16 a1)
{
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v1 + 136) = sub_1E3BBB724();
  type metadata accessor for PlaybackStatusLayout();
  *(v1 + 144) = sub_1E3A70EBC(1);
  *(v1 + 152) = sub_1E3BD61D8();
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 172) = 0;
  *(v1 + 170) = a1;
  v3 = sub_1E3C2F9A0();

  sub_1E388EDB8();
  sub_1E3C37CBC(v3[13], 39);
  sub_1E3C37CBC(v3[18], 96);
  sub_1E3C37CBC(v3[14], 23);
  v4 = v3[15];
  sub_1E3C37CBC(v4, 15);
  sub_1E3C37CBC(v4, 16);
  sub_1E3C37CBC(v3[16], 17);
  sub_1E3C37CBC(v3[19], 40);
  sub_1E3C37CBC(v3[17], 67);

  return v3;
}

void sub_1E38907E8()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v0 + 112) = sub_1E383BCC0();
  *(v0 + 120) = sub_1E383BCC0();
  *(v0 + 128) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v0 + 136) = sub_1E3BBB724();
  type metadata accessor for PlaybackStatusLayout();
  *(v0 + 144) = sub_1E3A70EBC(1);
  *(v0 + 152) = sub_1E3BD61D8();
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 172) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E38908D0(uint64_t a1, void *a2, char a3)
{
  v4 = a1;
  sub_1E3C35CF4(a1, a2);
  v5 = sub_1E3890920(v4, a3);

  return sub_1E38905E0(v5);
}

BOOL sub_1E3890920(char a1, char a2)
{
  result = 0;
  if (a2 != 5)
  {
    sub_1E3890B18();
    if (sub_1E4205E84() & 1) != 0 && (sub_1E3A24FDC(a1))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E389099C()
{
}

uint64_t sub_1E38909F4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3890A54()
{
  v0 = sub_1E38909F4();

  return MEMORY[0x1EEE6BDC0](v0, 173, 7);
}

uint64_t sub_1E3890A84(char a1, uint64_t a2, char a3)
{
  v4 = sub_1E3890920(a1, a3);
  OUTLINED_FUNCTION_5_0();
  return (v4 ^ *(v3 + 172)) & 1;
}

unint64_t sub_1E3890B18()
{
  result = qword_1EE263D48[0];
  if (!qword_1EE263D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE263D48);
  }

  return result;
}

double sub_1E3890B6C(double a1)
{
  v3 = (*(*v1 + 1576))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 preferredContentSizeCategory];

    v6 = [objc_opt_self() defaultMetrics];
    sub_1E42067C4();
    a1 = v7;
  }

  return a1;
}

id (*sub_1E3890C74(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  [v1 contentSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_1E3890CC8;
}

id sub_1E3890CE0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseScrollView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return [v0 vui:0 layoutSubviews:v1 computationOnly:v2];
}

id sub_1E3890DAC()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_2_0();

  return [v2 v3];
}

id sub_1E3890DF8()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for BaseScrollView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3890E68(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseScrollView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3890EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3890F5C()
{
  *(v0 + 201) = 0;
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 208) = *MEMORY[0x1E69DDCE0];
  *(v0 + 224) = v1;
  v2 = sub_1E3BBB754();

  sub_1E3890FA8();

  return v2;
}

__n128 sub_1E3890FA8()
{
  sub_1E3952C78();
  v18[0] = v1;
  v18[1] = v2;
  v18[2] = v3;
  v18[3] = v4;
  LOBYTE(v18[4]) = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 1;
  sub_1E3952C78();
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = 0;
  type metadata accessor for UIEdgeInsets();
  v10 = v9;
  sub_1E3C2FC98();
  v31 = v34;
  v32 = v35;
  v33 = v36;
  sub_1E3C3DE00(v10);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  sub_1E3C3DE00(v10);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  sub_1E3C2FCB8(v18, __src);
  memcpy(v18, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();
  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);
  v11 = [objc_opt_self() clearColor];
  sub_1E3C2DE50();
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v12;
  LOBYTE(__src[2]) = 0;
  sub_1E3C2CC78();
  swift_beginAccess();
  __asm { FMOV            V0.2D, #25.0 }

  v0[13] = result;
  v0[14] = result;
  return result;
}

uint64_t sub_1E3891128()
{
  v0 = sub_1E3B20FDC();

  return MEMORY[0x1EEE6BDC0](v0, 240, 7);
}

unint64_t sub_1E389115C()
{
  result = qword_1EE2882C8;
  if (!qword_1EE2882C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextMenuButtonMenuStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E38912B0()
{
  if (TVAppFeature.isEnabled.getter(10))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960);
  }

  else
  {

    return type metadata accessor for CardCollectionViewCell();
  }
}

uint64_t sub_1E389130C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3294EE4(v1 + v3, a1, &qword_1ECF2C970);
}

uint64_t sub_1E3891370(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
  OUTLINED_FUNCTION_11_3();
  sub_1E37FA198(a1, v1 + v3, &qword_1ECF2C970);
  return swift_endAccess();
}

void sub_1E38913D8()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_3_54();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v3 + v4);
  v5;

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1E389147C()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  OUTLINED_FUNCTION_3();

  v9.origin.x = OUTLINED_FUNCTION_6();
  CGRectGetWidth(v9);
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_1_36();
  v3 = sub_1E3890DAC();
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    [v3 setClipsToBounds_];
  }

  v4 = &v3[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate];
  OUTLINED_FUNCTION_3_0();
  *(v4 + 1) = &off_1F5D60B98;
  swift_unknownObjectWeakAssign();
  [v1 setView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  v6 = sub_1E42001D4();
  v7 = MEMORY[0x1E69DC2B0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206944();

  swift_unknownObjectRelease();
}

void sub_1E3891668()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell];
    *&Strong[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell] = 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_36_18(1);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth] = 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 vuiView];

    if (v6)
    {
      [v6 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38917C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_vui_viewDidLayoutSubviews);
  if (![v1 view])
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for LayoutGrid();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_3_54();
  [swift_dynamicCastClassUnconditional() bounds];
  OUTLINED_FUNCTION_3();

  v29.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v29);
  sub_1E3A258E4(Width);
  sub_1E38913D8();
  v11 = v10;
  [v10 setContentInset_];

  if (!*&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 1072);

  v15 = v13(v14);
  v17 = v16;

  if (v17)
  {
    return;
  }

  MEMORY[0x1E6909190](v15, 0);
  sub_1E38913D8();
  v19 = v18;
  v20 = sub_1E41FE7E4();
  [v19 vui:v20 scrollToItemAtIndexPath:8 atScrollPosition:0 animated:?];

  v21 = OUTLINED_FUNCTION_53();
  v22(v21);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_1E3891AD0();
  sub_1E325F6F0(v6, &qword_1ECF309A0);
  if (!*&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_9:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_8();
  v24 = *(v23 + 1296);

  v24(v25);

  sub_1E3892B24();
  v26 = OUTLINED_FUNCTION_74();
  v27(v26);
}

void sub_1E3891AD0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v59 = v5;
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v58 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v56 - v20;
  v63 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
  if (!*&v0[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_8();
  v22 = *(v21 + 1024);

  v24 = v22(v23);

  if (!v24)
  {
    goto LABEL_38;
  }

  if (*(v24 + 16) < 2uLL)
  {
    OUTLINED_FUNCTION_25_2();

    return;
  }

  v57 = *(v24 + 16);
  sub_1E3294EE4(v3, v18, &qword_1ECF309A0);
  v25 = v60;
  if (__swift_getEnumTagSinglePayload(v18, 1, v60) == 1)
  {
    sub_1E38913D8();
    v27 = v26;
    v28 = sub_1E39DFFC8();
    v29 = v61;
    if ((v28 & 1) == 0)
    {
      v30 = 0;
LABEL_13:
      (*((*MEMORY[0x1E69E7D40] & *v27) + 0xF0))(v15, 0, v30);

      sub_1E3898A70(v15, v29);
      if (__swift_getEnumTagSinglePayload(v18, 1, v25) != 1)
      {
        sub_1E325F6F0(v18, &qword_1ECF309A0);
      }

      goto LABEL_15;
    }

    if ([v1 view])
    {
      type metadata accessor for EpisodeContainerView();
      OUTLINED_FUNCTION_3_54();
      v30 = swift_dynamicCastClassUnconditional();
      goto LABEL_13;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v29 = v61;
  (*(v59 + 32))(v61, v18, v25);
  v32 = OUTLINED_FUNCTION_21_32();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v25);
LABEL_15:
  sub_1E3294EE4(v29, v12, &qword_1ECF309A0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v25) == 1)
  {
    sub_1E325F6F0(v29, &qword_1ECF309A0);

    v35 = v12;
    goto LABEL_37;
  }

  (*(v59 + 32))(v58, v12, v25);
  v62 = sub_1E41FE844();
  v36 = 0;
  v37 = *(v24 + 16);
  v38 = (v24 + 16 * v37 + 24);
  if (!v37)
  {
LABEL_29:

    v49 = v61;
    goto LABEL_36;
  }

  while (1)
  {
    if (v37 > *(v24 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v39 = *&v1[v63];
    if (!v39)
    {
      goto LABEL_41;
    }

    v40 = v1;
    v41 = *v38;
    v64 = *(v38 - 1);
    v42 = *(*v39 + 1048);

    v44 = v42(v43);

    if (!v44)
    {

      v1 = v40;
      goto LABEL_28;
    }

    v1 = v40;
    if (!*(v44 + 16))
    {

LABEL_27:

      goto LABEL_28;
    }

    v45 = sub_1E327D33C(v64, v41);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_27;
    }

    v48 = *(*(v44 + 56) + 8 * v45);

    if (v62 >= v48)
    {
      break;
    }

LABEL_28:
    v38 -= 2;
    ++v36;
    if (!--v37)
    {
      goto LABEL_29;
    }
  }

  v50 = v57 - 1 - v36;
  if (__OFSUB__(v57 - 1, v36))
  {
    goto LABEL_40;
  }

  v51 = [v40 view];
  v49 = v61;
  if (!v51)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_11_14();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_3_54();
  v52 = swift_dynamicCastClassUnconditional();
  v53 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v54 = *(v52 + v53);
  v55 = v54;

  if (v54)
  {
    type metadata accessor for EpisodeSectionHeaderView();
    if (swift_dynamicCastClass())
    {
      sub_1E3E02AA8(v50);
    }
  }

LABEL_36:
  (*(v59 + 8))(v58, v60);
  v35 = v49;
LABEL_37:
  sub_1E325F6F0(v35, &qword_1ECF309A0);
LABEL_38:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38920D8(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C998);
  sub_1E4148C68(sub_1E3892AE4, v3, &v83);
  v4 = v83;
  *(v83 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel) = a1;

  v5 = *(*a1 + 1128);

  v6 = v4;
  v5(v4, &off_1F5D60B88);
  if (!*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v86) = 13;
  OUTLINED_FUNCTION_8();
  v7 += 97;
  v8 = *v7;
  v9 = v7;

  v8(&v83, &v86, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (*(&v84 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && sub_1E3F36DEC() != 8 && (sub_1E3881E80())
    {
      type metadata accessor for GradientBackgroundDecorationView();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v10 frame];
      if (!OUTLINED_FUNCTION_20_32())
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_11_14();
      type metadata accessor for EpisodeContainerView();
      OUTLINED_FUNCTION_3_54();
      [swift_dynamicCastClassUnconditional() bounds];

      v11 = OUTLINED_FUNCTION_6();
      [v12 v13];
      v14 = OUTLINED_FUNCTION_20_32();
      if (!v14)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v9 = v14;
      OUTLINED_FUNCTION_3_54();
      swift_dynamicCastClassUnconditional();
      sub_1E3A530BC(v10);

      goto LABEL_12;
    }
  }

  else
  {
    sub_1E325F6F0(&v83, &unk_1ECF296E0);
  }

  if (!OUTLINED_FUNCTION_20_32())
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_11_14();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_3_54();
  swift_dynamicCastClassUnconditional();
  v15 = OUTLINED_FUNCTION_106();
  sub_1E3A530BC(v15);
LABEL_12:

  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v17 setScrollDirection_];
  v18 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v19 = sub_1E3897234(sub_1E3898398, v16, v17);
  if (!OUTLINED_FUNCTION_20_32())
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_11_14();
  v20 = type metadata accessor for StackCollectionView();
  type metadata accessor for EpisodeContainerView();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_3_54();
  [swift_dynamicCastClassUnconditional() bounds];
  OUTLINED_FUNCTION_3();

  v21 = v19;
  OUTLINED_FUNCTION_6();
  v22 = v20;
  v24 = sub_1E373BA04(v23);
  if (!OUTLINED_FUNCTION_20_32())
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for LayoutGrid();
  OUTLINED_FUNCTION_3_54();
  [swift_dynamicCastClassUnconditional() bounds];
  OUTLINED_FUNCTION_3();

  v87.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v87);
  sub_1E3A258E4(Width);
  sub_1E3952C64();
  OUTLINED_FUNCTION_3();
  if ([objc_opt_self() isPad])
  {
    [v24 _setVisibleRectEdgeInsets_];
  }

  v26 = v24;
  [v26 setShowsVerticalScrollIndicator_];
  [v26 setShowsHorizontalScrollIndicator_];
  [v26 setPrefetchingEnabled_];
  [v26 setContentInsetAdjustmentBehavior_];
  v27 = OUTLINED_FUNCTION_6();
  [v28 v29];

  v30 = objc_opt_self();
  v31 = v26;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor_];

  [v31 setClipsToBounds_];
  v33 = OUTLINED_FUNCTION_20_32();
  if (!v33)
  {
    goto LABEL_36;
  }

  v34 = v33;
  OUTLINED_FUNCTION_3_54();
  swift_dynamicCastClassUnconditional();
  v35 = v31;
  sub_1E3A52FCC(v31);

  sub_1E38913D8();
  v37 = v36;
  v38 = MEMORY[0x1E69E7D40];
  v39 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x70);
  swift_unknownObjectRetain();
  v39(v4);

  sub_1E38913D8();
  v41 = v40;
  v42 = *((*v38 & *v40) + 0x88);
  swift_unknownObjectRetain();
  v42(v4);

  v43 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
  sub_1E38913D8();
  v45 = v44;
  [v44 addInteraction_];

  if (!*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1E38912B0();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E3859230(171);
  v47 = sub_1E4205ED4();

  [v35 vui:ObjCClassFromMetadata registerClass:v47 forCellWithReuseIdentifier:?];

  if (!*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_8();
  v49 = *(v48 + 952);

  v51 = v49(v50);

  if (!v51)
  {
    goto LABEL_30;
  }

  v52 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v53 = OUTLINED_FUNCTION_20_32();
  if (!v53)
  {
    goto LABEL_40;
  }

  v54 = v53;
  OUTLINED_FUNCTION_3_54();
  v55 = swift_dynamicCastClassUnconditional();
  v56 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v57 = *(v55 + v56);
  v58 = v57;

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v59 = sub_1E393D9C4(v51, v57, &v83, 0);

  sub_1E325F6F0(&v83, &qword_1ECF296C0);
  if (v59)
  {
    v60 = OUTLINED_FUNCTION_20_32();
    if (!v60)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v61 = v60;
    OUTLINED_FUNCTION_3_54();
    swift_dynamicCastClassUnconditional();
    v62 = v59;
    sub_1E3A53044(v59);
  }

  v63 = OUTLINED_FUNCTION_20_32();
  if (!v63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v64 = v63;
  OUTLINED_FUNCTION_3_54();
  v65 = swift_dynamicCastClassUnconditional();

  v66 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v67 = *(v65 + v66);
  v68 = v67;

  if (!v67)
  {
    goto LABEL_30;
  }

  type metadata accessor for EpisodeSectionHeaderView();
  OUTLINED_FUNCTION_20_2();
  v69 = swift_dynamicCastClass();
  if (v69)
  {
    v70 = v69;
    v71 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v72 = *(v70 + v71);
    v73 = v72;

    if (!v72)
    {
      goto LABEL_30;
    }

    v74 = &v73[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate];
    OUTLINED_FUNCTION_3_0();
    *(v74 + 1) = &off_1F5D60BA8;
    swift_unknownObjectWeakAssign();
    v68 = v73;
  }

LABEL_30:
  sub_1E38913D8();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA70));
  v76 = sub_1E4200084();
  v77 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_0();
  v78 = *&v6[v77];
  *&v6[v77] = v76;

  sub_1E3893288();
  v79 = *&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor] + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate;
  OUTLINED_FUNCTION_3_0();
  *(v79 + 8) = &off_1F5D60BF8;
  OUTLINED_FUNCTION_74();
  swift_unknownObjectWeakAssign();
  sub_1E3C9D1A0();
  if (*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
    OUTLINED_FUNCTION_8();
    v81 = *(v80 + 1288);

    v81(v82);
  }
}

id sub_1E3892AE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for EpisodeCollectionViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E3892B24()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E38913D8();
  v7 = v6;
  v8 = [v6 vuiIndexPathsForVisibleItems];

  v26 = v2;
  v9 = sub_1E42062B4();

  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1E3897C68(0, v10, 0);
    v11 = v27;
    v12 = v4 + 16;
    OUTLINED_FUNCTION_81();
    v14 = v9 + v13;
    v24 = *(v12 + 56);
    v25 = v15;
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v25(v1, v14, v26);
      v18 = sub_1E41FE844();
      (*v16)(v1, v26);
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_35(v19);
        sub_1E3897C68(v21, v20 + 1, 1);
      }

      *(v27 + 16) = v20 + 1;
      *(v27 + 8 * v20 + 32) = v18;
      v14 += v24;
      --v10;
      v12 = v17;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel))
  {
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 1280);

    v23(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3892D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner);
  *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_49_13();
  v19 = 1;
  OUTLINED_FUNCTION_39_14(v12);
  *(v13 + 80) = 1;
  *&v3[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth] = 0;
  v14 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *&v3[v14] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  if (a2)
  {
    v15 = sub_1E4205ED4();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v15, a3);

  return v16;
}

id sub_1E3892EE0(void *a1)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner);
  *&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_49_13();
  v14 = 1;
  OUTLINED_FUNCTION_39_14(v8);
  *(v9 + 80) = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth] = 0;
  v10 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *&v1[v10] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

void sub_1E389300C()
{
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner, &qword_1ECF2C970);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_currentSnapshot, &qword_1ECF2C9A0);
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor);
}

double sub_1E38931FC@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1E38BAE74(v10);
  v6 = v12;
  v7 = v11;
  v14 = *v13;
  v8 = *&v13[15];
  HIBYTE(v14) = v13[15];
  *a2 = v10[0];
  *(a2 + 1) = a1;
  *(a2 + 2) = v7;
  *(a2 + 6) = v6;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  result = *&v14;
  *(a2 + 24) = v14;
  *(a2 + 39) = v8;
  return result;
}

void sub_1E3893288()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v70 = v3;
  v64[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C9A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v65 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980);
  OUTLINED_FUNCTION_0_10();
  v69 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41();
  sub_1E38974F0();
  sub_1E4200074();
  v11 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = sub_1E41EBEE0(v12);
  v15 = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  v73 = v13;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;
  *(v18 + 48) = v17;
  v67 = v17;

  v68 = v8;
  v71 = v1;
  sub_1E41FFFB4();

  v77[9] = MEMORY[0x1E69E7CD0];
  v66 = v2;
  v19 = *&v2[v11];
  if (!v19)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_8();
  v20 += 137;
  v21 = *v20;
  v22 = v20;

  v24 = v21(v23);

  v25 = 0;
  v74 = *(v24 + 16);
  v75 = v24;
  v72 = v24 + 32;
  v76 = MEMORY[0x1E69E7CC0];
LABEL_4:
  while (1)
  {
    v26 = v25;
    if (v25 == v74)
    {
      break;
    }

    if (v25 >= *(v75 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v27 = *(v72 + 8 * v25++);
    if (v27)
    {
      swift_retain_n();

      sub_1E41EBF7C(v27, v73, v15);
      OUTLINED_FUNCTION_26_21();
      if (v28)
      {
        sub_1E4207B44();

        OUTLINED_FUNCTION_15_45();
        sub_1E4206014();
        v19 = v77;
        sub_1E4207BA4();
        OUTLINED_FUNCTION_37_16();
        while (1)
        {
          v30 = v29 & v17;
          if (((*(v77 + (((v29 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v17)) & 1) == 0)
          {
            break;
          }

          v31 = (v22[6] + 16 * v30);
          if (*v31 != v2 || v31[1] != v26)
          {
            v33 = sub_1E42079A4();
            v29 = v30 + 1;
            if ((v33 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_24;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = OUTLINED_FUNCTION_7_65(isUniquelyReferenced_nonNull_native, v41, v42, v76);
      }

      OUTLINED_FUNCTION_55_10();
      if (v44)
      {
        v49 = OUTLINED_FUNCTION_35(v43);
        v76 = sub_1E38972EC(v49, v19, 1, v76);
      }

      OUTLINED_FUNCTION_9_42();
    }

    else
    {

      sub_1E41EC04C();
      OUTLINED_FUNCTION_26_21();
      if (v34)
      {
        sub_1E4207B44();

        OUTLINED_FUNCTION_15_45();
        sub_1E4206014();
        v19 = v77;
        sub_1E4207BA4();
        OUTLINED_FUNCTION_37_16();
        while (1)
        {
          v36 = v35 & v17;
          if (((*(v77 + (((v35 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v17)) & 1) == 0)
          {
            break;
          }

          v37 = (v22[6] + 16 * v36);
          if (*v37 != v2 || v37[1] != v26)
          {
            v39 = sub_1E42079A4();
            v35 = v36 + 1;
            if ((v39 & 1) == 0)
            {
              continue;
            }
          }

LABEL_24:
          swift_bridgeObjectRelease_n();

          goto LABEL_4;
        }
      }

      v45 = swift_isUniquelyReferenced_nonNull_native();
      if ((v45 & 1) == 0)
      {
        v76 = OUTLINED_FUNCTION_7_65(v45, v46, v47, v76);
      }

      OUTLINED_FUNCTION_55_10();
      if (v44)
      {
        v50 = OUTLINED_FUNCTION_35(v48);
        v76 = sub_1E38972EC(v50, v19, 1, v76);
      }

      OUTLINED_FUNCTION_9_42();
    }
  }

  v77[0] = v73;
  v77[1] = v15;
  v77[2] = v67;

  v51 = v68;
  sub_1E41FFF74();

  if (v70)
  {
    sub_1E3893A40(v76);
  }

  v52 = v65;
  (*(v69 + 16))(v65, v71, v51);
  v53 = OUTLINED_FUNCTION_21_32();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);
  v56 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_currentSnapshot;
  v57 = v66;
  OUTLINED_FUNCTION_53_14();
  OUTLINED_FUNCTION_11_3();
  sub_1E37FA198(v52, &v57[v56], &qword_1ECF2C9A0);
  swift_endAccess();
  v58 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  if (v70)
  {
    OUTLINED_FUNCTION_53_14();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v59 = *&v57[v58];
    if (!v59)
    {
      goto LABEL_49;
    }

    v60 = v59;
    OUTLINED_FUNCTION_50();

    v61 = v71;
    sub_1E42000A4();
  }

  else
  {
    OUTLINED_FUNCTION_53_14();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v62 = *&v57[v58];
    if (!v62)
    {
      goto LABEL_50;
    }

    v63 = v62;
    OUTLINED_FUNCTION_50();

    v61 = v71;
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();
  }

  (*(v69 + 8))(v61, v68);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38938C0(void *a1@<X8>, double a2@<D0>)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics);
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics + 80) & 1) == 0 && *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth) == a2)
  {
LABEL_7:
    memcpy(v14, v5, 0x51uLL);
    memcpy(a1, v14, 0x51uLL);
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel))
  {
    v6 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell;
    v7 = *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCell);
    v8 = v7;

    sub_1E3895D44(v9, v7, __src, a2);

    if (v16)
    {
      v10 = *(v2 + v6);
      *(v2 + v6) = v16;
      sub_1E3294EE4(__src, v14, &qword_1ECF2C9A8);
    }

    memcpy(v5, __src, 0x51uLL);
    *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeLastWidth) = a2;
    sub_1E38913D8();
    v12 = v11;
    v13 = [v11 collectionViewLayout];

    [v13 invalidateLayout];
    sub_1E325F6F0(__src, &qword_1ECF2C9A8);

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1E3893A40(void *a1)
{
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v37 = v1;
  if (!*&v1[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
LABEL_19:
    __break(1u);
    return;
  }

  LOBYTE(v40[0]) = 30;
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 776);

  v9(v44, v40, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (*&v45[0])
  {
    if (swift_dynamicCast() && (v40[0] & 1) != 0)
    {
      sub_1E38913D8();
      v11 = v10;
      v12 = [v10 vuiIndexPathsForVisibleItems];

      v13 = sub_1E42062B4();
      v14 = *(v13 + 16);
      if (!v14)
      {
LABEL_14:

        return;
      }

      v15 = 0;
      OUTLINED_FUNCTION_81();
      v39 = v13 + v16;
      v38 = (v6 + 8);
      v36 = v13;
      v35 = v14;
      while (v15 < *(v13 + 16))
      {
        (*(v6 + 16))(v2, v39 + *(v6 + 72) * v15, v4);
        v17 = sub_1E41FE844();
        v43 = a1;
        v41 = v17;
        v42 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA48);
        sub_1E3898054();
        sub_1E38D2054(&v41, v40);
        if (v40[1] && (v18 = v40[2], , v18))
        {
          v19 = v4;
          sub_1E38913D8();
          v21 = v20;
          v22 = sub_1E41FE7E4();
          v23 = [v21 vui:v22 cellForItemAtIndexPath:?];

          v24 = sub_1E38BAE74(v44);
          v25 = v44[0];
          v26 = [v37 view];
          if (!v26)
          {
            goto LABEL_18;
          }

          v27 = v26;
          [v26 frame];
          v29 = v28;
          v31 = v30;

          type metadata accessor for UIFactory();
          v43 = v23;
          v40[3] = &type metadata for CollectionViewCellContext;
          v40[4] = &off_1F5D621F8;
          v32 = OUTLINED_FUNCTION_41_3();
          v40[0] = v32;
          *(v32 + 16) = v25;
          *(v32 + 24) = v29;
          *(v32 + 32) = v31;
          *(v32 + 40) = v45[0];
          *(v32 + 55) = *(v45 + 15);
          v33 = sub_1E3280A90(0, &qword_1EE23B120);

          sub_1E38E5240(v34, &v43, v40, 0, 0, v33, &v41);

          v4 = v19;
          (*v38)(v2, v19);
          sub_1E325F6F0(v40, &qword_1ECF296C0);

          v13 = v36;
          v14 = v35;
        }

        else
        {
          (*v38)(v2, v4);
        }

        if (v14 == ++v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1E325F6F0(v44, &unk_1ECF296E0);
  }
}

uint64_t sub_1E3893E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void sub_1E3893ED0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v18 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (v19)
  {
    v20 = v19;
    sub_1E42000B4();

    if (v37[1] && (v36 = v6, v21 = v38, , v38))
    {
      v22 = v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (*(v22 + 24))
      {
        sub_1E327F454(v22, v37);
        v24 = v39;
        v23 = v40;
        __swift_project_boxed_opaque_existential_1(v37, v39);
        v25 = (*(*(v23 + 8) + 32))(v24);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        v25 = 0;
      }

      v32 = sub_1E41FE7E4();
      v33 = [v36 vui:v32 cellForItemAtIndexPath:?];

      v34 = *(*v21 + 800);
      v35 = v33;
      v34(2, v25, v33, 0);
    }

    else
    {
      v26 = sub_1E324FBDC();
      v27 = v14;
      (*(v16 + 16))(v1, v26, v14);
      (*(v9 + 16))(v13, v4, v7);
      v28 = sub_1E41FFC94();
      v29 = sub_1E42067F4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        v31 = sub_1E41FE844();
        (*(v9 + 8))(v13, v7);
        *(v30 + 4) = v31;
        _os_log_impl(&dword_1E323F000, v28, v29, "EpisodeCollectionViewController viewModel for index at %ld is nil", v30, 0xCu);
        MEMORY[0x1E69143B0](v30, -1, -1);
      }

      else
      {
        (*(v9 + 8))(v13, v7);
      }

      (*(v16 + 8))(v1, v27);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3894404()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_1E42000B4();

  v7 = v26;
  v8 = v27;
  if (v27)
  {

    if (v28)
    {
      v10 = (*(*v28 + 576))(v9);

      if (v10)
      {
        v11 = [v3 vuiCellView];
        if (v11)
        {
          v12 = v11;
          v13 = v1 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_1E327F454(v13, &v26);
            v14 = v29;
            v15 = v30;
            __swift_project_boxed_opaque_existential_1(&v26, v29);
            (*(v15 + 16))(v12, v10, v14, v15);

            __swift_destroy_boxed_opaque_existential_1(&v26);
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_10:
  *&v31[1] = &unk_1F5E99D68;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      [v17 willBeDisplayed];
    }
  }

  swift_getObjectType();
  v18 = dynamic_cast_existential_1_conditional(v3);
  v20 = v18;
  if (v18)
  {
    v21 = v19;
    v18 = v3;
  }

  else
  {
    v21 = 0;
  }

  v26 = v20;
  v27 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v25[6] = v1;
  MEMORY[0x1EEE9AC00](v22);
  v25[2] = sub_1E3897404;
  v25[3] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA10);
  sub_1E4148F70(sub_1E38974A8, v25, v24, MEMORY[0x1E69E7CA8] + 8, v31);
  sub_1E3790548(v7, v8);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38947C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    sub_1E42000B4();

    if (v19[1])
    {

      if (v20)
      {
        v6 = (*(*v20 + 576))(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v1 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (*(v8 + 24))
          {
            sub_1E327F454(v8, v19);
            v9 = v21;
            v10 = v22;
            __swift_project_boxed_opaque_existential_1(v19, v21);
            (*(v10 + 24))(v7, v9, v10);
            v11 = OUTLINED_FUNCTION_74();
            sub_1E3790548(v11, v12);

            __swift_destroy_boxed_opaque_existential_1(v19);
            return;
          }

          v17 = OUTLINED_FUNCTION_74();
          sub_1E3790548(v17, v18);
        }

        else
        {
          v15 = OUTLINED_FUNCTION_74();
          sub_1E3790548(v15, v16);
        }
      }

      else
      {
        v13 = OUTLINED_FUNCTION_74();
        sub_1E3790548(v13, v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3894A54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = v16 - v6;
  if (([a1 isTracking] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
  {
    sub_1E41FE874();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_1E3891AD0();
    sub_1E325F6F0(v7, &qword_1ECF309A0);
  }

  [a1 vuiBounds];
  OUTLINED_FUNCTION_3();
  v12 = v1 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewImpressioner;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_1E327F454(v12, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    OUTLINED_FUNCTION_6();
    v14 = OUTLINED_FUNCTION_50();
    v15(v14);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

void sub_1E3894C80(void *a1, double *a2)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics + 80) & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_cachedPrototypeCellMetrics);
    v11 = *a2;
    type metadata accessor for LayoutGrid();
    [a1 bounds];
    Width = CGRectGetWidth(v38);
    sub_1E3A258E4(Width);
    v14 = 0.0 - v13;
    sub_1E38913D8();
    v16 = v15;
    [v15 vuiContentSize];
    v18 = v17;

    sub_1E38913D8();
    v20 = v19;
    [v19 vuiBounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v39.origin.x = v22;
    v39.origin.y = v24;
    v39.size.width = v26;
    v39.size.height = v28;
    v29 = CGRectGetWidth(v39);
    VUIRoundValue();
    v31 = v30;
    v32 = sub_1E324FBDC();
    (*(v8 + 16))(v3, v32, v6);
    v33 = sub_1E41FFC94();
    v34 = sub_1E42067D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218752;
      *(v35 + 4) = v11;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v31;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v18;
      *(v35 + 32) = 2048;
      *(v35 + 34) = v29;
      _os_log_impl(&dword_1E323F000, v33, v34, "EpisodeCollectionViewController compute offset -\nproposedOffsetX: %f maxOffsetX: %f\ncollection contentSize width: %f collection bounds: %f", v35, 0x2Au);
      MEMORY[0x1E69143B0](v35, -1, -1);
    }

    (*(v8 + 8))(v3, v6);
    if (v31 > v11)
    {
      if (v11 <= v14)
      {
        v31 = v14;
      }

      else
      {
        [a1 bounds];
        v36 = CGRectGetWidth(v40);
        sub_1E3A25950(v36);
        v31 = v14 + (v10 + v37) * round((v11 - v14) / (v10 + v37));
      }
    }

    *a2 = v31;
  }
}

void sub_1E3894F9C(uint64_t a1, unint64_t a2, char **a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v167 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v157 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v154 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v161 = &v144 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C9A0);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v144 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v144 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C980);
  OUTLINED_FUNCTION_0_10();
  v151 = v24;
  OUTLINED_FUNCTION_5_7();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v144 - v27;
  v29 = (*(*v3 + 1304))(v26);
  v165 = a3;
  v153 = v28;
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = a2;
  LOBYTE(v173) = 1;
  v31 = [v3 view];
  if (v31)
  {
    v32 = v31;
    a3 = &selRef_setWaitingForTransactionToStart_;
    do
    {
      v33 = [v32 superview];

      if (!v33)
      {
        OUTLINED_FUNCTION_25_25();
        goto LABEL_12;
      }

      type metadata accessor for ViewControllerHostingCollectionViewCell();
      v34 = swift_dynamicCastClass();
      v32 = v33;
    }

    while (!v34);
    v35 = v34;
    v36 = [v34 vuiCollectionViewCellInteractor];
    OUTLINED_FUNCTION_25_25();
    if (v37)
    {
      v38 = v37;
      if ([v37 respondsToSelector_])
      {
        [v38 vui:v35 cellNeedsReloading:?];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_12:
    a2 = v30;
LABEL_13:
    v168 = v22;
    sub_1E38974F0();
    sub_1E4200074();
    if (*&v4[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
    {
      v39 = v4;

      v41 = sub_1E41EBEE0(v40);
      v43 = v42;
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA20);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1E4297BE0;
      *&v160 = v41;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      *(v46 + 48) = v45;
      v150 = v45;

      *(&v160 + 1) = v43;

      sub_1E41FFFB4();

      v172 = MEMORY[0x1E69E7CD0];
      v156 = sub_1E3798694(a2);
      v47 = a3 + v156;
      if (__OFADD__(a3, v156))
      {
LABEL_76:
        __break(1u);
      }

      else
      {
        v166 = v47 - 1;
        if (!__OFSUB__(v47, 1))
        {
          v147 = v17;
          v48 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_currentSnapshot;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v155 = v39;
          v149 = v48;
          v49 = v168;
          sub_1E3294EE4(v39 + v48, v168, &qword_1ECF2C9A0);
          if (__swift_getEnumTagSinglePayload(v49, 1, v23) != 1)
          {
            v50 = sub_1E4200004();
            v51 = *(v151 + 8);
            v152 = v23;
            v146 = v151 + 8;
            v145 = v51;
            v51(v49, v23);
            v52 = 0;
            v53 = *(v50 + 16);
            v164 = a2 & 0xC000000000000001;
            v163 = a2 & 0xFFFFFFFFFFFFFF8;
            v144 = a2;
            v162 = a2 + 32;
            v54 = (v50 + 48);
            v168 = MEMORY[0x1E69E7CC0];
            v159 = v50;
            v158 = v53;
            while (v53 != v52)
            {
              if (v52 >= *(v50 + 16))
              {
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              v55 = *(v54 - 1);
              v56 = *v54;
              if (v52 < a3 || v166 < v52)
              {
                v58 = *(v54 - 2);

                OUTLINED_FUNCTION_46_12();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_48_15();
                  v75 = OUTLINED_FUNCTION_7_65(v71, v72, v73, v74);
                  OUTLINED_FUNCTION_47_12(v75);
                }

                OUTLINED_FUNCTION_28_24();
                if (v60)
                {
                  OUTLINED_FUNCTION_35(v59);
                  OUTLINED_FUNCTION_48_15();
                  v80 = sub_1E38972EC(v76, v77, v78, v79);
                  OUTLINED_FUNCTION_47_12(v80);
                }

                OUTLINED_FUNCTION_29_17();
                v61[4] = v58;
                v61[5] = v55;
                v61[6] = v56;
              }

              else
              {
                v62 = v52 - a3;
                if (__OFSUB__(v52, a3))
                {
                  goto LABEL_70;
                }

                if (v164)
                {

                  MEMORY[0x1E6911E60](v52 - a3, v144);
                }

                else
                {
                  if ((v62 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_71;
                  }

                  if (v62 >= *(v163 + 16))
                  {
                    goto LABEL_72;
                  }
                }

                v63 = *(&v160 + 1);

                v65 = sub_1E41EBF7C(v64, v160, v63);
                a3 = v66;
                v68 = v67;

                OUTLINED_FUNCTION_46_12();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_48_15();
                  v85 = OUTLINED_FUNCTION_7_65(v81, v82, v83, v84);
                  OUTLINED_FUNCTION_47_12(v85);
                }

                OUTLINED_FUNCTION_28_24();
                if (v60)
                {
                  OUTLINED_FUNCTION_35(v69);
                  OUTLINED_FUNCTION_48_15();
                  v90 = sub_1E38972EC(v86, v87, v88, v89);
                  OUTLINED_FUNCTION_47_12(v90);
                }

                OUTLINED_FUNCTION_29_17();
                v70[4] = v65;
                v70[5] = a3;
                v70[6] = v68;
                sub_1E3897544(&v173, v52);

                OUTLINED_FUNCTION_25_25();
                v50 = v159;
                v53 = v158;
              }

              v54 += 3;
              ++v52;
            }

            v173 = v160;
            *v174 = v150;

            OUTLINED_FUNCTION_46_12();
            v91 = v152;
            v92 = v153;
            sub_1E41FFF74();

            v93 = v148;
            (*(v151 + 16))(v148, v92, v91);
            v94 = OUTLINED_FUNCTION_21_32();
            __swift_storeEnumTagSinglePayload(v94, v95, v96, v91);
            v97 = v155;
            v98 = v149;
            OUTLINED_FUNCTION_53_14();
            OUTLINED_FUNCTION_11_3();
            sub_1E37FA198(v93, v97 + v98, &qword_1ECF2C9A0);
            swift_endAccess();
            sub_1E38913D8();
            v100 = v99;
            v101 = &selRef_textLayout;
            v102 = [v99 vuiIndexPathsForVisibleItems];

            v103 = sub_1E42062B4();
            v104 = *(v103 + 16);
            if (v104)
            {
              *&v173 = MEMORY[0x1E69E7CC0];
              sub_1E3897C68(0, v104, 0);
              v105 = v173;
              v106 = v157 + 16;
              v166 = *(v157 + 16);
              OUTLINED_FUNCTION_81();
              *&v160 = v103;
              a3 = (v103 + v107);
              v108 = *(v106 + 56);
              v91 = (v106 - 8);
              do
              {
                v97 = v161;
                v109 = v167;
                (v166)(v161, a3, v167);
                v110 = sub_1E41FE844();
                (*v91)(v97, v109);
                *&v173 = v105;
                v112 = *(v105 + 16);
                v111 = *(v105 + 24);
                if (v112 >= v111 >> 1)
                {
                  v113 = OUTLINED_FUNCTION_35(v111);
                  v97 = &v173;
                  sub_1E3897C68(v113, v112 + 1, 1);
                  v105 = v173;
                }

                *(v105 + 16) = v112 + 1;
                *(v105 + 8 * v112 + 32) = v110;
                a3 = (a3 + v108);
                --v104;
              }

              while (v104);

              OUTLINED_FUNCTION_44_20();
              OUTLINED_FUNCTION_25_25();
              v92 = v153;
              v101 = &selRef_textLayout;
            }

            else
            {

              v105 = MEMORY[0x1E69E7CC0];
            }

            v114 = v172;
            if ((sub_1E3897D88(v105, v172) & 1) == 0)
            {
              v159 = v114;
              sub_1E38913D8();
              v116 = v115;
              v117 = [v115 v101[411]];

              v118 = sub_1E42062B4();
              v91 = *(v118 + 16);
              v97 = v154;
              if (v91)
              {
                v119 = 0;
                OUTLINED_FUNCTION_81();
                v121 = (v118 + v120);
                v123 = (v122 + 8);
                v166 = v91;
                v161 = (v118 + v120);
                *&v160 = v122 + 16;
                while (v119 < *(v118 + 16))
                {
                  (*(v157 + 16))(v97, &v121[*(v157 + 72) * v119], v167);
                  v124 = sub_1E41FE844();
                  v125 = __OFSUB__(v124, a3);
                  v126 = v124 - a3;
                  if (v125)
                  {
                    goto LABEL_74;
                  }

                  if (v126 < 0 || v126 >= v156)
                  {
                    (*v123)(v97, v167);
                  }

                  else
                  {
                    if (v164)
                    {
                      MEMORY[0x1E6911E60]();
                    }

                    else
                    {
                      if (v126 >= *(v163 + 16))
                      {
                        goto LABEL_75;
                      }
                    }

                    v127 = v155;
                    sub_1E38913D8();
                    v129 = v128;
                    v130 = v154;
                    v131 = sub_1E41FE7E4();
                    v132 = [v129 vui:v131 cellForItemAtIndexPath:?];

                    v133 = [v127 view];
                    if (!v133)
                    {
                      goto LABEL_78;
                    }

                    v134 = v133;
                    [v133 frame];
                    OUTLINED_FUNCTION_3();

                    v175.origin.x = OUTLINED_FUNCTION_6();
                    Width = CGRectGetWidth(v175);
                    sub_1E38931FC(0, &v173, Width);
                    type metadata accessor for UIFactory();
                    v170 = v132;
                    v169[3] = &type metadata for CollectionViewCellContext;
                    v169[4] = &off_1F5D621F8;
                    v136 = OUTLINED_FUNCTION_41_3();
                    v169[0] = v136;
                    v137 = *v174;
                    v136[1] = v173;
                    v136[2] = v137;
                    *(v136 + 43) = *&v174[11];
                    a3 = sub_1E3280A90(0, &qword_1EE23B120);

                    OUTLINED_FUNCTION_38_12(v138, &v170, v169, &v171);

                    (*v123)(v130, v167);
                    sub_1E325F6F0(v169, &qword_1ECF296C0);

                    OUTLINED_FUNCTION_25_25();
                    v97 = v130;
                    v91 = v166;
                    v121 = v161;
                  }

                  if (v91 == ++v119)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_73;
              }

LABEL_65:

              OUTLINED_FUNCTION_44_20();
              v92 = v153;
            }

            v139 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v140 = *(v97 + v139);
            v141 = v147;
            if (!v140)
            {
              goto LABEL_81;
            }

            sub_1E3294EE4(v97 + v149, v147, &qword_1ECF2C9A0);
            if (__swift_getEnumTagSinglePayload(v141, 1, v91) != 1)
            {
              v142 = v140;
              OUTLINED_FUNCTION_46_12();

              OUTLINED_FUNCTION_25();
              sub_1E42000D4();

              v143 = v145;
              v145(v92, v91);
              v143(v141, v91);
              return;
            }

            goto LABEL_82;
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
    }

    __break(1u);
    goto LABEL_80;
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_1E3895D44@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  OUTLINED_FUNCTION_26_0();
  result = (*(v8 + 1000))();
  if (!result)
  {
    v35 = 0;
    v36 = 1;
LABEL_27:
    v62 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    goto LABEL_28;
  }

  LOBYTE(v106) = 1;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = (*v10)();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_26_0();
    *&v115 = (*(v14 + 984))();
    BYTE8(v115) = v15 & 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0);
    v23 = OUTLINED_FUNCTION_57_8(v16, v17, v16, v18, v19, v20, v21, v22, v63, v66, v68, v71, v73, v76, v78, v81, v83, v86, v88, v90, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    v24 = v113;
    *&v115 = (*(*v13 + 1128))(v23);
    BYTE8(v115) = v25 & 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
    OUTLINED_FUNCTION_57_8(v26, v27, v26, v28, v29, v30, v31, v32, v64, v67, v69, v72, v74, v77, v79, v82, v84, v87, v89, v90, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    if (TVAppFeature.isEnabled.getter(10))
    {
      *(&v116 + 1) = &unk_1F5D5D888;
      *&v117 = &off_1F5D5C918;
      LOBYTE(v115) = 12;
      v33 = sub_1E39C29F0(&v115, 1);
      __swift_destroy_boxed_opaque_existential_1(&v115);
      type metadata accessor for LayoutGrid();

      v24 = sub_1E3A25B9C(v34, v24, v33 & 1);
    }

    else
    {
      type metadata accessor for LayoutGrid();
    }

    v37 = sub_1E3A25D00(v24, 0, a4, *&v113);
  }

  else
  {
    v37 = 0.0;
  }

  if ((v11)(v12))
  {
    OUTLINED_FUNCTION_26_0();
    (*(v38 + 176))(&v108);
  }

  v39 = *sub_1E3C11B28();
  sub_1E38931FC(0, &v113, a4);
  if (a2)
  {
    v40 = a2;
    [v40 prepareForReuse];
  }

  else
  {
    sub_1E38912B0();
    v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v42 = OUTLINED_FUNCTION_1_36();
    v40 = [v43 v44];
  }

  v45 = [v40 vuiCellView];
  if (v45)
  {
    v46 = v45;
    v47 = OUTLINED_FUNCTION_1_36();
    [v48 v49];
  }

  type metadata accessor for UIFactory();
  v96 = v40;
  *(&v116 + 1) = &type metadata for CollectionViewCellContext;
  *&v117 = &off_1F5D621F8;
  v50 = OUTLINED_FUNCTION_41_3();
  *&v115 = v50;
  v51 = v114[0];
  v50[1] = v113;
  v50[2] = v51;
  *(v50 + 43) = *(v114 + 11);
  sub_1E3280A90(0, &qword_1EE23B120);

  OUTLINED_FUNCTION_38_12(v52, &v96, &v115, &v90);

  sub_1E325F6F0(&v115, &qword_1ECF296C0);
  if (!v90)
  {

    v97 = 0u;
    v98 = 0u;
    v99 = 0;
LABEL_26:
    result = sub_1E325F6F0(&v97, &qword_1ECF3F4E0);
    v35 = 0;
    v36 = v106;
    goto LABEL_27;
  }

  *&v115 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    goto LABEL_25;
  }

  if (!*(&v98 + 1))
  {
LABEL_25:

    goto LABEL_26;
  }

  v53 = *MEMORY[0x1E69DDCE0];
  v54 = *(MEMORY[0x1E69DDCE0] + 8);
  v55 = *(MEMORY[0x1E69DDCE0] + 24);
  sub_1E3251BE8(&v97, &v101);
  v56 = v104;
  v57 = v105;
  __swift_project_boxed_opaque_existential_1(&v101, v104);
  (*(v57 + 8))(&v115, v56, v57, v37, v53, v54, v39, v55);
  v80 = v116;
  v85 = v115;
  v70 = v118;
  v75 = v117;
  v65 = v119;

  LOBYTE(v95) = 0;
  sub_1E327F454(&v101, &v90);
  if (swift_dynamicCast())
  {
    v35 = v96;
  }

  else
  {
    v35 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(&v101);
  v59 = v65;
  v58 = v70;
  v61 = v75;
  v60 = v80;
  v62 = v85;
  v36 = v95;
LABEL_28:
  *a3 = v62;
  *(a3 + 16) = v60;
  *(a3 + 32) = v61;
  *(a3 + 48) = v58;
  *(a3 + 64) = v59;
  *(a3 + 80) = v36 & 1;
  *(a3 + 88) = v35;
  return result;
}

void sub_1E3896328()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (*&v0[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
  {
    OUTLINED_FUNCTION_8();
    v14 = *(v13 + 1048);

    v16 = v14(v15);

    if (!v16 || (v17 = sub_1E3893E78(v8, v6, v16), v19 = v18, , (v19 & 1) != 0))
    {
LABEL_10:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    MEMORY[0x1E6909190](v17, 0);
    sub_1E38913D8();
    v21 = v20;
    v22 = sub_1E41FE7E4();
    [v21 selectItemAtIndexPath:v22 animated:1 scrollPosition:8];

    if ([v2 view])
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for EpisodeContainerView();
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_3_54();
      v23 = swift_dynamicCastClassUnconditional();
      v24 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v25 = *(v23 + v24);
      v26 = v25;

      if (v25)
      {
        type metadata accessor for EpisodeSectionHeaderView();
        if (swift_dynamicCastClass())
        {
          sub_1E3E02AA8(v4);
        }
      }

      (*(v11 + 8))(v1, v9);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1E389653C@<X0>(uint64_t a1@<X1>, void *a2@<X8>, double a3@<D0>)
{
  type metadata accessor for EpisodeCollectionViewModel();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  OUTLINED_FUNCTION_26_0();
  v9 = *(v8 + 392);

  v11 = v9(v10);
  if (!v11)
  {
LABEL_10:

LABEL_11:
    sub_1E3790540(__src);
    return memcpy(a2, __src, 0xB0uLL);
  }

  if (*v11 != _TtC8VideosUI23EpisodeCollectionLayout)
  {

    goto LABEL_10;
  }

  sub_1E3ACA7D0();
  OUTLINED_FUNCTION_26_0();
  (*(v12 + 176))(v43);
  v13 = *v43;
  v14 = *&v43[1];
  v15 = *&v43[2];

  if ((v44 & 1) == 0)
  {
    sub_1E3952BD8(v13, v14, v15);
  }

  sub_1E3895D44(v7, 0, v36, a3);
  v16 = sub_1E325F6F0(v36, &qword_1ECF2C9A8);
  if (v42)
  {
    v18 = *MEMORY[0x1E69DDCE0];
    v17 = *(MEMORY[0x1E69DDCE0] + 8);
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    v33 = *(MEMORY[0x1E69DDCE0] + 24);
    v20 = 0.0;
  }

  else
  {
    v19 = v40;
    v33 = v41;
    v18 = v38;
    v17 = v39;
    v20 = v37;
  }

  (*(*v7 + 952))(v16);

  OUTLINED_FUNCTION_1_36();
  sub_1E3952C58();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = OUTLINED_FUNCTION_51_1();
  sub_1E3814DBC(a1, v30 & 1, v34, v20, v18, v17, v19, v33, v23, v25, v27, v29);

  memcpy(__dst, v34, sizeof(__dst));
  nullsub_1(v31, v32);
  memcpy(__src, __dst, sizeof(__src));
  return memcpy(a2, __src, 0xB0uLL);
}

void sub_1E3896820()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  type metadata accessor for EpisodeCollectionViewModel();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    OUTLINED_FUNCTION_11_13();
    v16 = *(v15 + 1296);

    v16(v17);
    *(v0 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel) = v14;
    swift_retain_n();

    v18 = *(*v14 + 1128);
    v19 = swift_unknownObjectRetain();
    v44 = v14;
    v18(v19, &off_1F5D60B88);

    sub_1E3893288();
    sub_1E38913D8();
    v21 = v20;
    v22 = [v20 vuiIndexPathsForVisibleItems];

    v23 = sub_1E42062B4();
    v24 = *(v23 + 16);
    if (v24)
    {
      v41 = v13;
      v42 = v1;
      v43 = v3;
      v48 = MEMORY[0x1E69E7CC0];
      sub_1E3897C68(0, v24, 0);
      v25 = v48;
      OUTLINED_FUNCTION_81();
      v40[1] = v23;
      v27 = v23 + v26;
      v45 = *(v28 + 56);
      v46 = v29;
      v47 = v28;
      v30 = (v28 - 8);
      do
      {
        v46(v9, v27, v4);
        v31 = sub_1E41FE844();
        v32 = v4;
        (*v30)(v9, v4);
        v48 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          v35 = OUTLINED_FUNCTION_35(v33);
          sub_1E3897C68(v35, v34 + 1, 1);
          v25 = v48;
        }

        *(v25 + 16) = v34 + 1;
        *(v25 + 8 * v34 + 32) = v31;
        v27 += v45;
        --v24;
        v4 = v32;
      }

      while (v24);

      v13 = v41;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_11_13();
    (*(v36 + 1280))(v25);

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v4);
    sub_1E3891AD0();

    sub_1E325F6F0(v13, &qword_1ECF309A0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3896BAC(double a1, double a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_11_14();
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27[-v15];
  sub_1E38913D8();
  v18 = v17;
  v19 = [v17 indexPathForItemAtPoint_];

  if (!v19)
  {
    return v19;
  }

  sub_1E41FE804();

  (*(v9 + 32))(v16, v13, v7);
  v20 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_dataSource;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  v22 = *(v4 + v20);
  if (v22)
  {
    v23 = v22;
    sub_1E42000B4();

    if (v28 && (v24 = v29, , v24))
    {
      sub_1E38913D8();
      v26 = v25;
      v19 = sub_1E3C9C60C(v24, v16, v3, v25, &off_1F5D7CF38, v4, &off_1F5D60BF8);
    }

    else
    {
      v19 = 0;
    }

    (*(v9 + 8))(v16, v7);
    return v19;
  }

  __break(1u);
  return result;
}

id sub_1E3896E28(uint64_t a1, void *a2)
{
  sub_1E38913D8();
  v4 = v3;
  v5 = sub_1E3C9FBDC(a2, v3);

  return v5;
}

void sub_1E3896FA4(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1E3897E5C;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E378AEA4;
    v9[3] = &block_descriptor_21;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a3 addCompletion_];
    _Block_release(v7);
  }
}

uint64_t sub_1E389714C()
{
  swift_getObjectType();

  return sub_1E3CA18BC();
}

uint64_t sub_1E38971D0()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_53();

  return OUTLINED_FUNCTION_51_1();
}

id sub_1E3897234(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E37BE928;
  v8[3] = &block_descriptor_17;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:a3];

  _Block_release(v5);

  return v6;
}

char *sub_1E38972EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3897404(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = *(v4 + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor);
  OUTLINED_FUNCTION_15_45();
  v6();
  v8 = *(a2 + 40);
  v9 = swift_unknownObjectRetain();
  return v8(v9, &off_1F5D60BF8, ObjectType, a2);
}

uint64_t sub_1E38974A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = 0;
  return result;
}

unint64_t sub_1E38974F0()
{
  result = qword_1EE243748;
  if (!qword_1EE243748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE243748);
  }

  return result;
}

BOOL sub_1E3897544(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E4207B34();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1E3897838(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1E3897614()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA68);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1E373CBF0(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1E4207B34();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3897838(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3897614();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E3897A7C();
LABEL_10:
      v12 = *v3;
      result = sub_1E4207B34();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E389793C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E389793C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA68);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E3897A7C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA68);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1E4207B34();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

char *sub_1E3897C68(char *a1, int64_t a2, char a3)
{
  result = sub_1E3897C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3897C88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E3897D88(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  v7 = ~(-1 << *(a2 + 32));
  do
  {
    v8 = *(v5 + 8 * v4++);
    v9 = sub_1E4207B34();
    while (1)
    {
      v10 = v9 & v7;
      if (((*(v6 + (((v9 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v7)) & 1) == 0)
      {
        break;
      }

      v9 = v10 + 1;
      if (*(*(a2 + 48) + 8 * v10) == v8)
      {
        return 0;
      }
    }

    result = 1;
  }

  while (v4 != v2);
  return result;
}

void sub_1E3897E5C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_contextMenuInteractor);
    OUTLINED_FUNCTION_50();
    sub_1E3C9F738();
  }
}

uint64_t type metadata accessor for EpisodeCollectionViewController()
{
  result = qword_1EE292990;
  if (!qword_1EE292990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3897F20()
{
  sub_1E3897FF0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3897FF0()
{
  if (!qword_1EE28A3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C980);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A3A0);
    }
  }
}

unint64_t sub_1E3898054()
{
  result = qword_1ECF2CA50;
  if (!qword_1ECF2CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CA50);
  }

  return result;
}

void sub_1E38980B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E3859230(171);
    v7 = sub_1E4205ED4();

    v8 = sub_1E41FE7E4();
    v9 = [a1 vui:v7 dequeueReusableCellWithIdentifier:v8 indexPath:?];

    v10 = [v6 view];
    if (v10)
    {
      v11 = v10;
      [v10 frame];
      OUTLINED_FUNCTION_3();

      v50.origin.x = OUTLINED_FUNCTION_6();
      Width = CGRectGetWidth(v50);
      if (v4)
      {
        type metadata accessor for EpisodeCollectionViewController();

        sub_1E38931FC(0, &v44, Width);
        type metadata accessor for UIFactory();
        v13 = OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_24_17(v13, v14, v15, v16, v17, v18, v19, v20, v36, v37, v38, &type metadata for CollectionViewCellContext, &off_1F5D621F8, v9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
        sub_1E3280A90(0, &qword_1EE23B120);

        v21 = v9;
        v22 = v4;
LABEL_10:
        OUTLINED_FUNCTION_38_12(v22, &v39, &v36, &v40);

        sub_1E325F6F0(&v36, &qword_1ECF296C0);
        return;
      }

      v23 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
      if (*&v6[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
      {
        OUTLINED_FUNCTION_8();
        v25 = *(v24 + 1000);

        v27 = v25(v26);

        if (!v27)
        {

          return;
        }

        if (*&v6[v23])
        {
          type metadata accessor for EpisodeCollectionViewController();

          sub_1E38931FC(1, &v44, Width);

          type metadata accessor for UIFactory();
          v28 = OUTLINED_FUNCTION_41_3();
          OUTLINED_FUNCTION_24_17(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, &type metadata for CollectionViewCellContext, &off_1F5D621F8, v9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
          sub_1E3280A90(0, &qword_1EE23B120);
          v21 = v9;

          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1E3898398(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      swift_getObjectType();
      v5 = sub_1E40175B0();
    }

    else
    {
      v5 = 0.0;
    }

    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(v5);
    sub_1E38913D8();
    v7 = v6;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))(a2);

    v9 = v8;
    sub_1E3C2AE10();
    v11 = OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel;
    if (*&v4[OBJC_IVAR____TtC8VideosUI31EpisodeCollectionViewController_viewModel])
    {
      v12 = v10;
      OUTLINED_FUNCTION_8();
      v14 = *(v13 + 392);

      v16 = v14(v15);

      if (v16)
      {
        OUTLINED_FUNCTION_11_13();
        v17 = OUTLINED_FUNCTION_19_29();
        v18(v17);
      }

      if (*&v4[v11])
      {
        OUTLINED_FUNCTION_8();
        v20 = *(v19 + 1000);

        v22 = v20(v21);

        if (v22)
        {
          OUTLINED_FUNCTION_11_13();
          v24 = (*(v23 + 392))();

          if (v24)
          {
            OUTLINED_FUNCTION_8();
            v25 = OUTLINED_FUNCTION_19_29();
            v26(v25);
          }
        }

        if (*&v4[v11])
        {
          OUTLINED_FUNCTION_8();
          v28 = *(v27 + 952);

          v30 = v28(v29);

          if (v30)
          {
            OUTLINED_FUNCTION_11_13();
            v32 = (*(v31 + 392))();

            if (v32)
            {
              OUTLINED_FUNCTION_8();
              v33 = OUTLINED_FUNCTION_19_29();
              v34(v33);
            }
          }

          if ([objc_opt_self() isMac])
          {
            v35 = [v4 view];
            if (!v35)
            {
LABEL_33:
              __break(1u);
              return;
            }

            v36 = v35;
            [v35 frame];
            OUTLINED_FUNCTION_3();

            v82.origin.x = OUTLINED_FUNCTION_6();
            Width = CGRectGetWidth(v82);
          }

          else
          {
            if (!a2)
            {
              v38 = 0.0;
LABEL_23:
              sub_1E3A25950(v38);
              v40 = v39;
              v41 = v73;
              sub_1E38938C0(v73, v38);
              if (v77)
              {
                v41 = v78;
                sub_1E41A300C(v78);
                v42 = v79;
                v43 = v80;
                v44 = v81;
              }

              else
              {
                v42 = v74;
                v43 = v75;
                v44 = v76;
              }

              v45 = *v41;
              v46 = objc_opt_self();
              v47 = [v46 fractionalWidthDimension_];
              v48 = [v46 fractionalHeightDimension_];
              v49 = objc_opt_self();
              v50 = [v49 sizeWithWidthDimension:v47 heightDimension:v48];

              v51 = [objc_opt_self() itemWithLayoutSize_];
              v52 = [v46 absoluteDimension_];
              v53 = [v46 absoluteDimension_];
              v54 = [v49 sizeWithWidthDimension:v52 heightDimension:v53];

              v55 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
              v56 = swift_allocObject();
              *(v56 + 16) = xmmword_1E4298880;
              *(v56 + 32) = v51;
              sub_1E3280A90(0, &unk_1EE23B0A0);
              v57 = v51;
              v58 = sub_1E42062A4();

              v59 = [v55 horizontalGroupWithLayoutSize:v54 subitems:v58];

              v60 = [objc_opt_self() sectionWithGroup_];
              [v60 setInterGroupSpacing_];
              v61.n128_u64[0] = v43;
              v62.n128_u64[0] = v44;
              nullsub_1(v61, v62);
              [v60 setContentInsets_];
              sub_1E3A258E4(v38);
              v67 = sub_1E3952BE0(v63, v64, v65, v66);
              v68 = [v4 view];
              if (v68)
              {
                v69 = v68;
                type metadata accessor for EpisodeContainerView();
                OUTLINED_FUNCTION_3_54();
                swift_dynamicCastClassUnconditional();
                sub_1E3A53138(v38 - v67);
                v71 = v70;

                [v60 contentInsets];
                [v60 setContentInsets_];

                return;
              }

              goto LABEL_32;
            }

            swift_getObjectType();
            Width = sub_1E40175B0();
          }

          v38 = Width;
          goto LABEL_23;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }
}

uint64_t sub_1E3898A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  return sub_1E4148C68(v45, a3, &a45);
}

uint64_t sub_1E3898B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF2CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4200E34();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x417373696D736944, 0xED00006E6F697463, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E3898E04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LibShowDetailsView();
  v7 = v6[5];
  *&v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA80);
  sub_1E42038E4();
  *(a3 + v7) = v45;
  v8 = (a3 + v6[7]);
  type metadata accessor for Router();
  OUTLINED_FUNCTION_2_56();
  sub_1E389BA00(v9, v10);
  *v8 = sub_1E4201754();
  v8[1] = v11;
  v12 = a3 + v6[9];
  *v12 = sub_1E3898DD8;
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(a3 + v6[12]) = 0x4010000000000000;
  *(a3 + v6[13]) = 0x4030000000000000;
  v13 = [a1 contextData];
  if (v13 && (v14 = sub_1E3751A20(v13)) != 0 && (v15 = sub_1E374BD08(v14), , v15))
  {

    sub_1E37FAF8C();

    v16 = OUTLINED_FUNCTION_146();
    sub_1E3277E60(v16, v17, v15, v18);

    if (*(&v44 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
      }

      goto LABEL_10;
    }

    v19 = 0;
  }

  else
  {
    v15 = 0;
    v43 = 0u;
    v44 = 0u;
    v19 = 1;
  }

  sub_1E325F6F0(&v43, &unk_1ECF296E0);
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  if (v19)
  {
    v43 = 0uLL;
    v44 = 0uLL;
LABEL_13:
    sub_1E325F6F0(&v43, &unk_1ECF296E0);
    goto LABEL_14;
  }

LABEL_10:
  sub_1E37FAFA4();

  v20 = OUTLINED_FUNCTION_146();
  sub_1E3277E60(v20, v21, v15, v22);

  if (!*(&v44 + 1))
  {
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v23 = v42;
LABEL_15:
  type metadata accessor for LibShowDetailsViewModel();
  sub_1E3743538(&v45, &v43, &qword_1ECF2A778);
  sub_1E3A6B1BC(&v43, v23);
  v24 = a3 + v6[8];
  *v24 = sub_1E38074D0;
  *(v24 + 1) = a2;
  v24[16] = 0;
  v25 = (a3 + v6[6]);
  OUTLINED_FUNCTION_3_55();
  sub_1E389BA00(v26, v27);

  *v25 = sub_1E42010C4();
  v25[1] = v28;
  v29 = sub_1E389AED8([a1 uiConfiguration]);
  v30 = (a3 + v6[11]);
  *v30 = v29;
  v30[1] = v31;
  v32 = sub_1E4205F14();
  v34 = v33;
  type metadata accessor for Metrics();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v36;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v38;
  *(inited + 120) = v37;
  *(inited + 96) = v32;
  *(inited + 104) = v34;

  OUTLINED_FUNCTION_146();
  v39 = sub_1E4205CB4();
  v40 = sub_1E3BA5560(v39, 1);

  *(a3 + v6[10]) = v40;
  return sub_1E325F6F0(&v45, &qword_1ECF2A778);
}

uint64_t type metadata accessor for LibShowDetailsView()
{
  result = qword_1ECF4EA80;
  if (!qword_1ECF4EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38992EC()
{
  OUTLINED_FUNCTION_31_1();
  v57 = v1;
  v2 = type metadata accessor for LibShowDetailsView();
  v49 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v59 = v4;
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v48 - v8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAA0);
  OUTLINED_FUNCTION_0_10();
  v53 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v48 - v16;
  *v9 = sub_1E4203DA4();
  v9[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAB0);
  sub_1E3899918();
  v18 = v0 + *(v2 + 24);
  v19 = v0;
  v48 = v0;
  v20 = (*(**(v18 + 8) + 264))();
  sub_1E389AF48(v19, v5);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_1E389AFAC(v5, v22 + v21);
  *(v9 + *(v6 + 52)) = v20;
  v23 = (v9 + *(v6 + 56));
  *v23 = sub_1E389B010;
  v23[1] = v22;
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  sub_1E32752B0(&qword_1ECF2CAB8, &qword_1ECF2CA90);
  v24 = v50;
  sub_1E4202EA4();

  v25 = v48;
  sub_1E325F6F0(v9, &qword_1ECF2CA90);
  sub_1E389AF48(v25, v5);
  v26 = v49;
  v27 = swift_allocObject();
  v56 = v5;
  sub_1E389AFAC(v5, v27 + v21);
  sub_1E389B17C();
  sub_1E383B5A4(sub_1E389B06C, v27, v51);

  sub_1E325F6F0(v24, &qword_1ECF2CA98);
  v28 = *(v25 + *(v26 + 28));
  if (v28)
  {
    type metadata accessor for Route(0);
    sub_1E389BA00(qword_1EE23C6B8, type metadata accessor for Route);
    v29 = v28;
    OUTLINED_FUNCTION_32_0();
    v30 = sub_1E4200BC4();
    type metadata accessor for NavigationBarObservableModel(0);
    OUTLINED_FUNCTION_4_57();
    sub_1E389BA00(v31, v32);
    sub_1E4200BC4();
    v33 = sub_1E379D97C(v29, v30);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v54;
    (*(v53 + 32))(v54, v58, v55);
    v41 = (v40 + *(v52 + 36));
    *v41 = v33;
    v41[1] = v35;
    v41[2] = v37;
    v41[3] = v39;
    v42 = v56;
    sub_1E389AF48(v25, v56);
    v43 = swift_allocObject();
    sub_1E389AFAC(v42, v43 + v21);
    v44 = v57;
    sub_1E3741EA0(v40, v57, &qword_1ECF2CAA8);
    v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CAC8) + 36));
    *v45 = sub_1E389B264;
    v45[1] = v43;
    v45[2] = 0;
    v45[3] = 0;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_2_56();
    sub_1E389BA00(v46, v47);
    sub_1E4201744();
    __break(1u);
  }
}

void sub_1E3899918()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v42 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB08);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  sub_1E3899B38();
  v13 = type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_8();
  if ((*(v14 + 168))())
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v19 = (v1 + *(v13 + 44));
    v20 = *v19;
    v21 = v19[1];

    v22 = OUTLINED_FUNCTION_18();
    v23 = sub_1E3F06F18(v20, v21, v22 & 1);
    v16 = v24;
    v18 = v25;
    v17 = v26;
    v15 = v23 & 1;
  }

  v27 = *(v5 + 16);
  v27(v9, v12, v3);
  v41 = v12;
  v28 = v9;
  v29 = v42;
  v27(v42, v28, v3);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB10) + 48));
  v31 = OUTLINED_FUNCTION_9_43();
  sub_1E389B960(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_9_43();
  sub_1E389B9A8(v34, v35, v36);
  *v30 = v15;
  v30[1] = v16;
  v30[2] = v18;
  v30[3] = v17;
  v37 = *(v5 + 8);
  v37(v41, v3);
  v38 = OUTLINED_FUNCTION_9_43();
  sub_1E389B9A8(v38, v39, v40);
  v37(v28, v3);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3899B38()
{
  OUTLINED_FUNCTION_31_1();
  v48 = v1;
  v49 = sub_1E4200C24();
  OUTLINED_FUNCTION_0_10();
  v47 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v46 = v5 - v4;
  v45 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v39 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v42 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB18);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB20);
  OUTLINED_FUNCTION_0_10();
  v40 = v16;
  v41 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB28);
  OUTLINED_FUNCTION_0_10();
  v43 = v21;
  v44 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  sub_1E4202704();
  v50 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB30);
  sub_1E32752B0(&qword_1ECF2CB38, &qword_1ECF2CB30);
  sub_1E4200AD4();
  type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_8();
  v51 = (*(v26 + 144))();
  v52 = v27;
  v28 = sub_1E32752B0(&qword_1ECF2CB40, &qword_1ECF2CB18);
  v29 = sub_1E32822E0();
  v30 = MEMORY[0x1E69E6158];
  sub_1E4203034();

  (*(v12 + 8))(v15, v10);
  v31 = v39;
  v32 = v42;
  v33 = v45;
  (*(v39 + 104))(v42, *MEMORY[0x1E697C438], v45);
  v51 = v10;
  v52 = v30;
  v53 = v28;
  v54 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v40;
  sub_1E42033D4();
  (*(v31 + 8))(v32, v33);
  (*(v41 + 8))(v20, v35);
  v36 = v46;
  sub_1E4200C14();
  v51 = v35;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v43;
  sub_1E4202E44();
  (*(v47 + 8))(v36, v49);
  (*(v44 + 8))(v25, v37);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E389A008()
{
  v0 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  result = OUTLINED_FUNCTION_51_1();
  if (result)
  {
    sub_1E3898B28(v6);
    sub_1E4200E24();
    return (*(v2 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_1E389A0C8()
{
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E4201D44();
  sub_1E389BA00(&qword_1EE2889E8, MEMORY[0x1E697FCB0]);
  sub_1E4207CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB48);
  sub_1E389BA48();
  return sub_1E4200AA4();
}

void sub_1E389A1F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = type metadata accessor for LibShowDetailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v8[1] = (*(v5 + 216))();
  swift_getKeyPath();
  sub_1E389AF48(v1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1E389AFAC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB60);
  OUTLINED_FUNCTION_5_58(&qword_1ECF2CB70);
  sub_1E32752B0(&qword_1ECF2CB58, &qword_1ECF2CB60);
  OUTLINED_FUNCTION_10_38();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E389A3B4()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v0;
  v42 = v1;
  v3 = v2;
  v40 = v4;
  v6 = v5;
  v44 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB88);
  OUTLINED_FUNCTION_0_10();
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_33();
  sub_1E3EB9C0C(0, 0, 0, 0, 0, 1, v19 & 1, 2, v51, 0, 1, 0, 1, 0, 2, v32, SHIBYTE(v32));
  v20 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_20_33();
  sub_1E3EB9DAC(v51, 0, 0, 1, 0, 0, 1, 0, v52, 1, 0, 0, 256, 3, 0, v20 & 1, v33, v34);
  sub_1E389A760(v3, v10);
  v45 = v40;
  v46 = v41;
  v47 = v3;
  v48 = v42;
  v49 = v52;
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB90);
  sub_1E389BD00();
  sub_1E389BE28();
  v37 = v18;
  sub_1E4203B94();
  sub_1E37E6F2C(v52);
  type metadata accessor for LibShowDetailsView();
  sub_1E4203DA4();
  sub_1E4200D94();
  v41 = v54;
  v42 = v52[25];
  v40 = v56;
  v38 = v57;
  v60 = 1;
  v59 = v53;
  v58 = v55;
  v21 = v39;
  v22 = *(v39 + 16);
  v23 = v15;
  v36 = v15;
  v24 = OUTLINED_FUNCTION_146();
  v25 = v43;
  v22(v24);
  LOBYTE(v15) = v60;
  LOBYTE(v10) = v59;
  LOBYTE(v18) = v58;
  v26 = v44;
  (v22)(v44, v23, v25);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBC0) + 48);
  *v27 = 0;
  *(v27 + 8) = v15;
  v28 = v41;
  *(v27 + 16) = v42;
  *(v27 + 24) = v10;
  *(v27 + 32) = v28;
  *(v27 + 40) = v18;
  v29 = v37;
  v30 = v38;
  *(v27 + 48) = v40;
  *(v27 + 56) = v30;
  v31 = *(v21 + 8);
  v31(v29, v25);
  v31(v36, v25);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E389A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  if (a1)
  {
    v46 = v6;
    v47 = a2;

    sub_1E3B7B1C8();
    OUTLINED_FUNCTION_8();
    v21 = *(v20 + 312);

    v23 = v21(v22);

    v24 = **(v3 + *(type metadata accessor for LibShowDetailsView() + 24) + 8);
    v25 = (*(v24 + 272))();
    v27 = sub_1E41494A8(v25, v26);

    v48 = (v27 | v23) & 1;
    sub_1E4203AD4();
    v28 = *sub_1E3C8DC30();

    sub_1E39E19A0(a1, v28, v11);

    OUTLINED_FUNCTION_8();
    (*(v29 + 152))(v49);
    if (v50)
    {
      v34 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v32.n128_u64[0] = v49[2];
      v33.n128_u64[0] = v49[3];
      v30.n128_u64[0] = v49[0];
      v31.n128_u64[0] = v49[1];
      v34 = j_nullsub_1(v30, v31, v32, v33);
    }

    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = sub_1E4202734();

    (*(v8 + 32))(v16, v11, v46);
    v44 = v16 + *(v12 + 36);
    *v44 = v43;
    *(v44 + 8) = v39;
    *(v44 + 16) = v40;
    *(v44 + 24) = v41;
    *(v44 + 32) = v42;
    *(v44 + 40) = 0;
    sub_1E3741EA0(v16, v19, &qword_1ECF2CBA0);
    v45 = v47;
    sub_1E3741EA0(v19, v47, &qword_1ECF2CBA0);
    return __swift_storeEnumTagSinglePayload(v45, 0, 1, v12);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }
}

void sub_1E389AB14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LibShowDetailsView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v11[25] = v5;
  swift_getKeyPath();
  sub_1E389AF48(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 211) & ~*(v7 + 80);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v3, 0xC3uLL);
  sub_1E389AFAC(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  sub_1E375C1CC(v3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBB8);
  OUTLINED_FUNCTION_5_58(&qword_1ECF2CBD0);
  sub_1E32752B0(&qword_1ECF2CBB0, &qword_1ECF2CBB8);
  OUTLINED_FUNCTION_10_38();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E389ACD8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1E40EA03C(*v3, v1, 0, 0, &v23 - v14);
  type metadata accessor for LibShowDetailsView();
  sub_1E4203DA4();
  sub_1E4200D94();
  v26 = v30;
  v27 = v28;
  v24 = v33;
  v25 = v32;
  v36 = 1;
  v35 = v29;
  v34 = v31;
  v16 = *(v8 + 16);
  v16(v12, v15, v6);
  v17 = v36;
  LOBYTE(v3) = v35;
  v18 = v34;
  v16(v5, v12, v6);
  v19 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBD8) + 48);
  *v19 = 0;
  *(v19 + 8) = v17;
  v20 = v26;
  *(v19 + 16) = v27;
  *(v19 + 24) = v3;
  *(v19 + 32) = v20;
  *(v19 + 40) = v18;
  v21 = v24;
  *(v19 + 48) = v25;
  *(v19 + 56) = v21;
  v22 = *(v8 + 8);
  v22(v15, v6);
  v22(v12, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E389AED8(void *a1)
{
  v2 = [a1 loadingViewText];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E389AF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibShowDetailsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E389AFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibShowDetailsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E389B010()
{
  v0 = type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_17_2(v0);

  return sub_1E389A008();
}

uint64_t sub_1E389B06C(double a1)
{
  v2 = type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_17_2(v2);
  type metadata accessor for NavigationBarObservableModel(0);
  OUTLINED_FUNCTION_4_57();
  sub_1E389BA00(v3, v4);
  OUTLINED_FUNCTION_32_0();
  v5 = *sub_1E4200BC4();
  (*(v5 + 296))(a1);
}

unint64_t sub_1E389B17C()
{
  result = qword_1ECF2CAC0;
  if (!qword_1ECF2CAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA98);
    sub_1E32752B0(&qword_1ECF2CAB8, &qword_1ECF2CA90);
    sub_1E389BA00(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CAC0);
  }

  return result;
}

uint64_t sub_1E389B264()
{
  v0 = type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_8();
  return (*(v1 + 296))();
}

void sub_1E389B338()
{
  sub_1E389B45C();
  if (v0 <= 0x3F)
  {
    sub_1E389B4B4();
    if (v1 <= 0x3F)
    {
      sub_1E389B518();
      if (v2 <= 0x3F)
      {
        sub_1E389B5AC();
        if (v3 <= 0x3F)
        {
          sub_1E389B640();
          if (v4 <= 0x3F)
          {
            sub_1E389B6D4();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Metrics();
              if (v6 <= 0x3F)
              {
                sub_1E389B768();
                if (v7 <= 0x3F)
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

void sub_1E389B45C()
{
  if (!qword_1EE289EB8)
  {
    sub_1E4200E34();
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289EB8);
    }
  }
}

void sub_1E389B4B4()
{
  if (!qword_1ECF2CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA80);
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2CAD8);
    }
  }
}

void sub_1E389B518()
{
  if (!qword_1ECF2CAE0)
  {
    type metadata accessor for LibShowDetailsViewModel();
    sub_1E389BA00(&qword_1ECF2CA88, type metadata accessor for LibShowDetailsViewModel);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2CAE0);
    }
  }
}

void sub_1E389B5AC()
{
  if (!qword_1EE2892C0)
  {
    type metadata accessor for Router();
    sub_1E389BA00(&qword_1EE23C228, type metadata accessor for Router);
    v0 = sub_1E4201764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2892C0);
    }
  }
}

void sub_1E389B640()
{
  if (!qword_1ECF2CAE8)
  {
    type metadata accessor for Route(255);
    sub_1E389BA00(qword_1EE23C6B8, type metadata accessor for Route);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2CAE8);
    }
  }
}

void sub_1E389B6D4()
{
  if (!qword_1ECF2CAF0)
  {
    type metadata accessor for NavigationBarObservableModel(255);
    sub_1E389BA00(qword_1EE24A570, type metadata accessor for NavigationBarObservableModel);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2CAF0);
    }
  }
}

void sub_1E389B768()
{
  if (!qword_1EE23B5F8)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B5F8);
    }
  }
}

unint64_t sub_1E389B7B8()
{
  result = qword_1ECF2CAF8;
  if (!qword_1ECF2CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CAC8);
    sub_1E389B844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CAF8);
  }

  return result;
}

unint64_t sub_1E389B844()
{
  result = qword_1ECF2CB00;
  if (!qword_1ECF2CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CAA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA98);
    sub_1E389B17C();
    swift_getOpaqueTypeConformance2();
    sub_1E389B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CB00);
  }

  return result;
}

unint64_t sub_1E389B90C()
{
  result = qword_1EE24E1B8[0];
  if (!qword_1EE24E1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24E1B8);
  }

  return result;
}

uint64_t sub_1E389B960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E389B9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E389BA00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E389BA48()
{
  result = qword_1ECF2CB50;
  if (!qword_1ECF2CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB48);
    sub_1E32752B0(&qword_1ECF2CB58, &qword_1ECF2CB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CB50);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200E34();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_23(v0[6]);

  OUTLINED_FUNCTION_11_40();
  OUTLINED_FUNCTION_18_23(v0[11]);

  return swift_deallocObject();
}

void sub_1E389BC3C(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_17_2(v2);
  *a1 = sub_1E4201D54();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB78);
  sub_1E389A3B4();
}

unint64_t sub_1E389BD00()
{
  result = qword_1ECF2CB98;
  if (!qword_1ECF2CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB80);
    sub_1E389BD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CB98);
  }

  return result;
}

unint64_t sub_1E389BD84()
{
  result = qword_1EE289BD8;
  if (!qword_1EE289BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CBA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BD8);
  }

  return result;
}

unint64_t sub_1E389BE28()
{
  result = qword_1ECF2CBA8;
  if (!qword_1ECF2CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB90);
    sub_1E32752B0(&qword_1ECF2CBB0, &qword_1ECF2CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CBA8);
  }

  return result;
}

void sub_1E389BED8()
{
  v0 = type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E389ACD8();
}

uint64_t sub_1E389BF5C(double a1, double a2, double a3, double a4)
{
  v4 = NSStringFromCGRect(*&a1);
  v5 = sub_1E4205F14();

  return v5;
}

void sub_1E389BFA8()
{
  OUTLINED_FUNCTION_41_5();
  v118 = v0;
  LODWORD(v119) = v1;
  v3 = v2;
  v130 = v4;
  v127 = v5;
  v128 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v125 = v13;
  v15 = *v14;
  v123 = v14[1];
  v124 = v15;
  v16 = v14[2];
  v121 = v14[3];
  v122 = v16;
  v120 = v14;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v116 = v18;
  v117 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v115 - v21;
  v23 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(*v12 + 392);
  v129 = v12;
  if (v30(v27))
  {
    OUTLINED_FUNCTION_30();
    v32 = v23;
    *&v33 = COERCE_DOUBLE((*(v31 + 1128))());
    v115 = v25;
    v34 = v3;
    v36 = v35;

    v37 = *&v33;
    v23 = v32;
    v38 = (v36 & 1) == 0;
    v3 = v34;
    v25 = v115;
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 1.0;
    }
  }

  else
  {
    v39 = 1.0;
  }

  sub_1E3831F24(v3, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v40 = sub_1E325F748(v22, &qword_1ECF2A250);
    v41 = (v30)(v40);
    if (!v41 || (OUTLINED_FUNCTION_30(), v43 = (*(v42 + 984))(), v45 = v44, v41 = , (v45 & 1) != 0))
    {
      v43 = 0;
    }

    if ((v30)(v41))
    {
      v147[3] = &unk_1F5D5D888;
      v147[4] = &off_1F5D5C918;
      LOBYTE(v147[0]) = 12;
      v46 = sub_1E39C29F0(v147, 1);
      __swift_destroy_boxed_opaque_existential_1(v147);
      type metadata accessor for LayoutGrid();

      v43 = sub_1E3A25B9C(v47, v43, v46 & 1);
    }
  }

  else
  {
    (*(v25 + 32))(v29, v22, v23);
    v43 = sub_1E389CA24(v129, v29, 1);
    (*(v25 + 8))(v29, v23);
  }

  type metadata accessor for LayoutGrid();
  v48 = sub_1E3A25D00(v43, 0, v10, v39);
  v49 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_58_2();
  v50 = OUTLINED_FUNCTION_6_14(v48, v8, v49 & 1, &v162, 0, 1, 0, 1, v112, v113[0], v113[1], v113[2]);
  v160 = v162;
  v161[0] = *v163;
  *(v161 + 9) = *&v163[9];
  v158 = v164;
  v159 = v165;
  v157 = v166;
  v154 = v167;
  v155 = v168;
  v156 = v169;
  v51 = (v30)(v50);
  v52 = v48;
  if (v51)
  {
    sub_1E3A259B0(v51);
    v52 = v53;
  }

  v54 = sub_1E324FBDC();
  v56 = v116;
  v55 = v117;
  (*(v116 + 16))(v126, v54, v117);
  v57 = sub_1E41FFC94();
  v58 = sub_1E42067E4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    *(v59 + 4) = v52;
    _os_log_impl(&dword_1E323F000, v57, v58, "CollectionView:: computeBuilderContextForChildren downloadableImageWidth=%f", v59, 0xCu);
    MEMORY[0x1E69143B0](v59, -1, -1);
  }

  (*(v56 + 8))(v126, v55);
  v157 = 0;
  v191 = v160;
  *v192 = v161[0];
  *&v192[9] = *(v161 + 9);
  v193 = 0;
  v194 = v158;
  v195 = v159;
  v196 = v52;
  v197 = 0;
  v200 = v156;
  v199 = v155;
  v198 = v154;
  sub_1E375C2C0(&v191, v147);
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_5_59();
  v111 = v60;
  v110 = v61;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_14_46(v62, v63, v64, v65, v66, 1, 0, 0, v110, v111, 0, v114[0], v114[1], v114[2]);
  v176 = v174;
  memcpy(v153, v170, sizeof(v153));
  v151[0] = v171[0];
  *(v151 + 3) = *(v171 + 3);
  v148 = v172;
  v149[0] = *v173;
  *(v149 + 15) = *&v173[15];
  v67 = v175;
  v150 = 0;
  v68 = v130;

  sub_1E325F748(&v176, &qword_1ECF2BB28);
  if (v127)
  {
    v69 = 0;
  }

  else
  {
    v69 = v128;
  }

  v152 = 0;
  v70 = v118 & 1;
  v71 = v119 & 1;
  sub_1E3A25950(v10);
  v73 = v72;
  memcpy(v177, v153, sizeof(v177));
  v185 = v148;
  v119 = v69;
  v178 = v69;
  v179 = v8;
  v74 = v152;
  v180 = v152;
  *v181 = v151[0];
  *&v181[3] = *(v151 + 3);
  v182 = v48;
  v183 = v8;
  v75 = v150;
  v184 = v150;
  *v186 = v149[0];
  *&v186[15] = *(v149 + 15);
  v187 = v68;
  v127 = v70;
  LODWORD(v128) = v67;
  v188 = v67;
  v189 = v70;
  LODWORD(v126) = v71;
  v190 = v71;
  sub_1E375C1CC(v177, v147);
  v76 = j__OUTLINED_FUNCTION_18();
  v77 = j__OUTLINED_FUNCTION_18();
  j_j__OUTLINED_FUNCTION_5_8();
  j__OUTLINED_FUNCTION_51_1();
  v78 = j__OUTLINED_FUNCTION_18();
  v79 = sub_1E3CBD2B8();
  LOBYTE(v71) = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EBA150(v80, v81, v82, v83, v76, v77, 0, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, 0, 1, v78 & 1, v79, v71 & 1);
  sub_1E3EBA2D4(v73, 0);
  v147[32] = v68;

  v95 = v123;
  v94 = v124;
  v97 = v121;
  v96 = v122;
  if (v120[4])
  {
    v94 = OUTLINED_FUNCTION_5_8();
  }

  *&v147[28] = v94;
  v147[29] = v95;
  v147[30] = v96;
  v147[31] = v97;
  type metadata accessor for SearchCollectionViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v99 = *(v98 + 1680);

    v101 = v99(v100);
  }

  else
  {
    type metadata accessor for LibCollectionViewModel();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_30();
    v103 = *(v102 + 1608);

    v101 = v103(v104);
  }

  sub_1E3EBA2C8(v101);

LABEL_27:
  type metadata accessor for CollectionViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v106 = *(v105 + 1344);

    v106(v107);
    if (sub_1E373F6E0())
    {
      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_4_58();

      v108 = 1;
LABEL_33:
      BYTE2(v147[27]) = v108;
      goto LABEL_34;
    }

    v109 = sub_1E373F6E0();

    OUTLINED_FUNCTION_0_61();
    *&v146[89] = v156;
    *&v146[73] = v155;
    *&v146[57] = v154;
    sub_1E375C31C(v146);
    if (v109)
    {
      v108 = 2;
      goto LABEL_33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_4_58();
  }

LABEL_34:
  memcpy(v145, v147, sizeof(v145));
  memcpy(v146, v147, 0x150uLL);
  sub_1E37E6E1C(v145, v131);
  sub_1E375B760(v146);
  memcpy(v131, v153, sizeof(v131));
  v132 = v119;
  v133 = v8;
  v134 = v74;
  *v135 = v151[0];
  *&v135[3] = *(v151 + 3);
  v136 = v48;
  v137 = v8;
  v138 = v75;
  v139 = v148;
  *v140 = v149[0];
  *&v140[15] = *(v149 + 15);
  v141 = v130;
  v142 = v128;
  v143 = v127;
  v144 = v126;
  sub_1E37E6F2C(v131);
  memcpy(v125, v145, 0x150uLL);
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E389CA24(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    return 4;
  }

  type metadata accessor for LayoutGrid();
  v5 = *(*a1 + 392);

  v7 = (v5)(v6);
  v8 = sub_1E3B028AC();
  v9 = sub_1E3B02A04();
  v10 = OUTLINED_FUNCTION_51_1();
  v11 = sub_1E3A25EB8(v7, v8 & 1, v9 & 1, v10 & 1);
  v13 = v12;

  type metadata accessor for SearchCollectionViewModel();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
    {

      return 10;
    }

    if (a3)
    {
      (*(*v15 + 1680))();
      if (v13)
      {
        v21 = sub_1E389CC78();

        if (v21)
        {
          return 0;
        }

        else
        {
          return 4;
        }
      }

      else
      {
      }

      return v11;
    }
  }

  else
  {
    type metadata accessor for LibCollectionViewModel();
    if (swift_dynamicCastClass())
    {
      if (sub_1E3B0352C())
      {

        return 6;
      }

      if (!v5())
      {

        return 3;
      }

      OUTLINED_FUNCTION_30();
      v11 = (*(v16 + 984))();
      v18 = v17;

      v19 = (v18 & 1) == 0;
      v20 = 3;
      goto LABEL_19;
    }
  }

  v19 = (v13 & 1) == 0;
  v20 = 4;
LABEL_19:
  if (!v19)
  {
    return v20;
  }

  return v11;
}

uint64_t sub_1E389CC78()
{
  sub_1E389D0D4();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E389CD28()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v91 = v8;
  v9 = *v2;
  v85 = *(v2 + 2);
  v87 = *(v2 + 1);
  v90 = *(v2 + 3);
  if (!(*(*v10 + 392))() || (OUTLINED_FUNCTION_30(), v12 = (*(v11 + 984))(), v14 = v13, , (v14 & 1) != 0) || v12 == 21)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v7);
  }

  else
  {
    v15 = *MEMORY[0x1E69DDCE0];
    v16 = *(MEMORY[0x1E69DDCE0] + 8);
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
    v18 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  *&v19 = v7 - sub_1E3952BE0(v15, v16, v17, v18);
  v20 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_58_2();
  v21 = 1;
  OUTLINED_FUNCTION_6_14(v19, 0, v20 & 1, v111, 0, 1, 0, 1, v78, v80[0], v80[1], v80[2]);
  sub_1E375C2C0(v111, __dst);
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_5_59();
  v77 = v22;
  v75 = v23;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_14_46(v24, v25, v26, v27, v28, 1, 0, 0, v75, v77, 0, v81, v83, v84);
  v109 = 0;
  v110 = 0;
  memcpy(__dst, __src, sizeof(__dst));
  v118 = v7;
  v119 = v5;
  v120 = 0;
  *v121 = *v113;
  *&v121[3] = *&v113[3];
  v122 = v19;
  v123 = 0;
  v89 = v1 & 1;
  v124 = 0;
  v125 = v114;
  v126 = v115;
  *v127 = *v116;
  *&v127[9] = *&v116[9];
  v128 = v1 & 1;
  sub_1E375C1CC(__dst, v93);
  v29 = j__OUTLINED_FUNCTION_18();
  v30 = j__OUTLINED_FUNCTION_18();
  j_j__OUTLINED_FUNCTION_5_8();
  j__OUTLINED_FUNCTION_51_1();
  v31 = j__OUTLINED_FUNCTION_18();
  v32 = sub_1E3CBD2B8();
  v33 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EBA150(v34, v35, v36, v37, v29, v30, 0, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, 0, 1, v31 & 1, v32, v33 & 1);
  type metadata accessor for LibCollectionViewModel();
  v48 = swift_dynamicCastClass();
  if (v48)
  {
    v21 = (*(*v48 + 1608))();
  }

  sub_1E3EBA2C8(v21);
  v49 = v90;
  if (v3[4])
  {
    v50 = OUTLINED_FUNCTION_5_8();
    v52 = v51;
    v54 = v53;
    v49 = v55;
    sub_1E375C31C(v111);
    v56 = memcpy(v93, __src, sizeof(v93));
    OUTLINED_FUNCTION_2_57(v56, v57, v58, v59, v60, v61, v62, v63, v72, v73, v74, v76, v79, v82, v85, v87, 0, 0, v89, v90, v91, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9], v93[10], v93[11], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  }

  else
  {
    v50 = v9;
    v64 = memcpy(v93, __src, sizeof(v93));
    OUTLINED_FUNCTION_2_57(v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v76, v79, v82, v85, v87, 0, 0, v89, v90, v91, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9], v93[10], v93[11], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    sub_1E375C31C(v111);
    v54 = v86;
    v52 = v88;
  }

  *&v108[28] = v50;
  v108[29] = v52;
  v108[30] = v54;
  v108[31] = v49;
  memcpy(v92, v108, 0x150uLL);
  OUTLINED_FUNCTION_42();
}

unint64_t sub_1E389D0D4()
{
  result = qword_1EE259C60;
  if (!qword_1EE259C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C60);
  }

  return result;
}

void *sub_1E389D15C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E389D200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E389D308()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player);
  if (![v1 currentMediaItem] || (ObjectType = swift_getObjectType(), v3 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), OUTLINED_FUNCTION_92_0(), sub_1E4123590(v4, v3, v5), swift_unknownObjectRelease(), !v11))
  {
  }

  v6 = [v1 description];
  sub_1E4205F14();

  v7 = OUTLINED_FUNCTION_24_4();
  MEMORY[0x1E69109E0](v7);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  v8 = OUTLINED_FUNCTION_74();
  MEMORY[0x1E69109E0](v8);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return v10;
}

uint64_t sub_1E389D44C()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E389D494(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x746F4E666C656873;
      break;
    case 2:
      result = 0x457349666C656873;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7669746341746F6ELL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E389D604(char a1, char a2)
{
  v3 = sub_1E389D494(a1);
  v5 = v4;
  if (v3 == sub_1E389D494(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E389D688()
{
  sub_1E38A731C();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E389D740(char a1)
{
  sub_1E4207B44();
  sub_1E389D494(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E389D7AC(uint64_t a1, char a2)
{
  sub_1E389D494(a2);
  sub_1E4206014();
}

uint64_t sub_1E389D808(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E389D494(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E389D868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E389D44C();
  *a1 = result;
  return result;
}

unint64_t sub_1E389D898@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E389D494(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E389D8C4()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 432);
    v4 = v3;
    v5 = v2();

    if (v5)
    {
      type metadata accessor for LivePostPlayTemplateViewController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1E389D964()
{
  v1 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E389D9A4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E389D9E8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player) currentMediaItem];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hasTrait_];
  swift_unknownObjectRelease();
  return v2;
}

void sub_1E389DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108_2();
  a19 = v21;
  a20 = v22;
  v23 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController____lazy_storage___tapGestureRecognizer;
  v24 = *&v20[OBJC_IVAR____TtC8VideosUI22LivePostPlayController____lazy_storage___tapGestureRecognizer];
  if (!v24)
  {
    v25 = v20;
    a12 = type metadata accessor for LivePostPlayController();
    a9 = v20;
    v26 = objc_allocWithZone(MEMORY[0x1E69DD060]);
    v27 = v20;
    v28 = sub_1E3814AF0(&a9, sel_didTapWithGesture_);
    [v28 setDelegate_];
    v29 = *&v25[v23];
    *&v25[v23] = v28;
    v28;

    v24 = 0;
  }

  v30 = v24;
  OUTLINED_FUNCTION_109_4();
}

void sub_1E389DB18()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_74();
  sub_1E389DB60();
}

void sub_1E389DB60()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v36 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_prefetchedPlayer] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask] = 0;
  v11 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController] = 0;
  v12 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_animationDuration] = 0x3FF0000000000000;
  sub_1E41FFCA4();
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_cancellables] = MEMORY[0x1E69E7CD0];
  _s28LivePostPlayShelfFetchPolicyVMa();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss] = 0;
  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController____lazy_storage___tapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] = v7;
  v17 = *&v2[v11];
  *&v2[v11] = v5;
  v18 = v7;
  v38 = v5;

  v19 = *&v2[v12];
  *&v2[v12] = v37;
  v20 = v37;

  type metadata accessor for PlayerLiveEventMonitor();
  v21 = v18;
  *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerLiveEventMonitor] = sub_1E3B3DAB8();
  v39.receiver = v2;
  v39.super_class = type metadata accessor for LivePostPlayController();
  v22 = objc_msgSendSuper2(&v39, sel_init);
  (*(v36 + 16))(v1, v22 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0], v8);
  v23 = v22;
  v24 = v1;
  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_6_21();
    v28 = v20;
    v29 = OUTLINED_FUNCTION_160();
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v29 = v23;
    v30 = v23;
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v31, v32, "%@ init");
    sub_1E325F6F0(v29, &unk_1ECF28E30);
    v20 = v28;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();
  }

  (*(v36 + 8))(v24, v8);
  sub_1E389E730();
  sub_1E389FA7C();
  sub_1E389FC04();
  sub_1E389ED30();
  sub_1E38A5438();
  if ([v21 currentMediaItem])
  {
    swift_getObjectType();
    v33 = sub_1E41236C0(@"VUIMediaItemMetadataKeyAutoExitOnBroadcastEndInSeconds");
    v35 = v34;
    swift_unknownObjectRelease();

    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v33 = 0;
LABEL_8:
  *&v23[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay] = v33;

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LivePostPlayController()
{
  result = qword_1EE29A6D0;
  if (!qword_1EE29A6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E389DF64()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger, v1);
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_160();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    OUTLINED_FUNCTION_102_6(&dword_1E323F000, v9, v10, "%@ deinit");
    sub_1E325F6F0(v12, &unk_1ECF28E30);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v7, v1);
  v14.receiver = v8;
  v14.super_class = type metadata accessor for LivePostPlayController();
  objc_msgSendSuper2(&v14, sel_dealloc);
  OUTLINED_FUNCTION_95();
}

void sub_1E389E248(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  if (a1)
  {
    sub_1E38A3A5C();
  }

  sub_1E38A524C();
}

void sub_1E389E2DC(void *a1)
{
  v3 = v1;
  sub_1E38A32E8(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  aBlock = sub_1E4205F14();
  v28 = v6;
  sub_1E4207414();
  v7 = *(v3 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player);
  v8 = sub_1E3280A90(0, &qword_1ECF3A0B0);
  *(inited + 96) = v8;
  *(inited + 72) = v7;
  v9 = v7;
  v10 = sub_1E4205CB4();
  v11 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x100))();
  if (v11)
  {
    v12 = v11;
    sub_1E4205F14();
    *(&v25 + 1) = v13;
    sub_1E4207414();
    v26 = v8;
    *&v25 = v12;
    sub_1E329504C(&v25, v24);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E377DF14(v24, &aBlock);
    sub_1E375D84C(&aBlock);
  }

  v14 = [objc_opt_self() defaultCenter];
  sub_1E37E7460(@"VUILiveSportsPostPlayAutoPlayWillStartNotification", 0, v10, v14);

  v15 = v3;
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_6_21();
    v18 = OUTLINED_FUNCTION_36_8();
    *v2 = 138412290;
    *(v2 + 4) = v15;
    *v18 = v3;
    v19 = v15;
    _os_log_impl(&dword_1E323F000, v16, v17, "%@ Pausing player because countdown timer fired", v2, 0xCu);
    sub_1E325F6F0(v18, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  [v9 pause];
  v20 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v31 = sub_1E38A6934;
  v32 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1E329EEC4;
  v30 = &block_descriptor_22;
  v22 = _Block_copy(&aBlock);
  v23 = a1;

  [v20 playMediaInfo:v23 watchType:3 isRentAndWatchNow:0 completion:v22];
  _Block_release(v22);
}

void sub_1E389E66C()
{
  v2 = v0;
  v3 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_67_5())
  {
    OUTLINED_FUNCTION_6_21();
    v4 = OUTLINED_FUNCTION_32_27();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v4 = v2;
    v5 = v2;
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_103_0(v6, v7, v8, v9);
    sub_1E325F6F0(v4, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_9();
  }

  sub_1E38A1FA8();
}

void sub_1E389E730()
{
  v0 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_8();
  (*(v2 + 192))();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1EE28A0F8, &qword_1ECF2CD10);
  sub_1E4200844();

  v3 = OUTLINED_FUNCTION_74();
  v4(v3);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_95();
}

void sub_1E389E8C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v45 = v8;
    v46 = v9;
    v47 = v4;
    v48 = v2;
    OUTLINED_FUNCTION_8();
    v20 = *(v19 + 168);

    v22 = v20(v21);

    v23 = v18;
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_100();
      v44 = v22;
      v27 = OUTLINED_FUNCTION_160();
      v49[0] = swift_slowAlloc();
      *v26 = 138412802;
      *(v26 + 4) = v23;
      *v27 = v18;
      *(v26 + 12) = 2080;
      v28 = v23;
      v29 = sub_1E3B3D050(v44);
      v31 = sub_1E3270FC8(v29, v30, v49);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      v32 = sub_1E3B3D050(v16);
      v34 = sub_1E3270FC8(v32, v33, v49);

      *(v26 + 24) = v34;
      _os_log_impl(&dword_1E323F000, v24, v25, "%@ Playhead position changing from %s to %s", v26, 0x20u);
      sub_1E325F6F0(v27, &unk_1ECF28E30);
      v22 = v44;
      OUTLINED_FUNCTION_6_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_79();
    }

    *(v23 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed) = 0;
    *(v23 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed) = 0;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v35 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v22;
    *(v37 + 25) = v16;
    v49[4] = sub_1E38A8318;
    v49[5] = v37;
    OUTLINED_FUNCTION_25_7();
    v49[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v49[2] = v38;
    v49[3] = &block_descriptor_149;
    v39 = _Block_copy(v49);

    sub_1E4203FE4();
    v49[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_59();
    sub_1E3274A24(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v42, v43);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v45, v39);
    _Block_release(v39);

    (*(v47 + 8))(v45, v48);
    (*(v11 + 8))(v15, v46);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E389ED30()
{
  OUTLINED_FUNCTION_31_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v46 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v45 = objc_opt_self();
  v16 = [v45 defaultCenter];
  v17 = *sub_1E37E1340();
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v18 = sub_1E4206A04();
  v47 = v18;
  v44 = sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_3_56();
  v43 = sub_1E3274A24(v23, v24);
  v42 = sub_1E3746800();
  v37 = v4;
  sub_1E42007D4();
  sub_1E325F6F0(v3, &unk_1ECF2D2B0);

  v25 = *(v6 + 8);
  v40 = v6 + 8;
  v41 = v25;
  v25(v10, v4);
  OUTLINED_FUNCTION_4_0();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v26);
  swift_unknownObjectWeakInit();
  v39 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  v27 = *(v46 + 8);
  v46 += 8;
  v38 = v27;
  v27(v15, v11);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  v28 = [v45 defaultCenter];
  v29 = *sub_1E37E13C8();
  sub_1E4206C14();

  v30 = sub_1E4206A04();
  v47 = v30;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v44);
  v34 = v37;
  sub_1E42007D4();
  sub_1E325F6F0(v3, &unk_1ECF2D2B0);

  v41(v10, v34);
  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v35);
  swift_unknownObjectWeakInit();
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  v38(v15, v11);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E389F1C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_78_3();
  }

  v13 = v0;
  v34 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  v15 = os_log_type_enabled(v34, v14);
  if (v3)
  {
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_6_21();
      v17 = OUTLINED_FUNCTION_160();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1E323F000, v34, v14, "%@ not prefetching playback as playbackPrefetchTimerDuration is nil", v16, 0xCu);
      sub_1E325F6F0(v17, &unk_1ECF28E30);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    if (v15)
    {
      OUTLINED_FUNCTION_49_0();
      v21 = OUTLINED_FUNCTION_36_8();
      OUTLINED_FUNCTION_65_8(v21, 5.778e-34);
      *(v3 + 12) = 2048;
      *(v3 + 14) = v5;
      v22 = v13;
      _os_log_impl(&dword_1E323F000, v34, v14, "%@ Preparing for playback prefetching with prefetch timer duration - %f", v3, 0x16u);
      sub_1E325F6F0(v21, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_89();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = v5;
    v28[6] = v7;
    v29 = v7;
    v30 = OUTLINED_FUNCTION_23_7();
    *&v1[v12] = sub_1E37748D8(v30, v31, v11, v32, v28);

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E389F474()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[10] = v2;
  v0[9] = v3;
  v4 = sub_1E42075E4();
  v0[12] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[13] = v5;
  v0[14] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E389F524()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v6 = v2;
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1E389F648;
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_25();

    return v6();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v5();
  }
}

uint64_t sub_1E389F648()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v6 + 136) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E389F7A4()
{
  OUTLINED_FUNCTION_134();
  if (sub_1E4206504())
  {
    v1 = *(v0 + 120);
    v2 = sub_1E41FFC94();
    v3 = sub_1E4206814();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 120);
    if (v4)
    {
      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_58_11(v6, 5.7779e-34);
      OUTLINED_FUNCTION_53_15(&dword_1E323F000, v2, v3, "%@ Playback prefetch task canceled before timer was fired");
      sub_1E325F6F0(v6, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_15_12();

    return v7();
  }

  else
  {
    swift_unknownObjectWeakInit();
    sub_1E4206434();
    *(v0 + 144) = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    v10 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E389F988, v10, v9);
  }
}

uint64_t sub_1E389F924()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E389F988()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E38A5080(*(v0 + 88));
  }

  MEMORY[0x1E69144A0](v0 + 64);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E389FA1C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v1();
}

uint64_t sub_1E389FA7C()
{
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v1 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_3_56();
  sub_1E3274A24(v2, v3);
  OUTLINED_FUNCTION_92_0();
  sub_1E4200844();

  v4 = OUTLINED_FUNCTION_74();
  v5(v4);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();
}

uint64_t sub_1E389FC04()
{
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v1 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_3_56();
  sub_1E3274A24(v2, v3);
  OUTLINED_FUNCTION_92_0();
  sub_1E4200844();

  v4 = OUTLINED_FUNCTION_74();
  v5(v4);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();
}

void sub_1E389FD84()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v50 = v12 - v11;
  v51 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v45 = v9;
    v46 = v6;
    v47 = v7;
    v48 = v2;
    v49 = v0;
    v23 = Strong;
    v24 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_49_0();
      v25 = OUTLINED_FUNCTION_26_22();
      *v6 = 138412546;
      *(v6 + 4) = v23;
      *v25 = v22;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 0x3FF0000000000000;
      v26 = v23;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v27, v28, v29, v30, v6, 0x16u);
      sub_1E325F6F0(v25, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v43 = sub_1E4206A04();
    sub_1E4204004();
    sub_1E4204074();
    v44 = *(v14 + 8);
    v44(v17, v51);
    OUTLINED_FUNCTION_4_0();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52[4] = sub_1E38A7F44;
    v52[5] = v31;
    OUTLINED_FUNCTION_25_7();
    v52[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v52[2] = v32;
    v52[3] = &block_descriptor_140;
    v33 = _Block_copy(v52);

    v34 = v50;
    sub_1E4203FE4();
    v52[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_59();
    sub_1E3274A24(v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v37, v38);
    v39 = v46;
    sub_1E42072E4();
    v40 = v43;
    MEMORY[0x1E69112E0](v20, v34, v39, v33);
    _Block_release(v33);

    v41 = OUTLINED_FUNCTION_74();
    v42(v41);
    (*(v45 + 8))(v34, v47);
    v44(v20, v51);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38A01C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v62 - v4;
  v6 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  if (sub_1E389D9E8())
  {
    v22 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E37E93E8(v1 + v22, v16, &qword_1ECF2CC00);
    if (__swift_getEnumTagSinglePayload(v16, 1, PolicyVMa) == 1)
    {
      sub_1E325F6F0(v16, &qword_1ECF2CC00);
      v23 = v1;
      v24 = sub_1E41FFC94();
      v25 = sub_1E4206814();

      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_6_21();
        v26 = OUTLINED_FUNCTION_32_27();
        *v1 = 138412290;
        *(v1 + 1) = v23;
        *v26 = v23;
        v27 = v23;
        OUTLINED_FUNCTION_103_0(&dword_1E323F000, v24, v25, "%@ Not starting shelf prefetch as no shelf fetch policy is provided");
        sub_1E325F6F0(v26, &unk_1ECF28E30);
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_7_9();
      }

      goto LABEL_23;
    }

    sub_1E38A7790(v16, v21);
    if (*v21 == 1)
    {
      if (v21[1] == 1)
      {
        sub_1E37E93E8(&v21[*(PolicyVMa + 24)], v5, &unk_1ECF28E20);
        if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
        {
          v47 = OUTLINED_FUNCTION_24_4();
          v48(v47);
          sub_1E41FE5C4();
          sub_1E41FE4F4();
          v50 = v49;
          v51 = *(v8 + 8);
          v51(v11, v6);
          if (*&v50 >= 0.0)
          {
            sub_1E38A1028(v50, 0);
          }

          else
          {
            v52 = v1;
            v53 = sub_1E41FFC94();
            sub_1E4206814();

            if (OUTLINED_FUNCTION_51_11())
            {
              OUTLINED_FUNCTION_6_21();
              v54 = OUTLINED_FUNCTION_36_8();
              OUTLINED_FUNCTION_65_8(v54, 5.7779e-34);
              v55 = v52;
              OUTLINED_FUNCTION_20_34();
              _os_log_impl(v56, v57, v58, v59, v11, 0xCu);
              sub_1E325F6F0(v54, &unk_1ECF28E30);
              OUTLINED_FUNCTION_7_7();
              OUTLINED_FUNCTION_55();
            }

            OUTLINED_FUNCTION_8();
            (*(v60 + 168))();
            sub_1E38A0824();
          }

          v61 = OUTLINED_FUNCTION_39_3();
          (v51)(v61);
          goto LABEL_22;
        }

        sub_1E325F6F0(v5, &unk_1ECF28E20);
        v33 = v1;
        v34 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_51_11())
        {
          OUTLINED_FUNCTION_6_21();
          v35 = OUTLINED_FUNCTION_9_44();
          OUTLINED_FUNCTION_55_11(5.7779e-34);
          *v36 = v33;
          v37 = v33;
          v40 = "%@ Not starting shelf prefetch as no prefetch date is provided";
LABEL_20:
          OUTLINED_FUNCTION_7_28(&dword_1E323F000, v38, v39, v40);
          sub_1E325F6F0(v35, &unk_1ECF28E30);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_65_0();
        }
      }

      else
      {
        v44 = v1;
        v34 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_51_11())
        {
          OUTLINED_FUNCTION_6_21();
          v35 = OUTLINED_FUNCTION_9_44();
          OUTLINED_FUNCTION_55_11(5.7779e-34);
          *v45 = v44;
          v46 = v44;
          v40 = "%@ Prefetch is disabled, will fetch shelf on demand";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v41 = v1;
      v34 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_51_11())
      {
        OUTLINED_FUNCTION_6_21();
        v35 = OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_55_11(5.7779e-34);
        *v42 = v41;
        v43 = v41;
        v40 = "%@ Not starting shelf prefetch as post play is disabled";
        goto LABEL_20;
      }
    }

LABEL_22:
    sub_1E38A77F4(v21);
LABEL_23:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v28 = v0;
  v62 = sub_1E41FFC94();
  v29 = sub_1E4206814();

  if (os_log_type_enabled(v62, v29))
  {
    OUTLINED_FUNCTION_6_21();
    v30 = OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_13_15(v30, 5.7779e-34);
    OUTLINED_FUNCTION_53_15(&dword_1E323F000, v62, v29, "%@ Not starting shelf prefetch timer as current media item is not a sporting event");
    sub_1E325F6F0(v30, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E38A0824()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v80 - v6;
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v13 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v1 + v13, v7, &qword_1ECF2CC00);
  if (__swift_getEnumTagSinglePayload(v7, 1, PolicyVMa) != 1)
  {
    v19 = OUTLINED_FUNCTION_16_0();
    sub_1E38A7790(v19, v20);
    if (*v12 == 1)
    {
      if ((v12[1] & 1) == 0)
      {
        v46 = &v12[*(PolicyVMa + 28)];
        v28 = *v46;
        v47 = v46[8];
        v48 = v1;
        v33 = sub_1E41FFC94();
        sub_1E4206814();

        v49 = OUTLINED_FUNCTION_51_11();
        if (v47)
        {
          if (!v49)
          {
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_6_21();
          v50 = OUTLINED_FUNCTION_11_41();
          OUTLINED_FUNCTION_58_11(v50, 5.7779e-34);
          OUTLINED_FUNCTION_20_34();
          OUTLINED_FUNCTION_53_15(v51, v52, v53, v54);
          sub_1E325F6F0(v50, &unk_1ECF28E30);
          goto LABEL_39;
        }

        if (!v49)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_49_0();
        v55 = OUTLINED_FUNCTION_36_8();
        OUTLINED_FUNCTION_65_8(v55, 5.778e-34);
        *(v47 + 12) = 2048;
        *(v47 + 14) = v28;
        v56 = v48;
        OUTLINED_FUNCTION_20_34();
        _os_log_impl(v57, v58, v59, v60, v47, 0x16u);
        sub_1E325F6F0(v55, &unk_1ECF28E30);
        OUTLINED_FUNCTION_7_7();
LABEL_26:
        OUTLINED_FUNCTION_6_0();
LABEL_27:

        goto LABEL_28;
      }

      v21 = v1;
      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_6_21();
        v25 = OUTLINED_FUNCTION_160();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_1E323F000, v22, v23, "%@ Prefetch timestamp is invalid, trying to fetch shelf on demand", v24, 0xCu);
        sub_1E325F6F0(v25, &unk_1ECF28E30);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_7_7();
      }

      v27 = &v12[*(PolicyVMa + 32)];
      if (*(v27 + 6))
      {
        if (*v27)
        {
          v28 = *(v27 + 1);
          v29 = v27[16];
          v30 = *(v27 + 3);
          v31 = v27[32];
          if (sub_1E389D688())
          {
            v32 = v21;
            v33 = sub_1E41FFC94();
            v34 = sub_1E4206814();

            v35 = os_log_type_enabled(v33, v34);
            if (v29)
            {
              if (v35)
              {
                OUTLINED_FUNCTION_6_21();
                v36 = OUTLINED_FUNCTION_11_41();
                *v1 = 138412290;
                *(v1 + 1) = v32;
                *v36 = v32;
                v37 = v32;
                v38 = "%@ Can't fetch shelf on demand cause fetch offset for game in progress is missing";
                v39 = v34;
LABEL_38:
                OUTLINED_FUNCTION_53_15(&dword_1E323F000, v33, v39, v38);
                sub_1E325F6F0(v36, &unk_1ECF28E30);
LABEL_39:
                OUTLINED_FUNCTION_6_0();
                goto LABEL_17;
              }

LABEL_18:

LABEL_19:
              sub_1E38A77F4(v12);
              goto LABEL_20;
            }

            if (!v35)
            {
              goto LABEL_27;
            }

            v66 = OUTLINED_FUNCTION_100();
            v67 = OUTLINED_FUNCTION_160();
            v68 = OUTLINED_FUNCTION_100();
            v80[0] = v68;
            *v66 = 138412802;
            *(v66 + 4) = v32;
            *v67 = v32;
            *(v66 + 12) = 2048;
            *(v66 + 14) = v28;
            *(v66 + 22) = 2080;
            v69 = v32;
            v70 = sub_1E3B3D050(v3);
            v72 = sub_1E3270FC8(v70, v71, v80);

            *(v66 + 24) = v72;
            _os_log_impl(&dword_1E323F000, v33, v34, "%@ using fetch offset - %f for playhead position - %s", v66, 0x20u);
            sub_1E325F6F0(v67, &unk_1ECF28E30);
            OUTLINED_FUNCTION_6_0();
            __swift_destroy_boxed_opaque_existential_1(v68);
            OUTLINED_FUNCTION_79();
            goto LABEL_26;
          }

          if (sub_1E389D688() & 1) != 0 || (sub_1E389D688())
          {
            v63 = v21;
            v33 = sub_1E41FFC94();
            v64 = sub_1E4206814();

            v65 = OUTLINED_FUNCTION_84_1();
            if (v31)
            {
              if (!v65)
              {
                goto LABEL_18;
              }

              OUTLINED_FUNCTION_6_21();
              v36 = OUTLINED_FUNCTION_11_41();
              OUTLINED_FUNCTION_58_11(v36, 5.7779e-34);
              v38 = "%@ Can't fetch shelf on demand cause fetch offset for game end is missing";
              v39 = v64;
              goto LABEL_38;
            }

            if (v65)
            {
              OUTLINED_FUNCTION_100();
              v73 = OUTLINED_FUNCTION_36_8();
              v74 = OUTLINED_FUNCTION_100();
              v80[0] = v74;
              *v31 = 138412802;
              *(v31 + 4) = v63;
              *v73 = v63;
              *(v31 + 12) = 2048;
              *(v31 + 14) = v30;
              *(v31 + 22) = 2080;
              v75 = v63;
              v76 = sub_1E3B3D050(v3);
              v78 = sub_1E3270FC8(v76, v77, v80);

              *(v31 + 24) = v78;
              _os_log_impl(&dword_1E323F000, v33, v64, "%@ using fetch offset - %f for playhead position - %s", v31, 0x20u);
              sub_1E325F6F0(v73, &unk_1ECF28E30);
              OUTLINED_FUNCTION_79();
              __swift_destroy_boxed_opaque_existential_1(v74);
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_55();
            }

            v28 = v30;
LABEL_28:
            sub_1E38A1028(v28, 0);
            goto LABEL_19;
          }

          v79 = v21;
          v33 = sub_1E41FFC94();
          sub_1E4206814();

          if (!OUTLINED_FUNCTION_67_5())
          {
            goto LABEL_18;
          }
        }

        else
        {
          v62 = v21;
          v33 = sub_1E41FFC94();
          sub_1E4206814();

          if (!OUTLINED_FUNCTION_67_5())
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v61 = v21;
        v33 = sub_1E41FFC94();
        sub_1E4206814();

        if (!OUTLINED_FUNCTION_67_5())
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v40 = v1;
      v33 = sub_1E41FFC94();
      sub_1E4206814();

      if (!OUTLINED_FUNCTION_67_5())
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_6_21();
    v41 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_54_7(v41, 5.7779e-34);
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_50_6(v42, v43, v44, v45);
    sub_1E325F6F0(v41, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
LABEL_17:
    OUTLINED_FUNCTION_6_0();
    goto LABEL_18;
  }

  sub_1E325F6F0(v7, &qword_1ECF2CC00);
  v14 = v1;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_11_41();
    *v1 = 138412290;
    *(v1 + 1) = v14;
    *v17 = v14;
    v18 = v14;
    OUTLINED_FUNCTION_53_15(&dword_1E323F000, v15, v16, "%@ Not fetching shelf as no shelf fetch policy is provided");
    sub_1E325F6F0(v17, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38A1028(void *a1, char a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41();
  v9 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask;
  v10 = *&v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask];
  if (v10)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  if (a2)
  {
    v11 = v4;
    v28 = OUTLINED_FUNCTION_66_11();
    v12 = sub_1E4206814();

    if (os_log_type_enabled(v28, v12))
    {
      v13 = OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      *v13 = 138412290;
      *(v13 + 4) = a1;
      *v14 = a1;
      v15 = a1;
      OUTLINED_FUNCTION_102_6(&dword_1E323F000, v28, v12, "%@ Not fetching shelf as shelf fetch timer duration is not provided");
      sub_1E325F6F0(v14, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_95();
  }

  else
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_56_10();
    sub_1E4206434();

    v22 = sub_1E4206424();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v10;
    v23[5] = a1;

    v25 = OUTLINED_FUNCTION_23_7();
    *&v4[v9] = sub_1E37748D8(v25, v26, v3, v27, v23);

    OUTLINED_FUNCTION_95();
  }
}

uint64_t sub_1E38A1270()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v0[5] = v2;
  v3 = sub_1E42075E4();
  v0[7] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[10] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E38A1348, v6, v5);
}

uint64_t sub_1E38A1348()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[13] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v1[14] = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0];
    v5 = Strong;
    v6 = OUTLINED_FUNCTION_66_11();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v7 = v1[6];
      OUTLINED_FUNCTION_49_0();
      v8 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412546;
      *(v2 + 4) = v0;
      *v8 = v4;
      *(v2 + 12) = 2048;
      *(v2 + 14) = v7;
      v9 = v0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
      sub_1E325F6F0(v8, &unk_1ECF28E30);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v19 = v15;
    v16 = swift_task_alloc();
    v1[15] = v16;
    *v16 = v1;
    v16[1] = sub_1E38A1534;
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_25();

    return v19();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v18();
  }
}

uint64_t sub_1E38A1534()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  v7 = *(v2 + 96);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_1E38A1840;
  }

  else
  {
    v9 = sub_1E38A16BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E38A16BC()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 104);

  v2 = sub_1E4206504();
  v3 = v1;
  v4 = sub_1E41FFC94();
  sub_1E4206814();

  v5 = OUTLINED_FUNCTION_85_5();
  if (v2)
  {
    v6 = *(v0 + 104);
    if (v5)
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_9_44();
      v6 = OUTLINED_FUNCTION_33_23(v7, 5.7779e-34);
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_50_6(v8, v9, v10, v11);
      sub_1E325F6F0(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v0 + 104);
      v13 = OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_102_6(v16, v17, v18, v19);
      sub_1E325F6F0(v14, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    v6 = *(v0 + 104);

    sub_1E38A18AC();
  }

  OUTLINED_FUNCTION_15_12();

  return v20();
}

uint64_t sub_1E38A1840()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E38A18AC()
{
  v2 = v0;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 appController];

  if (v4 && (v5 = [v4 appContext], v4, v5))
  {
    v6 = *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player];
    if ([v6 currentMediaItem] && (v7 = swift_getObjectType(), v8 = *MEMORY[0x1E69D5AE8], swift_unknownObjectRetain(), v9 = MEMORY[0x1E69E6158], sub_1E4123588(v7, MEMORY[0x1E69E6158]), sub_1E4123590(v8, v9, &v70), swift_unknownObjectRelease(), (v1 = v71) != 0))
    {
      oslog = v5;
      v10 = v70;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = MEMORY[0x1E69E6158];
      sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
      sub_1E4123590(@"VUIMediaItemMetadataPlayablePassThrough", v12, &v70);
      swift_unknownObjectRelease();
      v13 = v71;
      if (v71)
      {
        v66 = v6;
        v14 = v70;
        swift_unknownObjectRetain();
        sub_1E4123588(ObjectType, v9);
        sub_1E4123590(@"VUIMediaItemMetadataKeyBroadcastLocale", v9, &v70);
        swift_unknownObjectRelease();
        v15 = v70;
        v16 = v71;
        v17 = objc_allocWithZone(VUIDocumentContextDataLivePostPlay);
        v18 = sub_1E38A666C(v10, v1, v14, v13, v15, v16);
        sub_1E3280A90(0, &qword_1EE23B0D0);
        sub_1E4205F14();
        v19 = sub_1E38A1F34();
        v20 = sub_1E4205F14();
        sub_1E37FB7F0(v20, v21, v19, &selRef_setDocumentType_);
        v22 = sub_1E4205F14();
        sub_1E37FB7F0(v22, v23, v19, &selRef_setControllerRef_);
        [v19 setShouldLoadPageImmediately_];
        [v19 setContextData_];
        v24 = [objc_opt_self() sharedInstance];
        v25 = [v24 viewControllerWithDocumentDataSource:v19 appContext:oslog];

        if (v25)
        {
          type metadata accessor for LivePostPlayDocumentViewController();
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
          }
        }

        else
        {
          v26 = 0;
        }

        v52 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController;
        v53 = *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
        *&v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController] = v26;
        v54 = v26;

        if (v26)
        {
          v55 = [v66 currentMediaItem];
          if (v55)
          {
            v56 = swift_getObjectType();
            v67 = v18;
            v57 = *MEMORY[0x1E69D5DC0];
            sub_1E4123588(v56, MEMORY[0x1E69E6158]);
            v58 = v57;
            v18 = v67;
            sub_1E4123590(v58, MEMORY[0x1E69E6158], &v70);
            swift_unknownObjectRelease();
            v55 = v70;
            v59 = v71;
          }

          else
          {
            v59 = 0;
          }

          (*((*MEMORY[0x1E69E7D40] & *v54) + 0x6B0))(v55, v59);
        }

        if (*&v2[v52])
        {
          OUTLINED_FUNCTION_88_0();
          v61 = *(v60 + 1688);
          v63 = v62;
          v64 = v2;
          v61(v2, &off_1F5D60F68);
        }
      }

      else
      {

        v44 = v2;
        v45 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_51_11())
        {
          OUTLINED_FUNCTION_6_21();
          v46 = OUTLINED_FUNCTION_26_22();
          *v1 = 138412290;
          *(v1 + 4) = v44;
          *v46 = v44;
          v47 = v44;
          OUTLINED_FUNCTION_20_34();
          _os_log_impl(v48, v49, v50, v51, v1, 0xCu);
          sub_1E325F6F0(v46, &unk_1ECF28E30);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_21_0();
        }
      }
    }

    else
    {
      v36 = v2;
      v37 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_51_11())
      {
        OUTLINED_FUNCTION_6_21();
        v38 = OUTLINED_FUNCTION_26_22();
        *v1 = 138412290;
        *(v1 + 4) = v36;
        *v38 = v36;
        v39 = v36;
        OUTLINED_FUNCTION_20_34();
        _os_log_impl(v40, v41, v42, v43, v1, 0xCu);
        sub_1E325F6F0(v38, &unk_1ECF28E30);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_21_0();
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = v2;
    osloga = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(osloga, v28))
    {
      OUTLINED_FUNCTION_6_21();
      v29 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v29, 5.7779e-34);
      OUTLINED_FUNCTION_19_30(&dword_1E323F000, v30, v31, "%@ Cannot create live post play shelf because appContext is missing", v32, v33, v34, v35, v65, osloga);
      sub_1E325F6F0(v29, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_51_2();
    }
  }
}

id sub_1E38A1F34()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithDocumentRef_];

  return v2;
}

void sub_1E38A1FA8()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 168))();
  v3 = sub_1E38A5720();
  v4 = sub_1E38A5778();
  v5 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView;
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView);
  if (v6)
  {
    [v6 bounds];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  type metadata accessor for LayoutGrid();
  v9 = sub_1E3A2579C(v8);
  v10 = sub_1E3A24FDC(v9);
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (!v12)
  {
    v13 = *(v1 + v5);
    v14 = 0.0;
    if (v13)
    {
      [v13 bounds];
      v16 = v15;
      v17 = *(v1 + v5);
      if (v17)
      {
        [v17 bounds];
        v14 = v18;
      }
    }

    else
    {
      v16 = 0.0;
    }

    v10 = v16 < v14;
  }

  if ((OUTLINED_FUNCTION_83_3() & 1) == 0 && (OUTLINED_FUNCTION_101_1() & 1) == 0 || !*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController))
  {
    if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
    {
      OUTLINED_FUNCTION_101_1();
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_88_0();
  v20 = *(v19 + 1896);
  v22 = v21;
  v23 = v20();

  if (v3 & v4 & 1) == 0 || (*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible) & 1) != 0 || (v23 & 1) != 0 || (v10)
  {
LABEL_21:
    OUTLINED_FUNCTION_87();
    if ((*(v24 + 456))())
    {
      sub_1E38A32E8(0);
    }

    OUTLINED_FUNCTION_54_0();

    sub_1E38A22F8(v25);
    return;
  }

  if (((OUTLINED_FUNCTION_83_3() & 1) == 0 || *(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed) == 1) && ((OUTLINED_FUNCTION_101_1() & 1) == 0 || *(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed) == 1))
  {
    OUTLINED_FUNCTION_83_3();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_87();
  if ((*(v27 + 456))())
  {
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_0();

    sub_1E38A26C8();
  }
}

void sub_1E38A22F8(char a1)
{
  v3 = v1;
  oslog = sub_1E41FFC94();
  v4 = sub_1E4206814();

  v5 = os_log_type_enabled(oslog, v4);
  switch(a1)
  {
    case 1:
      if (v5)
      {
        OUTLINED_FUNCTION_6_21();
        v29 = OUTLINED_FUNCTION_11_41();
        OUTLINED_FUNCTION_13_15(v29, 5.7779e-34);
        OUTLINED_FUNCTION_19_30(&dword_1E323F000, v30, v31, "%@ Not showing shelf because it is not fetched yet", v32, v33, v34, v35, v37, oslog);
        sub_1E325F6F0(v29, &unk_1ECF28E30);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      OUTLINED_FUNCTION_21_6();
      (*(v36 + 168))();
      sub_1E38A0824();
      return;
    case 2:
      if (v5)
      {
        OUTLINED_FUNCTION_6_21();
        v14 = OUTLINED_FUNCTION_11_41();
        OUTLINED_FUNCTION_13_15(v14, 5.7779e-34);
        OUTLINED_FUNCTION_19_30(&dword_1E323F000, v15, v16, "%@ Not showing shelf because shelf is empty", v17, v18, v19, v20, v37, oslog);
        sub_1E325F6F0(v14, &unk_1ECF28E30);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      OUTLINED_FUNCTION_21_6();
      (*(v21 + 168))();
      if ((sub_1E389D688() & 1) != 0 && (*(v3 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange) & 1) == 0 && (sub_1E38A5720() & 1) != 0 && sub_1E38A5778())
      {
        sub_1E38A42FC();
      }

      return;
    case 3:
      if (v5)
      {
        OUTLINED_FUNCTION_6_21();
        v22 = OUTLINED_FUNCTION_11_41();
        OUTLINED_FUNCTION_13_15(v22, 5.7779e-34);
        OUTLINED_FUNCTION_19_30(&dword_1E323F000, v23, v24, "%@ Waiting for player controls or tabs to dismiss before showing post play shelf", v25, v26, v27, v28, v37, oslog);
        sub_1E325F6F0(v22, &unk_1ECF28E30);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      *(v3 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss) = 1;
      return;
    case 4:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because play head is not in event end or broadcast end range";
      break;
    case 5:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playback is not fullscreen";
      break;
    case 6:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because player is not active player";
      break;
    case 7:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playhead is still in game end range and we have already diplayed that shelf";
      break;
    case 8:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playhead is still in broadcast end range and we have already diplayed that shelf";
      break;
    case 9:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Not showing shelf because playback view width is too narrow";
      break;
    default:
      if (!v5)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v6, 5.7779e-34);
      v13 = "%@ Unknown shelf display failure reason, returning early";
      break;
  }

  OUTLINED_FUNCTION_19_30(&dword_1E323F000, v7, v8, v13, v9, v10, v11, v12, v37, oslog);
  sub_1E325F6F0(v6, &unk_1ECF28E30);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_51_2();
LABEL_31:
}

void sub_1E38A26C8()
{
  v7 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))())
  {
    v8 = v0;
    oslogb = OUTLINED_FUNCTION_66_11();
    LOBYTE(v0) = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v9, v10, v11, v12, v13, v14, v15, v16, oslogb))
    {
      OUTLINED_FUNCTION_6_21();
      v17 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_79_8(v17, 5.7779e-34);
      v18 = "%@ Live post play shelf is already being displayed";
LABEL_17:
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, oslog, v0, v18);
      sub_1E325F6F0(v17, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_6();
  v20 = (*(v19 + 168))();
  if ((sub_1E389D688() & 1) == 0 && (sub_1E389D688() & 1) == 0)
  {
    v41 = v0;
    oslogd = OUTLINED_FUNCTION_66_11();
    LOBYTE(v0) = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v42, v43, v44, v45, v46, v47, v48, v49, oslogd))
    {
      OUTLINED_FUNCTION_6_21();
      v17 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_79_8(v17, 5.7779e-34);
      v18 = "%@ Playhead position is not in any end range, unable to show live post play shelf";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v21 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController);
  if (!v21)
  {
    v32 = v7;
    oslogc = OUTLINED_FUNCTION_66_11();
    v0 = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v33, v34, v35, v36, v37, v38, v39, v40, oslogc))
    {
      OUTLINED_FUNCTION_6_21();
      v17 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_79_8(v17, 5.7779e-34);
      v18 = "%@ Unable to show list post play shelf because shelfViewController is nil";
      goto LABEL_17;
    }

LABEL_18:
    OUTLINED_FUNCTION_96_5();

    return;
  }

  v22 = *&v7[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView];
  if (!v22)
  {
    v52 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0];
    v53 = v21;
    v54 = v7;
    osloge = sub_1E41FFC94();
    v55 = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v56, v57, v58, v59, v60, v61, v62, v63, osloge))
    {
      OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_9_44();
      *v52 = 138412290;
      *(v52 + 4) = v54;
      *v64 = v7;
      v65 = v54;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, osloga, v55, "%@ Unable to show live post play shelf because presentationView is nil");
      sub_1E325F6F0(v64, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    goto LABEL_18;
  }

  v23 = *&v7[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController];
  if (!v23)
  {
    v22;
    v66 = v21;
    v67 = v7;
    v68 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_6_21();
      v69 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412290;
      *(v2 + 4) = v67;
      *v69 = v7;
      v70 = v67;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      sub_1E325F6F0(v69, &unk_1ECF28E30);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    goto LABEL_18;
  }

  v24 = v23;
  v25 = v22;
  v26 = v21;
  [v25 frame];
  OUTLINED_FUNCTION_3();
  v27 = v26;
  v28 = [v27 vuiParentViewController];
  if (!v28)
  {
    [v24 vui:v27 addChildViewController:?];
    v76 = OUTLINED_FUNCTION_100_1();
    if (v76)
    {
      v77 = v76;
      OUTLINED_FUNCTION_97_7(v76, sel_setFrame_);

      v78 = OUTLINED_FUNCTION_100_1();
      [v25 vui:v78 addSubview:0 oldView:?];

      [v27 vui:v24 didMoveToParentViewController:?];
      goto LABEL_29;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v29 = OUTLINED_FUNCTION_100_1();
  if (!v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v30 = v29;
  OUTLINED_FUNCTION_97_7(v29, sel_setFrame_);

  v31 = OUTLINED_FUNCTION_100_1();
  if (!v31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v31 setHidden_];

LABEL_29:
  v79 = sub_1E389D8C4();
  if (v79)
  {
    v80 = v79;
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    sub_1E404B22C();
  }

  v81 = v7;
  v82 = sub_1E41FFC94();
  v83 = sub_1E4206814();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = OUTLINED_FUNCTION_6_21();
    v85 = OUTLINED_FUNCTION_160();
    *v84 = 138412290;
    *(v84 + 4) = v81;
    *v85 = v7;
    v86 = v81;
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v87, v88, "%@ Show live post play shelf");
    sub_1E325F6F0(v85, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();
  }

  v89 = sub_1E389D688();
  v90 = 5;
  if (v89)
  {
    v90 = 4;
  }

  v81[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[v90]] = 1;
  v91 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
  swift_beginAccess();
  v81[v91] = 1;
  v92 = objc_opt_self();
  OUTLINED_FUNCTION_89();
  v93 = swift_allocObject();
  v93[2] = v27;
  v93[3] = v3;
  v93[4] = v4;
  v93[5] = v5;
  v93[6] = v6;
  v109 = sub_1E38A7370;
  v110 = v93;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1E378AEA4;
  v108 = &block_descriptor_96;
  v94 = _Block_copy(&aBlock);
  v95 = v27;

  OUTLINED_FUNCTION_4_0();
  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = v20;
  v109 = sub_1E38A747C;
  v110 = v97;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1E37EB82C;
  v108 = &block_descriptor_103;
  v98 = _Block_copy(&aBlock);

  [v92 vui:v94 animateWithDuration:v98 animations:1.0 completion:?];
  _Block_release(v98);
  _Block_release(v94);

  OUTLINED_FUNCTION_96_5();
}

void sub_1E38A2E40()
{
  v1 = v0;
  if ([*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] currentMediaItem] && (ObjectType = swift_getObjectType(), v3 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), OUTLINED_FUNCTION_92_0(), sub_1E4123590(v4, v3, v5), swift_unknownObjectRelease(), (v6 = v39) != 0))
  {
    v7 = v38;
  }

  else
  {

    v7 = 0;
    v6 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v9;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v10;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v11;
  *(inited + 80) = v7;
  *(inited + 88) = v6;
  v12 = sub_1E4205CB4();
  OUTLINED_FUNCTION_21_6();
  (*(v13 + 168))();
  if (sub_1E389D688())
  {
    v14 = sub_1E4205F14();
    sub_1E327D33C(v14, v15);
    if (v16)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v38 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570);
      sub_1E4207644();

      OUTLINED_FUNCTION_39_3();
      sub_1E4207664();
    }
  }

  v17 = sub_1E389D8C4();
  if (!v17 || (v18 = v17, OUTLINED_FUNCTION_64(), (*(v19 + 2328))(), v21 = v20, v18, !v21))
  {
  }

  v22 = objc_opt_self();
  v23 = sub_1E4205ED4();

  v24 = @"Player";
  v25 = sub_1E37E4D10(v12);

  v26 = sub_1E38A7618(v23, v24, v25, v22);

  v27 = [objc_opt_self() sharedInstance];
  [v27 recordPage_];

  if (sub_1E389D8C4())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v28 + 416))(&v38);

    if (v40)
    {
      __swift_project_boxed_opaque_existential_1(&v38, v40);
      OUTLINED_FUNCTION_91_3();
      v30 = v29;
      MEMORY[0x1EEE9AC00](v31);
      OUTLINED_FUNCTION_5();
      (*(v30 + 16))(v33 - v32);
      sub_1E325F6F0(&v38, &unk_1ECF296D0);
      v34 = OUTLINED_FUNCTION_90_4();
      v35(v34);
      v36 = OUTLINED_FUNCTION_16_0();
      v37(v36);
      sub_1E42048D4();
    }

    else
    {

      sub_1E325F6F0(&v38, &unk_1ECF296D0);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E38A32E8(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
  if (v3)
  {
    v5 = v3;
    v6 = v1;
    v7 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_6_21();
      v8 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412290;
      *(v2 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1E325F6F0(v8, &unk_1ECF28E30);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    v15 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
    swift_beginAccess();
    v6[v15] = 0;
    v16 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask;
    if (*&v6[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      OUTLINED_FUNCTION_78_3();
    }

    *&v6[v16] = 0;

    sub_1E38A3710();
    v28 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_56_10();
    v29 = swift_allocObject();
    *(v29 + 16) = v16;
    *(v29 + 24) = v5;
    v43 = sub_1E38A7850;
    v44 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1E378AEA4;
    v42 = &block_descriptor_119;
    v30 = _Block_copy(&aBlock);
    v31 = v5;

    OUTLINED_FUNCTION_4_0();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    *(v33 + 32) = a1 & 1;
    v43 = sub_1E38A7998;
    v44 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1E37EB82C;
    v42 = &block_descriptor_126;
    v34 = _Block_copy(&aBlock);
    v35 = v31;

    [v28 vui:v30 animateWithDuration:v34 animations:1.0 completion:?];
    _Block_release(v34);
    _Block_release(v30);
    if (sub_1E389D8C4())
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      (*(v36 + 2440))(1, 0, 1, 0, 1);
    }
  }

  else
  {
    v17 = v1;
    v37 = sub_1E41FFC94();
    v18 = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v19, v20, v21, v22, v23, v24, v25, v26, v37))
    {
      OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v27, 5.7779e-34);
      OUTLINED_FUNCTION_53_15(&dword_1E323F000, v38, v18, "%@ Not dismissing post play shelf because shelfViewController is nil");
      sub_1E325F6F0(v27, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_51_2();
    }
  }
}

uint64_t sub_1E38A3710()
{
  v1 = v0;
  if (sub_1E389D8C4())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v2 + 416))(v24);

    if (v25)
    {
      sub_1E327F454(v24, v21);
      sub_1E325F6F0(v24, &unk_1ECF296D0);
      v4 = v22;
      v3 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v5 = (*(*(*(v3 + 8) + 8) + 40))(v4);
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = sub_1E3BA363C(2);
        *(inited + 40) = v7;
        *(inited + 48) = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
        v8 = sub_1E4205CB4();
        v9 = [objc_opt_self() sharedInstance];
        sub_1E38A63A4(v8);

        sub_1E4205C44();
        OUTLINED_FUNCTION_31_4();

        [v9 recordImpressions_];
      }
    }

    else
    {
      sub_1E325F6F0(v24, &unk_1ECF296D0);
    }
  }

  result = sub_1E389D8C4();
  if (result)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v11 + 416))(v24);

    if (v25)
    {
      __swift_project_boxed_opaque_existential_1(v24, v25);
      OUTLINED_FUNCTION_91_3();
      v13 = v12;
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_5();
      (*(v13 + 16))(v16 - v15);
      sub_1E325F6F0(v24, &unk_1ECF296D0);
      v17 = OUTLINED_FUNCTION_90_4();
      v18(v17);
      v19 = OUTLINED_FUNCTION_16_0();
      v20(v19);
      sub_1E42048D4();
    }

    else
    {
      return sub_1E325F6F0(v24, &unk_1ECF296D0);
    }
  }

  return result;
}

void sub_1E38A3A5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
  if (!v5)
  {
LABEL_13:
    OUTLINED_FUNCTION_95();
    return;
  }

  v6 = objc_opt_self();
  v39 = v5;
  v7 = [v6 isFeatureEnabled_];
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  v11 = OUTLINED_FUNCTION_51_11();
  if ((v7 & 1) == 0)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_6_21();
      v19 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v20 = v8;
      v21 = v8;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v22, v23, "%@ Starting inactivity timer");
      sub_1E325F6F0(v19, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v24 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask;
    if (*&v8[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      OUTLINED_FUNCTION_78_3();
    }

    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_4_0();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_83_1(v29);
    swift_unknownObjectWeakInit();
    sub_1E4206434();
    v30 = v39;

    v31 = sub_1E4206424();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v10;
    v32[5] = v30;

    v34 = OUTLINED_FUNCTION_23_7();
    v37 = sub_1E37748D8(v34, v35, v4, v36, v32);

    *&v8[v24] = v37;

    goto LABEL_13;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_13_15(v12, 5.7779e-34);
    OUTLINED_FUNCTION_20_34();
    OUTLINED_FUNCTION_53_15(v13, v14, v15, v16);
    sub_1E325F6F0(v12, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E38A3D34()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_1E42075E4();
  v0[7] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[10] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E38A3E08, v6, v5);
}

uint64_t sub_1E38A3E08()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0x6C0))();
    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v6 = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1E38A3F78;
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_25();

    return v6();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v5();
  }
}

uint64_t sub_1E38A3F78()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  v7 = *(v2 + 96);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_1E38A4290;
  }

  else
  {
    v9 = sub_1E38A4100;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E38A4100()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 104);

  v2 = sub_1E4206504();
  v3 = v1;
  v4 = sub_1E41FFC94();
  sub_1E4206814();

  v5 = OUTLINED_FUNCTION_85_5();
  if (v2)
  {
    v6 = *(v0 + 104);
    if (v5)
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_9_44();
      v6 = OUTLINED_FUNCTION_33_23(v7, 5.7779e-34);
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_50_6(v8, v9, v10, v11);
      sub_1E325F6F0(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v0 + 104);
      v13 = OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_102_6(v16, v17, v18, v19);
      sub_1E325F6F0(v14, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    v6 = *(v0 + 104);

    sub_1E38A32E8(0);
  }

  OUTLINED_FUNCTION_15_12();

  return v20();
}

uint64_t sub_1E38A4290()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E38A42FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = v0;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (OUTLINED_FUNCTION_51_11())
  {
    OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_55_11(5.7779e-34);
    *v9 = v5;
    v10 = v5;
    OUTLINED_FUNCTION_7_28(&dword_1E323F000, v11, v12, "%@ startDismissPlaybackAtBroadcastEndTimer");
    sub_1E325F6F0(v8, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }

  v13 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask;
  if (*&v5[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_78_3();
  }

  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v18);
  swift_unknownObjectWeakInit();
  sub_1E4206434();
  OUTLINED_FUNCTION_31_4();

  v19 = sub_1E4206424();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v7;

  v22 = OUTLINED_FUNCTION_23_7();
  *&v5[v13] = sub_1E37748D8(v22, v23, v4, v24, v20);
}

uint64_t sub_1E38A44F0()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v2 = sub_1E42075E4();
  v0[6] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[9] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[10] = v5;
  v0[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E38A45C4, v5, v4);
}

uint64_t sub_1E38A45C4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[12] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v1[13] = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0];
    v5 = Strong;
    v6 = OUTLINED_FUNCTION_105();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_49_0();
      v7 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412546;
      *(v2 + 4) = v0;
      *v7 = v4;
      *(v2 + 12) = 2048;
      *(v2 + 14) = *&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay];
      v8 = v0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      sub_1E325F6F0(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v18 = v14;
    v15 = swift_task_alloc();
    v1[14] = v15;
    *v15 = v1;
    v15[1] = sub_1E38A47C0;
    OUTLINED_FUNCTION_25();

    return v18();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v17();
  }
}

uint64_t sub_1E38A47C0()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);
  if (v0)
  {
    v9 = sub_1E38A4C94;
  }

  else
  {
    v9 = sub_1E38A4948;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E38A4948()
{
  OUTLINED_FUNCTION_134();

  if (sub_1E4206504())
  {
    v1 = *(v0 + 96);
    v2 = sub_1E41FFC94();
    sub_1E4206814();

    v3 = OUTLINED_FUNCTION_85_5();
    v4 = *(v0 + 96);
    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerLiveEventMonitor;
  OUTLINED_FUNCTION_8();
  (*(v6 + 168))();
  if ((sub_1E389D688() & 1) == 0 || (sub_1E38A5720() & 1) == 0 || !sub_1E38A5778())
  {
    OUTLINED_FUNCTION_8();
    *(v0 + 128) = (*(v11 + 168))();
    *(v0 + 129) = 3;
    sub_1E38A72C8();
    v12 = sub_1E4205E84();
    v13 = *(v0 + 96);
    if (v12)
    {
      v14 = sub_1E38A5720();
      v15 = v13;
      v2 = sub_1E41FFC94();
      sub_1E4206814();

      v16 = OUTLINED_FUNCTION_85_5();
      v4 = *(v0 + 96);
      if (v14)
      {
        if (v16)
        {
          goto LABEL_17;
        }
      }

      else if (v16)
      {
LABEL_17:
        OUTLINED_FUNCTION_6_21();
        v19 = OUTLINED_FUNCTION_9_44();
        v4 = OUTLINED_FUNCTION_33_23(v19, 5.7779e-34);
        OUTLINED_FUNCTION_71_10();
        OUTLINED_FUNCTION_50_6(v20, v21, v22, v23);
        sub_1E325F6F0(v19, &unk_1ECF28E30);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_65_0();
      }
    }

    else
    {
      v17 = v13;
      v2 = sub_1E41FFC94();
      sub_1E4206814();

      v18 = OUTLINED_FUNCTION_85_5();
      v4 = *(v0 + 96);
      if (v18)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v7 = *(v0 + 96);
  v8 = OUTLINED_FUNCTION_66_11();
  v9 = sub_1E4206814();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_6_21();
    v10 = OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_58_11(v10, 5.7779e-34);
    OUTLINED_FUNCTION_53_15(&dword_1E323F000, v8, v9, "%@ dismiss playback timer fired and user is still in broadcast end range, dismissing playback");
    sub_1E325F6F0(v10, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  v4 = *(v0 + 96);

  [*&v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] stop];
LABEL_19:

  OUTLINED_FUNCTION_15_12();

  return v24();
}