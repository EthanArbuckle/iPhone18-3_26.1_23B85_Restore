uint64_t sub_2660CFA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660CFA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660CFB0C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_2660CFB38()
{
  result = qword_28005C070;
  if (!qword_28005C070)
  {
    type metadata accessor for DeepLaunchWrapperFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C070);
  }

  return result;
}

uint64_t sub_2660CFB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[20];
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_14_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_15_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2660CFE00()
{
  OUTLINED_FUNCTION_18();
  v0[8] = v1;
  v0[9] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A0, &unk_266191AC0);
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 64);
  v0[10] = OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  v0[11] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B980();
  v0[12] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v0[13] = v10;
  v12 = *(v11 + 64);
  v0[14] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B8E0();
  v0[15] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v0[16] = v14;
  v16 = *(v15 + 64);
  v0[17] = OUTLINED_FUNCTION_25_0();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v17 = sub_26618C6B0();
  v0[20] = v17;
  OUTLINED_FUNCTION_0_4(v17);
  v0[21] = v18;
  v20 = *(v19 + 64);
  v0[22] = OUTLINED_FUNCTION_25_0();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v21 = sub_26618B840();
  v0[26] = v21;
  OUTLINED_FUNCTION_0_4(v21);
  v0[27] = v22;
  v24 = *(v23 + 64);
  v0[28] = OUTLINED_FUNCTION_25_0();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v25 = sub_26618B7F0();
  v0[31] = v25;
  OUTLINED_FUNCTION_0_4(v25);
  v0[32] = v26;
  v28 = *(v27 + 64);
  v0[33] = OUTLINED_FUNCTION_8_2();
  v29 = type metadata accessor for AppLaunchIntent();
  v0[34] = v29;
  OUTLINED_FUNCTION_3_0(v29);
  v31 = *(v30 + 64);
  v0[35] = OUTLINED_FUNCTION_8_2();
  v32 = sub_26618C0E0();
  v0[36] = v32;
  OUTLINED_FUNCTION_0_4(v32);
  v0[37] = v33;
  v35 = *(v34 + 64);
  v0[38] = OUTLINED_FUNCTION_8_2();
  v36 = sub_26618B800();
  v0[39] = v36;
  OUTLINED_FUNCTION_0_4(v36);
  v0[40] = v37;
  v39 = *(v38 + 64);
  v0[41] = OUTLINED_FUNCTION_25_0();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v40 = sub_26618B540();
  v0[45] = v40;
  OUTLINED_FUNCTION_0_4(v40);
  v0[46] = v41;
  v43 = *(v42 + 64);
  v0[47] = OUTLINED_FUNCTION_25_0();
  v0[48] = swift_task_alloc();
  v44 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_2660D01B8()
{
  v289 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 72);
  sub_26618B770();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_12_1();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D5C128])
  {
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v11 = *(v0 + 320);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v16 = *(v11 + 16);
    v17 = OUTLINED_FUNCTION_13_2();
    v18(v17);
    v19 = *(v11 + 96);
    v20 = OUTLINED_FUNCTION_11_0();
    v21(v20);
    v22 = *(v13 + 32);
    v23 = OUTLINED_FUNCTION_7_4();
    v24(v23);
    (*(v13 + 16))(v15, v12, v14);
    if (qword_2814B3DC0 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 272);
    v26 = *(v0 + 280);
    sub_2660D3118(&qword_2814B3D28, type metadata accessor for AppLaunchIntent);
    sub_26618BDA0();
    switch(*(v0 + 392))
    {
      case 1:
      case 2:
        v116 = *(v0 + 296);
        v115 = *(v0 + 304);
        v118 = *(v0 + 280);
        v117 = *(v0 + 288);
        v119 = sub_26618D000();

        OUTLINED_FUNCTION_2_6();
        sub_2660D3160(v118, v120);
        v121 = *(v116 + 8);
        v122 = OUTLINED_FUNCTION_12_1();
        v123(v122);
        if ((v119 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      case 3:
        v126 = *(v0 + 296);
        v125 = *(v0 + 304);
        v127 = *(v0 + 280);
        v128 = *(v0 + 288);
        OUTLINED_FUNCTION_2_6();
        sub_2660D3160(v129, v130);
        v131 = *(v126 + 8);
        v132 = OUTLINED_FUNCTION_11_0();
        v133(v132);
LABEL_26:
        v124 = MEMORY[0x277D5BED0];
        break;
      default:
        v28 = *(v0 + 296);
        v27 = *(v0 + 304);
        v30 = *(v0 + 280);
        v29 = *(v0 + 288);

        OUTLINED_FUNCTION_2_6();
        sub_2660D3160(v30, v31);
        v32 = *(v28 + 8);
        v33 = OUTLINED_FUNCTION_11_0();
        v34(v33);
LABEL_24:
        v124 = MEMORY[0x277D5BED8];
        break;
    }

    v134 = *(v0 + 384);
    v135 = *(v0 + 368);
    (*(v135 + 104))(*(v0 + 376), *v124, *(v0 + 360));
    v136 = *(v135 + 32);
    v137 = OUTLINED_FUNCTION_11_0();
    v138(v137);
    goto LABEL_28;
  }

  if (v8 == *MEMORY[0x277D5C150])
  {
    v35 = *(v0 + 352);
    v36 = *(v0 + 336);
    v37 = *(v0 + 320);
    v39 = *(v0 + 256);
    v38 = *(v0 + 264);
    v40 = *(v0 + 248);
    v41 = *(v37 + 16);
    v42 = OUTLINED_FUNCTION_13_2();
    v43(v42);
    v44 = *(v37 + 96);
    v45 = OUTLINED_FUNCTION_11_0();
    v46(v45);
    v47 = *(v39 + 32);
    v48 = OUTLINED_FUNCTION_7_4();
    v49(v48);
    if (sub_26618B7D0() == 0xD00000000000002ELL && 0x8000000266198300 == v50)
    {
    }

    else
    {
      v52 = sub_26618D000();

      if ((v52 & 1) == 0)
      {
        (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
LABEL_18:
        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_3();
        }

        v99 = *(v0 + 168);
        v98 = *(v0 + 176);
        __swift_project_value_buffer(*(v0 + 160), qword_2814B4A98);
        v100 = OUTLINED_FUNCTION_8_3();
        v101(v100);
        v102 = sub_26618C690();
        v103 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_15_2(v103))
        {
          OUTLINED_FUNCTION_24_0();
          v104 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_0(v104);
          OUTLINED_FUNCTION_14_0(&dword_2660B7000, v105, v106, "Unsupported parse type");
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
        }

        v108 = *(v0 + 168);
        v107 = *(v0 + 176);
        v109 = *(v0 + 160);

        v110 = *(v108 + 8);
        v111 = OUTLINED_FUNCTION_12_1();
        v112(v111);
        sub_2660D3004();
        OUTLINED_FUNCTION_18_1();
        v113 = swift_allocError();
        OUTLINED_FUNCTION_17_1(v113, v114);
        goto LABEL_47;
      }
    }

    v148 = *(v0 + 264);
    v149 = sub_26618B7E0();
    if (v149)
    {
      sub_266158220(0xD000000000000011, 0x8000000266198330, v149, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v150 = *(v0 + 48);
          v151 = *(v0 + 56);
          v152 = sub_26617C1B4();
          if (v152 != 2)
          {
            v153 = v152;
            v154 = *(v0 + 368);
            (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
            if (v153)
            {
              v155 = MEMORY[0x277D5BED0];
            }

            else
            {
              v155 = MEMORY[0x277D5BED8];
            }

            (*(v154 + 104))(*(v0 + 384), *v155, *(v0 + 360));
            goto LABEL_28;
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_2660D30C4(v0 + 16, &qword_28005C0A8, qword_26618FAE0);
LABEL_38:
    v157 = *(v0 + 256);
    v156 = *(v0 + 264);
    v158 = *(v0 + 248);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v159 = swift_allocError();
    OUTLINED_FUNCTION_17_1(v159, v160);
    v161 = *(v157 + 8);
    v162 = OUTLINED_FUNCTION_11_0();
    v163(v162);
    goto LABEL_47;
  }

  if (v8 != *MEMORY[0x277D5C160])
  {
    goto LABEL_18;
  }

  v53 = *(v0 + 352);
  v54 = *(v0 + 320);
  v55 = *(v0 + 312);
  v56 = *(v0 + 240);
  v57 = *(v0 + 208);
  v58 = *(v0 + 216);
  v59 = *(v54 + 16);
  v60 = OUTLINED_FUNCTION_13_2();
  v61(v60);
  v62 = *(v54 + 96);
  v63 = OUTLINED_FUNCTION_11_0();
  v64(v63);
  v65 = *(v58 + 32);
  v66 = OUTLINED_FUNCTION_7_4();
  v67(v66);
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v69 = *(v0 + 232);
  v68 = *(v0 + 240);
  v70 = *(v0 + 208);
  v71 = *(v0 + 216);
  v72 = *(v0 + 200);
  v73 = *(v0 + 168);
  v273 = __swift_project_value_buffer(*(v0 + 160), qword_2814B4A98);
  v277 = *(v73 + 16);
  v277(v72);
  v74 = *(v71 + 16);
  v75 = OUTLINED_FUNCTION_7_4();
  v265 = v76;
  (v76)(v75);
  v77 = sub_26618C690();
  v78 = sub_26618CAA0();
  v79 = os_log_type_enabled(v77, v78);
  v80 = *(v0 + 232);
  v81 = *(v0 + 216);
  v285 = *(v0 + 208);
  v82 = *(v0 + 200);
  v83 = *(v0 + 160);
  v84 = *(v0 + 168);
  if (v79)
  {
    v257 = *(v0 + 160);
    v261 = *(v0 + 200);
    log = v77;
    v86 = *(v0 + 144);
    v85 = *(v0 + 152);
    v88 = *(v0 + 120);
    v87 = *(v0 + 128);
    v244 = v88;
    v250 = v78;
    v89 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v288[0] = v247;
    *v89 = 136315138;
    sub_26618B820();
    (*(v87 + 16))(v86, v85, v88);
    v90 = sub_2661458C0();
    v92 = v91;
    v93 = *(v81 + 8);
    (v93)(v80, v285);
    (*(v87 + 8))(v85, v244);
    v94 = sub_266103A98(v90, v92, v288);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_2660B7000, log, v250, "DeviceConfirmationStrategy.parseDisambiguationResult using follow up USO parse:  %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v247);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    v95 = *(v84 + 8);
    v97 = v257;
    v96 = v261;
  }

  else
  {

    v93 = *(v81 + 8);
    (v93)(v80, v285);
    v95 = *(v84 + 8);
    v96 = v82;
    v97 = v83;
  }

  v287 = v95;
  v95(v96, v97);
  v164 = *(v0 + 240);
  v166 = *(v0 + 128);
  v165 = *(v0 + 136);
  v167 = *(v0 + 120);
  v169 = *(v0 + 88);
  v168 = *(v0 + 96);
  sub_26618B820();
  v170 = sub_26618B8B0();
  v171 = *(v166 + 8);
  v172 = OUTLINED_FUNCTION_12_1();
  v171(v172);
  sub_266139C58(v170, v169);

  if (__swift_getEnumTagSinglePayload(v169, 1, v168) != 1)
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    if (sub_26618B920())
    {
      v195 = OUTLINED_FUNCTION_14_1();
      v196(v195);
      v197 = OUTLINED_FUNCTION_19_1();
      v93(v197);
      v198 = MEMORY[0x277D5BED8];
    }

    else
    {
      v214 = *(v0 + 112);
      if ((sub_26618B940() & 1) == 0)
      {
        v215 = *(v0 + 112);
        if ((sub_26618B930() & 1) == 0)
        {
          v272 = v93;
          (v277)(*(v0 + 192), v273, *(v0 + 160));
          v223 = sub_26618C690();
          v224 = sub_26618CAB0();
          if (OUTLINED_FUNCTION_15_2(v224))
          {
            OUTLINED_FUNCTION_24_0();
            v225 = swift_slowAlloc();
            OUTLINED_FUNCTION_30_0(v225);
            OUTLINED_FUNCTION_14_0(&dword_2660B7000, v226, v227, "Unexpected UDA type");
            OUTLINED_FUNCTION_10_2();
            MEMORY[0x26677CC30]();
          }

          v284 = *(v0 + 240);
          v228 = *(v0 + 208);
          v229 = *(v0 + 216);
          v230 = *(v0 + 192);
          v231 = *(v0 + 160);
          v232 = *(v0 + 168);
          v233 = *(v0 + 104);
          v234 = *(v0 + 112);
          v235 = *(v0 + 96);

          v287(v230, v231);
          sub_2660D3004();
          OUTLINED_FUNCTION_18_1();
          v236 = swift_allocError();
          OUTLINED_FUNCTION_17_1(v236, v237);
          (*(v233 + 8))(v234, v235);
          (v272)(v284, v228);
          goto LABEL_47;
        }
      }

      v216 = OUTLINED_FUNCTION_14_1();
      v217(v216);
      v218 = OUTLINED_FUNCTION_19_1();
      v93(v218);
      v198 = MEMORY[0x277D5BED0];
    }

    v219 = *v198;
    v220 = *(v169 + 104);
    v221 = OUTLINED_FUNCTION_13_2();
    v222(v221);
LABEL_28:
    v139 = *(v0 + 376);
    v140 = *(v0 + 384);
    v141 = *(v0 + 360);
    v142 = *(v0 + 368);
    v143 = *(v0 + 344);
    v144 = *(v0 + 336);
    v238 = *(v0 + 328);
    v239 = *(v0 + 304);
    v240 = *(v0 + 280);
    v242 = *(v0 + 264);
    v245 = *(v0 + 240);
    v248 = *(v0 + 232);
    v251 = *(v0 + 224);
    loga = *(v0 + 200);
    v258 = *(v0 + 192);
    v262 = *(v0 + 184);
    v266 = *(v0 + 176);
    v269 = *(v0 + 152);
    v274 = *(v0 + 144);
    v278 = *(v0 + 136);
    v145 = *(v0 + 80);
    v281 = *(v0 + 112);
    v286 = *(v0 + 88);
    v146 = *(v0 + 64);
    (*(*(v0 + 320) + 8))(*(v0 + 352), *(v0 + 312));
    (*(v142 + 16))(v145, v140, v141);
    __swift_storeEnumTagSinglePayload(v145, 0, 1, v141);
    sub_26618B760();
    (*(v142 + 8))(v140, v141);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_48;
  }

  v173 = *(v0 + 240);
  v174 = *(v0 + 224);
  v175 = *(v0 + 208);
  v176 = *(v0 + 184);
  v177 = *(v0 + 160);
  sub_2660D30C4(*(v0 + 88), &qword_28005BF28, &qword_26618F960);
  (v277)(v176, v273, v177);
  v265(v174, v173, v175);
  v178 = sub_26618C690();
  v279 = sub_26618CAA0();
  v179 = os_log_type_enabled(v178, v279);
  v181 = *(v0 + 216);
  v180 = *(v0 + 224);
  v282 = *(v0 + 208);
  if (v179)
  {
    v270 = v93;
    v275 = *(v0 + 184);
    v182 = *(v0 + 144);
    v183 = *(v0 + 152);
    v267 = *(v0 + 160);
    logb = v178;
    v184 = *(v0 + 120);
    v185 = *(v0 + 128);
    v263 = *(v0 + 168);
    v186 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v288[0] = v259;
    *v186 = 136315138;
    sub_26618B820();
    (*(v185 + 16))(v182, v183, v184);
    v187 = sub_2661458C0();
    v189 = v188;
    v190 = OUTLINED_FUNCTION_20_0();
    v270(v190);
    v191 = v183;
    v93 = v270;
    (v171)(v191, v184);
    v192 = sub_266103A98(v187, v189, v288);

    *(v186 + 4) = v192;
    _os_log_impl(&dword_2660B7000, logb, v279, "DeviceConfirmationStrategy.parseDisambiguationResult missing required userDialogActs from parse: %s", v186, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v259);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    v193 = v267;
    v194 = v275;
  }

  else
  {

    v199 = OUTLINED_FUNCTION_20_0();
    v93(v199);
    v194 = OUTLINED_FUNCTION_19_1();
  }

  v287(v194, v193);
  v200 = *(v0 + 240);
  v201 = *(v0 + 208);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  v202 = swift_allocError();
  OUTLINED_FUNCTION_17_1(v202, v203);
  v204 = OUTLINED_FUNCTION_11_0();
  v93(v204);
LABEL_47:
  v206 = *(v0 + 376);
  v205 = *(v0 + 384);
  v207 = *(v0 + 344);
  v208 = *(v0 + 328);
  v209 = *(v0 + 336);
  v210 = *(v0 + 304);
  v211 = *(v0 + 280);
  v212 = *(v0 + 264);
  v241 = *(v0 + 240);
  v243 = *(v0 + 232);
  v246 = *(v0 + 224);
  v249 = *(v0 + 200);
  v252 = *(v0 + 192);
  logc = *(v0 + 184);
  v260 = *(v0 + 176);
  v264 = *(v0 + 152);
  v268 = *(v0 + 144);
  v271 = *(v0 + 136);
  v276 = *(v0 + 112);
  v280 = *(v0 + 88);
  v283 = *(v0 + 80);
  (*(*(v0 + 320) + 8))(*(v0 + 352), *(v0 + 312));

  OUTLINED_FUNCTION_5_3();
LABEL_48:

  return v147();
}

uint64_t sub_2660D10C8()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B6A0();
  v1[12] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618B440();
  v1[15] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_8_2();
  v18 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2660D11FC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[8];
  sub_26618C4E0();
  v2 = sub_26618C5D0();
  if (v2 == sub_26618C5D0() || (v3 = v0[8], sub_26618C4E0(), v4 = sub_26618C5D0(), v5 = 0, v4 == sub_26618C5D0()))
  {
    v6 = v0[8];
    sub_26618C4C0();
    v5 = v7;
  }

  v0[18] = v5;
  v8 = v0[17];
  v9 = v0[9];
  sub_2661484FC();
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_2660D12FC;
  v11 = OUTLINED_FUNCTION_12_1();

  return sub_2660C336C(v11, v12);
}

uint64_t sub_2660D12FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  if (v0)
  {
    v9 = sub_2660D1B38;
  }

  else
  {
    v9 = sub_2660D1420;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660D1420()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v1;
  sub_26618B620();

  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0())
  {
    v6 = v0[20];
    v7 = v0[9];
    v8 = v7[11];
    v9 = v7[12];
    __swift_project_boxed_opaque_existential_1(v7 + 8, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v10 = swift_allocObject();
    v0[22] = v10;
    *(v10 + 16) = xmmword_26618F7E0;
    *(v10 + 32) = v6;
    v11 = *(MEMORY[0x277D5BE58] + 4);
    v12 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[23] = v13;
    *v13 = v14;
    v13[1] = sub_2660D17B0;
    v15 = v0[14];
    v16 = v0[7];

    return MEMORY[0x2821BB488](v16, v10, v15, v8, v9);
  }

  else
  {
    v17 = v0[21];
    v18 = v0[9];
    sub_2660D224C(v0[10]);
    if (v17)
    {
      v19 = v0[20];
      (*(v0[13] + 8))(v0[14], v0[12]);

      v20 = v0[14];
      v22 = v0[10];
      v21 = v0[11];
      (*(v0[16] + 8))(v0[17], v0[15]);

      OUTLINED_FUNCTION_5_3();

      return v23();
    }

    else
    {
      v24 = v0[20];
      v25 = v0[9];
      v26 = v0[10];
      v27 = v25[11];
      v28 = v25[12];
      __swift_project_boxed_opaque_existential_1(v25 + 8, v27);
      v0[5] = type metadata accessor for AppLaunchDataModels(0);
      v0[6] = sub_2660D3118(qword_2814B3FF0, type metadata accessor for AppLaunchDataModels);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_2660D3060(v26, boxed_opaque_existential_0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v30 = swift_allocObject();
      v0[24] = v30;
      *(v30 + 16) = xmmword_26618F7E0;
      *(v30 + 32) = v24;
      v31 = *(MEMORY[0x277D5BE48] + 4);
      v32 = v24;
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[25] = v33;
      *v33 = v34;
      v33[1] = sub_2660D1960;
      v35 = v0[14];
      v36 = v0[7];

      return MEMORY[0x2821BB478](v36, v0 + 2, v30, v35, v27, v28);
    }
  }
}

uint64_t sub_2660D17B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660D18B0()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_11_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_21_1();
  v8(v7);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_2660D1960()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660D1A68()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  sub_2660D3160(v4, type metadata accessor for AppLaunchDataModels.ConfirmationViewModel);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_21_1();
  v9(v8);

  OUTLINED_FUNCTION_5_3();

  return v10();
}

uint64_t sub_2660D1B38()
{
  v1 = v0[21];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660D1BE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_26618B650();
  sub_26618B680();
  sub_26618B690();
  v7 = sub_26618B440();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_2660D1CEC()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660D1D90()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[5];
  v1 = v0[6];
  __swift_project_value_buffer(v0[4], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v6))
  {
    OUTLINED_FUNCTION_24_0();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "RemoteDeviceConfirmationFlowStrategy.makeConfirmationRejectedResponse called");
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v11 = v0[5];
  v10 = v0[6];
  v13 = v0[3];
  v12 = v0[4];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_12_1();
  v16(v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[7] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_27_0(v17);

  return sub_2661799FC();
}

uint64_t sub_2660D1ED0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_2660D1FCC()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660D2070()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[5];
  v1 = v0[6];
  __swift_project_value_buffer(v0[4], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v6))
  {
    OUTLINED_FUNCTION_24_0();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "RemoteDeviceConfirmationFlowStrategy.makeFlowCancelledResponse called");
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v11 = v0[5];
  v10 = v0[6];
  v13 = v0[3];
  v12 = v0[4];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_12_1();
  v16(v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[7] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_27_0(v17);

  return sub_2661799FC();
}

uint64_t sub_2660D21CC()
{
  OUTLINED_FUNCTION_1_0();
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v0 = 0;
  swift_willThrow();
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660D224C@<X0>(uint64_t a1@<X8>)
{
  v51 = sub_26618AB50();
  v3 = OUTLINED_FUNCTION_2_2(v51);
  v52 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v56 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = v42 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v42 - v14;
  result = sub_2660D27A0();
  if (!v1)
  {
    v44 = result;
    v43 = v17;
    v47 = 0;
    v45 = v18;
    v46 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v20 = swift_allocObject();
    v49 = a1;
    v21 = v20;
    v53 = xmmword_26618E190;
    *(v20 + 16) = xmmword_26618E190;
    v42[1] = "CONFIRMATION_CANCEL";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
    inited = swift_initStackObject();
    v48 = v13;
    v23 = inited;
    *(inited + 16) = v53;
    v54 = 0xD000000000000011;
    v55 = 0x8000000266198330;
    v24 = MEMORY[0x277D837D0];
    sub_26618CD20();
    v23[12] = v24;
    v23[9] = 0x6D7269666E6F63;
    v23[10] = 0xE700000000000000;
    sub_26618C850();
    v25 = sub_26618AB80();
    v26 = MEMORY[0x277D63778];
    v21[7] = v25;
    v21[8] = v26;
    __swift_allocate_boxed_opaque_existential_0(v21 + 4);
    sub_26618AB70();

    sub_26618AB60();
    v27 = swift_allocObject();
    *(v27 + 16) = v53;
    v28 = swift_initStackObject();
    *(v28 + 16) = v53;
    v54 = 0xD000000000000011;
    v55 = 0x8000000266198330;
    v29 = v43;

    v30 = MEMORY[0x277D837D0];
    sub_26618CD20();
    *(v28 + 96) = v30;
    *(v28 + 72) = 0x6C65636E6163;
    *(v28 + 80) = 0xE600000000000000;
    sub_26618C850();
    *(v27 + 56) = v25;
    *(v27 + 64) = MEMORY[0x277D63778];
    __swift_allocate_boxed_opaque_existential_0((v27 + 32));
    sub_26618AB70();

    sub_26618AB60();

    v31 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
    v32 = v31[5];
    v54 = v44;
    v55 = v29;
    sub_26618AB90();
    v33 = v52;
    v34 = *(v52 + 16);
    v35 = v50;
    v42[0] = v15;
    v36 = v51;
    v34(v50, v15, v51);
    v37 = v56;
    v34(v56, v35, v36);
    sub_26618AB90();
    v38 = *(v33 + 8);
    v38(v35, v36);
    v39 = v31[7];
    v54 = v45;
    v55 = v46;
    sub_26618AB90();
    v40 = v48;
    v34(v35, v48, v36);
    v41 = v31[6];
    v34(v37, v35, v36);
    sub_26618AB90();
    v38(v35, v36);
    v38(v40, v36);
    return (v38)(v42[0], v36);
  }

  return result;
}

uint64_t sub_2660D27A0()
{
  v2 = sub_26618C6B0();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v11 = sub_26617CA00(0xD000000000000014, 0x80000002661982C0);
  if (v12)
  {
    v1 = v11;
    sub_26617CA00(0xD000000000000013, 0x80000002661982E0);
    if (v13)
    {
      return v1;
    }
  }

  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v5 + 16))(v9, v14, v2);
  v15 = sub_26618C690();
  v16 = sub_26618CAC0();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_24_0();
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2660B7000, v15, v16, "DeviceConfirmationStrategy.makePromptForConfirmation: Failed to localize labels for confirmation dialog.", v17, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  (*(v5 + 8))(v9, v2);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v18 = 7;
  swift_willThrow();
  return v1;
}

