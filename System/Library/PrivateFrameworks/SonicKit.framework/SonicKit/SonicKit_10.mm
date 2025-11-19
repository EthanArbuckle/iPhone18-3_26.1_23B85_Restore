uint64_t sub_1D4DA5F30()
{
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2096) = v0;

  v4 = OUTLINED_FUNCTION_292();
  v5(v4);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4DA60DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = v12;
  v167 = v12 + 89;
  v14 = v12[255];
  OUTLINED_FUNCTION_62();
  v15();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  v16 = OUTLINED_FUNCTION_146_0();
  v14(v16);
  v169 = v12[262];
  v171 = v12;
  while (1)
  {
    v17 = sub_1D4E0CCB0();
    v18 = v13[115];
    if (v18 == v17)
    {
      break;
    }

    OUTLINED_FUNCTION_136();
    v19 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_145_0();
    sub_1D4E0CC60();
    if ((v19 & 1) == 0)
    {
      sub_1D4E0CF80();
      __break(1u);
LABEL_48:
      v154 = v13[182];
      v148 = sub_1D4E0CF80();
      if (v154 == 8)
      {
        v155 = v148;
        v156 = v13[184];
        v157 = v13[181];
        v158 = v13[177];
        v13[105] = v155;
        (*(v157 + 16))(v156, v13 + 105, v158);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      __break(1u);
LABEL_53:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v148, v149, v150);
    }

    v20 = v12[205];
    v21 = v12[130];
    v22 = (v12[246] + 24 * v18);
    v23 = v22[4];
    v12[252] = v23;
    v12[253] = v22[5];
    v12[254] = v22[6];
    sub_1D4E0CA10();
    sub_1D4E0CA10();
    sub_1D4E0CCF0();
    v12[113] = v23;
    sub_1D4E0CA10();
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_5_0();
    swift_getWitnessTable();
    sub_1D4E0C9D0();

    OUTLINED_FUNCTION_118_0(v20, 1, v21);
    if (v24)
    {
      v49 = v12[205];
      v50 = v12[201];
      v51 = v12[131];
      v52 = *(v50 + 8);
      v12[255] = v52;
      v12[256] = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52(v49, v51);
      sub_1D4E0CD60();
      if (v169)
      {
        v53 = v12[124];

        goto LABEL_31;
      }

      v88 = v12[126];
      v12[257] = *(v88 + 56);
      v12[258] = (v88 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;
      sub_1D4E0C870();
      v12[259] = OUTLINED_FUNCTION_111();
      sub_1D4D8E454();
      v89 = OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_152_0(v89);
LABEL_40:
      OUTLINED_FUNCTION_156();

      return MEMORY[0x1EEE6DFA0](v148, v149, v150);
    }

    v25 = v12[130];

    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_267();
    v26();
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_162_0();
    v27();
    v28 = OUTLINED_FUNCTION_93_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v25);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_141_0();
    sub_1D4E0CD00();
    v13 = v12;
    sub_1D4E0CCD0();
    swift_endAccess();
    v31 = OUTLINED_FUNCTION_180();
    v32(v31);
  }

  v33 = v13[144];
  v34 = v13[124];
  *(v34 + *(*v34 + 216)) = 1;
  v13[108] = sub_1D4E0CC80();
  v35 = *(*v34 + 160);
  v13[263] = v35;
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v13[264] = *(v34 + v35);
  sub_1D4DB94C8();
  OUTLINED_FUNCTION_261();
  v13[265] = swift_getFunctionTypeMetadata1();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_211();
  v13[266] = OUTLINED_FUNCTION_221();
  v13[107] = sub_1D4E0CC20();
  if (v13[107] != sub_1D4E0CCB0())
  {
    OUTLINED_FUNCTION_91();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_277();
    if ((v33 & 1) == 0)
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_19_0();
    v36();
LABEL_9:
    (*(v13[181] + 32))(v13[188], v13[184], v13[177]);
    OUTLINED_FUNCTION_113_0();
    sub_1D4E0CCF0();
  }

  v37 = v13[177];
  OUTLINED_FUNCTION_172();
  v41 = OUTLINED_FUNCTION_82_0(v38, v39, v40, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v37);
  v44 = v13[194];
  if (EnumTagSinglePayload == 1)
  {
    v45 = OUTLINED_FUNCTION_104_0();
    v48 = 1;
  }

  else
  {
    v54 = v13[188];
    v55 = v13[180];
    v56 = v13[177];
    v57 = v13[149];
    v58 = v13[144];
    v59 = *(v56 + 48);
    v60 = *(v56 + 64);
    v61 = v54[1].n128_u8[0];
    v170 = *(v167 + 18);
    *v55 = *v54;
    v55[1].n128_u8[0] = v61;
    v62 = *(v56 + 48);
    v63 = *(v57 + 32);
    v63(v55 + v62, v54 + v59, v58);
    OUTLINED_FUNCTION_115_0();
    v64 = swift_allocObject();
    v65 = *(v54 + v60);
    *(v64 + 16) = v170;
    *(v64 + 32) = v65;
    OUTLINED_FUNCTION_193();
    v67 = (v44 + v66);
    v69 = OUTLINED_FUNCTION_95_0(v68, *v55);
    v63(v69, v55 + v62, v58);
    v13 = v171;
    *v67 = sub_1D4DBE048;
    v67[1] = v64;
    v45 = OUTLINED_FUNCTION_66_0();
  }

  __swift_storeEnumTagSinglePayload(v45, v46, v48, v47);
  v70 = v13[195];
  v71 = v13[194];
  v72 = v13[189];
  v73 = v13[185];
  v74 = *(v72 + 32);
  v13[267] = v74;
  v13[268] = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v74(v70, v71, v73);
  OUTLINED_FUNCTION_30_0();
  if (v24)
  {
    v75 = v13[124];

    v76 = *(*v75 + 168);
    v13[271] = v76;
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    v13[272] = *(v75 + v76);
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_47();
    v13[273] = OUTLINED_FUNCTION_221();
    v13[98] = sub_1D4E0CC20();
    if (v13[98] == sub_1D4E0CCB0())
    {
      v77 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_78();
      v90 = sub_1D4E0CCA0();
      OUTLINED_FUNCTION_157_0();
      sub_1D4E0CC60();
      if (v90)
      {
        OUTLINED_FUNCTION_19_0();
        v91();
      }

      else
      {
        v159 = v13[161];
        v148 = sub_1D4E0CF80();
        if (v159 != 8)
        {
          goto LABEL_53;
        }

        v160 = v148;
        v161 = v13[163];
        v162 = v13[160];
        v163 = v13[156];
        v13[96] = v160;
        (*(v162 + 16))(v161, v13 + 96, v163);
        swift_unknownObjectRelease();
      }

      (*(v13[160] + 32))(v13[167], v13[163], v13[156]);
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CCF0();
      v77 = 0;
    }

    v92 = v13[156];
    v93 = OUTLINED_FUNCTION_82_0(v13[167], v77, 1, v92);
    OUTLINED_FUNCTION_118_0(v93, v94, v92);
    if (!v24)
    {
      v95 = v13[173];
      v96 = v13[167];
      v97 = v13[159];
      v98 = v13[156];
      v99 = v13[149];
      v100 = v13[144];
      v101 = v13[133];
      v102 = *(v98 + 48);
      v164 = v100;
      v165 = *(v98 + 64);
      v166 = *(v101 + 32);
      v168 = *(v167 + 18);
      v103 = OUTLINED_FUNCTION_78();
      v104(v103);
      v105 = *(v98 + 48);
      v106 = *(v99 + 32);
      v106(v97 + v105, v96 + v102, v100);
      OUTLINED_FUNCTION_115_0();
      v107 = swift_allocObject();
      v108 = *(v96 + v165);
      *(v107 + 16) = v168;
      *(v107 + 32) = v108;
      v109 = *(v98 + 48);
      v110 = (v95 + *(v98 + 64));
      v111 = OUTLINED_FUNCTION_52();
      v166(v111);
      v13 = v171;
      v106(v95 + v109, v97 + v105, v164);
      OUTLINED_FUNCTION_50_0();
      *v110 = v112;
      v110[1] = v107;
    }

    v113 = v13[168];
    v114 = v13[156];
    OUTLINED_FUNCTION_172();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
    v13[274] = *(v113 + 32);
    v13[275] = (v113 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v118 = OUTLINED_FUNCTION_30();
    v119(v118);
    v120 = OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_118_0(v120, v121, v114);
    if (v24)
    {
      v122 = v13[130];

      OUTLINED_FUNCTION_200();
      v13[278] = *(v123 + 136);
      OUTLINED_FUNCTION_106_0();
      swift_beginAccess();
      v13[279] = v13[108];
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CC70();
      OUTLINED_FUNCTION_59();

      v13[94] = v122;
      OUTLINED_FUNCTION_10_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_168();
      v13[280] = sub_1D4E0CFA0();
      sub_1D4E0CD60();
      if (!v169)
      {
        v147 = v13[126];
        v13[281] = *(*v13[124] + 96);
        v13[282] = *(v147 + 56);
        v13[283] = (v147 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;
        v13[284] = sub_1D4E0C870();
        v13[285] = sub_1D4E0C860();
        v13[286] = sub_1D4D8E454();
        sub_1D4E0CD30();
        OUTLINED_FUNCTION_23_0();
        goto LABEL_40;
      }

      v53 = v13[124];

LABEL_31:

      goto LABEL_32;
    }

    v134 = v13[174];
    v135 = v13[158];
    v136 = v13[156];
    v137 = v13[149];
    v138 = v13[144];
    v139 = *(v136 + 48);
    v140 = *(v136 + 64);
    v173 = *(v134 + v140);
    v141 = OUTLINED_FUNCTION_91();
    v142(v141);
    (*(v137 + 32))(v135 + v139, v134 + v139, v138);
    *(v135 + v140) = v173;
    sub_1D4E0CD60();
    if (v169)
    {
      v143 = v13[124];
      (*(v13[157] + 8))(v13[158], v13[156]);

      v124 = v143;
      goto LABEL_33;
    }

    v152 = swift_task_alloc();
    v13[276] = v152;
    *v152 = v13;
    OUTLINED_FUNCTION_25_0(v152);
  }

  else
  {
    v78 = v13[195];
    v79 = v13[179];
    v80 = v13[177];
    v81 = v13[149];
    v82 = v13[144];
    v83 = *(v78 + 16);
    v84 = *(v80 + 48);
    v85 = *(v80 + 64);
    v172 = *(v78 + v85);
    *v79 = *v78;
    *(v79 + 16) = v83;
    (*(v81 + 32))(v79 + v84, v78 + v84, v82);
    *(v79 + v85) = v172;
    sub_1D4E0CD60();
    if (v169)
    {
      v53 = v13[124];

      v86 = OUTLINED_FUNCTION_105();
      v87(v86);
LABEL_32:
      v124 = v53;
LABEL_33:
      sub_1D4DAFEE8(v124);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_227();
      OUTLINED_FUNCTION_129_0();

      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_156();

      return v126(v125, v126, v127, v128, v129, v130, v131, v132, a9, a10, a11, a12);
    }

    v144 = v13[179];
    v145 = *(v144 + 16);
    *v167 = *v144;
    *(v167 + 16) = v145;
    v146 = swift_task_alloc();
    v13[269] = v146;
    *v146 = v13;
    OUTLINED_FUNCTION_47_0(v146);
  }

  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA6FE8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DA70F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 1424);
  *(v12 + 872) = *(v12 + 976);
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  sub_1D4E0CCC0();
  v14 = v13 + 8;
  v15 = OUTLINED_FUNCTION_30();
  v16(v15);
  v131 = *(v12 + 2160);
  if (*(v12 + 856) == sub_1D4E0CCB0())
  {
    v17 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_202();
    sub_1D4E0CC60();
    if (v14)
    {
      OUTLINED_FUNCTION_19_0();
      v18();
    }

    else
    {
      v115 = *(v12 + 1456);
      v108 = sub_1D4E0CF80();
      if (v115 != 8)
      {
        __break(1u);
        goto LABEL_43;
      }

      v116 = v108;
      OUTLINED_FUNCTION_148_0();
      *(v12 + 840) = v116;
      (*(v117 + 16))();
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_148_0();
    (*(v19 + 32))();
    OUTLINED_FUNCTION_113_0();
    sub_1D4E0CCF0();
    v17 = 0;
  }

  v20 = (v12 + 712);
  v21 = *(v12 + 1416);
  v22 = OUTLINED_FUNCTION_82_0(*(v12 + 1504), v17, 1, v21);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, v21);
  v25 = *(v12 + 1552);
  if (EnumTagSinglePayload == 1)
  {
    v26 = OUTLINED_FUNCTION_100_0();
    v29 = 1;
  }

  else
  {
    v30 = *(v12 + 1504);
    v31 = *(v12 + 1440);
    v32 = *(v12 + 1416);
    v33 = *(v12 + 1192);
    v34 = *(v12 + 1152);
    v35 = *(v32 + 48);
    *&v128 = *(v32 + 64);
    v36 = *(v30 + 16);
    v126 = *(v12 + 1000);
    *v31 = *v30;
    *(v31 + 16) = v36;
    v37 = *(v32 + 48);
    v20 = *(v33 + 32);
    v20(v31 + v37, v30 + v35, v34);
    OUTLINED_FUNCTION_115_0();
    v38 = swift_allocObject();
    v39 = *(v30 + v128);
    *(v38 + 16) = v126;
    *(v38 + 32) = v39;
    v40 = *(v31 + 16);
    v41 = *(v32 + 48);
    v42 = (v25 + *(v32 + 64));
    *v25 = *v31;
    *(v25 + 16) = v40;
    v20(v25 + v41, v31 + v37, v34);
    *v42 = sub_1D4DBE048;
    v42[1] = v38;
    v26 = OUTLINED_FUNCTION_93_0();
    v28 = v32;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, v29, v28);
  v43 = *(v12 + 1560);
  v44 = *(v12 + 1416);
  OUTLINED_FUNCTION_257(*(v12 + 1512));
  v45(v43);
  v46 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v46, v47, v44);
  if (v48)
  {
    v49 = *(v12 + 992);

    OUTLINED_FUNCTION_79();
    v51 = *(v50 + 168);
    *(v12 + 2168) = v51;
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    v52 = *(v49 + v51);
    *(v12 + 2176) = v52;
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_202();
    *(v12 + 2184) = OUTLINED_FUNCTION_221();
    *(v12 + 784) = sub_1D4E0CC20();
    if (*(v12 + 784) == sub_1D4E0CCB0())
    {
      v53 = 1;
LABEL_18:
      v62 = *(v12 + 1248);
      v63 = 1;
      __swift_storeEnumTagSinglePayload(*(v12 + 1336), v53, 1, v62);
      v64 = OUTLINED_FUNCTION_310();
      OUTLINED_FUNCTION_118_0(v64, v65, v62);
      if (!v48)
      {
        v66 = *(v12 + 1384);
        v67 = *(v12 + 1336);
        v68 = *(v12 + 1272);
        v69 = *(v12 + 1248);
        v70 = *(v12 + 1192);
        v71 = *(v12 + 1152);
        v123 = *(v69 + 48);
        v124 = v71;
        v125 = *(v69 + 64);
        v127 = *(*(v12 + 1064) + 32);
        v129 = *(v12 + 1000);
        v72 = OUTLINED_FUNCTION_136();
        v73(v72);
        v74 = *(v69 + 48);
        v75 = *(v70 + 32);
        v75(v68 + v74, v67 + v123, v71);
        OUTLINED_FUNCTION_115_0();
        v76 = swift_allocObject();
        v77 = *(v67 + v125);
        *(v76 + 16) = v129;
        *(v76 + 32) = v77;
        v78 = *(v69 + 48);
        v52 = v66 + *(v69 + 64);
        v79 = OUTLINED_FUNCTION_192();
        v127(v79);
        v75(v66 + v78, v68 + v74, v124);
        v63 = 0;
        *v52 = sub_1D4DBE048;
        *(v52 + 8) = v76;
      }

      v80 = *(v12 + 1392);
      v81 = OUTLINED_FUNCTION_60_0();
      __swift_storeEnumTagSinglePayload(v81, v63, 1, v52);
      OUTLINED_FUNCTION_260();
      OUTLINED_FUNCTION_62();
      v82();
      OUTLINED_FUNCTION_57_0(v80);
      if (!v48)
      {
        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_61_0();
        v130 = OUTLINED_FUNCTION_242(v86);
        v87 = OUTLINED_FUNCTION_91();
        v88(v87);
        v89 = OUTLINED_FUNCTION_302();
        v90(v89);
        *(v63 + v52) = v130;
        sub_1D4E0CD60();
        if (v131)
        {
          v91 = OUTLINED_FUNCTION_91_0();
          v92(v91);

          v85 = v63;
          goto LABEL_27;
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        *(v12 + 2208) = v112;
        *v112 = v113;
        OUTLINED_FUNCTION_25_0(v112);
        OUTLINED_FUNCTION_240();
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_200();
      *(v12 + 2224) = *(v83 + 136);
      OUTLINED_FUNCTION_106_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_327();
      OUTLINED_FUNCTION_113_0();
      v84 = sub_1D4E0CC70();

      *(v12 + 752) = v84;
      OUTLINED_FUNCTION_10_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_168();
      *(v12 + 2240) = sub_1D4E0CFA0();
      sub_1D4E0CD60();
      if (v131)
      {
        v57 = *(v12 + 992);

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_177();
      v106 = OUTLINED_FUNCTION_149_0(v105);
      *(v12 + 2280) = OUTLINED_FUNCTION_284(v106);
      v107 = sub_1D4D8E454();
      OUTLINED_FUNCTION_283(v107);
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_156();

      return MEMORY[0x1EEE6DFA0](v108, v109, v110);
    }

    OUTLINED_FUNCTION_136();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_175();
    OUTLINED_FUNCTION_145_0();
    sub_1D4E0CC60();
    if (v52)
    {
      OUTLINED_FUNCTION_19_0();
      v60();
LABEL_17:
      OUTLINED_FUNCTION_65();
      v61();
      sub_1D4E0CCF0();
      v53 = 0;
      goto LABEL_18;
    }

    v118 = *(v12 + 1288);
    v108 = sub_1D4E0CF80();
    if (v118 == 8)
    {
      v119 = v108;
      v120 = *(v12 + 1304);
      v121 = *(v12 + 1280);
      v122 = *(v12 + 1248);
      *(v12 + 768) = v119;
      (*(v121 + 16))(v120, v12 + 768, v122);
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

LABEL_43:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v108, v109, v110);
  }

  v54 = OUTLINED_FUNCTION_123_0();
  v55(v54);
  *(v20 + v43) = v128;
  sub_1D4E0CD60();
  v56 = *(v12 + 1432);
  if (v131)
  {
    v57 = *(v12 + 992);

    v58 = OUTLINED_FUNCTION_91();
    v59(v58);
LABEL_24:
    v85 = v57;
LABEL_27:
    sub_1D4DAFEE8(v85);
    OUTLINED_FUNCTION_289();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_129_0();

    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_156();

    return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12);
  }

  v102 = *(v56 + 16);
  *(v12 + 712) = *v56;
  *(v12 + 728) = v102;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v12 + 2152) = v103;
  *v103 = v104;
  OUTLINED_FUNCTION_47_0();
LABEL_35:
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA7B3C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2216) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DA7C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_30_0();
  if (v17)
  {
    (*(*(v12 + 1256) + 8))(*(v12 + 1264), *(v12 + 1248));
    v25 = OUTLINED_FUNCTION_105();
  }

  else
  {
    v18 = *(v12 + 1736);
    v13 = *(v12 + 1400);
    v14 = *(v12 + 1264);
    v19 = *(v12 + 1256);
    OUTLINED_FUNCTION_148();
    v20();
    OUTLINED_FUNCTION_258();
    v21 = OUTLINED_FUNCTION_58();
    v22(v21);
    sub_1D4E0CCD0();
    v15 = v18 + 8;
    v23 = OUTLINED_FUNCTION_130_0();
    v24(v23);
    v16 = v19 + 8;
    v25 = OUTLINED_FUNCTION_191();
  }

  v26(v25);
  v27 = *(v12 + 2216);
  v28 = sub_1D4E0CCB0();
  if (*(v12 + 784) == v28)
  {
    v29 = 1;
  }

  else
  {
    v30 = *(v12 + 2184);
    OUTLINED_FUNCTION_130_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_202();
    sub_1D4E0CC60();
    if (v13)
    {
      OUTLINED_FUNCTION_19_0();
      v31();
    }

    else
    {
      v72 = OUTLINED_FUNCTION_326();
      if (v30 != 8)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v72, v73, v74);
      }

      v79 = OUTLINED_FUNCTION_212(v72);
      v80(v79);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_65();
    v32();
    OUTLINED_FUNCTION_113_0();
    v28 = sub_1D4E0CCF0();
    v29 = 0;
  }

  OUTLINED_FUNCTION_16_0(v28, v29);
  if (!v17)
  {
    v33 = *(v12 + 1336);
    OUTLINED_FUNCTION_89_0();
    v82 = *(v16 + 64);
    v83 = *(v13 + 32);
    v34 = OUTLINED_FUNCTION_102_0((v12 + 1000));
    v35(v34);
    v14 = *(v16 + 48);
    v36 = *(v15 + 32);
    v37 = OUTLINED_FUNCTION_101_0();
    v36(v37);
    OUTLINED_FUNCTION_115_0();
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_97_0(v38, *(v33 + v82), v81);
    v83(v39);
    v40 = OUTLINED_FUNCTION_230();
    v36(v40);
    OUTLINED_FUNCTION_50_0();
    *v16 = v41;
    *(v16 + 8) = v38;
  }

  v42 = *(v12 + 1392);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_172();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v14);
  OUTLINED_FUNCTION_260();
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  OUTLINED_FUNCTION_57_0(v42);
  if (v17)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_200();
    *(v12 + 2224) = *(v48 + 136);
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_113_0();
    v49 = sub_1D4E0CC70();

    *(v12 + 752) = v49;
    OUTLINED_FUNCTION_10_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_168();
    *(v12 + 2240) = sub_1D4E0CFA0();
    sub_1D4E0CD60();
    if (v27)
    {
      v50 = *(v12 + 992);

      v51 = v50;
LABEL_17:
      sub_1D4DAFEE8(v51);
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_165_0();
      OUTLINED_FUNCTION_329(v59);

      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_156();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_177();
    v70 = OUTLINED_FUNCTION_149_0(v69);
    *(v12 + 2280) = OUTLINED_FUNCTION_284(v70);
    v71 = sub_1D4D8E454();
    OUTLINED_FUNCTION_283(v71);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE6DFA0](v72, v73, v74);
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_61_0();
  v84 = OUTLINED_FUNCTION_242(v52);
  v53 = OUTLINED_FUNCTION_91();
  v54(v53);
  v55 = OUTLINED_FUNCTION_302();
  v56(v55);
  *(v42 + v14) = v84;
  sub_1D4E0CD60();
  if (v27)
  {
    v57 = OUTLINED_FUNCTION_91_0();
    v58(v57);

    v51 = v42;
    goto LABEL_17;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v12 + 2208) = v76;
  *v76 = v77;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA830C()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 2256);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_170();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA838C()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 2240);
  v20 = *(v0 + 1016);
  v2 = swift_task_alloc();
  *(v0 + 2296) = v2;
  *(v2 + 16) = *(v0 + 1000);
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v20);
  v19 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 2304) = v11;
  *v11 = v12;
  v11[1] = sub_1D4DA84D8;
  v13 = *(v0 + 1960);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1016);

  return v19(v0 + 984, &unk_1D4E0E558, v2, v13, v14, v15);
}

