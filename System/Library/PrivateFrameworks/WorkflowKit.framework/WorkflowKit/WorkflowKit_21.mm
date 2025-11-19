uint64_t sub_1CA45F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_24_13();
  v24 = v23;
  OUTLINED_FUNCTION_2_2();
  *v25 = v24;
  v27 = *(v26 + 384);
  v28 = *v22;
  OUTLINED_FUNCTION_13();
  *v29 = v28;
  v24[49] = v21;

  if (v20)
  {
    v31 = v24[35];
    v30 = v24[36];
    v33 = v24[33];
    v32 = v24[34];
    v34 = v24[32];
    v36 = v24[28];
    v35 = v24[29];
    v62 = v20;
    v37 = v24[26];
    v38 = v24[27];
    v54 = v24[25];
    v55 = v24[24];
    v56 = v24[21];
    v57 = v24[18];
    v39 = v24[12];
    v58 = v24[15];
    v59 = v24[13];
    v41 = v24 + 10;
    v40 = v24[10];
    v60 = v39;
    v61 = v41[1];

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, v54, v55, v56, v57, v58, v59, v60, v61, v62, a18, a19, a20);
  }

  else
  {
    v51 = swift_task_alloc();
    v24[50] = v51;
    *v51 = v28;
    v51[1] = sub_1CA45FB90;
    v52 = v24[7];
    OUTLINED_FUNCTION_73_0(v24[6]);
    OUTLINED_FUNCTION_53();

    return WFContentCollection.resolve(to:in:)();
  }
}

uint64_t sub_1CA45FB90()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 400);
  *v3 = *v1;
  *(v2 + 408) = v6;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1CA45FC90()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 256);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = *(v0 + 64);
  sub_1CA949C58();
  v3(v6, v8, v7);
  swift_unknownObjectRetain();
  v9 = sub_1CA949F68();
  LOBYTE(v8) = sub_1CA94CC38();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v8))
  {
    v46 = *(v0 + 408);
    v48 = *(v0 + 392);
    v44 = *(v0 + 328);
    v54 = *(v0 + 256);
    v56 = *(v0 + 320);
    v50 = *(v0 + 248);
    v52 = *(v0 + 240);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    OUTLINED_FUNCTION_60_5();
    v13 = swift_slowAlloc();
    v58 = OUTLINED_FUNCTION_29_4();
    *v13 = 136315394;
    sub_1CA94AC38();
    OUTLINED_FUNCTION_148_2();
    v14 = OUTLINED_FUNCTION_63_7();
    v44(v14);
    v15 = OUTLINED_FUNCTION_69_0();
    sub_1CA26B54C(v15, v16, v17);
    OUTLINED_FUNCTION_139();

    *(v13 + 4) = v10;
    *(v13 + 12) = 2080;
    *(v0 + 16) = v46;
    swift_unknownObjectRetain();
    v18 = sub_1CA94C408();
    sub_1CA26B54C(v18, v19, &v58);
    OUTLINED_FUNCTION_11();

    *(v13 + 14) = v1;
    OUTLINED_FUNCTION_55_6();
    _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_54_5();

    v56(v54, v52);
  }

  else
  {
    v26 = *(v0 + 320);
    v25 = *(v0 + 328);
    v28 = *(v0 + 248);
    v27 = *(v0 + 256);
    v29 = *(v0 + 240);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    v33 = OUTLINED_FUNCTION_70();
    v25(v33);
    v34 = OUTLINED_FUNCTION_52_0();
    v26(v34);
  }

  v57 = *(v0 + 408);
  OUTLINED_FUNCTION_112_2();
  v35 = *(v0 + 224);
  v36 = *(v0 + 232);
  v38 = *(v0 + 208);
  v37 = *(v0 + 216);
  v39 = *(v0 + 200);
  v42 = *(v0 + 192);
  v43 = *(v0 + 168);
  v45 = *(v0 + 144);
  v47 = *(v0 + 120);
  v49 = *(v0 + 104);
  v51 = *(v0 + 96);
  v53 = *(v0 + 88);
  v55 = *(v0 + 80);

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_202();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA4603A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_162_0();

  v43 = *(v20 + 416);
  OUTLINED_FUNCTION_112_2();
  v22 = *(v20 + 224);
  v21 = *(v20 + 232);
  v24 = *(v20 + 208);
  v23 = *(v20 + 216);
  v25 = *(v20 + 200);
  v35 = *(v20 + 192);
  v36 = *(v20 + 168);
  v37 = *(v20 + 144);
  v38 = *(v20 + 120);
  v39 = *(v20 + 104);
  v40 = *(v20 + 96);
  v41 = *(v20 + 88);
  v42 = *(v20 + 80);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_53();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, a18, a19, a20);
}

uint64_t TypedValue.resolve(in:)()
{
  OUTLINED_FUNCTION_0();
  v1[14] = v2;
  v1[15] = v0;
  v3 = sub_1CA949328();
  v1[16] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[17] = v4;
  v6 = *(v5 + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94A9E8();
  v1[19] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[20] = v8;
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_13_5();
  v1[22] = swift_task_alloc();
  v11 = sub_1CA94A908();
  v1[23] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[24] = v12;
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_13_5();
  v1[27] = swift_task_alloc();
  v18 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v18);
  v20 = *(v19 + 64);
  v1[28] = OUTLINED_FUNCTION_45();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A60, &unk_1CA985F10);
  OUTLINED_FUNCTION_18_0(v21);
  v23 = *(v22 + 64);
  v1[29] = OUTLINED_FUNCTION_45();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DF0, &unk_1CA988BD0);
  v1[30] = v24;
  OUTLINED_FUNCTION_12(v24);
  v1[31] = v25;
  v27 = *(v26 + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v28 = sub_1CA94A9A8();
  v1[33] = v28;
  OUTLINED_FUNCTION_12(v28);
  v1[34] = v29;
  v31 = *(v30 + 64);
  v1[35] = OUTLINED_FUNCTION_45();
  v32 = sub_1CA94A888();
  v1[36] = v32;
  OUTLINED_FUNCTION_12(v32);
  v1[37] = v33;
  v35 = *(v34 + 64);
  v1[38] = OUTLINED_FUNCTION_45();
  v36 = sub_1CA94B1C8();
  v1[39] = v36;
  OUTLINED_FUNCTION_12(v36);
  v1[40] = v37;
  v39 = *(v38 + 64);
  v1[41] = OUTLINED_FUNCTION_45();
  v40 = type metadata accessor for TypedValueConversionContext(0);
  v1[42] = v40;
  OUTLINED_FUNCTION_18_0(v40);
  v42 = *(v41 + 64);
  v1[43] = OUTLINED_FUNCTION_45();
  v43 = sub_1CA94AD88();
  v1[44] = v43;
  OUTLINED_FUNCTION_12(v43);
  v1[45] = v44;
  v46 = *(v45 + 64);
  v1[46] = OUTLINED_FUNCTION_13_5();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v47 = sub_1CA949F78();
  v1[49] = v47;
  OUTLINED_FUNCTION_12(v47);
  v1[50] = v48;
  v50 = *(v49 + 64);
  v1[51] = OUTLINED_FUNCTION_13_5();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v51 = sub_1CA94ADC8();
  v1[61] = v51;
  OUTLINED_FUNCTION_12(v51);
  v1[62] = v52;
  v54 = *(v53 + 64);
  v1[63] = OUTLINED_FUNCTION_13_5();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v55 = sub_1CA94A8C8();
  v1[71] = v55;
  OUTLINED_FUNCTION_12(v55);
  v1[72] = v56;
  v58 = *(v57 + 64);
  v1[73] = OUTLINED_FUNCTION_13_5();
  v1[74] = swift_task_alloc();
  v59 = sub_1CA94AC08();
  v1[75] = v59;
  OUTLINED_FUNCTION_12(v59);
  v1[76] = v60;
  v62 = *(v61 + 64);
  v1[77] = OUTLINED_FUNCTION_45();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v63);
  v65 = *(v64 + 64);
  v1[78] = OUTLINED_FUNCTION_13_5();
  v1[79] = swift_task_alloc();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A98, &unk_1CA988BE0);
  OUTLINED_FUNCTION_18_0(v66);
  v68 = *(v67 + 64);
  v1[80] = OUTLINED_FUNCTION_45();
  v69 = sub_1CA94B318();
  v1[81] = v69;
  OUTLINED_FUNCTION_12(v69);
  v1[82] = v70;
  v72 = *(v71 + 64);
  v1[83] = OUTLINED_FUNCTION_13_5();
  v1[84] = swift_task_alloc();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A70, &qword_1CA985648);
  OUTLINED_FUNCTION_18_0(v73);
  v75 = *(v74 + 64);
  v1[85] = OUTLINED_FUNCTION_45();
  v76 = sub_1CA94B3C8();
  v1[86] = v76;
  OUTLINED_FUNCTION_12(v76);
  v1[87] = v77;
  v79 = *(v78 + 64);
  v1[88] = OUTLINED_FUNCTION_45();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AB8, &qword_1CA988BF0);
  OUTLINED_FUNCTION_18_0(v80);
  v82 = *(v81 + 64);
  v1[89] = OUTLINED_FUNCTION_45();
  v83 = sub_1CA94B418();
  v1[90] = v83;
  OUTLINED_FUNCTION_12(v83);
  v1[91] = v84;
  v86 = *(v85 + 64);
  v1[92] = OUTLINED_FUNCTION_45();
  v87 = sub_1CA94B458();
  v1[93] = v87;
  OUTLINED_FUNCTION_12(v87);
  v1[94] = v88;
  v90 = *(v89 + 64);
  v1[95] = OUTLINED_FUNCTION_45();
  v91 = sub_1CA94AAF8();
  v1[96] = v91;
  OUTLINED_FUNCTION_12(v91);
  v1[97] = v92;
  v94 = *(v93 + 64);
  v1[98] = OUTLINED_FUNCTION_45();
  v95 = sub_1CA94AB58();
  v1[99] = v95;
  OUTLINED_FUNCTION_12(v95);
  v1[100] = v96;
  v98 = *(v97 + 64);
  v1[101] = OUTLINED_FUNCTION_45();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A80, &qword_1CA988BF8);
  v1[102] = v99;
  OUTLINED_FUNCTION_12(v99);
  v1[103] = v100;
  v102 = *(v101 + 64);
  v1[104] = OUTLINED_FUNCTION_45();
  v103 = sub_1CA94AB68();
  v1[105] = v103;
  OUTLINED_FUNCTION_12(v103);
  v1[106] = v104;
  v106 = *(v105 + 64);
  v1[107] = OUTLINED_FUNCTION_45();
  v107 = sub_1CA94ABA8();
  v1[108] = v107;
  OUTLINED_FUNCTION_12(v107);
  v1[109] = v108;
  v110 = *(v109 + 64);
  v1[110] = OUTLINED_FUNCTION_45();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v111);
  v113 = *(v112 + 64);
  v1[111] = OUTLINED_FUNCTION_13_5();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v114 = sub_1CA94AA48();
  v1[116] = v114;
  OUTLINED_FUNCTION_12(v114);
  v1[117] = v115;
  v117 = *(v116 + 64);
  v1[118] = OUTLINED_FUNCTION_45();
  v118 = sub_1CA94AA78();
  v1[119] = v118;
  OUTLINED_FUNCTION_12(v118);
  v1[120] = v119;
  v121 = *(v120 + 64);
  v1[121] = OUTLINED_FUNCTION_45();
  v122 = sub_1CA94AAB8();
  v1[122] = v122;
  OUTLINED_FUNCTION_12(v122);
  v1[123] = v123;
  v125 = *(v124 + 64);
  v1[124] = OUTLINED_FUNCTION_45();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445A90, &qword_1CA985978);
  v1[125] = v126;
  OUTLINED_FUNCTION_12(v126);
  v1[126] = v127;
  v129 = *(v128 + 64);
  v1[127] = OUTLINED_FUNCTION_45();
  v130 = sub_1CA94AB28();
  v1[128] = v130;
  OUTLINED_FUNCTION_12(v130);
  v1[129] = v131;
  v133 = *(v132 + 64);
  v1[130] = OUTLINED_FUNCTION_45();
  v134 = sub_1CA94AC18();
  v1[131] = v134;
  OUTLINED_FUNCTION_12(v134);
  v1[132] = v135;
  v137 = *(v136 + 64);
  v1[133] = OUTLINED_FUNCTION_13_5();
  v1[134] = swift_task_alloc();
  v138 = sub_1CA94AC88();
  v1[135] = v138;
  OUTLINED_FUNCTION_12(v138);
  v1[136] = v139;
  v141 = *(v140 + 64);
  v1[137] = OUTLINED_FUNCTION_13_5();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v142, v143, v144);
}

uint64_t sub_1CA4610EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_1();
  v1048 = v12;
  v17 = *(v12 + 1184);
  v18 = *(v12 + 1088);
  v19 = *(v12 + 1080);
  v20 = *(v12 + 120);
  *(v12 + 1192) = *(v18 + 16);
  *(v12 + 1200) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21 = OUTLINED_FUNCTION_136();
  v1039 = v22;
  v22(v21);
  v24 = *(v18 + 88);
  v23 = v18 + 88;
  v25 = OUTLINED_FUNCTION_3_3();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x1E69DAE70])
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_146_2();
    v29 = OUTLINED_FUNCTION_14_1(v28);
    v30(v29);
    v31 = *v17;
    v32 = swift_projectBox();
    v33 = (v15 + 16);
    v34 = *(v15 + 16);
    v34(v23, v32, v14);
    v35 = OUTLINED_FUNCTION_188();
    (v34)(v35);
    v37 = *(v15 + 88);
    v36 = v15 + 88;
    v38 = OUTLINED_FUNCTION_70();
    LODWORD(v40) = v39(v38);
    if (v40 == *MEMORY[0x1E69DADC0])
    {
      v41 = OUTLINED_FUNCTION_3_31();
      v42(v41);
      v43 = *v33;
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v44 = sub_1CA94CFA8();
LABEL_33:
      v129 = v44;
      v130 = v13[1];
      v131 = v23;
LABEL_34:
      v130(v131, v14);
LABEL_35:
      swift_unknownObjectRetain();

      goto LABEL_36;
    }

    if (v40 == *MEMORY[0x1E69DADB0])
    {
      v81 = OUTLINED_FUNCTION_3_31();
      v82(v81);
      v83 = *v33;
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      OUTLINED_FUNCTION_5_3();
      v44 = sub_1CA94CFB8();
      goto LABEL_33;
    }

    if (v40 == *MEMORY[0x1E69DADE0])
    {
      v126 = OUTLINED_FUNCTION_3_31();
      v127(v126);
      v128 = *v33;
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v44 = sub_1CA94CF98();
      goto LABEL_33;
    }

    if (v40 == *MEMORY[0x1E69DADF8])
    {
      OUTLINED_FUNCTION_146_2();
      v264 = *(v36 + 96);
      v265 = OUTLINED_FUNCTION_70();
      v266(v265);
      v1046 = *v13;
      LODWORD(v1047) = *(v13 + 4);
      v267 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *(v12 + 1496) = v1046;
      *(v12 + 1512) = v1047;
      v129 = [v267 initWithDecimal_];
      v268 = *(v36 + 8);
      v269 = OUTLINED_FUNCTION_21_6();
      v270(v269);
      goto LABEL_35;
    }

    if (v40 == *MEMORY[0x1E69DADF0])
    {
      v359 = *(v12 + 1072);
      v360 = *(v12 + 1064);
      v14 = *(v12 + 1048);
      v361 = *(*(v12 + 1056) + 96);
      v362 = OUTLINED_FUNCTION_21_6();
      v363(v362);
      v364 = *v360;
      v365 = v360[1];
      v129 = sub_1CA94C368();

      v131 = OUTLINED_FUNCTION_95_5();
      goto LABEL_34;
    }

    if (v40 == *MEMORY[0x1E69DADC8])
    {
      v449 = OUTLINED_FUNCTION_3_31();
      v450(v449);
      v451 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0(v451);
      v453 = *(v452 + 64);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_13_19();
      v454();
      v455 = v34;
      sub_1CA948C58();
LABEL_120:
      v549 = OUTLINED_FUNCTION_157_3();
      v550(v549);
      v129 = v455;
      v551 = v13[1];
      v552 = OUTLINED_FUNCTION_21_6();
      v553(v552);
      swift_unknownObjectRetain();

      goto LABEL_36;
    }

    if (v40 == *MEMORY[0x1E69DAD80])
    {
      v469 = OUTLINED_FUNCTION_3_31();
      v470(v469);
      v471 = sub_1CA9488E8();
      OUTLINED_FUNCTION_1_0(v471);
      v473 = *(v472 + 64);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_13_19();
      v474();
      v455 = v34;
      sub_1CA9488B8();
      goto LABEL_120;
    }

    if (v40 == *MEMORY[0x1E69DADB8])
    {
      v543 = OUTLINED_FUNCTION_3_31();
      v544(v543);
      v545 = sub_1CA948BA8();
      OUTLINED_FUNCTION_1_0(v545);
      v547 = *(v546 + 64);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_13_19();
      v548();
      v455 = v34;
      sub_1CA948B48();
      goto LABEL_120;
    }

    if (v40 == *MEMORY[0x1E69DAD98])
    {
      v601 = OUTLINED_FUNCTION_3_31();
      v602(v601);
      v603 = sub_1CA948978();
      OUTLINED_FUNCTION_1_0(v603);
      v605 = v604;
      v607 = *(v606 + 64) + 15;
      swift_task_alloc();
      OUTLINED_FUNCTION_127_3();
      v608();
      sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
      swift_task_alloc();
      OUTLINED_FUNCTION_129_2();
      v609();
      v610 = sub_1CA94CDE8();
LABEL_128:
      v611 = v610;
      v612 = *(v605 + 8);
      v613 = OUTLINED_FUNCTION_162();
      v614(v613);
      v615 = v13[1];
      v616 = OUTLINED_FUNCTION_21_6();
      v617(v616);
      v129 = v611;

      swift_unknownObjectRetain();

LABEL_132:

      goto LABEL_36;
    }

    if (v40 != *MEMORY[0x1E69DAD60])
    {
      goto LABEL_135;
    }

    v618 = OUTLINED_FUNCTION_3_31();
    v619(v618);
    v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
    OUTLINED_FUNCTION_1_0(v620);
    v622 = *(v621 + 64);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_13_19();
    v623();
    v624 = v34;
    sub_1CA9487F8();