uint64_t *sub_2660D29C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_2660D31B4((v0 + 13));
  sub_2660D3208((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  return v0;
}

uint64_t sub_2660D2A0C()
{
  sub_2660D29C4();

  return MEMORY[0x2821FE8D8](v0, 280, 7);
}

uint64_t sub_2660D2A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660CFE00();
}

uint64_t sub_2660D2B38(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2660D3260;

  return sub_2660D10C8();
}

uint64_t sub_2660D2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_2660D2CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_2660D2D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660D1CEC();
}

uint64_t sub_2660D2E00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660D2EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D1FCC();
}

uint64_t sub_2660D2F78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D21B0();
}

unint64_t sub_2660D3004()
{
  result = qword_28005C078;
  if (!qword_28005C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C078);
  }

  return result;
}

uint64_t sub_2660D3060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D30C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2660D3118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2660D3160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_26_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  result = v0[14];
  v8 = v0[12];
  v9 = *(v0[13] + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_15_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  *(v2 - 96) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = *(v0[16] + 8);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_task_alloc();
}

uint64_t sub_2660D33E0@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v108 = &v105 - v5;
  OUTLINED_FUNCTION_18_2();
  v6 = sub_26618B8E0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v106 = v8;
  v107 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v105 = v11;
  OUTLINED_FUNCTION_18_2();
  v12 = sub_26618B840();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v110 = v14;
  v111 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_6();
  v112 = v17;
  OUTLINED_FUNCTION_18_2();
  v18 = sub_26618B7F0();
  v19 = OUTLINED_FUNCTION_2_2(v18);
  v115 = v20;
  v116 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_6();
  v114 = v23;
  OUTLINED_FUNCTION_18_2();
  v24 = sub_26618C6B0();
  v25 = OUTLINED_FUNCTION_2_2(v24);
  v118 = v26;
  v119 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v109 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v117 = &v105 - v32;
  OUTLINED_FUNCTION_18_2();
  v113 = type metadata accessor for AppLaunchIntent();
  v33 = OUTLINED_FUNCTION_16(v113);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_6();
  v120 = v36;
  OUTLINED_FUNCTION_18_2();
  v37 = sub_26618C0E0();
  v38 = OUTLINED_FUNCTION_2_2(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v44 = &v105 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_26618B800();
  v46 = OUTLINED_FUNCTION_2_2(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_1();
  v53 = v51 - v52;
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v105 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v105 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v105 - v61;
  sub_26618B770();
  v63 = (*(v48 + 88))(v62, v45);
  if (v63 == *MEMORY[0x277D5C128])
  {
    (*(v48 + 16))(v60, v62, v45);
    (*(v48 + 96))(v60, v45);
    (*(v40 + 32))(v44, v60, v37);
    v64 = v120;
    (*(v40 + 16))(v120, v44, v37);
    v65 = v45;
    v66 = v62;
    if (sub_2660C97B4())
    {
      sub_26618B290();
      OUTLINED_FUNCTION_2_7();
      sub_2660D7518(v64, v67);
      (*(v40 + 8))(v44, v37);
    }

    else
    {
      v115 = v44;
      v116 = v40;
      if (qword_2814B3D48 != -1)
      {
        OUTLINED_FUNCTION_10_3();
      }

      OUTLINED_FUNCTION_8_4();
      sub_2660D3118(v74, v75);
      v76 = v64;
      sub_26618BDA0();
      v77 = v123;
      v79 = v118;
      v78 = v119;
      if (!v123)
      {
        goto LABEL_26;
      }

      v80 = v122;

      v81 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v81 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        sub_26618B2A0();
      }

      else
      {
LABEL_26:
        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v97 = __swift_project_value_buffer(v78, qword_2814B4A98);
        v98 = v117;
        (*(v79 + 16))(v117, v97, v78);
        v99 = sub_26618C690();
        sub_26618CAA0();
        v100 = OUTLINED_FUNCTION_25_1();
        if (os_log_type_enabled(v100, v101))
        {
          OUTLINED_FUNCTION_24_0();
          v102 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_0(v102);
          OUTLINED_FUNCTION_30_1(&dword_2660B7000, v99, v98, "RemoteDevicesDisambiguationStrategy.actionForInput does not contain valid appLaunchIntent.destinationDeviceId, ignoring");
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
        }

        (*(v79 + 8))(v117, v78);
        sub_26618B2B0();
      }

      OUTLINED_FUNCTION_2_7();
      sub_2660D7518(v76, v103);
      (*(v116 + 8))(v115, v37);
    }

    return (*(v48 + 8))(v66, v65);
  }

  v65 = v45;
  if (v63 == *MEMORY[0x277D5C150])
  {
    (*(v48 + 16))(v57, v62, v45);
    (*(v48 + 96))(v57, v45);
    v69 = v114;
    v68 = v115;
    v70 = v116;
    (*(v115 + 4))(v114, v57, v116);
    if (sub_26618B7D0() == 0xD000000000000030 && 0x80000002661983D0 == v71)
    {
    }

    else
    {
      v73 = sub_26618D000();

      if ((v73 & 1) == 0)
      {
        (*(v68 + 1))(v69, v70);
        v66 = v62;
LABEL_25:
        sub_26618B2B0();
        return (*(v48 + 8))(v66, v65);
      }
    }

    sub_26618B2A0();
    (*(v68 + 1))(v69, v70);
    v66 = v62;
    return (*(v48 + 8))(v66, v65);
  }

  v66 = v62;
  if (v63 != *MEMORY[0x277D5C160])
  {
    goto LABEL_25;
  }

  (*(v48 + 16))(v53, v62, v45);
  (*(v48 + 96))(v53, v45);
  v83 = v110;
  v82 = v111;
  v84 = v112;
  (*(v110 + 32))(v112, v53, v111);
  v85 = v105;
  sub_26618B820();
  v86 = sub_26618B8B0();
  (*(v106 + 8))(v85, v107);
  v87 = v108;
  sub_266139C58(v86, v108);

  v88 = sub_26618B980();
  LODWORD(v86) = __swift_getEnumTagSinglePayload(v87, 1, v88);
  sub_2660BF79C(v87, &qword_28005BF28, &qword_26618F960);
  if (v86 == 1)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v89 = v119;
    v90 = __swift_project_value_buffer(v119, qword_2814B4A80);
    v91 = v118;
    v92 = v109;
    (*(v118 + 16))(v109, v90, v89);
    v93 = sub_26618C690();
    sub_26618CAB0();
    v94 = OUTLINED_FUNCTION_25_1();
    if (os_log_type_enabled(v94, v95))
    {
      OUTLINED_FUNCTION_24_0();
      v96 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v96);
      OUTLINED_FUNCTION_30_1(&dword_2660B7000, v93, v92, "RemoteDevicesDisambiguationStrategy.actionForInput No user dialog act found in userParse");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v91 + 8))(v109, v89);
    sub_26618B2B0();
    (*(v83 + 8))(v112, v82);
  }

  else
  {
    sub_26618B2A0();
    (*(v83 + 8))(v84, v82);
  }

  return (*(v48 + 8))(v66, v65);
}

uint64_t sub_2660D3D4C()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_26618B8E0();
  v1[19] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_25_0();
  v1[22] = swift_task_alloc();
  v9 = sub_26618B840();
  v1[23] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[24] = v10;
  v12 = *(v11 + 64);
  v1[25] = OUTLINED_FUNCTION_25_0();
  v1[26] = swift_task_alloc();
  v13 = sub_26618B7F0();
  v1[27] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = OUTLINED_FUNCTION_8_2();
  v17 = type metadata accessor for AppLaunchIntent();
  v1[30] = v17;
  OUTLINED_FUNCTION_3_0(v17);
  v19 = *(v18 + 64);
  v1[31] = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618C6B0();
  v1[32] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[33] = v21;
  v23 = *(v22 + 64);
  v1[34] = OUTLINED_FUNCTION_25_0();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v24 = sub_26618C0E0();
  v1[38] = v24;
  OUTLINED_FUNCTION_0_4(v24);
  v1[39] = v25;
  v27 = *(v26 + 64);
  v1[40] = OUTLINED_FUNCTION_8_2();
  v28 = sub_26618B800();
  v1[41] = v28;
  OUTLINED_FUNCTION_0_4(v28);
  v1[42] = v29;
  v31 = *(v30 + 64);
  v1[43] = OUTLINED_FUNCTION_25_0();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_2660D3FF4()
{
  v223 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 128);
  sub_26618B770();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_12_1();
  v8 = v7(v6);
  i = 0x2814B2000uLL;
  if (v8 != *MEMORY[0x277D5C128])
  {
    if (v8 != *MEMORY[0x277D5C150])
    {
      if (v8 == *MEMORY[0x277D5C160])
      {
        v88 = *(v0 + 368);
        v90 = *(v0 + 336);
        v89 = *(v0 + 344);
        v91 = *(v0 + 328);
        v92 = *(v0 + 208);
        v93 = *(v0 + 184);
        v94 = *(v0 + 192);
        OUTLINED_FUNCTION_34();
        v95 = OUTLINED_FUNCTION_13_2();
        v96(v95);
        v97 = *(v90 + 96);
        v98 = OUTLINED_FUNCTION_11_0();
        v99(v98);
        v100 = *(v94 + 32);
        v101 = OUTLINED_FUNCTION_7_4();
        v102(v101);
        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v103 = *(v0 + 280);
        v104 = *(v0 + 264);
        v106 = *(v0 + 200);
        v105 = *(v0 + 208);
        v107 = *(v0 + 184);
        v108 = *(v0 + 192);
        __swift_project_value_buffer(*(v0 + 256), qword_2814B4A98);
        v109 = *(v104 + 16);
        v110 = OUTLINED_FUNCTION_13_2();
        v218 = v111;
        (v111)(v110);
        (*(v108 + 16))(v106, v105, v107);
        v112 = sub_26618C690();
        v113 = sub_26618CAA0();
        v114 = os_log_type_enabled(v112, v113);
        v115 = *(v0 + 256);
        v116 = *(v0 + 264);
        v118 = *(v0 + 192);
        v117 = *(v0 + 200);
        v119 = *(v0 + 184);
        if (v114)
        {
          v211 = *(v0 + 184);
          log = v112;
          v221 = *(v0 + 280);
          v120 = *(v0 + 168);
          v121 = *(v0 + 176);
          v123 = *(v0 + 152);
          v122 = *(v0 + 160);
          v215 = v113;
          v124 = swift_slowAlloc();
          v213 = swift_slowAlloc();
          v222[0] = v213;
          *v124 = 136315138;
          sub_26618B820();
          (*(v122 + 16))(v120, v121, v123);
          v209 = sub_2661458C0();
          v217 = v115;
          v126 = v125;
          v127 = *(v118 + 8);
          v127(v117, v211);
          v128 = v127;
          (*(v122 + 8))(v121, v123);
          v129 = sub_266103A98(v209, v126, v222);

          *(v124 + 4) = v129;
          _os_log_impl(&dword_2660B7000, log, v215, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult using follow up USO parse: %s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v213);
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();

          v130 = *(v116 + 8);
          v131 = v221;
          v132 = v217;
        }

        else
        {

          v194 = *(v118 + 8);
          v194(v117, v119);
          v128 = v194;
          v195 = *(v116 + 8);
          v131 = OUTLINED_FUNCTION_12_1();
        }

        v216 = v130;
        (v130)(v131, v132);
        v196 = *(v0 + 208);
        v198 = *(v0 + 176);
        v197 = *(v0 + 184);
        v200 = *(v0 + 152);
        v199 = *(v0 + 160);
        v201 = *(v0 + 144);
        sub_26618B820();
        v220 = sub_2660D4CE4();
        v54 = v202;
        (*(v199 + 8))(v198, v200);
        v203 = OUTLINED_FUNCTION_31_0();
        v128(v203);
        v25 = 0x2814B2000;
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    v70 = *(v0 + 368);
    v71 = *(v0 + 352);
    v72 = *(v0 + 336);
    v74 = *(v0 + 224);
    v73 = *(v0 + 232);
    v75 = *(v0 + 216);
    v76 = *(v72 + 16);
    v77 = OUTLINED_FUNCTION_13_2();
    v78(v77);
    v79 = *(v72 + 96);
    v80 = OUTLINED_FUNCTION_11_0();
    v81(v80);
    v82 = *(v74 + 32);
    v83 = OUTLINED_FUNCTION_7_4();
    v84(v83);
    if (sub_26618B7D0() == 0xD000000000000030 && 0x80000002661983D0 == v85)
    {
    }

    else
    {
      v87 = sub_26618D000();

      if ((v87 & 1) == 0)
      {
        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
LABEL_36:
        v133 = *(v0 + 368);
        v135 = *(v0 + 328);
        v134 = *(v0 + 336);
        sub_2660D3004();
        OUTLINED_FUNCTION_18_1();
        v136 = swift_allocError();
        OUTLINED_FUNCTION_17_2(v136, v137);
LABEL_64:
        (*(v134 + 8))(v133, v135);
        goto LABEL_65;
      }
    }

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v138 = *(v0 + 288);
    v139 = *(v0 + 264);
    __swift_project_value_buffer(*(v0 + 256), qword_2814B4A98);
    v140 = OUTLINED_FUNCTION_8_3();
    v218 = v141;
    (v141)(v140);
    v142 = sub_26618C690();
    v143 = sub_26618CAA0();
    if (os_log_type_enabled(v142, v143))
    {
      OUTLINED_FUNCTION_24_0();
      v144 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v144);
      OUTLINED_FUNCTION_30_1(&dword_2660B7000, v142, v143, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult using directInvocation");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v145 = *(v0 + 288);
    v146 = *(v0 + 256);
    v147 = *(v0 + 264);
    v148 = *(v0 + 232);

    v149 = *(v147 + 8);
    v150 = OUTLINED_FUNCTION_12_1();
    v149(v150);
    v151 = sub_26618B7E0();
    if (v151)
    {
      sub_266158220(0x696669746E656469, 0xEA00000000007265, v151, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v216 = v149;
          v152 = *(v0 + 368);
          v154 = *(v0 + 328);
          v153 = *(v0 + 336);
          (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
          v54 = *(v0 + 88);
          v220 = *(v0 + 80);
          (*(v153 + 8))(v152, v154);

          goto LABEL_9;
        }

        goto LABEL_63;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_2660BF79C(v0 + 16, &qword_28005C0A8, qword_26618FAE0);
LABEL_63:
    v133 = *(v0 + 368);
    v135 = *(v0 + 328);
    v134 = *(v0 + 336);
    v179 = *(v0 + 224);
    v178 = *(v0 + 232);
    v180 = *(v0 + 216);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v181 = swift_allocError();
    OUTLINED_FUNCTION_17_2(v181, v182);
    (*(v179 + 8))(v178, v180);
    goto LABEL_64;
  }

  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v15 = *(v0 + 312);
  v14 = *(v0 + 320);
  v16 = *(v0 + 304);
  OUTLINED_FUNCTION_34();
  v17 = OUTLINED_FUNCTION_13_2();
  v18(v17);
  v19 = *(v13 + 96);
  v20 = OUTLINED_FUNCTION_11_0();
  v21(v20);
  v22 = *(v15 + 32);
  v23 = OUTLINED_FUNCTION_7_4();
  v24(v23);
  if (qword_2814B2C40 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v25 = i;
    v26 = *(v0 + 296);
    v27 = *(v0 + 264);
    __swift_project_value_buffer(*(v0 + 256), qword_2814B4A98);
    v28 = OUTLINED_FUNCTION_8_3();
    v218 = v29;
    (v29)(v28);
    v30 = sub_26618C690();
    v31 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v31))
    {
      OUTLINED_FUNCTION_24_0();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v32);
      OUTLINED_FUNCTION_30_1(&dword_2660B7000, v30, v31, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult using NLv3Intent");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    v36 = *(v0 + 296);
    v35 = *(v0 + 304);
    v37 = *(v0 + 256);
    v38 = *(v0 + 264);
    v39 = *(v0 + 248);

    v40 = *(v38 + 8);
    v41 = OUTLINED_FUNCTION_31_0();
    v216 = v42;
    v42(v41);
    (*(v34 + 16))(v39, v33, v35);
    if (qword_2814B3D48 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v44 = *(v0 + 312);
    v43 = *(v0 + 320);
    v45 = *(v0 + 304);
    v47 = *(v0 + 240);
    v46 = *(v0 + 248);
    OUTLINED_FUNCTION_8_4();
    sub_2660D3118(v48, v49);
    sub_26618BDA0();
    OUTLINED_FUNCTION_2_7();
    sub_2660D7518(v46, v50);
    v51 = *(v44 + 8);
    v52 = OUTLINED_FUNCTION_12_1();
    v53(v52);
    v54 = *(v0 + 104);
    v220 = *(v0 + 96);
LABEL_8:
    v55 = *(v0 + 368);
    v56 = *(v0 + 328);
    v57 = *(*(v0 + 336) + 8);

    v57(v55, v56);
    if (!v54)
    {
      break;
    }

LABEL_9:
    v58 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0B8, &qword_26618FAD0);
    v59 = sub_26618B610();
    v60 = sub_2661046B8(v59);
    for (i = 0; ; ++i)
    {
      if (v60 == i)
      {

        v25 = 0x2814B2000uLL;
        goto LABEL_48;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x26677C150](i, v59);
      }

      else
      {
        if (i >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v61 = *(v59 + 8 * i + 32);
      }

      v62 = v61;
      v63 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_266136804() == v220 && v64 == v54)
      {

LABEL_60:
        v172 = *(v0 + 360);
        v173 = *(v0 + 368);
        v204 = *(v0 + 352);
        v205 = *(v0 + 344);
        v206 = *(v0 + 320);
        v207 = *(v0 + 296);
        v208 = *(v0 + 288);
        v210 = *(v0 + 280);
        v212 = *(v0 + 272);
        v214 = *(v0 + 248);
        OUTLINED_FUNCTION_20_1();
        v174 = *(v0 + 144);
        v175 = *(v0 + 120);

        v176 = *__swift_project_boxed_opaque_existential_1((v174 + 104), *(v174 + 128));
        sub_266179554(v63);
        *(v0 + 112) = v62;
        sub_26618C4F0();
        sub_26618B550();

        OUTLINED_FUNCTION_5_3();
        goto LABEL_66;
      }

      v66 = sub_26618D000();

      if (v66)
      {
        goto LABEL_60;
      }

      v67 = sub_26618C4C0();
      if (v68)
      {
        *(v0 + 48) = v67;
        *(v0 + 56) = v68;
        *(v0 + 64) = v220;
        *(v0 + 72) = v54;
        sub_2660CCD6C();
        v69 = sub_26618CC20();

        if (!v69)
        {
          goto LABEL_60;
        }
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

LABEL_48:
  if (*(v25 + 3136) != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v156 = *(v0 + 264);
  v155 = *(v0 + 272);
  v157 = *(v0 + 256);
  v158 = __swift_project_value_buffer(v157, qword_2814B4A98);
  v218(v155, v158, v157);

  v159 = sub_26618C690();
  v160 = sub_26618CAB0();

  v161 = os_log_type_enabled(v159, v160);
  v163 = *(v0 + 264);
  v162 = *(v0 + 272);
  v164 = *(v0 + 256);
  if (v161)
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v222[0] = v166;
    *v165 = 136315138;
    if (v54)
    {
      v167 = v220;
    }

    else
    {
      v167 = 7104878;
    }

    if (!v54)
    {
      v54 = 0xE300000000000000;
    }

    v168 = sub_266103A98(v167, v54, v222);

    *(v165 + 4) = v168;
    _os_log_impl(&dword_2660B7000, v159, v160, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult No device matched specified identifier: %s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v166);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  else
  {
  }

  v169 = OUTLINED_FUNCTION_31_0();
  v216(v169);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  v170 = swift_allocError();
  OUTLINED_FUNCTION_17_2(v170, v171);
LABEL_65:
  v184 = *(v0 + 360);
  v183 = *(v0 + 368);
  v186 = *(v0 + 344);
  v185 = *(v0 + 352);
  v187 = *(v0 + 320);
  v189 = *(v0 + 288);
  v188 = *(v0 + 296);
  v191 = *(v0 + 272);
  v190 = *(v0 + 280);
  v192 = *(v0 + 248);
  OUTLINED_FUNCTION_20_1();

  OUTLINED_FUNCTION_5_3();
LABEL_66:

  return v177();
}

uint64_t sub_2660D4CE4()
{
  v1 = sub_26618C6B0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_266144AE8())
  {
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
    sub_2660D7054(v9);
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v1, qword_2814B4A80);
    OUTLINED_FUNCTION_34();
    v10(v8);
    v11 = sub_26618C690();
    v12 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v12))
    {
      OUTLINED_FUNCTION_24_0();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2660B7000, v11, v12, "RemoteDevicesDisambiguationStrategy.getSelectedDeviceIdentifierOrName() No tasks found in input", v13, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v4 + 8))(v8, v1);
  }

  return OUTLINED_FUNCTION_12_1();
}

uint64_t sub_2660D4E8C()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B6A0();
  v1[12] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618B440();
  v1[15] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618C6B0();
  v1[18] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_8_2();
  v22 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2660D500C()
{
  v43 = v0;
  v1 = v0[8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0B8, &qword_26618FAD0);
  v3 = sub_26618B610();
  v0[21] = v3;
  if (qword_2814B2C40 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = __swift_project_value_buffer(v6, qword_2814B4A98);
  (*(v4 + 16))(v5, v7, v6);

  v8 = sub_26618C690();
  v9 = sub_26618CAA0();
  v10 = OUTLINED_FUNCTION_15_1(v9);
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];
  if (v10)
  {
    v40 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 134218242;
    *(v14 + 4) = sub_2661046B8(v3);

    *(v14 + 12) = 2080;
    sub_26610027C(v3);
    v3 = sub_266103A98(v16, v17, &v42);

    *(v14 + 14) = v3;
    _os_log_impl(&dword_2660B7000, v8, v9, "RemoteDevicesDisambiguationStrategy.makePromptForDisambiguation(): Disambiguating %ld items : %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    v2 = v40;
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  else
  {
  }

  v18 = *(v11 + 8);
  v19 = OUTLINED_FUNCTION_31_0();
  v20(v19);
  v21 = v0[8];
  v22 = sub_26618B610();
  v23 = sub_2661046B8(v22);
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
LABEL_6:
  v41 = v25;
  v0[22] = v25;
  while (v23 != v24)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26677C150](v24, v22);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    v27 = v26;
    v3 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v28 = sub_26618C4C0();
    v2 = v29;

    ++v24;
    if (v2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v41 + 16);
        sub_266129600();
        v41 = v34;
      }

      v31 = *(v41 + 16);
      if (v31 >= *(v41 + 24) >> 1)
      {
        sub_266129600();
        v41 = v35;
      }

      v25 = v41;
      *(v41 + 16) = v31 + 1;
      v32 = v41 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v2;
      v24 = v3;
      goto LABEL_6;
    }
  }

  v36 = v0[17];
  v37 = v0[9];

  sub_266148554();
  v38 = swift_task_alloc();
  v0[23] = v38;
  *v38 = v0;
  v38[1] = sub_2660D537C;

  return sub_2660C36D8(v41);
}