uint64_t sub_1D4DA84D8()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;
  v2[289] = v0;

  v4 = OUTLINED_FUNCTION_294();
  if (v0)
  {
    v6(v4);
  }

  else
  {
    v2[290] = v6;
    v2[291] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v4);
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_335();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D4DA8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 2312);
  *(swift_task_alloc() + 16) = *(v12 + 1000);
  OUTLINED_FUNCTION_93();
  sub_1D4E0CA10();
  sub_1D4E0CA20();
  swift_endAccess();
  if (v13)
  {
    OUTLINED_FUNCTION_156();
  }

  else
  {
    v14 = *(v12 + 1832);
    v49 = *(v12 + 1744);

    sub_1D4E0CA10();
    v15 = sub_1D4E0CC20();
    v52 = v15;
    v51 = (v14 + 32);
    v50 = (v14 + 8);
    while (1)
    {
      if (v15 == sub_1D4E0CCB0())
      {

        sub_1D4E0CD60();
        *(v12 + 2336) = sub_1D4E0C860();
        OUTLINED_FUNCTION_78();
        sub_1D4E0CD30();
        OUTLINED_FUNCTION_99();
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_156();

        goto _swift_task_switch;
      }

      OUTLINED_FUNCTION_30();
      v16 = sub_1D4E0CCA0();
      OUTLINED_FUNCTION_41_0();
      sub_1D4E0CC60();
      if (v16)
      {
        OUTLINED_FUNCTION_189();
        (*(v17 + 16))();
      }

      else
      {
        OUTLINED_FUNCTION_105();
        v30 = sub_1D4E0CF80();
        if (v49 != 8)
        {
          __break(1u);
_swift_task_switch:
          MEMORY[0x1EEE6DFA0](v30, v31, v32);
          return;
        }

        v33 = v30;
        OUTLINED_FUNCTION_189();
        *(v12 + 760) = v33;
        (*(v34 + 16))();
        swift_unknownObjectRelease();
      }

      v18 = *(v12 + 1720);
      v19 = *(v12 + 1688);
      sub_1D4E0CCF0();
      v20 = OUTLINED_FUNCTION_170();
      v21(v20);
      OUTLINED_FUNCTION_235();
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_108_0();
      sub_1D4E0CA70();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
      v23 = *(v12 + 1792);
      v24 = *(v12 + 1736);
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v25 = *(v12 + 1864);
      v26 = *(v12 + 1688);
      (*v51)(v25, *(v12 + 1720), v26);
      swift_endAccess();
      OUTLINED_FUNCTION_267();
      v27();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_269();
      sub_1D4E0CD00();
      sub_1D4E0CCD0();
      swift_endAccess();
      (*v50)(v25, v26);
      v28 = OUTLINED_FUNCTION_210();
      v29(v28);
      v15 = v52;
    }

    v35 = *(v12 + 1040);
    v36 = *(v12 + 992);
    (*(*(v12 + 1704) + 8))(*(v12 + 1720), *(v12 + 1696));
    swift_endAccess();

    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    *(v12 + 132) = 2;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_210();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    v37 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v37, v38, v39);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_142_0();
    swift_allocError();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();
    (*(v24 + 8))(v23, v35);
    sub_1D4DAFEE8(v36);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_143_0();

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_156();

    v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

uint64_t sub_1D4DA8DBC()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 2256);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_170();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA8E3C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 2344) = v2;
  *v2 = v0;
  v2[1] = sub_1D4DA8F84;

  return v4();
}

uint64_t sub_1D4DA8F84()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  v3[294] = v0;

  (v2[290])(v3[198], v3[196]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4DA90DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = v12[294];
  sub_1D4E0CD60();
  v12[295] = v13;
  if (v13)
  {
    v14 = v12[124];

    sub_1D4DAFEE8(v14);
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_143_0();

    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_156();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = v12[281];
    v25 = v12[153];
    v26 = v12[152];
    v27 = v12[125];
    v28 = v12[124];
    OUTLINED_FUNCTION_153();
    v12[296] = type metadata accessor for FacetBuildingPlan();
    v29 = *(v26 + 16);
    v12[297] = v29;
    v12[298] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v25, v28 + v24, v27);
    v12[299] = sub_1D4E0C860();
    OUTLINED_FUNCTION_78();
    sub_1D4E0CD30();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }
}