LABEL_131:
    v625 = OUTLINED_FUNCTION_157_3();
    v626(v625);
    v129 = v624;
    v627 = v13[1];
    v628 = OUTLINED_FUNCTION_21_6();
    v629(v628);
    swift_unknownObjectRetain();

    goto LABEL_132;
  }

  if (v27 != *MEMORY[0x1E69DAE20])
  {
    if (v27 == *MEMORY[0x1E69DAE58])
    {
      OUTLINED_FUNCTION_52_8();
      v85 = *(v12 + 272);
      v84 = *(v12 + 280);
      v86 = *(v12 + 264);
      v88 = *(v12 + 232);
      v87 = *(v12 + 240);
      v90 = OUTLINED_FUNCTION_14_1(v89);
      v91(v90);
      *(v12 + 1312) = *v17;
      swift_projectBox();
      v92 = *(v85 + 16);
      v93 = OUTLINED_FUNCTION_86_2();
      v94(v93);
      sub_1CA94A948();
      if (__swift_getEnumTagSinglePayload(v88, 1, v87) == 1)
      {
        v95 = *(v12 + 552);
        v96 = *(v12 + 488);
        v97 = *(v12 + 496);
        v98 = *(v12 + 280);
        sub_1CA27080C(*(v12 + 232), &unk_1EC445A60, &unk_1CA985F10);
        sub_1CA469DC0();
        sub_1CA94A8B8();
        OUTLINED_FUNCTION_107_0();
        sub_1CA2B5928();
        LOBYTE(v98) = v99;

        *(v12 + 1320) = *(v97 + 8);
        *(v12 + 1328) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v100 = OUTLINED_FUNCTION_20_0();
        v101(v100);
        if (v98)
        {
          v102 = *(v12 + 120);
          sub_1CA46B580(*(v12 + 280));
          (*(*(v12 + 272) + 8))(*(v12 + 280), *(v12 + 264));

          goto LABEL_109;
        }

        v331 = *(v12 + 536);
        v332 = *(v12 + 280);
        sub_1CA94A8B8();
        v333 = swift_task_alloc();
        *(v12 + 1336) = v333;
        *v333 = v12;
        v333[1] = sub_1CA4662E4;
        v334 = *(v12 + 536);
        v335 = *(v12 + 216);
        goto LABEL_77;
      }

      v229 = *(v12 + 256);
      v230 = *(v12 + 232);
      v231 = *(v12 + 240);
      v232 = *(v12 + 112);
      v233 = *(*(v12 + 248) + 32);
      v234 = OUTLINED_FUNCTION_136();
      v235(v234);
      v236 = sub_1CA94AD18();
      if (!*(v232 + 40) || (objc_opt_self(), OUTLINED_FUNCTION_5_3(), (v237 = swift_dynamicCastObjCClass()) == 0) || (v238 = [v237 codableAttribute]) == 0)
      {
        v1022 = v236;
        v282 = *(v12 + 1144);
        v283 = *(v12 + 1080);
        v284 = *(v12 + 448);
        v285 = *(v12 + 224);
        v287 = *(v12 + 112);
        v286 = *(v12 + 120);
        v288 = *MEMORY[0x1E69E10F8];
        sub_1CA949C58();
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_149_1();
        v289();
        OUTLINED_FUNCTION_6_26();
        v290 = OUTLINED_FUNCTION_195();
        sub_1CA47154C(v290, v291);
        v292 = sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_124_4();
        v294 = os_log_type_enabled(v292, v293);
        v295 = *(v12 + 1144);
        v296 = *(v12 + 1088);
        v297 = *(v12 + 1080);
        if (v294)
        {
          v298 = *(v12 + 552);
          v299 = *(v12 + 496);
          v983 = *(v12 + 488);
          v1042 = *(v12 + 448);
          v1009 = *(v12 + 400);
          v1016 = *(v12 + 392);
          v997 = *(v12 + 224);
          OUTLINED_FUNCTION_60_5();
          swift_slowAlloc();
          v988 = OUTLINED_FUNCTION_141_3();
          v1004 = OUTLINED_FUNCTION_254();
          *&v1046 = v1004;
          OUTLINED_FUNCTION_134_3(4.8151e-34);
          sub_1CA94AC28();
          sub_1CA94ADA8();
          (*(v299 + 8))(v298, v983);
          v300 = OUTLINED_FUNCTION_78_5();
          v301(v300);
          v302 = OUTLINED_FUNCTION_63_7();
          sub_1CA26B54C(v302, v303, v304);
          OUTLINED_FUNCTION_143_2();
          OUTLINED_FUNCTION_115_3();
          v305 = *(v997 + 40);
          *(v16 + 14) = v305;
          *v988 = v305;
          v306 = v305;
          OUTLINED_FUNCTION_2_35();
          sub_1CA4715A8(v997, v307);
          OUTLINED_FUNCTION_110_3();
          _os_log_impl(v308, v309, v310, v311, v312, 0x16u);
          sub_1CA27080C(v988, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_138();
          __swift_destroy_boxed_opaque_existential_0(v1004);
          OUTLINED_FUNCTION_138();
          OUTLINED_FUNCTION_51();

          (*(v1009 + 8))(v1042, v1016);
        }

        else
        {
          v417 = *(v12 + 448);
          v418 = *(v12 + 392);
          v419 = *(v12 + 400);
          v420 = *(v12 + 224);

          OUTLINED_FUNCTION_2_35();
          sub_1CA4715A8(v420, v421);
          v422 = OUTLINED_FUNCTION_78_5();
          v423(v422);
          v424 = *(v419 + 8);
          v425 = OUTLINED_FUNCTION_3_3();
          v426(v425);
        }

        v428 = *(v12 + 272);
        v427 = *(v12 + 280);
        v430 = *(v12 + 256);
        v429 = *(v12 + 264);
        v431 = *(v12 + 240);
        v432 = *(v12 + 248);
        sub_1CA471600();
        v433 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_35_9(v433, v434);
        OUTLINED_FUNCTION_139_4(v435);

        v436 = *(v432 + 8);
        v437 = OUTLINED_FUNCTION_70();
        v438(v437);
        v439 = *(v428 + 8);
        v440 = OUTLINED_FUNCTION_3_3();
        v441(v440);
        goto LABEL_98;
      }

      v239 = v238;
      if ([v238 wf:v236 processedParameterValueForValue:?])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v1046 = 0u;
        v1047 = 0u;
      }

      v475 = v1047;
      *(v12 + 16) = v1046;
      *(v12 + 32) = v475;
      if (*(v12 + 40))
      {
        sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
        if (swift_dynamicCast())
        {
          v476 = v236;
          v477 = *(v12 + 272);
          v1017 = *(v12 + 264);
          v1024 = *(v12 + 280);
          v479 = *(v12 + 248);
          v478 = *(v12 + 256);
          v480 = *(v12 + 240);
          v481 = *(v12 + 104);
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v482 = OUTLINED_FUNCTION_137_3();
          *(v482 + 16) = xmmword_1CA9813B0;
          *(v482 + 32) = v481;
          v483 = v481;
          sub_1CA46934C();

          v484 = *(v479 + 8);
          v485 = OUTLINED_FUNCTION_176_0();
          v486(v485);
          (*(v477 + 8))(v1024, v1017);
          goto LABEL_108;
        }

        v1025 = v239;
      }

      else
      {
        v1025 = v239;
        sub_1CA27080C(v12 + 16, &unk_1EC444650, &unk_1CA981C70);
      }

      v498 = *(v12 + 1152);
      v499 = *(v12 + 1080);
      v500 = *(v12 + 456);
      v501 = *(v12 + 120);
      v502 = *MEMORY[0x1E69E10F8];
      sub_1CA949C58();
      OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_149_1();
      v503();
      v504 = v236;
      v505 = sub_1CA949F68();
      v506 = sub_1CA94CC18();

      v507 = os_log_type_enabled(v505, v506);
      v508 = *(v12 + 1152);
      v509 = *(v12 + 1088);
      v510 = *(v12 + 1080);
      if (v507)
      {
        v511 = *(v12 + 552);
        v512 = *(v12 + 496);
        v984 = *(v12 + 488);
        v1006 = *(v12 + 400);
        v1010 = *(v12 + 392);
        v1018 = *(v12 + 456);
        OUTLINED_FUNCTION_60_5();
        v1044 = v504;
        v513 = swift_slowAlloc();
        v993 = swift_slowAlloc();
        v999 = OUTLINED_FUNCTION_254();
        *&v1046 = v999;
        *v513 = 136315394;
        v989 = v506;
        sub_1CA94AC28();
        sub_1CA94ADA8();
        OUTLINED_FUNCTION_58_2();
        (*(v512 + 8))(v511, v984);
        v514 = *(v509 + 8);
        v515 = OUTLINED_FUNCTION_107_0();
        v516(v515);
        v517 = sub_1CA26B54C(v511, v16, &v1046);

        *(v513 + 4) = v517;
        *(v513 + 12) = 2112;
        *(v513 + 14) = v1044;
        *v993 = v1044;
        v518 = v1044;
        _os_log_impl(&dword_1CA256000, v505, v989, "[%s] Unable to make wf_processedParameterValue from %@", v513, 0x16u);
        sub_1CA27080C(v993, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_138();
        __swift_destroy_boxed_opaque_existential_0(v999);
        OUTLINED_FUNCTION_138();
        v504 = v1044;
        OUTLINED_FUNCTION_26();

        (*(v1006 + 8))(v1018, v1010);
      }

      else
      {
        v519 = *(v12 + 456);
        v520 = *(v12 + 392);
        v521 = *(v12 + 400);

        v522 = *(v509 + 8);
        v523 = OUTLINED_FUNCTION_107_0();
        v524(v523);
        v525 = *(v521 + 8);
        v526 = OUTLINED_FUNCTION_119();
        v527(v526);
      }

      v529 = *(v12 + 272);
      v528 = *(v12 + 280);
      v531 = *(v12 + 256);
      v530 = *(v12 + 264);
      v532 = *(v12 + 240);
      v533 = *(v12 + 248);
      sub_1CA471600();
      v534 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_9(v534, v535);
      OUTLINED_FUNCTION_139_4(v536);

      v537 = *(v533 + 8);
      v538 = OUTLINED_FUNCTION_176_0();
      v539(v538);
      v540 = *(v529 + 8);
      v541 = OUTLINED_FUNCTION_3_3();
      v542(v541);
      goto LABEL_98;
    }

    if (v27 == *MEMORY[0x1E69DAE18])
    {
      OUTLINED_FUNCTION_52_8();
      v209 = *(v12 + 296);
      v208 = *(v12 + 304);
      v210 = *(v12 + 288);
      v212 = OUTLINED_FUNCTION_14_1(v211);
      v213(v212);
      *(v12 + 1248) = *v17;
      swift_projectBox();
      v214 = OUTLINED_FUNCTION_22();
      v215(v214);
      v216 = sub_1CA94A878();
      *(v12 + 1256) = v216;
      v217 = *(v216 + 16);
      *(v12 + 1264) = v217;
      *(v12 + 1280) = MEMORY[0x1E69E7CC0];
      *(v12 + 1272) = 0;
      if (v217)
      {
        if (!*(v216 + 16))
        {
          __break(1u);
LABEL_154:
          v759 = *(v12 + 840);
          OUTLINED_FUNCTION_93_0();

          return sub_1CA94D7E8();
        }

        v218 = *(v12 + 1200);
        v219 = *(*(v12 + 1088) + 80);
        (*(v12 + 1192))(*(v12 + 1160), v216 + ((v219 + 32) & ~v219), *(v12 + 1080));
        v220 = swift_task_alloc();
        *(v12 + 1288) = v220;
        *v220 = v12;
        OUTLINED_FUNCTION_49_4(v220);
        OUTLINED_FUNCTION_93_0();

        return TypedValue.resolve(in:)(v221, v222, v223, v224, v225, v226, v227, v228, a9, a10, a11, a12);
      }

      v442 = *(v12 + 1248);
      v444 = *(v12 + 296);
      v443 = *(v12 + 304);
      v445 = *(v12 + 288);

      sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
      sub_1CA46934C();
      v446 = *(v444 + 8);
      v447 = OUTLINED_FUNCTION_69_0();
      v448(v447);
LABEL_108:

LABEL_109:
      v487 = *(v12 + 1184);
      v488 = *(v12 + 1176);
      v489 = *(v12 + 1168);
      v490 = *(v12 + 1160);
      v491 = *(v12 + 1152);
      OUTLINED_FUNCTION_18_17();
      v492 = *(v12 + 1120);
      v493 = *(v12 + 1112);
      v494 = *(v12 + 1104);
      v495 = *(v12 + 1096);
      OUTLINED_FUNCTION_25_10();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_93_0();

      __asm { BRAA            X2, X16 }
    }

    if (v27 == *MEMORY[0x1E69DAE28])
    {
      OUTLINED_FUNCTION_52_8();
      v271 = *(v12 + 512);
      v273 = *(v12 + 192);
      v272 = *(v12 + 200);
      v274 = *(v12 + 184);
      v276 = OUTLINED_FUNCTION_14_1(v275);
      v277(v276);
      *(v12 + 1400) = *v17;
      v278 = swift_projectBox();
      (*(v273 + 16))(v272, v278, v274);
      sub_1CA94A8B8();
      v279 = swift_task_alloc();
      *(v12 + 1408) = v279;
      *v279 = v12;
      v279[1] = sub_1CA467000;
      v280 = *(v12 + 512);
      v281 = *(v12 + 208);
LABEL_77:
      v336 = *(v12 + 112);
      OUTLINED_FUNCTION_93_0();

      return sub_1CA4693D0();
    }

    v366 = *MEMORY[0x1E69DAE60];
    OUTLINED_FUNCTION_52_8();
    if (v368 != v369)
    {
      (*(v367 + 8))(v17);
      v129 = 0;
      goto LABEL_36;
    }

    v370 = *(v12 + 176);
    v372 = *(v12 + 152);
    v371 = *(v12 + 160);
    v374 = *(v12 + 136);
    v373 = *(v12 + 144);
    v375 = *(v12 + 128);
    v376 = OUTLINED_FUNCTION_14_1(v367);
    v377(v376);
    v1035 = *v17;
    v378 = swift_projectBox();
    v379 = *(v371 + 16);
    v379(v370, v378, v372);
    sub_1CA949338();
    sub_1CA94A9C8();
    sub_1CA949318();
    v380 = OUTLINED_FUNCTION_195();
    v382 = sub_1CA3118B4(v380, v381);

    v383 = OUTLINED_FUNCTION_33_10();
    v384(v383);
    if (v382)
    {
      objc_opt_self();
      v385 = swift_dynamicCastObjCClass();
      if (v385)
      {
        v386 = v385;
        v387 = *(v12 + 176);
        v389 = *(v12 + 152);
        v388 = *(v12 + 160);
        v390 = sub_1CA94CC88();
        sub_1CA94A9D8();
        *(&v1047 + 1) = v390;
        *&v1046 = sub_1CA46E0C8();
        v391 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
        v392 = v382;
        v393 = v1046;
        v394 = v391;
        sub_1CA320AB4(&v1046, v386);
        OUTLINED_FUNCTION_40();
        v395 = sub_1CA94C368();
        [v386 wf:v394 contentCollectionFromLinkValue:v395 appBundleIdentifier:0 displayedBundleIdentifier:1 disclosureLevel:?];

        v396 = *(v388 + 8);
        v397 = OUTLINED_FUNCTION_69_0();
        v398(v397);
        goto LABEL_108;
      }
    }

    v554 = *(v12 + 1120);
    v555 = *(v12 + 1080);
    v556 = *(v12 + 424);
    v558 = *(v12 + 168);
    v557 = *(v12 + 176);
    v559 = *(v12 + 152);
    v560 = *(v12 + 120);
    v561 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    v562 = OUTLINED_FUNCTION_135_2();
    v1039(v562);
    v379(v558, v557, v559);
    v563 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_124_4();
    v565 = os_log_type_enabled(v563, v564);
    v566 = *(v12 + 1120);
    v567 = *(v12 + 1088);
    v1045 = *(v12 + 1080);
    if (v565)
    {
      v568 = *(v12 + 552);
      v569 = *(v12 + 496);
      v1011 = *(v12 + 400);
      v1019 = *(v12 + 392);
      v1026 = *(v12 + 424);
      v570 = *(v12 + 160);
      v985 = *(v12 + 488);
      v990 = *(v12 + 168);
      v1000 = *(v12 + 152);
      OUTLINED_FUNCTION_60_5();
      v571 = swift_slowAlloc();
      *&v1046 = OUTLINED_FUNCTION_29_4();
      OUTLINED_FUNCTION_134_3(4.8151e-34);
      sub_1CA94AC28();
      sub_1CA94ADA8();
      (*(v569 + 8))(v568, v985);
      (v567[1].isa)(v566, v1045);
      v572 = OUTLINED_FUNCTION_41_0();
      sub_1CA26B54C(v572, v573, v574);
      OUTLINED_FUNCTION_108_3();

      OUTLINED_FUNCTION_81_3();
      v566 = v990;
      sub_1CA94A9C8();
      OUTLINED_FUNCTION_5_0();
      v575 = *(v570 + 8);
      v576 = v563;
      v575(v990, v1000);
      v577 = OUTLINED_FUNCTION_3_3();
      sub_1CA26B54C(v577, v578, v579);
      OUTLINED_FUNCTION_87();

      *(v571 + 14) = v990;
      OUTLINED_FUNCTION_110_3();
      _os_log_impl(v580, v581, v582, v583, v584, 0x16u);
      OUTLINED_FUNCTION_167_1();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_51();

      (*(v1011 + 8))(v1026, v1019);
    }

    else
    {
      v585 = *(v12 + 424);
      v586 = *(v12 + 392);
      v587 = *(v12 + 400);
      v589 = *(v12 + 160);
      v588 = *(v12 + 168);
      v590 = *(v12 + 152);

      v591 = v588;
      v575 = *(v589 + 8);
      v575(v591, v590);
      isa = v567[1].isa;
      v576 = v567 + 1;
      isa(v566, v1045);
      v593 = *(v587 + 8);
      v594 = OUTLINED_FUNCTION_3_3();
      v595(v594);
    }

    v596 = *(v12 + 176);
    v597 = *(v12 + 152);
    sub_1CA94A9C8();
    OUTLINED_FUNCTION_148_2();
    sub_1CA471600();
    v598 = OUTLINED_FUNCTION_127();
    *v599 = v576;
    *(v599 + 8) = v566;
    *(v599 + 16) = 0;
    *(v599 + 24) = 0;
    *(v599 + 32) = 1;
    OUTLINED_FUNCTION_139_4(v598);
    v600 = OUTLINED_FUNCTION_3_3();
    (v575)(v600);
    goto LABEL_98;
  }

  v45 = *(v12 + 1184);
  v46 = *(v12 + 592);
  v47 = *(v12 + 576);
  v48 = *(v12 + 568);
  v49 = *(v12 + 560);
  v50 = *(v12 + 488);
  v51 = *(v12 + 496);
  v52 = *(v12 + 120);
  (*(*(v12 + 1088) + 96))(v45, *(v12 + 1080));
  *(v12 + 1208) = *v45;
  swift_projectBox();
  v53 = *(v47 + 16);
  v54 = OUTLINED_FUNCTION_86_2();
  v995 = v55;
  v55(v54);
  sub_1CA94AC28();
  v56 = *(v51 + 88);
  v57 = OUTLINED_FUNCTION_70();
  v59 = v58(v57);
  if (v59 == *MEMORY[0x1E69DB098])
  {
    v60 = *(v12 + 560);
    v61 = *(v12 + 488);
    v62 = OUTLINED_FUNCTION_14_1(*(v12 + 496));
    v63(v62);
    v64 = *v60;
    v65 = *(*v60 + 16);
    v66 = *(*v60 + 24);
    v33 = *(*v60 + 32);
    v34 = *(v64 + 40);
    v67 = [objc_opt_self() sharedProvider];
    v981 = v66;
    v987 = v65;
    OUTLINED_FUNCTION_69_0();
    v68 = sub_1CA94C368();
    v69 = OUTLINED_FUNCTION_86_2();
    v13 = [v69 v70];

    sub_1CA25B3D0(0, &qword_1EC441A80, 0x1E69AC830);
    v71 = sub_1CA94C658();

    v40 = sub_1CA25B410(v71);
    v72 = v40;
    v73 = 0;
    v1031 = v71 & 0xC000000000000001;
    while (1)
    {
      if (v72 == v73)
      {
        v313 = *(v12 + 592);
        v314 = *(v12 + 576);
        v315 = *(v12 + 568);

        sub_1CA94A898();
        v129 = sub_1CA94C368();

        v316 = *(v314 + 8);
        v317 = OUTLINED_FUNCTION_52_0();
        v318(v317);
        swift_unknownObjectRetain();

        goto LABEL_72;
      }

      if (v1031)
      {
        v80 = OUTLINED_FUNCTION_116();
        v40 = MEMORY[0x1CCAA22D0](v80);
      }

      else
      {
        if (v73 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_134;
        }

        v40 = *(v71 + 8 * v73 + 32);
      }

      if (__OFADD__(v73, 1))
      {
        break;
      }

      v13 = v40;
      v74 = [v40 identifier];
      v75 = sub_1CA94C3A8();
      v77 = v76;

      if (v75 == v33 && v77 == v34)
      {

LABEL_74:
        v319 = *(v12 + 592);

        v320 = sub_1CA94C368();
        sub_1CA94A898();
        sub_1CA94C368();
        OUTLINED_FUNCTION_11();

        v321 = v13;
        v322 = [v13 wf:v320 contentItemWithAppBundleIdentifier:v73 enumCaseIdentifier:?];

        v323 = *(v12 + 592);
        if (v322)
        {
          v324 = *(v12 + 576);
          v325 = *(v12 + 568);
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v326 = OUTLINED_FUNCTION_137_3();
          OUTLINED_FUNCTION_130_2(v326, xmmword_1CA9813B0);
          v327 = v322;
          sub_1CA46934C();

          v328 = *(v324 + 8);
          v329 = OUTLINED_FUNCTION_116();
          v330(v329);

          goto LABEL_108;
        }

        v399 = *(v12 + 584);
        v400 = *(v12 + 568);
        v401 = *(v12 + 480);
        v402 = *MEMORY[0x1E69E10F8];
        sub_1CA949C58();
        v403 = OUTLINED_FUNCTION_52_0();
        v995(v403);
        sub_1CA94C218();
        v404 = sub_1CA949F68();
        LOBYTE(v399) = sub_1CA94CC18();

        v1036 = v399;
        v405 = os_log_type_enabled(v404, v399);
        v406 = *(v12 + 584);
        v407 = *(v12 + 576);
        v408 = *(v12 + 568);
        v409 = *(v12 + 480);
        v410 = *(v12 + 400);
        v1043 = *(v12 + 392);
        if (v405)
        {
          OUTLINED_FUNCTION_60_5();
          v411 = swift_slowAlloc();
          *&v1046 = OUTLINED_FUNCTION_29_4();
          *v411 = 136315394;
          v998 = sub_1CA94A898();
          v1005 = v404;
          v1023 = v409;
          v413 = v412;
          v414 = *(v407 + 8);
          v415 = OUTLINED_FUNCTION_63_7();
          v414(v415);
          sub_1CA26B54C(v998, v413, &v1046);
          OUTLINED_FUNCTION_108_3();

          *(v411 + 4) = v406;
          *(v411 + 12) = 2080;
          *(v411 + 14) = sub_1CA26B54C(v987, v981, &v1046);
          _os_log_impl(&dword_1CA256000, v1005, v1036, "Unable to get content item for enum case: %s in bundle: %s", v411, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_76_4();
          v321 = v13;
          v416 = v414;
          OUTLINED_FUNCTION_26();

          (*(v410 + 8))(v1023, v1043);
        }

        else
        {

          v416 = *(v407 + 8);
          v456 = OUTLINED_FUNCTION_63_7();
          v416(v456);
          (*(v410 + 8))(v409, v1043);
        }

        v457 = *(v12 + 592);
        v458 = *(v12 + 568);
        v459 = sub_1CA94A898();
        v461 = v460;
        sub_1CA471600();
        v462 = OUTLINED_FUNCTION_127();
        *v463 = v459;
        *(v463 + 8) = v461;
        *(v463 + 16) = 0;
        *(v463 + 24) = 0;
        *(v463 + 32) = 3;
        OUTLINED_FUNCTION_139_4(v462);

        v464 = OUTLINED_FUNCTION_3_3();
        v416(v464);

LABEL_98:

LABEL_99:
        OUTLINED_FUNCTION_20_15();
        v465 = *(v12 + 1160);
        v466 = *(v12 + 1152);
        OUTLINED_FUNCTION_4_34();
        OUTLINED_FUNCTION_25_10();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_93_0();

        __asm { BRAA            X1, X16 }
      }

      v79 = sub_1CA94D7F8();

      if (v79)
      {
        goto LABEL_74;
      }

      ++v73;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    if (v40 == *MEMORY[0x1E69DAD78])
    {
      OUTLINED_FUNCTION_147_2();
      v630 = *(v12 + 1064);
      v631 = *(v12 + 1048);
      v632 = *(v12 + 992);
      v633 = *(v12 + 984);
      v634 = *(v12 + 976);
      v635 = OUTLINED_FUNCTION_19_13(*(v12 + 1056));
      v636(v635);
      v637 = OUTLINED_FUNCTION_75_4(v633);
      v638(v637);
      sub_1CA94AAA8();
      sub_1CA94D048();
      sub_1CA94AA88();
      v639 = objc_allocWithZone(MEMORY[0x1E696E7E8]);
      v640 = OUTLINED_FUNCTION_129();
      v129 = sub_1CA471124(v640);
      v641 = *(v633 + 8);
      v642 = OUTLINED_FUNCTION_162();
      v643(v642);
      v644 = OUTLINED_FUNCTION_111_4();
      v645(v644);
      goto LABEL_169;
    }

    if (v40 == *MEMORY[0x1E69DAD70])
    {
      OUTLINED_FUNCTION_69_6();
      v646 = *(v12 + 968);
      v647 = *(v12 + 960);
      v648 = *(v12 + 952);
      v649 = *(v12 + 944);
      v650 = *(v12 + 936);
      v651 = *(v12 + 928);
      v652 = *(v12 + 920);
      v1027 = *(v12 + 744);
      v654 = OUTLINED_FUNCTION_14_1(v653);
      v655(v654);
      v656 = *(v647 + 32);
      v657 = OUTLINED_FUNCTION_129();
      v658(v657);
      sub_1CA94AA68();
      v659 = sub_1CA2F0A90();
      v660 = OUTLINED_FUNCTION_78_5();
      v661(v660);
      sub_1CA94AA38();
      v1037 = v659;
      if (__swift_getEnumTagSinglePayload(v652, 1, v1027) == 1)
      {
        sub_1CA27080C(*(v12 + 920), &qword_1EC4468C0, &qword_1CA988C00);
        v1012 = 0;
        v662 = 0;
      }

      else
      {
        v689 = *(v12 + 752);
        v690 = *(v12 + 744);
        v1012 = sub_1CA94B378();
        v662 = v691;
        v692 = *(v689 + 8);
        v659 = v689 + 8;
        v693 = OUTLINED_FUNCTION_119();
        v694(v693);
      }

      v1029 = *(v12 + 1072);
      v695 = *(v12 + 1056);
      v696 = *(v12 + 1048);
      v697 = *(v12 + 968);
      v698 = *(v12 + 960);
      v699 = *(v12 + 952);
      sub_1CA94AA28();
      OUTLINED_FUNCTION_1_2();
      v700 = objc_allocWithZone(MEMORY[0x1E696E938]);
      v701 = sub_1CA470FE4(v1037, v1012, v662, v697, v659, 0);
      v702 = v697;
      v129 = v701;
      (*(v698 + 8))(v702, v699);
      (*(v695 + 8))(v1029, v696);
LABEL_169:
      swift_unknownObjectRetain();
LABEL_72:

      goto LABEL_36;
    }

    if (v40 == *MEMORY[0x1E69DAE10])
    {
      OUTLINED_FUNCTION_69_6();
      v663 = *(v12 + 880);
      v664 = *(v12 + 872);
      v665 = *(v12 + 864);
      v666 = *(v12 + 856);
      v667 = *(v12 + 848);
      v668 = *(v12 + 840);
      v670 = OUTLINED_FUNCTION_14_1(v669);
      v671(v670);
      (*(v664 + 32))(v663, v33, v665);
      sub_1CA94AB88();
      v672 = *(v667 + 88);
      v673 = OUTLINED_FUNCTION_126();
      v675 = v674(v673);
      if (v675 == *MEMORY[0x1E69DAD48])
      {
        v676 = *(v12 + 1056);
        v1028 = *(v12 + 1048);
        v1038 = *(v12 + 1072);
        v1013 = *(v12 + 880);
        v677 = *(v12 + 872);
        v678 = *(v12 + 864);
        v679 = *(v12 + 856);
        v680 = *(v12 + 840);
        v681 = *(v12 + 832);
        v682 = *(v12 + 824);
        v683 = *(v12 + 816);
        v684 = OUTLINED_FUNCTION_14_1(*(v12 + 848));
        v685(v684);
        v686 = OUTLINED_FUNCTION_75_4(v682);
        v687(v686);
        v688 = sub_1CA94AD18();
        v129 = [objc_allocWithZone(MEMORY[0x1E695FC20]) initWithPlacemark_];

        (*(v682 + 8))(v681, v683);
        (*(v677 + 8))(v1013, v678);
        (*(v676 + 8))(v1038, v1028);
        goto LABEL_169;
      }

      if (v675 == *MEMORY[0x1E69DAD40])
      {
        v723 = *(v12 + 1072);
        v724 = *(v12 + 1056);
        v725 = *(v12 + 1048);
        v726 = *(v12 + 880);
        v727 = *(v12 + 872);
        v728 = *(v12 + 864);
        v129 = [objc_opt_self() mapItemForCurrentLocation];
        v729 = *(v727 + 8);
        v730 = OUTLINED_FUNCTION_126();
        v731(v730);
        v732 = *(v724 + 8);
        v733 = OUTLINED_FUNCTION_52_0();
        goto LABEL_168;
      }

      goto LABEL_154;
    }

    if (v40 == *MEMORY[0x1E69DADE8])
    {
      v703 = *(v12 + 1072);
      v704 = *(v12 + 1064);
      v705 = *(v12 + 1056);
      v706 = *(v12 + 1048);
      v707 = *(v12 + 808);
      v708 = *(v12 + 800);
      v709 = *(v12 + 792);
      v710 = OUTLINED_FUNCTION_19_13(v705);
      v711(v710);
      v712 = OUTLINED_FUNCTION_75_4(v708);
      v713(v712);
      v714 = objc_opt_self();
      v715 = sub_1CA94AB48();
      v716 = [v714 cnContactWithINPerson_];

      v717 = *(v708 + 8);
      v718 = OUTLINED_FUNCTION_162();
      v719(v718);
      v720 = *(v705 + 8);
      v721 = OUTLINED_FUNCTION_21_6();
      v722(v721);
      v129 = v716;
      goto LABEL_169;
    }

    if (v40 == *MEMORY[0x1E69DADD0])
    {
      OUTLINED_FUNCTION_69_6();
      v736 = *(v12 + 1040);
      v737 = *(v12 + 1032);
      v738 = *(v12 + 1024);
      v740 = OUTLINED_FUNCTION_14_1(v739);
      v741(v740);
      (*(v737 + 32))(v736, v33, v738);
      v742 = sub_1CA94AB18();
      v743 = [v742 wf_fileRepresentation];

      if (v743)
      {
        v744 = objc_opt_self();
        v745 = v743;
        v746 = [v744 genericLocation];
        v747 = [objc_opt_self() itemWithFile:v745 origin:v746 disclosureLevel:1];

        if (v747)
        {
          OUTLINED_FUNCTION_147_2();
          v748 = *(v12 + 1056);
          v749 = *(v12 + 1048);
          v750 = *(v12 + 1040);
          v751 = *(v12 + 1032);
          v752 = *(v12 + 1024);
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v753 = OUTLINED_FUNCTION_137_3();
          OUTLINED_FUNCTION_130_2(v753, xmmword_1CA9813B0);
          sub_1CA46934C();

          v754 = *(v751 + 8);
          v755 = OUTLINED_FUNCTION_162();
          v756(v755);
          v757 = OUTLINED_FUNCTION_111_4();
          v758(v757);
          goto LABEL_108;
        }
      }

      v809 = *(v12 + 1072);
      v810 = *(v12 + 1056);
      v811 = *(v12 + 1048);
      v812 = *(v12 + 1040);
      v813 = *(v12 + 1032);
      v814 = *(v12 + 1024);
      v129 = sub_1CA94AB18();
      v815 = *(v813 + 8);
      v816 = OUTLINED_FUNCTION_119();
      v817(v816);
      v818 = *(v810 + 8);
      v733 = OUTLINED_FUNCTION_21_6();
      goto LABEL_168;
    }

    if (v40 != *MEMORY[0x1E69DADA8])
    {
      if (v40 == *MEMORY[0x1E69DAE08])
      {
        OUTLINED_FUNCTION_147_2();
        v775 = *(v12 + 1064);
        v776 = *(v12 + 1048);
        v777 = *(v12 + 616);
        v778 = *(v12 + 608);
        v779 = *(v12 + 600);
        v780 = *(*(v12 + 1056) + 96);
        v781 = OUTLINED_FUNCTION_70();
        v782(v781);
        v783 = *(v778 + 32);
        v784 = OUTLINED_FUNCTION_61();
        v785(v784);
        v786 = [objc_opt_self() defaultDatabase];
        sub_1CA94A9C8();
        v787 = sub_1CA94C368();

        v788 = [v786 referenceForWorkflowID_];

        v129 = v788;
        v789 = *(v778 + 8);
        v790 = OUTLINED_FUNCTION_119();
        v791(v790);
        v792 = OUTLINED_FUNCTION_111_4();
        v793(v792);
        goto LABEL_169;
      }

      if (v40 == *MEMORY[0x1E69DAD88])
      {
        v801 = OUTLINED_FUNCTION_3_31();
        v802(v801);
        v803 = sub_1CA949058();
        OUTLINED_FUNCTION_1_0(v803);
        v605 = v804;
        v806 = *(v805 + 64) + 15;
        swift_task_alloc();
        OUTLINED_FUNCTION_127_3();
        v807();
        sub_1CA94CED8();
        swift_task_alloc();
        OUTLINED_FUNCTION_129_2();
        v808();
        v610 = sub_1CA94CEC8();
        goto LABEL_128;
      }

      if (v40 == *MEMORY[0x1E69DAD68])
      {
        v833 = OUTLINED_FUNCTION_3_31();
        v834(v833);
        v835 = sub_1CA948898();
        OUTLINED_FUNCTION_1_0(v835);
        v837 = *(v836 + 64);
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_13_19();
        v838();
        v624 = v34;
        sub_1CA948878();
        goto LABEL_131;
      }

      if (v40 != *MEMORY[0x1E69DAE00])
      {
        if (v40 == *MEMORY[0x1E69DADA0])
        {
          v887 = OUTLINED_FUNCTION_3_31();
          v888(v887);
          v889 = sub_1CA948A48();
          OUTLINED_FUNCTION_1_0(v889);
          v891 = *(v890 + 64);
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_13_19();
          v892();
          v624 = v34;
          sub_1CA948A18();
          goto LABEL_131;
        }

        v964 = *(v12 + 1072);
        v965 = *(v12 + 1064);
        v966 = *(v12 + 1056);
        v967 = *(v12 + 1048);
        if (v40 == *MEMORY[0x1E69DAD58])
        {
          v968 = *(v12 + 1016);
          v969 = *(v12 + 1008);
          v970 = *(v12 + 1000);
          v971 = OUTLINED_FUNCTION_14_1(*(v12 + 1056));
          v972(v971, v967);
          v973 = OUTLINED_FUNCTION_75_4(v969);
          v974(v973);
          v975 = sub_1CA94AD18();
          v976 = OUTLINED_FUNCTION_33_10();
          v977(v976);
          v129 = v975;
          (*(v966 + 8))(v964, v967);
          goto LABEL_169;
        }

        v978 = *(v966 + 8);
        (v978)(*(v12 + 1072), *(v12 + 1048));
        v979 = OUTLINED_FUNCTION_52_0();
        v978(v979);

        v129 = 0;
LABEL_36:
        v132 = *(v12 + 1112);
        v133 = *(v12 + 1080);
        v134 = *(v12 + 416);
        v135 = *(v12 + 120);
        v136 = *MEMORY[0x1E69E1110];
        sub_1CA949C58();
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_149_1();
        v137();
        swift_unknownObjectRetain();
        v138 = sub_1CA949F68();
        v139 = sub_1CA94CC38();
        swift_unknownObjectRelease();
        v140 = os_log_type_enabled(v138, v139);
        v141 = *(v12 + 1112);
        v142 = *(v12 + 1088);
        v143 = *(v12 + 1080);
        v1032 = v129;
        if (v140)
        {
          OUTLINED_FUNCTION_60_5();
          v144 = swift_slowAlloc();
          *&v1046 = OUTLINED_FUNCTION_29_4();
          *v144 = 136315394;
          v145 = sub_1CA94AC38();
          v147 = v146;
          v148 = OUTLINED_FUNCTION_95_5();
          v1020 = v149;
          v149(v148, v143);
          sub_1CA26B54C(v145, v147, &v1046);
          OUTLINED_FUNCTION_143_2();
          *(v144 + 4) = v141;
          *(v144 + 12) = 2080;
          if (v1032 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (v150 = *MEMORY[0x1E69E1140], !os_variant_allows_internal_security_policies()))
          {
            v153 = 0xE800000000000000;
            v151 = 0x3E676E697274733CLL;
          }

          else
          {
            *(v12 + 96) = v1032;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AA8, &qword_1CA988C08);
            v151 = sub_1CA94C408();
            v153 = v152;
          }

          v154 = *(v12 + 416);
          v156 = *(v12 + 392);
          v155 = *(v12 + 400);
          v157 = sub_1CA26B54C(v151, v153, &v1046);

          *(v144 + 14) = v157;
          _os_log_impl(&dword_1CA256000, v138, v139, "Turning %s into a content item with object: %s", v144, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_54_5();
          OUTLINED_FUNCTION_26();

          v158 = OUTLINED_FUNCTION_95_5();
          v159 = v156;
          v161 = v160;
          (v160)(v158, v159);
          v129 = v1032;
          if (!v1032)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v162 = *(v12 + 416);
          v163 = *(v12 + 392);
          v164 = *(v12 + 400);

          v165 = OUTLINED_FUNCTION_95_5();
          v1020 = v166;
          v166(v165, v143);
          v161 = *(v164 + 8);
          v167 = OUTLINED_FUNCTION_21_6();
          v161(v167);
          if (!v129)
          {
            goto LABEL_47;
          }
        }

        sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
        *(&v1047 + 1) = swift_getObjectType();
        *&v1046 = v129;
        swift_unknownObjectRetain();
        v168 = sub_1CA470A0C(&v1046);
        if (v168)
        {
          v169 = v168;
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v170 = OUTLINED_FUNCTION_137_3();
          OUTLINED_FUNCTION_130_2(v170, xmmword_1CA9813B0);
          v171 = v169;
          sub_1CA46934C();
          swift_unknownObjectRelease_n();

          goto LABEL_109;
        }

        swift_unknownObjectRelease();
LABEL_47:
        v172 = *(v12 + 1104);
        v173 = *(v12 + 1096);
        v174 = *(v12 + 1080);
        v175 = *(v12 + 408);
        v176 = *(v12 + 120);
        v177 = *MEMORY[0x1E69E10F8];
        sub_1CA949C58();
        v178 = OUTLINED_FUNCTION_119();
        v1039(v178);
        (v1039)(v173, v176, v174);
        v179 = v175;
        v180 = sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_124_4();
        v182 = os_log_type_enabled(v180, v181);
        v183 = *(v12 + 1104);
        v184 = *(v12 + 1096);
        v185 = *(v12 + 1088);
        v186 = *(v12 + 1080);
        if (v182)
        {
          v187 = *(v12 + 552);
          v188 = *(v12 + 496);
          v982 = *(v12 + 488);
          v1040 = *(v12 + 408);
          v1008 = *(v12 + 400);
          v1015 = *(v12 + 392);
          OUTLINED_FUNCTION_60_5();
          v1002 = v161;
          v189 = swift_slowAlloc();
          *&v1046 = OUTLINED_FUNCTION_29_4();
          *v189 = 136315394;
          v992 = v179;
          sub_1CA94AC28();
          sub_1CA94ADA8();
          (*(v188 + 8))(v187, v982);
          v1020(v183, v186);
          v190 = OUTLINED_FUNCTION_63_7();
          sub_1CA26B54C(v190, v191, v192);
          OUTLINED_FUNCTION_143_2();
          OUTLINED_FUNCTION_81_3();
          v193 = sub_1CA94AC38();
          v1020(v184, v186);
          v194 = OUTLINED_FUNCTION_61();
          sub_1CA26B54C(v194, v195, v196);
          OUTLINED_FUNCTION_139();

          *(v189 + 14) = v193;
          OUTLINED_FUNCTION_140_3(&dword_1CA256000, v180, v992, "[%s] TypedValue %s does not support a Content Graph representation yet");
          OUTLINED_FUNCTION_167_1();
          OUTLINED_FUNCTION_138();
          OUTLINED_FUNCTION_51();

          v1002(v1040, v1015);
        }

        else
        {
          v197 = *(v12 + 400);
          v198 = *(v12 + 408);
          v199 = *(v12 + 392);

          v1020(v184, v186);
          v1020(v183, v186);
          v200 = OUTLINED_FUNCTION_61();
          v161(v200);
        }

        v201 = *(v12 + 1080);
        v202 = *(v12 + 120);
        *&v1046 = 0;
        *(&v1046 + 1) = 0xE000000000000000;
        sub_1CA94D408();
        v203 = *(&v1046 + 1);
        *(v12 + 80) = v1046;
        *(v12 + 88) = v203;
        MEMORY[0x1CCAA1300](0x6C61566465707954, 0xEB00000000206575);
        sub_1CA94D578();
        MEMORY[0x1CCAA1300](0xD000000000000034, 0x80000001CA9B8A40);
        v205 = *(v12 + 80);
        v204 = *(v12 + 88);
        sub_1CA471600();
        v206 = OUTLINED_FUNCTION_127();
        *v207 = v205;
        *(v207 + 8) = v204;
        *(v207 + 16) = 0;
        *(v207 + 24) = 0;
        *(v207 + 32) = 0;
        OUTLINED_FUNCTION_139_4(v206);
        swift_unknownObjectRelease();
        goto LABEL_99;
      }

      v856 = *(v12 + 1072);
      v857 = *(v12 + 1064);
      v858 = *(v12 + 1056);
      v859 = *(v12 + 1048);
      v860 = OUTLINED_FUNCTION_19_13(v858);
      v861(v860);
      v863 = *v857;
      v862 = v857[1];
      sub_1CA94CCC8();
      OUTLINED_FUNCTION_129();
      v129 = sub_1CA94CCA8();
      v864 = *(v858 + 8);
      v733 = OUTLINED_FUNCTION_21_6();
LABEL_168:
      v735(v733, v734);
      goto LABEL_169;
    }

    OUTLINED_FUNCTION_69_6();
    v761 = *(v12 + 912);
    v762 = *(v12 + 784);
    v763 = *(v12 + 776);
    v764 = *(v12 + 768);
    v765 = *(v12 + 744);
    v767 = OUTLINED_FUNCTION_14_1(v766);
    v768(v767);
    v769 = *(v763 + 32);
    v770 = OUTLINED_FUNCTION_129();
    v771(v770);
    sub_1CA94AAE8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v761, 1, v765);
    v773 = *(v12 + 912);
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA27080C(*(v12 + 912), &qword_1EC4468C0, &qword_1CA988C00);
      v774 = 0;
LABEL_210:
      OUTLINED_FUNCTION_147_2();
      v954 = *(v12 + 1056);
      v955 = *(v12 + 1048);
      v956 = *(v12 + 784);
      v957 = *(v12 + 776);
      v958 = *(v12 + 768);
      sub_1CA94A9C8();
      v959 = objc_allocWithZone(MEMORY[0x1E6996C80]);
      v960 = OUTLINED_FUNCTION_61();
      v962 = sub_1CA471340(v960, v961, v774);
      v963 = v958;
      v129 = v962;
      (*(v957 + 8))(v956, v963);
      (*(v954 + 8))(v1031);
      goto LABEL_169;
    }

    v794 = *(v12 + 760);
    v795 = *(v12 + 712);
    (*(*(v12 + 752) + 32))(v794, *(v12 + 912), *(v12 + 744));
    v796 = sub_1CA94B378();
    v1030 = v797;
    v1031 = v796;
    sub_1CA94B438();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AC0, &qword_1CA985668);
    v798 = OUTLINED_FUNCTION_171();
    v799 = OUTLINED_FUNCTION_142_3(v798);
    v800 = MEMORY[0x1E69DB378];
    if (v799 == 1)
    {
      sub_1CA27080C(*(v12 + 712), &qword_1EC444AB8, &qword_1CA988BF0);
    }

    else
    {
      OUTLINED_FUNCTION_4_12();
      v820 = v819;
      if ((*(v821 + 88))() == *v800)
      {
        v822 = *(v12 + 736);
        v823 = *(v12 + 728);
        v824 = *(v12 + 720);
        (*(v820 + 96))(*(v12 + 712), v794);
        v825 = *(v823 + 32);
        v826 = OUTLINED_FUNCTION_56_5();
        v827(v826);
        v828 = sub_1CA94B3B8();
        v1007 = v829;
        v1014 = v828;
        v830 = *(v823 + 8);
        v831 = OUTLINED_FUNCTION_69_0();
        v832(v831);
        goto LABEL_176;
      }

      (*(v820 + 8))(*(v12 + 712), v794);
    }

    v1007 = 0;
    v1014 = 0;
LABEL_176:
    v839 = *(v12 + 760);
    v840 = *(v12 + 680);
    sub_1CA94B3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
    v841 = OUTLINED_FUNCTION_171();
    if (OUTLINED_FUNCTION_142_3(v841) == 1)
    {
      sub_1CA27080C(*(v12 + 680), &unk_1EC445A70, &qword_1CA985648);
    }

    else
    {
      OUTLINED_FUNCTION_4_12();
      v843 = v842;
      if ((*(v844 + 88))() == *v800)
      {
        v845 = *(v12 + 704);
        v846 = *(v12 + 696);
        v847 = *(v12 + 688);
        (*(v843 + 96))(*(v12 + 680), v839);
        v848 = *(v846 + 32);
        v849 = OUTLINED_FUNCTION_56_5();
        v850(v849);
        v851 = sub_1CA94B3B8();
        v994 = v852;
        v1001 = v851;
        v853 = *(v846 + 8);
        v854 = OUTLINED_FUNCTION_69_0();
        v855(v854);
        goto LABEL_184;
      }

      (*(v843 + 8))(*(v12 + 680), v839);
    }

    v994 = 0;
    v1001 = 0;
LABEL_184:
    v865 = *(v12 + 760);
    v866 = *(v12 + 640);
    sub_1CA94B328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
    v867 = OUTLINED_FUNCTION_171();
    if (OUTLINED_FUNCTION_142_3(v867) == 1)
    {
      sub_1CA27080C(*(v12 + 640), &qword_1EC444A98, &unk_1CA988BE0);
    }

    else
    {
      OUTLINED_FUNCTION_4_12();
      v869 = v868;
      if ((*(v870 + 88))() == *v800)
      {
        v871 = *(v12 + 672);
        v872 = *(v12 + 664);
        v873 = *(v12 + 656);
        v874 = *(v12 + 648);
        (*(v869 + 96))(*(v12 + 640), v865);
        v875 = *(v873 + 32);
        v876 = OUTLINED_FUNCTION_164();
        v875(v876);
        v877 = OUTLINED_FUNCTION_188();
        v875(v877);
        v878 = *(v873 + 88);
        v879 = OUTLINED_FUNCTION_70();
        v881 = v880(v879);
        v882 = *(v12 + 664);
        v883 = *(v12 + 656);
        if (v881 == *MEMORY[0x1E69DB380])
        {
          v884 = OUTLINED_FUNCTION_14_1(v883);
          v885(v884);
          v886 = v882[1];
          v991 = *v882;
          goto LABEL_194;
        }

        (*(v883 + 8))(*(v12 + 664), *(v12 + 648));
      }

      else
      {
        (*(v869 + 8))(*(v12 + 640), v865);
      }
    }

    v991 = 0;
    v886 = 0xF000000000000000;
LABEL_194:
    v986 = v886;
    v893 = *(v12 + 904);
    v894 = *(v12 + 784);
    v895 = *(v12 + 744);
    sub_1CA94AAE8();
    v896 = __swift_getEnumTagSinglePayload(v893, 1, v895);
    v897 = *(v12 + 904);
    if (v896 == 1)
    {
      v898 = &qword_1EC4468C0;
      v899 = &qword_1CA988C00;
    }

    else
    {
      v900 = *(v12 + 752);
      v901 = *(v12 + 744);
      v902 = *(v12 + 632);
      sub_1CA94B308();
      v903 = *(v900 + 8);
      v904 = OUTLINED_FUNCTION_61();
      v905(v904);
      v906 = sub_1CA94B2E8();
      v907 = __swift_getEnumTagSinglePayload(v902, 1, v906);
      v897 = *(v12 + 632);
      if (v907 != 1)
      {
        v980 = sub_1CA94B2D8();
        v908 = v909;
        OUTLINED_FUNCTION_39(v906);
        v911 = *(v910 + 8);
        v912 = OUTLINED_FUNCTION_119();
        v913(v912);
LABEL_200:
        v914 = *(v12 + 896);
        v915 = *(v12 + 784);
        v916 = *(v12 + 744);
        sub_1CA94AAE8();
        v917 = __swift_getEnumTagSinglePayload(v914, 1, v916);
        v918 = *(v12 + 896);
        if (v917 == 1)
        {
          v919 = &qword_1EC4468C0;
          v920 = &qword_1CA988C00;
        }

        else
        {
          v921 = *(v12 + 752);
          v922 = *(v12 + 744);
          v923 = *(v12 + 624);
          sub_1CA94B308();
          v924 = *(v921 + 8);
          v925 = OUTLINED_FUNCTION_119();
          v926(v925);
          v927 = sub_1CA94B2E8();
          v928 = __swift_getEnumTagSinglePayload(v923, 1, v927);
          v918 = *(v12 + 624);
          if (v928 != 1)
          {
            v929 = sub_1CA94B2C8();
            v930 = v931;
            OUTLINED_FUNCTION_39(v927);
            v933 = *(v932 + 8);
            v934 = OUTLINED_FUNCTION_135_2();
            v935(v934);
            goto LABEL_206;
          }

          v919 = &qword_1EC444A70;
          v920 = &qword_1CA985610;
        }

        sub_1CA27080C(v918, v919, v920);
        v929 = 0;
        v930 = 0;
LABEL_206:
        v936 = *(v12 + 888);
        v937 = *(v12 + 784);
        v938 = *(v12 + 744);
        sub_1CA94AAE8();
        v939 = __swift_getEnumTagSinglePayload(v936, 1, v938);
        v940 = *(v12 + 888);
        if (v939 == 1)
        {
          sub_1CA27080C(*(v12 + 888), &qword_1EC4468C0, &qword_1CA988C00);
        }

        else
        {
          v941 = *(v12 + 752);
          v942 = *(v12 + 744);
          v943 = *(v12 + 888);
          sub_1CA94B448();
          v944 = *(v941 + 8);
          v945 = OUTLINED_FUNCTION_177();
          v946(v945);
        }

        v947 = *(v12 + 760);
        v948 = *(v12 + 752);
        v949 = *(v12 + 744);
        v950 = objc_allocWithZone(MEMORY[0x1E6996C98]);
        v774 = sub_1CA47118C(v1031, v1030, v1014, v1007, v1001, v994, v991, v986, v980, v908, v929, v930);
        v951 = *(v948 + 8);
        v952 = OUTLINED_FUNCTION_177();
        v953(v952);
        goto LABEL_210;
      }

      v898 = &qword_1EC444A70;
      v899 = &qword_1CA985610;
    }

    sub_1CA27080C(v897, v898, v899);
    v980 = 0;
    v908 = 0xF000000000000000;
    goto LABEL_200;
  }

  if (v59 != *MEMORY[0x1E69DB088])
  {
    v240 = *(v12 + 1168);
    v241 = *(v12 + 1080);
    v242 = *(v12 + 464);
    v243 = *(v12 + 120);
    v244 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_149_1();
    v245();
    v246 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_124_4();
    v248 = os_log_type_enabled(v246, v247);
    v249 = *(v12 + 1168);
    v250 = *(v12 + 1088);
    v251 = *(v12 + 1080);
    if (v248)
    {
      v252 = *(v12 + 552);
      v253 = *(v12 + 496);
      v1003 = *(v12 + 488);
      v1021 = *(v12 + 400);
      v1033 = *(v12 + 392);
      v1041 = *(v12 + 464);
      v254 = swift_slowAlloc();
      v255 = OUTLINED_FUNCTION_254();
      *&v1046 = v255;
      OUTLINED_FUNCTION_134_3(4.8149e-34);
      sub_1CA94AC28();
      v996 = sub_1CA94ADA8();
      v256 = v251;
      v258 = v257;
      (*(v253 + 8))(v252, v1003);
      (*(v250 + 8))(v249, v256);
      sub_1CA26B54C(v996, v258, &v1046);
      OUTLINED_FUNCTION_108_3();

      *(v254 + 4) = v256;
      OUTLINED_FUNCTION_110_3();
      _os_log_impl(v259, v260, v261, v262, v263, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v255);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_51();

      (*(v1021 + 8))(v1041, v1033);
    }

    else
    {
      v338 = *(v12 + 464);
      v339 = *(v12 + 392);
      v340 = *(v12 + 400);

      (*(v250 + 8))(v249, v251);
      v341 = *(v340 + 8);
      v342 = OUTLINED_FUNCTION_3_3();
      v343(v342);
    }

    v344 = *(v12 + 592);
    v345 = *(v12 + 576);
    v346 = *(v12 + 568);
    v1034 = *(v12 + 560);
    v347 = *(v12 + 552);
    v348 = *(v12 + 488);
    v349 = *(v12 + 496);
    v350 = *(v12 + 120);
    sub_1CA94AC28();
    sub_1CA94ADA8();
    OUTLINED_FUNCTION_58_2();
    v351 = *(v349 + 8);
    v352 = OUTLINED_FUNCTION_164();
    v351(v352);
    sub_1CA471600();
    v353 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_70_8(v353, v354);
    OUTLINED_FUNCTION_139_4(v355);
    v356 = *(v345 + 8);
    v357 = OUTLINED_FUNCTION_107_0();
    v358(v357);
    (v351)(v1034, v348);
    goto LABEL_98;
  }

  v103 = *(v12 + 560);
  v104 = *(v12 + 488);
  v105 = *(v12 + 384);
  v106 = *(v12 + 352);
  v107 = *(v12 + 360);
  v108 = *(v12 + 344);
  v110 = *(v12 + 320);
  v109 = *(v12 + 328);
  v111 = *(v12 + 312);
  v112 = OUTLINED_FUNCTION_14_1(*(v12 + 496));
  v113(v112);
  *(v12 + 1216) = *v103;
  swift_projectBox();
  v114 = *(v107 + 16);
  v115 = OUTLINED_FUNCTION_86_2();
  v116(v115);
  v117 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v117);
  v118 = OUTLINED_FUNCTION_78_5();
  v119(v118);
  if (qword_1EC4420F0 != -1)
  {
    OUTLINED_FUNCTION_97_1();
  }

  v120 = qword_1EC4420F8;
  v121 = (*(v12 + 344) + *(*(v12 + 336) + 20));
  v121[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v121[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v121 = v120;
  objc_opt_self();
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_160_2([v121 defaultContext]);
  v122 = swift_task_alloc();
  *(v12 + 1224) = v122;
  *v122 = v12;
  v122[1] = sub_1CA464DBC;
  v123 = *(v12 + 344);
  OUTLINED_FUNCTION_73_0(*(v12 + 120));
  OUTLINED_FUNCTION_93_0();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA464DBC()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v2 + 1224);
  v6 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v7 = v6;
  *(v9 + 1232) = v8;
  *(v9 + 1240) = v0;

  sub_1CA4715A8(*(v2 + 344), type metadata accessor for TypedValueConversionContext);
  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA464EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 384);
  v14 = *(v12 + 328);
  v15 = *(v12 + 1232);
  sub_1CA94AD68();
  v16 = type metadata accessor for WFRemoteAppValue();
  v17 = objc_allocWithZone(v16);
  v18 = OUTLINED_FUNCTION_171();
  sub_1CA560484(v18, v14);
  OUTLINED_FUNCTION_40();
  type metadata accessor for WFRemoteAppEnumContentItem();
  v114[3] = v16;
  v114[0] = v13;
  v19 = v13;
  if (sub_1CA470A0C(v114))
  {
    v20 = *(v12 + 1232);
    v107 = *(v12 + 1216);
    v110 = *(v12 + 1208);
    v105 = *(v12 + 592);
    v21 = *(v12 + 576);
    v22 = *(v12 + 568);
    v23 = *(v12 + 384);
    v25 = *(v12 + 352);
    v24 = *(v12 + 360);
    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v26 = OUTLINED_FUNCTION_137_3();
    OUTLINED_FUNCTION_130_2(v26, xmmword_1CA9813B0);
    sub_1CA46934C();

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v105, v22);

    OUTLINED_FUNCTION_20_15();
    v27 = *(v12 + 1160);
    v28 = *(v12 + 1152);
    OUTLINED_FUNCTION_4_34();
    OUTLINED_FUNCTION_26_14();

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_0();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    v38 = *(v12 + 1200);
    v39 = *(v12 + 1192);
    v40 = *(v12 + 1176);
    v41 = *(v12 + 1080);
    v42 = *(v12 + 472);
    v43 = *(v12 + 120);
    v44 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    v45 = OUTLINED_FUNCTION_41_0();
    (v39)(v45);
    v46 = v19;
    v47 = sub_1CA949F68();
    v48 = sub_1CA94CC18();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v12 + 1176);
    v51 = *(v12 + 1088);
    v52 = *(v12 + 1080);
    v111 = v46;
    if (v49)
    {
      v53 = *(v12 + 552);
      v54 = *(v12 + 496);
      v102 = *(v12 + 488);
      v112 = *(v12 + 472);
      v106 = *(v12 + 400);
      v108 = *(v12 + 392);
      OUTLINED_FUNCTION_60_5();
      swift_slowAlloc();
      v103 = OUTLINED_FUNCTION_141_3();
      v104 = OUTLINED_FUNCTION_254();
      v114[0] = v104;
      OUTLINED_FUNCTION_134_3(4.8151e-34);
      sub_1CA94AC28();
      sub_1CA94ADA8();
      (*(v54 + 8))(v53, v102);
      v55 = *(v51 + 8);
      v56 = OUTLINED_FUNCTION_70();
      v57(v56);
      v58 = OUTLINED_FUNCTION_52_0();
      sub_1CA26B54C(v58, v59, v60);
      OUTLINED_FUNCTION_171();

      OUTLINED_FUNCTION_115_3();
      *(v39 + 14) = v46;
      *v103 = v46;
      v61 = v46;
      OUTLINED_FUNCTION_140_3(&dword_1CA256000, v47, v48, "[%s] Unable to make remote app enum content item with value: %@");
      sub_1CA27080C(v103, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_138();
      __swift_destroy_boxed_opaque_existential_0(v104);
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_51();

      (*(v106 + 8))(v112, v108);
    }

    else
    {
      v62 = *(v12 + 472);
      v63 = *(v12 + 392);
      v64 = *(v12 + 400);

      v65 = *(v51 + 8);
      v66 = OUTLINED_FUNCTION_70();
      v67(v66);
      v68 = *(v64 + 8);
      v69 = OUTLINED_FUNCTION_3_3();
      v70(v69);
    }

    v71 = *(v12 + 1232);
    v72 = *(v12 + 1216);
    v109 = *(v12 + 1208);
    v73 = *(v12 + 592);
    v74 = *(v12 + 576);
    v75 = *(v12 + 568);
    v76 = *(v12 + 384);
    v78 = *(v12 + 352);
    v77 = *(v12 + 360);
    sub_1CA471600();
    v113 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_35_9(v113, v79);
    swift_willThrow();

    v80 = *(v77 + 8);
    v81 = OUTLINED_FUNCTION_162();
    v82(v81);
    v83 = *(v74 + 8);
    v84 = OUTLINED_FUNCTION_70();
    v85(v84);

    v86 = *(v12 + 1184);
    v87 = *(v12 + 1176);
    v88 = *(v12 + 1168);
    v89 = *(v12 + 1160);
    v90 = *(v12 + 1152);
    OUTLINED_FUNCTION_77_6();
    v91 = *(v12 + 1112);
    v92 = *(v12 + 1104);
    v93 = *(v12 + 1096);
    OUTLINED_FUNCTION_26_14();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12);
  }
}