uint64_t sub_2660D537C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  v5 = v2[23];
  v6 = *v1;
  v3[24] = v7;
  v3[25] = v0;

  v8 = v2[22];
  if (v0)
  {
    v9 = v3[21];

    v10 = sub_2660D5C2C;
  }

  else
  {

    v10 = sub_2660D54C0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2660D54C0()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v1;
  sub_26618B620();

  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0())
  {
    v6 = v0[24];
    v7 = v0[21];
    v8 = v0[9];

    v9 = v8[26];
    v10 = v8[27];
    __swift_project_boxed_opaque_existential_1(v8 + 23, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v11 = swift_allocObject();
    v0[26] = v11;
    *(v11 + 16) = xmmword_26618F7E0;
    *(v11 + 32) = v6;
    v12 = *(MEMORY[0x277D5BE58] + 4);
    v13 = v6;
    v14 = swift_task_alloc();
    v0[27] = v14;
    *v14 = v0;
    v14[1] = sub_2660D5884;
    v15 = v0[14];
    v16 = v0[7];

    return MEMORY[0x2821BB488](v16, v11, v15, v9, v10);
  }

  else
  {
    v17 = v0[25];
    v18 = v0[9];
    sub_2660D6134(v0[21], v0[10]);
    if (v17)
    {
      v19 = v0[24];
      v20 = v0[21];
      (*(v0[13] + 8))(v0[14], v0[12]);

      v21 = v0[20];
      v22 = v0[14];
      v24 = v0[10];
      v23 = v0[11];
      (*(v0[16] + 8))(v0[17], v0[15]);

      OUTLINED_FUNCTION_5_3();

      return v25();
    }

    else
    {
      v26 = v0[24];
      v27 = v0[21];
      v28 = v0[9];
      v29 = v0[10];

      v30 = v28[26];
      v31 = v28[27];
      __swift_project_boxed_opaque_existential_1(v28 + 23, v30);
      v0[5] = type metadata accessor for AppLaunchDataModels(0);
      v0[6] = sub_2660D3118(qword_2814B3FF0, type metadata accessor for AppLaunchDataModels);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_2660D6FF0(v29, boxed_opaque_existential_0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v33 = swift_allocObject();
      v0[28] = v33;
      *(v33 + 16) = xmmword_26618F7E0;
      *(v33 + 32) = v26;
      v34 = *(MEMORY[0x277D5BE38] + 4);
      v35 = v26;
      v36 = swift_task_alloc();
      v0[29] = v36;
      *v36 = v0;
      v36[1] = sub_2660D5A44;
      v37 = v0[14];
      v38 = v0[7];

      return MEMORY[0x2821BB468](v38, v0 + 2, v33, v37, v30, v31);
    }
  }
}

uint64_t sub_2660D5884()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660D5984()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_11_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_19_2();
  v8(v7);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_2660D5A44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660D5B4C()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  sub_2660D7518(v4, type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_19_2();
  v9(v8);

  OUTLINED_FUNCTION_5_3();

  return v10();
}

uint64_t sub_2660D5C2C()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_2660D5CDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26618B230();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_26618B650();
  sub_26618B680();
  v12 = sub_26618B440();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_26618B660();
  sub_26618B640();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_26618B630();
}

uint64_t sub_2660D5E94()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660D5F38()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  __swift_project_value_buffer(v0[4], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    OUTLINED_FUNCTION_24_0();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_30_1(&dword_2660B7000, v5, v6, "RemoteDevicesDisambiguationStrategy.makeFlowCancelledResponse called");
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[3];
  v10 = v0[4];

  v12 = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_12_1();
  v14(v13);
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_2660D1ED0;
  v16 = v0[2];

  return sub_2661799FC();
}

uint64_t sub_2660D60B0()
{
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v0 = 0;
  swift_willThrow();
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660D6134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_26618C6B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v51 = v5;
  v52 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_6();
  v50 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0B0, &qword_26618FAB8);
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v60 = type metadata accessor for AppLaunchDataModels.Device(0);
  v15 = OUTLINED_FUNCTION_2_2(v60);
  v56 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_1();
  v58 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v55 = &v49 - v22;
  v23 = sub_2661046B8(a1);
  v24 = 0;
  v25 = a1 & 0xC000000000000001;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = MEMORY[0x277D84F90];
  v57 = a1;
  while (v23 != v24)
  {
    if (v25)
    {
      v28 = MEMORY[0x26677C150](v24, a1);
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_23;
      }

      v28 = *(a1 + 8 * v24 + 32);
    }

    v29 = v28;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      OUTLINED_FUNCTION_0_5();
      swift_once();
      goto LABEL_19;
    }

    v59[0] = v28;
    sub_2660D657C(v59, v14);

    if (__swift_getEnumTagSinglePayload(v14, 1, v60) == 1)
    {
      sub_2660BF79C(v14, &qword_28005C0B0, &qword_26618FAB8);
    }

    else
    {
      v30 = v55;
      sub_2660D6F84(v14, v55);
      sub_2660D6F84(v30, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266129880(0, *(v27 + 16) + 1, 1, v27);
        v27 = v33;
      }

      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_266129880(v31 > 1, v32 + 1, 1, v27);
        v27 = v34;
      }

      *(v27 + 16) = v32 + 1;
      sub_2660D6F84(v58, v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v32);
      a1 = v57;
    }

    ++v24;
  }

  v35 = *(v54 + 56);
  v36 = sub_26617CA00(0x56545F4843494857, 0xE800000000000000);
  if (v37)
  {
    v59[0] = v36;
    v59[1] = v37;
    v38 = v53;
    sub_26618AB90();
    result = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
    *(v38 + *(result + 20)) = v27;
    return result;
  }

  if (qword_2814B2C40 != -1)
  {
    goto LABEL_24;
  }

LABEL_19:
  v40 = v52;
  __swift_project_value_buffer(v52, qword_2814B4A98);
  v42 = v50;
  v41 = v51;
  OUTLINED_FUNCTION_34();
  v43(v42);
  v44 = sub_26618C690();
  sub_26618CAB0();
  v45 = OUTLINED_FUNCTION_25_1();
  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_24_0();
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2660B7000, v44, v42, "Unable to retieve localized string for 'WHICH_TV' label", v47, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  (*(v41 + 8))(v42, v40);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v48 = 7;
  return swift_willThrow();
}

uint64_t sub_2660D657C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_26618AB50();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v13;
  v14 = sub_26618C6B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = sub_26618C4C0();
  if (v21)
  {
    v22 = v21;
    v52 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v23 = swift_allocObject();
    v51 = xmmword_26618E190;
    *(v23 + 16) = xmmword_26618E190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
    inited = swift_initStackObject();
    *(inited + 16) = v51;
    v56 = 0x696669746E656469;
    v57 = 0xEA00000000007265;
    v25 = MEMORY[0x277D837D0];
    sub_26618CD20();
    v26 = sub_266136804();
    *(inited + 96) = v25;
    *(inited + 72) = v26;
    *(inited + 80) = v27;
    sub_26618C850();
    v28 = sub_26618AB80();
    v29 = MEMORY[0x277D63778];
    *(v23 + 56) = v28;
    *(v23 + 64) = v29;
    __swift_allocate_boxed_opaque_existential_0((v23 + 32));
    sub_26618AB70();

    v30 = v55;
    sub_26618AB60();
    *&v51 = sub_26618C4A0();
    v50 = v31;
    v32 = v53;
    v33 = *(v53 + 16);
    v34 = v58;
    v33(v58, v30, v3);
    v56 = v52;
    v57 = v22;
    v35 = v54;
    sub_26618AB90();
    v36 = type metadata accessor for AppLaunchDataModels.Device(0);
    v37 = *(v36 + 20);
    v56 = v51;
    v57 = v50;
    sub_26618AB90();
    v33(v10, v34, v3);
    v38 = *(v36 + 24);
    v33(v7, v10, v3);
    sub_26618AB90();
    v39 = *(v32 + 8);
    v39(v10, v3);
    v39(v58, v3);
    v39(v55, v3);
    v40 = v35;
    v41 = 0;
    v42 = v36;
  }

  else
  {
    v43 = v54;
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v14, qword_2814B4A98);
    (*(v15 + 16))(v18, v44, v14);
    v45 = sub_26618C690();
    v46 = sub_26618CAB0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2660B7000, v45, v46, "DeviceDisambiguationStrategy.makeDisambiguationModel: device has no name", v47, 2u);
      MEMORY[0x26677CC30](v47, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    v42 = type metadata accessor for AppLaunchDataModels.Device(0);
    v40 = v43;
    v41 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
}

uint64_t *sub_2660D6A9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  sub_2660D3208((v0 + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  sub_2660D31B4((v0 + 28));
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  return v0;
}

uint64_t sub_2660D6AF4()
{
  sub_2660D6A9C();

  return MEMORY[0x2821FE8D8](v0, 360, 7);
}

uint64_t sub_2660D6B7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D3D4C();
}

uint64_t sub_2660D6C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D4E8C();
}

uint64_t sub_2660D6CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B6A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821BA098](a1, a2, v10, a4);
}

uint64_t sub_2660D6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B6A8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821BA0A0](a1, a2, v10, a4);
}

uint64_t sub_2660D6E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660D5E94();
}

uint64_t sub_2660D6EF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D6094();
}

uint64_t sub_2660D6F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.Device(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D6FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D7054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0C0, &qword_26618FAD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - v4;
  v18 = &type metadata for ReferenceResolver;
  v19 = &off_2877CC6F0;
  v17[0] = swift_allocObject();
  sub_2660CFC00(a1, v17[0] + 16);
  sub_26618BDF0();
  sub_2660D74A8(v16, v14);
  if (!v15)
  {
    sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
LABEL_15:
    v6 = 0;
    goto LABEL_24;
  }

  sub_2660D74A8(v14, v13);
  sub_26618BF40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26618C040();
    if (swift_dynamicCast())
    {

      sub_26618BAF0();

      if (v11[3])
      {
        v6 = sub_26618BB00();

        if (!v6)
        {
          sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);

          goto LABEL_23;
        }

        if (sub_2661046B8(v6))
        {
          sub_2661046C8(0);
          if ((v6 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677C150](0, v6);
          }

          else
          {
            v9 = *(v6 + 32);
          }

          sub_26618BCF0();

          sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
          v6 = v11[1];
          goto LABEL_23;
        }

        sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
      }

      else
      {
        sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
      }

      goto LABEL_22;
    }

    sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_15;
  }

  sub_26618BAF0();

  v6 = v12;
  if (v12)
  {
    sub_26618BB90();

    __swift_project_boxed_opaque_existential_1(v17, v18);
    v7 = sub_2661613B8();
    sub_266139CA0(v7, v5);

    v8 = sub_26618C7A0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
    {
      sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);

      sub_2660BF79C(v5, &qword_28005C0C0, &qword_26618FAD8);
LABEL_22:
      v6 = 0;
      goto LABEL_23;
    }

    v6 = sub_26618C770();

    sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
    (*(*(v8 - 8) + 8))(v5, v8);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_24;
  }

  sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);

  __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_24:
  sub_2660BF79C(v14, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v6;
}

uint64_t sub_2660D74A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A8, qword_26618FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D7518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = *(v0[16] + 8);
  return v0[17];
}

void OUTLINED_FUNCTION_20_1()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[21];
}

void OUTLINED_FUNCTION_30_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_2660D769C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_2660DA39C();
  return sub_26618CBA0() & 1;
}

uint64_t sub_2660D7728(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_2660DA3FC(a1, a2);
}

uint64_t sub_2660D7760(char a1)
{
  result = 0x6769626D61736944;
  switch(a1)
  {
    case 1:
      result = 0x616D7269666E6F43;
      break;
    case 2:
      result = 0x6C65532D6F747541;
      break;
    case 3:
      result = 0x6A65522D6F747541;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660D77F8(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a2 >> 62 == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
      {
        case 1:
          OUTLINED_FUNCTION_16_1();
          break;
        case 2:
          OUTLINED_FUNCTION_16_1();
          v4 = v6 + 8;
          break;
        case 3:
          OUTLINED_FUNCTION_16_1();
          v4 = v7 | 0x10;
          break;
        case 4:
          OUTLINED_FUNCTION_16_1();
          v4 = v5 + 24;
          break;
        default:
          v4 = 0x8000000000000000;
          break;
      }

      if (a2 == v4)
      {
        return 1;
      }
    }
  }

  else if (!(a2 >> 62))
  {
LABEL_6:
    sub_2660DA39C();
    return sub_26618CBA0() & 1;
  }

  return 0;
}

uint64_t sub_2660D790C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
  if (!(v1 >> 62))
  {
    return 2;
  }

  if (v1 >> 62 != 1)
  {
    return *(&unk_26618FE48 + ((v1 ^ 0x8000000000000000) & 0xFFFFFFFFFFFFFFF8));
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

BOOL sub_2660D7970(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
  v8 = *(v1 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
  if (v8 == 0x8000000000000000)
  {
    v9 = sub_26618B790();
    OUTLINED_FUNCTION_16(v9);
    (*(v10 + 16))(v6, a1, v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    v11 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input;
    swift_beginAccess();
    sub_2660CFB90(v6, v1 + v11);
    swift_endAccess();
    v12 = *(v1 + v7);
    *(v1 + v7) = 0x8000000000000000;
    sub_2660DA3E0(v12);
  }

  return v8 == 0x8000000000000000;
}

uint64_t sub_2660D7AA4()
{
  type metadata accessor for ExecutionDeviceResolutionFlow();
  sub_2660DB1C4(&qword_28005C130, type metadata accessor for ExecutionDeviceResolutionFlow);
  return sub_26618AFB0();
}

uint64_t sub_2660D7B34()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_26618C6B0();
  v1[7] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B800();
  v1[10] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B790();
  v1[14] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_8_2();
  v16 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2660D7CA0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input;
  swift_beginAccess();
  sub_2660BF73C(v3 + v4, v1, &qword_28005C060, &qword_26618FD10);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2660BF79C(v0[13], &qword_28005C060, &qword_26618FD10);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v6 = v0[8];
    v5 = v0[9];
    __swift_project_value_buffer(v0[7], qword_2814B4A98);
    v7 = OUTLINED_FUNCTION_8_3();
    v8(v7);
    v9 = sub_26618C690();
    v10 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v11, v12, "ExecutionDeviceResolutionFlow.execute() Input is nil. Error executing request");
      OUTLINED_FUNCTION_7_2();
    }

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];

    (*(v14 + 8))(v13, v15);
    return sub_26618CE80();
  }

  else
  {
    v17 = v0[6];
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v18 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
    v0[17] = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
    if (*(v17 + v18) == 0x8000000000000000)
    {
      v19 = v0[6];
      v20 = v19[25];
      v21 = v19[26];
      __swift_project_boxed_opaque_existential_1(v19 + 22, v20);
      v22 = *__swift_project_boxed_opaque_existential_1(v19 + 2, v19[5]);
      v23 = sub_2660DB3E0();
      v0[18] = v23;
      v24 = *(MEMORY[0x277D61F20] + 4);
      v25 = swift_task_alloc();
      v0[19] = v25;
      *v25 = v0;
      v25[1] = sub_2660D7FAC;

      return MEMORY[0x2821C8A68](v23, v20, v21);
    }

    else
    {
      v26 = v0[5];
      sub_26618B360();
      v27 = OUTLINED_FUNCTION_1_6();
      v28(v27);

      OUTLINED_FUNCTION_5_3();

      return v29();
    }
  }
}