uint64_t sub_1D4DA9444()
{
  OUTLINED_FUNCTION_1();

  *(v0 + 2400) = FacetBuildingPlan.__allocating_init(system:)();
  v1 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D4DA94B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 1496);
  v14 = *(v12 + 1416);
  *(v12 + 792) = *(*(v12 + 992) + *(v12 + 2104));
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_11_0();
  swift_getWitnessTable();
  sub_1D4E0CEA0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v16 = *(v12 + 1536);
  if (EnumTagSinglePayload == 1)
  {
    v17 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v21 = *(v12 + 1496);
    v22 = *(v12 + 1440);
    v23 = *(v12 + 1416);
    v24 = *(v12 + 1192);
    v237 = *(v23 + 64);
    v25 = OUTLINED_FUNCTION_53_0((v12 + 1000));
    v26 = *(v23 + 48);
    v27 = *(v24 + 32);
    v27(v22 + v26, v21 + v28, v25);
    OUTLINED_FUNCTION_115_0();
    v29 = swift_allocObject();
    v30 = *(v21 + v237);
    *(v29 + 16) = v233;
    *(v29 + 32) = v30;
    v31 = (v16 + *(v23 + 64));
    v32 = OUTLINED_FUNCTION_95_0(v22[1].n128_u8[0], *v22);
    (v27)(v32, v22 + v26);
    *v31 = sub_1D4DBE048;
    v31[1] = v29;
    OUTLINED_FUNCTION_121_0();
    v20 = v23;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v33 = *(v12 + 1416);
  (*(v12 + 2136))(*(v12 + 1544), *(v12 + 1536), *(v12 + 1480));

  v34 = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_118_0(v34, v35, v33);
  if (v36)
  {
    v37 = *(v12 + 2168);
    v75 = *(v12 + 1248);
    v38 = *(v12 + 1152);
    v39 = *(v12 + 992);
    (*(*(v12 + 1512) + 8))(*(v12 + 1544), *(v12 + 1480));
    v40 = 1;
    v41 = OUTLINED_FUNCTION_100_0();
    __swift_storeEnumTagSinglePayload(v41, v42, 1, v38);
    *(v12 + 800) = *(v39 + v37);
    OUTLINED_FUNCTION_147_0();
    v76 = sub_1D4E0CD00();
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_11_0();
    swift_getWitnessTable();
    sub_1D4E0CEA0();
    v43 = OUTLINED_FUNCTION_310();
    OUTLINED_FUNCTION_118_0(v43, v44, v75);
    if (!v36)
    {
      v45 = *(v12 + 1368);
      v46 = *(v12 + 1328);
      v47 = *(v12 + 1272);
      v48 = *(v12 + 1248);
      v49 = *(v12 + 1192);
      v50 = *(v12 + 1152);
      v227 = v50;
      v75 = *(v12 + 1064);
      v239 = *(v12 + 1056);
      v224 = *(v48 + 48);
      v234 = *(v48 + 64);
      v51 = *(v75 + 32);
      LOBYTE(v75) = v75 + 32;
      v225 = *(v12 + 1000);
      v52 = OUTLINED_FUNCTION_170();
      v53(v52);
      v230 = *(v48 + 48);
      v76 = *(v49 + 32);
      (v76)(v47 + v230, v46 + v224, v50);
      OUTLINED_FUNCTION_115_0();
      v54 = swift_allocObject();
      v55 = *(v46 + v234);
      *(v54 + 16) = v225;
      *(v54 + 32) = v55;
      v56 = *(v48 + 48);
      v57 = (v45 + *(v48 + 64));
      v51(v45, v47, v239);
      (v76)(v45 + v56, v47 + v230, v227);
      v40 = 0;
      *v57 = sub_1D4DBE048;
      v57[1] = v54;
    }

    v74 = *(v12 + 2200);
    v58 = *(v12 + 2192);
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v40, 1, v76);
    OUTLINED_FUNCTION_62();
    v58();

    v60 = OUTLINED_FUNCTION_104_0();
    v62 = __swift_getEnumTagSinglePayload(v60, v61, v76);
    v63 = *(v12 + 1376);
    v64 = *(v12 + 1184);
    v65 = *(v12 + 1152);
    if (v62 == 1)
    {
      (*(*(v12 + 1344) + 8))(*(v12 + 1376), *(v12 + 1312));
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v65);
    }

    else
    {
      v75 = *(v12 + 1192);
      v85 = *(v12 + 1064);
      v86 = *(v12 + 1056);
      v74 = *(*(v12 + 1248) + 48);

      v87 = *(v75 + 32);
      LOBYTE(v75) = v75 + 32;
      v87(v64, v63 + v74, v65);
      OUTLINED_FUNCTION_121_0();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v65);
      v91 = *(v85 + 8);
      v76 = (v85 + 8);
      v91(v63, v86);
    }

    v92 = *(v12 + 1176);
    v93 = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_118_0(v93, v94, v95);
    if (!v36)
    {
      (*(*(v12 + 1168) + 8))(v92, *(v12 + 1160));
    }
  }

  else
  {
    v66 = *(v12 + 1544);
    v75 = *(v12 + 1416);
    v67 = *(v12 + 1192);
    v68 = *(v12 + 1176);
    v69 = *(v12 + 1152);
    OUTLINED_FUNCTION_3_0();
    sub_1D4DBA9FC(v70, v71, v72, v73);
    v74 = *(v75 + 48);

    v77 = *(v67 + 32);
    v76 = (v67 + 32);
    LOBYTE(v75) = v77;
    v77(v68, v66 + v74, v69);
    v78 = OUTLINED_FUNCTION_93_0();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v69);
    v81 = OUTLINED_FUNCTION_105();
    (v77)(v81);
    OUTLINED_FUNCTION_121_0();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v69);
  }

  v96 = *(v12 + 1152);
  v97 = OUTLINED_FUNCTION_104_0();
  v99 = __swift_getEnumTagSinglePayload(v97, v98, v96);
  v100 = *(v12 + 2232);
  if (v99 == 1)
  {
    v101 = *(v12 + 1168);

    v102 = v101 + 8;
    v103 = OUTLINED_FUNCTION_105();
    v104(v103);
    goto LABEL_26;
  }

  v102 = *(v12 + 1400);
  OUTLINED_FUNCTION_148();
  v105();
  *(v12 + 944) = v100;
  OUTLINED_FUNCTION_11_0();
  swift_getWitnessTable();
  if (sub_1D4E0CEB0())
  {
    v106 = OUTLINED_FUNCTION_308();
    v107(v106);

LABEL_26:
    v134 = *(v12 + 992);
    *(v12 + 2408) = *(v134 + *(v12 + 2104));
    sub_1D4E0CA10();
    *(v12 + 808) = sub_1D4E0CC20();
    OUTLINED_FUNCTION_88();
    *(v12 + 2416) = *(v135 + 208);
    v240 = *(v12 + 2360);
    v136 = sub_1D4E0CCB0();
    v137 = *(v12 + 808);
    if (v137 == v136)
    {
      v138 = 1;
    }

    else
    {
      v134 = *(v12 + 2408);
      v102 = *(v12 + 2128);
      OUTLINED_FUNCTION_87_0();
      sub_1D4E0CCA0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_140_0();
      sub_1D4E0CC60();
      if (v75)
      {
        OUTLINED_FUNCTION_90_0();
        OUTLINED_FUNCTION_8_0();
        v139();
      }

      else
      {
        result = OUTLINED_FUNCTION_279();
        if (v134 != 8)
        {
          goto LABEL_69;
        }

        v211 = OUTLINED_FUNCTION_73_0(result);
        v212(v211);
        swift_unknownObjectRelease();
      }

      v140 = OUTLINED_FUNCTION_71_0();
      v141(v140);
      OUTLINED_FUNCTION_148();
      v136 = sub_1D4E0CCF0();
      v138 = 0;
    }

    OUTLINED_FUNCTION_76_0(v136, v138);
    if (v36)
    {
      v149 = OUTLINED_FUNCTION_69_0();
    }

    else
    {
      OUTLINED_FUNCTION_241();
      v142 = *(v12 + 1192);
      v102 = *(v12 + 1152);
      OUTLINED_FUNCTION_193();
      v144 = OUTLINED_FUNCTION_53_0(v143);
      v145 = *(v134 + 48);
      v100 = *(v142 + 32);
      (v100)(v74 + v145, &v76[v146], v102, v144);
      OUTLINED_FUNCTION_115_0();
      v147 = swift_allocObject();
      v148 = OUTLINED_FUNCTION_42_0(v147);
      (v100)(v148, v74 + v145, v102);
      v149 = OUTLINED_FUNCTION_37_0();
    }

    __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
    v153 = OUTLINED_FUNCTION_75_0();
    v154(v153);
    OUTLINED_FUNCTION_30_0();
    if (v36)
    {
      OUTLINED_FUNCTION_218();
      *(v12 + 2520) = *&v100[v134];
      sub_1D4E0CA10();
      v155 = sub_1D4E0CC20();
      OUTLINED_FUNCTION_280(v155);
      OUTLINED_FUNCTION_259();
      if (v36)
      {
        v157 = 1;
      }

      else
      {
        v164 = *(v12 + 2520);
        v102 = *(v12 + 2184);
        OUTLINED_FUNCTION_87_0();
        sub_1D4E0CCA0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_140_0();
        sub_1D4E0CC60();
        if (v75)
        {
          OUTLINED_FUNCTION_55_0();
          OUTLINED_FUNCTION_8_0();
          v165();
        }

        else
        {
          result = OUTLINED_FUNCTION_197();
          if (v164 != 8)
          {
            goto LABEL_70;
          }

          v213 = OUTLINED_FUNCTION_27_0(result);
          v214(v213);
          swift_unknownObjectRelease();
        }

        v166 = OUTLINED_FUNCTION_26_0();
        v167(v166);
        OUTLINED_FUNCTION_148();
        v156 = sub_1D4E0CCF0();
        v157 = 0;
      }

      v168 = *(v12 + 1320);
      OUTLINED_FUNCTION_16_0(v156, v157);
      if (!v36)
      {
        OUTLINED_FUNCTION_127_0();
        v169 = *(v12 + 1248);
        v170 = *(v12 + 1192);
        v171 = *(v12 + 1064);
        OUTLINED_FUNCTION_250();
        v232 = v172;
        v236 = *(v171 + 32);
        v174 = OUTLINED_FUNCTION_102_0(v173);
        v175(v174);
        v176 = *(v170 + 32);
        v177 = OUTLINED_FUNCTION_101_0();
        v176(v177);
        OUTLINED_FUNCTION_115_0();
        v74 = swift_allocObject();
        v178 = OUTLINED_FUNCTION_64_0(v74, v232);
        v236(v178);
        v179 = OUTLINED_FUNCTION_230();
        v176(v179);
        OUTLINED_FUNCTION_15_0();
        *v169 = v180;
        v169[1] = v74;
      }

      v181 = OUTLINED_FUNCTION_18_0();
      (v74)(v181);
      OUTLINED_FUNCTION_57_0(v168);
      if (v36)
      {

        sub_1D4E0CD60();
        if (!v240)
        {
          v204 = swift_task_alloc();
          v205 = OUTLINED_FUNCTION_272(v204);
          *v205 = v206;
          OUTLINED_FUNCTION_14_0(v205);
          OUTLINED_FUNCTION_156();

          return FacetBuildingPlan.optimize()();
        }

        OUTLINED_FUNCTION_254();
        v163 = v137;
LABEL_54:
        sub_1D4DAFEE8(v163);
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_316();
        OUTLINED_FUNCTION_143_0();

        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_156();

        return v197(v196, v197, v198, v199, v200, v201, v202, v203, a9, a10, a11, a12);
      }

      v182 = OUTLINED_FUNCTION_17_0();
      v183(v182);
      v184 = OUTLINED_FUNCTION_176();
      v185(v184);
      sub_1D4E0CD60();
      if (v240)
      {
        v186 = OUTLINED_FUNCTION_51_0();
        v187(v186);

        v163 = v102;
        goto LABEL_54;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2544) = v208;
      *v208 = v209;
      OUTLINED_FUNCTION_13_0(v208);
    }

    else
    {
      v158 = OUTLINED_FUNCTION_31_0();
      v159(v158);
      sub_1D4E0CD60();
      if (v240)
      {
        OUTLINED_FUNCTION_217();
        OUTLINED_FUNCTION_3_0();
        v160 = OUTLINED_FUNCTION_105();
        sub_1D4DBA9FC(v160, v161, v102, v162);

        v163 = v74;
        goto LABEL_54;
      }

      *(v12 + 688) = v137;
      *(v12 + 696) = v134;
      *(v12 + 704) = v102;
      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2456) = v188;
      *v188 = v189;
      OUTLINED_FUNCTION_39_0(v188);
    }

    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_156();

    return sub_1D4DB1870();
  }

  v216 = *(v12 + 2400);
  v76 = *(v12 + 1192);
  v100 = *(v12 + 1080);
  v102 = *(v12 + 1040);
  v74 = *(v12 + 992);
  sub_1D4E0CA10();
  LOBYTE(v75) = sub_1D4E0CCB0();
  v108 = *(*v74 + 208);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_153();
  sub_1D4E0CA60();
  v109 = v74 + v108;
  sub_1D4E0C9E0();
  swift_endAccess();
  sub_1D4E0CA10();
  sub_1D4E0CC20();
  OUTLINED_FUNCTION_109();

  v241 = v74 + v108;
  v215 = (v76 + 16);
  while (1)
  {
    v110 = sub_1D4E0CCB0();
    v111 = *(v12 + 2232);
    if (v109 == v110)
    {
      v132 = OUTLINED_FUNCTION_308();
      v133(v132);
      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_30();
    v112 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_41_0();
    sub_1D4E0CC60();
    if (v112)
    {
      OUTLINED_FUNCTION_189();
      v231 = *(v113 + 16);
      v231();
      goto LABEL_21;
    }

    result = OUTLINED_FUNCTION_281();
    if (v111 != 8)
    {
      break;
    }

    v130 = result;
    OUTLINED_FUNCTION_189();
    *(v12 + 960) = v130;
    v231 = *(v131 + 16);
    v231();
    swift_unknownObjectRelease();
LABEL_21:
    v114 = *(v12 + 1688);
    sub_1D4E0CCF0();
    v115 = OUTLINED_FUNCTION_78();
    v116(v115);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_151_0();
    sub_1D4E0CA70();
    v117 = OUTLINED_FUNCTION_310();
    v119 = __swift_getEnumTagSinglePayload(v117, v118, v114);
    v238 = *(v12 + 1208);
    v235 = *(v12 + 1152);
    if (v119 == 1)
    {
      v190 = *(v12 + 1192);
      v229 = *(v12 + 992);
      (*(*(v12 + 1704) + 8))(*(v12 + 1712), *(v12 + 1696));
      swift_endAccess();
      swift_bridgeObjectRelease_n();
      sub_1D4DBA0E8();
      OUTLINED_FUNCTION_226();
      sub_1D4E0C8D0();
      OUTLINED_FUNCTION_132_0();
      sub_1D4E0C8C0();
      *(v12 + 129) = 2;
      sub_1D4E0C880();
      sub_1D4E0C8C0();
      sub_1D4E0C890();
      sub_1D4E0C8C0();
      v191 = OUTLINED_FUNCTION_4_0();
      sub_1D4DBA13C(v191, v192, v193);
      sub_1D4DBA1A0();
      OUTLINED_FUNCTION_142_0();
      swift_allocError();
      OUTLINED_FUNCTION_138_0();
      sub_1D4E0C8E0();
      swift_willThrow();

      v194 = OUTLINED_FUNCTION_315();
      v195(v194);
      (*(v190 + 8))(v238, v235);
      v163 = v229;
      goto LABEL_54;
    }

    v222 = *(v12 + 2376);
    v221 = *(v12 + 2248);
    v100 = *(v12 + 1848);
    v120 = *(v12 + 1824);
    v75 = *(v12 + 1776);
    v226 = v75;
    v228 = *(v12 + 1736);
    v102 = *(v12 + 1688);
    v218 = *(v12 + 1856);
    v219 = *(v12 + 1224);
    v74 = *(v12 + 1200);
    v223 = *(v12 + 1080);
    v121 = *(v12 + 1040);
    v220 = *(v12 + 1144);
    v122 = *(v12 + 1000);
    v217 = *(v12 + 992);
    (*(*(v12 + 1832) + 32))(v100, *(v12 + 1712), v102);
    swift_endAccess();
    (v231)(v120, v75, v121);
    OUTLINED_FUNCTION_258();
    v123(v218, v100, v102);
    (*v215)(v74, v238, v235);
    v222(v219, v217 + v221, v122);
    FacetCollection.init(contentRegistration:environment:system:plan:)(v218, v74, v219, v216, v122, v220);
    v76 = v220;
    OUTLINED_FUNCTION_121_0();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v223);
    LOBYTE(v75) = v108;
    OUTLINED_FUNCTION_93();

    sub_1D4E0CA80();
    swift_endAccess();
    v127 = OUTLINED_FUNCTION_58();
    v128(v127);
    (*(v228 + 8))(v226, v121);
    v109 = v241;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1D4DAA694()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DAA794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v20 = v13[130];
  v13[309] = v13[112];
  sub_1D4E0CA10();
  sub_1D4E0CC20();
  OUTLINED_FUNCTION_109();

  v13[111] = v20;
  v126 = v13[308];
  while (1)
  {
    v21 = sub_1D4E0CCB0();
    v22 = v13[111];
    v23 = v13[309];
    if (v22 == v21)
    {
      break;
    }

    v14 = v13[130];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    sub_1D4E0CC60();
    if (v15)
    {
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_8_0();
      v24();
    }

    else
    {
      result = OUTLINED_FUNCTION_281();
      if (v23 != 8)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      v22 = result;
      v36 = OUTLINED_FUNCTION_174();
      v13[114] = v22;
      (*(v37 + 16))(v36, v13 + 114);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_173();
    v18 += 32;
    v25 = OUTLINED_FUNCTION_130_0();
    v26(v25);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_311();
    OUTLINED_FUNCTION_108_0();
    sub_1D4E0CA70();
    OUTLINED_FUNCTION_57_0(v15);
    if (v27)
    {
      OUTLINED_FUNCTION_125_0();

      v43 = OUTLINED_FUNCTION_204();
      v44(v43);
      swift_endAccess();
      sub_1D4DBA0E8();
      OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_206();
      sub_1D4E0C8D0();
      OUTLINED_FUNCTION_94_0();
      sub_1D4E0C8C0();
      OUTLINED_FUNCTION_319();
      OUTLINED_FUNCTION_150_0();
      OUTLINED_FUNCTION_182();
      sub_1D4E0C890();
      OUTLINED_FUNCTION_186();
      v45 = OUTLINED_FUNCTION_4_0();
      sub_1D4DBA13C(v45, v46, v47);
      sub_1D4DBA1A0();
      OUTLINED_FUNCTION_142_0();
      swift_allocError();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_205();
      sub_1D4E0C8E0();
      swift_willThrow();

      OUTLINED_FUNCTION_3_0();
      sub_1D4DBA9FC(v121, v122, v123, v48);

      (*(v19 + 8))(v23, v17);
      goto LABEL_16;
    }

    v28 = OUTLINED_FUNCTION_188();
    v29(v28);
    swift_endAccess();
    v30 = (v12)(v23);
    v13[310] = v30;
    v31 = *(v30 + 16);
    v13[311] = v31;
    v13[312] = 0;
    if (v31)
    {
      if (*(v30 + 16))
      {
        sub_1D4DBDE40(v30 + 32, (v13 + 2));
        sub_1D4E0CD60();
        v13[313] = v126;
        if (v126)
        {
          OUTLINED_FUNCTION_126_0();

          OUTLINED_FUNCTION_3_0();
          v49 = OUTLINED_FUNCTION_136();
          sub_1D4DBA9FC(v49, v50, v126, v51);

          (*(v18 + 8))();
          (*(v19 + 8))();
          __swift_destroy_boxed_opaque_existential_1Tm((v13 + 2));
LABEL_16:
          v52 = (v13 + 88);
LABEL_17:
          sub_1D4DAFEE8(v52);
LABEL_18:
          OUTLINED_FUNCTION_290();
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_9_0();
          OUTLINED_FUNCTION_316();
          OUTLINED_FUNCTION_165_0();
          OUTLINED_FUNCTION_143_0();

          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_156();

          return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
        }

        OUTLINED_FUNCTION_334(v13 + 2);
        v82 = swift_task_alloc();
        v13[314] = v82;
        *v82 = v13;
        OUTLINED_FUNCTION_54_0(v82);
        OUTLINED_FUNCTION_156();

        return FacetBuildingPlan.addFacet<A>(_:)();
      }

      __break(1u);
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_252();
    v16 += 8;
    v32 = OUTLINED_FUNCTION_87_0();
    v33(v32);
    v34 = *(v12 + 8);
    v12 += 8;
    v34(v22, v15);
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_3_0();
  v38 = OUTLINED_FUNCTION_136();
  sub_1D4DBA9FC(v38, v39, v22, v40);

  v41 = sub_1D4E0CCB0();
  v22 = v13[101];
  if (v22 == v41)
  {
    v42 = 1;
    goto LABEL_24;
  }

  v23 = v13[301];
  v14 = v13[266];
  OUTLINED_FUNCTION_87_0();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_140_0();
  sub_1D4E0CC60();
  if (v15)
  {
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_8_0();
    v61();
    goto LABEL_23;
  }

LABEL_57:
  result = OUTLINED_FUNCTION_279();
  if (v23 != 8)
  {
    goto LABEL_62;
  }

  v117 = OUTLINED_FUNCTION_73_0(result);
  v118(v117);
  swift_unknownObjectRelease();
LABEL_23:
  v62 = OUTLINED_FUNCTION_71_0();
  v63(v62);
  OUTLINED_FUNCTION_148();
  v41 = sub_1D4E0CCF0();
  v42 = 0;
LABEL_24:
  OUTLINED_FUNCTION_76_0(v41, v42);
  if (v27)
  {
    v68 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    OUTLINED_FUNCTION_241();
    v14 = v13[144];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_53_0(v64);
    v65 = OUTLINED_FUNCTION_275();
    (v12)(v65);
    OUTLINED_FUNCTION_115_0();
    v66 = swift_allocObject();
    v67 = OUTLINED_FUNCTION_42_0(v66);
    (v12)(v67, v17 + v18, v14);
    v68 = OUTLINED_FUNCTION_37_0();
  }

  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_75_0();
  v73(v72);
  OUTLINED_FUNCTION_30_0();
  if (!v27)
  {
    v77 = OUTLINED_FUNCTION_31_0();
    v78(v77);
    sub_1D4E0CD60();
    if (v126)
    {
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_3_0();
      v79 = OUTLINED_FUNCTION_105();
      sub_1D4DBA9FC(v79, v80, v14, v81);

      v52 = v17;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_293();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v13[307] = v108;
    *v108 = v109;
    OUTLINED_FUNCTION_39_0();
LABEL_53:
    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_156();

    return sub_1D4DB1870();
  }

  OUTLINED_FUNCTION_218();
  v13[315] = *(v12 + v23);
  sub_1D4E0CA10();
  v74 = sub_1D4E0CC20();
  OUTLINED_FUNCTION_280(v74);
  OUTLINED_FUNCTION_259();
  if (v27)
  {
    v76 = 1;
  }

  else
  {
    v84 = v13[315];
    v14 = v13[273];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    sub_1D4E0CC60();
    if (v15)
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_8_0();
      v85();
    }

    else
    {
      result = OUTLINED_FUNCTION_197();
      if (v84 != 8)
      {
        goto LABEL_63;
      }

      v119 = OUTLINED_FUNCTION_27_0(result);
      v120(v119);
      swift_unknownObjectRelease();
    }

    v86 = OUTLINED_FUNCTION_26_0();
    v87(v86);
    OUTLINED_FUNCTION_148();
    v75 = sub_1D4E0CCF0();
    v76 = 0;
  }

  v88 = v13[165];
  OUTLINED_FUNCTION_16_0(v75, v76);
  if (!v27)
  {
    OUTLINED_FUNCTION_127_0();
    v89 = v13[156];
    v90 = v13[149];
    v91 = v13[133];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_250();
    v124 = v92;
    v125 = *(v91 + 32);
    v94 = OUTLINED_FUNCTION_102_0(v93);
    v95(v94);
    v96 = *(v90 + 32);
    v97 = OUTLINED_FUNCTION_101_0();
    v96(v97);
    OUTLINED_FUNCTION_115_0();
    v17 = swift_allocObject();
    v98 = OUTLINED_FUNCTION_64_0(v17, v124);
    v125(v98);
    v99 = OUTLINED_FUNCTION_230();
    v96(v99);
    OUTLINED_FUNCTION_15_0();
    *v89 = v100;
    v89[1] = v17;
  }

  v101 = OUTLINED_FUNCTION_18_0();
  v17(v101);
  OUTLINED_FUNCTION_57_0(v88);
  if (!v27)
  {
    v102 = OUTLINED_FUNCTION_17_0();
    v103(v102);
    v104 = OUTLINED_FUNCTION_176();
    v105(v104);
    sub_1D4E0CD60();
    if (v126)
    {
      v106 = OUTLINED_FUNCTION_51_0();
      v107(v106);

      v52 = v14;
      goto LABEL_17;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v13[318] = v114;
    *v114 = v115;
    OUTLINED_FUNCTION_13_0(v114);
    goto LABEL_53;
  }

  sub_1D4E0CD60();
  if (v126)
  {
    OUTLINED_FUNCTION_254();
    sub_1D4DAFEE8(v22);
    goto LABEL_18;
  }

  v110 = swift_task_alloc();
  v111 = OUTLINED_FUNCTION_272(v110);
  *v111 = v112;
  OUTLINED_FUNCTION_14_0(v111);
  OUTLINED_FUNCTION_156();

  return FacetBuildingPlan.optimize()();
}

uint64_t sub_1D4DAB1E8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DAB2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm((v15 + 2));
  v127 = v15[313];
  v22 = v15[312] + 1;
  for (i = v15[311]; ; v15[311] = i)
  {
    v15[312] = v22;
    v24 = v15[310];
    if (v22 != i)
    {
      if (v22 < *(v24 + 16))
      {
        sub_1D4DBDE40(v24 + 40 * v22 + 32, (v15 + 2));
        sub_1D4E0CD60();
        v15[313] = v127;
        if (v127)
        {
          OUTLINED_FUNCTION_126_0();

          OUTLINED_FUNCTION_3_0();
          v39 = OUTLINED_FUNCTION_136();
          sub_1D4DBA9FC(v39, v40, v127, v41);

          (*(v20 + 8))();
          (*(v21 + 8))();
          __swift_destroy_boxed_opaque_existential_1Tm((v15 + 2));
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_334(v15 + 2);
        v83 = swift_task_alloc();
        v15[314] = v83;
        *v83 = v15;
        OUTLINED_FUNCTION_54_0(v83);
        OUTLINED_FUNCTION_156();

        return FacetBuildingPlan.addFacet<A>(_:)();
      }

      __break(1u);
LABEL_57:
      result = OUTLINED_FUNCTION_279();
      if (v12 != 8)
      {
        goto LABEL_62;
      }

      v118 = OUTLINED_FUNCTION_73_0(result);
      v119(v118);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_252();
    v18 += 8;
    v25 = OUTLINED_FUNCTION_87_0();
    v26(v25);
    v27 = *(v14 + 8);
    v14 += 8;
    v27(v13, v17);
    v28 = sub_1D4E0CCB0();
    v13 = v15[111];
    v12 = v15[309];
    if (v13 == v28)
    {
      break;
    }

    v16 = v15[130];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    sub_1D4E0CC60();
    if (v17)
    {
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_8_0();
      v29();
    }

    else
    {
      result = OUTLINED_FUNCTION_281();
      if (v12 != 8)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      v13 = result;
      v37 = OUTLINED_FUNCTION_174();
      v15[114] = v13;
      (*(v38 + 16))(v37, v15 + 114);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_173();
    v20 += 32;
    v30 = OUTLINED_FUNCTION_130_0();
    v31(v30);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_311();
    OUTLINED_FUNCTION_108_0();
    sub_1D4E0CA70();
    OUTLINED_FUNCTION_57_0(v17);
    if (v32)
    {
      OUTLINED_FUNCTION_125_0();

      v47 = OUTLINED_FUNCTION_204();
      v48(v47);
      swift_endAccess();
      sub_1D4DBA0E8();
      OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_206();
      sub_1D4E0C8D0();
      OUTLINED_FUNCTION_94_0();
      sub_1D4E0C8C0();
      OUTLINED_FUNCTION_319();
      OUTLINED_FUNCTION_150_0();
      OUTLINED_FUNCTION_182();
      sub_1D4E0C890();
      OUTLINED_FUNCTION_186();
      v49 = OUTLINED_FUNCTION_4_0();
      sub_1D4DBA13C(v49, v50, v51);
      sub_1D4DBA1A0();
      OUTLINED_FUNCTION_142_0();
      swift_allocError();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_205();
      sub_1D4E0C8E0();
      swift_willThrow();

      OUTLINED_FUNCTION_3_0();
      sub_1D4DBA9FC(v122, v123, v124, v52);

      (*(v21 + 8))(v12, v19);
LABEL_16:
      v53 = (v15 + 88);
LABEL_17:
      sub_1D4DAFEE8(v53);
LABEL_18:
      OUTLINED_FUNCTION_290();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_165_0();
      OUTLINED_FUNCTION_143_0();

      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_156();

      return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
    }

    v33 = OUTLINED_FUNCTION_188();
    v34(v33);
    swift_endAccess();
    v35 = (v14)(v12);
    v22 = 0;
    v15[310] = v35;
    i = *(v35 + 16);
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_3_0();
  v42 = OUTLINED_FUNCTION_136();
  sub_1D4DBA9FC(v42, v43, v13, v44);

  v45 = sub_1D4E0CCB0();
  v13 = v15[101];
  if (v13 == v45)
  {
    v46 = 1;
    goto LABEL_24;
  }

  v12 = v15[301];
  v16 = v15[266];
  OUTLINED_FUNCTION_87_0();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_140_0();
  sub_1D4E0CC60();
  if ((v17 & 1) == 0)
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_8_0();
  v62();
LABEL_23:
  v63 = OUTLINED_FUNCTION_71_0();
  v64(v63);
  OUTLINED_FUNCTION_148();
  v45 = sub_1D4E0CCF0();
  v46 = 0;
LABEL_24:
  OUTLINED_FUNCTION_76_0(v45, v46);
  if (v32)
  {
    v69 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    OUTLINED_FUNCTION_241();
    v16 = v15[144];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_53_0(v65);
    v66 = OUTLINED_FUNCTION_275();
    (v14)(v66);
    OUTLINED_FUNCTION_115_0();
    v67 = swift_allocObject();
    v68 = OUTLINED_FUNCTION_42_0(v67);
    (v14)(v68, v19 + v20, v16);
    v69 = OUTLINED_FUNCTION_37_0();
  }

  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  v73 = OUTLINED_FUNCTION_75_0();
  v74(v73);
  OUTLINED_FUNCTION_30_0();
  if (!v32)
  {
    v78 = OUTLINED_FUNCTION_31_0();
    v79(v78);
    sub_1D4E0CD60();
    if (v127)
    {
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_3_0();
      v80 = OUTLINED_FUNCTION_105();
      sub_1D4DBA9FC(v80, v81, v16, v82);

      v53 = v19;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_293();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v15[307] = v109;
    *v109 = v110;
    OUTLINED_FUNCTION_39_0();
LABEL_53:
    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_156();

    return sub_1D4DB1870();
  }

  OUTLINED_FUNCTION_218();
  v15[315] = *(v14 + v12);
  sub_1D4E0CA10();
  v75 = sub_1D4E0CC20();
  OUTLINED_FUNCTION_280(v75);
  OUTLINED_FUNCTION_259();
  if (v32)
  {
    v77 = 1;
  }

  else
  {
    v85 = v15[315];
    v16 = v15[273];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    sub_1D4E0CC60();
    if (v17)
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_8_0();
      v86();
    }

    else
    {
      result = OUTLINED_FUNCTION_197();
      if (v85 != 8)
      {
        goto LABEL_63;
      }

      v120 = OUTLINED_FUNCTION_27_0(result);
      v121(v120);
      swift_unknownObjectRelease();
    }

    v87 = OUTLINED_FUNCTION_26_0();
    v88(v87);
    OUTLINED_FUNCTION_148();
    v76 = sub_1D4E0CCF0();
    v77 = 0;
  }

  v89 = v15[165];
  OUTLINED_FUNCTION_16_0(v76, v77);
  if (!v32)
  {
    OUTLINED_FUNCTION_127_0();
    v90 = v15[156];
    v91 = v15[149];
    v92 = v15[133];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_250();
    v125 = v93;
    v126 = *(v92 + 32);
    v95 = OUTLINED_FUNCTION_102_0(v94);
    v96(v95);
    v97 = *(v91 + 32);
    v98 = OUTLINED_FUNCTION_101_0();
    v97(v98);
    OUTLINED_FUNCTION_115_0();
    v19 = swift_allocObject();
    v99 = OUTLINED_FUNCTION_64_0(v19, v125);
    v126(v99);
    v100 = OUTLINED_FUNCTION_230();
    v97(v100);
    OUTLINED_FUNCTION_15_0();
    *v90 = v101;
    v90[1] = v19;
  }

  v102 = OUTLINED_FUNCTION_18_0();
  v19(v102);
  OUTLINED_FUNCTION_57_0(v89);
  if (!v32)
  {
    v103 = OUTLINED_FUNCTION_17_0();
    v104(v103);
    v105 = OUTLINED_FUNCTION_176();
    v106(v105);
    sub_1D4E0CD60();
    if (v127)
    {
      v107 = OUTLINED_FUNCTION_51_0();
      v108(v107);

      v53 = v16;
      goto LABEL_17;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v15[318] = v115;
    *v115 = v116;
    OUTLINED_FUNCTION_13_0(v115);
    goto LABEL_53;
  }

  sub_1D4E0CD60();
  if (v127)
  {
    OUTLINED_FUNCTION_254();
    sub_1D4DAFEE8(v13);
    goto LABEL_18;
  }

  v111 = swift_task_alloc();
  v112 = OUTLINED_FUNCTION_272(v111);
  *v112 = v113;
  OUTLINED_FUNCTION_14_0(v112);
  OUTLINED_FUNCTION_156();

  return FacetBuildingPlan.optimize()();
}

uint64_t sub_1D4DABD30()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2552) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DABE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v16 = *(v12 + 1616);
  OUTLINED_FUNCTION_30_0();
  if (v17)
  {
    v18 = *(v12 + 1608);
    v19 = *(v12 + 1048);
    (*(*(v12 + 1064) + 8))(*(v12 + 1072), *(v12 + 1056));

    v24 = v18 + 8;
    v20 = OUTLINED_FUNCTION_52();
    v21(v20);
    v93 = *(v12 + 2552);
    goto LABEL_4;
  }

  v14 = *(v12 + 2416);
  v24 = *(v12 + 1752);
  v13 = *(v12 + 1128);
  v25 = *(v12 + 1080);
  v26 = *(v12 + 992);
  OUTLINED_FUNCTION_148();
  v27();
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_311();
  sub_1D4E0CA70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v25);
  v29 = *(v12 + 2536);
  if (EnumTagSinglePayload == 1)
  {
    v88 = *(v12 + 1752);
    v30 = *(v12 + 1736);
    v31 = *(v12 + 1064);
    OUTLINED_FUNCTION_271();

    v32 = OUTLINED_FUNCTION_58();
    v33(v32);
    swift_endAccess();
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_238();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    *(v12 + 131) = 3;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_150_0();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_186();
    v34 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v34, v35, v36);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_142_0();
    swift_allocError();
    OUTLINED_FUNCTION_138_0();
    sub_1D4E0C8E0();
    swift_willThrow();

    (*(v30 + 8))(v88, v15);
    (*(v31 + 8))();
LABEL_24:
    v56 = v92;
    goto LABEL_25;
  }

  v57 = *(v12 + 2528);
  v58 = *(v12 + 1096);
  (*(*(v12 + 1088) + 32))(v58, *(v12 + 1128), *(v12 + 1080));
  swift_endAccess();
  result = (v57)(v58);
  v16 = result;
  *(v12 + 2560) = result;
  v60 = *(result + 16);
  *(v12 + 2568) = v60;
  v93 = *(v12 + 2552);
  *(v12 + 2576) = 0;
  if (!v60)
  {
    OUTLINED_FUNCTION_184();

    v15 += 8;
    v81 = OUTLINED_FUNCTION_146_0();
    v82(v81);
    v83 = *(v57 + 8);
    v19 = (v57 + 8);
    v83(v29, v26);
    (*(v25 + 8))(v92, v14);
LABEL_4:
    sub_1D4E0CCB0();
    OUTLINED_FUNCTION_259();
    if (v17)
    {
      v23 = 1;
    }

    else
    {
      v37 = *(v12 + 2520);
      v24 = *(v12 + 2184);
      OUTLINED_FUNCTION_87_0();
      sub_1D4E0CCA0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_140_0();
      sub_1D4E0CC60();
      if (v13)
      {
        OUTLINED_FUNCTION_55_0();
        OUTLINED_FUNCTION_8_0();
        v38();
      }

      else
      {
        result = OUTLINED_FUNCTION_197();
        if (v37 != 8)
        {
LABEL_42:
          __break(1u);
          return result;
        }

        v86 = OUTLINED_FUNCTION_27_0(result);
        v87(v86);
        swift_unknownObjectRelease();
      }

      v39 = OUTLINED_FUNCTION_26_0();
      v40(v39);
      OUTLINED_FUNCTION_148();
      v22 = sub_1D4E0CCF0();
      v23 = 0;
    }

    v41 = *(v12 + 1320);
    OUTLINED_FUNCTION_16_0(v22, v23);
    if (!v17)
    {
      v16 = *(v12 + 1352);
      v41 = *(v12 + 1320);
      OUTLINED_FUNCTION_89_0();
      v91 = *(v15 + 64);
      v42 = *(v13 + 32);
      v89 = *(v12 + 1000);
      v43 = OUTLINED_FUNCTION_130_0();
      v44(v43);
      v45 = OUTLINED_FUNCTION_223();
      v19(v45);
      OUTLINED_FUNCTION_115_0();
      v14 = swift_allocObject();
      v46 = OUTLINED_FUNCTION_97_0(v14, *(v41 + v91), v89);
      v42(v46);
      v47 = OUTLINED_FUNCTION_230();
      v19(v47);
      OUTLINED_FUNCTION_15_0();
      *v15 = v48;
      *(v15 + 8) = v14;
    }

    v49 = OUTLINED_FUNCTION_18_0();
    (v14)(v49);
    OUTLINED_FUNCTION_57_0(v41);
    if (v17)
    {

      sub_1D4E0CD60();
      if (v93)
      {
        OUTLINED_FUNCTION_254();
        sub_1D4DAFEE8(v16);
LABEL_26:
        OUTLINED_FUNCTION_290();
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_32_0(v65);
        OUTLINED_FUNCTION_49_0();

        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_156();

        return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12);
      }

      v74 = swift_task_alloc();
      v75 = OUTLINED_FUNCTION_272(v74);
      *v75 = v76;
      OUTLINED_FUNCTION_14_0(v75);
      OUTLINED_FUNCTION_156();

      return FacetBuildingPlan.optimize()();
    }

    else
    {
      v50 = OUTLINED_FUNCTION_17_0();
      v51(v50);
      v52 = OUTLINED_FUNCTION_176();
      v53(v52);
      sub_1D4E0CD60();
      if (v93)
      {
        v54 = OUTLINED_FUNCTION_51_0();
        v55(v54);

        v56 = v24;
LABEL_25:
        sub_1D4DAFEE8(v56);
        goto LABEL_26;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2544) = v78;
      *v78 = v79;
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_156();

      return sub_1D4DB1870();
    }
  }

  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_1D4DBDE40(result + 32, v12 + 56);
  sub_1D4E0CD60();
  *(v12 + 2584) = v93;
  if (v93)
  {
    v61 = *(v12 + 1736);
    v62 = *(v12 + 1064);
    OUTLINED_FUNCTION_271();

    v63 = OUTLINED_FUNCTION_180();
    v64(v63);
    (*(v61 + 8))(v90, v15);
    (*(v62 + 8))();
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 56);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_334((v12 + 56));
  v84 = swift_task_alloc();
  *(v12 + 2592) = v84;
  *v84 = v12;
  OUTLINED_FUNCTION_54_0(v84);
  OUTLINED_FUNCTION_156();

  return FacetBuildingPlan.addFacet<A>(_:)();
}

uint64_t sub_1D4DAC760()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DAC844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v13 + 56);
  v19 = *(v13 + 2584);
  v20 = *(v13 + 2576) + 1;
  *(v13 + 2576) = v20;
  v21 = *(v13 + 2560);
  if (v20 != *(v13 + 2568))
  {
    if (v20 < *(v21 + 16))
    {
      sub_1D4DBDE40(v21 + 40 * v20 + 32, v13 + 56);
      sub_1D4E0CD60();
      *(v13 + 2584) = v19;
      if (!v19)
      {
        OUTLINED_FUNCTION_334((v13 + 56));
        v60 = swift_task_alloc();
        *(v13 + 2592) = v60;
        *v60 = v13;
        OUTLINED_FUNCTION_54_0(v60);
        OUTLINED_FUNCTION_156();

        return FacetBuildingPlan.addFacet<A>(_:)();
      }

      v28 = *(v13 + 1736);
      v77 = *(v13 + 1072);
      v29 = *(v13 + 1064);
      v73 = *(v13 + 1752);
      v75 = *(v13 + 1056);
      v72 = *(v13 + 1040);
      v21 = *(v13 + 992);

      v30 = OUTLINED_FUNCTION_191();
      v31(v30);
      (*(v28 + 8))(v73, v72);
      (*(v29 + 8))(v77, v75);
      __swift_destroy_boxed_opaque_existential_1Tm(v13 + 56);
LABEL_19:
      sub_1D4DAFEE8(v21);
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_32_0(v50);
      OUTLINED_FUNCTION_49_0();

      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_156();

      return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
    }

    __break(1u);
LABEL_32:
    result = OUTLINED_FUNCTION_197();
    if (v12 != 8)
    {
      __break(1u);
      return result;
    }

    v69 = OUTLINED_FUNCTION_27_0(result);
    v70(v69);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v78 = v19;
  OUTLINED_FUNCTION_184();

  v18 += 8;
  v22 = OUTLINED_FUNCTION_146_0();
  v23(v22);
  v24 = *(v19 + 8);
  v19 += 8;
  v24(v12, v17);
  (*(v15 + 8))(v76, v16);
  sub_1D4E0CCB0();
  OUTLINED_FUNCTION_259();
  if (v26)
  {
    v27 = 1;
    goto LABEL_11;
  }

  v12 = *(v13 + 2520);
  OUTLINED_FUNCTION_87_0();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_140_0();
  sub_1D4E0CC60();
  if ((v14 & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_8_0();
  v32();
LABEL_10:
  v33 = OUTLINED_FUNCTION_26_0();
  v34(v33);
  OUTLINED_FUNCTION_148();
  v25 = sub_1D4E0CCF0();
  v27 = 0;
LABEL_11:
  v35 = *(v13 + 1320);
  OUTLINED_FUNCTION_16_0(v25, v27);
  if (!v26)
  {
    v21 = *(v13 + 1352);
    v35 = *(v13 + 1320);
    OUTLINED_FUNCTION_89_0();
    v74 = *(v18 + 64);
    v36 = *(v14 + 32);
    v14 += 32;
    v71 = *(v13 + 1000);
    v37 = OUTLINED_FUNCTION_130_0();
    v38(v37);
    v39 = OUTLINED_FUNCTION_223();
    (v19)(v39);
    OUTLINED_FUNCTION_115_0();
    v16 = swift_allocObject();
    v40 = OUTLINED_FUNCTION_97_0(v16, *(v35 + v74), v71);
    v36(v40);
    v41 = OUTLINED_FUNCTION_230();
    (v19)(v41);
    OUTLINED_FUNCTION_15_0();
    *v18 = v42;
    *(v18 + 8) = v16;
  }

  v43 = OUTLINED_FUNCTION_18_0();
  (v16)(v43);
  OUTLINED_FUNCTION_57_0(v35);
  if (v26)
  {

    sub_1D4E0CD60();
    if (!v78)
    {
      v62 = swift_task_alloc();
      v63 = OUTLINED_FUNCTION_272(v62);
      *v63 = v64;
      OUTLINED_FUNCTION_14_0(v63);
      OUTLINED_FUNCTION_156();

      return FacetBuildingPlan.optimize()();
    }

    OUTLINED_FUNCTION_254();
    goto LABEL_19;
  }

  v44 = *(v13 + 1360);
  v45 = *(v13 + 1192);
  v46 = *(v13 + 1152);
  OUTLINED_FUNCTION_61_0();
  v48 = (v44 + *(v47 + 64));
  *(v13 + 2528) = *v48;
  *(v13 + 2536) = v48[1];
  (*(v49 + 32))();
  (*(v45 + 8))(v44 + v14, v46);
  sub_1D4E0CD60();
  if (v78)
  {
    v21 = *(v13 + 992);
    (*(*(v13 + 1064) + 8))(*(v13 + 1072), *(v13 + 1056));

    goto LABEL_19;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v13 + 2544) = v66;
  *v66 = v67;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DACF74()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 2608) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DAD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v14 = *(v13 + 2608);
  sub_1D4E0CD60();
  if (v14)
  {
    OUTLINED_FUNCTION_254();
    sub_1D4DAFEE8(v12);
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_143_0();

    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_156();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = swift_task_alloc();
    *(v13 + 2616) = v24;
    *v24 = v13;
    v24[1] = sub_1D4DAD394;
    OUTLINED_FUNCTION_156();

    return FacetBuildingPlan.execute()();
  }
}

uint64_t sub_1D4DAD394()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 2624) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DAD48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = v12[124];
  OUTLINED_FUNCTION_79();
  v15 = *(v14 + 176);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v16 = *(v13 + v15);
  v12[329] = v16;
  v17 = v16[2];
  v12[330] = v17;
  OUTLINED_FUNCTION_79();
  v12[331] = *(v18 + 184);
  v19 = v12[328];
  v12[332] = 0;
  v20 = sub_1D4E0CA10();
  if (!v17)
  {
    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_1(v12[169]);
    v31 = v12[124];

    sub_1D4DAFEE8(v31);

    OUTLINED_FUNCTION_8();
    goto LABEL_6;
  }

  if (!v16[2])
  {
    __break(1u);
    return MEMORY[0x1EEE41870](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = v16[4];
  v28 = v16[5];
  v12[333] = v28;

  sub_1D4E0CD60();
  v12[334] = v19;
  if (!v19)
  {
    v41 = swift_task_alloc();
    v12[335] = v41;
    *(v41 + 16) = v29;
    *(v41 + 24) = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v12[336] = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_159_0(v42);
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE41870](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v30 = v12[124];

  sub_1D4DAFEE8(v30);
  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_143_0();

  OUTLINED_FUNCTION_58_0();
LABEL_6:
  OUTLINED_FUNCTION_156();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1D4DADC2C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DADD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 2648);
  v14 = *(v12 + 992);
  OUTLINED_FUNCTION_93();
  v15 = *(v14 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + v13) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = *(v12 + 2648);
    v50 = *(v12 + 992);
    v15 = sub_1D4D9CAB8(0, *(v15 + 16) + 1, 1, v15);
    *(v50 + v49) = v15;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D4D9CAB8(v17 > 1, v18 + 1, 1, v15);
  }

  v19 = *(v12 + 2648);
  v20 = *(v12 + 992);
  *(v15 + 16) = v18 + 1;
  v21 = v15 + 40 * v18;
  v22 = *(v12 + 96);
  v23 = *(v12 + 112);
  *(v21 + 64) = *(v12 + 128);
  *(v21 + 32) = v22;
  *(v21 + 48) = v23;
  *(v20 + v19) = v15;
  swift_endAccess();

  v32 = *(v12 + 2672);
  v33 = *(v12 + 2656) + 1;
  *(v12 + 2656) = v33;
  v34 = *(v12 + 2632);
  if (v33 != *(v12 + 2640))
  {
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
    }

    else
    {
      v51 = *(v34 + 16 * v33 + 32);
      *(v12 + 2664) = *(&v51 + 1);

      sub_1D4E0CD60();
      *(v12 + 2672) = v32;
      if (v32)
      {
        v36 = *(v12 + 992);

        sub_1D4DAFEE8(v36);
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_32_0(*(v12 + 1328));
        OUTLINED_FUNCTION_129_0();

        OUTLINED_FUNCTION_58_0();
        goto LABEL_10;
      }

      v46 = swift_task_alloc();
      *(v12 + 2680) = v46;
      *(v46 + 16) = v51;
      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2688) = v47;
      *v47 = v48;
      OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_156();
    }

    return MEMORY[0x1EEE41870](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_6_0();
  v35 = *(v12 + 992);

  sub_1D4DAFEE8(v35);

  OUTLINED_FUNCTION_8();
LABEL_10:
  OUTLINED_FUNCTION_156();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

void sub_1D4DAE4D8()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 992);

  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v2);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAE76C()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4DAFEE8(*(v0 + 992));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAE9F4()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = v0[124];
  (*(v0[178] + 8))(v0[179], v0[177]);
  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v2);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAEC9C()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = v0[124];
  (*(v0[157] + 8))(v0[158], v0[156]);
  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v2);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAEF44()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4DAFEE8(*(v0 + 992));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF1CC()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4DAFEE8(*(v0 + 992));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF454()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 133);
  v2 = *(v0 + 992);

  OUTLINED_FUNCTION_3_0();
  v3 = OUTLINED_FUNCTION_78();
  sub_1D4DBA9FC(v3, v4, v1, v5);
  sub_1D4DAFEE8(v2);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v6);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF710()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 992);

  v2 = OUTLINED_FUNCTION_30();
  v3(v2);
  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v4);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF9D0()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_254();
  sub_1D4DAFEE8(v0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAFC5C()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_254();
  sub_1D4DAFEE8(v0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D4DAFEE8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1D4E0CD00();
  type metadata accessor for ContentManagementPlan.Link();
  swift_getAssociatedTypeWitness();
  sub_1D4DB94C8();
  type metadata accessor for FacetCollection();
  swift_getFunctionTypeMetadata1();
  swift_getTupleTypeMetadata3();
  v2 = sub_1D4E0CC80();
  v3 = *(*a1 + 160);
  swift_beginAccess();
  *(a1 + v3) = v2;

  sub_1D4E0CEE0();
  type metadata accessor for ContentManagementPlan.Link();
  swift_getTupleTypeMetadata3();
  v4 = sub_1D4E0CC80();
  v5 = *(*a1 + 168);
  swift_beginAccess();
  *(a1 + v5) = v4;

  v6 = *(*a1 + 176);
  swift_beginAccess();
  *(a1 + v6) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D4DB01E8@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CE50();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  swift_getWitnessTable();
  result = sub_1D4E0CE20();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DB03FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *v1;
  v2[13] = *(*v1 + 88);
  v2[14] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[15] = AssociatedTypeWitness;
  v2[16] = *(AssociatedTypeWitness - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB0500, 0, 0);
}

uint64_t sub_1D4DB0500()
{
  v27 = v0[12];
  v1 = v0[11];
  v2 = v0[13];
  v3 = v0[14];
  v0[18] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_291();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_262();
  v0[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_162_0();
  v0[20] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_147_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_156_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_262();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_168();
  swift_getAssociatedConformanceWitness();
  v0[5] = sub_1D4E0C990();
  v25 = v0 + 5;
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_112_0();
  v0[6] = sub_1D4E0CC80();
  v0[7] = v1;
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v2;
  KeyPath = swift_getKeyPath();

  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = KeyPath;
  OUTLINED_FUNCTION_141_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_153();
  v0[21] = sub_1D4E0CD00();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  v6 = sub_1D4E0C960();
  v8 = v7;
  v10 = v9;

  v0[2] = v6;
  v0[3] = v8;
  v0[4] = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v3;
  *(v11 + 24) = v2;
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_140_0();
  sub_1D4E0C970();
  sub_1D4E0C950();

  v12 = v0[3];
  v0[22] = v0[2];
  v0[23] = v12;
  v0[24] = v0[4];
  v0[25] = *(*v27 + 96);

  if (sub_1D4E0CFC0())
  {
    OUTLINED_FUNCTION_147_0();
    sub_1D4E0D000();
    v13 = v0[8];
    v0[26] = 1;
    v14 = v0[14];
    v28 = v0[13];
    v15 = OUTLINED_FUNCTION_324(v13);
    v15[2] = v14;
    v15[3] = v28;
    v15[4] = v25;
    OUTLINED_FUNCTION_10_0();
    swift_getWitnessTable();
    v0[27] = OUTLINED_FUNCTION_161_0();

    v16 = swift_task_alloc();
    v0[28] = v16;
    v16[2] = v14;
    v16[3] = v28;
    v16[4] = v0 + 6;
    v16[5] = v25;
    OUTLINED_FUNCTION_117_0();
    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_86_0(v17);
    OUTLINED_FUNCTION_253();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_323();
  v0[33] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D4DB09F0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4DB0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[26];
  if (v15 == sub_1D4E0CFC0())
  {

    OUTLINED_FUNCTION_323();
    v14[33] = OUTLINED_FUNCTION_111();
    sub_1D4D8E454();
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  OUTLINED_FUNCTION_105();
  v16 = sub_1D4E0D000();
  v20 = v14[8];
  v14[26] = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  v21 = v14[14];
  v36 = v14[13];
  v22 = OUTLINED_FUNCTION_324(v20);
  v22[2] = v21;
  v22[3] = v36;
  v22[4] = v14 + 5;
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v14[27] = OUTLINED_FUNCTION_161_0();

  v23 = swift_task_alloc();
  v14[28] = v23;
  v23[2] = v21;
  v23[3] = v36;
  v23[4] = v14 + 6;
  v23[5] = v14 + 5;
  v37 = v36 + 72;
  OUTLINED_FUNCTION_117_0();
  v35 = v24 + *v24;
  v25 = swift_task_alloc();
  v14[29] = v25;
  *v25 = v14;
  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_32();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, v35, v37, a11, a12, a13, a14);
}

uint64_t sub_1D4DB0D2C()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 248);

  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_58();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DB0DB0()
{
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  v1[1] = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v1[2].i64[0] = v0 + 48;
  OUTLINED_FUNCTION_117_0();
  v8 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  OUTLINED_FUNCTION_47();
  type metadata accessor for ContentRegistration();
  OUTLINED_FUNCTION_112_0();
  v4 = sub_1D4E0CD00();
  *v3 = v0;
  v3[1] = sub_1D4DB0F48;
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);

  return v8(v0 + 80, 0xD000000000000012, 0x80000001D4E32A90, &unk_1D4E0E5B8, v1, v4, v6, v5);
}

uint64_t sub_1D4DB0F48()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4DB10BC()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D4DB115C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DB11F4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DB1280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v11 - v8;
  (*(*(AssociatedTypeWitness - 8) + 16))(v11 - v8, a1, AssociatedTypeWitness);
  (*(*(v5 - 8) + 16))(&v9[*(TupleTypeMetadata2 + 48)], v11[0], v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  LOBYTE(v5) = sub_1D4E0CE30();
  (*(v7 + 8))(v9, TupleTypeMetadata2);
  return v5 & 1;
}

uint64_t sub_1D4DB157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4DB15A8, 0, 0);
}