void sub_1CA465808()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[74];
  v4 = v0[72];
  v5 = v0[71];
  (*(v0[45] + 8))(v0[48], v0[44]);
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_69_0();
  v8(v7);

  OUTLINED_FUNCTION_12_19(v0[155]);
  v9 = v0[145];
  v10 = v0[144];
  OUTLINED_FUNCTION_18_17();
  v11 = v0[140];
  v12 = v0[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1CA465B30()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 1288);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  v4[162] = v0;

  if (v0)
  {
    v10 = v4[160];
    v11 = v4[157];
    v12 = v4[145];
    v13 = v4[136];
    v14 = v4[135];

    v15 = *(v13 + 8);
    v16 = OUTLINED_FUNCTION_116();
    v17(v16);
  }

  else
  {
    v18 = v4[145];
    v19 = v4[136];
    v20 = v4[135];
    v4[163] = v1;
    (*(v19 + 8))(v18, v20);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1CA465C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 1304);
  v14 = [v13 items];

  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_107_0();
  v15 = sub_1CA94C658();

  if (v15 >> 62)
  {
    v16 = sub_1CA94D328();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = *(v12 + 1280);
  v18 = v17 >> 62;
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v69 = *(v12 + 1280);
    }

    result = sub_1CA94D328();
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = result + v16;
  if (__OFADD__(result, v16))
  {
    __break(1u);
    goto LABEL_45;
  }

  v21 = *(v12 + 1280);
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (result)
  {
    if (!v18)
    {
      v22 = v17 & 0xFFFFFFFFFFFFFF8;
      v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v23 >= v20)
      {
        v24 = *(v12 + 1280);
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_13:
    v26 = *(v12 + 1280);
    if (v17 < 0)
    {
      v27 = *(v12 + 1280);
    }

    sub_1CA94D328();
    goto LABEL_16;
  }

  if (v18)
  {
    goto LABEL_13;
  }

  v22 = v17 & 0xFFFFFFFFFFFFFF8;
LABEL_12:
  v25 = *(v22 + 16);
LABEL_16:
  v28 = *(v12 + 1280);
  result = sub_1CA94D488();
  v24 = result;
  v22 = result & 0xFFFFFFFFFFFFFF8;
  v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
  v29 = *(v22 + 16);
  v30 = v23 - v29;
  if (v15 >> 62)
  {
    v33 = sub_1CA94D328();
    if (v33)
    {
      v34 = v33;
      result = sub_1CA94D328();
      if (v30 < result)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v34 < 1)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v70 = result;
      v71 = v22;
      v72 = v24;
      v35 = v15;
      v36 = v12 + 48;
      v37 = v22 + 8 * v29 + 32;
      sub_1CA471654();
      for (i = 0; i != v34; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AB0, &unk_1CA988C30);
        v39 = sub_1CA276BDC(v36, i, v35);
        v41 = *v40;
        v39(v36, 0);
        *(v37 + 8 * i) = v41;
      }

      v22 = v71;
      v24 = v72;
      v31 = v70;
      goto LABEL_27;
    }

LABEL_31:

    if (v16 <= 0)
    {
      goto LABEL_32;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_31;
  }

  if (v30 < v31)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v32 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  swift_arrayInitWithCopy();
LABEL_27:

  if (v31 < v16)
  {
    goto LABEL_45;
  }

  if (v31 > 0)
  {
    v42 = *(v22 + 16);
    v43 = __OFADD__(v42, v31);
    v44 = v42 + v31;
    if (v43)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    *(v22 + 16) = v44;
  }

LABEL_32:
  v45 = *(v12 + 1272) + 1;
  *(v12 + 1280) = v24;
  *(v12 + 1272) = v45;
  result = *(v12 + 1256);
  if (v45 == *(v12 + 1264))
  {
    v46 = *(v12 + 1248);
    v48 = *(v12 + 296);
    v47 = *(v12 + 304);
    v49 = *(v12 + 288);

    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    sub_1CA46934C();
    v50 = *(v48 + 8);
    v51 = OUTLINED_FUNCTION_69_0();
    v52(v51);

    OUTLINED_FUNCTION_20_15();
    v53 = *(v12 + 1160);
    v54 = *(v12 + 1152);
    OUTLINED_FUNCTION_18_17();
    v55 = *(v12 + 1120);
    v56 = *(v12 + 1112);
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_33();

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_113_2();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X2, X16 }
  }

  if (v45 >= *(result + 16))
  {
    goto LABEL_46;
  }

  v59 = *(v12 + 1200);
  (*(v12 + 1192))(*(v12 + 1160), result + ((*(*(v12 + 1088) + 80) + 32) & ~*(*(v12 + 1088) + 80)) + *(*(v12 + 1088) + 72) * v45, *(v12 + 1080));
  v60 = swift_task_alloc();
  *(v12 + 1288) = v60;
  *v60 = v12;
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_23_0();

  return TypedValue.resolve(in:)(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
}

uint64_t sub_1CA4662E4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v2 + 1336);
  *v4 = *v1;
  *(v3 + 1344) = v0;

  v6 = *(v2 + 1328);
  (*(v2 + 1320))(*(v2 + 536), *(v2 + 488));
  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA466440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[61];
  v14 = v12[27];
  if (OUTLINED_FUNCTION_142_3(v14) == 1)
  {
    sub_1CA27080C(v14, &qword_1EC444368, &unk_1CA988BC0);
LABEL_8:
    v50 = v12[150];
    v51 = v12[149];
    v52 = v12[142];
    v53 = v12[135];
    v54 = v12[55];
    v55 = v12[15];
    v56 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    v57 = OUTLINED_FUNCTION_61();
    v51(v57);
    v58 = sub_1CA949F68();
    v59 = sub_1CA94CC18();
    if (OUTLINED_FUNCTION_105_4(v59))
    {
      v112 = v12[165];
      v113 = v12[166];
      v60 = v12[142];
      OUTLINED_FUNCTION_131_4();
      v61 = v12[55];
      v62 = OUTLINED_FUNCTION_138_4();
      v117 = OUTLINED_FUNCTION_254();
      *v62 = 136315138;
      sub_1CA94AC28();
      sub_1CA94ADA8();
      v63 = OUTLINED_FUNCTION_133_2();
      v64(v63);
      (*(v55 + 8))(v60);
      v65 = OUTLINED_FUNCTION_63_7();
      sub_1CA26B54C(v65, v66, v67);
      OUTLINED_FUNCTION_143_2();
      *(v62 + 4) = v54;
      OUTLINED_FUNCTION_55_6();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_54_5();

      (*(v114 + 8))();
    }

    else
    {
      v73 = v12[142];
      v74 = v12[136];
      v75 = v12[135];
      v76 = v12[55];
      v77 = v12[49];
      v78 = v12[50];

      v79 = *(v74 + 8);
      v80 = OUTLINED_FUNCTION_52_0();
      v81(v80);
      v82 = *(v78 + 8);
      v83 = OUTLINED_FUNCTION_70();
      v84(v83);
    }

    v85 = v12[166];
    v86 = v12[165];
    v115 = v12[164];
    v87 = v12[69];
    v88 = v12[61];
    v89 = v12[34];
    v90 = v12[35];
    v91 = v12[33];
    v92 = v12[15];
    sub_1CA94AC28();
    sub_1CA94ADA8();
    OUTLINED_FUNCTION_58_2();
    v93 = OUTLINED_FUNCTION_69_0();
    v86(v93);
    sub_1CA471600();
    v116 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_70_8(v116, v94);
    swift_willThrow();
    v95 = *(v89 + 8);
    v96 = OUTLINED_FUNCTION_126();
    v97(v96);

    v98 = v12[148];
    v99 = v12[147];
    v100 = v12[146];
    v101 = v12[145];
    v102 = v12[144];
    OUTLINED_FUNCTION_77_6();
    v103 = v12[139];
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_39_7();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12);
  }

  v15 = v12[68];
  v16 = v12[66];
  v17 = v12[62];
  v18 = v17[4];
  v19 = OUTLINED_FUNCTION_116();
  v20(v19);
  v21 = v17[2];
  v22 = OUTLINED_FUNCTION_188();
  v23(v22);
  v24 = v17[11];
  v25 = OUTLINED_FUNCTION_129();
  if (v26(v25) != *MEMORY[0x1E69DB088])
  {
    v46 = v12[166];
    v47 = v12[165];
    v48 = v12[66];
    v47(v12[68], v12[61]);
    v49 = OUTLINED_FUNCTION_3_3();
    (v47)(v49);
    goto LABEL_8;
  }

  v27 = v12[66];
  v28 = v12[61];
  v29 = v12[47];
  v30 = v12[44];
  v31 = v12[45];
  v32 = OUTLINED_FUNCTION_14_1(v12[62]);
  v33(v32);
  v34 = *v27;
  swift_projectBox();
  v35 = OUTLINED_FUNCTION_22();
  v36(v35);

  v37 = swift_task_alloc();
  v12[169] = v37;
  *v37 = v12;
  v37[1] = sub_1CA466A7C;
  v38 = v12[47];
  v39 = v12[35];
  v40 = v12[15];
  OUTLINED_FUNCTION_73_0(v12[14]);
  OUTLINED_FUNCTION_23_0();

  return sub_1CA46D1C4(v41, v42, v43);
}

uint64_t sub_1CA466A7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 1352);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  v4[170] = v1;
  v4[171] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_3();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    v4[172] = v13;
    *v13 = v8;
    v13[1] = sub_1CA466BE4;
    v14 = v4[47];
    v15 = v4[15];

    return sub_1CA46D96C(v1, v14);
  }
}

uint64_t sub_1CA466BE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 1376);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v4 + 1384) = v0;

  if (!v0)
  {
    *(v4 + 1392) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1CA466CE8()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_74_4();
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_70();
  v5(v4);
  v6 = OUTLINED_FUNCTION_20_0();
  v2(v6);
  v7 = OUTLINED_FUNCTION_33_10();
  v8(v7);

  OUTLINED_FUNCTION_12_19(v1[174]);
  v9 = v1[145];
  v10 = v1[144];
  OUTLINED_FUNCTION_18_17();
  v11 = v1[140];
  v12 = v1[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_113_2();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA467000()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[176];
  *v4 = *v1;
  v3[177] = v0;

  v6 = v2[64];
  v7 = v2[62];
  v8 = v2[61];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (!v0)
  {
    v3[178] = v10;
    v3[179] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v10(v6, v8);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA467174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = v12[61];
  v15 = v12[26];
  if (OUTLINED_FUNCTION_142_3(v15) == 1)
  {
    sub_1CA27080C(v15, &qword_1EC444368, &unk_1CA988BC0);
LABEL_7:
    v52 = v12[150];
    v53 = v12[149];
    v54 = v12[141];
    v55 = v12[135];
    v56 = v12[54];
    v57 = v12[15];
    v58 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    v59 = OUTLINED_FUNCTION_61();
    v53(v59);
    v60 = sub_1CA949F68();
    v61 = sub_1CA94CC18();
    if (OUTLINED_FUNCTION_105_4(v61))
    {
      v122 = v12[178];
      v123 = v12[179];
      v62 = v12[141];
      OUTLINED_FUNCTION_131_4();
      v63 = v12[54];
      v64 = OUTLINED_FUNCTION_138_4();
      v126 = OUTLINED_FUNCTION_254();
      *v64 = 136315138;
      sub_1CA94AC28();
      sub_1CA94ADA8();
      v65 = OUTLINED_FUNCTION_133_2();
      v66(v65);
      (*(v57 + 8))(v62);
      v67 = OUTLINED_FUNCTION_63_7();
      sub_1CA26B54C(v67, v68, v69);
      OUTLINED_FUNCTION_143_2();
      *(v64 + 4) = v56;
      OUTLINED_FUNCTION_55_6();
      _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_54_5();

      (*(v124 + 8))();
    }

    else
    {
      v75 = v12[141];
      v76 = v12[136];
      v77 = v12[135];
      v78 = v12[54];
      v79 = v12[49];
      v80 = v12[50];

      v81 = *(v76 + 8);
      v82 = OUTLINED_FUNCTION_52_0();
      v83(v82);
      v84 = *(v80 + 8);
      v85 = OUTLINED_FUNCTION_70();
      v86(v85);
    }

    v87 = v12[179];
    v88 = v12[178];
    v125 = v12[175];
    v89 = v12[69];
    v90 = v12[61];
    v91 = v12[24];
    v92 = v12[25];
    v93 = v12[23];
    v94 = v12[15];
    sub_1CA94AC28();
    sub_1CA94ADA8();
    OUTLINED_FUNCTION_58_2();
    v95 = OUTLINED_FUNCTION_69_0();
    v88(v95);
    sub_1CA471600();
    v96 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_70_8(v96, v97);
    swift_willThrow();
    v98 = *(v91 + 8);
    v99 = OUTLINED_FUNCTION_126();
    v100(v99);
    goto LABEL_11;
  }

  v16 = v12[65];
  v17 = v12[62];
  v18 = v17[4];
  v19 = OUTLINED_FUNCTION_116();
  v20(v19);
  v21 = v17[2];
  v22 = OUTLINED_FUNCTION_188();
  v23(v22);
  v24 = v17[11];
  v25 = OUTLINED_FUNCTION_129();
  if (v26(v25) != *MEMORY[0x1E69DB088])
  {
    v48 = v12[179];
    v49 = v12[178];
    v50 = v12[63];
    (v49)(v12[65], v12[61]);
    v51 = OUTLINED_FUNCTION_3_3();
    v49(v51);
    goto LABEL_7;
  }

  v27 = v12[177];
  v28 = v12[63];
  v29 = v12[61];
  v31 = v12[45];
  v30 = v12[46];
  v32 = v12[44];
  v33 = v12[25];
  v34 = OUTLINED_FUNCTION_14_1(v12[62]);
  v35(v34);
  v36 = *v28;
  v37 = swift_projectBox();
  (*(v31 + 16))(v30, v37, v32);

  v12[180] = sub_1CA344A04();
  if (v27)
  {
    v38 = v12[179];
    v39 = v12[178];
    v40 = v12[175];
    v41 = v12[65];
    v42 = OUTLINED_FUNCTION_103_2();
    v43(v42);
    v44 = OUTLINED_FUNCTION_52_0();
    v39(v44);
    v45 = *(v13 + 8);
    v46 = OUTLINED_FUNCTION_70();
    v47(v46);
LABEL_11:

    v101 = v12[148];
    v102 = v12[147];
    v103 = v12[146];
    v104 = v12[145];
    v105 = v12[144];
    OUTLINED_FUNCTION_77_6();
    v106 = v12[139];
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_39_7();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12);
  }

  v116 = swift_task_alloc();
  v12[181] = v116;
  *v116 = v12;
  v116[1] = sub_1CA467818;
  v117 = v12[46];
  v118 = v12[15];
  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_23_0();

  return sub_1CA46E134(v119, v120);
}

uint64_t sub_1CA467818()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 1448);
  *v3 = *v1;
  *(v2 + 1456) = v6;
  *(v2 + 1464) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA46791C()
{
  OUTLINED_FUNCTION_0();

  v1 = swift_task_alloc();
  *(v0 + 1472) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4679B8;
  v2 = *(v0 + 368);
  v3 = *(v0 + 120);
  v4 = OUTLINED_FUNCTION_73_0(*(v0 + 1456));

  return sub_1CA46D96C(v4, v5);
}

uint64_t sub_1CA4679B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 1472);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v4 + 1480) = v0;

  if (!v0)
  {
    *(v4 + 1488) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1CA467ABC()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();

  v18 = *(v0 + 1464);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 520);
  v6 = OUTLINED_FUNCTION_103_2();
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_0();
  v3(v8);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_70();
  v11(v10);

  OUTLINED_FUNCTION_20_15();
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1152);
  OUTLINED_FUNCTION_18_17();
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA467DE4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_71_5();
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_70();
  v5(v4);
  v6 = OUTLINED_FUNCTION_20_0();
  v2(v6);
  v7 = OUTLINED_FUNCTION_33_10();
  v8(v7);

  OUTLINED_FUNCTION_12_19(v1[186]);
  v9 = v1[145];
  v10 = v1[144];
  OUTLINED_FUNCTION_18_17();
  v11 = v1[140];
  v12 = v1[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_113_2();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X2, X16 }
}