uint64_t sub_2660D7FAC(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = v4[19];
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v5[20] = v1;

  if (v1)
  {
    v9 = sub_2660D836C;
  }

  else
  {
    v10 = v5[18];

    v5[21] = a1;
    v9 = sub_2660D80D0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660D80D0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 16), *(*(v0 + 48) + 40));
  sub_26618B770();
  v7 = *v6;
  sub_2660DB448();
  v9 = v8;
  LOBYTE(v6) = v10;

  *(v0 + 176) = v9;
  *(v0 + 192) = v6;
  (*(v4 + 8))(v3, v5);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_2660D81F0;
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);

  return sub_2660D9540();
}

uint64_t sub_2660D81F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660D82D4()
{
  sub_2660DB184(*(v0 + 176), *(v0 + 192));
  v1 = OUTLINED_FUNCTION_1_6();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660D836C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[5];
  v5 = v0[6];

  v6 = *(v5 + v3);
  *(v5 + v3) = 0x8000000000000020;
  sub_2660DA3E0(v6);
  sub_26618B360();

  v7 = OUTLINED_FUNCTION_1_6();
  v8(v7);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_2660D842C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v79 = v5;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C120, &qword_26618FD08);
  OUTLINED_FUNCTION_3_5();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v72 - v22);
  v24 = v15[2];
  v24(&v72 - v22, a1, v13);
  v25 = v15[11];
  v26 = OUTLINED_FUNCTION_3_3();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x277D5BC38])
  {
    v29 = v15[12];
    v30 = OUTLINED_FUNCTION_3_3();
    v31(v30);
    v32 = *v23;
    v33 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    if (sub_26618B1A0())
    {
      __swift_project_boxed_opaque_existential_1(v2 + 27, v2[30]);
      sub_2661642A0(v32, 1);
    }

    v34 = __swift_project_boxed_opaque_existential_1(v2 + 32, v2[35]);
    sub_26618C4E0();
    v35 = sub_26618C5D0();
    v36 = *v34;
    sub_2661792EC(0, v35);
    v21 = &qword_28005D000;
    v37 = *(v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
    *(v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = v32 | 0x4000000000000000;
    goto LABEL_11;
  }

  if (v28 == *MEMORY[0x277D5BC30])
  {
    v38 = v15[1];
    v39 = OUTLINED_FUNCTION_3_3();
    v40(v39);
    goto LABEL_7;
  }

  if (v28 == *MEMORY[0x277D5BC40])
  {
    v37 = OUTLINED_FUNCTION_6_3();
    v42 = v43 - 8;
    goto LABEL_10;
  }

  if (v28 == *MEMORY[0x277D5BC28])
  {
LABEL_7:
    v37 = OUTLINED_FUNCTION_6_3();
LABEL_10:
    *(v2 + v41) = v42;
LABEL_11:
    sub_2660DA3E0(v37);
    v44 = v79;
    goto LABEL_12;
  }

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v54 = __swift_project_value_buffer(v4, qword_2814B4A98);
  (*(v79 + 16))(v78, v54, v4);
  v24(v21, a1, v13);
  v55 = sub_26618C690();
  v56 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_15_1(v56))
  {
    v57 = swift_slowAlloc();
    v76 = v57;
    v77 = swift_slowAlloc();
    v81 = v77;
    *v57 = 136315138;
    sub_2660DB13C(&qword_28005C128, &qword_28005C120, &qword_26618FD08);
    v75 = v55;
    v73 = sub_26618CFD0();
    v59 = v58;
    v60 = v15[1];
    v74 = v56;
    v61 = OUTLINED_FUNCTION_14_2();
    v60(v61);
    v62 = v60;
    v63 = sub_266103A98(v73, v59, &v81);

    v65 = v75;
    v64 = v76;
    *(v76 + 1) = v63;
    _os_log_impl(&dword_2660B7000, v65, v74, "ExecutionDeviceResolutionFlow.processDisambigautionResult() received unknown result: %s. Setting flow to .failure state.", v64, 0xCu);
    v21 = v77;
    __swift_destroy_boxed_opaque_existential_1(v77);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {

    v66 = v15[1];
    v67 = OUTLINED_FUNCTION_14_2();
    v66(v67);
    v62 = v66;
  }

  v68 = v79;
  (*(v79 + 8))(v78, v4);
  v44 = v68;
  v69 = OUTLINED_FUNCTION_6_3();
  *(v2 + v70) = 0x8000000000000020;
  sub_2660DA3E0(v69);
  v71 = OUTLINED_FUNCTION_3_3();
  v62(v71);
LABEL_12:
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v4, qword_2814B4A80);
  (*(v44 + 16))(v11, v45, v4);

  v46 = sub_26618C690();
  v47 = sub_26618CAA0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v81 = v49;
    *v48 = 136315138;
    v80 = *(v2 + v21[42]);
    sub_2660DAF7C(v80);
    v50 = sub_26618C8D0();
    v52 = sub_266103A98(v50, v51, &v81);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_2660B7000, v46, v47, "ExecutionDeviceResolutionFlow.processDisambigautionResult() state after processDisambigautionResult: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  return (*(v44 + 8))(v11, v4);
}

uint64_t sub_2660D8A50(uint64_t a1, int a2)
{
  v83 = a2;
  v89 = sub_26618C6B0();
  v92 = *(v89 - 8);
  v4 = *(v92 + 64);
  v5 = MEMORY[0x28223BE20](v89);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A0, &unk_266191AC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v81 - v13;
  v14 = sub_26618B750();
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v14);
  v86 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C110, &qword_26618FD00);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v81 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  v90 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
  v91 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
  if (v27 >> 62)
  {
    result = sub_26618CE80();
    __break(1u);
    return result;
  }

  v28 = *(v18 + 16);
  v82 = a1;
  v28(&v81 - v25, a1, v17);
  v29 = (*(v18 + 88))(v26, v17);
  v30 = *MEMORY[0x277D5BC38];
  v93 = v27;
  if (v29 == v30)
  {
    (*(v18 + 96))(v26, v17);
    v32 = v86;
    v31 = v87;
    v33 = v14;
    (*(v87 + 32))(v86, v26, v14);
    v34 = v27;
    v35 = v85;
    sub_26618B710();
    v36 = sub_26618B540();
    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {
      (*(v31 + 8))(v32, v14);
      v37 = v88;
      v38 = v89;
      v40 = v90;
      v39 = v91;
LABEL_5:
      v41 = *(v39 + v40);
      *(v39 + v40) = 0x8000000000000020;
      v42 = v92;
LABEL_24:
      sub_2660DA3E0(v41);
      sub_2660BF79C(v35, &qword_28005C0A0, &unk_266191AC0);
      goto LABEL_25;
    }

    sub_2660BF73C(v35, v12, &qword_28005C0A0, &unk_266191AC0);
    v46 = *(v36 - 8);
    v47 = (*(v46 + 88))(v12, v36);
    v37 = v88;
    v38 = v89;
    v40 = v90;
    if (v47 == *MEMORY[0x277D5BED8])
    {
      v39 = v91;
      v48 = v91[11];
      __swift_project_boxed_opaque_existential_1(v91 + 7, v91[10]);
      if (sub_26618B1A0())
      {
        sub_2660C5864((v39 + 27), v94);
        __swift_project_boxed_opaque_existential_1(v94, v94[3]);
        if (v83)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        sub_2661642A0(v34, v49);
        __swift_destroy_boxed_opaque_existential_1(v94);
      }

      v50 = __swift_project_boxed_opaque_existential_1(v39 + 32, v39[35]);
      sub_26618C4E0();
      v51 = sub_26618C5D0();
      v52 = *v50;
      sub_2661792EC(1, v51);
      (*(v87 + 8))(v86, v33);
      v41 = *(v39 + v40);
      *(v39 + v40) = v93 | 0x4000000000000000;
      v53 = v34;
    }

    else
    {
      if (v47 != *MEMORY[0x277D5BED0])
      {
        (*(v87 + 8))(v86, v33);
        (*(v46 + 8))(v12, v36);
        v39 = v91;
        goto LABEL_5;
      }

      v39 = v91;
      v54 = v91[11];
      __swift_project_boxed_opaque_existential_1(v91 + 7, v91[10]);
      if (sub_26618B1A0() & 1) != 0 && (v83)
      {
        __swift_project_boxed_opaque_existential_1(v39 + 27, v39[30]);
        sub_2661642A0(v34, 4);
        v55 = __swift_project_boxed_opaque_existential_1(v39 + 32, v39[35]);
        sub_26618C4E0();
        v56 = sub_26618C5D0();
        v57 = *v55;
        sub_2661792EC(3, v56);
      }

      (*(v87 + 8))(v86, v33);
      v41 = *(v39 + v40);
      *(v39 + v40) = 0x8000000000000018;
    }

    v42 = v92;
    v35 = v85;
    goto LABEL_24;
  }

  if (v29 == *MEMORY[0x277D5BC30])
  {
    v43 = *(v18 + 8);
    v44 = v27;
    v43(v26, v17);
    v38 = v89;
    v42 = v92;
  }

  else
  {
    v42 = v92;
    if (v29 == *MEMORY[0x277D5BC40])
    {
      v40 = v90;
      v39 = v91;
      *(v91 + v90) = 0x8000000000000018;
      v37 = v88;
      v38 = v89;
      goto LABEL_25;
    }

    if (v29 != *MEMORY[0x277D5BC28])
    {
      *(v91 + v90) = 0x8000000000000020;
      if (qword_2814B2C40 != -1)
      {
        swift_once();
      }

      v38 = v89;
      v68 = __swift_project_value_buffer(v89, qword_2814B4A98);
      (*(v42 + 16))(v84, v68, v38);
      v28(v24, v82, v17);
      v69 = sub_26618C690();
      LODWORD(v87) = sub_26618CAB0();
      if (os_log_type_enabled(v69, v87))
      {
        v70 = swift_slowAlloc();
        v85 = v70;
        v86 = swift_slowAlloc();
        v94[0] = v86;
        *v70 = 136315138;
        v71 = v81;
        v28(v81, v24, v17);
        v72 = *(v18 + 8);
        v72(v24, v17);
        sub_2660DB13C(&qword_28005C118, &qword_28005C110, &qword_26618FD00);
        v73 = sub_26618CFD0();
        v75 = v74;
        v72(v71, v17);
        v76 = sub_266103A98(v73, v75, v94);

        v77 = v85;
        *(v85 + 4) = v76;
        v78 = v77;
        _os_log_impl(&dword_2660B7000, v69, v87, "ExecutionDeviceResolutionFlow.processConfirmationResult() received unknown result: %s. Setting flow to .failure state.", v77, 0xCu);
        v79 = v86;
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x26677CC30](v79, -1, -1);
        MEMORY[0x26677CC30](v78, -1, -1);

        v80 = v92;
      }

      else
      {
        v72 = *(v18 + 8);
        v72(v24, v17);

        v80 = v42;
      }

      (*(v80 + 8))(v84, v38);
      v72(v26, v17);
      v39 = v91;
      v42 = v92;
      v37 = v88;
      v40 = v90;
      goto LABEL_25;
    }

    v67 = v27;
    v38 = v89;
  }

  v40 = v90;
  v39 = v91;
  v45 = *(v91 + v90);
  *(v91 + v90) = 0x8000000000000020;
  sub_2660DA3E0(v45);
  v37 = v88;
LABEL_25:
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v38, qword_2814B4A80);
  (*(v42 + 16))(v37, v58, v38);

  v59 = sub_26618C690();
  v60 = sub_26618CAA0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v94[0] = v62;
    *v61 = 136315138;
    v95 = *(v39 + v40);
    sub_2660DAF7C(v95);
    v63 = sub_26618C8D0();
    v65 = sub_266103A98(v63, v64, v94);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_2660B7000, v59, v60, "ExecutionDeviceResolutionFlow.processConfirmationResult() state after processConfirmationResult: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x26677CC30](v62, -1, -1);
    MEMORY[0x26677CC30](v61, -1, -1);

    sub_2660DA3E0(v93);
  }

  else
  {
    sub_2660DA3E0(v93);
  }

  return (*(v42 + 8))(v37, v38);
}

uint64_t sub_2660D9540()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  *(v1 + 416) = v3;
  *(v1 + 360) = v4;
  v5 = sub_26618C6B0();
  *(v1 + 384) = v5;
  OUTLINED_FUNCTION_0_4(v5);
  *(v1 + 392) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2660D9600()
{
  switch(*(v0 + 416) >> 6)
  {
    case 1:
      v48 = *(v0 + 368);
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v50 = *(v0 + 392);
      v49 = *(v0 + 400);
      __swift_project_value_buffer(*(v0 + 384), qword_2814B4A98);
      v51 = OUTLINED_FUNCTION_8_3();
      v52(v51);
      v53 = sub_26618C690();
      v54 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_1(v54))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v55, v56, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() Prompting for confirmation first.");
        OUTLINED_FUNCTION_7_2();
      }

      v57 = *(v0 + 392);
      v58 = *(v0 + 400);
      v59 = *(v0 + 376);
      v60 = *(v0 + 384);
      v61 = *(v0 + 368);
      v85 = *(v0 + 360);
      v62 = *(v0 + 416);

      (*(v57 + 8))(v58, v60);
      sub_2660C5864(v59 + 56, v0 + 16);
      sub_2660C5864(v59 + 96, v0 + 56);
      v63 = sub_26618B470();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = sub_26618B460();
      v67 = *(v0 + 80);
      v68 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v67);
      OUTLINED_FUNCTION_3_5();
      v70 = v69;
      v72 = *(v71 + 64);
      v73 = OUTLINED_FUNCTION_8_2();
      (*(v70 + 16))(v73, v68, v67);
      sub_2660DAD70((v0 + 16), *v73, v66);
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));

      sub_2660C5864(v59 + 136, v0 + 96);
      *(v0 + 336) = v48;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0E0, &qword_26618FCE8);
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      swift_allocObject();
      sub_2660DAEC4(v61, v62);
      type metadata accessor for DeviceConfirmationStrategy();
      sub_2660DB1C4(&qword_28005C0E8, type metadata accessor for DeviceConfirmationStrategy);

      v77 = sub_26618ADF0();
      v78 = *(v59 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v59 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = v61;
      sub_2660DAEC4(v61, v62);
      sub_2660DA3E0(v78);
      *(v0 + 344) = v77;
      v79 = swift_allocObject();
      *(v79 + 16) = v59;
      *(v79 + 24) = v62 & 1;
      sub_2660DB13C(&qword_28005C0F0, &qword_28005C0E0, &qword_26618FCE8);

      sub_26618B320();

      goto LABEL_15;
    case 2:
      v41 = *(v0 + 368);
      v40 = *(v0 + 376);
      v42 = *(v0 + 360);
      v43 = *(v40 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v40 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = v41 | 0x4000000000000000;
      v44 = v41;
      v45 = v43;
      goto LABEL_9;
    case 3:
      v46 = *(v0 + 376);
      v47 = *(v0 + 360);
      v45 = *(v46 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v46 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = 0x8000000000000010;
LABEL_9:
      sub_2660DA3E0(v45);
      sub_26618B360();
      break;
    default:
      v1 = *(v0 + 368);
      v2 = qword_2814B2C40;

      if (v2 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v3 = *(v0 + 408);
      v4 = *(v0 + 384);
      v5 = *(v0 + 392);
      v6 = __swift_project_value_buffer(v4, qword_2814B4A98);
      (*(v5 + 16))(v3, v6, v4);
      v7 = sub_26618C690();
      v8 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_1(v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2660B7000, v7, v8, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() found multiple potential devices. Requesting device dismbiguation", v9, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      v10 = *(v0 + 408);
      v12 = *(v0 + 384);
      v11 = *(v0 + 392);
      v13 = *(v0 + 376);
      v84 = *(v0 + 360);

      (*(v11 + 8))(v10, v12);
      sub_2660C5864(v13 + 56, v0 + 136);
      sub_2660C5864(v13 + 96, v0 + 176);
      sub_2660C5864(v13 + 256, v0 + 216);
      sub_2660C5864(v13 + 296, v0 + 256);
      v14 = *(v0 + 200);
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v14);
      OUTLINED_FUNCTION_3_5();
      v17 = v16;
      v19 = *(v18 + 64);
      v20 = OUTLINED_FUNCTION_8_2();
      (*(v17 + 16))(v20, v15, v14);
      v21 = *(v0 + 240);
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v21);
      OUTLINED_FUNCTION_3_5();
      v24 = v23;
      v26 = *(v25 + 64);
      v27 = OUTLINED_FUNCTION_8_2();
      (*(v24 + 16))(v27, v22, v21);
      v28 = *(v0 + 280);
      v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v28);
      OUTLINED_FUNCTION_3_5();
      v31 = v30;
      v33 = *(v32 + 64);
      v34 = OUTLINED_FUNCTION_8_2();
      (*(v31 + 16))(v34, v29, v28);
      sub_2660DAA44((v0 + 136), *v20, *v27, v34);
      __swift_destroy_boxed_opaque_existential_1((v0 + 256));

      __swift_destroy_boxed_opaque_existential_1((v0 + 216));

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));

      sub_2660C5864(v13 + 136, v0 + 296);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0F8, &unk_26618FCF0);
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      type metadata accessor for DeviceDisambiguationStrategy();
      sub_2660DB1C4(&qword_28005C100, type metadata accessor for DeviceDisambiguationStrategy);

      v38 = sub_26618AE40();
      v39 = *(v13 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v13 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = 0x8000000000000008;
      sub_2660DA3E0(v39);
      *(v0 + 352) = v38;
      sub_2660DB13C(&qword_28005C108, &qword_28005C0F8, &unk_26618FCF0);

      sub_26618B320();

LABEL_15:

      break;
  }

  v81 = *(v0 + 400);
  v80 = *(v0 + 408);

  OUTLINED_FUNCTION_5_3();

  return v82();
}

uint64_t *sub_2660D9DF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  sub_2660BF79C(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input, &qword_28005C060, &qword_26618FD10);
  sub_2660DA3E0(*(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state));
  return v0;
}

uint64_t sub_2660D9E7C()
{
  sub_2660D9DF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecutionDeviceResolutionFlow()
{
  result = qword_28005C0C8;
  if (!qword_28005C0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660D9F28()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t get_enum_tag_for_layout_string_20SiriAppLaunchIntents29ExecutionDeviceResolutionFlowC5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2660DA000(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2660DA054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2660DA0B4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_2660DA114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2660DA1C4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660DA1C4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2660DA2D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D2E00;

  return sub_2660D7B34();
}

uint64_t sub_2660DA370@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2660D790C();
  *a1 = result;
  return result;
}

unint64_t sub_2660DA39C()
{
  result = qword_28005C0D8;
  if (!qword_28005C0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C0D8);
  }

  return result;
}

void sub_2660DA3E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_2660DA3FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_266129F20(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_26618D000();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2660DA59C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for BaseDialogProvider();
  v54[3] = v10;
  v54[4] = &off_2877CAA90;
  v54[0] = a2;
  v11 = type metadata accessor for CoreAnalyticsService();
  v52 = v11;
  v53 = &off_2877CD310;
  v51[0] = a3;
  v49 = &type metadata for AppLaunchFeatureFlagsImpl;
  v50 = &off_2877CD168;
  v47[3] = sub_26618B470();
  v47[4] = MEMORY[0x277D5BD58];
  v47[0] = a4;
  v45 = &type metadata for ReferenceResolver;
  v46 = &off_2877CC6F0;
  v12 = swift_allocObject();
  v44[0] = v12;
  v13 = *(a5 + 16);
  *(v12 + 16) = *a5;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a5 + 32);
  type metadata accessor for DeviceDisambiguationStrategy();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v54, v10);
  v16 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v52;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  v26 = v45;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v28 = *(v26[-1].Description + 8);
  MEMORY[0x28223BE20](v27);
  v30 = v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  v32 = *v18;
  v33 = *v24;
  v43[3] = v10;
  v43[4] = &off_2877CAA90;
  v43[0] = v32;
  v42[3] = v11;
  v42[4] = &off_2877CD310;
  v42[0] = v33;
  v41[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v41[4] = &off_2877CD168;
  *(v14 + 344) = &type metadata for ReferenceResolver;
  *(v14 + 352) = &off_2877CC6F0;
  v34 = swift_allocObject();
  *(v14 + 320) = v34;
  v35 = *(v30 + 1);
  *(v34 + 16) = *v30;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v30 + 4);
  sub_2660C5864(a1, v14 + 16);
  sub_2660C5864(a1, v40);
  type metadata accessor for LocUtil();
  v36 = swift_allocObject();
  sub_2660B9EB8(v40, v36 + 16);
  *(v14 + 56) = v36;
  sub_2660C5864(v43, v14 + 64);
  sub_2660C5864(v42, v14 + 104);
  sub_2660C5864(v41, v14 + 144);
  sub_2660C5864(v47, v14 + 184);
  sub_2660C5864(v14 + 16, v14 + 224);
  sub_2660C5864(v14 + 184, v14 + 264);
  v37 = sub_26618C8A0();
  LODWORD(a4) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  *(v14 + 312) = a4 == 1;
  sub_2660C5864(v14 + 224, v40);
  v38 = swift_allocObject();
  sub_2660B9EB8(v40, v38 + 16);
  *(v14 + 304) = v38;
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v14;
}