uint64_t sub_1D4DB15A8()
{
  OUTLINED_FUNCTION_123();
  sub_1D4E0CD60();
  OUTLINED_FUNCTION_148();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_226();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_226();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 16);
  OUTLINED_FUNCTION_153();
  v3 = swift_checkMetadataState();
  v11 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_1D4DB1790;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v8, v6, v7, v3, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB1790()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_1D4DB1870()
{
  OUTLINED_FUNCTION_31();
  v1[3] = v2;
  v1[4] = v0;
  sub_1D4DA1130(255, &qword_1EE08A670);
  OUTLINED_FUNCTION_147_0();
  v3 = sub_1D4E0D210();
  v1[5] = v3;
  OUTLINED_FUNCTION_45(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_288();
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for ContentManagementPlan.Link.Mode();
  v1[9] = v5;
  OUTLINED_FUNCTION_45(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_117();
  v7 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB19AC()
{
  OUTLINED_FUNCTION_123();
  (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
  OUTLINED_FUNCTION_105();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[11];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[5];
    v4 = v0[3];
    (*(v0[6] + 32))(v0[8], v2, v3);
    v5 = OUTLINED_FUNCTION_91();
    v6(v5);
    sub_1D4DB4FB0(v3, (v0 + 2), v4);
    (*(v0[6] + 8))(v0[8], v0[5]);

    OUTLINED_FUNCTION_8();

    return v12();
  }

  else
  {
    v0[12] = *(v2 + 8);
    OUTLINED_FUNCTION_109_0();
    v13 = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v0[13] = v8;
    *v8 = v9;
    v8[1] = sub_1D4DB1BA0;
    v10 = v0[3];

    return v13(v10);
  }
}

uint64_t sub_1D4DB1BA0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB1C98()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DB1D0C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_37();

  return v0();
}

BOOL sub_1D4DB1D8C(uint64_t a1)
{
  v8 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for ContentRegistration();
  v2 = sub_1D4E0CEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA70();
  swift_endAccess();
  v6 = __swift_getEnumTagSinglePayload(v5, 1, v1) == 1;
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1D4DB202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 48);
  v7 = swift_checkMetadataState();
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_1D4DB2200;

  return v10(a3, 1, v7, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB2200()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D4DB2330()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_8();
  return v1();
}

uint64_t sub_1D4DB235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ContentRegistration();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_1D4DB24B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v4 = *a3;
  v3[17] = *(*a3 + 88);
  v3[18] = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3[19] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[20] = AssociatedTypeWitness;
  v3[21] = *(AssociatedTypeWitness - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for ContentManagementPlan.Link();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  sub_1D4E0CD00();
  v3[26] = type metadata accessor for ContentManagementPlan.Link();
  v3[27] = swift_getTupleTypeMetadata3();
  v7 = sub_1D4E0CEE0();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB27D4, 0, 0);
}

uint64_t sub_1D4DB27D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v11 = v10[16];
  OUTLINED_FUNCTION_88();
  v13 = *(v12 + 152);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v10[32] = *(v11 + v13);
  sub_1D4E0CA10();
  v10[12] = sub_1D4E0CC20();
  if (v10[12] == sub_1D4E0CCB0())
  {
    v14 = OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_58();
    v18 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_211();
    sub_1D4E0CC60();
    if (v18)
    {
      OUTLINED_FUNCTION_36();
      (*(v19 + 16))();
    }

    else
    {
      v38 = v10[27];
      result = sub_1D4E0CF80();
      if (*(*(v38 - 8) + 64) != 8)
      {
        __break(1u);
        return result;
      }

      v39 = OUTLINED_FUNCTION_231(result);
      v40(v39);
      swift_unknownObjectRelease();
    }

    v20 = v10[27];
    sub_1D4E0CCF0();
    v14 = OUTLINED_FUNCTION_93_0();
    v17 = v20;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v21 = OUTLINED_FUNCTION_274();
  v22(v21);
  OUTLINED_FUNCTION_30_0();
  if (v23)
  {
    OUTLINED_FUNCTION_273();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_196();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_107_0();
    v25(v24);
    sub_1D4E0CD60();
    OUTLINED_FUNCTION_299();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v10[39] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_133_0(v35);
    OUTLINED_FUNCTION_196();

    return sub_1D4DB1870();
  }
}

uint64_t sub_1D4DB2AC4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_48_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v3[41] = v3[14];
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v3[42] = v10;
    *v10 = v11;
    v10[1] = sub_1D4DB2C3C;

    return sub_1D4DB1870();
  }
}