void sub_1CA4680FC()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0[156];
  (*(v0[37] + 8))(v0[38], v0[36]);

  OUTLINED_FUNCTION_12_19(v0[162]);
  v2 = v0[145];
  v3 = v0[144];
  OUTLINED_FUNCTION_18_17();
  v4 = v0[140];
  v5 = v0[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA4683F8()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0[164];
  (*(v0[34] + 8))(v0[35], v0[33]);

  OUTLINED_FUNCTION_12_19(v0[168]);
  v2 = v0[145];
  v3 = v0[144];
  OUTLINED_FUNCTION_18_17();
  v4 = v0[140];
  v5 = v0[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA4686F4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0[166];
  v2 = v0[165];
  v3 = v0[164];
  v4 = v0[68];
  v5 = v0[61];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v9 = OUTLINED_FUNCTION_20_0();
  v2(v9);
  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_70();
  v12(v11);

  OUTLINED_FUNCTION_12_19(v0[171]);
  v13 = v0[145];
  v14 = v0[144];
  OUTLINED_FUNCTION_18_17();
  v15 = v0[140];
  v16 = v0[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA468A24()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_74_4();
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_70();
  v5(v4);
  v6 = OUTLINED_FUNCTION_20_0();
  v2(v6);
  v7 = OUTLINED_FUNCTION_33_10();
  v8(v7);

  OUTLINED_FUNCTION_12_19(v1[173]);
  v9 = v1[145];
  v10 = v1[144];
  OUTLINED_FUNCTION_18_17();
  v11 = v1[140];
  v12 = v1[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA468D38()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0[175];
  (*(v0[24] + 8))(v0[25], v0[23]);

  OUTLINED_FUNCTION_12_19(v0[177]);
  v2 = v0[145];
  v3 = v0[144];
  OUTLINED_FUNCTION_18_17();
  v4 = v0[140];
  v5 = v0[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA469034()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_71_5();
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_70();
  v5(v4);
  v6 = OUTLINED_FUNCTION_20_0();
  v2(v6);
  v7 = OUTLINED_FUNCTION_33_10();
  v8(v7);

  OUTLINED_FUNCTION_12_19(v1[185]);
  v9 = v1[145];
  v10 = v1[144];
  OUTLINED_FUNCTION_18_17();
  v11 = v1[140];
  v12 = v1[139];
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33();

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

id sub_1CA46934C()
{
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v0 = sub_1CA94C648();

  v1 = [swift_getObjCClassFromMetadata() collectionWithItems_];

  return v1;
}

uint64_t sub_1CA4693D0()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1CA94B168();
  v1[5] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_13_5();
  v1[9] = swift_task_alloc();
  v11 = sub_1CA94B1C8();
  v1[10] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_13_5();
  v1[13] = swift_task_alloc();
  v15 = sub_1CA94ADC8();
  v1[14] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1CA469558()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[4];
  v4 = *(v1 + 16);
  v5 = OUTLINED_FUNCTION_136();
  v4(v5);
  v6 = *(v1 + 88);
  v7 = OUTLINED_FUNCTION_3_3();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E69DB0B0] || v9 == *MEMORY[0x1E69DB0A0])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x1E69DB098])
  {
    v20 = v0[16];
    v21 = v0[14];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    v25 = v0[3];
    v26 = OUTLINED_FUNCTION_14_1(v0[15]);
    v27(v26);
    v28 = *v20;
    v0[17] = *v20;
    v30 = v28[2];
    v29 = v28[3];
    v0[18] = v28[4];
    v0[19] = v28[5];
    v31 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    (*(v23 + 104))(v22, *MEMORY[0x1E69DB2E0], v24);
    v32 = *(v31 + 8);
    sub_1CA94C218();
    v43 = v32 + *v32;
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[20] = v34;
    *v34 = v0;
    v34[1] = sub_1CA469878;
    v35 = v0[9];
    v36 = v0[7];
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X6, X16 }
  }

  if (v9 == *MEMORY[0x1E69DB088] || v9 == *MEMORY[0x1E69DB0A8])
  {
LABEL_6:
    v11 = v0[14];
    v12 = v0[4];
    v13 = v0[2];
    (*(v0[15] + 8))(v0[16], v11);
    v14 = OUTLINED_FUNCTION_116();
    v4(v14);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_96_5();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  v40 = v0[14];
  OUTLINED_FUNCTION_24();

  return sub_1CA94D7E8();
}

uint64_t sub_1CA469878()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[19];
    v11 = v3[6];
    v10 = v3[7];
    v12 = v3[5];

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    (*(v3[6] + 8))(v3[7], v3[5]);
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1CA4699C0()
{
  v24 = v0[18];
  v25 = v0[19];
  v1 = v0[15];
  v26 = v0[14];
  v27 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[2];
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  (*(v4 + 32))(v2, v7, v5);
  sub_1CA94AD88();
  v12 = swift_allocBox();
  (*(v4 + 16))(v3, v2, v5);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
  sub_1CA94AD58();
  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_176_0();
  v18(v17);
  *v8 = v12;
  (*(v1 + 104))(v8, *MEMORY[0x1E69DB088], v26);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v26);

  OUTLINED_FUNCTION_96_5();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1CA469B5C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[2];
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_1CA27080C(v4, &qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);

  OUTLINED_FUNCTION_96_5();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t ContentGraphRepresentationContext.shortcuts.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  v4 = v2;

  return swift_unknownObjectRetain();
}

uint64_t ContentGraphRepresentationContext.toolkit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContentGraphRepresentationContext(0);
  v3 = OUTLINED_FUNCTION_22_13(*(v2 + 24));
  return sub_1CA47154C(v3, a1);
}

uint64_t sub_1CA469CF0()
{
  v0 = sub_1CA2B8BCC();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  result = sub_1CA25B3D0(0, &qword_1EC445B58, 0x1E6996E40);
  *(v3 + 32) = result;
  qword_1EC4616A0 = v3;
  return result;
}

uint64_t sub_1CA469D60()
{
  v0 = sub_1CA2B8BF0();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  result = type metadata accessor for WFAskLLMModelParameter();
  *(v3 + 32) = result;
  qword_1EC4616A8 = v3;
  return result;
}

void sub_1CA469DC0()
{
  v0 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v1 = OUTLINED_FUNCTION_52(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57[-v13];
  v15 = sub_1CA94ADC8();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v64 = v17;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v57[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v57[-v22];
  if (qword_1EC442D78 != -1)
  {
    swift_once();
  }

  v60 = v12;
  v23 = qword_1EC4616A0;
  v24 = *(qword_1EC4616A0 + 16);
  if (v24)
  {
    v25 = objc_opt_self();
    v26 = (v23 + 32);
    v27 = *MEMORY[0x1E69DB488];
    v67 = sub_1CA94B668();
    OUTLINED_FUNCTION_52(v67);
    v29 = *(v28 + 104);
    v65 = v28 + 104;
    v66 = v29;
    v61 = (v64 + 32);
    v68 = MEMORY[0x1E69E7CC0];
    v58 = v27;
    v59 = v25;
    do
    {
      v30 = *v26;
      *(v5 + 4) = 0;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      v66(&v5[v0[5]], v27, v67);
      v31 = &v5[v0[6]];
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      *&v5[v0[7]] = [v25 defaultContext];
      static WFContentItem.toolkitTypeIdentifier(context:)(v5, v14);
      OUTLINED_FUNCTION_68_6();
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v15);
      v35 = *v61;
      (*v61)(v62, v14, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v68 + 16);
        sub_1CA2E4E18();
        v68 = v40;
      }

      v37 = *(v68 + 16);
      v36 = *(v68 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_18(v36);
        sub_1CA2E4E18();
        v68 = v41;
      }

      v38 = v68;
      *(v68 + 16) = v37 + 1;
      v35(v38 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v37, v62, v15);
      v25 = v59;
      v27 = v58;
      ++v26;
      --v24;
    }

    while (v24);
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC442D80 != -1)
  {
    swift_once();
  }

  v42 = *(qword_1EC4616A8 + 16);
  v43 = v60;
  if (v42)
  {
    v44 = (qword_1EC4616A8 + 32);
    v45 = (v64 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v47 = *v44;
      static WFParameter.toolkitTypeIdentifier()(v43);
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v15);
      v51 = *v45;
      (*v45)(v63, v43, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v46 + 16);
        sub_1CA2E4E18();
        v46 = v55;
      }

      v53 = *(v46 + 16);
      v52 = *(v46 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_18(v52);
        sub_1CA2E4E18();
        v46 = v56;
      }

      *(v46 + 16) = v53 + 1;
      v51(v46 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53, v63, v15);
      v43 = v60;
      ++v44;
      --v42;
    }

    while (v42);
  }

  v69 = v68;
  sub_1CA2B7BFC();
  sub_1CA2E2EEC();
}

unint64_t ContentGraphRepresentationContext.debugDescription.getter()
{
  v1 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
  v2 = OUTLINED_FUNCTION_18_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(v0 + 40);
  if (v13)
  {
    v14 = [v13 key];
    sub_1CA94C3A8();
  }

  else
  {
    v15 = type metadata accessor for ContentGraphRepresentationContext(0);
    v16 = OUTLINED_FUNCTION_22_13(*(v15 + 24));
    sub_1CA47154C(v16, v6);
    sub_1CA393EE4(v6, v12, &qword_1EC444D00, &qword_1CA988B80);
    v17 = sub_1CA94B258();
    if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
    {
      sub_1CA27080C(v12, &qword_1EC444D00, &qword_1CA988B80);
    }

    else
    {
      sub_1CA94B228();
      OUTLINED_FUNCTION_39(v17);
      (*(v18 + 8))(v12, v17);
    }
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1CA94D408();

  v21 = 0xD000000000000027;
  v22 = 0x80000001CA9B8A80;
  v19 = OUTLINED_FUNCTION_116();
  MEMORY[0x1CCAA1300](v19);

  MEMORY[0x1CCAA1300](62, 0xE100000000000000);
  return v21;
}

uint64_t sub_1CA46A50C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA31555C;

  return ContentGraphRepresentable.resolve(to:in:)();
}

uint64_t WFContentCollection.resolve(to:in:)()
{
  OUTLINED_FUNCTION_0();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v4 = sub_1CA949F78();
  v1[59] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[60] = v5;
  v7 = *(v6 + 64);
  v1[61] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA46A674()
{
  v50 = v0;
  if (*(v0[57] + 40))
  {
    v1 = [*(v0[57] + 40) allowsMultipleValues];
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 processesIntoContentItems];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v1 = 0;
  }

  v4 = v0[61];
  v5 = v0[58];
  v6 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v7 = v5;
  v8 = sub_1CA949F68();
  v9 = sub_1CA94CC38();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[60];
  v11 = v0[61];
  v13 = v0[59];
  if (v10)
  {
    v48 = v3;
    v14 = v0[58];
    v47 = v0[61];
    v15 = v0[56];
    OUTLINED_FUNCTION_60_5();
    v46 = v13;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = OUTLINED_FUNCTION_254();
    v49 = v45;
    *v16 = 136315394;
    v18 = sub_1CA94DA18();
    v20 = sub_1CA26B54C(v18, v19, &v49);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v14;
    *v17 = v14;
    v21 = v14;
    v3 = v48;
    _os_log_impl(&dword_1CA256000, v8, v9, "Extraction %s from content collection: %@", v16, 0x16u);
    sub_1CA27080C(v17, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_76_4();
    OUTLINED_FUNCTION_54_5();

    (*(v12 + 8))(v47, v46);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[56];
  sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCastMetatype() != 0) | v3 & 1)
  {
    v23 = v0[58];
    swift_unknownObjectRetain();
    v24 = v0[61];

    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_99();

    __asm { BRAA            X2, X16 }
  }

  v0[62] = sub_1CA25B3D0(0, &qword_1EC441928, 0x1E6996E20);
  if (swift_dynamicCastMetatype())
  {
    v27 = v0[58];
    if (v1)
    {
      v28 = v0 + 42;
      v0[18] = v0;
      v0[23] = v0 + 55;
      v0[19] = sub_1CA46AC48;
      v29 = OUTLINED_FUNCTION_213_0();
      v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AE8, &qword_1CA988C58);
      v0[42] = MEMORY[0x1E69E9820];
      v0[43] = 1107296256;
      v0[44] = sub_1CA470D58;
      v0[45] = &block_descriptor_30;
      v0[46] = v29;
      v30 = sel_getFileRepresentations_forType_;
    }

    else
    {
      v28 = v0 + 34;
      v0[10] = v0;
      v0[15] = v0 + 54;
      v0[11] = sub_1CA46ADBC;
      v34 = OUTLINED_FUNCTION_213_0();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AE0, &qword_1CA988C50);
      v0[34] = MEMORY[0x1E69E9820];
      v0[35] = 1107296256;
      v0[36] = sub_1CA3CD588;
      v0[37] = &block_descriptor_27_0;
      v0[38] = v34;
      v30 = sel_getFileRepresentation_forType_;
    }

    [v27 v30];
    goto LABEL_20;
  }

  sub_1CA25B3D0(0, &qword_1EC441940, 0x1E6996F20);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    v31 = *(MEMORY[0x1E6996C50] + 4);
    v32 = swift_task_alloc();
    v0[65] = v32;
    *v32 = v0;
    v33 = sub_1CA46AF14;
  }

  else
  {
    if (v1)
    {
      v37 = v0[58];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v0[2] = v0;
      v0[7] = v0 + 50;
      v0[3] = sub_1CA46B0D8;
      v39 = OUTLINED_FUNCTION_213_0();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD8, &qword_1CA988C48);
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1CA470E00;
      v0[29] = &block_descriptor_23;
      v0[30] = v39;
      [v37 getObjectRepresentations:v0 + 26 forClass:{ObjCClassFromMetadata, v45}];
LABEL_20:
      OUTLINED_FUNCTION_99();

      return MEMORY[0x1EEE6DEC8](v35);
    }

    v40 = *(MEMORY[0x1E6996C50] + 4);
    v32 = swift_task_alloc();
    v0[68] = v32;
    *v32 = v0;
    v33 = sub_1CA46B258;
  }

  v32[1] = v33;
  v41 = v0[58];
  OUTLINED_FUNCTION_73_0(v0[56]);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEDF81A0](v42);
}

uint64_t sub_1CA46AC48()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = *(v3 + 176);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46AD44()
{
  OUTLINED_FUNCTION_0();
  v2 = v1[62];
  v3 = v1[55];
  sub_1CA94C648();
  OUTLINED_FUNCTION_158();

  v4 = v1[61];

  OUTLINED_FUNCTION_2_4();

  return v5(v0);
}

uint64_t sub_1CA46ADBC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 512) = *(v3 + 112);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46AEB8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 432);
  v2 = *(v0 + 488);

  v3 = OUTLINED_FUNCTION_1_3();

  return v4(v3);
}

uint64_t sub_1CA46AF14()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 520);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;

  if (v0)
  {
    v10 = *(v4 + 488);

    v11 = *(v8 + 8);
    OUTLINED_FUNCTION_9_2();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(v4 + 528) = v1;

    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }
}

uint64_t sub_1CA46B054()
{
  OUTLINED_FUNCTION_0();
  v0[53] = v0[66];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AA8, &qword_1CA988C08);
  sub_1CA94D088();
  OUTLINED_FUNCTION_87();
  swift_unknownObjectRelease();
  v1 = v0[61];

  v2 = OUTLINED_FUNCTION_1_3();

  return v3(v2);
}

uint64_t sub_1CA46B0D8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 536) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46B1D4()
{
  OUTLINED_FUNCTION_0();
  v3 = v1[50];
  v2 = v1[51];

  sub_1CA94C648();
  OUTLINED_FUNCTION_158();

  v4 = v1[61];

  OUTLINED_FUNCTION_2_4();

  return v5(v0);
}

uint64_t sub_1CA46B258()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 544);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;

  if (v0)
  {
    v10 = *(v4 + 488);

    v11 = *(v8 + 8);
    OUTLINED_FUNCTION_9_2();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(v4 + 552) = v1;

    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }
}

uint64_t sub_1CA46B398()
{
  OUTLINED_FUNCTION_0();
  v0[52] = v0[69];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AA8, &qword_1CA988C08);
  sub_1CA94D088();
  OUTLINED_FUNCTION_87();
  swift_unknownObjectRelease();
  v1 = v0[61];

  v2 = OUTLINED_FUNCTION_1_3();

  return v3(v2);
}

uint64_t sub_1CA46B41C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 504);
  swift_willThrow();
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA46B488()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 512);
  swift_willThrow();
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA46B4F4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 536);
  swift_willThrow();
  v2 = *(v0 + 536);
  v3 = *(v0 + 488);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t *sub_1CA46B580(uint64_t a1)
{
  v310 = sub_1CA94A9A8();
  v306 = *(v310 - 8);
  v2 = *(v306 + 64);
  v3 = MEMORY[0x1EEE9AC00](v310);
  v295 = &v276 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v289 = &v276 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v288 = &v276 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v303 = &v276 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v302 = &v276 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v286 = &v276 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v285 = &v276 - v15;
  v16 = sub_1CA949F78();
  v17 = *(v16 - 8);
  v307 = v16;
  v308 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v298 = &v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v291 = &v276 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v309 = &v276 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v290 = &v276 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v292 = &v276 - v28;
  v296 = sub_1CA9486C8();
  v293 = *(v296 - 8);
  v29 = *(v293 + 64);
  v30 = MEMORY[0x1EEE9AC00](v296);
  v282 = &v276 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v294 = &v276 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v287 = (&v276 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v305 = (&v276 - v37);
  v38 = sub_1CA94AC18();
  v39 = *(v38 - 8);
  v299 = v38;
  v300 = v39;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v283 = (&v276 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x1EEE9AC00](v41);
  v284 = &v276 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v297 = &v276 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v301 = &v276 - v47;
  v48 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v49 = (v48 - 8);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v276 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CA94ADC8();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v304 = (&v276 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = MEMORY[0x1EEE9AC00](v56);
  v312 = &v276 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v311 = &v276 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = (&v276 - v63);
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v276 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v276 - v68;
  v313 = a1;
  sub_1CA94A8B8();
  v317 = v54;
  (*(v54 + 16))(v67, v69, v53);
  v70 = sub_1CA25B3D0(0, &qword_1EC445B58, 0x1E6996E40);
  *(v52 + 4) = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
  v71 = v49[7];
  v72 = *MEMORY[0x1E69DB488];
  v73 = sub_1CA94B668();
  (*(*(v73 - 8) + 104))(&v52[v71], v72, v73);
  v74 = &v52[v49[8]];
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *&v52[v49[9]] = [objc_opt_self() defaultContext];
  v75 = v314;
  static WFContentItem.toolkitTypeIdentifier(context:)(v52, v64);
  if (v75)
  {
    sub_1CA4715A8(v52, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
    v76 = *(v317 + 8);
    (v76)(v67, v53);
    (v76)(v69, v53);
    return v76;
  }

  v314 = 0;
  v77 = v312;
  v281 = v70;
  sub_1CA4715A8(v52, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
  sub_1CA471BD8();
  v78 = v64;
  v79 = sub_1CA94C358();
  v80 = (v317 + 8);
  v81 = *(v317 + 8);
  v81(v78, v53);
  v81(v67, v53);
  if ((v79 & 1) == 0)
  {
    (*(v317 + 32))(v77, v69, v53);
    v87 = type metadata accessor for WFAskLLMModelParameter();
    v88 = v304;
    v76 = v87;
    v89 = v314;
    static WFParameter.toolkitTypeIdentifier()(v304);
    v90 = v313;
    if (v89)
    {
      v81(v77, v53);
      return v76;
    }

    v114 = sub_1CA94C358();
    v115 = v88;
    v116 = v114;
    v81(v115, v53);
    v317 = v53;
    v81(v77, v53);
    if (v116)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v117 = sub_1CA94A898();
      v316 = MEMORY[0x1E69E6158];
      v315[0] = v117;
      v315[1] = v118;
      v119 = sub_1CA470A0C(v315);
      v120 = v308;
      v121 = v310;
      if (v119)
      {
        v122 = v119;
        sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1CA9813B0;
        *(v123 + 32) = v122;
        return sub_1CA46934C();
      }

      v304 = v81;
      v312 = v80;
      v180 = *MEMORY[0x1E69E10F8];
      v181 = v291;
      sub_1CA949C58();
      v182 = v306;
      v183 = *(v306 + 16);
      v184 = v288;
      v183(v288, v90, v121);
      v185 = v289;
      v183(v289, v90, v121);
      v186 = sub_1CA949F68();
      v76 = sub_1CA94CC18();
      if (os_log_type_enabled(v186, v76))
      {
        v187 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        v315[0] = v314;
        *v187 = 136315394;
        v188 = v311;
        LODWORD(v313) = v76;
        sub_1CA94A8B8();
        v189 = sub_1CA94ADA8();
        v190 = v185;
        v192 = v191;
        v304(v188, v317);
        v193 = *(v182 + 8);
        v194 = v184;
        v195 = v310;
        v193(v194, v310);
        v196 = sub_1CA26B54C(v189, v192, v315);

        *(v187 + 4) = v196;
        *(v187 + 12) = 2080;
        v197 = sub_1CA94A898();
        v199 = v198;
        v193(v190, v195);
        v200 = sub_1CA26B54C(v197, v199, v315);

        *(v187 + 14) = v200;
        _os_log_impl(&dword_1CA256000, v186, v313, "[%s] [AskLLM] Unable to make content item from value identifier: %s", v187, 0x16u);
        v76 = v314;
        swift_arrayDestroy();
        MEMORY[0x1CCAA4BF0](v76, -1, -1);
        MEMORY[0x1CCAA4BF0](v187, -1, -1);

        (*(v120 + 8))(v291, v307);
      }

      else
      {

        v203 = *(v182 + 8);
        v203(v185, v121);
        v203(v184, v121);
        (*(v120 + 8))(v181, v307);
      }

      sub_1CA471600();
      swift_allocError();
      *v176 = 0u;
      *(v176 + 16) = 0u;
      v177 = 5;
LABEL_25:
      *(v176 + 32) = v177;
      swift_willThrow();
      return v76;
    }

    v304 = v81;
    v312 = v80;
    v124 = *MEMORY[0x1E69E10F8];
    v125 = v298;
    sub_1CA949C58();
    v126 = v306;
    v127 = v295;
    v128 = v310;
    (*(v306 + 16))(v295, v90, v310);
    v129 = sub_1CA949F68();
    v130 = sub_1CA94CC18();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v307;
    v133 = v308;
    if (v131)
    {
      v134 = swift_slowAlloc();
      v309 = v134;
      v314 = swift_slowAlloc();
      v315[0] = v314;
      *v134 = 136315138;
      v135 = v311;
      sub_1CA94A8B8();
      v303 = sub_1CA94ADA8();
      v136 = v127;
      v138 = v137;
      LODWORD(v305) = v130;
      v139 = v304;
      v304(v135, v317);
      (*(v126 + 8))(v136, v310);
      v140 = sub_1CA26B54C(v303, v138, v315);

      v141 = v309;
      *(v309 + 4) = v140;
      v142 = v141;
      _os_log_impl(&dword_1CA256000, v129, v305, "[%s] [Default] Unable to make a content collection for an unknown custom entity — we probably shouldn't down this path", v141, 0xCu);
      v143 = v314;
      __swift_destroy_boxed_opaque_existential_0(v314);
      MEMORY[0x1CCAA4BF0](v143, -1, -1);
      v144 = v317;
      MEMORY[0x1CCAA4BF0](v142, -1, -1);

      (*(v133 + 8))(v298, v307);
    }

    else
    {

      (*(v126 + 8))(v127, v128);
      (*(v133 + 8))(v125, v132);
      v144 = v317;
      v135 = v311;
      v139 = v304;
    }

    sub_1CA94A8B8();
    v174 = sub_1CA94ADA8();
    v76 = v179;
    v139(v135, v144);
LABEL_24:
    sub_1CA471600();
    swift_allocError();
    *v176 = v174;
    *(v176 + 8) = v76;
    *(v176 + 16) = 0;
    *(v176 + 24) = 0;
    v177 = 4;
    goto LABEL_25;
  }

  v317 = v53;
  v312 = v80;
  v304 = v81;
  v81(v69, v53);
  v82 = v313;
  v83 = sub_1CA94A968();
  v84 = v305;
  sub_1CA3118CC(v83, v305);

  v85 = sub_1CA94AC88();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v85);
  v298 = v85;
  if (EnumTagSinglePayload == 1)
  {
    sub_1CA27080C(v84, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_20:
    v146 = v311;
    v147 = v306;
    v148 = v309;
    v149 = *MEMORY[0x1E69E10F8];
    sub_1CA949C58();
    v150 = *(v147 + 16);
    v151 = v302;
    v152 = v310;
    v150(v302, v82, v310);
    v153 = v303;
    v150(v303, v82, v152);
    v154 = sub_1CA949F68();
    v155 = sub_1CA94CC18();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v315[0] = v314;
      *v156 = 136315394;
      LODWORD(v306) = v155;
      sub_1CA94A8B8();
      v157 = sub_1CA94ADA8();
      v305 = v154;
      v158 = v151;
      v160 = v159;
      v304(v146, v317);
      v161 = *(v147 + 8);
      v161(v158, v152);
      v162 = sub_1CA26B54C(v157, v160, v315);

      *(v156 + 4) = v162;
      *(v156 + 12) = 2080;
      sub_1CA94A968();
      v163 = sub_1CA94C1D8();
      v165 = v164;

      v166 = v152;
      v167 = v304;
      v161(v153, v166);
      v168 = sub_1CA26B54C(v163, v165, v315);
      v146 = v311;

      *(v156 + 14) = v168;
      v169 = v305;
      _os_log_impl(&dword_1CA256000, v305, v306, "[%s] [AskLLM] Unable to get generative model name from value properties: %s", v156, 0x16u);
      v170 = v314;
      swift_arrayDestroy();
      MEMORY[0x1CCAA4BF0](v170, -1, -1);
      v171 = v156;
      v172 = v317;
      MEMORY[0x1CCAA4BF0](v171, -1, -1);

      (*(v308 + 8))(v309, v307);
    }

    else
    {

      v173 = *(v147 + 8);
      v173(v153, v152);
      v173(v151, v152);
      (*(v308 + 8))(v148, v307);
      v172 = v317;
      v167 = v304;
    }

    sub_1CA94A8B8();
    v174 = sub_1CA94ADA8();
    v76 = v175;
    v167(v146, v172);
    goto LABEL_24;
  }

  v91 = *(v85 - 8);
  v92 = v91;
  v93 = *(v91 + 88);
  v94 = (v91 + 88);
  v95 = v93(v84, v85);
  if (v95 != *MEMORY[0x1E69DAE70])
  {
    (*(v92 + 8))(v84, v85);
    goto LABEL_19;
  }

  v96 = v95;
  v291 = v94;
  v295 = v93;
  v97 = *(v92 + 96);
  v289 = (v92 + 96);
  v288 = v97;
  (v97)(v84, v85);
  isa = v84->isa;
  v99 = swift_projectBox();
  v100 = v300;
  v101 = v301;
  v102 = *(v300 + 16);
  v103 = v299;
  v102(v301, v99, v299);
  v104 = v103;

  v105 = v297;
  v102(v297, v101, v104);
  v106 = v100[11].isa;
  v305 = v100 + 11;
  v280 = v106;
  v107 = v106(v105, v104);
  if (v107 != *MEMORY[0x1E69DADF0])
  {
    v145 = v100[1].isa;
    v145(v101, v104);
    v145(v105, v104);
    goto LABEL_19;
  }

  v279 = v107;
  v108 = v100[12].isa;
  v278 = v100 + 12;
  v277 = v108;
  v108(v105, v104);
  v109 = *v105;
  v110 = v105[1];
  v111 = v292;
  sub_1CA9486A8();
  v112 = v104;
  v113 = v296;
  if (__swift_getEnumTagSinglePayload(v111, 1, v296) == 1)
  {
    (v100[1].isa)(v301, v112);
    sub_1CA27080C(v111, &qword_1EC445BF0, &unk_1CA989120);
LABEL_19:
    v82 = v313;
    goto LABEL_20;
  }

  (*(v293 + 32))(v294, v111, v113);
  v201 = sub_1CA94A968();
  v202 = v287;
  sub_1CA3118CC(v201, v287);

  if (__swift_getEnumTagSinglePayload(v202, 1, v85) == 1)
  {
    sub_1CA27080C(v202, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_40:
    v210 = v313;
    v230 = v300;
    goto LABEL_41;
  }

  if ((v295)(v202, v85) != v96)
  {
    (*(v92 + 8))(v202, v85);
    goto LABEL_40;
  }

  (v288)(v202, v85);
  v204 = *v202;
  v205 = swift_projectBox();
  v206 = v284;
  v207 = v299;
  v102(v284, v205, v299);

  v208 = v283;
  v102(v283, v206, v207);
  v209 = v280(v208, v207);
  v210 = v313;
  if (v209 == v279)
  {
    v277(v208, v207);
    v211 = *v208;
    v212 = v208[1];
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
    v214 = (*(*(v213 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v213 - 8);
    v216 = &v276 - v215;
    v217 = sub_1CA948CB8();
    __swift_storeEnumTagSinglePayload(v216, 1, 1, v217);
    v218 = v293;
    v219 = v296;
    (*(v293 + 16))(v282, v294, v296);
    [objc_allocWithZone(sub_1CA948648()) init];
    v220 = objc_allocWithZone(sub_1CA948738());
    v221 = sub_1CA948718();
    v222 = objc_allocWithZone(MEMORY[0x1E6996E48]);
    v223 = sub_1CA4713A4(v211, v212, 0, 0, 0, 0, v216, v221);
    v316 = sub_1CA25B3D0(0, &unk_1EC445B60, 0x1E6996E48);
    v315[0] = v223;
    v224 = v223;
    v225 = sub_1CA470A0C(v315);
    if (v225)
    {
      v226 = v225;
      sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v227 = swift_allocObject();
      *(v227 + 16) = xmmword_1CA9813B0;
      *(v227 + 32) = v226;
      v76 = sub_1CA46934C();

      v228 = v299;
      v229 = *(v300 + 8);
      v229(v206, v299);
      (*(v218 + 8))(v294, v219);
      v229(v301, v228);
    }

    else
    {
      v268 = v219;
      v269 = v311;
      sub_1CA94A8B8();
      v270 = sub_1CA94ADA8();
      v272 = v271;
      v304(v269, v317);
      sub_1CA471600();
      swift_allocError();
      *v273 = v270;
      *(v273 + 8) = v272;
      *(v273 + 16) = 0;
      *(v273 + 24) = 0;
      *(v273 + 32) = 4;
      swift_willThrow();

      v274 = v299;
      v76 = (v300 + 8);
      v275 = *(v300 + 8);
      v275(v206, v299);
      (*(v218 + 8))(v294, v268);
      v275(v301, v274);
    }

    return v76;
  }

  v230 = v300;
  v266 = v207;
  v267 = *(v300 + 8);
  v267(v206, v266);
  v267(v208, v266);
LABEL_41:
  v231 = *MEMORY[0x1E69E10F8];
  v232 = v290;
  sub_1CA949C58();
  v233 = v306;
  v234 = *(v306 + 16);
  v235 = v285;
  v236 = v310;
  v234(v285, v210, v310);
  v237 = v286;
  v234(v286, v210, v236);
  v238 = sub_1CA949F68();
  v239 = sub_1CA94CC18();
  v240 = os_log_type_enabled(v238, v239);
  v241 = v311;
  if (v240)
  {
    v242 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    v315[0] = v314;
    *v242 = 136315394;
    LODWORD(v309) = v239;
    sub_1CA94A8B8();
    v243 = sub_1CA94ADA8();
    v245 = v244;
    v246 = v241;
    v247 = v304;
    v304(v246, v317);
    v305 = v238;
    v248 = *(v233 + 8);
    v249 = v235;
    v250 = v247;
    v248(v249, v236);
    v251 = sub_1CA26B54C(v243, v245, v315);

    *(v242 + 4) = v251;
    *(v242 + 12) = 2080;
    sub_1CA94A968();
    v252 = sub_1CA94C1D8();
    v254 = v253;

    v248(v237, v236);
    v255 = v317;
    v256 = v252;
    v230 = v300;
    v257 = sub_1CA26B54C(v256, v254, v315);
    v241 = v311;

    *(v242 + 14) = v257;
    v258 = v305;
    _os_log_impl(&dword_1CA256000, v305, v309, "[%s] [AskLLM] Unable to get text from value properties: %s", v242, 0x16u);
    v259 = v314;
    swift_arrayDestroy();
    MEMORY[0x1CCAA4BF0](v259, -1, -1);
    MEMORY[0x1CCAA4BF0](v242, -1, -1);

    (*(v308 + 8))(v290, v307);
  }

  else
  {

    v262 = *(v233 + 8);
    v262(v237, v236);
    v262(v235, v236);
    (*(v308 + 8))(v232, v307);
    v255 = v317;
    v250 = v304;
  }

  v260 = v296;
  v261 = v294;
  sub_1CA94A8B8();
  v263 = sub_1CA94ADA8();
  v76 = v264;
  v250(v241, v255);
  sub_1CA471600();
  swift_allocError();
  *v265 = v263;
  *(v265 + 8) = v76;
  *(v265 + 16) = 0;
  *(v265 + 24) = 0;
  *(v265 + 32) = 4;
  swift_willThrow();
  (*(v293 + 8))(v261, v260);
  (*(v230 + 8))(v301, v299);
  return v76;
}

uint64_t sub_1CA46D1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a2;
  v5 = sub_1CA94B1C8();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for TypedValueConversionContext(0);
  v4[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA46D2B8, 0, 0);
}

uint64_t sub_1CA46D2B8()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  v6 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v6);
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_69_0();
  v9(v8);
  if (qword_1EC4420F0 != -1)
  {
    OUTLINED_FUNCTION_97_1();
  }

  v10 = qword_1EC4420F8;
  v11 = (v0[14] + *(v0[13] + 20));
  v11[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v11[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v11 = v10;
  objc_opt_self();
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_160_2([v11 defaultContext]);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1CA46D404;
  v13 = v0[14];
  OUTLINED_FUNCTION_73_0(v0[7]);
  OUTLINED_FUNCTION_9_2();

  return sub_1CA514FA4();
}

uint64_t sub_1CA46D404()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA46D504()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 128);
  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  v2 = [v1 valueType];
  v3 = [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
  OUTLINED_FUNCTION_69_0();
  LOBYTE(v1) = sub_1CA94CFD8();

  if (v1 & 1) != 0 && (v4 = [*(v0 + 128) value], sub_1CA94D258(), swift_unknownObjectRelease(), sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8), (swift_dynamicCast()))
  {
    *(v0 + 144) = *(v0 + 48);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_1CA46D750;
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = OUTLINED_FUNCTION_151();

    return sub_1CA46E134(v8, v9);
  }

  else
  {
    v11 = *(v0 + 112);
    OUTLINED_FUNCTION_9_22();
    sub_1CA4715A8(v12, v13);
    v14 = *(v0 + 128);
    v15 = *(v0 + 112);
    v16 = *(v0 + 96);

    v17 = OUTLINED_FUNCTION_1_3();

    return v18(v17);
  }
}

uint64_t sub_1CA46D6D0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  OUTLINED_FUNCTION_9_22();
  sub_1CA4715A8(v2, v4);

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA46D750()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 152);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v4 + 160) = v0;

  if (!v0)
  {
    *(v4 + 168) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA46D854()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_9_22();
  sub_1CA4715A8(v2, v3);
  v4 = *(v0 + 168);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);

  v7 = OUTLINED_FUNCTION_1_3();

  return v8(v7);
}