uint64_t sub_2660DAA44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[3] = type metadata accessor for BaseDialogProvider();
  v44[4] = &off_2877CAA90;
  v44[0] = a2;
  v43[3] = type metadata accessor for CoreAnalyticsService();
  v43[4] = &off_2877CD310;
  v43[0] = a3;
  v42[3] = &type metadata for ReferenceResolver;
  v42[4] = &off_2877CC6F0;
  v8 = swift_allocObject();
  v42[0] = v8;
  v9 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a4 + 32);
  sub_2660C5864(a1, v41);
  sub_2660C5864(v44, v39);
  sub_2660C5864(v43, v37);
  v10 = sub_26618B470();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_26618B460();
  sub_2660C5864(v42, v35);
  v14 = v40;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v35[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v38;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v35[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = v36;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v35[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  v32 = sub_2660DA59C(v41, *v18, *v24, v13, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v32;
}

uint64_t sub_2660DAD70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BaseDialogProvider();
  v18[3] = v6;
  v18[4] = &off_2877CAA90;
  v18[0] = a2;
  v16 = &type metadata for AppLaunchFeatureFlagsImpl;
  v17 = &off_2877CD168;
  type metadata accessor for DeviceConfirmationStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v13 = sub_2660DAF98(a1, *v11, a3, v7);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13;
}

id sub_2660DAEC4(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:
      result = a1;
      break;
    case 3:
      result = sub_2660DAEF4(a1);
      break;
    default:

      break;
  }

  return result;
}

unint64_t sub_2660DAEF4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2660DAF04(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_2660D8A50(a1, v2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2660DAF7C(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

uint64_t sub_2660DAF98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = sub_26618B470();
  v19[4] = MEMORY[0x277D5BD58];
  v19[0] = a3;
  v18[3] = type metadata accessor for BaseDialogProvider();
  v18[4] = &off_2877CAA90;
  v18[0] = a2;
  v16 = &type metadata for AppLaunchFeatureFlagsImpl;
  v17 = &off_2877CD168;
  sub_2660C5864(a1, a4 + 16);
  sub_2660C5864(a1, __src);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_2660B9EB8(__src, v8 + 16);
  *(a4 + 56) = v8;
  sub_2660C5864(v19, a4 + 64);
  sub_2660C5864(v18, a4 + 200);
  sub_2660C5864(a4 + 16, __src);
  sub_2660C5864(a4 + 64, &__src[2] + 8);
  v9 = sub_26618C8A0();
  v10 = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  BYTE8(__src[5]) = v10 == 1;
  sub_2660C5864(__src, v13);
  v11 = swift_allocObject();
  sub_2660B9EB8(v13, v11 + 16);
  *&__src[5] = v11;
  memcpy((a4 + 104), __src, 0x59uLL);
  sub_2660B9EB8(&v15, a4 + 240);
  return a4;
}

uint64_t sub_2660DB13C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2660DB184(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:

      break;
    case 3:
      sub_2660DB1B4(a1);
      break;
    default:

      break;
  }
}

unint64_t sub_2660DB1B4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2660DB1C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2660DB20C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2660DB268(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2660DB2C8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2660DB31C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_6()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = *(v0[15] + 8);
  return v0[16];
}

uint64_t sub_2660DB3E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26618F7E0;
  sub_26618C5A0();
  *(v0 + 32) = sub_26618C590();
  return v0;
}

void sub_2660DB448()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v76 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v73 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v73 - v17;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v19 = __swift_project_value_buffer(v6, qword_2814B4A98);
  v20 = *(v8 + 16);
  v77 = v19;
  v78 = v20;
  (v20)(v18);

  v21 = sub_26618C690();
  v22 = sub_26618CAA0();
  if (os_log_type_enabled(v21, v22))
  {
    v74 = v16;
    v80 = v8;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v83[0] = v24;
    *v23 = 134218242;
    v79 = v6;
    v75 = v1;
    v73[1] = v5;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v25 = sub_26618CCD0();
    }

    else
    {
      v25 = *(v3 + 16);
    }

    *(v23 + 4) = v25;

    *(v23 + 12) = 2080;

    v28 = sub_2660DCE7C(v27);

    sub_26610027C(v28);
    v30 = v29;
    v32 = v31;

    v33 = sub_266103A98(v30, v32, v83);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_2660B7000, v21, v22, "LaunchAppDeviceResolutionStrategy.processDevices() Found %ld appLaunch capable remote devices: %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v6 = v79;
    v8 = v80;
    v34 = OUTLINED_FUNCTION_11_1();
    v22(v34);
    v1 = v75;
    v16 = v74;
  }

  else
  {

    v26 = OUTLINED_FUNCTION_11_1();
    v22(v26);
  }

  sub_2660DBF04();
  v35 = sub_266136B94(v83);
  v36 = v35;
  if (v37)
  {
    sub_2660DD77C(v83);
  }

  else if (sub_2661046B8(v35) < 2)
  {
    if (sub_2661046B8(v36))
    {
      sub_2661046C8(0);
      if ((v36 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](0, v36);
      }

      else
      {
        v55 = *(v36 + 32);
      }

      sub_2660DBAF8();
      sub_2660DD77C(v83);
      OUTLINED_FUNCTION_7_5();
    }

    else
    {
      sub_2660DD77C(v83);
      OUTLINED_FUNCTION_7_5();
    }
  }

  else
  {

    sub_2660DD77C(v83);
    sub_2660DC6A0();
    if (v38)
    {
      v40 = v38;
      v41 = v39;
      OUTLINED_FUNCTION_7_5();
      if (v41)
      {
        v78(v16, v77, v6);
        v42 = v40;
        v43 = v16;
        v44 = sub_26618C690();
        v45 = sub_26618CAA0();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v80 = v8;
          v47 = v46;
          v48 = swift_slowAlloc();
          v79 = v6;
          v49 = v48;
          v81[0] = v48;
          *v47 = 136315138;
          v50 = sub_26618C4A0();
          v52 = sub_266103A98(v50, v51, v81);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_2660B7000, v44, v45, "LaunchAppDeviceResolutionStrategy.processDevices() Confirmation is required for auto-selection of device %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();

          OUTLINED_FUNCTION_7_5();
          v53 = v79;
          v54 = v43;
        }

        else
        {

          OUTLINED_FUNCTION_7_5();
          v54 = v43;
          v53 = v6;
        }

        (v22)(v54, v53);
      }

      else
      {
        v80 = v8;
        v56 = v76;
        v78(v76, v77, v6);
        v57 = v40;
        v58 = sub_26618C690();
        v59 = sub_26618CAA0();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v75 = v1;
          v61 = v60;
          v62 = swift_slowAlloc();
          v79 = v6;
          v63 = v62;
          v81[0] = v62;
          *v61 = 136315138;
          v64 = sub_26618C4A0();
          v66 = v57;
          v67 = sub_266103A98(v64, v65, v81);

          *(v61 + 4) = v67;
          v57 = v66;
          _os_log_impl(&dword_2660B7000, v58, v59, "LaunchAppDeviceResolutionStrategy.processDevices() Auto-selecting device: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          OUTLINED_FUNCTION_7_2();
          v1 = v75;
          OUTLINED_FUNCTION_7_2();

          v68 = v79;
          v69 = v76;
        }

        else
        {

          v69 = v56;
          v68 = v6;
        }

        (v22)(v69, v68);
        sub_2660C5864(v1 + 96, v81);
        v70 = __swift_project_boxed_opaque_existential_1(v81, v82);
        sub_26618C4E0();
        v71 = sub_26618C5D0();
        v72 = *v70;
        sub_2661792EC(2, v71);
        __swift_destroy_boxed_opaque_existential_1(v81);
        sub_2660C5864(v1 + 56, v81);
        __swift_project_boxed_opaque_existential_1(v81, v82);
        sub_2661642A0(v57, 3);
        OUTLINED_FUNCTION_7_5();
        __swift_destroy_boxed_opaque_existential_1(v81);
      }
    }

    else
    {
      sub_266142B58(v36);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660DBAF8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = v0[17];

  sub_2661569E0(v5);

  v7 = v3[7];
  if (v7[2] != 1)
  {
    goto LABEL_28;
  }

  v8 = v7[5];
  v52 = v7[4];
  v53 = v8;

  v9 = sub_26618C4C0();
  v11 = v10 ? v9 : 0;
  v12 = v10 ? v10 : 0xE000000000000000;
  v50 = v11;
  v51 = v12;
  sub_2660CCD6C();
  v13 = OUTLINED_FUNCTION_16_2();

  if (v13)
  {
LABEL_28:
    v14 = v3[4];
    if (v14)
    {
      v52 = v3[3];
      v53 = v14;

      v15 = sub_26618C4C0();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v50 = v17;
      v51 = v18;
      sub_2660CCD6C();
      OUTLINED_FUNCTION_16_2();
    }
  }

  sub_26618C4E0();
  v19 = sub_26618C5D0();
  if (v19 != sub_26618C5D0() && !v3[6])
  {
    v21 = v1[5];
    v20 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v21);
    OUTLINED_FUNCTION_3_5();
    v23 = v22;
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v26);
    OUTLINED_FUNCTION_1_4();
    v29 = v28 - v27;
    (*(v23 + 16))(v28 - v27);
    LOBYTE(v20) = sub_2660C80B8(v21, v20);
    (*(v23 + 8))(v29, v21);
    if ((v20 & 1) == 0)
    {
      v30 = v1[5];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v30);
      v49[1] = v49;
      OUTLINED_FUNCTION_3_5();
      v32 = v31;
      v34 = *(v33 + 64);
      MEMORY[0x28223BE20](v35);
      OUTLINED_FUNCTION_1_4();
      v38 = v37 - v36;
      (*(v32 + 16))(v37 - v36);
      v39 = sub_26618B170();
      (*(v32 + 8))(v38, v30);
      if ((v39 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_26618C4E0();
    v38 = sub_26618C5D0();
    if (v38 != sub_26618C5D0())
    {
LABEL_29:
      if (!v3[4] || (sub_26618C4E0(), v38 = sub_26618C5D0(), sub_26618C5D0() >= v38))
      {
        v40 = v1[5];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v40);
        OUTLINED_FUNCTION_3_5();
        v42 = v41;
        v44 = *(v43 + 64);
        MEMORY[0x28223BE20](v45);
        OUTLINED_FUNCTION_1_4();
        v47 = OUTLINED_FUNCTION_5_4(v46);
        v48(v47);
        sub_26618B1A0();
        (*(v42 + 8))(v38, v40);
      }
    }
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660DBF04()
{
  OUTLINED_FUNCTION_6_0();
  v76 = v0;
  v78 = v1;
  sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v68 = v3;
  v69 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v70 = v7 - v6;
  v74 = type metadata accessor for AppLaunchIntent();
  v8 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_26618C0E0();
  OUTLINED_FUNCTION_3_5();
  v72 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = sub_26618B800();
  OUTLINED_FUNCTION_3_5();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  v28 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26618F7E0;
  sub_26618C5A0();
  v30 = 1;
  *(v29 + 32) = sub_26618C590();
  v98[0] = 0;
  v98[1] = 0;
  LOBYTE(v99) = 1;
  v100 = 0u;
  v101 = 0u;
  v102 = MEMORY[0x277D84F90];
  v103 = 0;
  v104 = 0;
  v105 = v29;
  v96 = 0u;
  v97 = v99;
  v94 = 0u;
  v95 = v29;
  (*(v22 + 16))(v28, v76, v20);
  v31 = *(v22 + 88);
  v32 = OUTLINED_FUNCTION_12_2();
  if (v33(v32) == *MEMORY[0x277D5C128])
  {
    v34 = *(v22 + 96);
    v35 = OUTLINED_FUNCTION_12_2();
    v36(v35);
    (*(v72 + 32))(v19, v28, v12);
    (*(v72 + 16))(v11, v19, v12);
    v37 = v12;
    v38 = v11;
    v39 = v19;
    if (qword_2814B3D38 != -1)
    {
      swift_once();
    }

    sub_2660C98B4();
    sub_26618BDA0();
    v40 = v82;
    if (v82)
    {
      v41 = v81;
      v42 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v42 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (!v42)
      {

        v41 = 0;
        v40 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    if (qword_2814B3DB8 != -1)
    {
      swift_once();
    }

    sub_26618BDA0();
    v12 = v82;
    if (v82)
    {
      v43 = v81;
      sub_2660DD7D0(v38);
      (*(v72 + 8))(v39, v37);
      v54 = MEMORY[0x277D84F90];
      v55 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v55 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (!v55)
      {

        v43 = 0;
        v12 = 0;
      }
    }

    else
    {
      if (qword_2814B3DD0 != -1)
      {
        swift_once();
      }

      sub_26618BDA0();
      sub_2660DD7D0(v11);
      (*(v72 + 8))(v39, v37);
      v12 = v82;
      v43 = 0;
      v54 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_4_7();
    v83 = v61;
    *&v84 = v43;
    *(&v84 + 1) = v12;
    v85 = v41;
    v86 = v40;
    v87 = v54;
    *(v62 + 64) = *(v62 + 128);
    v29 = v95;
    v90 = v95;
    v75 = v89;
    v77 = v88;
    v53 = v61 & 1;
    v71 = v82;
    v73 = v81;
    sub_2660DD6B8(&v81, &v79);
    v51 = v43;
    v52 = v12;
  }

  else
  {
    sub_2660DD6B8(v98, &v81);
    sub_2660C87C0();
    if (v80)
    {
      sub_2660DD77C(v98);
      sub_2660B9EB8(&v79, v91);
      v43 = v92;
      v44 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      if ((*(v44 + 8))(v43, v44))
      {
        sub_26614313C();
        OUTLINED_FUNCTION_10_4();
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_4_7();
      v83 = v56;
      v84 = 0u;
      *(v57 + 40) = 0u;
      v57[4] = v57[8];
      v87 = v30;
      v90 = v95;
      sub_2660DD6B8(&v81, &v79);
      __swift_destroy_boxed_opaque_existential_1(v91);
      v58 = *(v22 + 8);
      v59 = OUTLINED_FUNCTION_12_2();
      v60(v59);
      OUTLINED_FUNCTION_9_3();
      v29 = v90;
      v75 = v89;
      v77 = v88;
      v40 = v86;
      v54 = v87;
      v52 = *(&v84 + 1);
      v41 = v85;
      v51 = v84;
      v73 = v81;
      v71 = v82;
      v53 = v83;
    }

    else
    {
      sub_2660DD714(&v79);
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v45 = __swift_project_value_buffer(v69, qword_2814B4A98);
      (*(v68 + 16))(v70, v45, v69);
      v46 = sub_26618C690();
      v43 = sub_26618CAB0();
      if (os_log_type_enabled(v46, v43))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2660B7000, v46, v43, "LaunchAppDeviceResolutionStrategy.remoteDevicesFilter() Unable to create AppLaunchIntent from parse, ignoring input", v47, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      v12 = v68 + 8;
      (*(v68 + 8))(v70, v69);
      v48 = *(v22 + 8);
      v49 = OUTLINED_FUNCTION_12_2();
      v50(v49);
      OUTLINED_FUNCTION_9_3();
      v71 = 0;
      v73 = 0;
      v51 = 0;
      v52 = 0;
      v41 = 0;
      v40 = 0;
      v75 = 0;
      v77 = 0;
      v53 = 1;
      v54 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v79) = v53;
  OUTLINED_FUNCTION_4_7();
  v83 = v63;
  *&v84 = v43;
  *(&v84 + 1) = v12;
  v85 = v64;
  v86 = v66;
  v87 = v65;
  *(v67 + 64) = *(v67 + 128);
  v90 = v95;
  sub_2660DD77C(&v81);
  *v78 = v73;
  *(v78 + 8) = v71;
  *(v78 + 16) = v79;
  *(v78 + 24) = v51;
  *(v78 + 32) = v52;
  *(v78 + 40) = v41;
  *(v78 + 48) = v40;
  *(v78 + 56) = v54;
  *(v78 + 64) = v77;
  *(v78 + 72) = v75;
  *(v78 + 80) = v29;
  OUTLINED_FUNCTION_7_1();
}

void sub_2660DC6A0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v77 = v2;
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  OUTLINED_FUNCTION_3_5();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  (*(v6 + 16))(v11 - v10);
  v13 = sub_2660C80B8(v3, v4);
  (*(v6 + 8))(v12, v3);
  if ((v13 & 1) == 0)
  {
    v14 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
    OUTLINED_FUNCTION_3_5();
    v16 = v15;
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v19);
    OUTLINED_FUNCTION_1_4();
    v21 = OUTLINED_FUNCTION_5_4(v20);
    v22(v21);
    v23 = sub_26618B170();
    (*(v16 + 8))(v13, v14);
    if ((v23 & 1) == 0)
    {
      v24 = sub_2661046B8(v77);
      v25 = 0;
      v26 = MEMORY[0x277D84F98];
      while (v24 != v25)
      {
        if ((v77 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x26677C150](v25, v77);
        }

        else
        {
          if (v25 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v27 = *(v77 + 8 * v25 + 32);
        }

        v28 = v27;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          sub_26618C4F0();
          sub_26618D030();
          __break(1u);
          return;
        }

        v29 = v1[17];

        v30 = sub_2661569E0(v28);
        v32 = v31;
        v34 = v33;

        if (v30)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v75 = sub_26612A058(v28);
          v76 = v35;
          if (__OFADD__(*(v26 + 16), (v35 & 1) == 0))
          {
            goto LABEL_64;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C138, &qword_26618FEE8);
          if (sub_26618CE40())
          {
            v36 = sub_26612A058(v28);
            v38 = v76;
            if ((v76 & 1) != (v37 & 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            v36 = v75;
            v38 = v76;
          }

          v39 = (v30 & 0x100) >> 8;
          if (v38)
          {
            v40 = *(v26 + 56) + 24 * v36;
            *v40 = 1;
            *(v40 + 1) = v39;
            *(v40 + 8) = v32;
            *(v40 + 16) = v34;
          }

          else
          {
            *(v26 + 8 * (v36 >> 6) + 64) |= 1 << v36;
            *(*(v26 + 48) + 8 * v36) = v28;
            v41 = *(v26 + 56) + 24 * v36;
            *v41 = 1;
            *(v41 + 1) = v39;
            *(v41 + 8) = v32;
            *(v41 + 16) = v34;
            v42 = *(v26 + 16);
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_65;
            }

            *(v26 + 16) = v44;
          }

          ++v25;
        }

        else
        {

          ++v25;
        }
      }

      v45 = *(v26 + 16);
      if (v45 >= 2)
      {
        v79 = MEMORY[0x277D84F90];
        v78 = *(v26 + 16);
        sub_26612A3B8(0, v45, 0);
        v47 = sub_2660DD5FC(v26);
        v49 = v48;
        v50 = v78;
        v51 = 0;
        v52 = v26 + 64;
        v53 = 1;
        v54 = 24;
        v55 = -2;
        if ((v47 & 0x8000000000000000) == 0)
        {
          while (v47 < v53 << *(v26 + 32))
          {
            v56 = v47 >> 6;
            v57 = v53 << v47;
            if ((*(v52 + 8 * (v47 >> 6)) & (v53 << v47)) == 0)
            {
              goto LABEL_59;
            }

            if (*(v26 + 36) != v49)
            {
              goto LABEL_60;
            }

            v58 = *(*(v26 + 56) + v47 * v54 + 8);
            v60 = v79[2];
            v59 = v79[3];
            if (v60 >= v59 >> 1)
            {
              sub_26612A3B8((v59 > 1), v60 + 1, 1);
              OUTLINED_FUNCTION_3_7();
            }

            v79[2] = v60 + 1;
            v79[v60 + 4] = v58;
            v61 = v53 << *(v26 + 32);
            if (v47 >= v61)
            {
              goto LABEL_61;
            }

            v62 = *(v52 + 8 * v56);
            if ((v62 & v57) == 0)
            {
              goto LABEL_62;
            }

            if (*(v26 + 36) != v49)
            {
              goto LABEL_63;
            }

            v63 = v62 & (v55 << (v47 & 0x3F));
            if (v63)
            {
              v61 = __clz(__rbit64(v63)) | v47 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v64 = v56 << 6;
              v65 = v56 + 1;
              v66 = (v26 + 72 + 8 * v56);
              while (v65 < (v61 + 63) >> 6)
              {
                v68 = *v66++;
                v67 = v68;
                v64 += 64;
                ++v65;
                if (v68)
                {
                  sub_2660DD6AC(v47, v49, v46 & 1);
                  OUTLINED_FUNCTION_3_7();
                  v61 = __clz(__rbit64(v67)) + v64;
                  goto LABEL_40;
                }
              }

              sub_2660DD6AC(v47, v49, v46 & 1);
              OUTLINED_FUNCTION_3_7();
            }

LABEL_40:
            if (++v51 == v50)
            {
              v71 = sub_2660DCD08(v79);
              v73 = v72;

              v74 = sub_2660DCFD4(v26, v71, v73 & 1);

              if (v74[2] != 1 || (v69 = sub_266139D64(v74)) == 0)
              {

                goto LABEL_3;
              }

              v70 = sub_266139D64(v74);

              if (!v70)
              {
                goto LABEL_53;
              }

              goto LABEL_46;
            }

            v46 = 0;
            v49 = *(v26 + 36);
            v47 = v61;
            if (v61 < 0)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

      if (v45 == 1 && (v69 = sub_266139D64(v26)) != 0)
      {
        v70 = sub_266139D64(v26);

        if (v70)
        {
LABEL_46:
        }

        else
        {
LABEL_53:
        }
      }

      else
      {
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660DCD08(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *sub_2660DCD4C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[17];

  return v0;
}

uint64_t sub_2660DCD84()
{
  sub_2660DCD4C();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2660DCDDC(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_26618CCD0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_266140AE8(v3, 0);
    OUTLINED_FUNCTION_10_4();

    v12 = OUTLINED_FUNCTION_13_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19);
    sub_266142590(v12, v13, v14, v15);
    v2 = v16;
    sub_2660BA124();
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t sub_2660DCE7C(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_26618CCD0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_266140AE8(v3, 0);
    OUTLINED_FUNCTION_10_4();

    v12 = OUTLINED_FUNCTION_13_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19);
    sub_266142778(v12, v13, v14, v15);
    v2 = v16;
    sub_2660BA124();
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

void *sub_2660DCF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = OUTLINED_FUNCTION_10_4();
  v3 = sub_266140BB8(v2, 0);
  sub_266142928();
  v5 = v4;

  sub_2660BA124();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t *sub_2660DCFD4(uint64_t a1, unint64_t *a2, char a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a2 = sub_2660DD258(v13, v8, v6, a2, a3 & 1);
      MEMORY[0x26677CC30](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_266140D60(0, v8, v9);
  v10 = sub_2660DD158(v9, v8, v6, a2, a3 & 1);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return a2;
}

unint64_t *sub_2660DD158(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  while (1)
  {
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
      if ((a5 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = v7;
    do
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_2660DD2E8(result, a2, v6, a3);
      }

      v14 = *(a3 + 64 + 8 * v7);
      ++v13;
    }

    while (!v14);
    v10 = (v14 - 1) & v14;
    v12 = __clz(__rbit64(v14)) | (v7 << 6);
    if (a5)
    {
      continue;
    }

LABEL_12:
    if (*(*(a3 + 56) + 24 * v12 + 8) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
  return sub_2660DD2E8(result, a2, v6, a3);
}

unint64_t *sub_2660DD258(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2660DD158(v9, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

uint64_t sub_2660DD2E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C140, &unk_26618FEF0);
  result = sub_26618CEB0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v33 = *(v18 + 1);
    v34 = *v18;
    v31 = *(v18 + 16);
    v32 = *(v18 + 8);
    v19 = *(v9 + 40);
    v20 = v17;
    result = sub_26618CB90();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    v29 = *(v9 + 56) + 24 * v24;
    *v29 = v34;
    *(v29 + 1) = v33;
    *(v29 + 8) = v32;
    *(v29 + 16) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void (*sub_2660DD51C(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = OUTLINED_FUNCTION_8_5(a1, a2, a3);
  sub_2661046C8(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x26677C150](v5, v4);
  }

  *v3 = v8;
  return sub_2660DD588;
}

void (*sub_2660DD590(uint64_t a1, uint64_t a2, uint64_t a3))(id *)
{
  v7 = OUTLINED_FUNCTION_8_5(a1, a2, a3);
  sub_2661046C8(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x26677C150](v5, v4);
  }

  *v3 = v8;
  return sub_2660DD840;
}

uint64_t sub_2660DD5FC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_26618CCA0();
  v4 = *(a1 + 36);
  return result;
}

char *sub_2660DD63C(char *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *(v6 + 1);
    *result = *v6;
    result[1] = v7;
    *(result + 8) = *(v6 + 8);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2660DD6AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2660DD714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C148, &unk_26618FF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660DD7D0(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2660DD82C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_2660DB1B4(result);
  }

  else
  {
  }
}

__n128 OUTLINED_FUNCTION_4_7()
{
  result = v0[10];
  v1[9] = result;
  v4 = *(v2 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

unint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_2660DD82C(v0, 0);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_26618CC20();
}

uint64_t sub_2660DD940()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = OUTLINED_FUNCTION_4_8();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
  sub_26618B810();
  sub_26618B600();
  v4 = type metadata accessor for BaseDialogProvider();
  v5 = swift_allocObject();
  sub_26618B0E0();
  v6 = sub_26618B470();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_26618B460();
  sub_26618B040();
  v30[3] = v4;
  v30[4] = &off_2877CAA90;
  v30[0] = v5;
  v28 = &type metadata for AppLaunchFlowFactoryImpl;
  v29 = &off_2877CD5D8;
  v26[3] = v6;
  v26[4] = MEMORY[0x277D5BD58];
  v26[0] = v9;
  v10 = type metadata accessor for CloseAppWrapperFlow();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v30, v4);
  v15 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v19 = *v17;

  v25[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v25[4] = &off_2877CD5D8;
  v20 = OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(v13 + OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input, 1, 1, v3);
  swift_beginAccess();
  sub_2660DE7DC(v0, v13 + v20);
  swift_endAccess();
  sub_2660C5864(v34, v13 + 16);
  sub_2660C5864(v33, v13 + 56);
  sub_2660C5864(v25, v13 + 96);
  sub_2660C5864(v32, v13 + 136);
  sub_2660C5864(v26, v13 + 176);
  sub_2660C5864(v13 + 16, v13 + 216);
  sub_2660C5864(v13 + 176, v13 + 256);
  v21 = sub_26618C8A0();
  LODWORD(v20) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_2660CFA98(v0);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  *(v13 + 304) = v20 == 1;
  sub_2660C5864(v13 + 216, v24);
  type metadata accessor for LocUtil();
  v22 = swift_allocObject();
  sub_2660B9EB8(v24, v22 + 16);
  *(v13 + 296) = v22;
  sub_2660B9EB8(&v31, v13 + 312);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v13;
}

uint64_t sub_2660DDCA8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_4_8();
  (*(*(v6 - 8) + 16))(v2, a1, v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v2, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660DDD9C()
{
  type metadata accessor for CloseAppWrapperFlow();
  sub_2660DE784();
  return sub_26618AFB0();
}

uint64_t sub_2660DDDFC()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_26618C6B0();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660DDEF0, 0, 0);
}

uint64_t sub_2660DDEF0()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v2 + v3, v1);
  v4 = sub_26618B790();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    sub_2660CFA98(v0[10]);
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = __swift_project_value_buffer(v9, qword_2814B4A98);
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_26618C690();
    v12 = sub_26618CAB0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2660B7000, v11, v12, "CloseAppWrapperFlow.execute Input is nil. Error executing request", v13, 2u);
      MEMORY[0x26677CC30](v13, -1, -1);
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);
    return sub_26618CE80();
  }

  else
  {
    v18 = v0[9];
    v20 = v0[5];
    v19 = v0[6];
    sub_2660CFA98(v0[10]);
    sub_2660DE128();

    OUTLINED_FUNCTION_5_3();

    return v21();
  }
}

uint64_t sub_2660DE128()
{
  sub_2660C5864(v0 + 56, v5);
  v1 = sub_26618AC90();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v5[0] = sub_26618AC80();
  sub_26618B340();
}

uint64_t sub_2660DE1D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660DE1F4, 0, 0);
}

uint64_t sub_2660DE1F4()
{
  v1 = v0[3];
  v2 = v1[43];
  __swift_project_boxed_opaque_existential_1(v1 + 39, v1[42]);
  sub_26618B0D0();
  sub_26618B0B0();
  sub_26618B050();

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2660DE32C;
  v4 = v0[2];

  return sub_266179E74();
}

uint64_t sub_2660DE32C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t *sub_2660DE40C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_2660D31B4((v0 + 27));
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input);
  return v0;
}

uint64_t sub_2660DE46C()
{
  sub_2660DE40C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CloseAppWrapperFlow()
{
  result = qword_28005C158;
  if (!qword_28005C158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660DE518()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660DE5C8(uint64_t a1)
{
  v2 = *v1;
  sub_2660DDCA8(a1);
  return 1;
}

uint64_t sub_2660DE614()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D2E00;

  return sub_2660DDDFC();
}

uint64_t sub_2660DE6B0()
{
  type metadata accessor for CloseAppWrapperFlow();

  return sub_26618AFE0();
}

uint64_t sub_2660DE6EC()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2660D2E00;

  return sub_2660DE1D4(v3, v0);
}

unint64_t sub_2660DE784()
{
  result = qword_28005C168;
  if (!qword_28005C168)
  {
    type metadata accessor for CloseAppWrapperFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C168);
  }

  return result;
}

uint64_t sub_2660DE7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_26618B790();
}

uint64_t sub_2660DE86C(__int128 *a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input;
  v6 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  sub_2660B9EB8(a1, v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService);
  sub_2660B9EB8(a2, v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_eventSender);
  return v2;
}

uint64_t sub_2660DE8E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26618B790();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660DE9EC()
{
  type metadata accessor for HomeScreenFlow();
  sub_2660DF848();
  return sub_26618AFB0();
}

uint64_t sub_2660DEA4C()
{
  OUTLINED_FUNCTION_18();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_26618C6B0();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660DEB58, 0, 0);
}

uint64_t sub_2660DEB58()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v2 + v3, v1);
  v4 = sub_26618B790();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  sub_2660CFA98(v1);
  if (v2 == 1)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = __swift_project_value_buffer(v6, qword_2814B4A80);
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_26618C690();
    v10 = sub_26618CAB0();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v11, v12, "HomeScreenFlow.execute() Missing intput");
      OUTLINED_FUNCTION_7_2();
    }

    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];

    (*(v15 + 8))(v13, v14);
    v16 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[6];
    sub_26618B360();

    v21 = OUTLINED_FUNCTION_2_8(0);

    return v22(v21);
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v24 = v0[12];
    v25 = v0[8];
    v26 = v0[9];
    v27 = __swift_project_value_buffer(v25, qword_2814B4A80);
    v0[14] = v27;
    v28 = *(v26 + 16);
    v0[15] = v28;
    v0[16] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v24, v27, v25);
    v29 = sub_26618C690();
    v30 = sub_26618CAD0();
    if (os_log_type_enabled(v29, v30))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v31, v32, "HomeScreenFlow.execute() submitting SAScreenActionShowHomeScreen command.");
      OUTLINED_FUNCTION_7_2();
    }

    v33 = v0[12];
    v34 = v0[8];
    v35 = v0[9];
    v36 = v0[7];

    v37 = *(v35 + 8);
    v0[17] = v37;
    v37(v33, v34);
    v39 = *(v36 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService + 24);
    v38 = *(v36 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService + 32);
    __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService), v39);
    v40 = [objc_allocWithZone(MEMORY[0x277D477B8]) init];
    v0[18] = v40;
    v41 = *(MEMORY[0x277D5BFB8] + 4);
    v42 = swift_task_alloc();
    v0[19] = v42;
    v43 = sub_2660DF8A0();
    *v42 = v0;
    v42[1] = sub_2660DEEC0;

    return MEMORY[0x2821BB6A0](v40, v39, v43, v38);
  }
}