uint64_t sub_1D4DB2C3C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_48_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v3[2] = v3[35];
    v10 = v3 + 2;
    v10[1] = v10[34];
    *(v10 + 1) = *(v10 + 35);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = *(AssociatedConformanceWitness + 56);
    OUTLINED_FUNCTION_147_0();
    v13 = swift_checkMetadataState();
    v18 = (v12 + *v12);
    v14 = swift_task_alloc();
    v10[42] = v14;
    *v14 = v5;
    v14[1] = sub_1D4DB2EA4;
    v15 = v10[20];
    v16 = v10[39];

    return (v18)(v16, v15, v10, v13, AssociatedConformanceWitness);
  }
}

uint64_t sub_1D4DB2EA4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[45] = v0;

  (*(v3[21] + 8))(v3[22], v3[20]);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB3010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_105();
  v19(v18);
  v20 = v10[45];
  v21 = sub_1D4E0CCB0();
  v22 = v10[12];
  if (v22 == v21)
  {
    v23 = OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_146_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_175();
    sub_1D4E0CC60();
    if (v12)
    {
      OUTLINED_FUNCTION_36();
      (*(v27 + 16))();
    }

    else
    {
      v48 = v10[27];
      result = sub_1D4E0CF80();
      if (*(*(v48 - 8) + 64) != 8)
      {
        __break(1u);
        return result;
      }

      v49 = OUTLINED_FUNCTION_231(result);
      v50(v49);
      swift_unknownObjectRelease();
    }

    v22 = v10[30];
    v11 = v10[27];
    sub_1D4E0CCF0();
    v23 = OUTLINED_FUNCTION_93_0();
    v26 = v11;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v28 = OUTLINED_FUNCTION_274();
  v29(v28);
  OUTLINED_FUNCTION_30_0();
  if (v30)
  {
    OUTLINED_FUNCTION_273();

    OUTLINED_FUNCTION_8();
LABEL_11:
    OUTLINED_FUNCTION_196();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }

  v31 = OUTLINED_FUNCTION_107_0();
  v32(v31);
  sub_1D4E0CD60();
  if (v20)
  {
    v33 = OUTLINED_FUNCTION_251();
    v34(v33);

    OUTLINED_FUNCTION_3_0();
    sub_1D4DBA9FC(v13, v22, v11, v35);

    OUTLINED_FUNCTION_37();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_299();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v10[39] = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_196();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DB32E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 89);
  v2 = OUTLINED_FUNCTION_251();
  v3(v2);
  OUTLINED_FUNCTION_3_0();
  v4 = OUTLINED_FUNCTION_78();
  sub_1D4DBA9FC(v4, v5, v1, v6);
  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_37();

  return v7();
}