uint64_t sub_1CA46D8DC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 128);

  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  OUTLINED_FUNCTION_9_22();
  sub_1CA4715A8(v3, v5);

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA46D96C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1CA94ADC8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1CA94AC88();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1CA949F78();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_1CA94B168();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1CA94B1C8();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA46DBAC, 0, 0);
}

uint64_t sub_1CA46DBAC()
{
  v87 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[3];
  v8 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v8);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_20_0();
  v9(v10);
  v11 = *(v5 + 88);
  v12 = OUTLINED_FUNCTION_70();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x1E69DB2E8])
  {
    v15 = v0[19];
    v17 = v0[2];
    v16 = v0[3];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_1CA94AD68();
    v18 = type metadata accessor for WFRemoteAppValue();
    v19 = objc_allocWithZone(v18);
    sub_1CA560484(v17, v15);
    OUTLINED_FUNCTION_40();
    type metadata accessor for WFRemoteAppEntityContentItem();
    v86[3] = v18;
    v86[0] = v19;
    v20 = v19;
    if (!sub_1CA470A0C(v86))
    {
      v39 = v0[13];
      v41 = v0[9];
      v40 = v0[10];
      v42 = v0[8];
      v43 = v0[4];
      v44 = *MEMORY[0x1E69E10F8];
      sub_1CA949C58();
      v45 = *(v41 + 16);
      v46 = OUTLINED_FUNCTION_56_5();
      v47(v46);
      v48 = v20;
      v49 = sub_1CA949F68();
      v50 = sub_1CA94CC18();

      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[12];
      v52 = v0[13];
      v54 = v0[10];
      v55 = v0[11];
      v56 = v0[8];
      v57 = v0[9];
      if (v51)
      {
        v83 = v48;
        v85 = v0[13];
        v59 = v0[6];
        v58 = v0[7];
        v81 = v0[5];
        OUTLINED_FUNCTION_60_5();
        swift_slowAlloc();
        v82 = OUTLINED_FUNCTION_141_3();
        v84 = OUTLINED_FUNCTION_254();
        v86[0] = v84;
        OUTLINED_FUNCTION_134_3(4.8151e-34);
        sub_1CA94AC28();
        sub_1CA94ADA8();
        (*(v59 + 8))(v58, v81);
        v60 = *(v57 + 8);
        v61 = OUTLINED_FUNCTION_70();
        v62(v61);
        v63 = OUTLINED_FUNCTION_135_2();
        sub_1CA26B54C(v63, v64, v65);

        OUTLINED_FUNCTION_115_3();
        v66 = v83;
        *(v55 + 14) = v83;
        *v82 = v83;
        v67 = v83;
        OUTLINED_FUNCTION_140_3(&dword_1CA256000, v49, v50, "[%s] Unable to make a remote app entity content item from value: %@");
        sub_1CA27080C(v82, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_76_4();
        __swift_destroy_boxed_opaque_existential_0(v84);
        OUTLINED_FUNCTION_76_4();
        OUTLINED_FUNCTION_51();

        (*(v53 + 8))(v85, v55);
      }

      else
      {

        v68 = *(v57 + 8);
        v69 = OUTLINED_FUNCTION_70();
        v70(v69);
        (*(v53 + 8))(v52, v55);
        v66 = v48;
      }

      v71 = v0[19];
      v72 = v0[20];
      v73 = v0[16];
      v74 = v0[13];
      v75 = v0[10];
      v76 = v0[7];
      sub_1CA471600();
      v77 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_9(v77, v78);
      swift_willThrow();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_90_0();

      __asm { BRAA            X1, X16 }
    }

    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v21 = OUTLINED_FUNCTION_137_3();
    OUTLINED_FUNCTION_130_2(v21, xmmword_1CA9813B0);
    sub_1CA46934C();
LABEL_6:
    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[16];
    v31 = v0[13];
    v32 = v0[10];
    v33 = v0[7];

    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_90_0();

    __asm { BRAA            X2, X16 }
  }

  if (v14 == *MEMORY[0x1E69DB2E0])
  {
    v22 = v0[19];
    v23 = v0[17];
    v24 = v0[2];
    v25 = [v24 valueType];
    sub_1CA94AD68();
    sub_1CA94B0F8();
    v26 = OUTLINED_FUNCTION_20_0();
    v9(v26);
    OUTLINED_FUNCTION_119();
    v20 = sub_1CA94C368();

    v27 = [v25 wf:v24 contentCollectionFromLinkValue:v20 appBundleIdentifier:0 displayedBundleIdentifier:1 disclosureLevel:?];

    goto LABEL_6;
  }

  v36 = v0[14];
  OUTLINED_FUNCTION_90_0();

  return sub_1CA94D7E8();
}

id sub_1CA46E0C8()
{
  OUTLINED_FUNCTION_11();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_171();
  v2 = sub_1CA948BF8();
  v3 = [v0 initWithData_];

  v4 = OUTLINED_FUNCTION_116();
  sub_1CA266F2C(v4, v5);
  return v3;
}

uint64_t sub_1CA46E134(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = sub_1CA9499E8();
  v3[39] = v4;
  v5 = *(v4 - 8);
  v3[40] = v5;
  v6 = *(v5 + 64) + 15;
  v3[41] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D08, &qword_1CA985B60) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v8 = sub_1CA949768();
  v3[43] = v8;
  v9 = *(v8 - 8);
  v3[44] = v9;
  v10 = *(v9 + 64) + 15;
  v3[45] = swift_task_alloc();
  v11 = sub_1CA949838();
  v3[46] = v11;
  v12 = *(v11 - 8);
  v3[47] = v12;
  v13 = *(v12 + 64) + 15;
  v3[48] = swift_task_alloc();
  v14 = sub_1CA949868();
  v3[49] = v14;
  v15 = *(v14 - 8);
  v3[50] = v15;
  v16 = *(v15 + 64) + 15;
  v3[51] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445B80, &unk_1CA985B50) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v18 = sub_1CA9498A8();
  v3[53] = v18;
  v19 = *(v18 - 8);
  v3[54] = v19;
  v20 = *(v19 + 64) + 15;
  v3[55] = swift_task_alloc();
  v21 = sub_1CA9498C8();
  v3[56] = v21;
  v22 = *(v21 - 8);
  v3[57] = v22;
  v23 = *(v22 + 64) + 15;
  v3[58] = swift_task_alloc();
  v24 = sub_1CA949878();
  v3[59] = v24;
  v25 = *(v24 - 8);
  v3[60] = v25;
  v26 = *(v25 + 64) + 15;
  v3[61] = swift_task_alloc();
  v27 = sub_1CA94ADC8();
  v3[62] = v27;
  v28 = *(v27 - 8);
  v3[63] = v28;
  v29 = *(v28 + 64) + 15;
  v3[64] = swift_task_alloc();
  v30 = sub_1CA94AD88();
  v3[65] = v30;
  v31 = *(v30 - 8);
  v3[66] = v31;
  v32 = *(v31 + 64) + 15;
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v33 = sub_1CA94AC88();
  v3[69] = v33;
  v34 = *(v33 - 8);
  v3[70] = v34;
  v35 = *(v34 + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v36 = sub_1CA949F78();
  v3[73] = v36;
  v37 = *(v36 - 8);
  v3[74] = v37;
  v38 = *(v37 + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v39 = sub_1CA94CEF8();
  v3[78] = v39;
  v40 = *(v39 - 8);
  v3[79] = v40;
  v41 = *(v40 + 64) + 15;
  v3[80] = swift_task_alloc();
  v42 = sub_1CA94CF08();
  v3[81] = v42;
  v43 = *(v42 - 8);
  v3[82] = v43;
  v44 = *(v43 + 64) + 15;
  v3[83] = swift_task_alloc();
  v45 = sub_1CA94B168();
  v3[84] = v45;
  v46 = *(v45 - 8);
  v3[85] = v46;
  v47 = *(v46 + 64) + 15;
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v48 = sub_1CA94B1C8();
  v3[88] = v48;
  v49 = *(v48 - 8);
  v3[89] = v49;
  v50 = *(v49 + 64) + 15;
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v51 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA46E7F0, 0, 0);
}

uint64_t sub_1CA46E7F0()
{
  v151 = *MEMORY[0x1E69E9840];
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[37];
  v8 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v8);
  v9 = *(v2 + 8);
  v0[93] = v9;
  v0[94] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_20_0();
  v9(v10);
  v11 = *(v5 + 88);
  v12 = OUTLINED_FUNCTION_70();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x1E69DB2E8])
  {
    v15 = v0[90];
    v16 = v0[88];
    v17 = v0[86];
    v18 = v0[37];
    v19 = *(v0[85] + 8);
    v19(v0[87], v0[84]);
    v20 = sub_1CA94AD68();
    MEMORY[0x1CCA9FFE0](v20);
    v21 = OUTLINED_FUNCTION_20_0();
    v9(v21);
    v63 = sub_1CA94B148();
    v65 = v64;
    v66 = v0[60];
    v67 = v0[61];
    v68 = v0[58];
    v69 = v0[59];
    v147 = v0[55];
    v137 = v0[52];
    v139 = v0[51];
    v70 = v0[50];
    v143 = v0[49];
    v19(v0[86], v0[84]);
    *v67 = v63;
    v67[1] = v65;
    (*(v66 + 104))(v67, *MEMORY[0x1E698AE18], v69);
    sub_1CA9498B8();
    v71 = [objc_opt_self() defaultEnvironment];
    v72 = sub_1CA25B3D0(0, &qword_1EC444D28, 0x1E69ACF10);
    v73 = MEMORY[0x1E698AE78];
    v0[21] = v72;
    v0[22] = v73;
    v0[18] = v71;
    sub_1CA949858();
    (*(v70 + 104))(v139, *MEMORY[0x1E698AE10], v143);
    OUTLINED_FUNCTION_20_0();
    sub_1CA949898();
    v74 = *(MEMORY[0x1E698AE20] + 4);
    v75 = swift_task_alloc();
    v0[99] = v75;
    *v75 = v0;
    v75[1] = sub_1CA46F7A4;
    v76 = v0[61];
    v77 = v0[55];
    v78 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_73_0(v0[58]);
    OUTLINED_FUNCTION_51_0();

    return MEMORY[0x1EEDEBED0]();
  }

  if (v14 == *MEMORY[0x1E69DB2E0])
  {
    v22 = v0[91];
    v23 = v0[88];
    v24 = v0[37];
    v25 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) init];
    sub_1CA94AD68();
    sub_1CA94B0F8();
    v26 = OUTLINED_FUNCTION_69_0();
    v9(v26);
    OUTLINED_FUNCTION_41_0();
    v27 = sub_1CA94C368();

    v0[33] = 0;
    v28 = OUTLINED_FUNCTION_86_2();
    v30 = [v28 v29];

    v31 = v0[33];
    if (v30)
    {
      v32 = v0[37];
      sub_1CA25B3D0(0, &unk_1EC441A38, 0x1E69AC800);
      OUTLINED_FUNCTION_5_3();
      v33 = sub_1CA94C658();
      v34 = v31;

      v35 = swift_task_alloc();
      *(v35 + 16) = v32;
      sub_1CA3E4C5C(sub_1CA471CF8, v35, v33);
      v37 = v36;
      v0[95] = v36;

      if (v37)
      {
        v38 = v0[83];
        v39 = v0[82];
        v40 = v0[81];
        v41 = v0[80];
        v42 = v0[79];
        v43 = v0[78];
        v44 = v0[36];
        sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v45 = OUTLINED_FUNCTION_137_3();
        *(v45 + 16) = xmmword_1CA9813B0;
        *(v45 + 32) = v44;
        *v38 = v45;
        (*(v39 + 104))(v38, *MEMORY[0x1E69ACAC8], v40);
        *v41 = v37;
        (*(v42 + 104))(v41, *MEMORY[0x1E69ACB00], v43);
        v46 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
        v47 = v44;
        v48 = v37;
        [v46 init];
        OUTLINED_FUNCTION_20_0();
        v49 = sub_1CA94CF18();
        v0[96] = v49;
        v50 = [objc_opt_self() policyWithEntityMetadata_];
        v0[34] = 0;
        v51 = [v50 connectionWithError_];
        v0[97] = v51;

        v52 = v0[34];
        if (v51)
        {
          v0[2] = v0;
          v0[7] = v0 + 35;
          v0[3] = sub_1CA46F3B8;
          v53 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
          v0[10] = MEMORY[0x1E69E9820];
          v0[11] = 1107296256;
          v0[12] = sub_1CA4F4758;
          v0[13] = &block_descriptor_74;
          v0[14] = v53;
          v54 = v52;
          v55 = OUTLINED_FUNCTION_136();
          [v55 v56];
          v57 = *MEMORY[0x1E69E9840];
          OUTLINED_FUNCTION_51_0();

          return MEMORY[0x1EEE6DEC8](v58);
        }

        v107 = v52;
        OUTLINED_FUNCTION_108_3();
        sub_1CA948AD8();

        swift_willThrow();
LABEL_23:
        OUTLINED_FUNCTION_5_26();
        OUTLINED_FUNCTION_7_22();

        OUTLINED_FUNCTION_5();
        v123 = *MEMORY[0x1E69E9840];
        OUTLINED_FUNCTION_51_0();

        __asm { BRAA            X1, X16 }
      }

      v81 = v0[76];
      v82 = v0[70];
      v83 = v0[69];
      v140 = v0[72];
      v144 = v0[68];
      v148 = v0[67];
      v84 = v0[66];
      v85 = v0[65];
      v87 = v0[37];
      v86 = v0[38];
      v88 = *MEMORY[0x1E69E10F8];
      sub_1CA949C58();
      (*(v82 + 16))(v140, v86, v83);
      v89 = *(v84 + 16);
      v89(v144, v87, v85);
      v89(v148, v87, v85);
      v90 = sub_1CA949F68();
      sub_1CA94CC18();
      OUTLINED_FUNCTION_124_4();
      if (os_log_type_enabled(v90, v91))
      {
        v134 = v0[91];
        v136 = v0[88];
        v149 = v0[76];
        v141 = v0[74];
        v145 = v0[73];
        v92 = v0[72];
        v93 = v0[70];
        v128 = v0[69];
        v129 = v0[68];
        v130 = v0[66];
        v132 = v0[65];
        v133 = v0[67];
        v94 = v0[63];
        v95 = v0[64];
        v127 = v0[62];
        v96 = OUTLINED_FUNCTION_254();
        swift_slowAlloc();
        *v96 = 136315650;
        v135 = v81;
        sub_1CA94AC28();
        v97 = sub_1CA94ADA8();
        (*(v94 + 8))(v95, v127);
        (*(v93 + 8))(v92, v128);
        v98 = OUTLINED_FUNCTION_41_0();
        sub_1CA26B54C(v98, v99, v100);
        OUTLINED_FUNCTION_108_3();

        *(v96 + 4) = v97;
        *(v96 + 12) = 2080;
        sub_1CA94AD78();
        OUTLINED_FUNCTION_1_2();
        v131 = *(v130 + 8);
        v131(v129, v132);
        v101 = OUTLINED_FUNCTION_52_0();
        sub_1CA26B54C(v101, v102, v103);
        OUTLINED_FUNCTION_171();

        *(v96 + 14) = v129;
        *(v96 + 22) = 2080;
        sub_1CA94AD68();
        sub_1CA94B0F8();
        OUTLINED_FUNCTION_1_2();
        (v9)(v134, v136);
        v131(v133, v132);
        v104 = OUTLINED_FUNCTION_52_0();
        sub_1CA26B54C(v104, v105, v106);
        OUTLINED_FUNCTION_171();

        *(v96 + 24) = v134;
        _os_log_impl(&dword_1CA256000, v90, v135, "[%s] Unable to find %s in %s — does this type exist?", v96, 0x20u);
        OUTLINED_FUNCTION_144_2();
        OUTLINED_FUNCTION_138();
        OUTLINED_FUNCTION_26();

        (*(v141 + 8))(v149, v145);
      }

      else
      {
        v150 = v0[76];
        v108 = v0[74];
        v142 = v0[72];
        v146 = v0[73];
        v109 = v0[70];
        v138 = v0[69];
        v110 = v0[68];
        v111 = v0[67];
        v112 = v0[66];
        v113 = v0[65];

        v114 = *(v112 + 8);
        v114(v111, v113);
        v114(v110, v113);
        (*(v109 + 8))(v142, v138);
        (*(v108 + 8))(v150, v146);
      }

      v115 = v0[91];
      v116 = v0[88];
      v117 = v0[37];
      sub_1CA94AD68();
      v118 = sub_1CA94B0F8();
      v120 = v119;
      v121 = OUTLINED_FUNCTION_20_0();
      v9(v121);
      sub_1CA94AD78();
      OUTLINED_FUNCTION_5_0();
      sub_1CA471600();
      OUTLINED_FUNCTION_127();
      *v122 = v118;
      *(v122 + 8) = v120;
      *(v122 + 16) = v117;
      *(v122 + 24) = v115;
      *(v122 + 32) = 2;
    }

    else
    {
      v80 = v31;
      OUTLINED_FUNCTION_87();
      sub_1CA948AD8();
    }

    swift_willThrow();
    goto LABEL_23;
  }

  v60 = v0[84];
  v61 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_51_0();

  return sub_1CA94D7E8();
}

uint64_t sub_1CA46F3B8()
{
  OUTLINED_FUNCTION_0();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 784) = *(v4 + 48);
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA46F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v67 = *MEMORY[0x1E69E9840];
  v29 = *(v28 + 616);
  v30 = *(v28 + 280);
  v31 = *(v28 + 288);
  v32 = [v30 value];

  v33 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v34 = v31;
  v35 = v32;
  v36 = sub_1CA949F68();
  v37 = sub_1CA94CC38();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v28 + 768);
    v39 = *(v28 + 760);
    v40 = *(v28 + 288);
    OUTLINED_FUNCTION_60_5();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412546;
    *(v41 + 4) = v35;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v40;
    *v42 = v35;
    v42[1] = v40;
    v43 = v40;
    v44 = v35;
    _os_log_impl(&dword_1CA256000, v36, v37, "Received %@ for entity id lookup: %@", v41, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AE0, &qword_1CA985B70);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_76_4();

    v45 = *(v28 + 776);
  }

  else
  {
    v46 = *(v28 + 768);

    v45 = *(v28 + 760);
  }

  v47 = *(v28 + 616);
  v48 = *(v28 + 592);
  v49 = *(v28 + 584);

  v50 = *(v48 + 8);
  v51 = OUTLINED_FUNCTION_3_3();
  v52(v51);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_7_22();
  v65 = v54;
  v66 = v53;

  OUTLINED_FUNCTION_2_4();
  v55 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_251();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, v35, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v65, v66, v67, a26, a27, a28);
}

uint64_t sub_1CA46F7A4(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v5 = *v3;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v7 = v4[99];
  v8 = v4[60];
  v9 = v4[57];
  v10 = v4[54];
  v34 = *v3;
  v5[100] = v11;
  v5[101] = v2;

  v12 = (v10 + 8);
  v13 = (v9 + 8);
  v14 = (v8 + 8);
  v15 = v4[61];
  v16 = v4[59];
  v17 = v4[58];
  v18 = v4[56];
  v19 = v4[55];
  v20 = v4[53];
  if (!v2)
  {
    v5[102] = a2;
  }

  (*v12)(v19, v20);
  v21 = *v13;
  v22 = OUTLINED_FUNCTION_177();
  v23(v22);
  v24 = *v14;
  v25 = OUTLINED_FUNCTION_162();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_0(v5 + 18);
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_1CA46FA44()
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = v0[100];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[91];
  v5 = v0[88];
  v6 = v0[45];
  v25 = v0[48];
  v26 = v0[44];
  v7 = v0[42];
  v27 = v0[43];
  v28 = v0[41];
  v29 = v0[102];
  v8 = v0[37];
  v24 = v0[36];
  ObjectType = swift_getObjectType();
  sub_1CA94AD68();
  sub_1CA94B0F8();
  OUTLINED_FUNCTION_1_2();
  v3(v4, v5);
  sub_1CA949778();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_52_0();
  sub_1CA949758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445B90, &qword_1CA988F10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CA981310;
  *(v14 + 56) = sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
  *(v14 + 64) = sub_1CA471C30();
  *(v14 + 32) = v24;
  v15 = v24;
  OUTLINED_FUNCTION_129();
  sub_1CA949828();

  (*(v26 + 8))(v6, v27);
  v16 = *(v29 + 8);
  OUTLINED_FUNCTION_107_0();
  sub_1CA470974();
  v17 = *(MEMORY[0x1E698ADF0] + 4);
  v18 = swift_task_alloc();
  v0[103] = v18;
  *v18 = v0;
  v18[1] = sub_1CA46FC64;
  v19 = v0[100];
  v20 = v0[48];
  v21 = v0[41];
  v22 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDEBDD0](v0 + 23, v20, v21, ObjectType, v16);
}

uint64_t sub_1CA46FC64()
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = v2[103];
  *v4 = *v1;
  *(v3 + 832) = v0;

  v6 = v2[48];
  v7 = v2[47];
  v8 = v2[46];
  (*(v2[40] + 8))(v2[41], v2[39]);
  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_70();
  v11(v10);
  v12 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1CA46FE4C()
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  OUTLINED_FUNCTION_20_0();
  sub_1CA949848();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445BA0, &qword_1CA988F18);
  OUTLINED_FUNCTION_3_3();
  sub_1CA94D568();
  OUTLINED_FUNCTION_11();

  v67 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1CA471C98(v3, (v0 + 28));
      v5 = v0[32];
      __swift_project_boxed_opaque_existential_1(v0 + 28, v0[31]);
      v6 = *(v5 + 8);
      OUTLINED_FUNCTION_108_3();
      v7 = sub_1CA9498D8();
      v8 = __swift_destroy_boxed_opaque_existential_0(v0 + 28);
      if (v7)
      {
        MEMORY[0x1CCAA1490](v8);
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        v4 = v67;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1CA25B410(v4))
  {
    sub_1CA275D70(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](0, v4);
    }

    else
    {
      v9 = *(v4 + 32);
    }

    v10 = v0[100];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v0 + 23);
    v11 = v0[92];
    v12 = v0[91];
    v13 = v0[90];
    v14 = v0[87];
    v15 = v0[86];
    v16 = v0[83];
    v17 = v0[80];
    v18 = v0[77];
    v19 = v0[76];
    v20 = v0[75];
    OUTLINED_FUNCTION_7_22();

    OUTLINED_FUNCTION_2_4();
    v21 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_51_0();

    __asm { BRAA            X2, X16 }
  }

  v24 = v0[75];
  v25 = v0[71];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[38];

  v29 = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v30 = *(v26 + 16);
  v31 = OUTLINED_FUNCTION_56_5();
  v32(v31);
  v33 = sub_1CA949F68();
  v34 = sub_1CA94CC18();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[75];
  v37 = v0[74];
  v38 = v0[71];
  v39 = v0[70];
  v40 = v0[69];
  if (v35)
  {
    v66 = v0[73];
    v64 = v34;
    v42 = v0[63];
    v41 = v0[64];
    v63 = v0[62];
    v43 = swift_slowAlloc();
    v68 = OUTLINED_FUNCTION_254();
    *v43 = 136315138;
    v65 = v36;
    sub_1CA94AC28();
    v44 = sub_1CA94ADA8();
    (*(v42 + 8))(v41, v63);
    v45 = *(v39 + 8);
    v46 = OUTLINED_FUNCTION_177();
    v47(v46);
    v48 = OUTLINED_FUNCTION_52_0();
    sub_1CA26B54C(v48, v49, v50);
    OUTLINED_FUNCTION_171();

    *(v43 + 4) = v44;
    _os_log_impl(&dword_1CA256000, v33, v64, "[%s] Unable to get LNValues from remote query", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_54_5();

    (*(v37 + 8))(v65, v66);
  }

  else
  {

    v51 = *(v39 + 8);
    v52 = OUTLINED_FUNCTION_177();
    v53(v52);
    v54 = *(v37 + 8);
    v55 = OUTLINED_FUNCTION_3_3();
    v57(v55, v56);
  }

  v58 = v0[100];
  sub_1CA471600();
  OUTLINED_FUNCTION_127();
  *v59 = 1;
  *(v59 + 8) = 0;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = 5;
  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_5();
  v60 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_51_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1CA470468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v60 = *MEMORY[0x1E69E9840];
  v29 = v28[98];
  v30 = v28[97];
  v31 = v28[96];
  v32 = v28[95];
  swift_willThrow();

  v33 = v28[98];
  OUTLINED_FUNCTION_5_26();
  v45 = v34;
  v46 = v28[72];
  v47 = v28[71];
  v48 = v28[68];
  v49 = v28[67];
  v50 = v28[64];
  v51 = v28[61];
  v52 = v28[58];
  v53 = v28[55];
  v54 = v28[52];
  v55 = v28[51];
  v56 = v28[48];
  v57 = v28[45];
  v58 = v28[42];
  v59 = v28[41];

  OUTLINED_FUNCTION_5();
  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_251();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, a24, v60, a26, a27, a28);
}

uint64_t sub_1CA470624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v40 = *MEMORY[0x1E69E9840];
  v29 = *(v28 + 808);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_50_4();

  OUTLINED_FUNCTION_5();
  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_251();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v40, a26, a27, a28);
}

uint64_t sub_1CA470770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v41 = *MEMORY[0x1E69E9840];
  v29 = *(v28 + 800);
  swift_unknownObjectRelease();
  v30 = *(v28 + 832);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_50_4();

  OUTLINED_FUNCTION_5();
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_251();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v41, a26, a27, a28);
}

uint64_t sub_1CA4708C4(id *a1)
{
  v1 = [*a1 identifier];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  if (v2 == sub_1CA94AD78() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();
  }

  return v7 & 1;
}

uint64_t sub_1CA470974()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BC0, &qword_1CA985B40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_1CA949D18();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_1CA9499D8();
}

uint64_t sub_1CA470A0C(uint64_t *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1CA94D7D8();
  OUTLINED_FUNCTION_11();
  v4 = [swift_getObjCClassFromMetadata() itemWithObject_];
  OUTLINED_FUNCTION_171();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_1CA470A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return TypedValue.resolve(in:)();
}

uint64_t sub_1CA470B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return TypedValue.resolve(to:in:)();
}

uint64_t sub_1CA470BB4()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;
  v2 = OUTLINED_FUNCTION_151();

  return TypedValue.ID.resolve(in:)(v2);
}

uint64_t sub_1CA470C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return sub_1CA31D7BC();
}

uint64_t WFContentCollection.resolve(in:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  v4 = v1;
  v2 = v0;

  return v4(v2);
}

uint64_t sub_1CA470D58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80(v4, v5);
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441928, 0x1E6996E20);
    v7 = sub_1CA94C658();

    return sub_1CA35FF84(v4, v7);
  }
}

uint64_t sub_1CA470E00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;

    return sub_1CA35FF80(v5, v6);
  }

  else
  {
    sub_1CA94C658();
    sub_1CA94C658();
    v8 = OUTLINED_FUNCTION_20_0();

    return sub_1CA35E734(v8);
  }
}

uint64_t sub_1CA470EAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA3D3888;

  return WFContentCollection.resolve(in:)();
}

uint64_t sub_1CA470F3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA3D3888;

  return WFContentCollection.resolve(to:in:)();
}

id sub_1CA470FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1CA94C368();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1CA94C368();

LABEL_6:
  v12 = [v6 initWithType:a1 name:v10 identificationHint:v11 icon:a6];

  return v12;
}

void *sub_1CA4710A8(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void *a6)
{
  [v6 initWithVariableSource:a1 parameter:a2 isInputParameter:a3 & 1 environment:a4 contentAttributionTracker:a5 widgetSizeClass:a6];
  OUTLINED_FUNCTION_139();
  swift_unknownObjectRelease();

  return v6;
}

id sub_1CA471124(void *a1)
{
  sub_1CA94C368();
  OUTLINED_FUNCTION_151();

  v4 = [v1 initWithAmount:a1 currencyCode:v2];

  return v4;
}

id sub_1CA47118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = sub_1CA94C368();

  if (a4)
  {
    v18 = sub_1CA94C368();

    if (a6)
    {
LABEL_3:
      v19 = sub_1CA94C368();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  if (a8 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1CA948BF8();
    sub_1CA39F318(a7, a8);
  }

  if (a10 >> 60 != 15)
  {
    v21 = sub_1CA948BF8();
    sub_1CA39F318(a9, a10);
    if (a12)
    {
      goto LABEL_11;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v21 = 0;
  if (!a12)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = sub_1CA94C368();

LABEL_14:
  v23 = sub_1CA94C648();

  v24 = [v12 initWithTitle:v17 subtitle:v18 altText:v19 imageData:v20 snippetPluginModelData:v21 snippetPluginModelBundleIdentifier:v22 synonyms:v23];

  return v24;
}

id sub_1CA471340(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithBundleIdentifier:v5 displayRepresentation:a3];

  return v6;
}

id sub_1CA4713A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  if (a2)
  {
    v16 = sub_1CA94C368();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v17 = sub_1CA94C648();

  if (a6)
  {
LABEL_4:
    v18 = sub_1CA94C1A8();

    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v19 = sub_1CA948CB8();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v19) != 1)
  {
    v20 = sub_1CA948C58();
    (*(*(v19 - 8) + 8))(a7, v19);
  }

  v21 = [v9 initWithRawResponse:v16 list:v17 BOOLeanValue:a4 numberValue:a5 dictionary:v18 date:v20 responseDataModel:a8];

  return v21;
}

uint64_t sub_1CA47154C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_40();
  v6 = v5(v4);
  OUTLINED_FUNCTION_52(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1CA4715A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1CA471600()
{
  result = qword_1EC445A98;
  if (!qword_1EC445A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A98);
  }

  return result;
}

unint64_t sub_1CA471654()
{
  result = qword_1EC445AB8;
  if (!qword_1EC445AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445AB0, &unk_1CA988C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445AB8);
  }

  return result;
}