uint64_t sub_2660DEEC0(void *a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *(v4 + 152);
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 160) = v1;

  if (v1)
  {
    v9 = sub_2660DF078;
  }

  else
  {
    v10 = *(v5 + 144);

    v9 = sub_2660DEFE0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660DEFE0()
{
  OUTLINED_FUNCTION_3_8();

  v2 = *(v0 + 8);

  return v2(v1 << 32);
}

uint64_t sub_2660DF078()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v8 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_26618C690();
  LOBYTE(v8) = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 72);
    v24 = *(v0 + 80);
    v25 = *(v0 + 136);
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v0 + 40) = v9;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v15 = sub_26618C8D0();
    v17 = sub_266103A98(v15, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2660B7000, v7, v8, "HomeScreenFlow.execute() error submitting command: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v25(v24, v11);
  }

  else
  {
    v18 = *(v0 + 136);
    v8 = *(v0 + 72);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);

    v18(v19, v20);
  }

  OUTLINED_FUNCTION_3_8();

  v21 = OUTLINED_FUNCTION_2_8(v8);

  return v22(v21);
}

uint64_t sub_2660DF2A0()
{
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_eventSender));
  return v0;
}

uint64_t sub_2660DF2E8()
{
  sub_2660DF2A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HomeScreenFlow()
{
  result = qword_28005C180;
  if (!qword_28005C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660DF394()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660DF464()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660DF500;

  return sub_2660DEA4C();
}

uint64_t sub_2660DF500()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_2_8(HIDWORD(v2) & 1);

  return v8(v7);
}

uint64_t sub_2660DF5EC(uint64_t a1)
{
  v2 = *v1;
  sub_2660DE8E8(a1);
  return 1;
}

uint64_t sub_2660DF638(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660DF700()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2660DF7E4()
{
  type metadata accessor for HomeScreenFlow();

  return sub_26618AFE0();
}

unint64_t sub_2660DF820(uint64_t a1)
{
  result = sub_2660DF848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660DF848()
{
  result = qword_28005C190;
  if (!qword_28005C190)
  {
    type metadata accessor for HomeScreenFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C190);
  }

  return result;
}

unint64_t sub_2660DF8A0()
{
  result = qword_2814B2C10;
  if (!qword_2814B2C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2C10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8@<X0>(uint64_t a1@<X8>)
{
  result = v1 | (a1 << 32);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = v0[20] == 0;
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[6];

  return sub_26618B360();
}

uint64_t sub_2660DF91C()
{
  sub_26618B810();
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_26618B470();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_26618B460();
  sub_26618B600();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v6 = static InstalledAppProvider.shared;
  v7 = type metadata accessor for MarketplaceInfoProvider();
  swift_allocObject();
  v8 = sub_26615E04C();
  sub_26618B040();
  v40[3] = v0;
  v40[4] = &off_2877CAA90;
  v40[0] = v1;
  v38 = v2;
  v39 = MEMORY[0x277D5BD58];
  *&v37 = v5;
  v35 = type metadata accessor for InstalledAppProvider();
  v36 = &protocol witness table for InstalledAppProvider;
  *&v34 = v6;
  v32 = v7;
  v33 = &off_2877CC370;
  v31[0] = v8;
  v9 = type metadata accessor for InstallAppFlow();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v40, v0);
  v14 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v32;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v16;
  v25 = *v22;
  v26 = (v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_dialogProvider);
  v26[3] = v0;
  v26[4] = &off_2877CAA90;
  *v26 = v24;
  v27 = (v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_marketplaceInfoProvider);
  v27[3] = v7;
  v27[4] = &off_2877CC370;
  *v27 = v25;
  v28 = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input;
  v29 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v12 + v28, 1, 1, v29);
  sub_2660B9EB8(v43, v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_deviceState);
  sub_2660B9EB8(&v37, v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator);
  sub_2660B9EB8(&v42, v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_outputPublisher);
  sub_2660B9EB8(&v34, v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_installedAppProvider);
  sub_2660B9EB8(&v41, v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_eventSender);

  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

uint64_t sub_2660DFCA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = sub_26618B790();
  OUTLINED_FUNCTION_16(v9);
  (*(v10 + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v8, v1 + v11);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660DFD9C()
{
  type metadata accessor for InstallAppFlow();
  OUTLINED_FUNCTION_1_7();
  sub_2660E202C(v0, v1);
  return sub_26618AFB0();
}

uint64_t sub_2660DFE1C()
{
  OUTLINED_FUNCTION_18();
  v1[37] = v2;
  v1[38] = v0;
  v1[39] = *v0;
  v3 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 64) + 15;
  v1[40] = swift_task_alloc();
  v6 = sub_26618B6A0();
  v1[41] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[42] = v7;
  v9 = *(v8 + 64) + 15;
  v1[43] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  v1[44] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v1[45] = OUTLINED_FUNCTION_25_0();
  v1[46] = swift_task_alloc();
  v13 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  v1[47] = v13;
  OUTLINED_FUNCTION_3_0(v13);
  v15 = *(v14 + 64);
  v1[48] = OUTLINED_FUNCTION_25_0();
  v1[49] = swift_task_alloc();
  v16 = sub_26618B800();
  v1[50] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[51] = v17;
  v19 = *(v18 + 64);
  v1[52] = OUTLINED_FUNCTION_25_0();
  v1[53] = swift_task_alloc();
  v20 = sub_26618B790();
  v1[54] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[55] = v21;
  v23 = *(v22 + 64);
  v1[56] = OUTLINED_FUNCTION_25_0();
  v1[57] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v24);
  v26 = *(v25 + 64);
  v1[58] = OUTLINED_FUNCTION_25_0();
  v1[59] = swift_task_alloc();
  v27 = sub_26618C6B0();
  v1[60] = v27;
  OUTLINED_FUNCTION_0_4(v27);
  v1[61] = v28;
  v30 = *(v29 + 64);
  v1[62] = OUTLINED_FUNCTION_25_0();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_2660E00DC()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v1 = v0[65];
  v2 = v0[60];
  v3 = v0[61];
  v4 = __swift_project_value_buffer(v2, qword_2814B4A98);
  v5 = *(v3 + 16);
  v0[66] = v5;
  v0[67] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v100 = v5;
  (v5)(v1, v4, v2);
  v6 = sub_26618C690();
  v7 = sub_26618CA90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2660B7000, v6, v7, "InstallAppFlow.execute executing InstallAppFlow", v8, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[65];
  v10 = v0[60];
  v11 = v0[61];
  v12 = v0[59];
  v13 = v0[54];
  v14 = v0[38];

  v15 = *(v11 + 8);
  v0[68] = v15;
  v16 = OUTLINED_FUNCTION_12_1();
  v15(v16);
  v17 = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input;
  swift_beginAccess();
  sub_2660BF73C(v14 + v17, v12, &qword_28005C060, &qword_26618FD10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v19 = v0[59];
  if (EnumTagSinglePayload)
  {
    sub_2660BF79C(v0[59], &qword_28005C060, &qword_26618FD10);
LABEL_7:
    v20 = 0x2814B2000uLL;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v21 = v0 + 63;
    v22 = v0[63];
    __swift_project_value_buffer(v0[60], qword_2814B4A80);
    v23 = OUTLINED_FUNCTION_13_4();
    v100(v23);
    v24 = sub_26618C690();
    v25 = sub_26618CAB0();
    if (!os_log_type_enabled(v24, v25))
    {
      v31 = 8;
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v27, v28, v29, v30, v26, 2u);
    v31 = 8;
    goto LABEL_20;
  }

  v99 = v15;
  v32 = v0[55];
  v33 = v0[53];
  v34 = v0[51];
  v98 = v0[50];
  v97 = *(v32 + 16);
  v97(v0[57], v19, v0[54]);
  sub_2660BF79C(v19, &qword_28005C060, &qword_26618FD10);
  sub_26618B770();
  v35 = *(v32 + 8);
  v36 = OUTLINED_FUNCTION_12_1();
  v96 = v37;
  v37(v36);
  sub_2660C8AA8();
  v39 = v38;
  v0[69] = v38;
  v40 = *(v34 + 8);
  v40(v33, v98);
  if (!*(v39 + 16))
  {

    v15 = v99;
    goto LABEL_7;
  }

  v41 = v0[58];
  v42 = v0[54];
  sub_2660BF73C(v14 + v17, v41, &qword_28005C060, &qword_26618FD10);
  v43 = __swift_getEnumTagSinglePayload(v41, 1, v42);
  v44 = v0[58];
  if (v43)
  {

    v45 = &qword_28005C060;
    v46 = &qword_26618FD10;
    v47 = v44;
LABEL_15:
    sub_2660BF79C(v47, v45, v46);
    v15 = v99;
    v20 = 0x2814B2000uLL;
    goto LABEL_16;
  }

  v80 = v0[52];
  v81 = v0[50];
  v97(v0[56], v0[58], v0[54]);
  sub_2660BF79C(v44, &qword_28005C060, &qword_26618FD10);
  sub_26618B770();
  v82 = OUTLINED_FUNCTION_11_2();
  v96(v82);
  sub_2660C87C0();
  v40(v80, v81);
  if (!v0[5])
  {

    v45 = &qword_28005C148;
    v46 = &unk_26618FF00;
    v47 = (v0 + 2);
    goto LABEL_15;
  }

  v83 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v84 = *(v83 + 8);
  v85 = OUTLINED_FUNCTION_11_2();
  v15 = v99;
  v20 = 0x2814B2000;
  if (v86(v85))
  {
    v87 = sub_26613B704();
    v89 = v88;

    v0[70] = v87;
    v0[71] = v89;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v89)
    {
      v90 = HIBYTE(v89) & 0xF;
      if ((v89 & 0x2000000000000000) == 0)
      {
        v90 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {
        v91 = (v0[38] + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_marketplaceInfoProvider);
        v0[72] = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_installedAppProvider;
        v92 = *__swift_project_boxed_opaque_existential_1(v91, v91[3]);
        v93 = swift_task_alloc();
        v0[73] = v93;
        *v93 = v0;
        v93[1] = sub_2660E0918;
        OUTLINED_FUNCTION_20_2();

        __asm { BR              X3 }
      }
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

LABEL_16:
  if (*(v20 + 3128) != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v21 = v0 + 64;
  v48 = v0[64];
  __swift_project_value_buffer(v0[60], qword_2814B4A80);
  v49 = OUTLINED_FUNCTION_13_4();
  v100(v49);
  v24 = sub_26618C690();
  v50 = sub_26618CAB0();
  if (os_log_type_enabled(v24, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v52, v53, v54, v55, v51, 2u);
    v31 = 6;
LABEL_20:
    OUTLINED_FUNCTION_7_2();
    goto LABEL_21;
  }

  v31 = 6;
LABEL_21:
  v56 = *v21;
  v57 = v0[60];
  v58 = v0[61];

  v59 = OUTLINED_FUNCTION_12_1();
  v15(v59);
  sub_2660D3004();
  v60 = swift_allocError();
  *v61 = v31;
  swift_willThrow();
  v0[81] = v60;
  if (*(v20 + 3128) != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_18_3();
  __swift_project_value_buffer(v60, qword_2814B4A80);
  v62 = OUTLINED_FUNCTION_13_4();
  (v31)(v62);
  v63 = v60;
  v64 = sub_26618C690();
  v65 = sub_26618CAC0();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v60;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v70, v71, v72, v73, v66, 0xCu);
    sub_2660BF79C(v67, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_21_2();
  v74 = OUTLINED_FUNCTION_11_2();
  (v20)(v74);
  v75 = swift_task_alloc();
  v0[82] = v75;
  OUTLINED_FUNCTION_1_7();
  sub_2660E202C(v76, v77);
  *v75 = v0;
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_20_2();

  return sub_2660F1894();
}

uint64_t sub_2660E0918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 584);
  *v2 = *v0;
  *(v1 + 592) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660E0A04()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 304);
  sub_26617CDCC(*(v0 + 592));
  *(v0 + 600) = v3;
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v0 + 608) = v5;
  *v5 = v0;
  v5[1] = sub_2660E0AE0;

  return sub_2660C4CF4();
}

uint64_t sub_2660E0AE0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 608);
  *v4 = *v1;
  v3[77] = v7;
  v3[78] = v0;

  if (v0)
  {
    v8 = sub_2660E14E4;
  }

  else
  {
    v9 = v3[75];

    v8 = sub_2660E0BF4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2660E0BF4()
{
  v42 = v0 + 7;
  v1 = v0[74];
  if (v1[2])
  {
    v2 = v1[7];
    v38 = v1[6];
    v39 = v1[4];
    v41 = v1[5];
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v3 = v0[78];
  v4 = v0[72];
  v5 = v0[69];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v40 = v0[44];
  v10 = v0[38];

  sub_2660C5864(v10 + v4, v42);
  v11 = swift_task_alloc();
  *(v11 + 16) = v42;
  v12 = sub_2661310D0(sub_2660E1F5C, v11, v5);

  v13 = *(v7 + 20);
  v14 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_2660BF73C(v8, v9, &qword_28005C1E8, &qword_266192910);
  sub_26618AB90();
  sub_2660BF79C(v8, &qword_28005C1E8, &qword_266192910);
  v0[35] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C200, &qword_266194C10);
  sub_26618AB90();
  v15 = *(v12 + 16);

  if (v15 <= 1)
  {
    v22 = v0[71];
    sub_2660E1F7C(v39, v41);
  }

  else
  {
    v16 = v0[71];
    if (v41)
    {
      v17 = v0[70];
      v19 = v0[45];
      v18 = v0[46];
      sub_26616DE6C();
      v20 = OUTLINED_FUNCTION_12_1();
      sub_2660BF73C(v20, v21, &qword_28005C1E8, &qword_266192910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
      sub_26618ABC0();
      sub_2660BF79C(v18, &qword_28005C1E8, &qword_266192910);
      goto LABEL_9;
    }
  }

LABEL_9:
  v23 = v0[77];
  v24 = v0[69];
  v25 = v0[49];
  v26 = v0[43];
  v27 = v0[40];
  v28 = v0[38];
  sub_2660E1FC0(v0[48], v25);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v24;
  sub_26618B620();

  v29 = *(v28 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator + 24);
  v30 = *(v28 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator), v29);
  v0[20] = type metadata accessor for AppLaunchDataModels(0);
  v0[21] = sub_2660E202C(qword_2814B3FF0, type metadata accessor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  sub_2660E2070(v25, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v32 = swift_allocObject();
  v0[79] = v32;
  *(v32 + 16) = xmmword_26618F7E0;
  *(v32 + 32) = v23;
  v33 = *(MEMORY[0x277D5BE38] + 4);
  v34 = v23;
  v35 = swift_task_alloc();
  v0[80] = v35;
  *v35 = v0;
  v35[1] = sub_2660E1000;
  v36 = v0[43];

  return MEMORY[0x2821BB468](v0 + 12, v0 + 17, v32, v36, v29, v30);
}

uint64_t sub_2660E1000()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *(v4 + 632);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2660E1104()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 392);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 296);
  sub_2660C5864(*(v0 + 304) + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_outputPublisher, v0 + 176);
  sub_2660C5864(v0 + 96, v0 + 216);
  v7 = swift_allocObject();
  sub_2660B9EB8((v0 + 216), v7 + 16);
  v8 = sub_26618AC90();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_26618AC80();
  sub_26618B340();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_11_2();
  v13(v12);
  sub_2660E216C(v2);

  OUTLINED_FUNCTION_5_5();

  OUTLINED_FUNCTION_54();

  return v14();
}

uint64_t sub_2660E12EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 656);
  *v2 = *v0;
  *(v1 + 664) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2660E13D8()
{
  v4 = *(v0 + 664);

  v3 = *(v0 + 668);
  OUTLINED_FUNCTION_5_5();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2660E14E4()
{
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[69];

  v7 = v0[78];
  v0[81] = v7;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_18_3();
  __swift_project_value_buffer(v6, qword_2814B4A80);
  v8 = OUTLINED_FUNCTION_13_4();
  v1(v8);
  v9 = v7;
  v10 = sub_26618C690();
  v11 = sub_26618CAC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v16, v17, v18, v19, v12, 0xCu);
    sub_2660BF79C(v13, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_21_2();
  v20 = OUTLINED_FUNCTION_11_2();
  v2(v20);
  v21 = swift_task_alloc();
  v0[82] = v21;
  OUTLINED_FUNCTION_1_7();
  sub_2660E202C(v22, v23);
  *v21 = v0;
  OUTLINED_FUNCTION_2_9();

  return sub_2660F1894();
}

uint64_t sub_2660E16F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  sub_26618B650();
  sub_26618B680();
  sub_266148EFC();
  v4 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_2660E17D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660E17F0, 0, 0);
}