uint64_t sub_1D4DB3390()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_105();
  v5(v4);
  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_37();

  return v6();
}

uint64_t sub_1D4DB343C()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_58();
  v5(v4);

  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_335();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D4DB3500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4DB3524, 0, 0);
}

uint64_t sub_1D4DB3524()
{
  OUTLINED_FUNCTION_31();
  sub_1D4E0CD60();
  OUTLINED_FUNCTION_109_0();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_1D4DB362C;
  v4 = *(v0 + 16);

  return v6(v4);
}

uint64_t sub_1D4DB362C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

void sub_1D4DB370C()
{
  OUTLINED_FUNCTION_199();
  v13 = v1;
  v14 = v2;
  v12 = v3;
  v15 = v4;
  v5 = *(*v0 + 80);
  OUTLINED_FUNCTION_136_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_265();
  v11[2] = v5;
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_228();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  v11[1] = sub_1D4E0CEE0();
  OUTLINED_FUNCTION_214();
  type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v11 - v7);
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CD00();
  sub_1D4DBD70C();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_147_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_59();
  v9 = sub_1D4E0CCB0();

  v16 = v12;
  v17 = v13;
  v18 = v14;
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_147_0();
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_305();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v9;
  *v8 = &unk_1D4E0E500;
  v8[1] = v10;
  swift_storeEnumTagMultiPayload();
  swift_checkMetadataState();
  sub_1D4DB3CE0();

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB39DC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v3[9] = v4;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB3AB8, 0, 0);
}

uint64_t sub_1D4DB3AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_244();
  if (v12)
  {
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_72_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_167_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_108_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_63_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_153_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_112_0();
    sub_1D4E0CEE0();
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CD20();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287();
    v13 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v13, v14, v15);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_255();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1D4DB3CE0()
{
  type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_105();

  return v1(v0);
}

void sub_1D4DB3D40()
{
  OUTLINED_FUNCTION_199();
  v1 = v0;
  v15 = v2;
  v16 = v3;
  OUTLINED_FUNCTION_136_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_136_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_264();
  v14[1] = type metadata accessor for ContentRegistration();
  OUTLINED_FUNCTION_214();
  v14[0] = type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_171();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v8 = v7;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  sub_1D4E0CA10();
  v12 = sub_1D4E0CCB0();

  (*(v8 + 16))(v11, v15, v6);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_215();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_305();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v12;
  *AssociatedTypeWitness = &unk_1D4E0E4F0;
  AssociatedTypeWitness[1] = v13;
  swift_storeEnumTagMultiPayload();
  swift_checkMetadataState();
  sub_1D4DB3CE0();

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB4010(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v3[9] = v4;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB40EC, 0, 0);
}

uint64_t sub_1D4DB40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_244();
  if (v12)
  {
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_306();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_99_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_108_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_153_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_233();
    type metadata accessor for ContentRegistration();
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CD20();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287();
    v13 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v13, v14, v15);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_156();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1D4DB42F4()
{
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_206();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_190();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_190();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_205();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_215();
  sub_1D4E0CE50();
  sub_1D4E0CA10();
  v1 = sub_1D4E0CCB0();

  OUTLINED_FUNCTION_215();
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_154_0();
  sub_1D4E0CE60();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_214();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_305();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_155_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4DB3CE0();
}

uint64_t sub_1D4DB45B8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v3[9] = v4;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB4694, 0, 0);
}

uint64_t sub_1D4DB4694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_244();
  if (v12)
  {
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_72_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_167_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_108_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_63_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_153_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_112_0();
    sub_1D4E0CD00();
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CD20();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287();
    v13 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v13, v14, v15);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_255();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

void sub_1D4DB48BC()
{
  OUTLINED_FUNCTION_199();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v2;
  v10 = *(*v2 + 80);
  v11 = *(*v2 + 88);
  OUTLINED_FUNCTION_153();
  type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_247();
  v13 = *(v9 + 176);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v19 = *(*(v2 + v13) + 16);
  OUTLINED_FUNCTION_301();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v4;
  v14[4] = v11;
  v14[5] = v8;
  v14[6] = v6;
  OUTLINED_FUNCTION_93();

  sub_1D4D9C410();
  v15 = *(*(v2 + v13) + 16);
  sub_1D4D9C4CC(v15);
  v16 = *(v2 + v13);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 16 * v15;
  *(v17 + 32) = &unk_1D4E0E510;
  *(v17 + 40) = v14;
  *(v2 + v13) = v16;
  swift_endAccess();
  OUTLINED_FUNCTION_300();
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v2;
  v18[4] = v19;
  *v1 = &unk_1D4E0E520;
  v1[1] = v18;
  OUTLINED_FUNCTION_314();
  swift_storeEnumTagMultiPayload();
  sub_1D4DB3CE0();

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB4A74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = *(a5 - 8);
  v7 = swift_task_alloc();
  v5[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_1D4DB4BC8;

  return v10(v7);
}

uint64_t sub_1D4DB4BC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_37();
  }

  else
  {
    v9 = v3[4];
    v8 = v3[5];
    v10 = v3[2];
    v11 = v3[3];
    v10[3] = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
    (*(v9 + 32))(boxed_opaque_existential_1Tm, v8, v11);

    OUTLINED_FUNCTION_8();
  }

  return v7();
}

uint64_t sub_1D4DB4CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v4[19] = v5;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB4DA0, 0, 0);
}

uint64_t sub_1D4DB4DA0()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 128);
  if (*(v2 + *(*v2 + 216)) != 1)
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    *(v0 + 49) = v1;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287();
    v8 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v8, v9, v10);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = *(v0 + 136);
  v4 = *(*v2 + 184);
  OUTLINED_FUNCTION_106_0();
  result = swift_beginAccess();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v2 + v4);
  v7 = *(v0 + 136);
  if (*(v6 + 16) <= v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1D4DBDB00(v6 + 40 * v7 + 32, v0 + 16);
  if ((*(v0 + 48) & 1) == 0)
  {
    sub_1D4D9EA28((v0 + 16), (v0 + 56));
    swift_dynamicCast();

    OUTLINED_FUNCTION_8();
    goto LABEL_9;
  }

  *(v0 + 112) = *(v0 + 16);
  sub_1D4DA1130(0, &qword_1EE08A670);
  swift_willThrowTypedImpl();
LABEL_7:

  OUTLINED_FUNCTION_27();
LABEL_9:
  OUTLINED_FUNCTION_335();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D4DB4FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t sub_1D4DB5080()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 40);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB524C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v20 = a4;
  v21 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19[0] = swift_getAssociatedTypeWitness();
  v19[1] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4E0CD00();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = *a2;
  v15 = *(*(AssociatedTypeWitness - 8) + 16);
  v15(v19 - v12, a1, AssociatedTypeWitness);
  *&v13[*(TupleTypeMetadata2 + 48)] = v14;
  v16 = *v20;
  v15(v11, v21, AssociatedTypeWitness);
  *&v11[*(TupleTypeMetadata2 + 48)] = v16;
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  LOBYTE(v15) = sub_1D4E0CAA0();
  v17 = *(v8 + 8);
  v17(v11, TupleTypeMetadata2);
  v17(v13, TupleTypeMetadata2);
  return v15 & 1;
}

BOOL sub_1D4DB55D4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  v0 = sub_1D4E0CE30();

  return (v0 & 1) == 0;
}

uint64_t sub_1D4DB57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v19 = a4;
  v20 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1D4E0CE50();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D4DBFCA0(sub_1D4DBE010, v18, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  sub_1D4E0CD00();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  v21 = a1;
  v16 = a4;
  v17 = a5;
  v11 = swift_getAssociatedTypeWitness();
  v21 = sub_1D4DBFCA0(sub_1D4DBE030, v15, v8, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CE50();
  sub_1D4E0CD00();
  swift_getWitnessTable();
  return sub_1D4E0CE40();
}

uint64_t sub_1D4DB5AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_1D4DB5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[11] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[12] = swift_getAssociatedConformanceWitness();
  v5[13] = type metadata accessor for ContentRegistration.SourceInfo();
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for ContentRegistration();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[20] = AssociatedTypeWitness;
  v8 = sub_1D4E0CEE0();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = *(AssociatedTypeWitness - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB5F20, 0, 0);
}

uint64_t sub_1D4DB5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[7];
  v14[2] = sub_1D4E0CC80();
  v14[28] = *v15;
  OUTLINED_FUNCTION_148();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  v14[29] = sub_1D4E0CD00();
  sub_1D4E0CA10();
  v14[3] = sub_1D4E0CC20();
  v16 = sub_1D4E0CCB0();
  v17 = v14[3];
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_285();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_32();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_170();
    v27 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_226();
    sub_1D4E0CC60();
    if (v27)
    {
      v28 = *(v14[28] + 8 * v17 + 32);
      sub_1D4E0CA10();
    }

    else
    {
      v28 = sub_1D4E0CF80();
    }

    v14[30] = v28;
    v29 = v14[29];
    v30 = v14[9];
    v31 = v14[8];
    OUTLINED_FUNCTION_182();
    sub_1D4E0CCF0();
    v14[4] = v28;
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    OUTLINED_FUNCTION_233();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_11_0();
    swift_getWitnessTable();
    v34 = OUTLINED_FUNCTION_44_0();
    v40 = sub_1D4DBFCA0(v34, v35, v29, AssociatedTypeWitness, v36, v37, v38, v39);
    OUTLINED_FUNCTION_282(v40);
    OUTLINED_FUNCTION_146_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[32] = AssociatedConformanceWitness;
    v42 = *(AssociatedConformanceWitness + 16);
    OUTLINED_FUNCTION_185();
    v14[33] = swift_checkMetadataState();
    v54 = v42 + *v42;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v14[34] = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_34_0(v43);
    OUTLINED_FUNCTION_32();

    return v51(v45, v46, v47, v48, v49, v50, v51, v52, v54, AssociatedConformanceWitness + 16, a11, a12, a13, a14);
  }
}

uint64_t sub_1D4DB6224()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB665C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB6768()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB6E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_325();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D4DB6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  (*(v10[16] + 8))(v10[18], v10[15]);
  v11 = OUTLINED_FUNCTION_105();
  v12(v11);
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_325();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D4DB6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  (*(v10[16] + 8))(v10[19], v10[15]);
  v11 = OUTLINED_FUNCTION_105();
  v12(v11);
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_325();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D4DB70B8()
{
  OUTLINED_FUNCTION_190();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_182();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_151_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 32);
  OUTLINED_FUNCTION_269();
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB7210()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_36();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  return v0;
}

uint64_t sub_1D4DB73C4()
{
  sub_1D4DB7210();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4DB741C@<X0>(uint64_t a1@<X8>)
{
  v28[0] = a1;
  sub_1D4DA1130(255, &qword_1EE08A670);
  OUTLINED_FUNCTION_215();
  v1 = sub_1D4E0D210();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_248();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v11, v12, v13);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v14);
  v15 = type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_10();
  v17 = v16;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  (*(v17 + 16))(v28 - v19, v28[2], v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = OUTLINED_FUNCTION_237();
    v22(v21, v20, v1);
    OUTLINED_FUNCTION_258();
    v23(v7, v10, v1);
    sub_1D4DB4FB0(v1, &v30, v28[0]);
    return (*(v3 + 8))(v10, v1);
  }

  else
  {
    (*(v17 + 8))(v20, v15);
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_263();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    v29 = 4;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    v25 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v25, v26, v27);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    sub_1D4E0C8E0();
    return swift_willThrow();
  }
}

void ContentManagementPlan.after<A, each B>(_:operation:)()
{
  OUTLINED_FUNCTION_199();
  v3 = v2;
  v4 = v1;
  v44 = v6;
  v45 = v5;
  v41 = v8;
  v42 = v7;
  v39 = v9;
  v40 = v10;
  if (v2 == 1)
  {
    TupleTypeMetadata = type metadata accessor for ContentManagementPlan.Link();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v1);
    v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; v3 != i; ++i)
    {
      *&v13[8 * i] = type metadata accessor for ContentManagementPlan.Link();
    }

    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_224();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v43 = TupleTypeMetadata;
  OUTLINED_FUNCTION_10();
  v37 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v36 = v17;
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v0;
  if (v3)
  {
    v19 = v44 & 0xFFFFFFFFFFFFFFFELL;
    v20 = (v43 + 32);
    v21 = v3;
    do
    {
      if (v3 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = *v20;
      }

      v19 += 8;
      v23 = *v4++;
      OUTLINED_FUNCTION_147_0();
      type metadata accessor for ContentManagementPlan.Link();
      OUTLINED_FUNCTION_12();
      (*(v24 + 16))(&v18[v22], v23);
      v20 += 4;
      --v21;
    }

    while (v21);
  }

  v25 = v37;
  v26 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v27 = (v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v45;
  v30 = *(v45 + 16);
  *(v28 + 2) = v3;
  *(v28 + 3) = v30;
  MetadataPack = swift_allocateMetadataPack();
  v33 = v42;
  v32 = v43;
  *(v28 + 4) = MetadataPack;
  *(v28 + 5) = v33;
  *(v28 + 6) = *(v29 + 24);
  (*(v25 + 32))(&v28[v26], v18, v32);
  v34 = &v28[v27];
  v35 = v40;
  *v34 = v39;
  *(v34 + 1) = v35;
  *&v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8] = v38;
  swift_retain_n();

  sub_1D4DB48BC();

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB79FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v20;
  v8[10] = v21;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  if (a6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for ContentManagementPlan.Link();
  }

  else
  {
    v12 = swift_task_alloc();
    for (i = 0; a6 != i; ++i)
    {
      *(v12 + 8 * i) = type metadata accessor for ContentManagementPlan.Link();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v8[11] = TupleTypeMetadata;
  v8[12] = *(TupleTypeMetadata - 8);
  v8[13] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[14] = v14;
  if (a6)
  {
    v15 = (TupleTypeMetadata + 32);
    v16 = a6;
    do
    {
      if (a6 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      *v14++ = a2 + v17;
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D4DB7BD0, 0, 0);
}

uint64_t sub_1D4DB7BD0()
{
  OUTLINED_FUNCTION_123();
  if (v0[6])
  {
    v1 = 0;
    v2 = 32;
    do
    {
      v3 = v0[6];
      if (v3 == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(v0[11] + v2);
      }

      v5 = v0[13];
      v6 = *(v0[14] + 8 * v1);
      type metadata accessor for ContentManagementPlan.Link();
      OUTLINED_FUNCTION_12();
      (*(v7 + 16))(v5 + v4, v6);
      ++v1;
      v2 += 16;
    }

    while (v1 != v3);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[15] = v8;
  *v8 = v9;
  v8[1] = sub_1D4DB7D14;
  OUTLINED_FUNCTION_196();

  return sub_1D4DB80C4(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D4DB7D14()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB7E0C()
{
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_232();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_1D4DB7E84()
{
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_232();
  v1(v0);

  OUTLINED_FUNCTION_37();

  return v2();
}

uint64_t sub_1D4DB7F00()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + 16);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_185();
    type metadata accessor for ContentManagementPlan.Link();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_117();
    for (i = 0; v2 != i; ++i)
    {
      OUTLINED_FUNCTION_110_0();
      *(v3 + 8 * i) = type metadata accessor for ContentManagementPlan.Link();
    }

    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_224();
    swift_getTupleTypeMetadata();
  }

  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_32();

  return sub_1D4DB79FC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D4DB80C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v28;
  v8[11] = v29;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[3] = a1;
  if (a6 == 1)
  {
    TupleTypeMetadata = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v13 = 16;
  }

  else
  {
    v13 = (8 * a6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = swift_task_alloc();
    for (i = 0; a6 != i; ++i)
    {
      *(v14 + 8 * i) = *((a8 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v26[12] = v13;
  v26[13] = TupleTypeMetadata;
  v26[14] = *(TupleTypeMetadata - 8);
  v26[15] = swift_task_alloc();
  v26[16] = swift_task_alloc();
  v26[17] = swift_task_alloc();
  v16 = swift_task_alloc();
  v26[18] = v16;
  if (a6)
  {
    v17 = v16;
    v18 = 0;
    do
    {
      if (a6 == 1)
      {
        v19 = 0;
      }

      else
      {
        v20 = a2;
        v21 = v13;
        v22 = swift_task_alloc();
        for (j = 0; a6 != j; ++j)
        {
          *(v22 + 8 * j) = type metadata accessor for ContentManagementPlan.Link();
        }

        v24 = swift_getTupleTypeMetadata();

        v19 = *(v24 + 16 * v18 + 32);
        v13 = v21;
        a2 = v20;
      }

      *(v17 + 8 * v18++) = a2 + v19;
    }

    while (v18 != a6);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D4DB830C, 0, 0);
}

void sub_1D4DB830C()
{
  v1 = 0;
  v2 = 32;
  while (v1 != v0[7])
  {
    v20 = v2;
    v21 = *(v0[18] + 8 * v1);
    OUTLINED_FUNCTION_62();
    v3 = type metadata accessor for ContentManagementPlan.Link();
    OUTLINED_FUNCTION_10();
    v5 = v4;
    v6 = OUTLINED_FUNCTION_117();
    (*(v5 + 16))(v6, v21, v3);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_226();
    sub_1D4DB895C(v7);
    (*(v5 + 8))(v6, v3);
    ++v1;

    v2 = v20 + 16;
  }

  v0[2] = v0[6];
  v8 = swift_task_alloc();
  v0[19] = v8;
  v9 = OUTLINED_FUNCTION_78();
  v10(v9);
  if (v1)
  {
    v11 = 0;
    v12 = 32;
    do
    {
      v13 = v0[7];
      v14 = v0[16];
      if (v13 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v0[13] + v12);
        v14 += v15;
      }

      (*(*(*((v0[9] & 0xFFFFFFFFFFFFFFFELL) + 8 * v11) - 8) + 16))(v14, v0[15] + v15);
      *(v8 + 8 * v11++) = v14;
      v12 += 16;
    }

    while (v11 != v13);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[20] = v16;
  *v16 = v17;
  v16[1] = sub_1D4DB86B4;
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1D4DB86B4()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[21] = v0;

  if (!v0)
  {
    v7 = v3[16];
    v8 = v3[13];
    v9 = v3[14];
    v10 = *(v9 + 8);
    v3[22] = v10;
    v3[23] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v11 = OUTLINED_FUNCTION_52();
    (v10)(v11);
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_335();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4DB87EC()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  (*(v0 + 176))(*(v0 + 136), *(v0 + 104));

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_335();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D4DB8888()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0[14] + 8);
  (v1)(v0[16], v0[13]);
  v2 = OUTLINED_FUNCTION_58();
  v1(v2);
  v3 = OUTLINED_FUNCTION_87_0();
  v1(v3);

  OUTLINED_FUNCTION_37();

  return v4();
}

uint64_t ContentManagementPlan.after<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = v9;

  sub_1D4DB48BC();
}

uint64_t sub_1D4DB8A68(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1D4DB8B70;

  return v8(a1, v4 + 16);
}

uint64_t sub_1D4DB8B70()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_37();

    return v10();
  }
}

uint64_t sub_1D4DB8CA8()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_249();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_196();

  return sub_1D4DB8A68(v3, v4, v5, v6);
}

uint64_t ContentManagementPlan.after(operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  OUTLINED_FUNCTION_301();
  v8 = swift_allocObject();
  *(v8 + 16) = *(a3 + 16);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = v7;

  sub_1D4DB48BC();

  return sub_1D4DBA9FC(v10, v11, v12, sub_1D4DB90CC);
}

uint64_t sub_1D4DB8E18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D4DB8F10;

  return v7(v4 + 16);
}

uint64_t sub_1D4DB8F10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_37();

    return v10();
  }
}

uint64_t sub_1D4DB9024()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_249();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_67_0(v3);
  OUTLINED_FUNCTION_162_0();

  return sub_1D4DB8E18(v5, v6, v7, v1);
}

void sub_1D4DB90CC(id a1, char a2)
{
  if (a2)
  {
  }
}

void ContentManagementPlan.prepare(content:in:facets:)()
{
  OUTLINED_FUNCTION_199();
  v27 = v0;
  v28 = v1;
  v26 = v2;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  v25 = v4;
  OUTLINED_FUNCTION_103();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_306();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_307();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_163_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4D9F944();
  OUTLINED_FUNCTION_164_0();
  v7 = OUTLINED_FUNCTION_221();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_248();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = *(v8 + 56);
  v16 = OUTLINED_FUNCTION_170();
  v17(v16);
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(v11 + v15, v26, AssociatedTypeWitness);
  OUTLINED_FUNCTION_62();
  v19();
  (*(v18 + 32))(&v14[*(v8 + 56)], v11 + v15, AssociatedTypeWitness);
  v20 = &v14[*(v8 + 72)];
  OUTLINED_FUNCTION_115_0();
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 2) = v5;
  *(v21 + 3) = v22;
  v23 = v28;
  *(v21 + 4) = v27;
  *(v21 + 5) = v23;
  *v20 = sub_1D4DB9498;
  v20[1] = v21;
  OUTLINED_FUNCTION_93();
  sub_1D4DB94C8();
  OUTLINED_FUNCTION_307();
  type metadata accessor for FacetCollection();
  OUTLINED_FUNCTION_261();
  swift_getFunctionTypeMetadata1();
  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v30 = v0;
  v31 = v1;
  v29 = v2;
  v4 = v3;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_157_0();
  swift_getAssociatedTypeWitness();
  v26 = v7;
  v27 = v6;
  OUTLINED_FUNCTION_263();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_168();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_39();
  v28 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_82();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4D9F944();
  OUTLINED_FUNCTION_171();
  v9 = OUTLINED_FUNCTION_221();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_248();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *(v4 + 8);
  v25 = *v4;
  LOBYTE(v4) = *(v4 + 16);
  v18 = *(v10 + 56);
  *v13 = v25;
  *(v13 + 8) = v17;
  *(v13 + 16) = v4;
  v19 = *(AssociatedTypeWitness - 8);
  (*(v19 + 16))(v13 + v18, v29, AssociatedTypeWitness);
  v20 = *(v13 + 16);
  *v16 = *v13;
  v16[16] = v20;
  (*(v19 + 32))(&v16[*(v10 + 56)], v13 + v18, AssociatedTypeWitness);
  v21 = &v16[*(v10 + 72)];
  OUTLINED_FUNCTION_115_0();
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 2) = v27;
  *(v22 + 3) = v23;
  v24 = v31;
  *(v22 + 4) = v30;
  *(v22 + 5) = v24;
  *v21 = sub_1D4DBE04C;
  v21[1] = v22;
  OUTLINED_FUNCTION_93();
  sub_1D4DB9858(v25, v17, v4);
  sub_1D4DB94C8();
  OUTLINED_FUNCTION_163_0();
  type metadata accessor for FacetCollection();
  OUTLINED_FUNCTION_261();
  swift_getFunctionTypeMetadata1();

  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB9498@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