unint64_t sub_1CA4716E0()
{
  result = sub_1CA47176C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CA47176C()
{
  result = qword_1EC442210;
  if (!qword_1EC442210)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC442210);
  }

  return result;
}

void sub_1CA471800()
{
  sub_1CA47186C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1CA47186C()
{
  if (!qword_1EC441CE8)
  {
    sub_1CA94B258();
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441CE8);
    }
  }
}

uint64_t dispatch thunk of ContentGraphRepresentable.resolve(in:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_152_2(v1);
  v8 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1CA3D338C;
  v6 = OUTLINED_FUNCTION_188();

  return v8(v6);
}

uint64_t dispatch thunk of ContentGraphRepresentable.resolve(to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1CA471D38;

  return v13(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit39TypedValueToContentGraphResolutionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1CA471B24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA471B64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA471BAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1CA471BD8()
{
  result = qword_1EC443AB0;
  if (!qword_1EC443AB0)
  {
    sub_1CA94ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AB0);
  }

  return result;
}

unint64_t sub_1CA471C30()
{
  result = qword_1EC445B98;
  if (!qword_1EC445B98)
  {
    sub_1CA25B3D0(255, &qword_1EC445B70, 0x1E69AC7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445B98);
  }

  return result;
}

uint64_t sub_1CA471C98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_39(v3);
  (*v4)(a2);
  return a2;
}

void OUTLINED_FUNCTION_76_4()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_112_2()
{
  v2 = v0[35];
  result = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  return result;
}

void OUTLINED_FUNCTION_123_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v14 + 14) = v11;
  *(v14 + 22) = v13;
  *(v12 + 24) = a11;
}

uint64_t OUTLINED_FUNCTION_137_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_138_4()
{
  v5 = *(v2 + 392);
  v6 = *(v2 + 400);
  *(v3 - 128) = v0;
  *(v3 - 120) = v6;
  *(v3 - 112) = v5;
  *(v3 - 104) = v1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_141_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_160_2(uint64_t result)
{
  *(v1 + *(v2 + 24)) = result;
  *(v1 + *(v2 + 28)) = 0;
  return result;
}

void OUTLINED_FUNCTION_163_2(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x20u);
}

unint64_t OUTLINED_FUNCTION_164_2()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return ContentGraphRepresentationContext.debugDescription.getter();
}

unint64_t OUTLINED_FUNCTION_165_3()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return ContentGraphRepresentationContext.debugDescription.getter();
}

uint64_t OUTLINED_FUNCTION_167_1()
{

  return swift_arrayDestroy();
}