uint64_t sub_2660E17F0()
{
  OUTLINED_FUNCTION_18();
  sub_2660C5864(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2660E1850()
{
  sub_2660BF79C(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input, &qword_28005C060, &qword_26618FD10);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_deviceState));
  sub_2660D3208(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_dialogProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_outputPublisher));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_installedAppProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_marketplaceInfoProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_eventSender));
  return v0;
}

uint64_t sub_2660E18F8()
{
  sub_2660E1850();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InstallAppFlow()
{
  result = qword_28005C1D0;
  if (!qword_28005C1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660E19A4()
{
  sub_2660CF61C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660E1A90()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660E1B2C;

  return sub_2660DFE1C();
}

uint64_t sub_2660E1B2C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_2660E1C1C(uint64_t a1)
{
  v2 = *v1;
  sub_2660DFCA4(a1);
  return 1;
}

uint64_t sub_2660E1C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2660E1CF4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660E1CF4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_54();

  return v7(v2);
}

uint64_t sub_2660E1E00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660E1EC8()
{
  type metadata accessor for InstallAppFlow();

  return sub_26618AFE0();
}

uint64_t sub_2660E1F04(uint64_t a1)
{
  result = sub_2660E202C(&qword_28005C1E0, type metadata accessor for InstallAppFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2660E1F7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2660E1FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E202C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_13_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2660E2070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E20D4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2660DF700;

  return sub_2660E17D0(v3, v0 + 16);
}

uint64_t sub_2660E216C(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[56];
  v8 = v0[57];
  v10 = v0[52];
  v11 = v0[53];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[46];
  v17 = v0[45];
  v12 = v0[43];
  v18 = v0[40];
}

void OUTLINED_FUNCTION_18_3()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[60];
}

void OUTLINED_FUNCTION_21_2()
{
  v3 = v1[68];
  v5 = v1[61];
  v4 = v1[62];
  v6 = v1[60];
  v8 = v1[38];
  v7 = v1[39];
}

uint64_t sub_2660E22DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2660E231C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2660E2394()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2660E2430;

  return sub_2660E262C();
}

uint64_t sub_2660E2430()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 32) = v4;

  return MEMORY[0x2822009F8](sub_2660E2528, 0, 0);
}

uint64_t sub_2660E2528()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[19];
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_2660E2C50();
  sub_26618B050();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2660E25D8()
{
  sub_2660E2B44();

  return sub_26618AFB0();
}

uint64_t sub_2660E262C()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_26618B800();
  v1[15] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[16] = v4;
  v6 = *(v5 + 64) + 15;
  v1[17] = swift_task_alloc();
  v7 = sub_26618B790();
  v1[18] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[19] = v8;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  v11 = sub_26618B840();
  v1[21] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[22] = v12;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660E2788, 0, 0);
}

uint64_t sub_2660E2788()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v13 = v0[15];
  v14 = v0[18];
  v15 = v0[13];
  type metadata accessor for LaunchAppWrapperFlow();
  sub_2660C5864((v8 + 10), (v0 + 2));
  sub_2660C5864((v8 + 5), (v0 + 7));
  sub_2660E2DA4();
  v10 = v9;
  sub_26617D5D4(v8, 0xD000000000000011, 0x8000000266198820, v1);
  (*(v2 + 16))(v6, v1, v4);
  (*(v7 + 104))(v6, *MEMORY[0x277D5C160], v13);
  sub_26618B780();
  sub_2660E34E0();
  (*(v5 + 8))(v3, v14);
  v0[12] = v10;
  sub_2660E2D4C();
  sub_26618B340();
  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11(0x100000001);
}

uint64_t sub_2660E2990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660E2A28;

  return sub_2660E262C();
}

uint64_t sub_2660E2A28()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2 | ((HIDWORD(v2) & 1) << 32));
}

unint64_t sub_2660E2B1C(uint64_t a1)
{
  result = sub_2660E2B44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660E2B44()
{
  result = qword_28005C210;
  if (!qword_28005C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C210);
  }

  return result;
}

uint64_t sub_2660E2B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660DF700;

  return (sub_2660E2394)(a1);
}

unint64_t sub_2660E2D4C()
{
  result = qword_2814B3C80[0];
  if (!qword_2814B3C80[0])
  {
    type metadata accessor for LaunchAppWrapperFlow();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B3C80);
  }

  return result;
}

void sub_2660E2DA4()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v65 = v0;
  v66 = v2;
  v3 = v2;
  v60[0] = type metadata accessor for SiriRemembersStoreProvider();
  v4 = OUTLINED_FUNCTION_16(v60[0]);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v15 = v60 - v14;
  v63 = v60 - v14;
  v62 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v62);
  sub_26618B810();
  sub_2660C5864(v3, v90);
  v16 = type metadata accessor for BaseDialogProvider();
  v17 = swift_allocObject();
  v18 = sub_26618C530();
  v19 = sub_26618C510();
  v61 = v19;
  v64 = v9;
  sub_266164194(v9);
  sub_2660C5864(v1, v89);
  v20 = sub_26618C520();
  v60[1] = v20;
  v21 = sub_26618B470();
  OUTLINED_FUNCTION_41_0(v21);
  v22 = sub_26618B460();
  v23 = sub_26618C460();
  v24 = sub_26618C450();
  v88[3] = v23;
  v88[4] = &off_2877CC660;
  v88[0] = v24;
  v87[3] = v16;
  v87[0] = v17;
  v87[4] = &off_2877CAA90;
  v83[4] = MEMORY[0x277D61F10];
  v85 = &type metadata for AppLaunchFlowFactoryImpl;
  v86 = &off_2877CD5D8;
  v83[3] = v18;
  v83[0] = v19;
  v25 = v60[0];
  v81 = v60[0];
  v82 = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
  sub_2660E7EE8(v9, boxed_opaque_existential_0);
  v79[3] = sub_26618C500();
  v79[4] = MEMORY[0x277D61F08];
  v79[0] = v20;
  v78[3] = v21;
  v78[4] = MEMORY[0x277D5BD58];
  v78[0] = v22;
  v76 = &type metadata for ReferenceResolver;
  v77 = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v75[0] = swift_allocObject();
  sub_2660CFC00(v88, v75[0] + 16);
  v73 = &type metadata for AppLaunchFeatureFlagsImpl;
  v74 = &off_2877CD168;
  v27 = type metadata accessor for LaunchAppWrapperFlow();
  v28 = OUTLINED_FUNCTION_41_0(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v87, v16);
  OUTLINED_FUNCTION_3_5();
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v34 = (v33 - v32);
  (*(v35 + 16))(v33 - v32);
  __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  OUTLINED_FUNCTION_3_5();
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_4();
  v41 = v40 - v39;
  (*(v42 + 16))(v40 - v39);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  OUTLINED_FUNCTION_3_5();
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_4();
  v47 = OUTLINED_FUNCTION_45_0(v46);
  v48(v47);
  __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v49 = *v34;
  v71[3] = v16;
  v71[4] = &off_2877CAA90;
  v71[0] = v49;
  v70[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v70[4] = &off_2877CD5D8;
  v69[3] = v25;
  v69[4] = &off_2877CC750;
  v50 = __swift_allocate_boxed_opaque_existential_0(v69);
  sub_2660E7F4C(v41, v50);
  v68[3] = &type metadata for ReferenceResolver;
  v68[4] = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v51 = swift_allocObject();
  v68[0] = v51;
  v52 = *(v9 + 16);
  *(v51 + 16) = *v9;
  *(v51 + 32) = v52;
  *(v51 + 48) = *(v9 + 32);
  *(v28 + 576) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v28 + 584) = &off_2877CD168;
  v53 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(v28 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input, 1, 1, v62);
  *(v28 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v54 = v61;

  v55 = v63;
  sub_2660DE7DC(v63, v28 + v53);
  swift_endAccess();
  sub_2660C5864(v91, v28 + 16);
  sub_2660C5864(v90, v28 + 56);
  sub_2660C5864(v71, v28 + 96);
  sub_2660C5864(v70, v28 + 136);
  sub_2660C5864(v83, v28 + 176);
  sub_2660C5864(v69, v28 + 216);
  sub_2660C5864(v89, v28 + 256);
  *(v28 + 592) = 0;
  v56 = type metadata accessor for CoreAnalyticsService();
  v57 = swift_allocObject();
  *(v28 + 320) = v56;
  *(v28 + 328) = &off_2877CD310;
  *(v28 + 296) = v57;
  sub_2660C5864(v79, v28 + 336);
  sub_2660C5864(v78, v28 + 376);
  sub_2660C5864(v68, v28 + 512);
  sub_2660C5864(v28 + 16, v28 + 416);
  sub_2660C5864(v28 + 376, v28 + 456);
  v58 = sub_26618C8A0();
  LODWORD(v56) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_2660E850C(v64, type metadata accessor for SiriRemembersStoreProvider);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  sub_2660BF79C(v55, &qword_28005C060, &qword_26618FD10);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  *(v28 + 504) = v56 == 1;
  sub_2660C5864(v28 + 416, v67);
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_4_5();
  v59 = swift_allocObject();
  sub_2660B9EB8(v67, v59 + 16);
  *(v28 + 496) = v59;
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v87);
  sub_2660CFC5C(v88);
  OUTLINED_FUNCTION_7_1();
}

BOOL sub_2660E34E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = *(v0 + 592);
  if (!*(v0 + 592))
  {
    v8 = sub_26618B790();
    OUTLINED_FUNCTION_16(v8);
    v10 = *(v9 + 16);
    v11 = OUTLINED_FUNCTION_12_1();
    v12(v11);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v13 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
    swift_beginAccess();
    sub_2660CFB90(v6, v0 + v13);
    swift_endAccess();
    *(v0 + 592) = 1;
  }

  return v7 == 0;
}

uint64_t sub_2660E35EC()
{
  type metadata accessor for LaunchAppWrapperFlow();
  sub_2660E9668(qword_2814B3C80, type metadata accessor for LaunchAppWrapperFlow);
  return sub_26618AFB0();
}

uint64_t sub_2660E367C()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_26618C6B0();
  v1[22] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[23] = v4;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_26618B7B0();
  v1[28] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[29] = v8;
  v10 = *(v9 + 64);
  v1[30] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618B840();
  v1[31] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[32] = v12;
  v14 = *(v13 + 64);
  v1[33] = OUTLINED_FUNCTION_8_2();
  v15 = type metadata accessor for AppLaunchIntent();
  OUTLINED_FUNCTION_3_0(v15);
  v17 = *(v16 + 64);
  v1[34] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618C0E0();
  v1[35] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v1[36] = v19;
  v21 = *(v20 + 64);
  v1[37] = OUTLINED_FUNCTION_8_2();
  v22 = sub_26618B800();
  v1[38] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v1[39] = v23;
  v25 = *(v24 + 64);
  v1[40] = OUTLINED_FUNCTION_8_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v26);
  v28 = *(v27 + 64);
  v1[41] = OUTLINED_FUNCTION_8_2();
  v29 = sub_26618B790();
  v1[42] = v29;
  OUTLINED_FUNCTION_0_4(v29);
  v1[43] = v30;
  v32 = *(v31 + 64);
  v1[44] = OUTLINED_FUNCTION_8_2();
  v33 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