void sub_1D4DB94C8()
{
  if (!qword_1EC7E3A78)
  {
    sub_1D4DA1130(255, &qword_1EC7E3A80);
    v0 = sub_1D4E0CD00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3A78);
    }
  }
}

uint64_t sub_1D4DB9858(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    return sub_1D4DB986C(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1D4DB986C(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x1DA6E1430);
  }

  return sub_1D4E0CA10();
}

void ContentManagementPlan.relate(content:to:as:)()
{
  OUTLINED_FUNCTION_199();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_228();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_306();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_92_0();
  v5 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_209();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_269();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = *v3;
  v11 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v12 = *v1;
  v22 = v1[1];
  v13 = v1[3];
  v23 = v1[2];
  v24 = v12;
  v14 = &v21 + *(v7 + 48) - v8;
  v15 = (&v21 + *(v7 + 64) - v8);
  OUTLINED_FUNCTION_36();
  (*(v16 + 16))(v9, v25, v5);
  *v14 = v10;
  *(v14 + 1) = v11;
  v14[16] = v3;
  v17 = v23;
  v18 = v22;
  *v15 = v24;
  v15[1] = v18;
  v15[2] = v17;
  v15[3] = v13;
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_93();
  v19 = OUTLINED_FUNCTION_315();
  sub_1D4DB9858(v19, v20, v3);
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_130_0();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v23 = v1;
  v3 = v2;
  v22 = v4;
  v20 = v5;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_312();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_206();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62();
  type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_62();
  v21 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_10();
  v12 = v11;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_247();
  v19 = *v3;
  v14 = *(v3 + 2);
  v17 = *(v3 + 3);
  v18 = v14;
  v29[2] = v7;
  v29[3] = v6;
  v29[4] = v20;
  v28[8] = v7;
  v28[9] = v6;
  v28[10] = sub_1D4DBE058;
  v28[11] = v29;
  sub_1D4DA1130(0, &qword_1EE08A670);
  sub_1D4DBA848(sub_1D4DBADA0, v10);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_62();
  sub_1D4DB3CE0();
  v28[2] = v7;
  v28[3] = v6;
  v28[4] = v22;
  v24 = v7;
  v25 = v6;
  v26 = sub_1D4DBADD0;
  v27 = v28;
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  sub_1D4DBA848(sub_1D4DBE07C, &v33);
  *&v30 = v33;
  *(&v30 + 1) = v34;
  LOBYTE(v31) = 1;
  sub_1D4DB3CE0();
  v15 = v36;
  LOBYTE(v6) = v37;
  LOBYTE(v7) = v38;
  v33 = v36;
  v34 = v37;
  v35 = v38;
  v30 = v19;
  v31 = v18;
  v32 = v17;
  ContentManagementPlan.relate(content:to:as:)();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v15, v6, v7, v16);
  (*(v12 + 8))(v0, v21);
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v25 = v5;
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_263();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_202();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_207();
  type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  OUTLINED_FUNCTION_207();
  v23 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_10();
  v12 = v11;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = *v3;
  v22 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v21 = *v1;
  v17 = *(v1 + 2);
  v18 = *(v1 + 3);
  v20 = v17;
  v30[2] = v7;
  v30[3] = v6;
  v30[4] = v24;
  v26 = v7;
  v27 = v6;
  v28 = sub_1D4DBB418;
  v29 = v30;
  sub_1D4DA1130(0, &qword_1EE08A670);
  sub_1D4DBA848(sub_1D4DBE064, v10);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_207();
  sub_1D4DB3CE0();
  v34 = v16;
  v35 = v22;
  v36 = v3;
  v31 = v21;
  v32 = v20;
  v33 = v18;
  ContentManagementPlan.relate(content:to:as:)();
  (*(v12 + 8))(v15, v23);
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v36 = v0;
  v2 = v1;
  v35 = v3;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_202();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_312();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_206();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_192();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_209();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_153();
  v8 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  OUTLINED_FUNCTION_153();
  v29[1] = type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v29 - v15);
  OUTLINED_FUNCTION_153();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_10();
  v33 = v18;
  v34 = v17;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v19);
  v29[0] = v29 - v20;
  v32 = *v2;
  v21 = *(v2 + 2);
  v30 = *(v2 + 3);
  v31 = v21;
  (*(v10 + 16))(v13, v5, v8);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  *(v23 + 24) = v6;
  (*(v10 + 32))(v23 + v22, v13, v8);
  *v16 = &unk_1D4E0E290;
  v16[1] = v23;
  swift_storeEnumTagMultiPayload();
  v24 = v29[0];
  OUTLINED_FUNCTION_87_0();
  sub_1D4DB3CE0();
  OUTLINED_FUNCTION_300();
  v25 = swift_allocObject();
  v25[2] = v7;
  v25[3] = v6;
  v25[4] = v35;
  *&v37 = &unk_1D4E0E2A0;
  *(&v37 + 1) = v25;
  LOBYTE(v38) = 0;
  OUTLINED_FUNCTION_141_0();
  sub_1D4E0CD00();
  sub_1D4DB3CE0();
  LOBYTE(v6) = v45;
  v40 = v43;
  v41 = v44;
  v42 = v45;
  v37 = v32;
  v38 = v31;
  v39 = v30;
  sub_1D4E0CA10();
  ContentManagementPlan.relate(content:to:as:)();
  OUTLINED_FUNCTION_3_0();
  v26 = OUTLINED_FUNCTION_30();
  sub_1D4DBA9FC(v26, v27, v6, v28);
  (*(v33 + 8))(v24, v34);
  OUTLINED_FUNCTION_198();
}

uint64_t ContentManagementPlan.find(firstMatching:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a1;
  v6[7] = a2;
  v7 = *v5;
  v6[8] = a5;
  v6[9] = v7;
  v8 = OUTLINED_FUNCTION_48_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4DB9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[7];
  v25 = v14[6];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v14[5] = v15;
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_141_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_141_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_315();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_190();
  sub_1D4E0C9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v15, v25, a12, a13, a14);
}

uint64_t ContentManagementPlan.facets(for:)()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v5;
  v6 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v6, v7, v8);
  v1[7] = v9;
  OUTLINED_FUNCTION_101(v9);
  v1[8] = OUTLINED_FUNCTION_117();
  v1[9] = *(v3 + 16);
  v1[10] = *(v3 + 24);
  v1[11] = type metadata accessor for FacetCollection();
  v10 = sub_1D4E0CEE0();
  v1[12] = v10;
  OUTLINED_FUNCTION_45(v10);
  v1[13] = v11;
  v12 = OUTLINED_FUNCTION_117();
  v13 = *v0;
  v1[14] = v12;
  v1[15] = v13;
  v14 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D4DB9E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 88);
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_144_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_168();
  sub_1D4E0CA70();
  v14 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v14, v15, v13);
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_222();
    v18(v17);
    swift_endAccess();
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_206();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_320();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_314();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    v19 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v19, v20, v21);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_205();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    (*(v22 + 32))();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_255();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

unint64_t sub_1D4DBA0E8()
{
  result = qword_1EC7E3A90;
  if (!qword_1EC7E3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3A90);
  }

  return result;
}

void sub_1D4DBA13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D4DBA0E8();
    v7 = a3(a1, &type metadata for ContentPlanningError, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D4DBA1A0()
{
  result = qword_1EC7E3AA0;
  if (!qword_1EC7E3AA0)
  {
    sub_1D4DBA13C(255, &qword_1EC7E3A98, MEMORY[0x1E69D38D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3AA0);
  }

  return result;
}

uint64_t ContentManagementPlan.find(contentID:)()
{
  OUTLINED_FUNCTION_51();
  v1[5] = v2;
  v1[6] = v3;
  v4 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v4, v5, v6);
  v1[7] = v7;
  OUTLINED_FUNCTION_101(v7);
  v1[8] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47();
  v1[9] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_78();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_226();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62();
  v1[10] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  v1[11] = type metadata accessor for ContentRegistration();
  v8 = sub_1D4E0CEE0();
  v1[12] = v8;
  OUTLINED_FUNCTION_45(v8);
  v1[13] = v9;
  v10 = OUTLINED_FUNCTION_117();
  v11 = *v0;
  v1[14] = v10;
  v1[15] = v11;
  v12 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4DBA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_157_0();
  sub_1D4E0CA70();
  OUTLINED_FUNCTION_30_0();
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_222();
    v14(v13);
    swift_endAccess();
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_145_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_320();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_314();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    v15 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v15, v16, v17);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_142_0();
    swift_allocError();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_168();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_37();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    (*(v18 + 32))();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_255();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t ContentManagementPlan.prepare(content:in:facets:)()
{
  OUTLINED_FUNCTION_155_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_315();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_209();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4DA1130(0, &qword_1EE08A670);
  sub_1D4DBA848(sub_1D4DBA808, v5);
  OUTLINED_FUNCTION_205();
  sub_1D4DB3CE0();
  v0 = v5[2];
  v1 = v6;
  v2 = v7;
  ContentManagementPlan.prepare(content:in:facets:)();
  OUTLINED_FUNCTION_3_0();
  return sub_1D4DBA9FC(v0, v1, v2, v3);
}

uint64_t sub_1D4DBA808@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DBA848@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D4E0D210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_1D4DBA9FC(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

void sub_1D4DBAA14(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t ContentManagementPlan.relate(content:to:as:)()
{
  OUTLINED_FUNCTION_136_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4DA1130(0, &qword_1EE08A670);
  sub_1D4DBA848(sub_1D4DBE07C, v5);
  OUTLINED_FUNCTION_145_0();
  sub_1D4DB3CE0();
  v0 = v9;
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  ContentManagementPlan.relate(content:to:as:)();
  OUTLINED_FUNCTION_3_0();
  v1 = OUTLINED_FUNCTION_312();
  return sub_1D4DBA9FC(v1, v2, v0, v3);
}

uint64_t sub_1D4DBB2D4()
{
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_168();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_105();

  return v1(v0);
}

uint64_t ContentManagementPlan.link(contentID:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_291();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_262();
  type metadata accessor for ContentManagementPlan.Link.Mode();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9[-v6];
  v15 = v4;
  v16 = v3;
  v17 = a1;
  v10 = v4;
  v11 = v3;
  v12 = sub_1D4DBB7AC;
  v13 = &v14;
  OUTLINED_FUNCTION_164_0();
  swift_checkMetadataState();
  sub_1D4DA1130(0, &qword_1EE08A670);
  sub_1D4DBA848(sub_1D4DBE064, v7);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_263();
  return sub_1D4DB3CE0();
}

uint64_t sub_1D4DBB630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D4E0CEE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1D4DBBB6C(uint64_t a1)
{
  v1[2] = a1;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v1[3] = v2;
  v1[4] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1[5] = swift_getAssociatedTypeWitness();
  v3 = sub_1D4E0CEE0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  type metadata accessor for ContentManagementPlan.Link();
  *v4 = v1;
  v4[1] = sub_1D4DBBDF0;

  return sub_1D4DB1870();
}

uint64_t sub_1D4DBBDF0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DBBEE8()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_232();
    v6(v5);
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287();
    v7 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v7, v8, v9);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_113_0();
    v10();

    OUTLINED_FUNCTION_8();
  }

  return v11();
}

uint64_t sub_1D4DBC050()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DBC0B8()
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_185();
  v1 = type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_101(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_325();

  return sub_1D4DBBB6C(v3);
}

uint64_t sub_1D4DBC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D4DBC290, 0, 0);
}

uint64_t sub_1D4DBC290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v14 = v12[5];
  v13 = v12[6];
  v12[2] = v12[4];
  v15 = swift_task_alloc();
  v12[7] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v12[8] = v16;
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_228();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_306();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_155_0();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for ContentManagementPlan.Link();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  *v16 = v12;
  v16[1] = sub_1D4DBC468;
  OUTLINED_FUNCTION_156();

  return MEMORY[0x1EEE41820](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1D4DBC468()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4DBC57C()
{
  **(v0 + 24) = *(v0 + 80);
  OUTLINED_FUNCTION_8();
  return v1();
}

uint64_t sub_1D4DBC5A8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DBC604()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_211();

  return sub_1D4DBC26C(v3, v4, v5, v6);
}

unint64_t sub_1D4DBC6A4()
{
  result = qword_1EC7E3AA8;
  if (!qword_1EC7E3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3AA8);
  }

  return result;
}

unint64_t sub_1D4DBC6FC()
{
  result = qword_1EC7E3AB0[0];
  if (!qword_1EC7E3AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7E3AB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentPlanningError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContentPlanningError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D4DBC8B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D4DBC9B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4DBC9F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4DBCA2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D4DBCB04()
{
  result = type metadata accessor for ContentManagementPlan.Link.Mode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D4DBCB78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 16;
  if (v3 + 1 > 0x10)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_24;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_24:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D4DBCCAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 16;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1D4DBCE80()
{
  result = sub_1D4D9F944();
  if (v1 <= 0x3F)
  {
    sub_1D4DA1130(255, &qword_1EE08A670);
    result = sub_1D4E0D210();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4DBCF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 16;
  if (v3 + 1 > 0x10)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_24;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_24:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D4DBD054(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 16;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1D4DBD228(uint64_t a1)
{
  v1[2] = a1;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v1[3] = v2;
  v1[4] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1[5] = swift_getAssociatedTypeWitness();
  v3 = sub_1D4E0CEE0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  type metadata accessor for ContentManagementPlan.Link();
  *v4 = v1;
  v4[1] = sub_1D4DBD4AC;

  return sub_1D4DB1870();
}

uint64_t sub_1D4DBD4AC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DBD5A4()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_232();
    v6(v5);
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287();
    v7 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v7, v8, v9);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_113_0();
    v10();

    OUTLINED_FUNCTION_8();
  }

  return v11();
}

void sub_1D4DBD70C()
{
  if (!qword_1EC7E3CB8)
  {
    v0 = sub_1D4E0CEE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3CB8);
    }
  }
}

uint64_t sub_1D4DBD75C()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_68_0(v1);

  return sub_1D4DBD228(v3);
}