uint64_t sub_1CA471F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v99 = xmmword_1CA981400;
  *(inited + 16) = xmmword_1CA981400;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v2 = sub_1CA94C1E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x746E656D75636F44;
  v90 = inited;
  *(inited + 88) = 0xEF736E6F69746341;
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v98 = xmmword_1CA981310;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1CA981310;
  v89 = v0;
  v4 = swift_initStackObject();
  *(v4 + 16) = v99;
  *(v4 + 32) = 0x79726F6765746143;
  *(v4 + 40) = 0xE800000000000000;
  v5 = *MEMORY[0x1E6996FC8];
  type metadata accessor for WFContentCategory(0);
  *(v4 + 48) = v5;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0x7470697263736544;
  *(v4 + 88) = 0xEB000000006E6F69;
  v93 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v7 = swift_initStackObject();
  *(v7 + 16) = v98;
  *(v7 + 32) = @"DescriptionSummary";
  v8 = v5;
  v9 = @"DescriptionSummary";
  v10 = sub_1CA94C438();
  v97 = v11;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v98 = v17;
  *&v99 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v84 - v99;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v96 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v94 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v84 - v95;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v10, v97, v12, v14, 0, 0, v18, v22);
  v97 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v7 + 64) = v97;
  *(v7 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v25 = v93;
  *(v4 + 96) = sub_1CA6B3784();
  *(v4 + 120) = v25;
  *(v4 + 128) = 0x65707954656C6946;
  *(v4 + 136) = 0xE900000000000073;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v93 = v26;
  *(v4 + 144) = &unk_1F49FBD88;
  *(v4 + 168) = v26;
  strcpy((v4 + 176), "InputMapping");
  *(v4 + 189) = 0;
  *(v4 + 190) = -5120;
  v27 = swift_allocObject();
  v92 = xmmword_1CA97EDF0;
  *(v27 + 16) = xmmword_1CA97EDF0;
  v28 = v27;
  v87 = v27;
  v29 = swift_initStackObject();
  *(v29 + 16) = v92;
  *(v29 + 32) = 0x654B656372756F53;
  *(v29 + 40) = 0xE900000000000079;
  v88 = 0xEA00000000007475;
  *(v29 + 48) = 0x706E49736B6F6F42;
  *(v29 + 56) = 0xEA00000000007475;
  v30 = MEMORY[0x1E69E6158];
  *(v29 + 72) = MEMORY[0x1E69E6158];
  *(v29 + 80) = 0x7954656372756F53;
  *(v29 + 120) = v30;
  *(v29 + 88) = 0xEA00000000006570;
  *(v29 + 96) = 0x7475706E49;
  *(v29 + 104) = 0xE500000000000000;
  v31 = v30;
  *(v28 + 32) = sub_1CA94C1E8();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CA9813C0;
  *(v32 + 32) = 0x6574656D61726150;
  *(v32 + 40) = 0xEB00000000495572;
  v89 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_allocObject();
  *(v33 + 16) = v92;
  *(v33 + 32) = @"Class";
  *(v33 + 40) = 0xD000000000000019;
  *(v33 + 48) = 0x80000001CA99B030;
  *(v33 + 64) = v31;
  *(v33 + 72) = @"Label";
  v34 = @"Class";
  v35 = @"Label";
  *&v92 = sub_1CA94C438();
  v86 = v36;
  v37 = sub_1CA94C438();
  v85 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v84 - v99;
  sub_1CA948D98();
  v40 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v84 - v95;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v92, v86, v37, v85, 0, 0, v39, v41);
  *(v33 + 104) = v97;
  *(v33 + 80) = v43;
  _s3__C3KeyVMa_0(0);
  sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v44 = v89;
  *(v32 + 48) = sub_1CA2F864C();
  *(v32 + 72) = v44;
  *(v32 + 80) = 0x654B656372756F53;
  *(v32 + 88) = 0xE900000000000079;
  *(v32 + 96) = 0x706E49736B6F6F42;
  *(v32 + 104) = v88;
  v45 = MEMORY[0x1E69E6158];
  *(v32 + 120) = MEMORY[0x1E69E6158];
  *(v32 + 128) = 0x7954656372756F53;
  *(v32 + 168) = v45;
  *(v32 + 136) = 0xEA00000000006570;
  *(v32 + 144) = 0x6574656D61726150;
  *(v32 + 152) = 0xE900000000000072;
  v46 = sub_1CA94C1E8();
  v47 = v87;
  *(v87 + 40) = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *&v92 = v48;
  *(v4 + 192) = v47;
  *(v4 + 216) = v48;
  *(v4 + 224) = 0xD000000000000010;
  *(v4 + 232) = 0x80000001CA9B8B90;
  *(v4 + 264) = sub_1CA948CB8();
  __swift_allocate_boxed_opaque_existential_1((v4 + 240));
  sub_1CA948C28();
  *(v4 + 272) = 1701667150;
  *(v4 + 280) = 0xE400000000000000;
  v49 = sub_1CA94C438();
  v87 = v50;
  v88 = v49;
  v51 = sub_1CA94C438();
  v86 = v52;
  v89 = &v84;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v84 - v99;
  sub_1CA948D98();
  v54 = v96;
  v55 = [v96 bundleURL];
  v85 = &v84;
  MEMORY[0x1EEE9AC00](v55);
  v56 = v95;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v4 + 288) = sub_1CA2F9F14(v88, v87, v51, v86, 0, 0, v53, &v84 - v56);
  *(v4 + 312) = v97;
  *(v4 + 320) = 0xD000000000000010;
  *(v4 + 328) = 0x80000001CA9A8F60;
  v58 = sub_1CA94C438();
  v87 = v59;
  v88 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v89 = &v84;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v84 - v99;
  sub_1CA948D98();
  v64 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v88, v87, v60, v62, 0, 0, v63, &v84 - v56);
  v67 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v4 + 360) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v4 + 336) = v67;
  v68 = MEMORY[0x1E69E6158];
  v69 = sub_1CA94C1E8();
  v71 = v90;
  v70 = v91;
  *(v91 + 32) = v69;
  *(v71 + 96) = v70;
  *(v71 + 120) = v92;
  strcpy((v71 + 128), "DocumentTypes");
  *(v71 + 142) = -4864;
  *(v71 + 144) = &unk_1F49FBDD8;
  v72 = v93;
  *(v71 + 168) = v93;
  strcpy((v71 + 176), "ExportedTypes");
  *(v71 + 190) = -4864;
  *(v71 + 192) = &unk_1F49FBE38;
  *(v71 + 216) = v72;
  *(v71 + 224) = 0xD000000000000010;
  *(v71 + 232) = 0x80000001CA9A8AF0;
  *(v71 + 240) = 0x3931393037343633;
  *(v71 + 248) = 0xE900000000000033;
  *(v71 + 264) = v68;
  *(v71 + 272) = 1701667150;
  *(v71 + 280) = 0xE400000000000000;
  v73 = sub_1CA94C438();
  v75 = v74;
  v76 = sub_1CA94C438();
  v78 = v77;
  *&v92 = &v84;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v84 - v99;
  sub_1CA948D98();
  v80 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v84 - v95;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 288) = sub_1CA2F9F14(v73, v75, v76, v78, 0, 0, v79, v81);
  *(v71 + 312) = v97;
  *(v71 + 320) = 0x6D656863534C5255;
  *(v71 + 360) = v93;
  *(v71 + 328) = 0xEA00000000007365;
  *(v71 + 336) = &unk_1F49FBE78;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA472D10()
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v113 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v114 = v11;
  v12 = &v98 - v113;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v110 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v112 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v98 - v112;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v109 = v19;
  *(inited + 144) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v105 = swift_allocObject();
  v106 = xmmword_1CA981310;
  *(v105 + 16) = xmmword_1CA981310;
  v20 = swift_initStackObject();
  v104 = v20;
  v107 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v103 = swift_allocObject();
  *(v103 + 16) = v106;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981400;
  strcpy((v21 + 32), "ActionKeywords");
  *(v21 + 47) = -18;
  v22 = sub_1CA94C438();
  v98 = v23;
  v99 = v22;
  v24 = sub_1CA94C438();
  v26 = v25;
  v100 = &v98;
  MEMORY[0x1EEE9AC00](v24);
  v102 = inited;
  v27 = &v98 - v113;
  sub_1CA948D98();
  v28 = v111;
  v29 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v98 - v112;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 48) = sub_1CA2F9F14(v99, v98, v24, v26, 0, 0, v27, v30);
  v32 = v109;
  *(v21 + 72) = v109;
  *(v21 + 80) = 0x7470697263736544;
  *(v21 + 88) = 0xEB000000006E6F69;
  v100 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v33 = swift_initStackObject();
  *(v33 + 16) = v106;
  *(v33 + 32) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438();
  v98 = v36;
  v99 = v35;
  v37 = sub_1CA94C438();
  v39 = v38;
  *&v106 = &v98;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v98 - v113;
  sub_1CA948D98();
  v41 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v98 - v112;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v99, v98, v37, v39, 0, 0, v40, v42);
  *(v33 + 64) = v32;
  *(v33 + 40) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v45 = v100;
  *(v21 + 96) = sub_1CA6B3784();
  *(v21 + 120) = v45;
  *(v21 + 128) = 0x74616D726F46;
  *(v21 + 136) = 0xE600000000000000;
  *(v21 + 144) = 0xD000000000000013;
  *(v21 + 152) = 0x80000001CA9B8CF0;
  v46 = MEMORY[0x1E69E6158];
  *(v21 + 168) = MEMORY[0x1E69E6158];
  *(v21 + 176) = 0x696669746E656449;
  *(v21 + 184) = 0xEA00000000007265;
  *(v21 + 192) = 1819042147;
  *(v21 + 200) = 0xE400000000000000;
  *(v21 + 216) = v46;
  strcpy((v21 + 224), "InputMapping");
  *(v21 + 237) = 0;
  *(v21 + 238) = -5120;
  v47 = swift_allocObject();
  *(v47 + 16) = v107;
  v48 = v47;
  *&v106 = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1CA981380;
  *(v49 + 32) = 0xD000000000000013;
  *(v49 + 40) = 0x80000001CA9ACAF0;
  *(v49 + 48) = 0xD000000000000019;
  *(v49 + 56) = 0x80000001CA9B8D10;
  *(v49 + 72) = v46;
  strcpy((v49 + 80), "DestinationKey");
  *(v49 + 95) = -18;
  *(v49 + 96) = 0x6E65697069636572;
  *(v49 + 104) = 0xE900000000000074;
  *(v49 + 120) = v46;
  *(v49 + 128) = 0x74616E6974736544;
  *(v49 + 136) = 0xEF657079546E6F69;
  *(v49 + 144) = 0x74736275534C5255;
  *(v49 + 152) = 0xEF6E6F6974757469;
  *(v49 + 168) = v46;
  *(v49 + 176) = 0x73616C436D657449;
  *(v49 + 184) = 0xEB00000000736573;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 192) = &unk_1F49FBFA8;
  *(v49 + 216) = v50;
  *(v49 + 224) = 0x654B656372756F53;
  *(v49 + 232) = 0xE900000000000079;
  *(v49 + 240) = 0x7265506570796B53;
  *(v49 + 248) = 0xEB000000006E6F73;
  *(v49 + 264) = v46;
  *(v49 + 272) = 0x7954656372756F53;
  *(v49 + 312) = v46;
  *(v49 + 280) = 0xEA00000000006570;
  *(v49 + 288) = 0x7475706E49;
  *(v49 + 296) = 0xE500000000000000;
  *(v48 + 32) = sub_1CA94C1E8();
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA9813C0;
  *(v51 + 32) = 0x6574656D61726150;
  *(v51 + 40) = 0xEB00000000495572;
  v108 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v52 = swift_allocObject();
  *(v52 + 16) = v107;
  *(v52 + 32) = @"Class";
  *(v52 + 40) = 0xD000000000000017;
  *(v52 + 48) = 0x80000001CA9A37F0;
  *(v52 + 64) = v46;
  *(v52 + 72) = @"Label";
  v53 = @"Class";
  v54 = @"Label";
  v55 = sub_1CA94C438();
  v100 = v56;
  v101 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  *&v107 = &v98;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v98 - v113;
  sub_1CA948D98();
  v61 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v98 - v112;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v101, v100, v57, v59, 0, 0, v60, v62);
  *(v52 + 104) = v109;
  *(v52 + 80) = v64;
  _s3__C3KeyVMa_0(0);
  sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v65 = v108;
  *(v51 + 48) = sub_1CA2F864C();
  *(v51 + 72) = v65;
  *(v51 + 80) = 0x654B656372756F53;
  *(v51 + 88) = 0xE900000000000079;
  *(v51 + 96) = 0x7265506570796B53;
  *(v51 + 104) = 0xEB000000006E6F73;
  v66 = MEMORY[0x1E69E6158];
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x7954656372756F53;
  *(v51 + 168) = v66;
  *(v51 + 136) = 0xEA00000000006570;
  *(v51 + 144) = 0x6574656D61726150;
  *(v51 + 152) = 0xE900000000000072;
  v67 = sub_1CA94C1E8();
  v68 = v106;
  *(v106 + 40) = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v108 = v69;
  *(v21 + 240) = v68;
  *(v21 + 264) = v69;
  *(v21 + 272) = 1701667150;
  *(v21 + 280) = 0xE400000000000000;
  v70 = sub_1CA94C438();
  *&v106 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  *&v107 = &v98;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v98 - v113;
  sub_1CA948D98();
  v76 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = v112;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 288) = sub_1CA2F9F14(v70, v106, v72, v74, 0, 0, v75, &v98 - v77);
  *(v21 + 312) = v109;
  *(v21 + 320) = 0xD000000000000010;
  *(v21 + 328) = 0x80000001CA9A8F60;
  v79 = sub_1CA94C438();
  *&v107 = v80;
  v81 = sub_1CA94C438();
  v83 = v82;
  v109 = &v98;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v98 - v113;
  sub_1CA948D98();
  v85 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v79, v107, v81, v83, 0, 0, v84, &v98 - v77);
  v88 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v21 + 360) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v21 + 336) = v88;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v103;
  *(v103 + 32) = v90;
  v92 = v104;
  v104[6] = v91;
  v93 = v108;
  v92[9] = v108;
  v92[10] = 0x656D65686353;
  v92[15] = v89;
  v92[11] = 0xE600000000000000;
  v92[12] = 0x6570796B73;
  v92[13] = 0xE500000000000000;
  v94 = sub_1CA94C1E8();
  v95 = v105;
  *(v105 + 32) = v94;
  v96 = v102;
  *(v102 + 216) = v93;
  *(v96 + 192) = v95;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA473C88()
{
  v1315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v1317 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  v1300 = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  v1311 = v2;
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v1320 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1321 = v11;
  v12 = &v1284 - v1320;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1322 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v1318 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v1319 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v1284 - v1319;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v1316 = v19;
  *(inited + 144) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  v1313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v1299 = swift_allocObject();
  v1314 = xmmword_1CA981310;
  *(v1299 + 16) = xmmword_1CA981310;
  v20 = swift_initStackObject();
  v1298 = v20;
  v1310 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v1297 = swift_allocObject();
  *(v1297 + 16) = v1314;
  v21 = swift_initStackObject();
  v1304 = xmmword_1CA981300;
  *(v21 + 16) = xmmword_1CA981300;
  strcpy((v21 + 32), "CreationDate");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 72) = sub_1CA948CB8();
  __swift_allocate_boxed_opaque_existential_1((v21 + 48));
  sub_1CA948C28();
  *(v21 + 80) = 0x7470697263736544;
  *(v21 + 88) = 0xEB000000006E6F69;
  v1312 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = v1314;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v1309 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  *&v1314 = &v1284;
  MEMORY[0x1EEE9AC00](v26);
  v1296 = inited;
  v29 = &v1284 - v1320;
  sub_1CA948D98();
  v30 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v1284 - v1319;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v1309, v26, v28, 0, 0, v29, v31);
  *(v22 + 64) = v1316;
  *(v22 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v1312;
  v35 = sub_1CA6B3784();
  v1295 = v21;
  *(v21 + 96) = v35;
  *(v21 + 120) = v34;
  *(v21 + 128) = 0x74616D726F46;
  *(v21 + 136) = 0xE600000000000000;
  *(v21 + 144) = 0xD00000000000003CLL;
  *(v21 + 152) = 0x80000001CA9B8E50;
  v36 = MEMORY[0x1E69E6158];
  *(v21 + 168) = MEMORY[0x1E69E6158];
  *(v21 + 176) = 0x696669746E656449;
  *(v21 + 184) = 0xEA00000000007265;
  *(v21 + 192) = 0x74616C736E617274;
  *(v21 + 200) = 0xE900000000000065;
  *(v21 + 216) = v36;
  strcpy((v21 + 224), "InputMapping");
  *(v21 + 237) = 0;
  *(v21 + 238) = -5120;
  v37 = swift_allocObject();
  *(v37 + 16) = v1317;
  v38 = v37;
  *&v1314 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CA981370;
  strcpy((v39 + 32), "DestinationKey");
  *(v39 + 47) = -18;
  *(v39 + 48) = 1954047348;
  *(v39 + 56) = 0xE400000000000000;
  *(v39 + 72) = v36;
  *(v39 + 80) = 0x74616E6974736544;
  *(v39 + 88) = 0xEF657079546E6F69;
  *(v39 + 96) = 0x74736275534C5255;
  *(v39 + 104) = 0xEF6E6F6974757469;
  *(v39 + 120) = v36;
  *(v39 + 128) = 0x73616C436D657449;
  *(v39 + 136) = 0xE900000000000073;
  *(v39 + 144) = 0xD000000000000013;
  *(v39 + 152) = 0x80000001CA993390;
  v1303 = 0x80000001CA993390;
  *(v39 + 168) = v36;
  *(v39 + 176) = 0x654B656372756F53;
  v1313 = 0xE900000000000079;
  *(v39 + 184) = 0xE900000000000079;
  *(v39 + 192) = 0x7475706E49;
  *(v39 + 200) = 0xE500000000000000;
  *(v39 + 216) = v36;
  *(v39 + 224) = 0x7954656372756F53;
  *(v39 + 264) = v36;
  *(v39 + 232) = 0xEA00000000006570;
  *(v39 + 240) = 0x7475706E49;
  *(v39 + 248) = 0xE500000000000000;
  *(v38 + 32) = sub_1CA94C1E8();
  v40 = swift_allocObject();
  *(v40 + 16) = v1317;
  *(v40 + 32) = 0x73616C436D657449;
  *(v40 + 40) = 0xE900000000000073;
  *(v40 + 48) = 0xD000000000000013;
  *(v40 + 56) = 0x80000001CA993390;
  *(v40 + 72) = v36;
  *(v40 + 80) = 0x6574656D61726150;
  *(v40 + 88) = 0xEB00000000495572;
  v1312 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v1302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v41 = swift_initStackObject();
  *(v41 + 16) = v1310;
  *(v41 + 32) = @"Class";
  *(v41 + 40) = 0xD000000000000014;
  *(v41 + 48) = 0x80000001CA99B500;
  *(v41 + 64) = v36;
  *(v41 + 72) = @"Label";
  v42 = @"Class";
  v43 = @"Label";
  v44 = v42;
  v45 = v43;
  v1301 = v44;
  v1308 = v45;
  v46 = sub_1CA94C438();
  v1309 = v47;
  v48 = sub_1CA94C438();
  v50 = v49;
  *&v1310 = &v1284;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v1284 - v1320;
  sub_1CA948D98();
  v52 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v1284 - v1319;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v46, v1309, v48, v50, 0, 0, v51, v53);
  *(v41 + 104) = v1316;
  *(v41 + 80) = v55;
  _s3__C3KeyVMa_0(0);
  v1306 = v56;
  v1305 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v57 = v1312;
  *(v40 + 96) = sub_1CA2F864C();
  *(v40 + 120) = v57;
  *(v40 + 128) = 0x654B656372756F53;
  *(v40 + 136) = v1313;
  *(v40 + 144) = 0x7475706E49;
  *(v40 + 152) = 0xE500000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v40 + 168) = MEMORY[0x1E69E6158];
  *(v40 + 176) = 0x7954656372756F53;
  *(v40 + 216) = v58;
  *(v40 + 184) = 0xEA00000000006570;
  *(v40 + 192) = 0x6574656D61726150;
  v1307 = 0xE900000000000072;
  *(v40 + 200) = 0xE900000000000072;
  *(v1314 + 40) = sub_1CA94C1E8();
  v59 = swift_allocObject();
  v1290 = v59;
  *(v59 + 16) = v1304;
  strcpy((v59 + 32), "DestinationKey");
  *(v59 + 47) = -18;
  *(v59 + 48) = 1836020326;
  *(v59 + 56) = 0xE400000000000000;
  *(v59 + 72) = v58;
  *(v59 + 80) = 0x74616E6974736544;
  *(v59 + 88) = 0xEF657079546E6F69;
  *(v59 + 96) = 0x74736275534C5255;
  *(v59 + 104) = 0xEF6E6F6974757469;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x73616C436D657449;
  *(v59 + 136) = 0xE900000000000073;
  *(v59 + 144) = 0xD000000000000013;
  *(v59 + 152) = v1303;
  v1294 = 0x80000001CA9A8C50;
  v1309 = 0xD000000000000010;
  *(v59 + 168) = v58;
  *(v59 + 176) = 0xD000000000000010;
  *(v59 + 184) = 0x80000001CA9A8C50;
  *(v59 + 192) = 0x4C20746365746544;
  *(v59 + 200) = 0xEF65676175676E61;
  *(v59 + 216) = v58;
  *(v59 + 224) = 0x6574656D61726150;
  *(v59 + 232) = 0xEB00000000495572;
  v60 = swift_allocObject();
  *(v60 + 16) = v1317;
  v1292 = 0xD000000000000016;
  v1293 = 0x80000001CA99C4A0;
  *(v60 + 32) = v1301;
  *(v60 + 40) = 0xD000000000000016;
  *(v60 + 48) = 0x80000001CA99C4A0;
  *(v60 + 64) = v58;
  *(v60 + 72) = @"Items";
  v61 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v1289 = v61;
  v61[10] = &unk_1F49FC0B8;
  v61[13] = v62;
  v61[14] = @"ItemDisplayNames";
  *&v1310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v1317 = swift_allocObject();
  *(v1317 + 16) = xmmword_1CA988F30;
  v1291 = @"Items";
  v63 = @"ItemDisplayNames";
  v64 = sub_1CA94C438();
  v1286 = v65;
  v1287 = v64;
  v66 = sub_1CA94C438();
  v1285 = v67;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v66);
  v68 = v1320;
  sub_1CA948D98();
  v69 = v1322;
  v70 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v1284 - v1319;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v73 = sub_1CA2F9F14(v1287, v1286, v66, v1285, 0, 0, &v1284 - v68, v71);
  *(v1317 + 32) = v73;
  v74 = sub_1CA94C438();
  v1286 = v75;
  v1287 = v74;
  v76 = sub_1CA94C438();
  v1285 = v77;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v1284 - v68;
  sub_1CA948D98();
  v79 = v69;
  v80 = [v69 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = v1319;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v1287, v1286, v76, v1285, 0, 0, v78, &v1284 - v81);
  v84 = v1317;
  *(v1317 + 40) = v83;
  v85 = sub_1CA94C438();
  v1286 = v86;
  v1287 = v85;
  v87 = sub_1CA94C438();
  v1285 = v88;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v1284 - v1320;
  sub_1CA948D98();
  v90 = [v79 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 48) = sub_1CA2F9F14(v1287, v1286, v87, v1285, 0, 0, v89, &v1284 - v81);
  v92 = sub_1CA94C438();
  v1286 = v93;
  v1287 = v92;
  v94 = sub_1CA94C438();
  v1285 = v95;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v1320;
  sub_1CA948D98();
  v97 = v1322;
  v98 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v1319;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v1287, v1286, v94, v1285, 0, 0, &v1284 - v96, &v1284 - v99);
  v102 = v1317;
  *(v1317 + 56) = v101;
  v103 = sub_1CA94C438();
  v1286 = v104;
  v1287 = v103;
  v105 = sub_1CA94C438();
  v1285 = v106;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948D98();
  v107 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 64) = sub_1CA2F9F14(v1287, v1286, v105, v1285, 0, 0, &v1284 - v96, &v1284 - v99);
  v109 = sub_1CA94C438();
  v1286 = v110;
  v1287 = v109;
  v111 = sub_1CA94C438();
  v1285 = v112;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v1320;
  sub_1CA948D98();
  v114 = v1322;
  v115 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v1287, v1286, v111, v1285, 0, 0, &v1284 - v113, &v1284 - v99);
  *(v1317 + 72) = v117;
  v118 = sub_1CA94C438();
  v1286 = v119;
  v1287 = v118;
  v120 = sub_1CA94C438();
  v1285 = v121;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948D98();
  v122 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v1287, v1286, v120, v1285, 0, 0, &v1284 - v113, &v1284 - v99);
  v125 = v1317;
  *(v1317 + 80) = v124;
  v126 = sub_1CA94C438();
  v1286 = v127;
  v1287 = v126;
  v128 = sub_1CA94C438();
  v1285 = v129;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v128);
  v130 = v1320;
  sub_1CA948D98();
  v131 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 88) = sub_1CA2F9F14(v1287, v1286, v128, v1285, 0, 0, &v1284 - v130, &v1284 - v99);
  v133 = sub_1CA94C438();
  v1286 = v134;
  v1287 = v133;
  v135 = sub_1CA94C438();
  v1285 = v136;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v1284 - v130;
  sub_1CA948D98();
  v138 = v1322;
  v139 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = v1319;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v1287, v1286, v135, v1285, 0, 0, v137, &v1284 - v140);
  *(v1317 + 96) = v142;
  v143 = sub_1CA94C438();
  v1286 = v144;
  v1287 = v143;
  v145 = sub_1CA94C438();
  v1285 = v146;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v145);
  v147 = v1320;
  sub_1CA948D98();
  v148 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v1287, v1286, v145, v1285, 0, 0, &v1284 - v147, &v1284 - v140);
  v151 = v1317;
  *(v1317 + 104) = v150;
  v152 = sub_1CA94C438();
  v1286 = v153;
  v1287 = v152;
  v154 = sub_1CA94C438();
  v1285 = v155;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v1284 - v147;
  sub_1CA948D98();
  v157 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = v1319;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v151 + 112) = sub_1CA2F9F14(v1287, v1286, v154, v1285, 0, 0, v156, &v1284 - v158);
  v160 = sub_1CA94C438();
  v1286 = v161;
  v1287 = v160;
  v162 = sub_1CA94C438();
  v1285 = v163;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v162);
  v164 = v1320;
  sub_1CA948D98();
  v165 = v1322;
  v166 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v1287, v1286, v162, v1285, 0, 0, &v1284 - v164, &v1284 - v158);
  v169 = v1317;
  *(v1317 + 120) = v168;
  v170 = sub_1CA94C438();
  v1286 = v171;
  v1287 = v170;
  v172 = sub_1CA94C438();
  v1285 = v173;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v172);
  v174 = &v1284 - v164;
  sub_1CA948D98();
  v175 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = v1319;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 128) = sub_1CA2F9F14(v1287, v1286, v172, v1285, 0, 0, v174, &v1284 - v176);
  v178 = sub_1CA94C438();
  v1286 = v179;
  v1287 = v178;
  v180 = sub_1CA94C438();
  v182 = v181;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v180);
  v183 = v1320;
  sub_1CA948D98();
  v184 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v186 = sub_1CA2F9F14(v1287, v1286, v180, v182, 0, 0, &v1284 - v183, &v1284 - v176);
  v187 = v1317;
  *(v1317 + 136) = v186;
  v188 = sub_1CA94C438();
  v1286 = v189;
  v1287 = v188;
  v190 = sub_1CA94C438();
  v1285 = v191;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v190);
  v192 = &v1284 - v183;
  sub_1CA948D98();
  v193 = v1322;
  v194 = [v1322 bundleURL];
  v1284 = &v1284;
  MEMORY[0x1EEE9AC00](v194);
  v195 = v1319;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 144) = sub_1CA2F9F14(v1287, v1286, v190, v1285, 0, 0, v192, &v1284 - v195);
  v197 = sub_1CA94C438();
  v1286 = v198;
  v1287 = v197;
  v199 = sub_1CA94C438();
  v201 = v200;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v199);
  v202 = v1320;
  sub_1CA948D98();
  v203 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v1287, v1286, v199, v201, 0, 0, &v1284 - v202, &v1284 - v195);
  v206 = v1317;
  *(v1317 + 152) = v205;
  v207 = sub_1CA94C438();
  v1286 = v208;
  v1287 = v207;
  v1285 = sub_1CA94C438();
  v210 = v209;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  v211 = &v1284 - v202;
  sub_1CA948D98();
  v212 = v1322;
  v213 = [v1322 bundleURL];
  v1284 = &v1284;
  MEMORY[0x1EEE9AC00](v213);
  v214 = v1319;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v206 + 160) = sub_1CA2F9F14(v1287, v1286, v1285, v210, 0, 0, v211, &v1284 - v214);
  v216 = sub_1CA94C438();
  v1286 = v217;
  v1287 = v216;
  v218 = sub_1CA94C438();
  v220 = v219;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v218);
  v221 = v1320;
  sub_1CA948D98();
  v222 = [v212 bundleURL];
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948B68();

  v223 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v224 = sub_1CA2F9F14(v1287, v1286, v218, v220, 0, 0, &v1284 - v221, &v1284 - v214);
  v225 = v1317;
  *(v1317 + 168) = v224;
  v226 = sub_1CA94C438();
  v1286 = v227;
  v1287 = v226;
  v228 = sub_1CA94C438();
  v1285 = v229;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v228);
  v230 = &v1284 - v221;
  sub_1CA948D98();
  v231 = v1322;
  v232 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v232);
  v233 = v1319;
  sub_1CA948B68();

  v234 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v225 + 176) = sub_1CA2F9F14(v1287, v1286, v228, v1285, 0, 0, v230, &v1284 - v233);
  v235 = sub_1CA94C438();
  v1286 = v236;
  v1287 = v235;
  v237 = sub_1CA94C438();
  v1285 = v238;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v237);
  v239 = v1320;
  sub_1CA948D98();
  v240 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v240);
  sub_1CA948B68();

  v241 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v242 = sub_1CA2F9F14(v1287, v1286, v237, v1285, 0, 0, &v1284 - v239, &v1284 - v233);
  v243 = v1317;
  *(v1317 + 184) = v242;
  v244 = sub_1CA94C438();
  v1286 = v245;
  v1287 = v244;
  v246 = sub_1CA94C438();
  v1285 = v247;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v246);
  v248 = &v1284 - v239;
  sub_1CA948D98();
  v249 = v1322;
  v250 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  v251 = v1319;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 192) = sub_1CA2F9F14(v1287, v1286, v246, v1285, 0, 0, v248, &v1284 - v251);
  v253 = sub_1CA94C438();
  v1286 = v254;
  v1287 = v253;
  v1285 = sub_1CA94C438();
  v256 = v255;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  v257 = v1320;
  sub_1CA948D98();
  v258 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v258);
  sub_1CA948B68();

  v259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v260 = sub_1CA2F9F14(v1287, v1286, v1285, v256, 0, 0, &v1284 - v257, &v1284 - v251);
  v261 = v1317;
  *(v1317 + 200) = v260;
  v262 = sub_1CA94C438();
  v1286 = v263;
  v1287 = v262;
  v264 = sub_1CA94C438();
  v1285 = v265;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v264);
  v266 = v257;
  v267 = &v1284 - v257;
  sub_1CA948D98();
  v268 = v1322;
  v269 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v269);
  v270 = v1319;
  sub_1CA948B68();

  v271 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v261 + 208) = sub_1CA2F9F14(v1287, v1286, v264, v1285, 0, 0, v267, &v1284 - v270);
  v272 = sub_1CA94C438();
  v1286 = v273;
  v1287 = v272;
  v274 = sub_1CA94C438();
  v1285 = v275;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v274);
  sub_1CA948D98();
  v276 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v276);
  sub_1CA948B68();

  v277 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v278 = sub_1CA2F9F14(v1287, v1286, v274, v1285, 0, 0, &v1284 - v266, &v1284 - v270);
  v279 = v1317;
  *(v1317 + 216) = v278;
  v280 = sub_1CA94C438();
  v1286 = v281;
  v1287 = v280;
  v282 = sub_1CA94C438();
  v1285 = v283;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v282);
  v284 = v1320;
  sub_1CA948D98();
  v285 = v1322;
  v286 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v286);
  v287 = &v1284 - v1319;
  sub_1CA948B68();

  v288 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v279 + 224) = sub_1CA2F9F14(v1287, v1286, v282, v1285, 0, 0, &v1284 - v284, v287);
  v289 = sub_1CA94C438();
  v1286 = v290;
  v1287 = v289;
  v1285 = sub_1CA94C438();
  v292 = v291;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  sub_1CA948D98();
  v293 = [v285 bundleURL];
  MEMORY[0x1EEE9AC00](v293);
  v294 = v1319;
  sub_1CA948B68();

  v295 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v296 = sub_1CA2F9F14(v1287, v1286, v1285, v292, 0, 0, &v1284 - v284, &v1284 - v294);
  v297 = v1317;
  *(v1317 + 232) = v296;
  v298 = sub_1CA94C438();
  v1286 = v299;
  v1287 = v298;
  v300 = sub_1CA94C438();
  v1285 = v301;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948D98();
  v302 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v302);
  sub_1CA948B68();

  v303 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v297 + 240) = sub_1CA2F9F14(v1287, v1286, v300, v1285, 0, 0, &v1284 - v284, &v1284 - v294);
  v304 = sub_1CA94C438();
  v1286 = v305;
  v1287 = v304;
  v306 = sub_1CA94C438();
  v1285 = v307;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v306);
  sub_1CA948D98();
  v308 = v1322;
  v309 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v309);
  v310 = v1319;
  sub_1CA948B68();

  v311 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v312 = sub_1CA2F9F14(v1287, v1286, v306, v1285, 0, 0, &v1284 - v284, &v1284 - v310);
  v313 = v1317;
  *(v1317 + 248) = v312;
  v314 = sub_1CA94C438();
  v1286 = v315;
  v1287 = v314;
  v316 = sub_1CA94C438();
  v1285 = v317;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v316);
  v318 = v1320;
  sub_1CA948D98();
  v319 = [v308 bundleURL];
  MEMORY[0x1EEE9AC00](v319);
  sub_1CA948B68();

  v320 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v313 + 256) = sub_1CA2F9F14(v1287, v1286, v316, v1285, 0, 0, &v1284 - v318, &v1284 - v310);
  v321 = sub_1CA94C438();
  v1286 = v322;
  v1287 = v321;
  v323 = sub_1CA94C438();
  v1285 = v324;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v323);
  sub_1CA948D98();
  v325 = v1322;
  v326 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v326);
  sub_1CA948B68();

  v327 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v328 = sub_1CA2F9F14(v1287, v1286, v323, v1285, 0, 0, &v1284 - v318, &v1284 - v310);
  v329 = v1317;
  *(v1317 + 264) = v328;
  v330 = sub_1CA94C438();
  v1286 = v331;
  v1287 = v330;
  v332 = sub_1CA94C438();
  v1285 = v333;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v332);
  v334 = &v1284 - v1320;
  sub_1CA948D98();
  v335 = [v325 bundleURL];
  MEMORY[0x1EEE9AC00](v335);
  sub_1CA948B68();

  v336 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v329 + 272) = sub_1CA2F9F14(v1287, v1286, v332, v1285, 0, 0, v334, &v1284 - v310);
  v337 = sub_1CA94C438();
  v1286 = v338;
  v1287 = v337;
  v1285 = sub_1CA94C438();
  v340 = v339;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  v341 = v1320;
  sub_1CA948D98();
  v342 = v1322;
  v343 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v343);
  sub_1CA948B68();

  v344 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v345 = sub_1CA2F9F14(v1287, v1286, v1285, v340, 0, 0, &v1284 - v341, &v1284 - v310);
  v346 = v1317;
  *(v1317 + 280) = v345;
  v347 = sub_1CA94C438();
  v1286 = v348;
  v1287 = v347;
  v349 = sub_1CA94C438();
  v1285 = v350;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v349);
  v351 = &v1284 - v341;
  sub_1CA948D98();
  v352 = [v342 bundleURL];
  MEMORY[0x1EEE9AC00](v352);
  v353 = v1319;
  sub_1CA948B68();

  v354 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v346 + 288) = sub_1CA2F9F14(v1287, v1286, v349, v1285, 0, 0, v351, &v1284 - v353);
  v355 = sub_1CA94C438();
  v1286 = v356;
  v1287 = v355;
  v357 = sub_1CA94C438();
  v1285 = v358;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v357);
  v359 = v1320;
  sub_1CA948D98();
  v360 = v1322;
  v361 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v361);
  sub_1CA948B68();

  v362 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v363 = sub_1CA2F9F14(v1287, v1286, v357, v1285, 0, 0, &v1284 - v359, &v1284 - v353);
  v364 = v1317;
  *(v1317 + 296) = v363;
  v365 = sub_1CA94C438();
  v1286 = v366;
  v1287 = v365;
  v367 = sub_1CA94C438();
  v1285 = v368;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v367);
  v369 = &v1284 - v359;
  sub_1CA948D98();
  v370 = [v360 bundleURL];
  MEMORY[0x1EEE9AC00](v370);
  v371 = v1319;
  sub_1CA948B68();

  v372 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v364 + 304) = sub_1CA2F9F14(v1287, v1286, v367, v1285, 0, 0, v369, &v1284 - v371);
  v373 = sub_1CA94C438();
  v1286 = v374;
  v1287 = v373;
  v375 = sub_1CA94C438();
  v1285 = v376;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v375);
  v377 = v1320;
  sub_1CA948D98();
  v378 = v1322;
  v379 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v379);
  sub_1CA948B68();

  v380 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v381 = sub_1CA2F9F14(v1287, v1286, v375, v1285, 0, 0, &v1284 - v377, &v1284 - v371);
  v382 = v1317;
  *(v1317 + 312) = v381;
  v383 = sub_1CA94C438();
  v1286 = v384;
  v1287 = v383;
  v1285 = sub_1CA94C438();
  v386 = v385;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  v387 = &v1284 - v377;
  sub_1CA948D98();
  v388 = [v378 bundleURL];
  MEMORY[0x1EEE9AC00](v388);
  v389 = v1319;
  sub_1CA948B68();

  v390 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v382 + 320) = sub_1CA2F9F14(v1287, v1286, v1285, v386, 0, 0, v387, &v1284 - v389);
  v391 = sub_1CA94C438();
  v1286 = v392;
  v1287 = v391;
  v393 = sub_1CA94C438();
  v1285 = v394;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v393);
  v395 = v1320;
  sub_1CA948D98();
  v396 = v1322;
  v397 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v397);
  sub_1CA948B68();

  v398 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v399 = sub_1CA2F9F14(v1287, v1286, v393, v1285, 0, 0, &v1284 - v395, &v1284 - v389);
  v400 = v1317;
  *(v1317 + 328) = v399;
  v401 = sub_1CA94C438();
  v1286 = v402;
  v1287 = v401;
  v403 = sub_1CA94C438();
  v1285 = v404;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v403);
  v405 = &v1284 - v395;
  sub_1CA948D98();
  v406 = [v396 bundleURL];
  MEMORY[0x1EEE9AC00](v406);
  v407 = v1319;
  sub_1CA948B68();

  v408 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v400 + 336) = sub_1CA2F9F14(v1287, v1286, v403, v1285, 0, 0, v405, &v1284 - v407);
  v409 = sub_1CA94C438();
  v1286 = v410;
  v1287 = v409;
  v1285 = sub_1CA94C438();
  v412 = v411;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  v413 = v1320;
  sub_1CA948D98();
  v414 = v1322;
  v415 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v415);
  sub_1CA948B68();

  v416 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v417 = sub_1CA2F9F14(v1287, v1286, v1285, v412, 0, 0, &v1284 - v413, &v1284 - v407);
  v418 = v1317;
  *(v1317 + 344) = v417;
  v419 = sub_1CA94C438();
  v1286 = v420;
  v1287 = v419;
  v421 = sub_1CA94C438();
  v1285 = v422;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v421);
  v423 = &v1284 - v413;
  sub_1CA948D98();
  v424 = [v414 bundleURL];
  MEMORY[0x1EEE9AC00](v424);
  v425 = v1319;
  sub_1CA948B68();

  v426 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v418 + 352) = sub_1CA2F9F14(v1287, v1286, v421, v1285, 0, 0, v423, &v1284 - v425);
  v427 = sub_1CA94C438();
  v1286 = v428;
  v1287 = v427;
  v429 = sub_1CA94C438();
  v1285 = v430;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v429);
  v431 = v1320;
  sub_1CA948D98();
  v432 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v432);
  sub_1CA948B68();

  v433 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v434 = sub_1CA2F9F14(v1287, v1286, v429, v1285, 0, 0, &v1284 - v431, &v1284 - v425);
  v435 = v1317;
  *(v1317 + 360) = v434;
  v436 = sub_1CA94C438();
  v1286 = v437;
  v1287 = v436;
  v438 = sub_1CA94C438();
  v1285 = v439;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v438);
  sub_1CA948D98();
  v440 = v1322;
  v441 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v441);
  v442 = v1319;
  sub_1CA948B68();

  v443 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v435 + 368) = sub_1CA2F9F14(v1287, v1286, v438, v1285, 0, 0, &v1284 - v431, &v1284 - v442);
  v444 = sub_1CA94C438();
  v1286 = v445;
  v1287 = v444;
  v446 = sub_1CA94C438();
  v448 = v447;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v446);
  v449 = &v1284 - v1320;
  sub_1CA948D98();
  v450 = [v440 bundleURL];
  MEMORY[0x1EEE9AC00](v450);
  sub_1CA948B68();

  v451 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v452 = sub_1CA2F9F14(v1287, v1286, v446, v448, 0, 0, v449, &v1284 - v442);
  v453 = v1317;
  *(v1317 + 376) = v452;
  v454 = sub_1CA94C438();
  v1286 = v455;
  v1287 = v454;
  v456 = sub_1CA94C438();
  v1285 = v457;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v456);
  v458 = v1320;
  sub_1CA948D98();
  v459 = v1322;
  v460 = [v1322 bundleURL];
  v1284 = &v1284;
  MEMORY[0x1EEE9AC00](v460);
  v461 = v1319;
  sub_1CA948B68();

  v462 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v453 + 384) = sub_1CA2F9F14(v1287, v1286, v456, v1285, 0, 0, &v1284 - v458, &v1284 - v461);
  v463 = sub_1CA94C438();
  v1286 = v464;
  v1287 = v463;
  v465 = sub_1CA94C438();
  v467 = v466;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v465);
  sub_1CA948D98();
  v468 = [v459 bundleURL];
  MEMORY[0x1EEE9AC00](v468);
  sub_1CA948B68();

  v469 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v470 = sub_1CA2F9F14(v1287, v1286, v465, v467, 0, 0, &v1284 - v458, &v1284 - v461);
  v471 = v1317;
  *(v1317 + 392) = v470;
  v472 = sub_1CA94C438();
  v1286 = v473;
  v1287 = v472;
  v474 = sub_1CA94C438();
  v1285 = v475;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v474);
  v476 = v1320;
  sub_1CA948D98();
  v477 = v1322;
  v478 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v478);
  v479 = v1319;
  sub_1CA948B68();

  v480 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v471 + 400) = sub_1CA2F9F14(v1287, v1286, v474, v1285, 0, 0, &v1284 - v476, &v1284 - v479);
  v481 = sub_1CA94C438();
  v1286 = v482;
  v1287 = v481;
  v483 = sub_1CA94C438();
  v1285 = v484;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v483);
  sub_1CA948D98();
  v485 = [v477 bundleURL];
  MEMORY[0x1EEE9AC00](v485);
  sub_1CA948B68();

  v486 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v487 = sub_1CA2F9F14(v1287, v1286, v483, v1285, 0, 0, &v1284 - v476, &v1284 - v479);
  v488 = v1317;
  *(v1317 + 408) = v487;
  v489 = sub_1CA94C438();
  v1286 = v490;
  v1287 = v489;
  v491 = sub_1CA94C438();
  v1285 = v492;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v491);
  v493 = v1320;
  sub_1CA948D98();
  v494 = v1322;
  v495 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v495);
  v496 = &v1284 - v1319;
  sub_1CA948B68();

  v497 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v488 + 416) = sub_1CA2F9F14(v1287, v1286, v491, v1285, 0, 0, &v1284 - v493, v496);
  v498 = sub_1CA94C438();
  v1286 = v499;
  v1287 = v498;
  v1285 = sub_1CA94C438();
  v501 = v500;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  sub_1CA948D98();
  v502 = [v494 bundleURL];
  MEMORY[0x1EEE9AC00](v502);
  v503 = v1319;
  sub_1CA948B68();

  v504 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v505 = sub_1CA2F9F14(v1287, v1286, v1285, v501, 0, 0, &v1284 - v493, &v1284 - v503);
  v506 = v1317;
  *(v1317 + 424) = v505;
  v507 = sub_1CA94C438();
  v1286 = v508;
  v1287 = v507;
  v509 = sub_1CA94C438();
  v1285 = v510;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v509);
  sub_1CA948D98();
  v511 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v511);
  sub_1CA948B68();

  v512 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v506 + 432) = sub_1CA2F9F14(v1287, v1286, v509, v1285, 0, 0, &v1284 - v493, &v1284 - v503);
  v513 = sub_1CA94C438();
  v1286 = v514;
  v1287 = v513;
  v1285 = sub_1CA94C438();
  v516 = v515;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v1285);
  v517 = &v1284 - v493;
  sub_1CA948D98();
  v518 = v1322;
  v519 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v519);
  v520 = v1319;
  sub_1CA948B68();

  v521 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v522 = sub_1CA2F9F14(v1287, v1286, v1285, v516, 0, 0, v517, &v1284 - v520);
  v523 = v1317;
  *(v1317 + 440) = v522;
  v524 = sub_1CA94C438();
  v1286 = v525;
  v1287 = v524;
  v526 = sub_1CA94C438();
  v1285 = v527;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v526);
  v528 = v1320;
  sub_1CA948D98();
  v529 = [v518 bundleURL];
  MEMORY[0x1EEE9AC00](v529);
  sub_1CA948B68();

  v530 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v523 + 448) = sub_1CA2F9F14(v1287, v1286, v526, v1285, 0, 0, &v1284 - v528, &v1284 - v520);
  v531 = sub_1CA94C438();
  v1286 = v532;
  v1287 = v531;
  v533 = sub_1CA94C438();
  v535 = v534;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v533);
  v536 = &v1284 - v528;
  sub_1CA948D98();
  v537 = v1322;
  v538 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v538);
  sub_1CA948B68();

  v539 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v540 = sub_1CA2F9F14(v1287, v1286, v533, v535, 0, 0, v536, &v1284 - v520);
  v541 = v1317;
  *(v1317 + 456) = v540;
  v542 = sub_1CA94C438();
  v1286 = v543;
  v1287 = v542;
  v544 = sub_1CA94C438();
  v1285 = v545;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v544);
  v546 = &v1284 - v1320;
  sub_1CA948D98();
  v547 = [v537 bundleURL];
  MEMORY[0x1EEE9AC00](v547);
  sub_1CA948B68();

  v548 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v541 + 464) = sub_1CA2F9F14(v1287, v1286, v544, v1285, 0, 0, v546, &v1284 - v520);
  v549 = sub_1CA94C438();
  v1286 = v550;
  v1287 = v549;
  v551 = sub_1CA94C438();
  v1285 = v552;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v551);
  v553 = v1320;
  sub_1CA948D98();
  v554 = v1322;
  v555 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v555);
  sub_1CA948B68();

  v556 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v557 = sub_1CA2F9F14(v1287, v1286, v551, v1285, 0, 0, &v1284 - v553, &v1284 - v520);
  v558 = v1317;
  *(v1317 + 472) = v557;
  v559 = sub_1CA94C438();
  v1286 = v560;
  v1287 = v559;
  v561 = sub_1CA94C438();
  v1285 = v562;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v561);
  v563 = &v1284 - v553;
  sub_1CA948D98();
  v564 = [v554 bundleURL];
  MEMORY[0x1EEE9AC00](v564);
  v565 = v1319;
  sub_1CA948B68();

  v566 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v558 + 480) = sub_1CA2F9F14(v1287, v1286, v561, v1285, 0, 0, v563, &v1284 - v565);
  v567 = sub_1CA94C438();
  v1286 = v568;
  v1287 = v567;
  v569 = sub_1CA94C438();
  v1285 = v570;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v569);
  v571 = v1320;
  sub_1CA948D98();
  v572 = v1322;
  v573 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v573);
  sub_1CA948B68();

  v574 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v575 = sub_1CA2F9F14(v1287, v1286, v569, v1285, 0, 0, &v1284 - v571, &v1284 - v565);
  v576 = v1317;
  *(v1317 + 488) = v575;
  v577 = sub_1CA94C438();
  v1286 = v578;
  v1287 = v577;
  v579 = sub_1CA94C438();
  v1285 = v580;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v579);
  v581 = &v1284 - v571;
  sub_1CA948D98();
  v582 = [v572 bundleURL];
  MEMORY[0x1EEE9AC00](v582);
  v583 = v1319;
  sub_1CA948B68();

  v584 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v576 + 496) = sub_1CA2F9F14(v1287, v1286, v579, v1285, 0, 0, v581, &v1284 - v583);
  v585 = sub_1CA94C438();
  v1286 = v586;
  v1287 = v585;
  v587 = sub_1CA94C438();
  v1285 = v588;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v587);
  v589 = v1320;
  sub_1CA948D98();
  v590 = v1322;
  v591 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v591);
  sub_1CA948B68();

  v592 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v593 = sub_1CA2F9F14(v1287, v1286, v587, v1285, 0, 0, &v1284 - v589, &v1284 - v583);
  v594 = v1317;
  *(v1317 + 504) = v593;
  v595 = sub_1CA94C438();
  v1286 = v596;
  v1287 = v595;
  v597 = sub_1CA94C438();
  v1285 = v598;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v597);
  sub_1CA948D98();
  v599 = [v590 bundleURL];
  MEMORY[0x1EEE9AC00](v599);
  sub_1CA948B68();

  v600 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v594 + 512) = sub_1CA2F9F14(v1287, v1286, v597, v1285, 0, 0, &v1284 - v589, &v1284 - v583);
  v601 = sub_1CA94C438();
  v1286 = v602;
  v1287 = v601;
  v603 = sub_1CA94C438();
  v605 = v604;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v603);
  v606 = v1320;
  sub_1CA948D98();
  v607 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v607);
  sub_1CA948B68();

  v608 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v609 = sub_1CA2F9F14(v1287, v1286, v603, v605, 0, 0, &v1284 - v606, &v1284 - v583);
  v610 = v1317;
  *(v1317 + 520) = v609;
  v611 = sub_1CA94C438();
  v1286 = v612;
  v1287 = v611;
  v613 = sub_1CA94C438();
  v1285 = v614;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v613);
  sub_1CA948D98();
  v615 = v1322;
  v616 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v616);
  v617 = &v1284 - v1319;
  sub_1CA948B68();

  v618 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v610 + 528) = sub_1CA2F9F14(v1287, v1286, v613, v1285, 0, 0, &v1284 - v606, v617);
  v619 = sub_1CA94C438();
  v1286 = v620;
  v1287 = v619;
  v621 = sub_1CA94C438();
  v1285 = v622;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v621);
  v623 = v1320;
  sub_1CA948D98();
  v624 = [v615 bundleURL];
  MEMORY[0x1EEE9AC00](v624);
  v625 = v1319;
  sub_1CA948B68();

  v626 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v610 + 536) = sub_1CA2F9F14(v1287, v1286, v621, v1285, 0, 0, &v1284 - v623, &v1284 - v625);
  v627 = sub_1CA94C438();
  v1286 = v628;
  v1287 = v627;
  v629 = sub_1CA94C438();
  v1285 = v630;
  v1288 = &v1284;
  MEMORY[0x1EEE9AC00](v629);
  sub_1CA948D98();
  v631 = v1322;
  v632 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v632);
  sub_1CA948B68();

  v633 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v634 = sub_1CA2F9F14(v1287, v1286, v629, v1285, 0, 0, &v1284 - v623, &v1284 - v625);
  v635 = v1317;
  *(v1317 + 544) = v634;
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v1288 = v636;
  v637 = v1289;
  v1289[15] = v635;
  v638 = v1308;
  v637[18] = v636;
  v637[19] = v638;
  v639 = sub_1CA94C438();
  v1286 = v640;
  v1287 = v639;
  v641 = sub_1CA94C438();
  v643 = v642;
  *&v1317 = &v1284;
  MEMORY[0x1EEE9AC00](v641);
  v644 = &v1284 - v1320;
  sub_1CA948D98();
  v645 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v645);
  sub_1CA948B68();

  v646 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v647 = sub_1CA2F9F14(v1287, v1286, v641, v643, 0, 0, v644, &v1284 - v625);
  v637[23] = v1316;
  v637[20] = v647;
  sub_1CA94C1E8();
  v648 = v1312;
  v649 = sub_1CA2F864C();
  v650 = v1290;
  *(v1290 + 240) = v649;
  *(v650 + 264) = v648;
  *(v650 + 272) = 0x654B656372756F53;
  *(v650 + 280) = v1313;
  strcpy((v650 + 288), "FromLanguage");
  *(v650 + 301) = 0;
  *(v650 + 302) = -5120;
  v651 = MEMORY[0x1E69E6158];
  *(v650 + 312) = MEMORY[0x1E69E6158];
  *(v650 + 320) = 0x7954656372756F53;
  *(v650 + 328) = 0xEA00000000006570;
  *(v650 + 336) = 0x6574656D61726150;
  *(v650 + 344) = v1307;
  *(v650 + 360) = v651;
  strcpy((v650 + 368), "ValueMapping");
  *(v650 + 381) = 0;
  *(v650 + 382) = -5120;
  v652 = v651;
  v653 = sub_1CA94C1E8();
  *(v650 + 408) = v1311;
  *(v650 + 384) = v653;
  *(v1314 + 48) = sub_1CA94C1E8();
  v654 = swift_allocObject();
  v1315 = v654;
  *(v654 + 16) = v1304;
  strcpy((v654 + 32), "DestinationKey");
  *(v654 + 47) = -18;
  *(v654 + 48) = 28532;
  *(v654 + 56) = 0xE200000000000000;
  *(v654 + 72) = v652;
  *(v654 + 80) = 0x74616E6974736544;
  *(v654 + 88) = 0xEF657079546E6F69;
  *(v654 + 96) = 0x74736275534C5255;
  *(v654 + 104) = 0xEF6E6F6974757469;
  *(v654 + 120) = v652;
  *(v654 + 128) = 0x73616C436D657449;
  *(v654 + 136) = 0xE900000000000073;
  *(v654 + 144) = 0xD000000000000013;
  *(v654 + 152) = v1303;
  v655 = v1309;
  *(v654 + 168) = v652;
  *(v654 + 176) = v655;
  *(v654 + 184) = v1294;
  *(v654 + 192) = 0x6873696C676E45;
  *(v654 + 200) = 0xE700000000000000;
  *(v654 + 216) = v652;
  *(v654 + 224) = 0x6574656D61726150;
  *(v654 + 232) = 0xEB00000000495572;
  v656 = swift_allocObject();
  *&v1304 = v656;
  *(v656 + 16) = xmmword_1CA9813C0;
  v658 = v1292;
  v657 = v1293;
  *(v656 + 32) = v1301;
  *(v656 + 40) = v658;
  *(v656 + 48) = v657;
  v659 = v1291;
  *(v656 + 64) = v652;
  *(v656 + 72) = v659;
  *&v1317 = swift_allocObject();
  *(v1317 + 16) = xmmword_1CA988F40;
  v660 = sub_1CA94C438();
  v1301 = v661;
  v1302 = v660;
  v662 = sub_1CA94C438();
  v1294 = v663;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v662);
  v664 = v1320;
  sub_1CA948D98();
  v665 = v1322;
  v666 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v666);
  v667 = &v1284 - v1319;
  sub_1CA948B68();

  v668 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v669 = sub_1CA2F9F14(v1302, v1301, v662, v1294, 0, 0, &v1284 - v664, v667);
  *(v1317 + 32) = v669;
  v670 = sub_1CA94C438();
  v1301 = v671;
  v1302 = v670;
  v1294 = sub_1CA94C438();
  v673 = v672;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1294);
  sub_1CA948D98();
  v674 = [v665 bundleURL];
  MEMORY[0x1EEE9AC00](v674);
  v675 = v1319;
  sub_1CA948B68();

  v676 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v677 = sub_1CA2F9F14(v1302, v1301, v1294, v673, 0, 0, &v1284 - v664, &v1284 - v675);
  v678 = v1317;
  *(v1317 + 40) = v677;
  v679 = sub_1CA94C438();
  v1301 = v680;
  v1302 = v679;
  v681 = sub_1CA94C438();
  v1294 = v682;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v681);
  sub_1CA948D98();
  v683 = v1322;
  v684 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v684);
  sub_1CA948B68();

  v685 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v678 + 48) = sub_1CA2F9F14(v1302, v1301, v681, v1294, 0, 0, &v1284 - v664, &v1284 - v675);
  v686 = sub_1CA94C438();
  v1301 = v687;
  v1302 = v686;
  v688 = sub_1CA94C438();
  v1294 = v689;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v688);
  v690 = v1320;
  sub_1CA948D98();
  v691 = [v683 bundleURL];
  MEMORY[0x1EEE9AC00](v691);
  v692 = v1319;
  sub_1CA948B68();

  v693 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v694 = sub_1CA2F9F14(v1302, v1301, v688, v1294, 0, 0, &v1284 - v690, &v1284 - v692);
  *(v1317 + 56) = v694;
  v695 = sub_1CA94C438();
  v1301 = v696;
  v1302 = v695;
  v697 = sub_1CA94C438();
  v1294 = v698;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v697);
  sub_1CA948D98();
  v699 = v1322;
  v700 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v700);
  sub_1CA948B68();

  v701 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v702 = sub_1CA2F9F14(v1302, v1301, v697, v1294, 0, 0, &v1284 - v690, &v1284 - v692);
  v703 = v1317;
  *(v1317 + 64) = v702;
  v704 = sub_1CA94C438();
  v1301 = v705;
  v1302 = v704;
  v1294 = sub_1CA94C438();
  v707 = v706;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1294);
  v708 = &v1284 - v1320;
  sub_1CA948D98();
  v709 = [v699 bundleURL];
  MEMORY[0x1EEE9AC00](v709);
  sub_1CA948B68();

  v710 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v703 + 72) = sub_1CA2F9F14(v1302, v1301, v1294, v707, 0, 0, v708, &v1284 - v692);
  v711 = sub_1CA94C438();
  v1301 = v712;
  v1302 = v711;
  v713 = sub_1CA94C438();
  v1294 = v714;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v713);
  v715 = v1320;
  sub_1CA948D98();
  v716 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v716);
  sub_1CA948B68();

  v717 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v718 = sub_1CA2F9F14(v1302, v1301, v713, v1294, 0, 0, &v1284 - v715, &v1284 - v692);
  v719 = v1317;
  *(v1317 + 80) = v718;
  v720 = sub_1CA94C438();
  v1301 = v721;
  v1302 = v720;
  v722 = sub_1CA94C438();
  v1294 = v723;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v722);
  v724 = &v1284 - v715;
  sub_1CA948D98();
  v725 = v1322;
  v726 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v726);
  v727 = &v1284 - v1319;
  sub_1CA948B68();

  v728 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v719 + 88) = sub_1CA2F9F14(v1302, v1301, v722, v1294, 0, 0, v724, v727);
  v729 = sub_1CA94C438();
  v1301 = v730;
  v1302 = v729;
  v731 = sub_1CA94C438();
  v1294 = v732;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v731);
  v733 = &v1284 - v1320;
  sub_1CA948D98();
  v734 = v725;
  v735 = [v725 bundleURL];
  MEMORY[0x1EEE9AC00](v735);
  v736 = v1319;
  sub_1CA948B68();

  v737 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v738 = sub_1CA2F9F14(v1302, v1301, v731, v1294, 0, 0, v733, &v1284 - v736);
  *(v1317 + 96) = v738;
  v739 = sub_1CA94C438();
  v1301 = v740;
  v1302 = v739;
  v741 = sub_1CA94C438();
  v1294 = v742;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v741);
  v743 = v1320;
  sub_1CA948D98();
  v744 = [v734 bundleURL];
  MEMORY[0x1EEE9AC00](v744);
  sub_1CA948B68();

  v745 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v746 = sub_1CA2F9F14(v1302, v1301, v741, v1294, 0, 0, &v1284 - v743, &v1284 - v736);
  v747 = v1317;
  *(v1317 + 104) = v746;
  v748 = sub_1CA94C438();
  v1301 = v749;
  v1302 = v748;
  v750 = sub_1CA94C438();
  v1294 = v751;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v750);
  v752 = &v1284 - v743;
  sub_1CA948D98();
  v753 = v1322;
  v754 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v754);
  v755 = v1319;
  sub_1CA948B68();

  v756 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v747 + 112) = sub_1CA2F9F14(v1302, v1301, v750, v1294, 0, 0, v752, &v1284 - v755);
  v757 = sub_1CA94C438();
  v1301 = v758;
  v1302 = v757;
  v759 = sub_1CA94C438();
  v1294 = v760;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v759);
  v761 = v1320;
  sub_1CA948D98();
  v762 = [v753 bundleURL];
  MEMORY[0x1EEE9AC00](v762);
  sub_1CA948B68();

  v763 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v764 = sub_1CA2F9F14(v1302, v1301, v759, v1294, 0, 0, &v1284 - v761, &v1284 - v755);
  v765 = v1317;
  *(v1317 + 120) = v764;
  v766 = sub_1CA94C438();
  v1301 = v767;
  v1302 = v766;
  v768 = sub_1CA94C438();
  v1294 = v769;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v768);
  v770 = &v1284 - v761;
  sub_1CA948D98();
  v771 = v1322;
  v772 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v772);
  sub_1CA948B68();

  v773 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v765 + 128) = sub_1CA2F9F14(v1302, v1301, v768, v1294, 0, 0, v770, &v1284 - v755);
  v774 = sub_1CA94C438();
  v1301 = v775;
  v1302 = v774;
  v776 = sub_1CA94C438();
  v778 = v777;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v776);
  v779 = &v1284 - v1320;
  sub_1CA948D98();
  v780 = [v771 bundleURL];
  MEMORY[0x1EEE9AC00](v780);
  sub_1CA948B68();

  v781 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v782 = sub_1CA2F9F14(v1302, v1301, v776, v778, 0, 0, v779, &v1284 - v755);
  v783 = v1317;
  *(v1317 + 136) = v782;
  v784 = sub_1CA94C438();
  v1301 = v785;
  v1302 = v784;
  v1294 = sub_1CA94C438();
  v787 = v786;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1294);
  v788 = v1320;
  sub_1CA948D98();
  v789 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v789);
  sub_1CA948B68();

  v790 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v783 + 144) = sub_1CA2F9F14(v1302, v1301, v1294, v787, 0, 0, &v1284 - v788, &v1284 - v755);
  v791 = sub_1CA94C438();
  v1301 = v792;
  v1302 = v791;
  v793 = sub_1CA94C438();
  v1294 = v794;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v793);
  v795 = &v1284 - v788;
  sub_1CA948D98();
  v796 = v1322;
  v797 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v797);
  sub_1CA948B68();

  v798 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v799 = sub_1CA2F9F14(v1302, v1301, v793, v1294, 0, 0, v795, &v1284 - v755);
  v800 = v1317;
  *(v1317 + 152) = v799;
  v801 = sub_1CA94C438();
  v1301 = v802;
  v1302 = v801;
  v803 = sub_1CA94C438();
  v1294 = v804;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v803);
  v805 = v1320;
  sub_1CA948D98();
  v806 = [v796 bundleURL];
  MEMORY[0x1EEE9AC00](v806);
  v807 = v1319;
  sub_1CA948B68();

  v808 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v800 + 160) = sub_1CA2F9F14(v1302, v1301, v803, v1294, 0, 0, &v1284 - v805, &v1284 - v807);
  v809 = sub_1CA94C438();
  v1301 = v810;
  v1302 = v809;
  v1294 = sub_1CA94C438();
  v812 = v811;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1294);
  sub_1CA948D98();
  v813 = v1322;
  v814 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v814);
  sub_1CA948B68();

  v815 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v816 = sub_1CA2F9F14(v1302, v1301, v1294, v812, 0, 0, &v1284 - v805, &v1284 - v807);
  *(v1317 + 168) = v816;
  v817 = sub_1CA94C438();
  v1301 = v818;
  v1302 = v817;
  v819 = sub_1CA94C438();
  v1294 = v820;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v819);
  v821 = v1320;
  sub_1CA948D98();
  v822 = [v813 bundleURL];
  MEMORY[0x1EEE9AC00](v822);
  v823 = v1319;
  sub_1CA948B68();

  v824 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v825 = sub_1CA2F9F14(v1302, v1301, v819, v1294, 0, 0, &v1284 - v821, &v1284 - v823);
  v826 = v1317;
  *(v1317 + 176) = v825;
  v827 = sub_1CA94C438();
  v1301 = v828;
  v1302 = v827;
  v829 = sub_1CA94C438();
  v1294 = v830;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v829);
  sub_1CA948D98();
  v831 = v1322;
  v832 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v832);
  sub_1CA948B68();

  v833 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v826 + 184) = sub_1CA2F9F14(v1302, v1301, v829, v1294, 0, 0, &v1284 - v821, &v1284 - v823);
  v834 = sub_1CA94C438();
  v1301 = v835;
  v1302 = v834;
  v836 = sub_1CA94C438();
  v1294 = v837;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v836);
  v838 = v1320;
  sub_1CA948D98();
  v839 = [v831 bundleURL];
  MEMORY[0x1EEE9AC00](v839);
  v840 = v1319;
  sub_1CA948B68();

  v841 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v842 = sub_1CA2F9F14(v1302, v1301, v836, v1294, 0, 0, &v1284 - v838, &v1284 - v840);
  *(v1317 + 192) = v842;
  v843 = sub_1CA94C438();
  v1301 = v844;
  v1302 = v843;
  v845 = sub_1CA94C438();
  v1294 = v846;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v845);
  v847 = &v1284 - v838;
  sub_1CA948D98();
  v848 = v1322;
  v849 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v849);
  sub_1CA948B68();

  v850 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v851 = sub_1CA2F9F14(v1302, v1301, v845, v1294, 0, 0, v847, &v1284 - v840);
  v852 = v1317;
  *(v1317 + 200) = v851;
  v853 = sub_1CA94C438();
  v1301 = v854;
  v1302 = v853;
  v855 = sub_1CA94C438();
  v1294 = v856;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v855);
  v857 = &v1284 - v1320;
  sub_1CA948D98();
  v858 = [v848 bundleURL];
  MEMORY[0x1EEE9AC00](v858);
  v859 = &v1284 - v1319;
  sub_1CA948B68();

  v860 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v852 + 208) = sub_1CA2F9F14(v1302, v1301, v855, v1294, 0, 0, v857, v859);
  v861 = sub_1CA94C438();
  v1301 = v862;
  v1302 = v861;
  v863 = sub_1CA94C438();
  v1294 = v864;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v863);
  v865 = v1320;
  sub_1CA948D98();
  v866 = [v848 bundleURL];
  MEMORY[0x1EEE9AC00](v866);
  v867 = v1319;
  sub_1CA948B68();

  v868 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v869 = sub_1CA2F9F14(v1302, v1301, v863, v1294, 0, 0, &v1284 - v865, &v1284 - v867);
  v870 = v1317;
  *(v1317 + 216) = v869;
  v871 = sub_1CA94C438();
  v1301 = v872;
  v1302 = v871;
  v873 = sub_1CA94C438();
  v1294 = v874;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v873);
  v875 = &v1284 - v865;
  sub_1CA948D98();
  v876 = v1322;
  v877 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v877);
  sub_1CA948B68();

  v878 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v870 + 224) = sub_1CA2F9F14(v1302, v1301, v873, v1294, 0, 0, v875, &v1284 - v867);
  v879 = sub_1CA94C438();
  v1301 = v880;
  v1302 = v879;
  v881 = sub_1CA94C438();
  v1294 = v882;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v881);
  v883 = v1320;
  sub_1CA948D98();
  v884 = [v876 bundleURL];
  MEMORY[0x1EEE9AC00](v884);
  v885 = v1319;
  sub_1CA948B68();

  v886 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v887 = sub_1CA2F9F14(v1302, v1301, v881, v1294, 0, 0, &v1284 - v883, &v1284 - v885);
  v888 = v1317;
  *(v1317 + 232) = v887;
  v889 = sub_1CA94C438();
  v1301 = v890;
  v1302 = v889;
  v891 = sub_1CA94C438();
  v1294 = v892;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v891);
  v893 = &v1284 - v883;
  sub_1CA948D98();
  v894 = v1322;
  v895 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v895);
  sub_1CA948B68();

  v896 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v888 + 240) = sub_1CA2F9F14(v1302, v1301, v891, v1294, 0, 0, v893, &v1284 - v885);
  v897 = sub_1CA94C438();
  v1301 = v898;
  v1302 = v897;
  v899 = sub_1CA94C438();
  v1294 = v900;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v899);
  v901 = &v1284 - v1320;
  sub_1CA948D98();
  v902 = [v894 bundleURL];
  MEMORY[0x1EEE9AC00](v902);
  v903 = v1319;
  sub_1CA948B68();

  v904 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v905 = sub_1CA2F9F14(v1302, v1301, v899, v1294, 0, 0, v901, &v1284 - v903);
  v906 = v1317;
  *(v1317 + 248) = v905;
  v907 = sub_1CA94C438();
  v1301 = v908;
  v1302 = v907;
  v909 = sub_1CA94C438();
  v1294 = v910;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v909);
  v911 = v1320;
  sub_1CA948D98();
  v912 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v912);
  sub_1CA948B68();

  v913 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v906 + 256) = sub_1CA2F9F14(v1302, v1301, v909, v1294, 0, 0, &v1284 - v911, &v1284 - v903);
  v914 = sub_1CA94C438();
  v1301 = v915;
  v1302 = v914;
  v916 = sub_1CA94C438();
  v918 = v917;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v916);
  sub_1CA948D98();
  v919 = v1322;
  v920 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v920);
  v921 = &v1284 - v1319;
  sub_1CA948B68();

  v922 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v923 = sub_1CA2F9F14(v1302, v1301, v916, v918, 0, 0, &v1284 - v911, v921);
  v924 = v1317;
  *(v1317 + 264) = v923;
  v925 = sub_1CA94C438();
  v1301 = v926;
  v1302 = v925;
  v927 = sub_1CA94C438();
  v1294 = v928;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v927);
  v929 = v1320;
  sub_1CA948D98();
  v930 = [v919 bundleURL];
  MEMORY[0x1EEE9AC00](v930);
  v931 = v1319;
  sub_1CA948B68();

  v932 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v924 + 272) = sub_1CA2F9F14(v1302, v1301, v927, v1294, 0, 0, &v1284 - v929, &v1284 - v931);
  v933 = sub_1CA94C438();
  v1301 = v934;
  v1302 = v933;
  v935 = sub_1CA94C438();
  v1294 = v936;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v935);
  v937 = &v1284 - v929;
  sub_1CA948D98();
  v938 = v1322;
  v939 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v939);
  sub_1CA948B68();

  v940 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v941 = sub_1CA2F9F14(v1302, v1301, v935, v1294, 0, 0, v937, &v1284 - v931);
  v942 = v1317;
  *(v1317 + 280) = v941;
  v943 = sub_1CA94C438();
  v1301 = v944;
  v1302 = v943;
  v945 = sub_1CA94C438();
  v1294 = v946;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v945);
  v947 = v1320;
  sub_1CA948D98();
  v948 = [v938 bundleURL];
  MEMORY[0x1EEE9AC00](v948);
  v949 = v1319;
  sub_1CA948B68();

  v950 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v942 + 288) = sub_1CA2F9F14(v1302, v1301, v945, v1294, 0, 0, &v1284 - v947, &v1284 - v949);
  v951 = sub_1CA94C438();
  v1301 = v952;
  v1302 = v951;
  v953 = sub_1CA94C438();
  v1294 = v954;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v953);
  v955 = &v1284 - v947;
  sub_1CA948D98();
  v956 = v1322;
  v957 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v957);
  sub_1CA948B68();

  v958 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v959 = sub_1CA2F9F14(v1302, v1301, v953, v1294, 0, 0, v955, &v1284 - v949);
  v960 = v1317;
  *(v1317 + 296) = v959;
  v961 = sub_1CA94C438();
  v1301 = v962;
  v1302 = v961;
  v963 = sub_1CA94C438();
  v1294 = v964;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v963);
  v965 = v1320;
  sub_1CA948D98();
  v966 = [v956 bundleURL];
  MEMORY[0x1EEE9AC00](v966);
  v967 = v1319;
  sub_1CA948B68();

  v968 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v960 + 304) = sub_1CA2F9F14(v1302, v1301, v963, v1294, 0, 0, &v1284 - v965, &v1284 - v967);
  v969 = sub_1CA94C438();
  v1301 = v970;
  v1302 = v969;
  v971 = sub_1CA94C438();
  v1294 = v972;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v971);
  v973 = &v1284 - v965;
  sub_1CA948D98();
  v974 = v1322;
  v975 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v975);
  sub_1CA948B68();

  v976 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v977 = sub_1CA2F9F14(v1302, v1301, v971, v1294, 0, 0, v973, &v1284 - v967);
  v978 = v1317;
  *(v1317 + 312) = v977;
  v979 = sub_1CA94C438();
  v1301 = v980;
  v1302 = v979;
  v981 = sub_1CA94C438();
  v1294 = v982;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v981);
  v983 = v1320;
  sub_1CA948D98();
  v984 = [v974 bundleURL];
  MEMORY[0x1EEE9AC00](v984);
  v985 = v1319;
  sub_1CA948B68();

  v986 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v978 + 320) = sub_1CA2F9F14(v1302, v1301, v981, v1294, 0, 0, &v1284 - v983, &v1284 - v985);
  v987 = sub_1CA94C438();
  v1301 = v988;
  v1302 = v987;
  v989 = sub_1CA94C438();
  v1294 = v990;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v989);
  v991 = &v1284 - v983;
  sub_1CA948D98();
  v992 = v1322;
  v993 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v993);
  sub_1CA948B68();

  v994 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v995 = sub_1CA2F9F14(v1302, v1301, v989, v1294, 0, 0, v991, &v1284 - v985);
  v996 = v1317;
  *(v1317 + 328) = v995;
  v997 = sub_1CA94C438();
  v1301 = v998;
  v1302 = v997;
  v999 = sub_1CA94C438();
  v1001 = v1000;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v999);
  v1002 = v1320;
  sub_1CA948D98();
  v1003 = [v992 bundleURL];
  MEMORY[0x1EEE9AC00](v1003);
  v1004 = v1319;
  sub_1CA948B68();

  v1005 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v996 + 336) = sub_1CA2F9F14(v1302, v1301, v999, v1001, 0, 0, &v1284 - v1002, &v1284 - v1004);
  v1006 = sub_1CA94C438();
  v1301 = v1007;
  v1302 = v1006;
  v1294 = sub_1CA94C438();
  v1009 = v1008;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1294);
  v1010 = &v1284 - v1002;
  sub_1CA948D98();
  v1011 = v1322;
  v1012 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1012);
  sub_1CA948B68();

  v1013 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1014 = sub_1CA2F9F14(v1302, v1301, v1294, v1009, 0, 0, v1010, &v1284 - v1004);
  v1015 = v1317;
  *(v1317 + 344) = v1014;
  v1016 = sub_1CA94C438();
  v1301 = v1017;
  v1302 = v1016;
  v1018 = sub_1CA94C438();
  v1294 = v1019;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1018);
  v1020 = v1320;
  sub_1CA948D98();
  v1021 = [v1011 bundleURL];
  MEMORY[0x1EEE9AC00](v1021);
  v1022 = v1319;
  sub_1CA948B68();

  v1023 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1015 + 352) = sub_1CA2F9F14(v1302, v1301, v1018, v1294, 0, 0, &v1284 - v1020, &v1284 - v1022);
  v1024 = sub_1CA94C438();
  v1301 = v1025;
  v1302 = v1024;
  v1026 = sub_1CA94C438();
  v1294 = v1027;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1026);
  v1028 = &v1284 - v1020;
  sub_1CA948D98();
  v1029 = v1322;
  v1030 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1030);
  sub_1CA948B68();

  v1031 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1032 = sub_1CA2F9F14(v1302, v1301, v1026, v1294, 0, 0, v1028, &v1284 - v1022);
  v1033 = v1317;
  *(v1317 + 360) = v1032;
  v1034 = sub_1CA94C438();
  v1301 = v1035;
  v1302 = v1034;
  v1036 = sub_1CA94C438();
  v1294 = v1037;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1036);
  v1038 = v1320;
  sub_1CA948D98();
  v1039 = [v1029 bundleURL];
  MEMORY[0x1EEE9AC00](v1039);
  v1040 = v1319;
  sub_1CA948B68();

  v1041 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1033 + 368) = sub_1CA2F9F14(v1302, v1301, v1036, v1294, 0, 0, &v1284 - v1038, &v1284 - v1040);
  v1042 = sub_1CA94C438();
  v1301 = v1043;
  v1302 = v1042;
  v1044 = sub_1CA94C438();
  v1294 = v1045;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1044);
  sub_1CA948D98();
  v1046 = v1322;
  v1047 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1047);
  sub_1CA948B68();

  v1048 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1049 = sub_1CA2F9F14(v1302, v1301, v1044, v1294, 0, 0, &v1284 - v1038, &v1284 - v1040);
  v1050 = v1317;
  *(v1317 + 376) = v1049;
  v1051 = sub_1CA94C438();
  v1301 = v1052;
  v1302 = v1051;
  v1053 = sub_1CA94C438();
  v1294 = v1054;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1053);
  v1055 = &v1284 - v1038;
  sub_1CA948D98();
  v1056 = [v1046 bundleURL];
  MEMORY[0x1EEE9AC00](v1056);
  v1057 = v1319;
  sub_1CA948B68();

  v1058 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1050 + 384) = sub_1CA2F9F14(v1302, v1301, v1053, v1294, 0, 0, v1055, &v1284 - v1057);
  v1059 = sub_1CA94C438();
  v1301 = v1060;
  v1302 = v1059;
  v1061 = sub_1CA94C438();
  v1063 = v1062;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1061);
  v1064 = v1320;
  sub_1CA948D98();
  v1065 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1065);
  sub_1CA948B68();

  v1066 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1067 = sub_1CA2F9F14(v1302, v1301, v1061, v1063, 0, 0, &v1284 - v1064, &v1284 - v1057);
  v1068 = v1317;
  *(v1317 + 392) = v1067;
  v1069 = sub_1CA94C438();
  v1301 = v1070;
  v1302 = v1069;
  v1071 = sub_1CA94C438();
  v1294 = v1072;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1071);
  sub_1CA948D98();
  v1073 = v1322;
  v1074 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1074);
  v1075 = &v1284 - v1319;
  sub_1CA948B68();

  v1076 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1068 + 400) = sub_1CA2F9F14(v1302, v1301, v1071, v1294, 0, 0, &v1284 - v1064, v1075);
  v1077 = sub_1CA94C438();
  v1301 = v1078;
  v1302 = v1077;
  v1079 = sub_1CA94C438();
  v1294 = v1080;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1079);
  v1081 = v1320;
  sub_1CA948D98();
  v1082 = [v1073 bundleURL];
  MEMORY[0x1EEE9AC00](v1082);
  v1083 = v1319;
  sub_1CA948B68();

  v1084 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1085 = sub_1CA2F9F14(v1302, v1301, v1079, v1294, 0, 0, &v1284 - v1081, &v1284 - v1083);
  v1086 = v1317;
  *(v1317 + 408) = v1085;
  v1087 = sub_1CA94C438();
  v1301 = v1088;
  v1302 = v1087;
  v1089 = sub_1CA94C438();
  v1294 = v1090;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1089);
  v1091 = &v1284 - v1081;
  sub_1CA948D98();
  v1092 = v1322;
  v1093 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1093);
  sub_1CA948B68();

  v1094 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1086 + 416) = sub_1CA2F9F14(v1302, v1301, v1089, v1294, 0, 0, v1091, &v1284 - v1083);
  v1095 = sub_1CA94C438();
  v1301 = v1096;
  v1302 = v1095;
  v1097 = sub_1CA94C438();
  v1294 = v1098;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1097);
  v1099 = v1320;
  sub_1CA948D98();
  v1100 = [v1092 bundleURL];
  MEMORY[0x1EEE9AC00](v1100);
  v1101 = v1319;
  sub_1CA948B68();

  v1102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1103 = sub_1CA2F9F14(v1302, v1301, v1097, v1294, 0, 0, &v1284 - v1099, &v1284 - v1101);
  v1104 = v1317;
  *(v1317 + 424) = v1103;
  v1105 = sub_1CA94C438();
  v1301 = v1106;
  v1302 = v1105;
  v1107 = sub_1CA94C438();
  v1294 = v1108;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1107);
  v1109 = &v1284 - v1099;
  v1110 = v1099;
  sub_1CA948D98();
  v1111 = v1322;
  v1112 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1112);
  sub_1CA948B68();

  v1113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1104 + 432) = sub_1CA2F9F14(v1302, v1301, v1107, v1294, 0, 0, v1109, &v1284 - v1101);
  v1114 = sub_1CA94C438();
  v1301 = v1115;
  v1302 = v1114;
  v1116 = sub_1CA94C438();
  v1294 = v1117;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1116);
  v1118 = &v1284 - v1110;
  sub_1CA948D98();
  v1119 = [v1111 bundleURL];
  MEMORY[0x1EEE9AC00](v1119);
  v1120 = v1319;
  sub_1CA948B68();

  v1121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1122 = sub_1CA2F9F14(v1302, v1301, v1116, v1294, 0, 0, v1118, &v1284 - v1120);
  v1123 = v1317;
  *(v1317 + 440) = v1122;
  v1124 = sub_1CA94C438();
  v1301 = v1125;
  v1302 = v1124;
  v1126 = sub_1CA94C438();
  v1294 = v1127;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1126);
  v1128 = v1320;
  sub_1CA948D98();
  v1129 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1129);
  sub_1CA948B68();

  v1130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1123 + 448) = sub_1CA2F9F14(v1302, v1301, v1126, v1294, 0, 0, &v1284 - v1128, &v1284 - v1120);
  v1131 = sub_1CA94C438();
  v1301 = v1132;
  v1302 = v1131;
  v1133 = sub_1CA94C438();
  v1135 = v1134;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1133);
  sub_1CA948D98();
  v1136 = v1322;
  v1137 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1137);
  v1138 = &v1284 - v1319;
  sub_1CA948B68();

  v1139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1140 = sub_1CA2F9F14(v1302, v1301, v1133, v1135, 0, 0, &v1284 - v1128, v1138);
  v1141 = v1317;
  *(v1317 + 456) = v1140;
  v1142 = sub_1CA94C438();
  v1301 = v1143;
  v1302 = v1142;
  v1144 = sub_1CA94C438();
  v1294 = v1145;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1144);
  v1146 = v1320;
  sub_1CA948D98();
  v1147 = [v1136 bundleURL];
  MEMORY[0x1EEE9AC00](v1147);
  v1148 = v1319;
  sub_1CA948B68();

  v1149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1141 + 464) = sub_1CA2F9F14(v1302, v1301, v1144, v1294, 0, 0, &v1284 - v1146, &v1284 - v1148);
  v1150 = sub_1CA94C438();
  v1301 = v1151;
  v1302 = v1150;
  v1152 = sub_1CA94C438();
  v1294 = v1153;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1152);
  v1154 = &v1284 - v1146;
  sub_1CA948D98();
  v1155 = v1322;
  v1156 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1156);
  sub_1CA948B68();

  v1157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1158 = sub_1CA2F9F14(v1302, v1301, v1152, v1294, 0, 0, v1154, &v1284 - v1148);
  v1159 = v1317;
  *(v1317 + 472) = v1158;
  v1160 = sub_1CA94C438();
  v1301 = v1161;
  v1302 = v1160;
  v1162 = sub_1CA94C438();
  v1294 = v1163;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1162);
  v1164 = v1320;
  sub_1CA948D98();
  v1165 = [v1155 bundleURL];
  MEMORY[0x1EEE9AC00](v1165);
  v1166 = v1319;
  sub_1CA948B68();

  v1167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1159 + 480) = sub_1CA2F9F14(v1302, v1301, v1162, v1294, 0, 0, &v1284 - v1164, &v1284 - v1166);
  v1168 = sub_1CA94C438();
  v1301 = v1169;
  v1302 = v1168;
  v1170 = sub_1CA94C438();
  v1294 = v1171;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1170);
  v1172 = &v1284 - v1164;
  sub_1CA948D98();
  v1173 = v1322;
  v1174 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1174);
  sub_1CA948B68();

  v1175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1176 = sub_1CA2F9F14(v1302, v1301, v1170, v1294, 0, 0, v1172, &v1284 - v1166);
  v1177 = v1317;
  *(v1317 + 488) = v1176;
  v1178 = sub_1CA94C438();
  v1301 = v1179;
  v1302 = v1178;
  v1180 = sub_1CA94C438();
  v1294 = v1181;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1180);
  v1182 = v1320;
  sub_1CA948D98();
  v1183 = [v1173 bundleURL];
  MEMORY[0x1EEE9AC00](v1183);
  v1184 = v1319;
  sub_1CA948B68();

  v1185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1177 + 496) = sub_1CA2F9F14(v1302, v1301, v1180, v1294, 0, 0, &v1284 - v1182, &v1284 - v1184);
  v1186 = sub_1CA94C438();
  v1301 = v1187;
  v1302 = v1186;
  v1188 = sub_1CA94C438();
  v1294 = v1189;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1188);
  sub_1CA948D98();
  v1190 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1190);
  sub_1CA948B68();

  v1191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1192 = sub_1CA2F9F14(v1302, v1301, v1188, v1294, 0, 0, &v1284 - v1182, &v1284 - v1184);
  v1193 = v1317;
  *(v1317 + 504) = v1192;
  v1194 = sub_1CA94C438();
  v1301 = v1195;
  v1302 = v1194;
  v1196 = sub_1CA94C438();
  v1294 = v1197;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1196);
  v1198 = v1320;
  sub_1CA948D98();
  v1199 = v1322;
  v1200 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1200);
  v1201 = &v1284 - v1319;
  sub_1CA948B68();

  v1202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1193 + 512) = sub_1CA2F9F14(v1302, v1301, v1196, v1294, 0, 0, &v1284 - v1198, v1201);
  v1203 = sub_1CA94C438();
  v1301 = v1204;
  v1302 = v1203;
  v1205 = sub_1CA94C438();
  v1294 = v1206;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1205);
  sub_1CA948D98();
  v1207 = [v1199 bundleURL];
  MEMORY[0x1EEE9AC00](v1207);
  v1208 = v1319;
  sub_1CA948B68();

  v1209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1210 = sub_1CA2F9F14(v1302, v1301, v1205, v1294, 0, 0, &v1284 - v1198, &v1284 - v1208);
  v1211 = v1317;
  *(v1317 + 520) = v1210;
  v1212 = sub_1CA94C438();
  v1301 = v1213;
  v1302 = v1212;
  v1214 = sub_1CA94C438();
  v1294 = v1215;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1214);
  v1216 = v1320;
  sub_1CA948D98();
  v1217 = v1322;
  v1218 = [v1322 bundleURL];
  v1293 = &v1284;
  MEMORY[0x1EEE9AC00](v1218);
  sub_1CA948B68();

  v1219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1211 + 528) = sub_1CA2F9F14(v1302, v1301, v1214, v1294, 0, 0, &v1284 - v1216, &v1284 - v1208);
  v1220 = sub_1CA94C438();
  v1301 = v1221;
  v1302 = v1220;
  v1294 = sub_1CA94C438();
  v1223 = v1222;
  v1303 = &v1284;
  MEMORY[0x1EEE9AC00](v1294);
  v1224 = &v1284 - v1216;
  sub_1CA948D98();
  v1225 = [v1217 bundleURL];
  MEMORY[0x1EEE9AC00](v1225);
  v1226 = v1319;
  sub_1CA948B68();

  v1227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1228 = sub_1CA2F9F14(v1302, v1301, v1294, v1223, 0, 0, v1224, &v1284 - v1226);
  v1229 = v1304;
  v1230 = v1317;
  *(v1317 + 536) = v1228;
  v1229[10] = v1230;
  v1231 = v1308;
  v1229[13] = v1288;
  v1229[14] = v1231;
  v1308 = sub_1CA94C438();
  v1303 = v1232;
  v1233 = sub_1CA94C438();
  v1302 = v1234;
  *&v1317 = &v1284;
  MEMORY[0x1EEE9AC00](v1233);
  v1235 = &v1284 - v1320;
  sub_1CA948D98();
  v1236 = [v1217 bundleURL];
  MEMORY[0x1EEE9AC00](v1236);
  sub_1CA948B68();

  v1237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1238 = sub_1CA2F9F14(v1308, v1303, v1233, v1302, 0, 0, v1235, &v1284 - v1226);
  v1229[18] = v1316;
  v1229[15] = v1238;
  sub_1CA94C1E8();
  v1239 = v1312;
  v1240 = sub_1CA2F864C();
  v1241 = v1315;
  v1315[30] = v1240;
  *(v1241 + 264) = v1239;
  *(v1241 + 272) = 0x654B656372756F53;
  *(v1241 + 280) = v1313;
  *(v1241 + 288) = 0x6175676E614C6F54;
  *(v1241 + 296) = 0xEA00000000006567;
  v1242 = MEMORY[0x1E69E6158];
  *(v1241 + 312) = MEMORY[0x1E69E6158];
  *(v1241 + 320) = 0x7954656372756F53;
  *(v1241 + 328) = 0xEA00000000006570;
  *(v1241 + 336) = 0x6574656D61726150;
  *(v1241 + 344) = v1307;
  *(v1241 + 360) = v1242;
  strcpy((v1241 + 368), "ValueMapping");
  *(v1241 + 381) = 0;
  *(v1241 + 382) = -5120;
  v1243 = sub_1CA94C1E8();
  *(v1241 + 408) = v1311;
  *(v1241 + 384) = v1243;
  v1244 = sub_1CA94C1E8();
  v1245 = v1314;
  *(v1314 + 56) = v1244;
  v1246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *&v1317 = v1246;
  v1247 = v1295;
  v1295[30] = v1245;
  v1247[33] = v1246;
  v1247[34] = 1701667150;
  v1247[35] = 0xE400000000000000;
  v1248 = sub_1CA94C438();
  *&v1314 = v1249;
  v1250 = sub_1CA94C438();
  v1252 = v1251;
  v1315 = &v1284;
  MEMORY[0x1EEE9AC00](v1250);
  v1253 = v1320;
  sub_1CA948D98();
  v1254 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1254);
  v1255 = &v1284 - v1319;
  sub_1CA948B68();

  v1256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1257 = sub_1CA2F9F14(v1248, v1314, v1250, v1252, 0, 0, &v1284 - v1253, v1255);
  v1258 = v1316;
  v1247[36] = v1257;
  v1259 = v1309;
  v1247[39] = v1258;
  v1247[40] = v1259;
  v1247[41] = 0x80000001CA9A8F60;
  v1260 = sub_1CA94C438();
  v1315 = v1261;
  v1262 = sub_1CA94C438();
  v1264 = v1263;
  v1316 = &v1284;
  MEMORY[0x1EEE9AC00](v1262);
  sub_1CA948D98();
  v1265 = [v1322 bundleURL];
  MEMORY[0x1EEE9AC00](v1265);
  v1266 = &v1284 - v1319;
  sub_1CA948B68();

  v1267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1268 = sub_1CA2F9F14(v1260, v1315, v1262, v1264, 0, 0, &v1284 - v1253, v1266);
  v1269 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v1270 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v1247[42] = v1269;
  v1271 = v1300;
  v1247[45] = v1270;
  v1247[46] = v1271;
  v1247[47] = 0x80000001CA99B240;
  v1272 = swift_allocObject();
  *(v1272 + 16) = xmmword_1CA9813B0;
  v1323 = 2;
  v1324 = 1;
  v1273 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  WFDeviceIdiomResource.init(requirement:)(&v1323);
  *(v1272 + 32) = v1274;
  v1247[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v1247[48] = v1272;
  v1275 = MEMORY[0x1E69E6158];
  v1276 = sub_1CA94C1E8();
  v1277 = v1297;
  *(v1297 + 32) = v1276;
  v1278 = v1298;
  v1298[6] = v1277;
  v1279 = v1317;
  v1278[9] = v1317;
  v1278[10] = 0x656D65686353;
  v1278[15] = v1275;
  v1278[11] = 0xE600000000000000;
  v1278[12] = 0x616C736E61727469;
  v1278[13] = 0xEA00000000006574;
  v1280 = sub_1CA94C1E8();
  v1281 = v1299;
  *(v1299 + 32) = v1280;
  v1282 = v1296;
  *(v1296 + 216) = v1279;
  *(v1282 + 192) = v1281;
  return sub_1CA94C1E8();
}