void sub_2660E3914()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2660BF79C(v0[41], &qword_28005C060, &qword_26618FD10);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_34_0();
    v6 = *(v4 + 192);
    v5 = (v4 + 192);
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    OUTLINED_FUNCTION_14_3(v9, qword_2814B4A98);
    v10 = OUTLINED_FUNCTION_33_0();
    v11(v10);
    v12 = sub_26618C690();
    v13 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v13))
    {
      v14 = "LaunchAppWrapperFlow.execute Input is nil. Error executing request";
LABEL_6:
      v15 = *v5;
      v16 = OUTLINED_FUNCTION_6_2();
      *v16 = 0;
      _os_log_impl(&dword_2660B7000, v12, v8, v14, v16, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
      v15 = *v5;
    }

    goto LABEL_13;
  }

  v17 = v0[21];
  (*(v0[43] + 32))(v0[44], v0[41], v0[42]);
  switch(*(v17 + 592))
  {
    case 1:
      v40 = v0[44];
      v42 = v0[39];
      v41 = v0[40];
      v43 = v0[38];
      sub_26618B770();
      v45 = *(v42 + 88);
      v44 = v42 + 88;
      v46 = OUTLINED_FUNCTION_12_1();
      v48 = v47(v46);
      if (v48 == *MEMORY[0x277D5C128])
      {
        v49 = v0[40];
        v50 = v0[37];
        v51 = v0[35];
        v52 = v0[36];
        v53 = v0[34];
        v54 = v0[21];
        (*(v0[39] + 96))(v49, v0[38]);
        (*(v52 + 32))(v50, v49, v51);
        (*(v52 + 16))(v53, v50, v51);
        if (sub_2660E4E08())
        {
          v55 = v0[44];
          v57 = v0[36];
          v56 = v0[37];
          v59 = v0[34];
          v58 = v0[35];
          v60 = v0[20];
          v61 = v0[21];
          sub_2660E6078();
          OUTLINED_FUNCTION_2_10();
          sub_2660E850C(v59, v62);
          v63 = *(v57 + 8);
          v64 = OUTLINED_FUNCTION_12_1();
          v65(v64);
LABEL_28:
          v69 = v0[43];
          v70 = v0[44];
          v72 = v0[41];
          v71 = v0[42];
          v73 = v0[40];
          v74 = v0[37];
          OUTLINED_FUNCTION_6_4();
          (*(v75 + 8))(v70);

          OUTLINED_FUNCTION_5_3();
          OUTLINED_FUNCTION_36();

          __asm { BRAA            X1, X16 }
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[45] = v27;
        *v27 = v79;
        v29 = sub_2660E41BC;
        goto LABEL_15;
      }

      if (v48 == *MEMORY[0x277D5C150])
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[47] = v27;
        *v27 = v78;
        v29 = sub_2660E4544;
LABEL_15:
        v27[1] = v29;
        v30 = v0[44];
        v31 = v0[20];
        v32 = v0[21];
        OUTLINED_FUNCTION_36();

        sub_2660E55F0();
        return;
      }

      if (v48 == *MEMORY[0x277D5C140])
      {
        v81 = v0[29];
        v80 = v0[30];
        v82 = v0[28];
        (*(v0[39] + 96))(v0[40], v0[38]);
        v83 = OUTLINED_FUNCTION_38_0();
        v84(v83);
        v0[10] = v82;
        v0[11] = &off_2877CAAC8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
        (*(v81 + 16))(boxed_opaque_existential_0, v80, v82);
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[48] = v86;
        *v86 = v87;
        OUTLINED_FUNCTION_31_1(v86);
      }

      else if (v48 == *MEMORY[0x277D5C148])
      {
        v88 = v0[40];
        (*(v0[39] + 96))(v88, v0[38]);
        v89 = *v88;
        v0[49] = v89;
        v0[5] = sub_26618C430();
        v0[6] = &off_2877CAAD8;
        v0[2] = v89;
        v90 = v89;
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[50] = v91;
        *v91 = v92;
        OUTLINED_FUNCTION_31_1(v91);
      }

      else
      {
        if (v48 != *MEMORY[0x277D5C160])
        {
          if (qword_2814B2C40 != -1)
          {
            OUTLINED_FUNCTION_0_3();
          }

          OUTLINED_FUNCTION_34_0();
          v105 = *(v44 + 216);
          v5 = (v44 + 216);
          v106 = *(v5 - 5);
          v8 = *(v5 - 4);
          OUTLINED_FUNCTION_14_3(v107, qword_2814B4A98);
          v108 = OUTLINED_FUNCTION_33_0();
          v109(v108);
          v12 = sub_26618C690();
          v110 = sub_26618CAB0();
          if (OUTLINED_FUNCTION_15_3(v110))
          {
            v14 = "Unexpected parse type in input";
            goto LABEL_6;
          }

          v15 = *v5;
LABEL_13:
          v26 = v0 + 22;
          v25 = v0[22];
          v24 = v26[1];

          (*(v24 + 8))(v15, v25);
          sub_26618CE80();
          OUTLINED_FUNCTION_36();
          return;
        }

        v98 = v0[32];
        v97 = v0[33];
        v99 = v0[31];
        (*(v0[39] + 96))(v0[40], v0[38]);
        v100 = OUTLINED_FUNCTION_38_0();
        v101(v100);
        v0[15] = v99;
        v0[16] = &off_2877CAAB8;
        v102 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
        (*(v98 + 16))(v102, v97, v99);
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[46] = v103;
        *v103 = v104;
        OUTLINED_FUNCTION_31_1(v103);
      }

      OUTLINED_FUNCTION_36();

      sub_2660E4C28(v93, v94, v95);
      return;
    case 2:
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v5 = v0 + 25;
      v34 = v0[25];
      v8 = v0[22];
      v35 = v0[23];
      v36 = __swift_project_value_buffer(v8, qword_2814B4A98);
      (*(v35 + 16))(v34, v36, v8);
      v12 = sub_26618C690();
      v37 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v37))
      {
        v14 = "Unexpected state in execute()";
        goto LABEL_6;
      }

      v15 = *v5;
      goto LABEL_13;
    case 3:
      v38 = v0[20];
      v39 = v0[21];
      sub_2660E6778();
      goto LABEL_28;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[51] = v27;
      *v27 = v28;
      v29 = sub_2660E4A84;
      goto LABEL_15;
    case 5:
      v66 = v0[20];
      sub_26618B360();
      goto LABEL_28;
    case 6:
      v67 = v0[20];
      v68 = v0[21];
      sub_2660E6EEC();
      goto LABEL_28;
    default:
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      OUTLINED_FUNCTION_34_0();
      v18 = *(v4 + 208);
      v5 = (v4 + 208);
      v19 = *(v5 - 4);
      v8 = *(v5 - 3);
      OUTLINED_FUNCTION_14_3(v20, qword_2814B4A98);
      v21 = OUTLINED_FUNCTION_33_0();
      v22(v21);
      v12 = sub_26618C690();
      v23 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v23))
      {
        v14 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
        goto LABEL_6;
      }

      v15 = *v5;
      goto LABEL_13;
  }
}

uint64_t sub_2660E41BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 360);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660E42A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v16 = v14[36];
  v15 = v14[37];
  v17 = v14[34];
  v18 = v14[35];
  OUTLINED_FUNCTION_2_10();
  sub_2660E850C(v19, v20);
  (*(v16 + 8))(v15, v18);
  v21 = OUTLINED_FUNCTION_1_8();
  v22(v21);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4388()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660E446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  (*(v14[32] + 8))(v14[33], v14[31]);
  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4544()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660E4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  (*(v14[43] + 8))(v14[44], v14[42]);
  v15 = v14[39];
  v16 = v14[40];
  v17 = v14[44];
  v18 = v14[41];
  v20 = v14[37];
  v19 = v14[38];
  OUTLINED_FUNCTION_6_4();
  v33 = v22;
  v34 = v21;
  (*(v23 + 8))(v16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, a12, a13, a14);
}

uint64_t sub_2660E471C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660E4800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  (*(v14[29] + 8))(v14[30], v14[28]);
  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E48D8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660E49BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();

  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4A84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 408);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660E4B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v14 = OUTLINED_FUNCTION_1_8();
  v15(v14);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660E4C54()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[4];
  v2 = v0[5];
  sub_2660E4EA4();
  if (v3)
  {
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_2660E6078();
    OUTLINED_FUNCTION_5_3();

    return v7();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[6] = v9;
    *v9 = v10;
    v9[1] = sub_2660E4D28;
    v11 = v0[5];
    v12 = v0[2];
    v13 = v0[3];

    return sub_2660E55F0();
  }
}

uint64_t sub_2660E4D28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

BOOL sub_2660E4E08()
{
  v1 = v0;
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_26618B1A0())
  {
    return 1;
  }

  v4 = v0[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  return (sub_2660C80B8(v4, v5) & 1) != 0 && sub_26614778C();
}

void sub_2660E4EA4()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618C6B0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v96 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v90 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v90 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v95 = &v90 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v90 - v20;
  v22 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v23 = sub_26618B1A0();
  if (v23)
  {
    if (qword_2814B2C40 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_3;
  }

  v33 = v3[3];
  v22 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v33);
  v34 = (*(v22 + 8))(v33, v22);
  if (!v34)
  {
    goto LABEL_18;
  }

  v21 = sub_266143284();

  v35 = sub_2661046B8(v21);
  if (!v35)
  {

LABEL_18:
    if (qword_2814B2C40 != -1)
    {
      v34 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_14_3(v34, qword_2814B4A98);
    OUTLINED_FUNCTION_32_0();
    v41(v11);
    v42 = sub_26618C690();
    v43 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_3(v43))
    {
      v44 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_43_0(v44);
      OUTLINED_FUNCTION_19_3(&dword_2660B7000, v45, v46, "needsDeviceResolution(): no user entities in request");
      OUTLINED_FUNCTION_7_2();
    }

    (*(v22 + 8))(v11, v4);
    goto LABEL_28;
  }

  v36 = v35;
  v93 = v4;
  v37 = 0;
  v38 = v21 & 0xC000000000000001;
  while (1)
  {
    if (v36 == v37)
    {

      if (qword_2814B2C40 != -1)
      {
        v47 = OUTLINED_FUNCTION_0_3();
      }

      v48 = v93;
      OUTLINED_FUNCTION_14_3(v47, qword_2814B4A98);
      OUTLINED_FUNCTION_32_0();
      v49(v14);
      v50 = sub_26618C690();
      v51 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_3(v51))
      {
        v52 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_43_0(v52);
        OUTLINED_FUNCTION_19_3(&dword_2660B7000, v53, v54, "needsDeviceResolution(): found user entities, but none have an associated name");
        OUTLINED_FUNCTION_7_2();
      }

      (*(v22 + 8))(v14, v48);
      goto LABEL_28;
    }

    if (v38)
    {
      MEMORY[0x26677C150](v37, v21);
    }

    else
    {
      if (v37 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v39 = *(v21 + 8 * v37 + 32);
    }

    if (__OFADD__(v37, 1))
    {
      break;
    }

    sub_2661433B8();
    v22 = v40;

    ++v37;
    if (v22)
    {
      v92 = v17;

      v55 = 0;
      v94 = MEMORY[0x277D84F90];
      while (v36 != v55)
      {
        sub_2661046C8(v55);
        if (v38)
        {
          MEMORY[0x26677C150](v55, v21);
        }

        else
        {
          v56 = *(v21 + 8 * v55 + 32);
        }

        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_54;
        }

        v22 = sub_266143474();
        v59 = v58;
        v61 = v60;

        ++v55;
        if (v61)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = *(v94 + 16);
            sub_266129BB0();
            v94 = v66;
          }

          v62 = v94;
          v63 = *(v94 + 16);
          if (v63 >= *(v94 + 24) >> 1)
          {
            sub_266129BB0();
            v62 = v67;
          }

          *(v62 + 16) = v63 + 1;
          v94 = v62;
          v64 = v62 + 24 * v63;
          *(v64 + 32) = v22;
          *(v64 + 40) = v59;
          *(v64 + 48) = v61;
          v55 = v57;
        }
      }

      v68 = v93;
      if (*(v94 + 16))
      {
        v91 = *(v94 + 32);
        v70 = *(v94 + 40);
        v69 = *(v94 + 48);

        if (qword_2814B2C40 != -1)
        {
          v71 = OUTLINED_FUNCTION_0_3();
        }

        OUTLINED_FUNCTION_14_3(v71, qword_2814B4A98);
        v73 = v95;
        v72 = v96;
        v74 = *(v96 + 16);
        v94 = v75;
        v90 = v74;
        (v74)(v95);

        v76 = sub_26618C690();
        v77 = sub_26618CAA0();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = OUTLINED_FUNCTION_49_0();
          v79 = swift_slowAlloc();
          v97 = v79;
          *v78 = 136315138;

          v80 = sub_266103A98(v70, v69, &v97);

          *(v78 + 4) = v80;
          _os_log_impl(&dword_2660B7000, v76, v77, "needsDeviceResolution(): detected reference to an apple product type in request: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();

          v81 = *(v72 + 8);
          v81(v95, v68);
        }

        else
        {

          v81 = *(v72 + 8);
          v81(v73, v68);
        }

        if (v91 >= 2)
        {
          v84 = v92;
          v90(v92, v94, v68);
          v85 = sub_26618C690();
          v86 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_3(v86))
          {
            v87 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_43_0(v87);
            OUTLINED_FUNCTION_19_3(&dword_2660B7000, v88, v89, "needsDeviceResolution(): user referenced a non appletv target, so we'll ignore it");
            OUTLINED_FUNCTION_7_2();
          }

          v81(v84, v68);
          goto LABEL_28;
        }
      }

      else
      {
      }

      v82 = v1[5];
      v83 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v82);
      sub_2660C80B8(v82, v83);
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  v23 = OUTLINED_FUNCTION_0_3();
LABEL_3:
  OUTLINED_FUNCTION_14_3(v23, qword_2814B4A98);
  OUTLINED_FUNCTION_32_0();
  v24(v21);
  v25 = sub_26618C690();
  v26 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_3(v26))
  {
    v27 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_43_0(v27);
    OUTLINED_FUNCTION_19_3(&dword_2660B7000, v28, v29, "needsDeviceResolution(): Request from homepod. Trigger Device resolution flow");
    OUTLINED_FUNCTION_7_2();
  }

  v30 = *(v22 + 8);
  v31 = OUTLINED_FUNCTION_46_0();
  v32(v31);
LABEL_28:
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660E55F0()
{
  OUTLINED_FUNCTION_18();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C228, &qword_266190580);
  v1[58] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[59] = v5;
  v7 = *(v6 + 64);
  v1[60] = OUTLINED_FUNCTION_8_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C230, &unk_266190588);
  v1[61] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[62] = v9;
  v11 = *(v10 + 64) + 15;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v12 = sub_26618B800();
  v1[65] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[66] = v13;
  v15 = *(v14 + 64);
  v1[67] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618C6B0();
  v1[68] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[69] = v17;
  v19 = *(v18 + 64) + 15;
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2660E57BC(uint64_t a1)
{
  v79 = v1;
  if (qword_2814B2C40 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_3();
  }

  v2 = *(v1 + 568);
  v3 = *(v1 + 552);
  v4 = *(v1 + 544);
  v5 = *(v1 + 456);
  OUTLINED_FUNCTION_14_3(a1, qword_2814B4A98);
  (*(v3 + 16))(v2);

  v6 = sub_26618C690();
  v7 = sub_26618CA90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 456);
    v9 = OUTLINED_FUNCTION_49_0();
    v10 = swift_slowAlloc();
    v78 = v10;
    *v9 = 136315138;
    v11 = *(v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice);
    if (v11)
    {
      v12 = [v11 description];
      v13 = sub_26618C8B0();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v22 = *(v1 + 568);
    v23 = *(v1 + 552);
    v24 = *(v1 + 544);
    v25 = sub_266103A98(v13, v15, &v78);

    *(v9 + 4) = v25;
    _os_log_impl(&dword_2660B7000, v6, v7, "Executing LaunchApp RCHFlow with remoteDevice: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v23 + 8))(v22, v24);
  }

  else
  {
    v16 = *(v1 + 568);
    v17 = *(v1 + 552);
    v18 = *(v1 + 544);

    v19 = *(v17 + 8);
    v20 = OUTLINED_FUNCTION_12_1();
    v21(v20);
  }

  v26 = *(v1 + 456);
  v74 = *(v1 + 448);
  v76 = *(v1 + 536);
  sub_2660C5864(v26 + 16, v1 + 16);
  sub_2660C5864(v26 + 256, v1 + 56);
  v70 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice;
  v72 = *(v26 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice);
  sub_2660C5864(v26 + 512, v1 + 96);
  sub_2660C5864(v26 + 336, v1 + 136);
  sub_2660C5864(v26 + 552, v1 + 176);
  v27 = *(v1 + 120);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 96, v27);
  OUTLINED_FUNCTION_3_5();
  v30 = v29;
  v32 = *(v31 + 64);
  v33 = OUTLINED_FUNCTION_8_2();
  (*(v30 + 16))(v33, v28, v27);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 176, *(v1 + 200));
  *(v1 + 240) = &type metadata for ReferenceResolver;
  *(v1 + 248) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v34 = swift_allocObject();
  *(v1 + 216) = v34;
  v35 = *(v33 + 32);
  v36 = *(v33 + 16);
  *(v34 + 16) = *v33;
  *(v34 + 32) = v36;
  *(v34 + 48) = v35;
  *(v1 + 280) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v1 + 288) = &off_2877CD168;
  *(v1 + 320) = &type metadata for AccountProvider;
  *(v1 + 328) = &off_2877CBF68;
  type metadata accessor for LaunchAppFlowStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 216, &type metadata for ReferenceResolver);
  OUTLINED_FUNCTION_3_5();
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = OUTLINED_FUNCTION_8_2();
  (*(v40 + 16))(v43, v38, &type metadata for ReferenceResolver);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 256, &type metadata for AppLaunchFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 296, &type metadata for AccountProvider);
  *(v1 + 360) = &type metadata for ReferenceResolver;
  *(v1 + 368) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v44 = swift_allocObject();
  *(v1 + 336) = v44;
  v45 = *(v43 + 32);
  v46 = *(v43 + 16);
  *(v44 + 16) = *v43;
  *(v44 + 32) = v46;
  *(v44 + 48) = v45;
  v37[25] = &type metadata for AppLaunchFeatureFlagsImpl;
  v37[26] = &off_2877CD168;
  v37[30] = &type metadata for AccountProvider;
  v37[31] = &off_2877CBF68;
  v37[32] = 0;
  sub_2660B9EB8((v1 + 16), (v37 + 2));
  v37[32] = v72;
  sub_2660B9EB8((v1 + 56), (v37 + 7));
  sub_2660B9EB8((v1 + 336), (v37 + 17));
  sub_2660B9EB8((v1 + 136), (v37 + 12));
  v47 = v72;
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));
  __swift_destroy_boxed_opaque_existential_1((v1 + 256));
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));

  __swift_destroy_boxed_opaque_existential_1((v1 + 176));
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  sub_26618B770();
  v77 = sub_266119CCC(v76, 0);
  v48 = *(v1 + 504);
  v49 = *(v1 + 512);
  v51 = *(v1 + 488);
  v50 = *(v1 + 496);
  v52 = *(v1 + 480);
  v53 = *(v1 + 456);
  (*(*(v1 + 528) + 8))(*(v1 + 536), *(v1 + 520));
  __swift_project_boxed_opaque_existential_1((v53 + 136), *(v53 + 160));
  v54 = *(v26 + v70);
  *(v1 + 400) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v1 + 408) = &off_2877CD5D8;
  v75 = v54;
  sub_2660E7FB0(v54, v26 + 16, (v1 + 376));
  __swift_destroy_boxed_opaque_existential_1((v1 + 376));
  (*(v50 + 16))(v48, v49, v51);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C238, &qword_266190598);
  OUTLINED_FUNCTION_41_0(v55);
  sub_26618AF70();
  *(v1 + 424) = v37;
  sub_2660E9668(&qword_2814B3A88, type metadata accessor for LaunchAppFlowStrategy);

  sub_26618B2F0();
  if (qword_2814B3F10 != -1)
  {
    swift_once();
  }

  v56 = *(v1 + 496);
  v71 = *(v1 + 488);
  v73 = *(v1 + 512);
  v58 = *(v1 + 472);
  v57 = *(v1 + 480);
  v59 = *(v1 + 464);
  v60 = *(v1 + 440);
  v61 = sub_26618B2E0();
  (*(v58 + 8))(v57, v59);
  *(v1 + 432) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C240, qword_2661905A0);
  sub_2660E958C();
  sub_26618AF90();

  (*(v56 + 8))(v73, v71);
  sub_26618B350();

  v62 = *(v1 + 568);
  v63 = *(v1 + 560);
  v64 = *(v1 + 536);
  v66 = *(v1 + 504);
  v65 = *(v1 + 512);
  v67 = *(v1 + 480);

  OUTLINED_FUNCTION_5_3();

  return v68();
}

void sub_2660E6078()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v71 = v2;
  v73 = v3;
  v4 = sub_26618B790();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v72 = v11 - v10;
  v12 = sub_26618C6B0();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v21 = __swift_project_value_buffer(v12, qword_2814B4A98);
  (*(v15 + 16))(v20, v21, v12);
  v22 = sub_26618C690();
  v23 = sub_26618CAD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_6_2();
    *v24 = 0;
    _os_log_impl(&dword_2660B7000, v22, v23, "Target device resolution is required, pushing device resolution flow", v24, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v15 + 8))(v20, v12);
  *(v1 + 592) = 2;
  sub_2660C5864(v1 + 16, v81);
  sub_2660C5864(v1 + 216, v79);
  sub_2660C5864(v1 + 296, v78);
  __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  OUTLINED_FUNCTION_3_5();
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v30 = v29 - v28;
  (*(v31 + 16))(v29 - v28);
  __swift_mutable_project_boxed_opaque_existential_1(v78, v78[3]);
  OUTLINED_FUNCTION_3_5();
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  v36 = OUTLINED_FUNCTION_42_0(v35);
  v37(v36);
  v70[2] = sub_2660E8888(v81, v30, *v12);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v38 = v72;
  (*(v7 + 16))(v72, v71, v4);
  sub_2660C5864(v1 + 16, v81);
  sub_2660C5864(v1 + 96, v79);
  sub_2660C5864(v1 + 56, v78);
  sub_2660C5864(v1 + 176, v77);
  sub_2660C5864(v1 + 216, v76);
  sub_2660C5864(v1 + 296, v75);
  sub_2660C5864(v1 + 512, v74);
  __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  v71 = v70;
  OUTLINED_FUNCTION_3_5();
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_4();
  v44 = (v43 - v42);
  (*(v45 + 16))(v43 - v42);
  __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  v70[1] = v70;
  OUTLINED_FUNCTION_3_5();
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_4();
  v51 = v50 - v49;
  (*(v52 + 16))(v50 - v49);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v75[3]);
  OUTLINED_FUNCTION_3_5();
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_4();
  v57 = OUTLINED_FUNCTION_42_0(v56);
  v58(v57);
  __swift_mutable_project_boxed_opaque_existential_1(v74, v74[3]);
  OUTLINED_FUNCTION_3_5();
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_4();
  v63 = OUTLINED_FUNCTION_45_0(v62);
  v64(v63);
  v65 = *v44;
  v66 = *v12;

  v68 = sub_2660E8A7C(v67, v38, v81, v65, v78, v77, v51, v66, v70);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v81[0] = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_2660E955C;
  *(v69 + 24) = v1;
  type metadata accessor for ExecutionDeviceResolutionFlow();
  sub_2660E9668(&qword_28005C130, type metadata accessor for ExecutionDeviceResolutionFlow);

  sub_26618B320();

  OUTLINED_FUNCTION_7_1();
}