uint64_t sub_1D4DBD7F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB45B8(v3, v4, v5);
}

uint64_t sub_1D4DBD888()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB4010(v3, v4, v5);
}

uint64_t sub_1D4DBD918()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB39DC(v3, v4, v5);
}

uint64_t sub_1D4DBD9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_249();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_17(v10);
  *v11 = v12;
  v11[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_196();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D4DBDA60()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_67_0(v5);

  return sub_1D4DB4CEC(v7, v2, v3, v1);
}

uint64_t sub_1D4DBDB00(uint64_t a1, uint64_t a2)
{
  sub_1D4DA10B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4DBDBA4()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_236();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_68_0(v1);
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_196();

  return sub_1D4DB157C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D4DBDC68()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_236();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_68_0(v1);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_335();

  return sub_1D4DB202C(v3, v4, v5);
}

uint64_t sub_1D4DBDD1C()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_68_0(v2);

  return sub_1D4DB24B0(v4, v5, v0);
}

uint64_t sub_1D4DBDDB0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB3500(v3, v4, v5);
}

uint64_t sub_1D4DBDE40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D4DBDF58()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_236();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_68_0(v1);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_335();

  return sub_1D4DB5C20(v3, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_9_0()
{
  v2 = v0[163];
  *(v1 - 256) = v0[165];
  *(v1 - 248) = v2;
  v3 = v0[159];
  *(v1 - 240) = v0[162];
  *(v1 - 232) = v3;
  v4 = v0[155];
  *(v1 - 224) = v0[158];
  *(v1 - 216) = v4;
  v5 = v0[151];
  *(v1 - 208) = v0[153];
  *(v1 - 200) = v5;
  v6 = v0[148];
  *(v1 - 192) = v0[150];
  *(v1 - 184) = v6;
  v7 = v0[143];
  *(v1 - 176) = v0[147];
  *(v1 - 168) = v7;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 1248);
  __swift_storeEnumTagSinglePayload(v2, a2, 1, v4);
  return __swift_getEnumTagSinglePayload(v2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  result = v0[134];
  v2 = (v0[170] + *(v0[156] + 64));
  v0[316] = *v2;
  v0[317] = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v2 = v1[170];
  __swift_storeEnumTagSinglePayload(v1[169], v0, 1, v1[156]);
  return v2;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  result = *(v1 + 1296);
  *(v1 + 832) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1416);
  *(v0 + 2424) = *v1;
  *(v0 + 2432) = *(v1 + 8);
  *(v0 + 133) = *(v1 + 16);
  v3 = *(v2 + 48);
  v4 = (v1 + *(v2 + 64));
  *(v0 + 2440) = *v4;
  *(v0 + 2448) = v4[1];
  return v1 + v3;
}

void OUTLINED_FUNCTION_32_0(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v4 = v2[163];
  *(v3 - 240) = v2[165];
  *(v3 - 232) = v4;
  v5 = v2[159];
  *(v3 - 224) = v2[162];
  *(v3 - 216) = v5;
  v6 = v2[155];
  *(v3 - 208) = v2[158];
  *(v3 - 200) = v6;
  v7 = v2[151];
  *(v3 - 192) = v2[153];
  *(v3 - 184) = v7;
  v8 = v2[148];
  *(v3 - 176) = v2[150];
  *(v3 - 168) = v8;
  v9 = v2[143];
  *(v3 - 160) = v2[147];
  *(v3 - 152) = v9;
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  *v2 = sub_1D4DBE048;
  v2[1] = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{
  v6 = *(v3 + *(v5 - 112));
  *(a1 + 16) = *(v5 - 128);
  *(a1 + 32) = v6;
  v7 = *(v4 + 16);
  v8 = *(v1 + 48);
  *v2 = *v4;
  *(v2 + 16) = v7;
  return v2 + v8;
}

uint64_t OUTLINED_FUNCTION_49_0()
{
  v3 = v0[138];
  *(v1 - 128) = v0[141];
  *(v1 - 120) = v3;
  v4 = v0[134];
  *(v1 - 112) = v0[137];
  *(v1 - 104) = v4;
}

__n128 OUTLINED_FUNCTION_53_0@<Q0>(_OWORD *a1@<X8>)
{
  v4 = v1[1].n128_u8[0];
  result = *v1;
  *(v3 - 128) = *a1;
  *v2 = result;
  v2[1].n128_u8[0] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + a2);
  *(a1 + 16) = *(v4 - 160);
  *(a1 + 32) = v5;
  return v3;
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1)
{
  result = *(v1 + 1464);
  *(v1 + 816) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1488);
  v4 = *(v2 + 1416);
  __swift_storeEnumTagSinglePayload(v3, a2, 1, v4);
  return __swift_getEnumTagSinglePayload(v3, 1, v4);
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_getAssociatedTypeWitness();
}

char *OUTLINED_FUNCTION_95_0@<X0>(unsigned __int8 a1@<W8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  v3[1].n128_u8[0] = a1;
  return v3 + v2;
}

uint64_t OUTLINED_FUNCTION_97_0(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a3;
  a1[2] = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_107_0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  result = *(v0 + 200);
  v4 = v1 + *(v2 + 48);
  *(v0 + 264) = *v4;
  *(v0 + 272) = *(v4 + 8);
  *(v0 + 89) = *(v4 + 16);
  v5 = (v1 + *(v2 + 64));
  *(v0 + 280) = *v5;
  *(v0 + 288) = v5[1];
  *(v0 + 296) = v5[2];
  *(v0 + 304) = v5[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  v2 = v0[195];
  v3 = v0[179];
  v4 = v0[177];
  v5 = *(v2 + 16);
  v6 = *(v4 + 48);
  v7 = *v2;
  *(v1 - 128) = *(v2 + *(v4 + 64));
  *v3 = v7;
  *(v3 + 16) = v5;
  return v3 + v6;
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  v3 = *(v0 + 2448);
  *(v1 - 128) = *(v0 + 133);
  *(v1 - 136) = *(v0 + 2432);
  v4 = *(v0 + 2424);
  *(v1 - 168) = v3;
  *(v1 - 160) = v4;
  v5 = *(v0 + 992);
  *(v1 - 112) = *(v0 + 2400);
  *(v1 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_126_0()
{
  *(v2 - 96) = v0;
  v4 = v1[220];
  v5 = v1[138];
  *(v2 - 160) = v1[135];
  v6 = v1[130];
  *(v2 - 136) = v5;
  *(v2 - 128) = v6;
  v7 = v1[124];
  *(v2 - 112) = v4;
  *(v2 - 104) = v7;
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v3 = *(v0 + 1072);
  *(v1 - 112) = *(v0 + 1096);
  *(v1 - 104) = v3;
}

uint64_t OUTLINED_FUNCTION_149_0@<X0>(uint64_t a1@<X8>)
{
  v2[281] = v1;
  v2[282] = *(a1 + 56);
  v2[283] = (a1 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;

  return sub_1D4E0C870();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_1D4E0CFA0();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return sub_1D4E0CCF0();
}

uint64_t OUTLINED_FUNCTION_184()
{
  *(v1 - 104) = *(v0 + 1072);
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_195()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_197()
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_212(uint64_t a1)
{
  result = *(v1 + 1304);
  *(v1 + 768) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_217()
{
}

uint64_t OUTLINED_FUNCTION_218()
{
}

uint64_t OUTLINED_FUNCTION_219()
{
}

uint64_t OUTLINED_FUNCTION_221()
{

  return swift_getTupleTypeMetadata3();
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1)
{
  result = *(v1 + 240);
  *(v1 + 104) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_235()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_252()
{
}

uint64_t OUTLINED_FUNCTION_254()
{
}

void OUTLINED_FUNCTION_271()
{
  v4 = *(v2 + 1056);
  *(v3 - 128) = v0;
  *(v3 - 120) = v4;
  v5 = *(v2 + 992);
  *(v3 - 112) = v1;
  *(v3 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_276()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_277()
{

  return sub_1D4E0CC60();
}

uint64_t OUTLINED_FUNCTION_278()
{
}

uint64_t OUTLINED_FUNCTION_279()
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1)
{
  *(v1 + 824) = a1;

  return sub_1D4E0CCB0();
}

uint64_t OUTLINED_FUNCTION_281()
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_282(uint64_t a1)
{
  *(v1 + 248) = a1;
}

uint64_t OUTLINED_FUNCTION_283(uint64_t a1)
{
  *(v1 + 2288) = a1;

  return sub_1D4E0CD30();
}

uint64_t OUTLINED_FUNCTION_284(uint64_t a1)
{
  *(v1 + 2272) = a1;

  return sub_1D4E0C860();
}

uint64_t OUTLINED_FUNCTION_285()
{
  *v1 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_286()
{
  *(v0 + 88) = v1;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_287()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_288()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_293()
{
  *(v2 + 688) = v1;
  *(v2 + 696) = v0;
  **(v4 - 104) = v3;
}

void OUTLINED_FUNCTION_299()
{
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 88) = v2;
}

uint64_t OUTLINED_FUNCTION_319()
{
  *(v0 + 130) = 3;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_320()
{
  *(v0 + 128) = 5;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_321()
{
}

uint64_t OUTLINED_FUNCTION_322()
{

  return sub_1D4E0CA10();
}

uint64_t OUTLINED_FUNCTION_323()
{
  *(v1 + 248) = *(v0 + 56);
  *(v1 + 256) = (v0 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;

  return sub_1D4E0C870();
}

uint64_t OUTLINED_FUNCTION_324@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 72) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_326()
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_327()
{
  *(v0 + 2232) = *(v0 + 864);

  return sub_1D4E0CA10();
}

uint64_t OUTLINED_FUNCTION_328()
{
  *(v0 + 88) = 6;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_329@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 144) = v1;
  *(v3 - 136) = a1;
  v5 = *(v2 + 1072);
  *(v3 - 128) = *(v2 + 1096);
  *(v3 - 120) = v5;
}

uint64_t OUTLINED_FUNCTION_332()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D4DBFCA0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_48();
  v46 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v48 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_48();
  v42 = v19 - v18;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1D4E0CE80();
  if (!v24)
  {
    return sub_1D4E0CC80();
  }

  v47 = v24;
  v51 = sub_1D4E0CFE0();
  v38 = sub_1D4E0CFF0();
  sub_1D4E0CFB0();
  result = sub_1D4E0CE70();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v10;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1D4E0CEC0();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_34_1();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_34_1();
      v30(v29);
      sub_1D4E0CFD0();
      result = sub_1D4E0CE90();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ContentRegistration.rawIdentifiers.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ContentRegistration.SourceInfo();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v20 - v7);
  (*(v9 + 16))(v20 - v7, v1 + *(a1 + 36), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_1();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_112_0();
      v11 = sub_1D4E0CC80();
      OUTLINED_FUNCTION_10_1();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_12();
      (*(v12 + 8))(v8, v13);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_41_1();
      sub_1D4DBD70C();
      swift_getTupleTypeMetadata2();

      OUTLINED_FUNCTION_10_1();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_112_0();
      v11 = sub_1D4E0CC80();
      (*(*(v18 - 8) + 8))(v8, v18);
    }
  }

  else
  {
    v20[1] = *v8;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v20[-2] = v3;
    v20[-1] = v4;
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_112_0();
    v14 = sub_1D4E0CD00();
    OUTLINED_FUNCTION_10_1();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = OUTLINED_FUNCTION_15_1();
    v11 = sub_1D4DBFCA0(sub_1D4DC3FB0, &v20[-4], v14, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  }

  return v11;
}

uint64_t ContentRegistration.init(id:sourceInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_36_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a3, a1);
  OUTLINED_FUNCTION_147_0();
  v7 = *(type metadata accessor for ContentRegistration() + 36);
  OUTLINED_FUNCTION_147_0();
  type metadata accessor for ContentRegistration.SourceInfo();
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

uint64_t ContentManagerBehavior.withPlan<A>(buildPlan:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[9] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45(AssociatedTypeWitness);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_117();
  sub_1D4E0C870();
  v0[12] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v0[13] = v9;
  v0[14] = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_51();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_117();
  v1[11] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_10_1();
  v8 = type metadata accessor for ContentManagementPlan.Link();
  v1[12] = v8;
  OUTLINED_FUNCTION_45(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_117();
  sub_1D4E0C870();
  v1[15] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[16] = v10;
  v1[17] = v11;
  v12 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4DC04D0()
{
  OUTLINED_FUNCTION_31();
  (*(v0[7] + 40))(v0[5], v0[7]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  swift_getAssociatedConformanceWitness();
  *v1 = v0;
  v1[1] = sub_1D4DC05C8;

  return static ContentManagementPlan.withPlan<A>(in:buildPlan:)();
}

uint64_t sub_1D4DC05C8()
{
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  *v4 = *v1;
  *(v3 + 128) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[14];
  v9 = v2[13];
  if (v0)
  {
    v10 = sub_1D4DC07B4;
  }

  else
  {
    v10 = sub_1D4DC0754;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D4DC0754()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC07B4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DC098C()
{
  OUTLINED_FUNCTION_1();
  (*(v0[6] + 40))(v0[5]);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[18] = v1;
  *v1 = v2;
  v1[1] = sub_1D4DC0A4C;

  return static ContentManagementPlan.withPlan<A>(in:buildPlan:)();
}

uint64_t sub_1D4DC0A4C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
    v7 = v3[16];
    v8 = v3[17];

    return MEMORY[0x1EEE6DFA0](sub_1D4DC0DCC, v7, v8);
  }

  else
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v3[20] = v9;
    *v9 = v10;
    v9[1] = sub_1D4DC0BD4;

    return sub_1D4DB1870();
  }
}

uint64_t sub_1D4DC0BD4()
{
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  *v4 = *v1;
  *(v3 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[17];
  v9 = v2[16];
  if (v0)
  {
    v10 = sub_1D4DC0E44;
  }

  else
  {
    v10 = sub_1D4DC0D60;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D4DC0D60()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC0DCC()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DC0E44()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t ContentManagerBehavior.firstContentID(matching:in:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  sub_1D4E0C870();
  v0[9] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v0[10] = v7;
  v0[11] = v8;
  v9 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4DC0F38()
{
  v1 = OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_23_1(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CEE0();
  *v10 = v0;
  OUTLINED_FUNCTION_37_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC10D8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC1234;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC11DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4DC11DC()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC1234()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

void sub_1D4DC129C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan();
  ContentManagementPlan.find(firstMatching:in:)();
}

uint64_t ContentManagerBehavior.import(identifiers:in:)()
{
  OUTLINED_FUNCTION_1();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  sub_1D4E0C870();
  v1[8] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[9] = v7;
  v1[10] = v8;
  v9 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4DC13E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v5;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1D4DC14C4;
  OUTLINED_FUNCTION_8_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC14C4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D4DC1620;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D4DC15C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4DC15C8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC1620()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

void sub_1D4DC1688()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan();
  ContentManagementPlan.import(identifiers:in:)();

  sub_1D4DC51F0(v0, v1, v2);
}

uint64_t ContentManagerBehavior.import(identifier:in:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  sub_1D4E0C870();
  v0[9] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v0[10] = v7;
  v0[11] = v8;
  v9 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4DC17E0()
{
  v1 = OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_23_1(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CEE0();
  *v10 = v0;
  OUTLINED_FUNCTION_37_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC1980()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC52D0;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC52D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void sub_1D4DC1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4D9BF48(AssociatedTypeWitness, AssociatedTypeWitness);
  v9 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  sub_1D4E0CC40();
  (*(v9 + 16))(v10, a2, AssociatedTypeWitness);
  sub_1D4D8EE30();
  v11 = type metadata accessor for ContentManagementPlan();
  ContentManagementPlan.import(identifiers:in:)();

  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  *(v12 + 48) = v17;
  sub_1D4DB9858(v15, v16, v17);
  swift_getAssociatedTypeWitness();
  v13 = sub_1D4E0CEE0();
  ContentManagementPlan.after<A>(operation:)(&unk_1D4E0D970, v12, v11, v13);

  sub_1D4DC51F0(v15, v16, v17);
}

uint64_t sub_1D4DC1DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a1;
  *(v5 + 64) = sub_1D4E0C870();
  v9 = sub_1D4E0C860();
  *(v5 + 16) = a3;
  *(v5 + 72) = v9;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5 & 1;
  v10 = swift_task_alloc();
  *(v5 + 80) = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v5 + 88) = sub_1D4E0CD00();
  type metadata accessor for ContentManagementPlan.Link();
  *v10 = v5;
  v10[1] = sub_1D4DC2000;

  return sub_1D4DB1870();
}

uint64_t sub_1D4DC2000()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 96) = v0;

  sub_1D4D8E454();
  v8 = OUTLINED_FUNCTION_110();
  if (v0)
  {
    v9 = sub_1D4DC21B4;
  }

  else
  {
    v9 = sub_1D4DC2124;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D4DC2124()
{
  OUTLINED_FUNCTION_31();

  *(v0 + 48) = *(v0 + 40);
  OUTLINED_FUNCTION_15_1();
  sub_1D4E0CEA0();

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_1D4DC21B4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t ContentManagerBehavior.import(identifiers:in:environment:preparing:)()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  sub_1D4E0C870();
  v1[11] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[12] = v10;
  v1[13] = v11;
  v12 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4DC229C()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = *(v0 + 64);
  *(v3 + 32) = v7;
  *(v3 + 48) = v2;
  *(v3 + 56) = v4;
  *(v3 + 72) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1D4DC2388;
  OUTLINED_FUNCTION_8_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC2388()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1D4DC52D4;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1D4DC52DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}