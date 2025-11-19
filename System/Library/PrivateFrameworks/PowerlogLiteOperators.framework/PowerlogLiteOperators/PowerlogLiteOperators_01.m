Swift::Void __swiftcall UrsaClient.stressTest()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_21A9ED39C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_21A50452C(0, 0, v4, &unk_21AA21450, v7);
}

uint64_t sub_21A4FD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for UrsaTelemetryRequest(0);
  v4[20] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for UrsaPeriodicRequest(0);
  v4[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = sub_21A9ED04C();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v12 = type metadata accessor for UrsaResult(0);
  v4[28] = v12;
  v13 = *(v12 - 8);
  v4[29] = v13;
  v14 = *(v13 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v15 = type metadata accessor for UrsaAdmissionRequest(0);
  v4[36] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v17 = type metadata accessor for UrsaMetadata(0);
  v4[38] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA48, &qword_21AA21658) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v20 = sub_21A9ED07C();
  v4[48] = v20;
  v21 = *(v20 - 8);
  v4[49] = v21;
  v22 = *(v21 + 64) + 15;
  v4[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A4FDC24, 0, 0);
}

uint64_t sub_21A4FDC24()
{
  v269 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[19];
  sub_21A9ED06C();
  v0[51] = sub_21A9ED05C();
  v0[52] = v5;
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = 0;
  while (1)
  {
    v0[53] = v6;
    v10 = &unk_282B5A290 + 16 * v6;
    v11 = *(v10 + 4);
    v0[54] = v11;
    v12 = *(v10 + 5);
    v0[55] = v12;
    v13 = qword_2811F2E20;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_21A9ED25C();
    v0[56] = __swift_project_value_buffer(v14, qword_2811F8528);

    v15 = sub_21A9ED23C();
    v16 = sub_21A9ED41C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v267 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21A50AF9C(v11, v12, &v267);
      _os_log_impl(&dword_21A4C6000, v15, v16, "stress test for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x21CEDE430](v18, -1, -1);
      MEMORY[0x21CEDE430](v17, -1, -1);
    }

    v19 = v0[19];
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[57] = Strong;
    if (Strong)
    {
      v120 = Strong;
      v121 = 0x61636F4C74736574;
      v122 = sub_21A50B6E4(MEMORY[0x277D84F90]);
      if (v11 != 0x61636F4C74736574 || v12 != 0xEE00726F7272456CLL)
      {
        v123 = v122;
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v186 = v0[51];
          v185 = v0[52];
          v187 = v0[41];
          v188 = v0[38];
          v260 = v0[37];
          v265 = v0[36];
          v189 = sub_21A509AA0(v123);
          v249 = v190;
          v253 = v189;

          v191 = swift_task_alloc();
          v191[2] = v120;
          v191[3] = v186;
          v191[4] = v185;
          v191[5] = v11;
          v191[6] = v12;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v192 = swift_task_alloc();
          v192[2] = v187;
          v192[3] = 0x6554737365727473;
          v192[4] = 0xEB00000000447473;
          v192[5] = v253;
          v192[6] = v249;
          sub_21A50D9F0(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);
          sub_21A9ED19C();

          v193 = *&v120[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v194 = swift_task_alloc();
          v0[58] = v194;
          *v194 = v0;
          v194[1] = sub_21A4FF41C;
          v195 = v0[47];
          v196 = v0[37];

          return sub_21A50E01C(v195, v196, v193);
        }

        v121 = v11;
      }

      v124 = v0[52];

      v267 = 0;
      v268 = 0xE000000000000000;
      sub_21A9ED46C();

      v267 = 0xD00000000000001CLL;
      v268 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v121, v12);

      v126 = v267;
      v125 = v268;
      sub_21A50B9E0();
      swift_allocError();
      *v127 = v126;
      *(v127 + 8) = v125;
      *(v127 + 16) = 0;
      swift_willThrow();

      goto LABEL_49;
    }

    v21 = *(v0[29] + 56);
    v21(v0[47], 1, 1, v0[28]);
    v0[60] = v21;
    v22 = v0[46];
    v23 = v0[28];
    v24 = v0[29];
    sub_21A4F1408(v0[47], v22, &qword_27CD2EA48, &qword_21AA21658);
    v25 = *(v24 + 48);
    v0[61] = v25;
    v0[62] = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v26 = v25(v22, 1, v23);
    v27 = v0[56];
    if (v26 == 1)
    {
      v28 = v0[55];
      sub_21A4FB590(v0[46], &qword_27CD2EA48, &qword_21AA21658);

      v29 = sub_21A9ED23C();
      v30 = sub_21A9ED42C();

      if (os_log_type_enabled(v29, v30))
      {
        v32 = v0[54];
        v31 = v0[55];
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v267 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_21A50AF9C(v32, v31, &v267);
        _os_log_impl(&dword_21A4C6000, v29, v30, "stress test for admission failed for %s empty result", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x21CEDE430](v34, -1, -1);
        MEMORY[0x21CEDE430](v33, -1, -1);
      }
    }

    else
    {
      v36 = v0[34];
      v35 = v0[35];
      sub_21A50DA38(v0[46], v35);
      sub_21A50DAFC(v35, v36, type metadata accessor for UrsaResult);
      v37 = sub_21A9ED23C();
      v38 = sub_21A9ED41C();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[34];
      v41 = v0[35];
      if (v39)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v267 = v43;
        *v42 = 136315138;
        v256 = v41;
        v44 = sub_21A50A2A0();
        v46 = v45;
        sub_21A50DA9C(v40, type metadata accessor for UrsaResult);
        v47 = sub_21A50AF9C(v44, v46, &v267);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_21A4C6000, v37, v38, "admission %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x21CEDE430](v43, -1, -1);
        MEMORY[0x21CEDE430](v42, -1, -1);

        v48 = v256;
      }

      else
      {

        sub_21A50DA9C(v40, type metadata accessor for UrsaResult);
        v48 = v41;
      }

      sub_21A50DA9C(v48, type metadata accessor for UrsaResult);
    }

    v49 = v0[19];
    v50 = swift_unknownObjectWeakLoadStrong();
    v0[63] = v50;
    if (v50)
    {
      break;
    }

    v51 = v0[45];
    v52 = v0[28];
    v53 = v0[29] + 56;
    sub_21A4FB590(v0[47], &qword_27CD2EA48, &qword_21AA21658);
    v21(v51, 1, 1, v52);
    v55 = v0[61];
    v54 = v0[62];
    v56 = v0[47];
    v57 = v0[44];
    v58 = v0[28];
    sub_21A50D92C(v0[45], v56);
    sub_21A4F1408(v56, v57, &qword_27CD2EA48, &qword_21AA21658);
    v59 = v55(v57, 1, v58);
    v60 = v0[56];
    if (v59 == 1)
    {
      v61 = v0[55];
      sub_21A4FB590(v0[44], &qword_27CD2EA48, &qword_21AA21658);

      v62 = sub_21A9ED23C();
      v63 = sub_21A9ED42C();

      if (os_log_type_enabled(v62, v63))
      {
        v65 = v0[54];
        v64 = v0[55];
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v267 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_21A50AF9C(v65, v64, &v267);
        _os_log_impl(&dword_21A4C6000, v62, v63, "stress test for periodic failed for %s empty result", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x21CEDE430](v67, -1, -1);
        MEMORY[0x21CEDE430](v66, -1, -1);
      }
    }

    else
    {
      v69 = v0[32];
      v68 = v0[33];
      sub_21A50DA38(v0[44], v68);
      sub_21A50DAFC(v68, v69, type metadata accessor for UrsaResult);
      v70 = sub_21A9ED23C();
      v71 = sub_21A9ED41C();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v0[32];
      v74 = v0[33];
      if (v72)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v267 = v76;
        *v75 = 136315138;
        v77 = sub_21A50A2A0();
        v79 = v78;
        sub_21A50DA9C(v73, type metadata accessor for UrsaResult);
        v80 = sub_21A50AF9C(v77, v79, &v267);

        *(v75 + 4) = v80;
        _os_log_impl(&dword_21A4C6000, v70, v71, "periodic %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x21CEDE430](v76, -1, -1);
        MEMORY[0x21CEDE430](v75, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v73, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v74, type metadata accessor for UrsaResult);
    }

    v81 = v0[19];
    v82 = swift_unknownObjectWeakLoadStrong();
    v0[67] = v82;
    if (v82)
    {
      v150 = v82;
      v151 = 0x61636F4C74736574;
      v153 = v0[54];
      v152 = v0[55];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21AA21390;
      *(inited + 32) = 1734437990;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v153;
      *(inited + 56) = v152;

      v155 = sub_21A50B6E4(inited);
      swift_setDeallocating();
      sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
      if (v153 != 0x61636F4C74736574 || v152 != 0xEE00726F7272456CLL)
      {
        v156 = v0[54];
        v157 = v0[55];
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v214 = v0[54];
          v213 = v0[55];
          v255 = *(v0 + 51);
          v215 = v0[38];
          v216 = v0[39];
          v217 = v0[20];
          v266 = v0[21];
          v262 = sub_21A509AA0(v155);
          v219 = v218;

          v220 = swift_task_alloc();
          *(v220 + 16) = v150;
          *(v220 + 24) = v255;
          *(v220 + 40) = v214;
          *(v220 + 48) = v213;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v221 = swift_task_alloc();
          v221[2] = v216;
          v221[3] = 0x6554737365727473;
          v221[4] = 0xEA00000000007473;
          v221[5] = v262;
          v221[6] = v219;
          sub_21A50D9F0(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);
          sub_21A9ED19C();

          v222 = *&v150[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v223 = swift_task_alloc();
          v0[68] = v223;
          *v223 = v0;
          v223[1] = sub_21A502A1C;
          v224 = v0[43];
          v225 = v0[21];

          return sub_21A50EC34(v224, v225, v222);
        }

        v151 = v0[54];
      }

      v158 = v0[55];
      v159 = v0[52];

      v267 = 0;
      v268 = 0xE000000000000000;
      sub_21A9ED46C();

      v267 = 0xD00000000000001CLL;
      v268 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v151, v158);

      v161 = v267;
      v160 = v268;
      sub_21A50B9E0();
      swift_allocError();
      *v162 = v161;
      *(v162 + 8) = v160;
      *(v162 + 16) = 0;
      swift_willThrow();

      v149 = v0[47];
      goto LABEL_48;
    }

    v83 = v0[60];
    v84 = v0[43];
    v85 = v0[28];
    v86 = v0[29] + 56;
    sub_21A4FB590(v0[47], &qword_27CD2EA48, &qword_21AA21658);
    v83(v84, 1, 1, v85);
    v88 = v0[61];
    v87 = v0[62];
    v89 = v0[47];
    v90 = v0[42];
    v91 = v0[28];
    sub_21A50D92C(v0[43], v89);
    sub_21A4F1408(v89, v90, &qword_27CD2EA48, &qword_21AA21658);
    v92 = v88(v90, 1, v91);
    v94 = v0[55];
    v93 = v0[56];
    v95 = v0[42];
    if (v92 == 1)
    {
      sub_21A4FB590(v0[42], &qword_27CD2EA48, &qword_21AA21658);

      v96 = sub_21A9ED23C();
      v97 = sub_21A9ED42C();

      v98 = os_log_type_enabled(v96, v97);
      v99 = v0[55];
      if (v98)
      {
        v100 = v0[54];
        v101 = v0[47];
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v267 = v103;
        *v102 = 136315138;
        v104 = sub_21A50AF9C(v100, v99, &v267);

        *(v102 + 4) = v104;
        _os_log_impl(&dword_21A4C6000, v96, v97, "stress test for telemetry failed for %s empty result", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x21CEDE430](v103, -1, -1);
        MEMORY[0x21CEDE430](v102, -1, -1);

        v9 = v101;
      }

      else
      {
        v7 = v0[47];
        v8 = v0[55];

        v9 = v7;
      }
    }

    else
    {
      v106 = v0[30];
      v105 = v0[31];
      v107 = v0[55];

      sub_21A50DA38(v95, v105);
      sub_21A50DAFC(v105, v106, type metadata accessor for UrsaResult);
      v108 = sub_21A9ED23C();
      v109 = sub_21A9ED41C();
      v110 = os_log_type_enabled(v108, v109);
      v111 = v0[47];
      v112 = v0[30];
      v113 = v0[31];
      if (v110)
      {
        v114 = swift_slowAlloc();
        v257 = v111;
        v115 = swift_slowAlloc();
        v267 = v115;
        *v114 = 136315138;
        v116 = sub_21A50A2A0();
        v118 = v117;
        sub_21A50DA9C(v112, type metadata accessor for UrsaResult);
        v119 = sub_21A50AF9C(v116, v118, &v267);

        *(v114 + 4) = v119;
        _os_log_impl(&dword_21A4C6000, v108, v109, "telemetry %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v115);
        MEMORY[0x21CEDE430](v115, -1, -1);
        MEMORY[0x21CEDE430](v114, -1, -1);

        sub_21A50DA9C(v113, type metadata accessor for UrsaResult);
        v9 = v257;
      }

      else
      {

        sub_21A50DA9C(v112, type metadata accessor for UrsaResult);
        sub_21A50DA9C(v113, type metadata accessor for UrsaResult);
        v9 = v111;
      }
    }

    sub_21A4FB590(v9, &qword_27CD2EA48, &qword_21AA21658);
    v6 = v0[53] + 1;
    if (v0[53] == 10)
    {
      v174 = v0[52];
      v175 = v0[50];
      v177 = v0[46];
      v176 = v0[47];
      v179 = v0[44];
      v178 = v0[45];
      v180 = v0[42];
      v181 = v0[43];
      v183 = v0[40];
      v182 = v0[41];
      v231 = v0[39];
      v233 = v0[37];
      v235 = v0[35];
      v237 = v0[34];
      v239 = v0[33];
      v241 = v0[32];
      v243 = v0[31];
      v245 = v0[30];
      v248 = v0[27];
      v252 = v0[24];
      v259 = v0[23];
      v264 = v0[21];

      swift_arrayDestroy();

      v173 = v0[1];
      goto LABEL_51;
    }
  }

  v263 = v50;
  v128 = 0x61636F4C74736574;
  v130 = v0[54];
  v129 = v0[55];
  v132 = v0[26];
  v131 = v0[27];
  v133 = v0[25];
  sub_21A9ED03C();
  sub_21A9ED02C();
  v135 = v134;
  (*(v132 + 8))(v131, v133);
  v136 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  v0[64] = v136;
  if (v130 == 0x61636F4C74736574 && v129 == 0xEE00726F7272456CLL)
  {
LABEL_42:
    v140 = v0[55];
    v267 = 0;
    v268 = 0xE000000000000000;
    sub_21A9ED46C();

    v267 = 0xD00000000000001CLL;
    v268 = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v128, v140);
    v142 = v267;
    v141 = v268;
    sub_21A50B9E0();
    swift_allocError();
    *v143 = v142;
    *(v143 + 8) = v141;
    *(v143 + 16) = 0;
    swift_willThrow();
    v145 = v0[63];
    v144 = v0[64];
    v146 = v0[55];
    v147 = v0[52];
    v148 = v0[47];

    v149 = v148;
LABEL_48:
    sub_21A4FB590(v149, &qword_27CD2EA48, &qword_21AA21658);
LABEL_49:
    v163 = v0[50];
    v164 = v0[46];
    v165 = v0[47];
    v167 = v0[44];
    v166 = v0[45];
    v169 = v0[42];
    v168 = v0[43];
    v171 = v0[40];
    v170 = v0[41];
    v172 = v0[39];
    v230 = v0[37];
    v232 = v0[35];
    v234 = v0[34];
    v236 = v0[33];
    v238 = v0[32];
    v240 = v0[31];
    v242 = v0[30];
    v244 = v0[27];
    v247 = v0[24];
    v251 = v0[23];
    v258 = v0[21];

    v173 = v0[1];
LABEL_51:

    return v173();
  }

  v137 = v136;
  v138 = v0[54];
  v139 = v0[55];
  if (sub_21A9ED4AC())
  {
    v128 = v0[54];
    goto LABEL_42;
  }

  v197 = v0[55];
  v261 = v0[56];
  v198 = v0[54];
  v246 = *(v0 + 51);
  v199 = v0[40];
  v200 = v0[38];
  v250 = v0[24];
  v254 = v0[23];
  v201 = v0[22];
  v202 = sub_21A509AA0(v137);
  v204 = v203;
  v205 = swift_task_alloc();
  *(v205 + 16) = v263;
  *(v205 + 24) = v246;
  *(v205 + 40) = v198;
  *(v205 + 48) = v197;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v206 = swift_task_alloc();
  v206[2] = v199;
  v206[3] = v135;
  v206[4] = v202;
  v206[5] = v204;
  sub_21A50D9F0(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);
  sub_21A9ED19C();

  sub_21A50DAFC(v250, v254, type metadata accessor for UrsaPeriodicRequest);
  v207 = sub_21A9ED23C();
  v208 = sub_21A9ED40C();
  v209 = os_log_type_enabled(v207, v208);
  v210 = v0[23];
  if (v209)
  {
    v211 = swift_slowAlloc();
    *v211 = 134218240;
    *(v211 + 4) = v135;
    *(v211 + 12) = 2048;
    v212 = sub_21A4F1684();
    sub_21A50DA9C(v210, type metadata accessor for UrsaPeriodicRequest);
    *(v211 + 14) = v212;
    _os_log_impl(&dword_21A4C6000, v207, v208, "periodic since %f req %f", v211, 0x16u);
    MEMORY[0x21CEDE430](v211, -1, -1);
  }

  else
  {

    sub_21A50DA9C(v210, type metadata accessor for UrsaPeriodicRequest);
  }

  v226 = *(v263 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client);
  v227 = swift_task_alloc();
  v0[65] = v227;
  *v227 = v0;
  v227[1] = sub_21A500F00;
  v228 = v0[45];
  v229 = v0[24];

  return sub_21A50E6A0(v228, v229, v226);
}

uint64_t sub_21A4FF41C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v8 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 440);
    v5 = *(v2 + 416);

    v6 = sub_21A500D44;
  }

  else
  {
    v6 = sub_21A4FF544;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21A4FF544()
{
  v267 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);

  sub_21A50DA9C(v3, type metadata accessor for UrsaAdmissionRequest);
  v6 = *(v5 + 56);
  v6(v1, 0, 1, v4);
  sub_21A50DA9C(v2, type metadata accessor for UrsaMetadata);
  v252 = *(v0 + 472);
  while (1)
  {
    *(v0 + 480) = v6;
    v7 = *(v0 + 368);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    sub_21A4F1408(*(v0 + 376), v7, &qword_27CD2EA48, &qword_21AA21658);
    v10 = *(v8 + 48);
    *(v0 + 488) = v10;
    *(v0 + 496) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v11 = v10(v7, 1, v9);
    v12 = *(v0 + 448);
    if (v11 == 1)
    {
      v13 = *(v0 + 440);
      sub_21A4FB590(*(v0 + 368), &qword_27CD2EA48, &qword_21AA21658);

      v14 = sub_21A9ED23C();
      v15 = sub_21A9ED42C();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = *(v0 + 432);
        v16 = *(v0 + 440);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v265 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_21A50AF9C(v17, v16, &v265);
        _os_log_impl(&dword_21A4C6000, v14, v15, "stress test for admission failed for %s empty result", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x21CEDE430](v19, -1, -1);
        MEMORY[0x21CEDE430](v18, -1, -1);
      }
    }

    else
    {
      v255 = v6;
      v21 = *(v0 + 272);
      v20 = *(v0 + 280);
      sub_21A50DA38(*(v0 + 368), v20);
      sub_21A50DAFC(v20, v21, type metadata accessor for UrsaResult);
      v22 = sub_21A9ED23C();
      v23 = sub_21A9ED41C();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 272);
      v26 = *(v0 + 280);
      if (v24)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v265 = v28;
        *v27 = 136315138;
        v29 = sub_21A50A2A0();
        v31 = v30;
        sub_21A50DA9C(v25, type metadata accessor for UrsaResult);
        v32 = sub_21A50AF9C(v29, v31, &v265);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_21A4C6000, v22, v23, "admission %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x21CEDE430](v28, -1, -1);
        MEMORY[0x21CEDE430](v27, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v25, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v26, type metadata accessor for UrsaResult);
      v6 = v255;
    }

    v33 = *(v0 + 152);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 504) = Strong;
    if (Strong)
    {
      v261 = Strong;
      v119 = 0x61636F4C74736574;
      v121 = *(v0 + 432);
      v120 = *(v0 + 440);
      v123 = *(v0 + 208);
      v122 = *(v0 + 216);
      v124 = *(v0 + 200);
      sub_21A9ED03C();
      sub_21A9ED02C();
      v126 = v125;
      (*(v123 + 8))(v122, v124);
      v127 = sub_21A50B6E4(MEMORY[0x277D84F90]);
      *(v0 + 512) = v127;
      if (v121 != 0x61636F4C74736574 || v120 != 0xEE00726F7272456CLL)
      {
        v128 = v127;
        v129 = *(v0 + 432);
        v130 = *(v0 + 440);
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v184 = *(v0 + 440);
          v258 = *(v0 + 448);
          v185 = *(v0 + 432);
          v243 = *(v0 + 408);
          v186 = *(v0 + 320);
          v187 = *(v0 + 304);
          v246 = *(v0 + 192);
          v249 = *(v0 + 184);
          v188 = *(v0 + 176);
          v189 = sub_21A509AA0(v128);
          v191 = v190;
          v192 = swift_task_alloc();
          *(v192 + 16) = v261;
          *(v192 + 24) = v243;
          *(v192 + 40) = v185;
          *(v192 + 48) = v184;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v193 = swift_task_alloc();
          v193[2] = v186;
          v193[3] = v126;
          v193[4] = v189;
          v193[5] = v191;
          sub_21A50D9F0(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);
          sub_21A9ED19C();

          sub_21A50DAFC(v246, v249, type metadata accessor for UrsaPeriodicRequest);
          v194 = sub_21A9ED23C();
          v195 = sub_21A9ED40C();
          v196 = os_log_type_enabled(v194, v195);
          v197 = *(v0 + 184);
          if (v196)
          {
            v198 = swift_slowAlloc();
            *v198 = 134218240;
            *(v198 + 4) = v126;
            *(v198 + 12) = 2048;
            v199 = sub_21A4F1684();
            sub_21A50DA9C(v197, type metadata accessor for UrsaPeriodicRequest);
            *(v198 + 14) = v199;
            _os_log_impl(&dword_21A4C6000, v194, v195, "periodic since %f req %f", v198, 0x16u);
            MEMORY[0x21CEDE430](v198, -1, -1);
          }

          else
          {

            sub_21A50DA9C(v197, type metadata accessor for UrsaPeriodicRequest);
          }

          v225 = *(v261 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client);
          v226 = swift_task_alloc();
          *(v0 + 520) = v226;
          *v226 = v0;
          v226[1] = sub_21A500F00;
          v227 = *(v0 + 360);
          v228 = *(v0 + 192);

          return sub_21A50E6A0(v227, v228, v225);
        }

        v119 = *(v0 + 432);
      }

      v131 = *(v0 + 440);
      v265 = 0;
      v266 = 0xE000000000000000;
      sub_21A9ED46C();

      v265 = 0xD00000000000001CLL;
      v266 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v119, v131);
      v133 = v265;
      v132 = v266;
      sub_21A50B9E0();
      swift_allocError();
      *v134 = v133;
      *(v134 + 8) = v132;
      *(v134 + 16) = 0;
      swift_willThrow();
      v136 = *(v0 + 504);
      v135 = *(v0 + 512);
      v137 = *(v0 + 440);
      v138 = *(v0 + 416);
      v139 = *(v0 + 376);

      v140 = v139;
      goto LABEL_45;
    }

    v35 = *(v0 + 360);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232) + 56;
    sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
    v6(v35, 1, 1, v36);
    v39 = *(v0 + 488);
    v38 = *(v0 + 496);
    v40 = *(v0 + 376);
    v41 = *(v0 + 352);
    v42 = *(v0 + 224);
    sub_21A50D92C(*(v0 + 360), v40);
    sub_21A4F1408(v40, v41, &qword_27CD2EA48, &qword_21AA21658);
    v43 = v39(v41, 1, v42);
    v44 = *(v0 + 448);
    if (v43 == 1)
    {
      v45 = *(v0 + 440);
      sub_21A4FB590(*(v0 + 352), &qword_27CD2EA48, &qword_21AA21658);

      v46 = sub_21A9ED23C();
      v47 = sub_21A9ED42C();

      if (os_log_type_enabled(v46, v47))
      {
        v49 = *(v0 + 432);
        v48 = *(v0 + 440);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v265 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_21A50AF9C(v49, v48, &v265);
        _os_log_impl(&dword_21A4C6000, v46, v47, "stress test for periodic failed for %s empty result", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x21CEDE430](v51, -1, -1);
        MEMORY[0x21CEDE430](v50, -1, -1);
      }
    }

    else
    {
      v53 = *(v0 + 256);
      v52 = *(v0 + 264);
      sub_21A50DA38(*(v0 + 352), v52);
      sub_21A50DAFC(v52, v53, type metadata accessor for UrsaResult);
      v54 = sub_21A9ED23C();
      v55 = sub_21A9ED41C();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 256);
      v58 = *(v0 + 264);
      if (v56)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v265 = v60;
        *v59 = 136315138;
        v61 = sub_21A50A2A0();
        v63 = v62;
        sub_21A50DA9C(v57, type metadata accessor for UrsaResult);
        v64 = sub_21A50AF9C(v61, v63, &v265);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_21A4C6000, v54, v55, "periodic %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x21CEDE430](v60, -1, -1);
        MEMORY[0x21CEDE430](v59, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v57, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v58, type metadata accessor for UrsaResult);
    }

    v65 = *(v0 + 152);
    v66 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 536) = v66;
    if (v66)
    {
      break;
    }

    v67 = *(v0 + 480);
    v68 = *(v0 + 344);
    v69 = *(v0 + 224);
    v70 = *(v0 + 232) + 56;
    sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
    v67(v68, 1, 1, v69);
    v72 = *(v0 + 488);
    v71 = *(v0 + 496);
    v73 = *(v0 + 376);
    v74 = *(v0 + 336);
    v75 = *(v0 + 224);
    sub_21A50D92C(*(v0 + 344), v73);
    sub_21A4F1408(v73, v74, &qword_27CD2EA48, &qword_21AA21658);
    v76 = v72(v74, 1, v75);
    v78 = *(v0 + 440);
    v77 = *(v0 + 448);
    v79 = *(v0 + 336);
    if (v76 == 1)
    {
      sub_21A4FB590(*(v0 + 336), &qword_27CD2EA48, &qword_21AA21658);

      v80 = sub_21A9ED23C();
      v81 = sub_21A9ED42C();

      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 440);
      if (v82)
      {
        v84 = *(v0 + 432);
        v85 = *(v0 + 376);
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v265 = v87;
        *v86 = 136315138;
        v88 = sub_21A50AF9C(v84, v83, &v265);

        *(v86 + 4) = v88;
        _os_log_impl(&dword_21A4C6000, v80, v81, "stress test for telemetry failed for %s empty result", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x21CEDE430](v87, -1, -1);
        MEMORY[0x21CEDE430](v86, -1, -1);

        v89 = v85;
      }

      else
      {
        v105 = *(v0 + 376);
        v106 = *(v0 + 440);

        v89 = v105;
      }
    }

    else
    {
      v91 = *(v0 + 240);
      v90 = *(v0 + 248);
      v92 = *(v0 + 440);

      sub_21A50DA38(v79, v90);
      sub_21A50DAFC(v90, v91, type metadata accessor for UrsaResult);
      v93 = sub_21A9ED23C();
      v94 = sub_21A9ED41C();
      v95 = os_log_type_enabled(v93, v94);
      v96 = *(v0 + 376);
      v97 = *(v0 + 240);
      v98 = *(v0 + 248);
      if (v95)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v265 = v100;
        *v99 = 136315138;
        v101 = sub_21A50A2A0();
        v103 = v102;
        sub_21A50DA9C(v97, type metadata accessor for UrsaResult);
        v104 = sub_21A50AF9C(v101, v103, &v265);

        *(v99 + 4) = v104;
        _os_log_impl(&dword_21A4C6000, v93, v94, "telemetry %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x21CEDE430](v100, -1, -1);
        MEMORY[0x21CEDE430](v99, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v97, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v98, type metadata accessor for UrsaResult);
      v89 = v96;
    }

    sub_21A4FB590(v89, &qword_27CD2EA48, &qword_21AA21658);
    v107 = *(v0 + 424) + 1;
    if (*(v0 + 424) == 10)
    {
      v154 = *(v0 + 416);
      v155 = *(v0 + 400);
      v157 = *(v0 + 368);
      v156 = *(v0 + 376);
      v159 = *(v0 + 352);
      v158 = *(v0 + 360);
      v160 = *(v0 + 336);
      v161 = *(v0 + 344);
      v163 = *(v0 + 320);
      v162 = *(v0 + 328);
      v229 = *(v0 + 312);
      v231 = *(v0 + 296);
      v233 = *(v0 + 280);
      v235 = *(v0 + 272);
      v237 = *(v0 + 264);
      v239 = *(v0 + 256);
      v241 = *(v0 + 248);
      v244 = *(v0 + 240);
      v247 = *(v0 + 216);
      v253 = *(v0 + 192);
      v256 = *(v0 + 184);
      v262 = *(v0 + 168);

      swift_arrayDestroy();

      v164 = *(v0 + 8);
LABEL_53:

      return v164();
    }

    *(v0 + 424) = v107;
    v108 = &unk_282B5A290 + 16 * v107;
    v109 = *(v108 + 4);
    *(v0 + 432) = v109;
    v110 = *(v108 + 5);
    *(v0 + 440) = v110;
    v111 = qword_2811F2E20;

    if (v111 != -1)
    {
      swift_once();
    }

    v112 = sub_21A9ED25C();
    *(v0 + 448) = __swift_project_value_buffer(v112, qword_2811F8528);

    v113 = sub_21A9ED23C();
    v114 = sub_21A9ED41C();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v265 = v116;
      *v115 = 136315138;
      *(v115 + 4) = sub_21A50AF9C(v109, v110, &v265);
      _os_log_impl(&dword_21A4C6000, v113, v114, "stress test for %s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x21CEDE430](v116, -1, -1);
      MEMORY[0x21CEDE430](v115, -1, -1);
    }

    v117 = *(v0 + 152);
    v118 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 456) = v118;
    if (v118)
    {
      v165 = v118;
      v166 = 0x61636F4C74736574;
      v167 = sub_21A50B6E4(MEMORY[0x277D84F90]);
      if (v109 != 0x61636F4C74736574 || v110 != 0xEE00726F7272456CLL)
      {
        v168 = v167;
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v213 = *(v0 + 408);
          v214 = *(v0 + 416);
          v215 = *(v0 + 328);
          v216 = *(v0 + 304);
          v260 = *(v0 + 296);
          v264 = *(v0 + 288);
          v251 = sub_21A509AA0(v168);
          v218 = v217;

          v219 = swift_task_alloc();
          v219[2] = v165;
          v219[3] = v213;
          v219[4] = v214;
          v219[5] = v109;
          v219[6] = v110;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v220 = swift_task_alloc();
          v220[2] = v215;
          v220[3] = 0x6554737365727473;
          v220[4] = 0xEB00000000447473;
          v220[5] = v251;
          v220[6] = v218;
          sub_21A50D9F0(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);
          sub_21A9ED19C();

          v221 = *&v165[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v222 = swift_task_alloc();
          *(v0 + 464) = v222;
          *v222 = v0;
          v222[1] = sub_21A4FF41C;
          v223 = *(v0 + 376);
          v224 = *(v0 + 296);

          return sub_21A50E01C(v223, v224, v221);
        }

        v166 = v109;
      }

      v169 = *(v0 + 416);

      v265 = 0;
      v266 = 0xE000000000000000;
      sub_21A9ED46C();

      v265 = 0xD00000000000001CLL;
      v266 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v166, v110);

      v171 = v265;
      v170 = v266;
      sub_21A50B9E0();
      swift_allocError();
      *v172 = v171;
      *(v172 + 8) = v170;
      *(v172 + 16) = 0;
      swift_willThrow();

      goto LABEL_52;
    }

    v6 = *(*(v0 + 232) + 56);
    v6(*(v0 + 376), 1, 1, *(v0 + 224));
  }

  v141 = v66;
  v142 = 0x61636F4C74736574;
  v144 = *(v0 + 432);
  v143 = *(v0 + 440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA21390;
  *(inited + 32) = 1734437990;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v144;
  *(inited + 56) = v143;

  v146 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
  if (v144 == 0x61636F4C74736574 && v143 == 0xEE00726F7272456CLL)
  {
LABEL_44:
    v149 = *(v0 + 440);
    v150 = *(v0 + 416);

    v265 = 0;
    v266 = 0xE000000000000000;
    sub_21A9ED46C();

    v265 = 0xD00000000000001CLL;
    v266 = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v142, v149);

    v152 = v265;
    v151 = v266;
    sub_21A50B9E0();
    swift_allocError();
    *v153 = v152;
    *(v153 + 8) = v151;
    *(v153 + 16) = 0;
    swift_willThrow();

    v140 = *(v0 + 376);
LABEL_45:
    sub_21A4FB590(v140, &qword_27CD2EA48, &qword_21AA21658);
LABEL_52:
    v173 = *(v0 + 400);
    v174 = *(v0 + 368);
    v175 = *(v0 + 376);
    v177 = *(v0 + 352);
    v176 = *(v0 + 360);
    v179 = *(v0 + 336);
    v178 = *(v0 + 344);
    v181 = *(v0 + 320);
    v180 = *(v0 + 328);
    v182 = *(v0 + 312);
    v230 = *(v0 + 296);
    v232 = *(v0 + 280);
    v234 = *(v0 + 272);
    v236 = *(v0 + 264);
    v238 = *(v0 + 256);
    v240 = *(v0 + 248);
    v242 = *(v0 + 240);
    v245 = *(v0 + 216);
    v248 = *(v0 + 192);
    v254 = *(v0 + 184);
    v257 = *(v0 + 168);

    v164 = *(v0 + 8);
    goto LABEL_53;
  }

  v147 = *(v0 + 432);
  v148 = *(v0 + 440);
  if (sub_21A9ED4AC())
  {
    v142 = *(v0 + 432);
    goto LABEL_44;
  }

  v201 = *(v0 + 432);
  v200 = *(v0 + 440);
  v250 = *(v0 + 408);
  v202 = *(v0 + 304);
  v203 = *(v0 + 312);
  v204 = *(v0 + 160);
  v263 = *(v0 + 168);
  v259 = sub_21A509AA0(v146);
  v206 = v205;

  v207 = swift_task_alloc();
  *(v207 + 16) = v141;
  *(v207 + 24) = v250;
  *(v207 + 40) = v201;
  *(v207 + 48) = v200;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v208 = swift_task_alloc();
  v208[2] = v203;
  v208[3] = 0x6554737365727473;
  v208[4] = 0xEA00000000007473;
  v208[5] = v259;
  v208[6] = v206;
  sub_21A50D9F0(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);
  sub_21A9ED19C();

  v209 = *&v141[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
  v210 = swift_task_alloc();
  *(v0 + 544) = v210;
  *v210 = v0;
  v210[1] = sub_21A502A1C;
  v211 = *(v0 + 344);
  v212 = *(v0 + 168);

  return sub_21A50EC34(v211, v212, v209);
}

uint64_t sub_21A500D44()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);

  sub_21A50DA9C(v2, type metadata accessor for UrsaAdmissionRequest);
  sub_21A50DA9C(v1, type metadata accessor for UrsaMetadata);
  v26 = *(v0 + 472);
  v3 = *(v0 + 400);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = *(v0 + 272);
  v18 = *(v0 + 264);
  v19 = *(v0 + 256);
  v20 = *(v0 + 248);
  v21 = *(v0 + 240);
  v22 = *(v0 + 216);
  v23 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = *(v0 + 168);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A500F00()
{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_21A50282C;
  }

  else
  {
    v3 = sub_21A501014;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A501014()
{
  v269 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 480);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = *(v0 + 320);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232) + 56;
  sub_21A50DA9C(*(v0 + 192), type metadata accessor for UrsaPeriodicRequest);
  v3(v5, 0, 1, v7);
  sub_21A50DA9C(v6, type metadata accessor for UrsaMetadata);

  sub_21A4FB590(v4, &qword_27CD2EA48, &qword_21AA21658);
  v255 = *(v0 + 528);
  while (1)
  {
    v10 = *(v0 + 488);
    v9 = *(v0 + 496);
    v11 = *(v0 + 376);
    v12 = *(v0 + 352);
    v13 = *(v0 + 224);
    sub_21A50D92C(*(v0 + 360), v11);
    sub_21A4F1408(v11, v12, &qword_27CD2EA48, &qword_21AA21658);
    v14 = v10(v12, 1, v13);
    v15 = *(v0 + 448);
    if (v14 == 1)
    {
      v16 = *(v0 + 440);
      sub_21A4FB590(*(v0 + 352), &qword_27CD2EA48, &qword_21AA21658);

      v17 = sub_21A9ED23C();
      v18 = sub_21A9ED42C();

      if (os_log_type_enabled(v17, v18))
      {
        v20 = *(v0 + 432);
        v19 = *(v0 + 440);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v267 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_21A50AF9C(v20, v19, &v267);
        _os_log_impl(&dword_21A4C6000, v17, v18, "stress test for periodic failed for %s empty result", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x21CEDE430](v22, -1, -1);
        MEMORY[0x21CEDE430](v21, -1, -1);
      }
    }

    else
    {
      v24 = *(v0 + 256);
      v23 = *(v0 + 264);
      sub_21A50DA38(*(v0 + 352), v23);
      sub_21A50DAFC(v23, v24, type metadata accessor for UrsaResult);
      v25 = sub_21A9ED23C();
      v26 = sub_21A9ED41C();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 256);
      v29 = *(v0 + 264);
      if (v27)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v267 = v31;
        *v30 = 136315138;
        v32 = sub_21A50A2A0();
        v34 = v33;
        sub_21A50DA9C(v28, type metadata accessor for UrsaResult);
        v35 = sub_21A50AF9C(v32, v34, &v267);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_21A4C6000, v25, v26, "periodic %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x21CEDE430](v31, -1, -1);
        MEMORY[0x21CEDE430](v30, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v28, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v29, type metadata accessor for UrsaResult);
    }

    v36 = *(v0 + 152);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 536) = Strong;
    if (Strong)
    {
      v122 = Strong;
      v123 = 0x61636F4C74736574;
      v125 = *(v0 + 432);
      v124 = *(v0 + 440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21AA21390;
      *(inited + 32) = 1734437990;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v125;
      *(inited + 56) = v124;

      v127 = sub_21A50B6E4(inited);
      swift_setDeallocating();
      sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
      if (v125 != 0x61636F4C74736574 || v124 != 0xEE00726F7272456CLL)
      {
        v128 = *(v0 + 432);
        v129 = *(v0 + 440);
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v188 = *(v0 + 432);
          v187 = *(v0 + 440);
          v252 = *(v0 + 408);
          v189 = *(v0 + 304);
          v190 = *(v0 + 312);
          v191 = *(v0 + 160);
          v265 = *(v0 + 168);
          v260 = sub_21A509AA0(v127);
          v193 = v192;

          v194 = swift_task_alloc();
          *(v194 + 16) = v122;
          *(v194 + 24) = v252;
          *(v194 + 40) = v188;
          *(v194 + 48) = v187;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v195 = swift_task_alloc();
          v195[2] = v190;
          v195[3] = 0x6554737365727473;
          v195[4] = 0xEA00000000007473;
          v195[5] = v260;
          v195[6] = v193;
          sub_21A50D9F0(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);
          sub_21A9ED19C();

          v196 = *&v122[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v197 = swift_task_alloc();
          *(v0 + 544) = v197;
          *v197 = v0;
          v197[1] = sub_21A502A1C;
          v198 = *(v0 + 344);
          v199 = *(v0 + 168);

          return sub_21A50EC34(v198, v199, v196);
        }

        v123 = *(v0 + 432);
      }

      v130 = *(v0 + 440);
      v131 = *(v0 + 416);

      v267 = 0;
      v268 = 0xE000000000000000;
      sub_21A9ED46C();

      v267 = 0xD00000000000001CLL;
      v268 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v123, v130);

      v133 = v267;
      v132 = v268;
      sub_21A50B9E0();
      swift_allocError();
      *v134 = v133;
      *(v134 + 8) = v132;
      *(v134 + 16) = 0;
      swift_willThrow();

      v135 = *(v0 + 376);
      goto LABEL_51;
    }

    v38 = *(v0 + 480);
    v39 = *(v0 + 344);
    v40 = *(v0 + 224);
    v41 = *(v0 + 232) + 56;
    sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
    v38(v39, 1, 1, v40);
    v43 = *(v0 + 488);
    v42 = *(v0 + 496);
    v44 = *(v0 + 376);
    v45 = *(v0 + 336);
    v46 = *(v0 + 224);
    sub_21A50D92C(*(v0 + 344), v44);
    sub_21A4F1408(v44, v45, &qword_27CD2EA48, &qword_21AA21658);
    v47 = v43(v45, 1, v46);
    v49 = *(v0 + 440);
    v48 = *(v0 + 448);
    v50 = *(v0 + 336);
    if (v47 == 1)
    {
      sub_21A4FB590(*(v0 + 336), &qword_27CD2EA48, &qword_21AA21658);

      v51 = sub_21A9ED23C();
      v52 = sub_21A9ED42C();

      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 440);
      if (v53)
      {
        v55 = *(v0 + 432);
        v56 = *(v0 + 376);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v267 = v58;
        *v57 = 136315138;
        v59 = sub_21A50AF9C(v55, v54, &v267);

        *(v57 + 4) = v59;
        _os_log_impl(&dword_21A4C6000, v51, v52, "stress test for telemetry failed for %s empty result", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x21CEDE430](v58, -1, -1);
        MEMORY[0x21CEDE430](v57, -1, -1);

        v60 = v56;
      }

      else
      {
        v76 = *(v0 + 376);
        v77 = *(v0 + 440);

        v60 = v76;
      }
    }

    else
    {
      v62 = *(v0 + 240);
      v61 = *(v0 + 248);
      v63 = *(v0 + 440);

      sub_21A50DA38(v50, v61);
      sub_21A50DAFC(v61, v62, type metadata accessor for UrsaResult);
      v64 = sub_21A9ED23C();
      v65 = sub_21A9ED41C();
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 376);
      v68 = *(v0 + 240);
      v69 = *(v0 + 248);
      if (v66)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v267 = v71;
        *v70 = 136315138;
        v72 = sub_21A50A2A0();
        v74 = v73;
        sub_21A50DA9C(v68, type metadata accessor for UrsaResult);
        v75 = sub_21A50AF9C(v72, v74, &v267);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_21A4C6000, v64, v65, "telemetry %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x21CEDE430](v71, -1, -1);
        MEMORY[0x21CEDE430](v70, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v68, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v69, type metadata accessor for UrsaResult);
      v60 = v67;
    }

    sub_21A4FB590(v60, &qword_27CD2EA48, &qword_21AA21658);
    v78 = *(v0 + 424) + 1;
    if (*(v0 + 424) == 10)
    {
      v136 = *(v0 + 416);
      v137 = *(v0 + 400);
      v139 = *(v0 + 368);
      v138 = *(v0 + 376);
      v141 = *(v0 + 352);
      v140 = *(v0 + 360);
      v142 = *(v0 + 336);
      v143 = *(v0 + 344);
      v145 = *(v0 + 320);
      v144 = *(v0 + 328);
      v232 = *(v0 + 312);
      v234 = *(v0 + 296);
      v236 = *(v0 + 280);
      v238 = *(v0 + 272);
      v240 = *(v0 + 264);
      v242 = *(v0 + 256);
      v244 = *(v0 + 248);
      v247 = *(v0 + 240);
      v250 = *(v0 + 216);
      v256 = *(v0 + 192);
      v258 = *(v0 + 184);
      v263 = *(v0 + 168);

      swift_arrayDestroy();

      v146 = *(v0 + 8);
LABEL_53:

      return v146();
    }

    *(v0 + 424) = v78;
    v79 = &unk_282B5A290 + 16 * v78;
    v80 = *(v79 + 4);
    *(v0 + 432) = v80;
    v81 = *(v79 + 5);
    *(v0 + 440) = v81;
    v82 = qword_2811F2E20;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = sub_21A9ED25C();
    *(v0 + 448) = __swift_project_value_buffer(v83, qword_2811F8528);

    v84 = sub_21A9ED23C();
    v85 = sub_21A9ED41C();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v267 = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_21A50AF9C(v80, v81, &v267);
      _os_log_impl(&dword_21A4C6000, v84, v85, "stress test for %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x21CEDE430](v87, -1, -1);
      MEMORY[0x21CEDE430](v86, -1, -1);
    }

    v88 = *(v0 + 152);
    v89 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 456) = v89;
    if (v89)
    {
      break;
    }

    v90 = *(*(v0 + 232) + 56);
    v90(*(v0 + 376), 1, 1, *(v0 + 224));
    *(v0 + 480) = v90;
    v91 = *(v0 + 368);
    v93 = *(v0 + 224);
    v92 = *(v0 + 232);
    sub_21A4F1408(*(v0 + 376), v91, &qword_27CD2EA48, &qword_21AA21658);
    v94 = *(v92 + 48);
    *(v0 + 488) = v94;
    *(v0 + 496) = (v92 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v95 = v94(v91, 1, v93);
    v96 = *(v0 + 448);
    if (v95 == 1)
    {
      v97 = *(v0 + 440);
      sub_21A4FB590(*(v0 + 368), &qword_27CD2EA48, &qword_21AA21658);

      v98 = sub_21A9ED23C();
      v99 = sub_21A9ED42C();

      if (os_log_type_enabled(v98, v99))
      {
        v101 = *(v0 + 432);
        v100 = *(v0 + 440);
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v267 = v103;
        *v102 = 136315138;
        *(v102 + 4) = sub_21A50AF9C(v101, v100, &v267);
        _os_log_impl(&dword_21A4C6000, v98, v99, "stress test for admission failed for %s empty result", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x21CEDE430](v103, -1, -1);
        MEMORY[0x21CEDE430](v102, -1, -1);
      }
    }

    else
    {
      v105 = *(v0 + 272);
      v104 = *(v0 + 280);
      sub_21A50DA38(*(v0 + 368), v104);
      sub_21A50DAFC(v104, v105, type metadata accessor for UrsaResult);
      v106 = sub_21A9ED23C();
      v107 = sub_21A9ED41C();
      v108 = os_log_type_enabled(v106, v107);
      v109 = *(v0 + 272);
      v110 = *(v0 + 280);
      if (v108)
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v267 = v112;
        *v111 = 136315138;
        v113 = sub_21A50A2A0();
        v115 = v114;
        sub_21A50DA9C(v109, type metadata accessor for UrsaResult);
        v116 = sub_21A50AF9C(v113, v115, &v267);

        *(v111 + 4) = v116;
        _os_log_impl(&dword_21A4C6000, v106, v107, "admission %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v112);
        MEMORY[0x21CEDE430](v112, -1, -1);
        MEMORY[0x21CEDE430](v111, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v109, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v110, type metadata accessor for UrsaResult);
    }

    v117 = *(v0 + 152);
    v118 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 504) = v118;
    if (v118)
    {
      v264 = v118;
      v155 = 0x61636F4C74736574;
      v157 = *(v0 + 432);
      v156 = *(v0 + 440);
      v159 = *(v0 + 208);
      v158 = *(v0 + 216);
      v160 = *(v0 + 200);
      sub_21A9ED03C();
      sub_21A9ED02C();
      v162 = v161;
      (*(v159 + 8))(v158, v160);
      v163 = sub_21A50B6E4(MEMORY[0x277D84F90]);
      *(v0 + 512) = v163;
      if (v157 != 0x61636F4C74736574 || v156 != 0xEE00726F7272456CLL)
      {
        v164 = v163;
        v165 = *(v0 + 432);
        v166 = *(v0 + 440);
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v212 = *(v0 + 440);
          v262 = *(v0 + 448);
          v213 = *(v0 + 432);
          v246 = *(v0 + 408);
          v214 = *(v0 + 320);
          v215 = *(v0 + 304);
          v249 = *(v0 + 192);
          v254 = *(v0 + 184);
          v216 = *(v0 + 176);
          v217 = sub_21A509AA0(v164);
          v219 = v218;
          v220 = swift_task_alloc();
          *(v220 + 16) = v264;
          *(v220 + 24) = v246;
          *(v220 + 40) = v213;
          *(v220 + 48) = v212;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v221 = swift_task_alloc();
          v221[2] = v214;
          v221[3] = v162;
          v221[4] = v217;
          v221[5] = v219;
          sub_21A50D9F0(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);
          sub_21A9ED19C();

          sub_21A50DAFC(v249, v254, type metadata accessor for UrsaPeriodicRequest);
          v222 = sub_21A9ED23C();
          v223 = sub_21A9ED40C();
          v224 = os_log_type_enabled(v222, v223);
          v225 = *(v0 + 184);
          if (v224)
          {
            v226 = swift_slowAlloc();
            *v226 = 134218240;
            *(v226 + 4) = v162;
            *(v226 + 12) = 2048;
            v227 = sub_21A4F1684();
            sub_21A50DA9C(v225, type metadata accessor for UrsaPeriodicRequest);
            *(v226 + 14) = v227;
            _os_log_impl(&dword_21A4C6000, v222, v223, "periodic since %f req %f", v226, 0x16u);
            MEMORY[0x21CEDE430](v226, -1, -1);
          }

          else
          {

            sub_21A50DA9C(v225, type metadata accessor for UrsaPeriodicRequest);
          }

          v228 = *(v264 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client);
          v229 = swift_task_alloc();
          *(v0 + 520) = v229;
          *v229 = v0;
          v229[1] = sub_21A500F00;
          v230 = *(v0 + 360);
          v231 = *(v0 + 192);

          return sub_21A50E6A0(v230, v231, v228);
        }

        v155 = *(v0 + 432);
      }

      v167 = *(v0 + 440);
      v267 = 0;
      v268 = 0xE000000000000000;
      sub_21A9ED46C();

      v267 = 0xD00000000000001CLL;
      v268 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v155, v167);
      v169 = v267;
      v168 = v268;
      sub_21A50B9E0();
      swift_allocError();
      *v170 = v169;
      *(v170 + 8) = v168;
      *(v170 + 16) = 0;
      swift_willThrow();
      v172 = *(v0 + 504);
      v171 = *(v0 + 512);
      v173 = *(v0 + 440);
      v174 = *(v0 + 416);
      v175 = *(v0 + 376);

      v135 = v175;
LABEL_51:
      sub_21A4FB590(v135, &qword_27CD2EA48, &qword_21AA21658);
      goto LABEL_52;
    }

    v119 = *(v0 + 360);
    v120 = *(v0 + 224);
    v121 = *(v0 + 232) + 56;
    sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
    v90(v119, 1, 1, v120);
  }

  v147 = v89;
  v148 = 0x61636F4C74736574;
  v149 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (v80 == 0x61636F4C74736574 && v81 == 0xEE00726F7272456CLL)
  {
LABEL_45:
    v151 = *(v0 + 416);

    v267 = 0;
    v268 = 0xE000000000000000;
    sub_21A9ED46C();

    v267 = 0xD00000000000001CLL;
    v268 = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v148, v81);

    v153 = v267;
    v152 = v268;
    sub_21A50B9E0();
    swift_allocError();
    *v154 = v153;
    *(v154 + 8) = v152;
    *(v154 + 16) = 0;
    swift_willThrow();

LABEL_52:
    v176 = *(v0 + 400);
    v177 = *(v0 + 368);
    v178 = *(v0 + 376);
    v180 = *(v0 + 352);
    v179 = *(v0 + 360);
    v182 = *(v0 + 336);
    v181 = *(v0 + 344);
    v184 = *(v0 + 320);
    v183 = *(v0 + 328);
    v185 = *(v0 + 312);
    v233 = *(v0 + 296);
    v235 = *(v0 + 280);
    v237 = *(v0 + 272);
    v239 = *(v0 + 264);
    v241 = *(v0 + 256);
    v243 = *(v0 + 248);
    v245 = *(v0 + 240);
    v248 = *(v0 + 216);
    v251 = *(v0 + 192);
    v257 = *(v0 + 184);
    v259 = *(v0 + 168);

    v146 = *(v0 + 8);
    goto LABEL_53;
  }

  v150 = v149;
  if (sub_21A9ED4AC())
  {
    v148 = v80;
    goto LABEL_45;
  }

  v200 = *(v0 + 408);
  v201 = *(v0 + 416);
  v202 = *(v0 + 328);
  v203 = *(v0 + 304);
  v261 = *(v0 + 296);
  v266 = *(v0 + 288);
  v253 = sub_21A509AA0(v150);
  v205 = v204;

  v206 = swift_task_alloc();
  v206[2] = v147;
  v206[3] = v200;
  v206[4] = v201;
  v206[5] = v80;
  v206[6] = v81;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v207 = swift_task_alloc();
  v207[2] = v202;
  v207[3] = 0x6554737365727473;
  v207[4] = 0xEB00000000447473;
  v207[5] = v253;
  v207[6] = v205;
  sub_21A50D9F0(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);
  sub_21A9ED19C();

  v208 = *&v147[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
  v209 = swift_task_alloc();
  *(v0 + 464) = v209;
  *v209 = v0;
  v209[1] = sub_21A4FF41C;
  v210 = *(v0 + 376);
  v211 = *(v0 + 296);

  return sub_21A50E01C(v210, v211, v208);
}

uint64_t sub_21A50282C()
{
  v1 = v0[40];
  sub_21A50DA9C(v0[24], type metadata accessor for UrsaPeriodicRequest);
  sub_21A50DA9C(v1, type metadata accessor for UrsaMetadata);
  v30 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[47];

  sub_21A4FB590(v6, &qword_27CD2EA48, &qword_21AA21658);
  v7 = v0[50];
  v9 = v0[46];
  v8 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v13 = v0[42];
  v12 = v0[43];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[39];
  v19 = v0[37];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[27];
  v27 = v0[24];
  v28 = v0[23];
  v29 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_21A502A1C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v8 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = *(v2 + 440);
    v5 = *(v2 + 416);

    v6 = sub_21A504358;
  }

  else
  {
    v6 = sub_21A502B44;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21A502B44()
{
  v268 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 168);

  sub_21A50DA9C(v7, type metadata accessor for UrsaTelemetryRequest);
  v1(v3, 0, 1, v5);
  sub_21A50DA9C(v4, type metadata accessor for UrsaMetadata);
  sub_21A4FB590(v2, &qword_27CD2EA48, &qword_21AA21658);
  v254 = *(v0 + 552);
  while (1)
  {
    v9 = *(v0 + 488);
    v8 = *(v0 + 496);
    v10 = *(v0 + 376);
    v11 = *(v0 + 336);
    v12 = *(v0 + 224);
    sub_21A50D92C(*(v0 + 344), v10);
    sub_21A4F1408(v10, v11, &qword_27CD2EA48, &qword_21AA21658);
    v13 = v9(v11, 1, v12);
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 336);
    if (v13 == 1)
    {
      sub_21A4FB590(*(v0 + 336), &qword_27CD2EA48, &qword_21AA21658);

      v17 = sub_21A9ED23C();
      v18 = sub_21A9ED42C();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 440);
      if (v19)
      {
        v21 = *(v0 + 432);
        v22 = *(v0 + 376);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v266 = v24;
        *v23 = 136315138;
        v25 = sub_21A50AF9C(v21, v20, &v266);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_21A4C6000, v17, v18, "stress test for telemetry failed for %s empty result", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x21CEDE430](v24, -1, -1);
        MEMORY[0x21CEDE430](v23, -1, -1);

        v26 = v22;
      }

      else
      {
        v42 = *(v0 + 376);
        v43 = *(v0 + 440);

        v26 = v42;
      }
    }

    else
    {
      v28 = *(v0 + 240);
      v27 = *(v0 + 248);
      v29 = *(v0 + 440);

      sub_21A50DA38(v16, v27);
      sub_21A50DAFC(v27, v28, type metadata accessor for UrsaResult);
      v30 = sub_21A9ED23C();
      v31 = sub_21A9ED41C();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 376);
      v34 = *(v0 + 240);
      v35 = *(v0 + 248);
      if (v32)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v266 = v37;
        *v36 = 136315138;
        v38 = sub_21A50A2A0();
        v40 = v39;
        sub_21A50DA9C(v34, type metadata accessor for UrsaResult);
        v41 = sub_21A50AF9C(v38, v40, &v266);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_21A4C6000, v30, v31, "telemetry %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x21CEDE430](v37, -1, -1);
        MEMORY[0x21CEDE430](v36, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v34, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v35, type metadata accessor for UrsaResult);
      v26 = v33;
    }

    sub_21A4FB590(v26, &qword_27CD2EA48, &qword_21AA21658);
    v44 = *(v0 + 424) + 1;
    if (*(v0 + 424) == 10)
    {
      v121 = *(v0 + 416);
      v122 = *(v0 + 400);
      v124 = *(v0 + 368);
      v123 = *(v0 + 376);
      v126 = *(v0 + 352);
      v125 = *(v0 + 360);
      v127 = *(v0 + 336);
      v128 = *(v0 + 344);
      v130 = *(v0 + 320);
      v129 = *(v0 + 328);
      v231 = *(v0 + 312);
      v233 = *(v0 + 296);
      v235 = *(v0 + 280);
      v237 = *(v0 + 272);
      v239 = *(v0 + 264);
      v241 = *(v0 + 256);
      v243 = *(v0 + 248);
      v246 = *(v0 + 240);
      v249 = *(v0 + 216);
      v255 = *(v0 + 192);
      v257 = *(v0 + 184);
      v262 = *(v0 + 168);

      swift_arrayDestroy();

      v131 = *(v0 + 8);
LABEL_53:

      return v131();
    }

    *(v0 + 424) = v44;
    v45 = &unk_282B5A290 + 16 * v44;
    v46 = *(v45 + 4);
    *(v0 + 432) = v46;
    v47 = *(v45 + 5);
    *(v0 + 440) = v47;
    v48 = qword_2811F2E20;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_21A9ED25C();
    *(v0 + 448) = __swift_project_value_buffer(v49, qword_2811F8528);

    v50 = sub_21A9ED23C();
    v51 = sub_21A9ED41C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v266 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_21A50AF9C(v46, v47, &v266);
      _os_log_impl(&dword_21A4C6000, v50, v51, "stress test for %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x21CEDE430](v53, -1, -1);
      MEMORY[0x21CEDE430](v52, -1, -1);
    }

    v54 = *(v0 + 152);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 456) = Strong;
    if (Strong)
    {
      break;
    }

    v56 = *(*(v0 + 232) + 56);
    v56(*(v0 + 376), 1, 1, *(v0 + 224));
    *(v0 + 480) = v56;
    v57 = *(v0 + 368);
    v59 = *(v0 + 224);
    v58 = *(v0 + 232);
    sub_21A4F1408(*(v0 + 376), v57, &qword_27CD2EA48, &qword_21AA21658);
    v60 = *(v58 + 48);
    *(v0 + 488) = v60;
    *(v0 + 496) = (v58 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v61 = v60(v57, 1, v59);
    v62 = *(v0 + 448);
    if (v61 == 1)
    {
      v63 = *(v0 + 440);
      sub_21A4FB590(*(v0 + 368), &qword_27CD2EA48, &qword_21AA21658);

      v64 = sub_21A9ED23C();
      v65 = sub_21A9ED42C();

      if (os_log_type_enabled(v64, v65))
      {
        v67 = *(v0 + 432);
        v66 = *(v0 + 440);
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v266 = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_21A50AF9C(v67, v66, &v266);
        _os_log_impl(&dword_21A4C6000, v64, v65, "stress test for admission failed for %s empty result", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x21CEDE430](v69, -1, -1);
        MEMORY[0x21CEDE430](v68, -1, -1);
      }
    }

    else
    {
      v71 = *(v0 + 272);
      v70 = *(v0 + 280);
      sub_21A50DA38(*(v0 + 368), v70);
      sub_21A50DAFC(v70, v71, type metadata accessor for UrsaResult);
      v72 = sub_21A9ED23C();
      v73 = sub_21A9ED41C();
      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v0 + 272);
      v76 = *(v0 + 280);
      if (v74)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v266 = v78;
        *v77 = 136315138;
        v79 = sub_21A50A2A0();
        v81 = v80;
        sub_21A50DA9C(v75, type metadata accessor for UrsaResult);
        v82 = sub_21A50AF9C(v79, v81, &v266);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_21A4C6000, v72, v73, "admission %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x21CEDE430](v78, -1, -1);
        MEMORY[0x21CEDE430](v77, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v75, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v76, type metadata accessor for UrsaResult);
    }

    v83 = *(v0 + 152);
    v84 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 504) = v84;
    if (v84)
    {
      v263 = v84;
      v140 = 0x61636F4C74736574;
      v142 = *(v0 + 432);
      v141 = *(v0 + 440);
      v144 = *(v0 + 208);
      v143 = *(v0 + 216);
      v145 = *(v0 + 200);
      sub_21A9ED03C();
      sub_21A9ED02C();
      v147 = v146;
      (*(v144 + 8))(v143, v145);
      v148 = sub_21A50B6E4(MEMORY[0x277D84F90]);
      *(v0 + 512) = v148;
      if (v142 != 0x61636F4C74736574 || v141 != 0xEE00726F7272456CLL)
      {
        v149 = v148;
        v150 = *(v0 + 432);
        v151 = *(v0 + 440);
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v198 = *(v0 + 440);
          v260 = *(v0 + 448);
          v199 = *(v0 + 432);
          v245 = *(v0 + 408);
          v200 = *(v0 + 320);
          v201 = *(v0 + 304);
          v248 = *(v0 + 192);
          v252 = *(v0 + 184);
          v202 = *(v0 + 176);
          v203 = sub_21A509AA0(v149);
          v205 = v204;
          v206 = swift_task_alloc();
          *(v206 + 16) = v263;
          *(v206 + 24) = v245;
          *(v206 + 40) = v199;
          *(v206 + 48) = v198;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v207 = swift_task_alloc();
          v207[2] = v200;
          v207[3] = v147;
          v207[4] = v203;
          v207[5] = v205;
          sub_21A50D9F0(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);
          sub_21A9ED19C();

          sub_21A50DAFC(v248, v252, type metadata accessor for UrsaPeriodicRequest);
          v208 = sub_21A9ED23C();
          v209 = sub_21A9ED40C();
          v210 = os_log_type_enabled(v208, v209);
          v211 = *(v0 + 184);
          if (v210)
          {
            v212 = swift_slowAlloc();
            *v212 = 134218240;
            *(v212 + 4) = v147;
            *(v212 + 12) = 2048;
            v213 = sub_21A4F1684();
            sub_21A50DA9C(v211, type metadata accessor for UrsaPeriodicRequest);
            *(v212 + 14) = v213;
            _os_log_impl(&dword_21A4C6000, v208, v209, "periodic since %f req %f", v212, 0x16u);
            MEMORY[0x21CEDE430](v212, -1, -1);
          }

          else
          {

            sub_21A50DA9C(v211, type metadata accessor for UrsaPeriodicRequest);
          }

          v227 = *(v263 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client);
          v228 = swift_task_alloc();
          *(v0 + 520) = v228;
          *v228 = v0;
          v228[1] = sub_21A500F00;
          v229 = *(v0 + 360);
          v230 = *(v0 + 192);

          return sub_21A50E6A0(v229, v230, v227);
        }

        v140 = *(v0 + 432);
      }

      v152 = *(v0 + 440);
      v266 = 0;
      v267 = 0xE000000000000000;
      sub_21A9ED46C();

      v266 = 0xD00000000000001CLL;
      v267 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v140, v152);
      v154 = v266;
      v153 = v267;
      sub_21A50B9E0();
      swift_allocError();
      *v155 = v154;
      *(v155 + 8) = v153;
      *(v155 + 16) = 0;
      swift_willThrow();
      v157 = *(v0 + 504);
      v156 = *(v0 + 512);
      v158 = *(v0 + 440);
      v159 = *(v0 + 416);
      v160 = *(v0 + 376);

      v161 = v160;
LABEL_51:
      sub_21A4FB590(v161, &qword_27CD2EA48, &qword_21AA21658);
LABEL_52:
      v175 = *(v0 + 400);
      v176 = *(v0 + 368);
      v177 = *(v0 + 376);
      v179 = *(v0 + 352);
      v178 = *(v0 + 360);
      v181 = *(v0 + 336);
      v180 = *(v0 + 344);
      v183 = *(v0 + 320);
      v182 = *(v0 + 328);
      v184 = *(v0 + 312);
      v232 = *(v0 + 296);
      v234 = *(v0 + 280);
      v236 = *(v0 + 272);
      v238 = *(v0 + 264);
      v240 = *(v0 + 256);
      v242 = *(v0 + 248);
      v244 = *(v0 + 240);
      v247 = *(v0 + 216);
      v250 = *(v0 + 192);
      v256 = *(v0 + 184);
      v258 = *(v0 + 168);

      v131 = *(v0 + 8);
      goto LABEL_53;
    }

    v85 = *(v0 + 360);
    v86 = *(v0 + 224);
    v87 = *(v0 + 232) + 56;
    sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
    v56(v85, 1, 1, v86);
    v89 = *(v0 + 488);
    v88 = *(v0 + 496);
    v90 = *(v0 + 376);
    v91 = *(v0 + 352);
    v92 = *(v0 + 224);
    sub_21A50D92C(*(v0 + 360), v90);
    sub_21A4F1408(v90, v91, &qword_27CD2EA48, &qword_21AA21658);
    v93 = v89(v91, 1, v92);
    v94 = *(v0 + 448);
    if (v93 == 1)
    {
      v95 = *(v0 + 440);
      sub_21A4FB590(*(v0 + 352), &qword_27CD2EA48, &qword_21AA21658);

      v96 = sub_21A9ED23C();
      v97 = sub_21A9ED42C();

      if (os_log_type_enabled(v96, v97))
      {
        v99 = *(v0 + 432);
        v98 = *(v0 + 440);
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v266 = v101;
        *v100 = 136315138;
        *(v100 + 4) = sub_21A50AF9C(v99, v98, &v266);
        _os_log_impl(&dword_21A4C6000, v96, v97, "stress test for periodic failed for %s empty result", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        MEMORY[0x21CEDE430](v101, -1, -1);
        MEMORY[0x21CEDE430](v100, -1, -1);
      }
    }

    else
    {
      v103 = *(v0 + 256);
      v102 = *(v0 + 264);
      sub_21A50DA38(*(v0 + 352), v102);
      sub_21A50DAFC(v102, v103, type metadata accessor for UrsaResult);
      v104 = sub_21A9ED23C();
      v105 = sub_21A9ED41C();
      v106 = os_log_type_enabled(v104, v105);
      v107 = *(v0 + 256);
      v108 = *(v0 + 264);
      if (v106)
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v266 = v110;
        *v109 = 136315138;
        v111 = sub_21A50A2A0();
        v113 = v112;
        sub_21A50DA9C(v107, type metadata accessor for UrsaResult);
        v114 = sub_21A50AF9C(v111, v113, &v266);

        *(v109 + 4) = v114;
        _os_log_impl(&dword_21A4C6000, v104, v105, "periodic %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x21CEDE430](v110, -1, -1);
        MEMORY[0x21CEDE430](v109, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v107, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v108, type metadata accessor for UrsaResult);
    }

    v115 = *(v0 + 152);
    v116 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 536) = v116;
    if (v116)
    {
      v162 = v116;
      v163 = 0x61636F4C74736574;
      v165 = *(v0 + 432);
      v164 = *(v0 + 440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21AA21390;
      *(inited + 32) = 1734437990;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v165;
      *(inited + 56) = v164;

      v167 = sub_21A50B6E4(inited);
      swift_setDeallocating();
      sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
      if (v165 != 0x61636F4C74736574 || v164 != 0xEE00726F7272456CLL)
      {
        v168 = *(v0 + 432);
        v169 = *(v0 + 440);
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v215 = *(v0 + 432);
          v214 = *(v0 + 440);
          v253 = *(v0 + 408);
          v216 = *(v0 + 304);
          v217 = *(v0 + 312);
          v218 = *(v0 + 160);
          v265 = *(v0 + 168);
          v261 = sub_21A509AA0(v167);
          v220 = v219;

          v221 = swift_task_alloc();
          *(v221 + 16) = v162;
          *(v221 + 24) = v253;
          *(v221 + 40) = v215;
          *(v221 + 48) = v214;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED19C();

          v222 = swift_task_alloc();
          v222[2] = v217;
          v222[3] = 0x6554737365727473;
          v222[4] = 0xEA00000000007473;
          v222[5] = v261;
          v222[6] = v220;
          sub_21A50D9F0(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);
          sub_21A9ED19C();

          v223 = *&v162[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v224 = swift_task_alloc();
          *(v0 + 544) = v224;
          *v224 = v0;
          v224[1] = sub_21A502A1C;
          v225 = *(v0 + 344);
          v226 = *(v0 + 168);

          return sub_21A50EC34(v225, v226, v223);
        }

        v163 = *(v0 + 432);
      }

      v170 = *(v0 + 440);
      v171 = *(v0 + 416);

      v266 = 0;
      v267 = 0xE000000000000000;
      sub_21A9ED46C();

      v266 = 0xD00000000000001CLL;
      v267 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v163, v170);

      v173 = v266;
      v172 = v267;
      sub_21A50B9E0();
      swift_allocError();
      *v174 = v173;
      *(v174 + 8) = v172;
      *(v174 + 16) = 0;
      swift_willThrow();

      v161 = *(v0 + 376);
      goto LABEL_51;
    }

    v117 = *(v0 + 480);
    v118 = *(v0 + 344);
    v119 = *(v0 + 224);
    v120 = *(v0 + 232) + 56;
    sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
    v117(v118, 1, 1, v119);
  }

  v132 = Strong;
  v133 = 0x61636F4C74736574;
  v134 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (v46 == 0x61636F4C74736574 && v47 == 0xEE00726F7272456CLL)
  {
LABEL_40:
    v136 = *(v0 + 416);

    v266 = 0;
    v267 = 0xE000000000000000;
    sub_21A9ED46C();

    v266 = 0xD00000000000001CLL;
    v267 = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v133, v47);

    v138 = v266;
    v137 = v267;
    sub_21A50B9E0();
    swift_allocError();
    *v139 = v138;
    *(v139 + 8) = v137;
    *(v139 + 16) = 0;
    swift_willThrow();

    goto LABEL_52;
  }

  v135 = v134;
  if (sub_21A9ED4AC())
  {
    v133 = v46;
    goto LABEL_40;
  }

  v186 = *(v0 + 408);
  v187 = *(v0 + 416);
  v188 = *(v0 + 328);
  v189 = *(v0 + 304);
  v259 = *(v0 + 296);
  v264 = *(v0 + 288);
  v251 = sub_21A509AA0(v135);
  v191 = v190;

  v192 = swift_task_alloc();
  v192[2] = v132;
  v192[3] = v186;
  v192[4] = v187;
  v192[5] = v46;
  v192[6] = v47;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v193 = swift_task_alloc();
  v193[2] = v188;
  v193[3] = 0x6554737365727473;
  v193[4] = 0xEB00000000447473;
  v193[5] = v251;
  v193[6] = v191;
  sub_21A50D9F0(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);
  sub_21A9ED19C();

  v194 = *&v132[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
  v195 = swift_task_alloc();
  *(v0 + 464) = v195;
  *v195 = v0;
  v195[1] = sub_21A4FF41C;
  v196 = *(v0 + 376);
  v197 = *(v0 + 296);

  return sub_21A50E01C(v196, v197, v194);
}

uint64_t sub_21A504358()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 168);

  sub_21A50DA9C(v2, type metadata accessor for UrsaTelemetryRequest);
  sub_21A50DA9C(v1, type metadata accessor for UrsaMetadata);
  v26 = *(v0 + 552);
  sub_21A4FB590(*(v0 + 376), &qword_27CD2EA48, &qword_21AA21658);
  v3 = *(v0 + 400);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = *(v0 + 272);
  v18 = *(v0 + 264);
  v19 = *(v0 + 256);
  v20 = *(v0 + 248);
  v21 = *(v0 + 240);
  v22 = *(v0 + 216);
  v23 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = *(v0 + 168);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A50452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_21A4F1408(a3, v25 - v11, &qword_27CD2E9F0, &qword_21AA213D0);
  v13 = sub_21A9ED39C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21A4FB590(v12, &qword_27CD2E9F0, &qword_21AA213D0);
  }

  else
  {
    sub_21A9ED38C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21A9ED35C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21A9ED31C() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_21A4FB590(a3, &qword_27CD2E9F0, &qword_21AA213D0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A4FB590(a3, &qword_27CD2E9F0, &qword_21AA213D0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21A5048FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 544) = v26;
  *(v8 + 536) = v25;
  *(v8 + 520) = v24;
  *(v8 + 504) = v23;
  *(v8 + 488) = a7;
  *(v8 + 496) = a8;
  *(v8 + 472) = a5;
  *(v8 + 480) = a6;
  *(v8 + 464) = a4;
  v9 = *(*(type metadata accessor for UrsaAdmissionResult(0) - 8) + 64) + 15;
  *(v8 + 552) = swift_task_alloc();
  v10 = *(type metadata accessor for UrsaRadarData(0) - 8);
  *(v8 + 560) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v12 = type metadata accessor for UrsaResult(0);
  *(v8 + 576) = v12;
  v13 = *(v12 - 8);
  *(v8 + 584) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  v15 = type metadata accessor for UrsaAdmissionRequest(0);
  *(v8 + 600) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  v17 = type metadata accessor for UrsaMetadata(0);
  *(v8 + 616) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA48, &qword_21AA21658) - 8) + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0) - 8) + 64) + 15;
  *(v8 + 648) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A504B48, 0, 0);
}

uint64_t sub_21A504B48()
{
  v1 = v0[81];
  v2 = v0[58];
  v3 = sub_21A9ED39C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v0[82] = sub_21A50452C(0, 0, v1, &unk_21AA216C0, v6);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  v0[83] = v7;
  if (!v7)
  {
    (*(v0[73] + 56))(v0[80], 1, 1, v0[72]);
    sub_21A9ED3BC();
    v27 = v0[58];
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = *&v28[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask];
      *&v28[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
    }

    v30 = v0[79];
    v31 = v0[73];
    v32 = v0[72];
    sub_21A4F1408(v0[80], v30, &qword_27CD2EA48, &qword_21AA21658);
    if ((*(v31 + 48))(v30, 1, v32) != 1)
    {
      v69 = v0[74];
      sub_21A50DA38(v0[79], v69);
      v70 = v0[82];
      v95 = v0[80];
      v71 = v0[74];
      v72 = v0[67];
      v73 = v0[66];
      if (*(*v69 + 16))
      {
        v74 = v0[71];
        v76 = v0[59];
        v75 = v0[60];
        v77 = *(v0[70] + 80);
        sub_21A50DAFC(*v69 + ((v77 + 32) & ~v77), v74, type metadata accessor for UrsaRadarData);
        sub_21A5066C4();
        v78 = sub_21A9ED26C();

        v73(0, v76, v75, v78);

        sub_21A50DA9C(v74, type metadata accessor for UrsaRadarData);
      }

      else
      {
        v79 = v0[69];
        v80 = v0[62];
        v87 = v0[61];
        v89 = v0[68];
        v91 = v0[59];
        v93 = v0[60];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA10, &qword_21AA21458);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21AA203F0;
        *(inited + 32) = 0x74696D6461;
        *(inited + 40) = 0xE500000000000000;
        sub_21A4F0C84(v79);
        v82 = sub_21A4F0E9C();
        sub_21A50DA9C(v79, type metadata accessor for UrsaAdmissionResult);
        v83 = MEMORY[0x277D839B0];
        *(inited + 48) = v82 & 1;
        *(inited + 72) = v83;
        *(inited + 80) = 0x737365636F7270;
        v84 = MEMORY[0x277D837D0];
        *(inited + 88) = 0xE700000000000000;
        *(inited + 96) = v87;
        *(inited + 104) = v80;
        *(inited + 120) = v84;
        *(inited + 128) = 0x746361706D69;
        *(inited + 168) = MEMORY[0x277D83B88];
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = v89;

        sub_21A50C188(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA18, &qword_21AA21460);
        swift_arrayDestroy();
        v85 = sub_21A9ED26C();

        v73(0, v91, v93, v85);
      }

      sub_21A50DA9C(v71, type metadata accessor for UrsaResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
      sub_21A9ED3AC();

      sub_21A4FB590(v95, &qword_27CD2EA48, &qword_21AA21658);
LABEL_21:
      v60 = v0[81];
      v61 = v0[80];
      v62 = v0[79];
      v63 = v0[78];
      v64 = v0[76];
      v65 = v0[74];
      v66 = v0[71];
      v67 = v0[69];

      v68 = v0[1];

      return v68();
    }

    v33 = v0[82];
    v34 = v0[80];
    sub_21A4FB590(v0[79], &qword_27CD2EA48, &qword_21AA21658);
    sub_21A50B9E0();
    v12 = swift_allocError();
    *v35 = 0xD000000000000014;
    *(v35 + 8) = 0x800000021AA237E0;
    *(v35 + 16) = 2;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();
    sub_21A4FB590(v34, &qword_27CD2EA48, &qword_21AA21658);
LABEL_14:
    v36 = v0[58];
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      v38 = *&v37[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask];
      *&v37[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
    }

    v39 = v0[68];
    v41 = v0[61];
    v40 = v0[62];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA10, &qword_21AA21458);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_21AA203F0;
    *(v42 + 32) = 0x74696D6461;
    *(v42 + 40) = 0xE500000000000000;
    v43 = MEMORY[0x277D839B0];
    *(v42 + 48) = 1;
    *(v42 + 72) = v43;
    *(v42 + 80) = 0x737365636F7270;
    v44 = MEMORY[0x277D837D0];
    *(v42 + 88) = 0xE700000000000000;
    *(v42 + 96) = v41;
    *(v42 + 104) = v40;
    *(v42 + 120) = v44;
    *(v42 + 128) = 0x746361706D69;
    *(v42 + 168) = MEMORY[0x277D83B88];
    *(v42 + 136) = 0xE600000000000000;
    *(v42 + 144) = v39;

    sub_21A50C188(v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA18, &qword_21AA21460);
    swift_arrayDestroy();
    if (qword_2811F2E20 != -1)
    {
      swift_once();
    }

    v45 = sub_21A9ED25C();
    __swift_project_value_buffer(v45, qword_2811F8528);
    v46 = v12;
    v47 = sub_21A9ED23C();
    v48 = sub_21A9ED42C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v12;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_21A4C6000, v47, v48, "Admission error: %@", v49, 0xCu);
      sub_21A4FB590(v50, &qword_27CD2EA60, &qword_21AA21668);
      MEMORY[0x21CEDE430](v50, -1, -1);
      MEMORY[0x21CEDE430](v49, -1, -1);
    }

    v53 = v0[82];
    v54 = v0[67];
    v55 = v0[66];
    v57 = v0[59];
    v56 = v0[60];

    v58 = v12;
    v59 = sub_21A9ED26C();

    v55(v12, v57, v56, v59);

    goto LABEL_21;
  }

  v8 = v7;
  v9 = 0xEE00726F7272456CLL;
  v10 = 0x61636F4C74736574;
  if (v0[64] == 0x61636F4C74736574 && v0[65] == 0xEE00726F7272456CLL || (v11 = sub_21A9ED4AC(), v9 = v0[65], v10 = v0[64], (v11 & 1) != 0))
  {
    sub_21A9ED46C();

    MEMORY[0x21CEDBCA0](v10, v9);
    sub_21A50B9E0();
    v12 = swift_allocError();
    *v13 = 0xD00000000000001CLL;
    *(v13 + 8) = 0x800000021AA23780;
    *(v13 + 16) = 0;
    swift_willThrow();

    goto LABEL_14;
  }

  v14 = v0[78];
  v15 = v0[77];
  v92 = v0[76];
  v94 = v0[75];
  v16 = v0[60];
  v88 = v0[61];
  v90 = v0[62];
  v17 = v0[59];
  v86 = sub_21A509AA0(v0[63]);
  v19 = v18;
  v20 = swift_task_alloc();
  v20[2] = v8;
  v20[3] = v17;
  v20[4] = v16;
  v20[5] = v10;
  v20[6] = v9;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v21 = swift_task_alloc();
  v21[2] = v14;
  v21[3] = v88;
  v21[4] = v90;
  v21[5] = v86;
  v21[6] = v19;
  sub_21A50D9F0(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);
  sub_21A9ED19C();

  v22 = *&v8[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
  v23 = swift_task_alloc();
  v0[84] = v23;
  *v23 = v0;
  v23[1] = sub_21A5056F4;
  v24 = v0[80];
  v25 = v0[76];

  return sub_21A50E01C(v24, v25, v22);
}

uint64_t sub_21A5056F4()
{
  v2 = *(*v1 + 672);
  v5 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = sub_21A506048;
  }

  else
  {
    v3 = sub_21A505808;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A505808()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);

  sub_21A50DA9C(v3, type metadata accessor for UrsaAdmissionRequest);
  (*(v4 + 56))(v1, 0, 1, v5);
  sub_21A50DA9C(v2, type metadata accessor for UrsaMetadata);
  v6 = *(v0 + 680);
  sub_21A9ED3BC();
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 640);
  }

  else
  {
    v9 = *(v0 + 464);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask];
      *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
    }

    v12 = *(v0 + 632);
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    sub_21A4F1408(*(v0 + 640), v12, &qword_27CD2EA48, &qword_21AA21658);
    if ((*(v13 + 48))(v12, 1, v14) != 1)
    {
      v52 = *(v0 + 592);
      sub_21A50DA38(*(v0 + 632), v52);
      v53 = *(v0 + 656);
      v73 = *(v0 + 640);
      v54 = *(v0 + 592);
      v55 = *(v0 + 536);
      v56 = *(v0 + 528);
      if (*(*v52 + 16))
      {
        v57 = *(v0 + 568);
        v59 = *(v0 + 472);
        v58 = *(v0 + 480);
        v60 = *(*(v0 + 560) + 80);
        sub_21A50DAFC(*v52 + ((v60 + 32) & ~v60), v57, type metadata accessor for UrsaRadarData);
        sub_21A5066C4();
        v61 = sub_21A9ED26C();

        v56(0, v59, v58, v61);

        sub_21A50DA9C(v57, type metadata accessor for UrsaRadarData);
      }

      else
      {
        v62 = *(v0 + 552);
        v63 = *(v0 + 496);
        v69 = *(v0 + 488);
        v70 = *(v0 + 544);
        v71 = *(v0 + 472);
        v72 = *(v0 + 480);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA10, &qword_21AA21458);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21AA203F0;
        *(inited + 32) = 0x74696D6461;
        *(inited + 40) = 0xE500000000000000;
        sub_21A4F0C84(v62);
        v65 = sub_21A4F0E9C();
        sub_21A50DA9C(v62, type metadata accessor for UrsaAdmissionResult);
        v66 = MEMORY[0x277D839B0];
        *(inited + 48) = v65 & 1;
        *(inited + 72) = v66;
        *(inited + 80) = 0x737365636F7270;
        v67 = MEMORY[0x277D837D0];
        *(inited + 88) = 0xE700000000000000;
        *(inited + 96) = v69;
        *(inited + 104) = v63;
        *(inited + 120) = v67;
        *(inited + 128) = 0x746361706D69;
        *(inited + 168) = MEMORY[0x277D83B88];
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = v70;

        sub_21A50C188(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA18, &qword_21AA21460);
        swift_arrayDestroy();
        v68 = sub_21A9ED26C();

        v56(0, v71, v72, v68);
      }

      sub_21A50DA9C(v54, type metadata accessor for UrsaResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
      sub_21A9ED3AC();

      sub_21A4FB590(v73, &qword_27CD2EA48, &qword_21AA21658);
      goto LABEL_14;
    }

    v15 = *(v0 + 656);
    v16 = *(v0 + 640);
    sub_21A4FB590(*(v0 + 632), &qword_27CD2EA48, &qword_21AA21658);
    sub_21A50B9E0();
    v7 = swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x800000021AA237E0;
    *(v17 + 16) = 2;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();
    v8 = v16;
  }

  sub_21A4FB590(v8, &qword_27CD2EA48, &qword_21AA21658);
  v18 = *(v0 + 464);
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = *&v19[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask];
    *&v19[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
  }

  v21 = *(v0 + 544);
  v23 = *(v0 + 488);
  v22 = *(v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA10, &qword_21AA21458);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_21AA203F0;
  *(v24 + 32) = 0x74696D6461;
  *(v24 + 40) = 0xE500000000000000;
  v25 = MEMORY[0x277D839B0];
  *(v24 + 48) = 1;
  *(v24 + 72) = v25;
  *(v24 + 80) = 0x737365636F7270;
  v26 = MEMORY[0x277D837D0];
  *(v24 + 88) = 0xE700000000000000;
  *(v24 + 96) = v23;
  *(v24 + 104) = v22;
  *(v24 + 120) = v26;
  *(v24 + 128) = 0x746361706D69;
  *(v24 + 168) = MEMORY[0x277D83B88];
  *(v24 + 136) = 0xE600000000000000;
  *(v24 + 144) = v21;

  sub_21A50C188(v24);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA18, &qword_21AA21460);
  swift_arrayDestroy();
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v27 = sub_21A9ED25C();
  __swift_project_value_buffer(v27, qword_2811F8528);
  v28 = v7;
  v29 = sub_21A9ED23C();
  v30 = sub_21A9ED42C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v7;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_21A4C6000, v29, v30, "Admission error: %@", v31, 0xCu);
    sub_21A4FB590(v32, &qword_27CD2EA60, &qword_21AA21668);
    MEMORY[0x21CEDE430](v32, -1, -1);
    MEMORY[0x21CEDE430](v31, -1, -1);
  }

  v35 = *(v0 + 656);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v39 = *(v0 + 472);
  v38 = *(v0 + 480);

  v40 = v7;
  v41 = sub_21A9ED26C();

  v37(v7, v39, v38, v41);

LABEL_14:
  v42 = *(v0 + 648);
  v43 = *(v0 + 640);
  v44 = *(v0 + 632);
  v45 = *(v0 + 624);
  v46 = *(v0 + 608);
  v47 = *(v0 + 592);
  v48 = *(v0 + 568);
  v49 = *(v0 + 552);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_21A506048()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);

  sub_21A50DA9C(v2, type metadata accessor for UrsaAdmissionRequest);
  sub_21A50DA9C(v1, type metadata accessor for UrsaMetadata);
  v3 = *(v0 + 680);
  v4 = *(v0 + 464);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask];
    *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
  }

  v7 = *(v0 + 544);
  v9 = *(v0 + 488);
  v8 = *(v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA10, &qword_21AA21458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA203F0;
  *(inited + 32) = 0x74696D6461;
  *(inited + 40) = 0xE500000000000000;
  v11 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v11;
  *(inited + 80) = 0x737365636F7270;
  v12 = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0x746361706D69;
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v7;

  sub_21A50C188(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA18, &qword_21AA21460);
  swift_arrayDestroy();
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v13 = sub_21A9ED25C();
  __swift_project_value_buffer(v13, qword_2811F8528);
  v14 = v3;
  v15 = sub_21A9ED23C();
  v16 = sub_21A9ED42C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v3;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_21A4C6000, v15, v16, "Admission error: %@", v17, 0xCu);
    sub_21A4FB590(v18, &qword_27CD2EA60, &qword_21AA21668);
    MEMORY[0x21CEDE430](v18, -1, -1);
    MEMORY[0x21CEDE430](v17, -1, -1);
  }

  v21 = *(v0 + 656);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v25 = *(v0 + 472);
  v24 = *(v0 + 480);

  v26 = v3;
  v27 = sub_21A9ED26C();

  v23(v3, v25, v24, v27);

  v28 = *(v0 + 648);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 608);
  v33 = *(v0 + 592);
  v34 = *(v0 + 568);
  v35 = *(v0 + 552);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_21A506424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_21A5064C8;

  return MEMORY[0x282200480](300000000000);
}

uint64_t sub_21A5064C8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A5065F8, 0, 0);
  }
}

uint64_t sub_21A5065F8()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask);
    v4 = Strong;

    if (v3)
    {
      sub_21A9ED3AC();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_21A5066C4()
{
  v0 = 0xEE00657461647055;
  v1 = 0x6572617774666F73;
  if (sub_21A4F1254() == 0x6572617774666F73 && v2 == 0xEE00657461647055)
  {
  }

  else
  {
    v3 = sub_21A9ED4AC();

    if ((v3 & 1) == 0)
    {
      v0 = 0xEA00000000007974;
      v1 = 0x696C69626176696CLL;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA10, &qword_21AA21458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA213C0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v5 = sub_21A4F11F4();
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v6;
  *(inited + 80) = 0x6567617373656DLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_21A4F120C();
  *(inited + 104) = v8;
  *(inited + 120) = v6;
  *(inited + 128) = 0x6E6F69746361;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = v0;
  *(inited + 168) = v6;
  *(inited + 176) = 0x7261646172;
  *(inited + 184) = 0xE500000000000000;
  v9 = sub_21A4F10E0();
  v10 = MEMORY[0x277D849A8];
  *(inited + 192) = v9;
  *(inited + 216) = v10;
  *(inited + 224) = 0x6E496465786966;
  *(inited + 232) = 0xE700000000000000;
  v11 = sub_21A4F11B4();
  *(inited + 264) = v6;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  v13 = sub_21A50C188(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA18, &qword_21AA21460);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_21A506898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_21A4F1408(a3, v28 - v12, &qword_27CD2E9F0, &qword_21AA213D0);
  v14 = sub_21A9ED39C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_21A4FB590(v13, &qword_27CD2E9F0, &qword_21AA213D0);
  }

  else
  {
    sub_21A9ED38C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_21A9ED35C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_21A9ED31C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_21A4FB590(a3, &qword_27CD2E9F0, &qword_21AA213D0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A4FB590(a3, &qword_27CD2E9F0, &qword_21AA213D0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_21A506B98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 176) = v24;
  *(v9 + 160) = v23;
  *(v9 + 144) = a8;
  *(v9 + 152) = a9;
  *(v9 + 136) = a1;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 112) = a5;
  v10 = *(type metadata accessor for UrsaRadarData(0) - 8);
  *(v9 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  v12 = type metadata accessor for UrsaResult(0);
  *(v9 + 200) = v12;
  v13 = *(v12 - 8);
  *(v9 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  v15 = type metadata accessor for UrsaPeriodicRequest(0);
  *(v9 + 232) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  v17 = type metadata accessor for UrsaMetadata(0);
  *(v9 + 256) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA48, &qword_21AA21658) - 8) + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0) - 8) + 64) + 15;
  *(v9 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A506DC4, 0, 0);
}

uint64_t sub_21A506DC4()
{
  v100 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 112);
  v3 = sub_21A9ED39C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  *(v0 + 296) = sub_21A50452C(0, 0, v1, &unk_21AA21690, v6);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = v7;
  if (!v7)
  {
    (*(*(v0 + 208) + 56))(*(v0 + 280), 1, 1, *(v0 + 200));
    sub_21A9ED3BC();
    v33 = *(v0 + 112);
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = *&v34[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask];
      *&v34[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
    }

    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    v38 = *(v0 + 208);
    sub_21A4F1408(*(v0 + 280), v36, &qword_27CD2EA48, &qword_21AA21658);
    if ((*(v38 + 48))(v36, 1, v37) != 1)
    {
      sub_21A50DA38(*(v0 + 272), *(v0 + 224));
      if (qword_2811F2E20 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 216);
      v67 = *(v0 + 224);
      v68 = sub_21A9ED25C();
      __swift_project_value_buffer(v68, qword_2811F8528);
      sub_21A50DAFC(v67, v66, type metadata accessor for UrsaResult);
      v69 = sub_21A9ED23C();
      v70 = sub_21A9ED41C();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 216);
      if (v71)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v99[0] = v74;
        *v73 = 136315138;
        v75 = sub_21A50A2A0();
        v77 = v76;
        sub_21A50DA9C(v72, type metadata accessor for UrsaResult);
        v78 = sub_21A50AF9C(v75, v77, v99);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_21A4C6000, v69, v70, "periodic result: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x21CEDE430](v74, -1, -1);
        MEMORY[0x21CEDE430](v73, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v72, type metadata accessor for UrsaResult);
      }

      v79 = *(v0 + 224);
      v80 = *(v0 + 296);
      v81 = *(v0 + 280);
      if (*(*v79 + 16))
      {
        v82 = *(v0 + 192);
        v98 = *(v0 + 280);
        v83 = *(v0 + 168);
        v84 = *(v0 + 176);
        v86 = *(v0 + 120);
        v85 = *(v0 + 128);
        v87 = *(*(v0 + 184) + 80);
        sub_21A50DAFC(*v79 + ((v87 + 32) & ~v87), v82, type metadata accessor for UrsaRadarData);
        sub_21A5066C4();
        v88 = sub_21A9ED26C();

        v83(0, v86, v85, v88);

        sub_21A50DA9C(v82, type metadata accessor for UrsaRadarData);
        sub_21A50DA9C(v79, type metadata accessor for UrsaResult);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
        sub_21A9ED3AC();

        v89 = v98;
      }

      else
      {
        v91 = *(v0 + 168);
        v90 = *(v0 + 176);
        v93 = *(v0 + 120);
        v92 = *(v0 + 128);
        sub_21A50DCC8();
        v94 = sub_21A9ED3EC();
        v91(0, v93, v92, v94);

        sub_21A50DA9C(v79, type metadata accessor for UrsaResult);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
        sub_21A9ED3AC();

        v89 = v81;
      }

      sub_21A4FB590(v89, &qword_27CD2EA48, &qword_21AA21658);
      goto LABEL_18;
    }

    v39 = *(v0 + 296);
    v40 = *(v0 + 280);
    sub_21A4FB590(*(v0 + 272), &qword_27CD2EA48, &qword_21AA21658);
    sub_21A50B9E0();
    v12 = swift_allocError();
    *v41 = 0xD000000000000013;
    *(v41 + 8) = 0x800000021AA237C0;
    *(v41 + 16) = 2;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();
    sub_21A4FB590(v40, &qword_27CD2EA48, &qword_21AA21658);
LABEL_15:
    v42 = *(v0 + 112);
    swift_beginAccess();
    v43 = swift_unknownObjectWeakLoadStrong();
    if (v43)
    {
      v44 = *&v43[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask];
      *&v43[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
    }

    v45 = *(v0 + 296);
    v47 = *(v0 + 168);
    v46 = *(v0 + 176);
    v49 = *(v0 + 120);
    v48 = *(v0 + 128);
    v50 = v12;
    v47(v12, v49, v48, 0);

LABEL_18:
    v52 = *(v0 + 280);
    v51 = *(v0 + 288);
    v54 = *(v0 + 264);
    v53 = *(v0 + 272);
    v56 = *(v0 + 240);
    v55 = *(v0 + 248);
    v58 = *(v0 + 216);
    v57 = *(v0 + 224);
    v59 = *(v0 + 192);

    v60 = *(v0 + 8);

    return v60();
  }

  v8 = v7;
  v9 = 0xEE00726F7272456CLL;
  v10 = 0x61636F4C74736574;
  if (*(v0 + 152) == 0x61636F4C74736574 && *(v0 + 160) == 0xEE00726F7272456CLL || (v11 = sub_21A9ED4AC(), v10 = *(v0 + 152), v9 = *(v0 + 160), (v11 & 1) != 0))
  {
    sub_21A9ED46C();

    v99[0] = 0xD00000000000001CLL;
    v99[1] = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v10, v9);
    sub_21A50B9E0();
    v12 = swift_allocError();
    *v13 = 0xD00000000000001CLL;
    *(v13 + 8) = 0x800000021AA23780;
    *(v13 + 16) = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v14 = *(v0 + 256);
  v15 = *(v0 + 264);
  v96 = *(v0 + 248);
  v97 = *(v0 + 232);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v95 = sub_21A509AA0(*(v0 + 144));
  v20 = v19;
  v21 = swift_task_alloc();
  v21[2] = v8;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = v10;
  v21[6] = v9;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v22 = swift_task_alloc();
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v95;
  v22[5] = v20;
  sub_21A50D9F0(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);
  sub_21A9ED19C();

  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 240);
  v23 = *(v0 + 248);
  v25 = sub_21A9ED25C();
  __swift_project_value_buffer(v25, qword_2811F8528);
  sub_21A50DAFC(v23, v24, type metadata accessor for UrsaPeriodicRequest);
  v26 = sub_21A9ED23C();
  v27 = sub_21A9ED40C();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 240);
  if (v28)
  {
    v30 = *(v0 + 136);
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    *(v31 + 4) = v30;
    *(v31 + 12) = 2048;
    v32 = sub_21A4F1684();
    sub_21A50DA9C(v29, type metadata accessor for UrsaPeriodicRequest);
    *(v31 + 14) = v32;
    _os_log_impl(&dword_21A4C6000, v26, v27, "periodic since %f req %f", v31, 0x16u);
    MEMORY[0x21CEDE430](v31, -1, -1);
  }

  else
  {

    sub_21A50DA9C(v29, type metadata accessor for UrsaPeriodicRequest);
  }

  v62 = *(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client);
  v63 = swift_task_alloc();
  *(v0 + 312) = v63;
  *v63 = v0;
  v63[1] = sub_21A507900;
  v64 = *(v0 + 280);
  v65 = *(v0 + 248);

  return sub_21A50E6A0(v64, v65, v62);
}

uint64_t sub_21A507900()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_21A5080A0;
  }

  else
  {
    v3 = sub_21A507A14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A507A14()
{
  v69 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[25];
  v5 = v0[26];
  sub_21A50DA9C(v0[31], type metadata accessor for UrsaPeriodicRequest);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_21A50DA9C(v3, type metadata accessor for UrsaMetadata);

  v6 = v0[40];
  sub_21A9ED3BC();
  if (v6)
  {
    v7 = v6;
    v8 = v0[35];
LABEL_7:
    sub_21A4FB590(v8, &qword_27CD2EA48, &qword_21AA21658);
    v18 = v0[14];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask];
      *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
    }

    v21 = v0[37];
    v23 = v0[21];
    v22 = v0[22];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v7;
    v23(v7, v25, v24, 0);

    goto LABEL_10;
  }

  v9 = v0[14];
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask];
    *&v10[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
  }

  v12 = v0[34];
  v13 = v0[25];
  v14 = v0[26];
  sub_21A4F1408(v0[35], v12, &qword_27CD2EA48, &qword_21AA21658);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v15 = v0[37];
    v16 = v0[35];
    sub_21A4FB590(v0[34], &qword_27CD2EA48, &qword_21AA21658);
    sub_21A50B9E0();
    v7 = swift_allocError();
    *v17 = 0xD000000000000013;
    *(v17 + 8) = 0x800000021AA237C0;
    *(v17 + 16) = 2;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();
    v8 = v16;
    goto LABEL_7;
  }

  sub_21A50DA38(v0[34], v0[28]);
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v38 = v0[27];
  v39 = v0[28];
  v40 = sub_21A9ED25C();
  __swift_project_value_buffer(v40, qword_2811F8528);
  sub_21A50DAFC(v39, v38, type metadata accessor for UrsaResult);
  v41 = sub_21A9ED23C();
  v42 = sub_21A9ED41C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[27];
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68 = v46;
    *v45 = 136315138;
    v47 = sub_21A50A2A0();
    v49 = v48;
    sub_21A50DA9C(v44, type metadata accessor for UrsaResult);
    v50 = sub_21A50AF9C(v47, v49, &v68);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_21A4C6000, v41, v42, "periodic result: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x21CEDE430](v46, -1, -1);
    MEMORY[0x21CEDE430](v45, -1, -1);
  }

  else
  {

    sub_21A50DA9C(v44, type metadata accessor for UrsaResult);
  }

  v51 = v0[28];
  v52 = v0[37];
  v53 = v0[35];
  if (*(*v51 + 16))
  {
    v54 = v0[24];
    v67 = v0[35];
    v55 = v0[21];
    v56 = v0[22];
    v58 = v0[15];
    v57 = v0[16];
    v59 = *(v0[23] + 80);
    sub_21A50DAFC(*v51 + ((v59 + 32) & ~v59), v54, type metadata accessor for UrsaRadarData);
    sub_21A5066C4();
    v60 = sub_21A9ED26C();

    v55(0, v58, v57, v60);

    sub_21A50DA9C(v54, type metadata accessor for UrsaRadarData);
    sub_21A50DA9C(v51, type metadata accessor for UrsaResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();

    v61 = v67;
  }

  else
  {
    v63 = v0[21];
    v62 = v0[22];
    v65 = v0[15];
    v64 = v0[16];
    sub_21A50DCC8();
    v66 = sub_21A9ED3EC();
    v63(0, v65, v64, v66);

    sub_21A50DA9C(v51, type metadata accessor for UrsaResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();

    v61 = v53;
  }

  sub_21A4FB590(v61, &qword_27CD2EA48, &qword_21AA21658);
LABEL_10:
  v28 = v0[35];
  v27 = v0[36];
  v30 = v0[33];
  v29 = v0[34];
  v32 = v0[30];
  v31 = v0[31];
  v34 = v0[27];
  v33 = v0[28];
  v35 = v0[24];

  v36 = v0[1];

  return v36();
}

uint64_t sub_21A5080A0()
{
  v1 = *(v0 + 264);
  sub_21A50DA9C(*(v0 + 248), type metadata accessor for UrsaPeriodicRequest);
  sub_21A50DA9C(v1, type metadata accessor for UrsaMetadata);
  v2 = *(v0 + 320);

  v3 = *(v0 + 112);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask];
    *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
  }

  v6 = *(v0 + 296);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = v2;
  v8(v2, v10, v9, 0);

  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v15 = *(v0 + 264);
  v14 = *(v0 + 272);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 192);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21A508234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_21A5082D8;

  return MEMORY[0x282200480](300000000000);
}

uint64_t sub_21A5082D8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A508408, 0, 0);
  }
}

uint64_t sub_21A508408()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask);
    v4 = Strong;

    if (v3)
    {
      sub_21A9ED3AC();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21A5084D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v22;
  *(v8 + 168) = v21;
  *(v8 + 152) = v20;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v9 = type metadata accessor for UrsaResult(0);
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = type metadata accessor for UrsaTelemetryRequest(0);
  *(v8 + 224) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v14 = type metadata accessor for UrsaMetadata(0);
  *(v8 + 240) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA48, &qword_21AA21658) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A50869C, 0, 0);
}

uint64_t sub_21A50869C()
{
  v83 = v0;
  v1 = v0[34];
  v2 = v0[14];
  v3 = sub_21A9ED39C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v0[35] = sub_21A50452C(0, 0, v1, &unk_21AA21678, v6);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  v0[36] = v7;
  if (!v7)
  {
    (*(v0[25] + 56))(v0[33], 1, 1, v0[24]);
    sub_21A9ED3BC();
    v27 = v0[14];
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = *&v28[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask];
      *&v28[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
    }

    v30 = v0[32];
    v31 = v0[24];
    v32 = v0[25];
    sub_21A4F1408(v0[33], v30, &qword_27CD2EA48, &qword_21AA21658);
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      sub_21A50DA38(v0[32], v0[27]);
      if (qword_2811F2E20 != -1)
      {
        swift_once();
      }

      v53 = v0[26];
      v54 = v0[27];
      v55 = sub_21A9ED25C();
      __swift_project_value_buffer(v55, qword_2811F8528);
      sub_21A50DAFC(v54, v53, type metadata accessor for UrsaResult);
      v56 = sub_21A9ED23C();
      v57 = sub_21A9ED41C();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v0[26];
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v82[0] = v61;
        *v60 = 136315138;
        v62 = sub_21A50A2A0();
        v64 = v63;
        sub_21A50DA9C(v59, type metadata accessor for UrsaResult);
        v65 = sub_21A50AF9C(v62, v64, v82);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_21A4C6000, v56, v57, "telemetry result: %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x21CEDE430](v61, -1, -1);
        MEMORY[0x21CEDE430](v60, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v59, type metadata accessor for UrsaResult);
      }

      v66 = v0[35];
      v67 = v0[33];
      v68 = v0[27];
      v70 = v0[22];
      v69 = v0[23];
      v72 = v0[15];
      v71 = v0[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA68, &qword_21AA21680);
      v73 = swift_allocObject();
      v74 = MEMORY[0x277D837D0];
      *(v73 + 16) = xmmword_21AA21390;
      *(v73 + 56) = v74;
      *(v73 + 32) = 0x73736563637573;
      *(v73 + 40) = 0xE700000000000000;
      v75 = sub_21A4F0A88();
      *(v73 + 88) = MEMORY[0x277D839B0];
      *(v73 + 64) = v75 & 1;
      sub_21A50DCC8();
      v76 = sub_21A9ED3EC();
      v70(0, v72, v71, v76);

      sub_21A50DA9C(v68, type metadata accessor for UrsaResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
      sub_21A9ED3AC();

      sub_21A4FB590(v67, &qword_27CD2EA48, &qword_21AA21658);
      goto LABEL_17;
    }

    v33 = v0[35];
    v34 = v0[33];
    sub_21A4FB590(v0[32], &qword_27CD2EA48, &qword_21AA21658);
    sub_21A50B9E0();
    v12 = swift_allocError();
    *v35 = 0xD000000000000014;
    *(v35 + 8) = 0x800000021AA237A0;
    *(v35 + 16) = 2;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();
    sub_21A4FB590(v34, &qword_27CD2EA48, &qword_21AA21658);
LABEL_14:
    v36 = v0[14];
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      v38 = *&v37[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask];
      *&v37[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
    }

    v39 = v0[35];
    v41 = v0[22];
    v40 = v0[23];
    v43 = v0[15];
    v42 = v0[16];
    v44 = v12;
    v41(v12, v43, v42, 0);

LABEL_17:
    v46 = v0[33];
    v45 = v0[34];
    v48 = v0[31];
    v47 = v0[32];
    v49 = v0[29];
    v51 = v0[26];
    v50 = v0[27];

    v52 = v0[1];

    return v52();
  }

  v8 = v7;
  v9 = 0xEE00726F7272456CLL;
  v10 = 0x61636F4C74736574;
  if (v0[20] == 0x61636F4C74736574 && v0[21] == 0xEE00726F7272456CLL || (v11 = sub_21A9ED4AC(), v10 = v0[20], v9 = v0[21], (v11 & 1) != 0))
  {
    sub_21A9ED46C();

    v82[0] = 0xD00000000000001CLL;
    v82[1] = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v10, v9);
    sub_21A50B9E0();
    v12 = swift_allocError();
    *v13 = 0xD00000000000001CLL;
    *(v13 + 8) = 0x800000021AA23780;
    *(v13 + 16) = 0;
    swift_willThrow();

    goto LABEL_14;
  }

  v14 = v0[30];
  v15 = v0[31];
  v80 = v0[29];
  v81 = v0[28];
  v16 = v0[16];
  v78 = v0[17];
  v79 = v0[18];
  v17 = v0[15];
  v77 = sub_21A509AA0(v0[19]);
  v19 = v18;
  v20 = swift_task_alloc();
  v20[2] = v8;
  v20[3] = v17;
  v20[4] = v16;
  v20[5] = v10;
  v20[6] = v9;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED19C();

  v21 = swift_task_alloc();
  v21[2] = v15;
  v21[3] = v78;
  v21[4] = v79;
  v21[5] = v77;
  v21[6] = v19;
  sub_21A50D9F0(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);
  sub_21A9ED19C();

  v22 = *&v8[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_21A508FB4;
  v24 = v0[33];
  v25 = v0[29];

  return sub_21A50EC34(v24, v25, v22);
}

uint64_t sub_21A508FB4()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_21A509684;
  }

  else
  {
    v3 = sub_21A5090C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A5090C8()
{
  v61 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  sub_21A50DA9C(v3, type metadata accessor for UrsaTelemetryRequest);
  (*(v5 + 56))(v1, 0, 1, v4);
  sub_21A50DA9C(v2, type metadata accessor for UrsaMetadata);
  v6 = *(v0 + 304);
  sub_21A9ED3BC();
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 264);
LABEL_7:
    sub_21A4FB590(v8, &qword_27CD2EA48, &qword_21AA21658);
    v18 = *(v0 + 112);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask];
      *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
    }

    v21 = *(v0 + 280);
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v26 = v7;
    v23(v7, v25, v24, 0);

    goto LABEL_10;
  }

  v9 = *(v0 + 112);
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask];
    *&v10[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
  }

  v12 = *(v0 + 256);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_21A4F1408(*(v0 + 264), v12, &qword_27CD2EA48, &qword_21AA21658);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v15 = *(v0 + 280);
    v16 = *(v0 + 264);
    sub_21A4FB590(*(v0 + 256), &qword_27CD2EA48, &qword_21AA21658);
    sub_21A50B9E0();
    v7 = swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x800000021AA237A0;
    *(v17 + 16) = 2;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
    sub_21A9ED3AC();
    v8 = v16;
    goto LABEL_7;
  }

  sub_21A50DA38(*(v0 + 256), *(v0 + 216));
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  v38 = sub_21A9ED25C();
  __swift_project_value_buffer(v38, qword_2811F8528);
  sub_21A50DAFC(v37, v36, type metadata accessor for UrsaResult);
  v39 = sub_21A9ED23C();
  v40 = sub_21A9ED41C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 208);
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v60 = v44;
    *v43 = 136315138;
    v45 = sub_21A50A2A0();
    v47 = v46;
    sub_21A50DA9C(v42, type metadata accessor for UrsaResult);
    v48 = sub_21A50AF9C(v45, v47, &v60);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_21A4C6000, v39, v40, "telemetry result: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x21CEDE430](v44, -1, -1);
    MEMORY[0x21CEDE430](v43, -1, -1);
  }

  else
  {

    sub_21A50DA9C(v42, type metadata accessor for UrsaResult);
  }

  v49 = *(v0 + 280);
  v50 = *(v0 + 264);
  v51 = *(v0 + 216);
  v53 = *(v0 + 176);
  v52 = *(v0 + 184);
  v55 = *(v0 + 120);
  v54 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA68, &qword_21AA21680);
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D837D0];
  *(v56 + 16) = xmmword_21AA21390;
  *(v56 + 56) = v57;
  *(v56 + 32) = 0x73736563637573;
  *(v56 + 40) = 0xE700000000000000;
  v58 = sub_21A4F0A88();
  *(v56 + 88) = MEMORY[0x277D839B0];
  *(v56 + 64) = v58 & 1;
  sub_21A50DCC8();
  v59 = sub_21A9ED3EC();
  v53(0, v55, v54, v59);

  sub_21A50DA9C(v51, type metadata accessor for UrsaResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA40, &unk_21AA21648);
  sub_21A9ED3AC();

  sub_21A4FB590(v50, &qword_27CD2EA48, &qword_21AA21658);
LABEL_10:
  v28 = *(v0 + 264);
  v27 = *(v0 + 272);
  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  v31 = *(v0 + 232);
  v33 = *(v0 + 208);
  v32 = *(v0 + 216);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_21A509684()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);

  sub_21A50DA9C(v2, type metadata accessor for UrsaTelemetryRequest);
  sub_21A50DA9C(v1, type metadata accessor for UrsaMetadata);
  v3 = *(v0 + 304);
  v4 = *(v0 + 112);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask];
    *&Strong[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
  }

  v7 = *(v0 + 280);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = v3;
  v9(v3, v11, v10, 0);

  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  v17 = *(v0 + 232);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_21A509800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_21A5098A4;

  return MEMORY[0x282200480](300000000000);
}

uint64_t sub_21A5098A4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A5099D4, 0, 0);
  }
}

uint64_t sub_21A5099D4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask);
    v4 = Strong;

    if (v3)
    {
      sub_21A9ED3AC();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21A509AA0(uint64_t a1)
{
  v2 = sub_21A9ED30C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v5 = sub_21A9ED00C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_21A9ECFFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA50, &qword_21AA21660);
  sub_21A50DB64();
  v8 = sub_21A9ECFEC();
  v10 = v9;

  sub_21A9ED2FC();
  v11 = sub_21A9ED2EC();
  sub_21A50DBE0(v8, v10);
  return v11;
}

uint64_t sub_21A509DA8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UrsaMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A50DAFC(a3, v13, type metadata accessor for UrsaMetadata);
  sub_21A4F1654(v13);
  result = sub_21A4F16DC(a1);
  if (a5)
  {

    return sub_21A4F166C(a4, a5);
  }

  return result;
}

uint64_t sub_21A509E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *), uint64_t (*a8)(uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t))
{
  v16 = type metadata accessor for UrsaMetadata(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A50DAFC(a2, v20, type metadata accessor for UrsaMetadata);
  a7(v20);

  result = a8(a3, a4);
  if (a6)
  {

    return a9(a5, a6);
  }

  return result;
}

uint64_t sub_21A509F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_build);
  v12 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_build + 8);

  sub_21A4F0A10(v11, v12);
  v13 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_platformName);
  v14 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_platformName + 8);

  sub_21A4F0A40(v13, v14);
  v15 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_device);
  v16 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_device + 8);

  sub_21A4F0A28(v15, v16);
  v17 = a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_crKey;
  v18 = *(a2 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_crKey);
  v19 = *(v17 + 8);

  sub_21A4F09F8(v18, v19);

  sub_21A4F0A70(a3, a4);

  return sub_21A4F0A58(a5, a6);
}

id UrsaClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UrsaClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UrsaClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21A50A230()
{
  v0 = sub_21A9ED25C();
  __swift_allocate_value_buffer(v0, qword_2811F8528);
  __swift_project_value_buffer(v0, qword_2811F8528);
  return sub_21A9ED24C();
}

char *sub_21A50A2A0()
{
  v1 = v0;
  v2 = type metadata accessor for UrsaAdmissionResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UrsaRadarData(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v1 + 16);
  if (v12)
  {
    v13 = *v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v15 = MEMORY[0x277D84F90];
    do
    {
      sub_21A50DAFC(v13, v11, type metadata accessor for UrsaRadarData);
      v16 = sub_21A50A6AC();
      v18 = v17;
      sub_21A50DA9C(v11, type metadata accessor for UrsaRadarData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21A50AE90(0, *(v15 + 2) + 1, 1, v15);
      }

      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        v15 = sub_21A50AE90((v19 > 1), v20 + 1, 1, v15);
      }

      *(v15 + 2) = v20 + 1;
      v21 = &v15[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v37 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA28, qword_21AA21470);
  sub_21A50C2B8();
  v22 = sub_21A9ED2AC();
  v24 = v23;

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_21A9ED46C();
  MEMORY[0x21CEDBCA0](0x3A73736563637573, 0xE800000000000000);
  v25 = sub_21A4F0A88();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x21CEDBCA0](v27, v28);

  MEMORY[0x21CEDBCA0](0x3A727265202CLL, 0xE600000000000000);
  v36 = sub_21A4F0AD0();
  v29 = sub_21A9ED49C();
  MEMORY[0x21CEDBCA0](v29);

  MEMORY[0x21CEDBCA0](0x6E6F73616572202CLL, 0xE90000000000003ALL);
  v30 = sub_21A4F0B04();
  MEMORY[0x21CEDBCA0](v30);

  MEMORY[0x21CEDBCA0](0x616F6C796170202CLL, 0xEA00000000003A64);
  v31 = sub_21A4F0BC4();
  MEMORY[0x21CEDBCA0](v31);

  MEMORY[0x21CEDBCA0](0x3A74696D6461202CLL, 0xE90000000000007BLL);
  v32 = v35;
  sub_21A4F0C84(v35);
  v33 = sub_21A50AA88();
  MEMORY[0x21CEDBCA0](v33);

  sub_21A50DA9C(v32, type metadata accessor for UrsaAdmissionResult);
  MEMORY[0x21CEDBCA0](0x7B3A6472207DLL, 0xE600000000000000);
  MEMORY[0x21CEDBCA0](v22, v24);

  MEMORY[0x21CEDBCA0](125, 0xE100000000000000);
  return v37;
}

uint64_t sub_21A50A6AC()
{
  *&v18[8] = 0;
  sub_21A9ED46C();
  sub_21A4F10E0();
  v0 = sub_21A9ED49C();
  MEMORY[0x21CEDBCA0](v0);

  MEMORY[0x21CEDBCA0](8250, 0xE200000000000000);
  v1 = sub_21A4F123C();
  MEMORY[0x21CEDBCA0](v1);

  MEMORY[0x21CEDBCA0](32, 0xE100000000000000);
  v2 = sub_21A4F1224();
  MEMORY[0x21CEDBCA0](v2);

  MEMORY[0x21CEDBCA0](0x206D6F726620, 0xE600000000000000);
  sub_21A4F116C();
  sub_21A9ED3DC();
  MEMORY[0x21CEDBCA0](45, 0xE100000000000000);
  sub_21A4F1184();
  sub_21A9ED3DC();
  MEMORY[0x21CEDBCA0](32, 0xE100000000000000);
  *v18 = sub_21A4F1118();
  v3 = sub_21A9ED49C();
  MEMORY[0x21CEDBCA0](v3);

  MEMORY[0x21CEDBCA0](0x3A746968202C25, 0xE700000000000000);
  v4 = sub_21A4F119C();
  MEMORY[0x21CEDBCA0](v4);

  MEMORY[0x21CEDBCA0](0x3A6465786966202CLL, 0xE800000000000000);
  v5 = sub_21A4F11B4();
  MEMORY[0x21CEDBCA0](v5);

  MEMORY[0x21CEDBCA0](0x636974697263202CLL, 0xEB000000003A6C61);
  v6 = sub_21A4F11CC();
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x21CEDBCA0](v8, v9);

  MEMORY[0x21CEDBCA0](0x6E6F69746361202CLL, 0xE90000000000003ALL);
  v10 = sub_21A4F1254();
  MEMORY[0x21CEDBCA0](v10);

  MEMORY[0x21CEDBCA0](0x616F6C796170202CLL, 0xEA00000000003A64);
  v11 = sub_21A4F12A8();
  MEMORY[0x21CEDBCA0](v11);

  MEMORY[0x21CEDBCA0](0x3A656C746974202CLL, 0xE900000000000020);
  v12 = sub_21A4F11F4();
  MEMORY[0x21CEDBCA0](v12);

  MEMORY[0x21CEDBCA0](0x203A67736D202CLL, 0xE700000000000000);
  v13 = sub_21A4F120C();
  MEMORY[0x21CEDBCA0](v13);

  MEMORY[0x21CEDBCA0](0x6F6C796150736120, 0xEB000000003A6461);
  sub_21A5066C4();
  v14 = sub_21A9ED28C();
  v16 = v15;

  MEMORY[0x21CEDBCA0](v14, v16);

  return *&v18[4];
}

uint64_t sub_21A50AA88()
{
  sub_21A9ED46C();
  MEMORY[0x21CEDBCA0](0x3A74696D6461, 0xE600000000000000);
  v0 = sub_21A4F0E9C();
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x21CEDBCA0](v2, v3);

  MEMORY[0x21CEDBCA0](0x746361706D69202CLL, 0xE90000000000003ALL);
  sub_21A4F0EC4();
  v4 = sub_21A9ED49C();
  MEMORY[0x21CEDBCA0](v4);

  MEMORY[0x21CEDBCA0](0x3A636F7270202CLL, 0xE700000000000000);
  v5 = sub_21A4F0EDC();
  MEMORY[0x21CEDBCA0](v5);

  MEMORY[0x21CEDBCA0](0x6E6F706D6F63202CLL, 0xEC0000003A746E65);
  v6 = sub_21A4F0F9C();
  MEMORY[0x21CEDBCA0](v6);

  MEMORY[0x21CEDBCA0](124, 0xE100000000000000);
  v7 = sub_21A4F0FB4();
  MEMORY[0x21CEDBCA0](v7);

  MEMORY[0x21CEDBCA0](15917, 0xE200000000000000);
  v8 = sub_21A4F0FCC();
  MEMORY[0x21CEDBCA0](v8);

  MEMORY[0x21CEDBCA0](0x616F6C796170202CLL, 0xEA00000000003A64);
  v9 = sub_21A4F108C();
  MEMORY[0x21CEDBCA0](v9);

  return 0;
}

uint64_t sub_21A50ACA0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A50AD98;

  return v7(a1);
}

uint64_t sub_21A50AD98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_21A50AE90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA38, &qword_21AA21640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21A50AF9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21A50B068(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_21A50D830(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21A50B068(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21A50B174(a5, a6);
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
    result = sub_21A9ED47C();
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

uint64_t sub_21A50B174(uint64_t a1, unint64_t a2)
{
  v4 = sub_21A50B1C0(a1, a2);
  sub_21A50B2F0(&unk_282B5A188);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21A50B1C0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21A50B3DC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21A9ED47C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21A9ED34C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21A50B3DC(v10, 0);
        result = sub_21A9ED45C();
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

uint64_t sub_21A50B2F0(uint64_t result)
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

  result = sub_21A50B450(result, v12, 1, v3);
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

void *sub_21A50B3DC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA80, &unk_21AA216D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21A50B450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA80, &unk_21AA216D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_21A50B5B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21A9ED51C();
  sub_21A9ED32C();
  v6 = sub_21A9ED52C();

  return sub_21A50B62C(a1, a2, v6);
}

unint64_t sub_21A50B62C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21A9ED4AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21A50B6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA78, &qword_21AA216C8);
    v3 = sub_21A9ED48C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21A50B5B4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21A50B7F8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21A50DFCC;

  return sub_21A5048FC(v9, v10, v11, v2, v3, v4, v5, v6);
}

unint64_t sub_21A50B8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA70, &qword_21AA21698);
    v3 = sub_21A9ED48C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A50B5B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A50B9E0()
{
  result = qword_27CD315D8[0];
  if (!qword_27CD315D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD315D8);
  }

  return result;
}

uint64_t sub_21A50BA34()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v13 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21A50DFCC;

  return sub_21A506B98(v5, v9, v10, v11, v2, v3, v4, v6, v7);
}

uint64_t sub_21A50BB24()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  v7 = *(v0 + 104);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21A50DFCC;

  return sub_21A5084D4(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_21A50BC10()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A50DFCC;

  return sub_21A4FD918(v3, v4, v5, v2);
}

uint64_t sub_21A50BCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v51 = a4;
  v52 = a1;
  v53 = a3;
  v54 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v51 - v13;
  v15 = sub_21A9ED07C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  _Block_copy(a7);
  sub_21A9ED06C();
  v22 = sub_21A9ED05C();
  v24 = v23;
  (*(v16 + 8))(v20, v15);
  v25 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (!a5)
  {
    if (*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask;
    if (*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask))
    {

      v27 = &unk_282B5A1E8;
      goto LABEL_9;
    }

    v42 = 1635018082;
    if (!*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v42 = 0x67616C466F6ELL;
    }

    v51 = v42;
    v43 = sub_21A9ED39C();
    (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v45[5] = v22;
    v46 = v51;
    v47 = v52;
    v45[6] = v24;
    v45[7] = v47;
    v45[8] = v54;
    v45[9] = v25;
    v45[10] = v46;
    v45[11] = v28;
    v45[12] = sub_21A50DFD0;
    v45[13] = v21;
    v45[14] = v53;

    v48 = sub_21A506898(0, 0, v14, &unk_21AA21630, v45);
    v49 = *(a6 + v29);
    *(a6 + v29) = v48;
LABEL_14:
  }

  v26 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask;
  if (!*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask))
  {
    v35 = sub_21A9ED39C();
    (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v36;
    v37[5] = v22;
    v38 = v51;
    v39 = v52;
    v37[6] = v24;
    v37[7] = v39;
    v37[8] = v54;
    v37[9] = v25;
    v37[10] = v38;
    v37[11] = a5;
    v37[12] = sub_21A50DFD0;
    v37[13] = v21;
    v37[14] = v53;

    v40 = sub_21A506898(0, 0, v14, &unk_21AA21638, v37);
    v41 = *(a6 + v26);
    *(a6 + v26) = v40;
    goto LABEL_14;
  }

  v27 = &unk_282B5A1B0;
LABEL_9:
  sub_21A50B8E4(v27);
  sub_21A4FB590(v27 + 32, &qword_27CD2E9F8, &qword_21AA213E8);
  sub_21A50B9E0();
  v30 = swift_allocError();
  *v31 = xmmword_21AA21370;
  *(v31 + 16) = 1;
  v32 = sub_21A9ED26C();

  v33 = sub_21A9ED01C();
  v34 = sub_21A9ED2CC();
  (a7)[2](a7, v33, v34, v32);
}

unint64_t sub_21A50C188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA20, &qword_21AA21468);
    v3 = sub_21A9ED48C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21A4F1408(v4, &v13, &qword_27CD2EA18, &qword_21AA21460);
      v5 = v13;
      v6 = v14;
      result = sub_21A50B5B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21A50D820(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A50C2B8()
{
  result = qword_27CD2EA30;
  if (!qword_27CD2EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD2EA28, qword_21AA21470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD2EA30);
  }

  return result;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A50C384(uint64_t a1, unsigned int a2)
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

uint64_t sub_21A50C3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A50C428()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A50C4BC;

  return sub_21A4FD918(v3, v4, v5, v2);
}

uint64_t sub_21A50C4BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21A50C5B0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void, void), double a5)
{
  v49 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v48 - v12;
  v14 = sub_21A9ED07C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  _Block_copy(a4);
  sub_21A9ED06C();
  v21 = sub_21A9ED05C();
  v23 = v22;
  (*(v15 + 8))(v19, v14);
  v24 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (a2)
  {
    v25 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask;
    if (!*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
    {
      v26 = v24;
      v27 = sub_21A9ED39C();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v28;
      *(v29 + 40) = v21;
      *(v29 + 48) = v23;
      *(v29 + 56) = a5;
      v30 = v49;
      *(v29 + 64) = v26;
      *(v29 + 72) = v30;
      *(v29 + 80) = a2;
      *(v29 + 88) = sub_21A50DFD0;
      *(v29 + 96) = v20;

      v31 = sub_21A506898(0, 0, v13, &unk_21AA21628, v29);
      v32 = *(a3 + v25);
      *(a3 + v25) = v31;
LABEL_13:
    }
  }

  else
  {
    if (*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE600000000000000;
    }

    v34 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask;
    if (!*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
    {
      v39 = 1635018082;
      if (!*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
      {
        v39 = 0x67616C466F6ELL;
      }

      v49 = v39;
      v40 = v24;
      v41 = sub_21A9ED39C();
      (*(*(v41 - 8) + 56))(v13, 1, 1, v41);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v42;
      *(v43 + 40) = v21;
      *(v43 + 48) = v23;
      *(v43 + 56) = a5;
      v44 = v49;
      *(v43 + 64) = v40;
      *(v43 + 72) = v44;
      *(v43 + 80) = v33;
      *(v43 + 88) = sub_21A50DFD0;
      *(v43 + 96) = v20;

      v45 = sub_21A506898(0, 0, v13, &unk_21AA21620, v43);
      v46 = *(a3 + v34);
      *(a3 + v34) = v45;
      goto LABEL_13;
    }
  }

  sub_21A50B9E0();
  v35 = swift_allocError();
  *v36 = xmmword_21AA21380;
  *(v36 + 16) = 1;
  v37 = sub_21A9ED01C();
  v38 = sub_21A9ED2CC();
  (a4)[2](a4, v37, v38, 0);
}

uint64_t sub_21A50CA14(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v38 - v11;
  v13 = sub_21A9ED07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  _Block_copy(a4);
  sub_21A9ED06C();
  v39 = sub_21A9ED05C();
  v21 = v20;
  (*(v14 + 8))(v18, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA21390;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v23 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
  if (*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE600000000000000;
  }

  v25 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {

    sub_21A50B9E0();
    v26 = swift_allocError();
    *v27 = xmmword_21AA213A0;
    *(v27 + 16) = 1;
    v28 = sub_21A9ED01C();
    v29 = sub_21A9ED2CC();
    (a4)[2](a4, v28, v29, 0);
  }

  else
  {
    if (*(a3 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v30 = 1635018082;
    }

    else
    {
      v30 = 0x67616C466F6ELL;
    }

    v31 = sub_21A9ED39C();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v34 = v39;
    *(v33 + 32) = v32;
    *(v33 + 40) = v34;
    *(v33 + 48) = v21;
    strcpy((v33 + 56), "tap-to-radar");
    *(v33 + 69) = 0;
    *(v33 + 70) = -5120;
    *(v33 + 72) = v23;
    *(v33 + 80) = v30;
    *(v33 + 88) = v24;
    *(v33 + 96) = sub_21A50DFD0;
    *(v33 + 104) = v19;

    v35 = sub_21A506898(0, 0, v12, &unk_21AA21618, v33);
    v36 = *(a3 + v25);
    *(a3 + v25) = v35;
  }
}

uint64_t sub_21A50CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v43 = &v42 - v15;
  v16 = sub_21A9ED07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  _Block_copy(a6);
  sub_21A9ED06C();
  v44 = sub_21A9ED05C();
  v45 = v23;
  (*(v17 + 8))(v21, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA213B0;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x656372756F73;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = a3;
  *(inited + 88) = a4;

  v25 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA08, &qword_21AA21418);
  swift_arrayDestroy();
  if (*(a5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE600000000000000;
  }

  v27 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(a5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {

    sub_21A50B9E0();
    v28 = swift_allocError();
    *v29 = xmmword_21AA213A0;
    *(v29 + 16) = 1;
    v30 = sub_21A9ED01C();
    v31 = sub_21A9ED2CC();
    (a6)[2](a6, v30, v31, 0);
  }

  else
  {
    if (*(a5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v32 = 1635018082;
    }

    else
    {
      v32 = 0x67616C466F6ELL;
    }

    v33 = sub_21A9ED39C();
    v34 = v43;
    (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v37 = v44;
    v38 = v45;
    *(v36 + 32) = v35;
    *(v36 + 40) = v37;
    *(v36 + 48) = v38;
    strcpy((v36 + 56), "powerException");
    *(v36 + 71) = -18;
    *(v36 + 72) = v25;
    *(v36 + 80) = v32;
    *(v36 + 88) = v26;
    *(v36 + 96) = sub_21A50DFD0;
    *(v36 + 104) = v22;

    v39 = sub_21A506898(0, 0, v34, &unk_21AA21610, v36);
    v40 = *(a5 + v27);
    *(a5 + v27) = v39;
  }
}

uint64_t sub_21A50D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v49 = a4;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v49 - v13;
  v15 = sub_21A9ED07C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  _Block_copy(a7);
  sub_21A9ED06C();
  v22 = sub_21A9ED05C();
  v24 = v23;
  (*(v16 + 8))(v20, v15);
  if (a5)
  {
    v25 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
    if (!*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
    {
      v26 = sub_21A9ED39C();
      (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v27;
      v28[5] = v22;
      v29 = v49;
      v30 = v50;
      v28[6] = v24;
      v28[7] = v30;
      v31 = v52;
      v28[8] = v51;
      v28[9] = v31;
      v28[10] = v29;
      v28[11] = a5;
      v28[12] = sub_21A50D654;
      v28[13] = v21;

      v32 = sub_21A506898(0, 0, v14, &unk_21AA21608, v28);
      v33 = *(a6 + v25);
      *(a6 + v25) = v32;
LABEL_14:
    }
  }

  else
  {
    if (*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE600000000000000;
    }

    v35 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
    if (!*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
    {
      if (*(a6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
      {
        v40 = 1635018082;
      }

      else
      {
        v40 = 0x67616C466F6ELL;
      }

      v41 = sub_21A9ED39C();
      (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v42;
      v43[5] = v22;
      v44 = v50;
      v43[6] = v24;
      v43[7] = v44;
      v45 = v52;
      v43[8] = v51;
      v43[9] = v45;
      v43[10] = v40;
      v43[11] = v34;
      v43[12] = sub_21A50D654;
      v43[13] = v21;

      v46 = sub_21A506898(0, 0, v14, &unk_21AA21600, v43);
      v47 = *(a6 + v35);
      *(a6 + v35) = v46;
      goto LABEL_14;
    }
  }

  sub_21A50B9E0();
  v36 = swift_allocError();
  *v37 = xmmword_21AA213A0;
  *(v37 + 16) = 1;
  v38 = sub_21A9ED01C();
  v39 = sub_21A9ED2CC();
  (a7)[2](a7, v38, v39, 0);
}

uint64_t sub_21A50D65C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  v7 = *(v0 + 104);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21A50C4BC;

  return sub_21A5084D4(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_18Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[6];

  v6 = v1[8];

  v7 = v1[9];

  v8 = v1[11];

  v9 = v1[13];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

_OWORD *sub_21A50D820(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21A50D830(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A50D92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA48, &qword_21AA21658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A50D9F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A50DA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A50DA9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A50DAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A50DB64()
{
  result = qword_27CD2EA58;
  if (!qword_27CD2EA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD2EA50, &qword_21AA21660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD2EA58);
  }

  return result;
}

uint64_t sub_21A50DBE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21A50DC34()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A50DFCC;

  return sub_21A509800(v3, v4, v5, v2);
}

unint64_t sub_21A50DCC8()
{
  result = qword_2811F2BC8;
  if (!qword_2811F2BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811F2BC8);
  }

  return result;
}

uint64_t sub_21A50DD14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A50DFCC;

  return sub_21A508234(v3, v4, v5, v2);
}

uint64_t sub_21A50DDA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A50DFCC;

  return sub_21A50ACA0(a1, v5);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21A50DEA0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A50DFCC;

  return sub_21A506424(v3, v4, v5, v2);
}

uint64_t sub_21A50E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA88, &qword_21AA216E8) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A50E0BC, 0, 0);
}

uint64_t sub_21A50E0BC()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_21A50F4C8(v0[3], v1, type metadata accessor for UrsaAdmissionRequest);
  v3 = type metadata accessor for UrsaAdmissionRequest(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA90, &qword_21AA216F0));
  v5 = sub_21A9ED09C();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = type metadata accessor for UrsaResult(0);
  *v9 = v0;
  v9[1] = sub_21A50E274;
  v11 = v0[2];

  return MEMORY[0x282200830](v11, &unk_21AA21700, v6, sub_21A51013C, v7, 0, 0, v10);
}

uint64_t sub_21A50E274()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_21A510138;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_21A510134;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A50E398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A50E3BC, 0, 0);
}

uint64_t sub_21A50E3BC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for UrsaResult(0);
  *v3 = v0;
  v3[1] = sub_21A50E4B8;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x6F697373696D6461, 0xED0000293A5F286ELL, sub_21A50FFF8, v1, v4);
}

uint64_t sub_21A50E4B8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A510144, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21A50E5F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A50DFCC;

  return sub_21A50E398(a1, v5, v4);
}

uint64_t sub_21A50E6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA98, &qword_21AA21710) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A50E740, 0, 0);
}

uint64_t sub_21A50E740()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_21A50F4C8(v0[3], v1, type metadata accessor for UrsaPeriodicRequest);
  v3 = type metadata accessor for UrsaPeriodicRequest(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAA0, &qword_21AA21718));
  v5 = sub_21A9ED09C();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = type metadata accessor for UrsaResult(0);
  *v9 = v0;
  v9[1] = sub_21A50E274;
  v11 = v0[2];

  return MEMORY[0x282200830](v11, &unk_21AA21728, v6, sub_21A51013C, v7, 0, 0, v10);
}

uint64_t sub_21A50E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A50E918, 0, 0);
}

uint64_t sub_21A50E918()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for UrsaResult(0);
  *v3 = v0;
  v3[1] = sub_21A50E4B8;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x6369646F69726570, 0xEC000000293A5F28, sub_21A50FFAC, v1, v4);
}

uint64_t sub_21A50EA10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A50DFCC;

  return sub_21A50E8F4(a1, v5, v4);
}

uint64_t sub_21A50EABC(uint64_t a1)
{
  v2 = type metadata accessor for UrsaResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAE0, &unk_21AA21820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v13 - v10);
  sub_21A4F1408(a1, v13 - v10, &qword_27CD2EAE0, &unk_21AA21820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[1] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAD8, &qword_21AA21818);
    return sub_21A9ED36C();
  }

  else
  {
    sub_21A50FF44(v11, v6, type metadata accessor for UrsaResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAD8, &qword_21AA21818);
    return sub_21A9ED37C();
  }
}

uint64_t sub_21A50EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAA8, &qword_21AA21738) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A50ECD4, 0, 0);
}

uint64_t sub_21A50ECD4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_21A50F4C8(v0[3], v1, type metadata accessor for UrsaTelemetryRequest);
  v3 = type metadata accessor for UrsaTelemetryRequest(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAB0, &qword_21AA21740));
  v5 = sub_21A9ED09C();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = type metadata accessor for UrsaResult(0);
  *v9 = v0;
  v9[1] = sub_21A50E274;
  v11 = v0[2];

  return MEMORY[0x282200830](v11, &unk_21AA21750, v6, sub_21A51013C, v7, 0, 0, v10);
}

uint64_t sub_21A50EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A50EEB0, 0, 0);
}

uint64_t sub_21A50EEB0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for UrsaResult(0);
  *v3 = v0;
  v3[1] = sub_21A50E4B8;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x7274656D656C6574, 0xED0000293A5F2879, sub_21A50FEFC, v1, v4);
}

uint64_t sub_21A50EFAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A50DFCC;

  return sub_21A50EE8C(a1, v5, v4);
}

uint64_t sub_21A50F058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAB8, &qword_21AA21760) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A50F0F8, 0, 0);
}

uint64_t sub_21A50F0F8()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_21A50F4C8(v0[3], v1, type metadata accessor for UrsaRequest);
  v3 = type metadata accessor for UrsaRequest(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAC0, &qword_21AA21768));
  v5 = sub_21A9ED09C();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = type metadata accessor for UrsaResponse(0);
  *v9 = v0;
  v9[1] = sub_21A50F2B0;
  v11 = v0[2];

  return MEMORY[0x282200830](v11, &unk_21AA21778, v6, sub_21A50FB58, v7, 0, 0, v10);
}

uint64_t sub_21A50F2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_21A50F440;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_21A50F3D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A50F3D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A50F440()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4();
}

uint64_t sub_21A50F4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A50F530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A50F554, 0, 0);
}

uint64_t sub_21A50F554()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for UrsaResponse(0);
  *v3 = v0;
  v3[1] = sub_21A50F650;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x725574696D627573, 0xEE00293A5F286173, sub_21A50FE38, v1, v4);
}

uint64_t sub_21A50F650()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A50F78C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21A50F78C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21A50F7F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A50C4BC;

  return sub_21A50F530(a1, v5, v4);
}

uint64_t sub_21A50F89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v11, v6);
  sub_21A9ED08C();
  return sub_21A9ED3FC();
}

uint64_t sub_21A50F9E0(uint64_t a1)
{
  v2 = type metadata accessor for UrsaResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAD0, &qword_21AA21810);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v13 - v10);
  sub_21A4F1408(a1, v13 - v10, &qword_27CD2EAD0, &qword_21AA21810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[1] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAC8, &qword_21AA21808);
    return sub_21A9ED36C();
  }

  else
  {
    sub_21A50FF44(v11, v6, type metadata accessor for UrsaResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAC8, &qword_21AA21808);
    return sub_21A9ED37C();
  }
}

uint64_t sub_21A50FB68(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A50DFCC;

  return sub_21A50E01C(a1, a2, v6);
}

uint64_t sub_21A50FC18(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A50DFCC;

  return sub_21A50E6A0(a1, a2, v6);
}

uint64_t sub_21A50FCC8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A50DFCC;

  return sub_21A50EC34(a1, a2, v6);
}

uint64_t sub_21A50FD78(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A50C4BC;

  return sub_21A50F058(a1, a2, v6);
}

uint64_t sub_21A50FE80(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EAC8, &qword_21AA21808) - 8) + 80);

  return sub_21A50F9E0(a1);
}

uint64_t sub_21A50FF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void SetAPIErrorMessage(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  if (!GlobalAPIErrorMessage)
  {
    GlobalAPIErrorMessage = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
    vsnprintf(__str, 0x400uLL, a1, &a9);
    snprintf(GlobalAPIErrorMessage, 0x400uLL, "%s", __str);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ASPParseBufferToCxt(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  *(a1 + 36) = -1;
  if (a3 < 8)
  {
    return 0;
  }

  v6 = a3 >> 3;
  while (2)
  {
    v9 = *a2;
    v8 = a2 + 1;
    v7 = v9;
    v10 = HIDWORD(v9);
    v11 = v6 - 1;
    if (v9 > 0x30000000 || v11 < v10)
    {
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }

    switch(v7)
    {
      case 1:
        v13 = *v8;
        v14 = "version";
        goto LABEL_77;
      case 2:
        v13 = *v8;
        v14 = "hostWriteXacts";
        goto LABEL_77;
      case 3:
        v13 = *v8;
        v14 = "hostReadXacts";
        goto LABEL_77;
      case 4:
        v13 = *v8;
        *(a1 + 72) = *v8;
        v14 = "hostWrites";
        goto LABEL_77;
      case 5:
        v13 = *v8;
        v14 = "hostWritesDyn";
        goto LABEL_77;
      case 6:
        v13 = *v8;
        v14 = "hostWritesStatic";
        goto LABEL_77;
      case 7:
        v13 = *v8;
        *(a1 + 64) = *v8;
        v14 = "hostReads";
        goto LABEL_77;
      case 8:
        v13 = *v8;
        v14 = "validLbas";
        goto LABEL_77;
      case 9:
        v13 = *v8;
        v14 = "shutdowns";
        goto LABEL_77;
      case 10:
        v13 = *v8;
        v14 = "boots";
        goto LABEL_77;
      case 11:
        v13 = *v8;
        v14 = "uncleanBoots";
        goto LABEL_77;
      case 12:
        v13 = *v8;
        *(a1 + 144) = *v8;
        v14 = "IND_pool_free";
        goto LABEL_77;
      case 13:
        v13 = *v8;
        *(a1 + 152) = *v8;
        v14 = "IND_pool_count";
        goto LABEL_77;
      case 14:
        v15 = "hostWriteLogHisto";
        v16 = a1;
        v17 = 14;
        goto LABEL_44;
      case 15:
        v15 = "hostReadLogHisto";
        v16 = a1;
        v17 = 15;
LABEL_44:
        v18 = v8;
        v19 = 10;
        goto LABEL_51;
      case 16:
        v13 = *v8;
        v14 = "gcWrites";
        goto LABEL_77;
      case 17:
        v13 = *v8;
        *(a1 + 88) = *v8;
        v14 = "wearLevMoves";
        goto LABEL_77;
      case 18:
        v13 = *v8;
        *(a1 + 104) = *v8;
        v14 = "nandWrites";
        goto LABEL_77;
      case 19:
        v13 = *v8;
        *(a1 + 96) = *v8;
        v14 = "nandReads";
        goto LABEL_77;
      case 20:
        v13 = *v8;
        *(a1 + 112) = *v8;
        v14 = "bandErases";
        goto LABEL_77;
      case 22:
        v13 = *v8;
        v14 = "numPfail";
        goto LABEL_77;
      case 23:
        v13 = *v8;
        v14 = "numEfail";
        goto LABEL_77;
      case 24:
        v13 = *v8;
        v14 = "numPerformanceRefreshes";
        goto LABEL_77;
      case 27:
        v13 = *v8;
        v14 = "hostWritesMeta";
        goto LABEL_77;
      case 28:
        v13 = *v8;
        *(a1 + 168) = *v8;
        v14 = "numSleepOps";
        goto LABEL_77;
      case 30:
        v13 = *v8;
        v14 = "cntTimeWentBackWardOnBoot";
        goto LABEL_77;
      case 31:
        v13 = *v8;
        v14 = "cntTimeWentBackWard";
        goto LABEL_77;
      case 34:
        v13 = *v8;
        v14 = "powerOnHours";
        goto LABEL_77;
      case 36:
        v13 = *v8;
        v14 = "smartCritWarnings";
        goto LABEL_77;
      case 37:
        v13 = *v8;
        v14 = "numFlushes";
        goto LABEL_77;
      case 38:
        v13 = *v8;
        v14 = "numUnmap";
        goto LABEL_77;
      case 39:
        v13 = *v8;
        v14 = "numUnmapSec";
        goto LABEL_77;
      case 41:
        v13 = *v8;
        v14 = "clogProgram";
        goto LABEL_77;
      case 42:
        v13 = *v8;
        v14 = "clogPFail";
        goto LABEL_77;
      case 43:
        v13 = *v8;
        v14 = "clogRead";
        goto LABEL_77;
      case 44:
        v13 = *v8;
        v14 = "clogRFail";
        goto LABEL_77;
      case 45:
        v13 = *v8;
        *(a1 + 176) = *v8;
        v14 = "maxHighEnduranceBlockErases";
        goto LABEL_77;
      case 46:
        v13 = *v8;
        v14 = "numFactoryBad";
        goto LABEL_77;
      case 47:
        v13 = *v8;
        v14 = "numGrownBad";
        goto LABEL_77;
      case 48:
        v13 = *v8;
        *(a1 + 80) = *v8;
        v14 = "numFreeVirtualBlocks";
        goto LABEL_77;
      case 49:
        v13 = *v8;
        *(a1 + 56) = *v8;
        v14 = "bytesPerPage";
        goto LABEL_77;
      case 50:
        v13 = *v8;
        *(a1 + 52) = *v8;
        v14 = "pagesPerVirtualBlock";
        goto LABEL_77;
      case 51:
        v13 = *v8;
        *(a1 + 48) = *v8;
        v14 = "blocksPerVirtualBlock";
        goto LABEL_77;
      case 52:
        v13 = *v8;
        *(a1 + 44) = *v8;
        v14 = "numVirtualBlocks";
        goto LABEL_77;
      case 53:
        v13 = *v8;
        *(a1 + 32) = *v8;
        v14 = "exportVersion";
        goto LABEL_77;
      case 54:
        v15 = "ECBins";
        v16 = a1;
        v17 = 54;
        goto LABEL_50;
      case 55:
        v15 = "RCBins";
        v16 = a1;
        v17 = 55;
LABEL_50:
        v18 = v8;
        v19 = 100;
        goto LABEL_51;
      case 56:
        v13 = *v8;
        *(a1 + 160) = *v8;
        v14 = "utilFormatTime";
        goto LABEL_77;
      case 57:
        v13 = *v8;
        v14 = "calendarTime";
        goto LABEL_77;
      case 58:
        v13 = *v8;
        v14 = "wallTime";
        goto LABEL_77;
      case 59:
        v13 = *v8;
        v14 = "cmdq_flush_us";
        goto LABEL_77;
      case 60:
        v13 = *v8;
        v14 = "cmdq_unmap_us";
        goto LABEL_77;
      case 61:
        v13 = *v8;
        v14 = "cmdq_pri0_r_us";
        goto LABEL_77;
      case 62:
        v13 = *v8;
        v14 = "cmdq_pri0_w_us";
        goto LABEL_77;
      case 63:
        v13 = *v8;
        v14 = "cmdq_pri1_r_us";
        goto LABEL_77;
      case 64:
        v13 = *v8;
        v14 = "cmdq_pri1_w_us";
        goto LABEL_77;
      case 65:
        v13 = *v8;
        v14 = "cmdq_pri2_r_us";
        goto LABEL_77;
      case 66:
        v13 = *v8;
        v14 = "cmdq_pri2_w_us";
        goto LABEL_77;
      case 67:
        v13 = *v8;
        v14 = "cmdq_pri3_r_us";
        goto LABEL_77;
      case 68:
        v13 = *v8;
        v14 = "cmdq_pri3_w_us";
        goto LABEL_77;
      case 69:
        v13 = *v8;
        v14 = "host_idle_ms";
        goto LABEL_77;
      case 70:
        v13 = *v8;
        v14 = "cmd_hysteresis_window_us";
        goto LABEL_77;
      case 71:
        v13 = *v8;
        v14 = "cmd_lowPriHoldoffDelay_us";
        goto LABEL_77;
      case 72:
        v13 = *v8;
        v14 = "cmd_lowPriHoldoffEnabled";
LABEL_77:
        v20 = a1;
        goto LABEL_78;
      default:
        switch(v7)
        {
          case 73:
            v13 = *v8;
            v14 = "cmd_expedite_num_success";
            goto LABEL_77;
          case 75:
            v13 = *v8;
            v14 = "cmd_expedite_num_failures";
            goto LABEL_77;
          case 76:
            v13 = *v8;
            v14 = "num_trimerase";
            goto LABEL_77;
          case 77:
            v13 = *v8;
            v14 = "staticSizeInMB";
            goto LABEL_77;
          case 80:
            v13 = *v8;
            v14 = "slcInvalidations";
            goto LABEL_77;
          case 81:
            v13 = *v8;
            v14 = "slcGCInvalidations";
            goto LABEL_77;
          case 82:
            v13 = *v8;
            v14 = "hostSectorsDuringGCon";
            goto LABEL_77;
          case 83:
            v13 = *v8;
            v14 = "highWaterMarkSLCUsed";
            goto LABEL_77;
          case 84:
            v13 = *v8;
            v14 = "intermediateBandErases";
            goto LABEL_77;
          case 85:
            v13 = *v8;
            v14 = "intermediatePartitionStart";
            goto LABEL_77;
          case 86:
            v13 = *v8;
            v14 = "userPartitionStart";
            goto LABEL_77;
          case 87:
            v13 = *v8;
            v14 = "iolog_lbas";
            goto LABEL_77;
          case 88:
            v15 = "bandsAgeBins";
            v16 = a1;
            v17 = 88;
            goto LABEL_44;
          case 89:
            v15 = "intermediateBandsAgeBins";
            v16 = a1;
            v17 = 89;
            goto LABEL_44;
          case 90:
            v15 = "qosPerCmdQ";
            v16 = a1;
            v17 = 90;
            v18 = v8;
            v19 = 160;
            goto LABEL_51;
          case 91:
            v15 = "maxQosPerCmdQ";
            v16 = a1;
            v17 = 91;
            goto LABEL_44;
          case 92:
            v13 = *v8;
            v14 = "shutdownDuringGC";
            goto LABEL_77;
          case 93:
            v15 = "numBandsRefreshedForAgePerTier";
            v16 = a1;
            v17 = 93;
LABEL_130:
            v18 = v8;
            v19 = 3;
            goto LABEL_51;
          case 94:
            v15 = "bdrDeltaHot";
            v16 = a1;
            v17 = 94;
            goto LABEL_93;
          case 95:
            v13 = *v8;
            v14 = "numRefreshOnClockLoss";
            goto LABEL_77;
          case 96:
            v13 = *v8;
            v14 = "numRefreshOnErrNandRefreshRel";
            goto LABEL_77;
          case 97:
            v13 = *v8;
            v14 = "numBGRefreshMoves";
            goto LABEL_77;
          case 98:
            v13 = *v8;
            v14 = "numBGPaddingMoves";
            goto LABEL_77;
          case 99:
            v13 = *v8;
            v14 = "hostWritesPhoto";
            goto LABEL_77;
          case 100:
            v13 = *v8;
            v14 = "INDPooldFree";
            goto LABEL_77;
          case 101:
            v13 = *v8;
            v14 = "INDContigCount";
            goto LABEL_77;
          case 102:
            v13 = *v8;
            v14 = "INDValidContigCount";
            goto LABEL_77;
          case 103:
            v13 = *v8;
            v14 = "INDMinContigSize";
            goto LABEL_77;
          case 104:
            v13 = *v8;
            v14 = "INDMaxContigSize";
            goto LABEL_77;
          case 105:
            v13 = *v8;
            v14 = "INDAveContigSize";
            goto LABEL_77;
          case 106:
            v13 = *v8;
            v14 = "INDpoolSize";
            goto LABEL_77;
          case 107:
            v13 = *v8;
            v14 = "pushSyncWrites";
            goto LABEL_77;
          case 109:
            v13 = *v8;
            v14 = "cmd_rw_hysteresis_us";
            goto LABEL_77;
          case 110:
            v13 = *v8;
            v14 = "photoFlowMode";
            goto LABEL_77;
          case 112:
            v13 = *v8;
            v14 = "numBandsPaddedForAge";
            goto LABEL_77;
          case 113:
            v15 = "bandsPerHostFlow";
            v16 = a1;
            v17 = 113;
            goto LABEL_144;
          case 114:
            v15 = "bandsPerSpecialFlow";
            v16 = a1;
            v17 = 114;
            goto LABEL_102;
          case 115:
            v15 = "secsPerHostFlow";
            v16 = a1;
            v17 = 115;
            goto LABEL_144;
          case 116:
            v15 = "secsPerSpecialFlow";
            v16 = a1;
            v17 = 116;
            goto LABEL_102;
          case 118:
            v15 = "overWritesPerHostFlow";
            v16 = a1;
            v17 = 118;
            goto LABEL_144;
          case 119:
            v15 = "overWritesPerSpecialFlow";
            v16 = a1;
            v17 = 119;
            goto LABEL_102;
          case 120:
            v15 = "padSectorsPerFlow";
            v16 = a1;
            v17 = 120;
            goto LABEL_44;
          case 121:
            v15 = "padSizes";
            v16 = a1;
            v17 = 121;
            goto LABEL_144;
          case 122:
            v15 = "unmapsPerHostFlow";
            v16 = a1;
            v17 = 122;
            goto LABEL_144;
          case 123:
            v15 = "unmapsPerSpecialFlow";
            v16 = a1;
            v17 = 123;
LABEL_102:
            v18 = v8;
            v19 = 5;
            goto LABEL_51;
          case 124:
            v15 = "coldestCycle";
            v16 = a1;
            v17 = 124;
            goto LABEL_123;
          case 125:
            v15 = "hottestCycle";
            v16 = a1;
            v17 = 125;
            goto LABEL_123;
          case 126:
            v13 = *v8;
            v14 = "gcLonlyWrites";
            goto LABEL_77;
          case 127:
            v13 = *v8;
            v14 = "gcPLWrites";
            goto LABEL_77;
          case 129:
            v13 = *v8;
            v14 = "pagesPerVirtualBlockSlc";
            goto LABEL_77;
          case 130:
            v13 = *v8;
            v14 = "bdrPadding";
            goto LABEL_77;
          case 131:
            v15 = "errInjCounters";
            v16 = a1;
            v17 = 131;
            goto LABEL_149;
          case 132:
            v13 = *v8;
            v14 = "raidSuccessfulReconstructionInternal";
            goto LABEL_77;
          case 133:
            v13 = *v8;
            v14 = "raidSuccessfulReconstructionHost";
            goto LABEL_77;
          case 134:
            v13 = *v8;
            v14 = "raidFailedReconstructionInternal";
            goto LABEL_77;
          case 135:
            v13 = *v8;
            v14 = "raidFailedReconstructionHost";
            goto LABEL_77;
          case 136:
            v13 = *v8;
            v14 = "raidBandsPerHostFlow";
            goto LABEL_77;
          case 137:
            v13 = *v8;
            v14 = "raidSecsPerHostFlow";
            goto LABEL_77;
          case 138:
            v13 = *v8;
            v14 = "gcFreeL";
            goto LABEL_77;
          case 139:
            v13 = *v8;
            v14 = "gcDestinations";
            goto LABEL_77;
          case 140:
            v13 = *v8;
            v14 = "gcFragments";
            goto LABEL_77;
          case 141:
            v13 = *v8;
            v14 = "numMemChoke";
            goto LABEL_77;
          case 142:
            v13 = *v8;
            v14 = "maxMemChokeDuration";
            goto LABEL_77;
          case 143:
            v13 = *v8;
            v14 = "memChokeDuration";
            goto LABEL_77;
          default:
            switch(v7)
            {
              case 144:
                v13 = *v8;
                v14 = "numMemExtreme";
                goto LABEL_77;
              case 145:
                v13 = *v8;
                v14 = "maxMemExtremeDuration";
                goto LABEL_77;
              case 146:
                v13 = *v8;
                v14 = "memExtremeDuration";
                goto LABEL_77;
              case 147:
                v13 = *v8;
                v14 = "bandGetsExtreme";
                goto LABEL_77;
              case 148:
                v13 = *v8;
                v14 = "bandGetsLow";
                goto LABEL_77;
              case 149:
                v13 = *v8;
                v14 = "numHostChoke";
                goto LABEL_77;
              case 152:
                v13 = *v8;
                v14 = "AbortSkip_ProgramError";
                goto LABEL_77;
              case 153:
                v13 = *v8;
                v14 = "AbortSkip_ReadErrorOpenBand";
                goto LABEL_77;
              case 154:
                v13 = *v8;
                v14 = "AbortSkip_FailedRebuildingParity";
                goto LABEL_77;
              case 155:
                v13 = *v8;
                v14 = "AbortPad_OpenRefreshBand";
                goto LABEL_77;
              case 156:
                v13 = *v8;
                v14 = "AbortPad_CloseBands";
                goto LABEL_77;
              case 157:
                v13 = *v8;
                v14 = "AbortPad_SetPhoto";
                goto LABEL_77;
              case 158:
                v13 = *v8;
                v14 = "AbortPad_GcNoSource";
                goto LABEL_77;
              case 159:
                v13 = *v8;
                v14 = "AbortPad_Format";
                goto LABEL_77;
              case 160:
                v13 = *v8;
                v14 = "nandDiscoveryDuration";
                goto LABEL_77;
              case 161:
                v13 = *v8;
                v14 = "coreCCEnableDuration";
                goto LABEL_77;
              case 163:
                v13 = *v8;
                v14 = "coreOpenDuration";
                goto LABEL_77;
              case 164:
                v13 = *v8;
                v14 = "coreWritableDuration";
                goto LABEL_77;
              case 165:
                v13 = *v8;
                v14 = "coreClogLoadDuration";
                goto LABEL_77;
              case 167:
                v13 = *v8;
                v14 = "bulkPFail";
                goto LABEL_77;
              case 169:
                v13 = *v8;
                v14 = "bulkRFail";
                goto LABEL_77;
              case 172:
                v13 = *v8;
                v14 = "raidSmartErrors";
                goto LABEL_77;
              case 182:
                v13 = *v8;
                v14 = "internalUeccs";
                goto LABEL_77;
              case 183:
                v13 = *v8;
                v14 = "e2eFail";
                goto LABEL_77;
              case 184:
                v13 = *v8;
                v14 = "TempSensorMax";
                goto LABEL_77;
              case 185:
                v13 = *v8;
                v14 = "TempSensorMin";
                goto LABEL_77;
              case 186:
                v13 = *v8;
                v14 = "powerUpFromDDR";
                goto LABEL_77;
              case 187:
                v13 = *v8;
                v14 = "numMemLow";
                goto LABEL_77;
              case 188:
                v13 = *v8;
                v14 = "maxMemLowDuration";
                goto LABEL_77;
              case 189:
                v13 = *v8;
                v14 = "memLowDuration";
                goto LABEL_77;
              case 190:
                v13 = *v8;
                v14 = "numFences";
                goto LABEL_77;
              case 191:
                v13 = *v8;
                v14 = "hostPassiveIO";
                goto LABEL_77;
              case 192:
                v13 = *v8;
                v14 = "odtsMax";
                goto LABEL_77;
              case 193:
                v13 = *v8;
                v14 = "defragMFromOrphans";
                goto LABEL_77;
              case 194:
                v13 = *v8;
                v14 = "defragMFromFragments";
                goto LABEL_77;
              case 195:
                v13 = *v8;
                v14 = "defragMTime";
                goto LABEL_77;
              case 196:
                v13 = *v8;
                v14 = "defragMMaxTime";
                goto LABEL_77;
              case 197:
                v13 = *v8;
                v14 = "raidFailedLbaMismatch";
                goto LABEL_77;
              case 198:
                v13 = *v8;
                v14 = "numSyscfgWrites";
                goto LABEL_77;
              case 199:
                v13 = *v8;
                v14 = "indmbUnitsXfer";
                goto LABEL_77;
              case 200:
                v13 = *v8;
                v14 = "indmbUnitsCache";
                goto LABEL_77;
              case 201:
                v13 = *v8;
                v14 = "indmbUnitsInd";
                goto LABEL_77;
              case 202:
                v13 = *v8;
                v14 = "wcacheFS_Mbytes";
                goto LABEL_77;
              case 203:
                v13 = *v8;
                v14 = "wcacheDS_Mbytes";
                goto LABEL_77;
              case 204:
                v13 = *v8;
                v14 = "powerOnSeconds";
                goto LABEL_77;
              case 205:
                v13 = *v8;
                v14 = "numUnknownTokenHostRead";
                goto LABEL_77;
              case 206:
                v13 = *v8;
                v14 = "numUnmmapedTokenHostRead";
                goto LABEL_77;
              case 207:
                v15 = "numOfThrottlingEntriesPerLevel";
                v16 = a1;
                v17 = 207;
LABEL_213:
                v18 = v8;
                v19 = 25;
                goto LABEL_51;
              case 208:
                v13 = *v8;
                v14 = "wcacheFS_MbytesMin";
                goto LABEL_77;
              case 209:
                v13 = *v8;
                v14 = "wcacheFS_MbytesMax";
                goto LABEL_77;
              case 210:
                v13 = *v8;
                v14 = "prepareForShutdownFailCounter";
                goto LABEL_77;
              case 211:
                v13 = *v8;
                v14 = "lpsrEntry";
                goto LABEL_77;
              case 212:
                v13 = *v8;
                v14 = "lpsrExit";
                goto LABEL_77;
              case 213:
                v15 = "crcInternalReadFail";
                v16 = a1;
                v17 = 213;
                goto LABEL_149;
              case 214:
                v13 = *v8;
                v14 = "wcacheFSEvictCnt";
                goto LABEL_77;
              case 215:
                v13 = *v8;
                v14 = "wcacheFSEvictSize";
                goto LABEL_77;
              case 216:
                v13 = *v8;
                v14 = "wcacheFSWr";
                goto LABEL_77;
              case 217:
                v13 = *v8;
                v14 = "wcacheDSWr";
                goto LABEL_77;
              case 218:
                v15 = "wcacheFSEvictSizeLogDist";
                v16 = a1;
                v17 = 218;
                goto LABEL_44;
              case 219:
                v13 = *v8;
                v14 = "prepareForShutdownTimeoutCounter";
                goto LABEL_77;
              case 220:
                v13 = *v8;
                v14 = "prepareForShutdownCancelCounter";
                goto LABEL_77;
              case 221:
                v13 = *v8;
                v14 = "RD_openBandCount";
                goto LABEL_77;
              case 222:
                v13 = *v8;
                v14 = "RD_openBandNops";
                goto LABEL_77;
              case 223:
                v13 = *v8;
                v14 = "RD_closedBandEvictCount";
                goto LABEL_77;
              default:
                switch(v7)
                {
                  case 224:
                    v13 = *v8;
                    v14 = "RD_closedBandEvictSectors";
                    goto LABEL_77;
                  case 225:
                    v13 = *v8;
                    v14 = "RD_closedBandFragmentCount";
                    goto LABEL_77;
                  case 226:
                    v13 = *v8;
                    v14 = "RD_closedBandFragmentSectors";
                    goto LABEL_77;
                  case 227:
                    v15 = "wcacheFSOverWrLogSizeCnts";
                    v16 = a1;
                    v17 = 227;
                    goto LABEL_44;
                  case 228:
                    v15 = "wcacheFSOverWrSizeByFlow";
                    v16 = a1;
                    v17 = 228;
                    goto LABEL_144;
                  case 229:
                    v15 = "indmbXferCountTo";
                    v16 = a1;
                    v17 = 229;
                    goto LABEL_123;
                  case 230:
                    v15 = "indmbAccumulatedTimeBetweenXfers";
                    v16 = a1;
                    v17 = 230;
                    goto LABEL_123;
                  case 231:
                    v13 = *v8;
                    v14 = "maxGracefulBootTimeMs";
                    goto LABEL_77;
                  case 232:
                    v13 = *v8;
                    v14 = "maxUngracefulBootTimeMs";
                    goto LABEL_77;
                  case 233:
                    v13 = *v8;
                    v14 = "averageGracefulBootTimeMs";
                    goto LABEL_77;
                  case 234:
                    v13 = *v8;
                    v14 = "averageUngracefulBootTimeMs";
                    goto LABEL_77;
                  case 235:
                    v15 = "gracefulBootTimeLogMs";
                    v16 = a1;
                    v17 = 235;
                    goto LABEL_149;
                  case 236:
                    v15 = "ungracefulBootTimeLogMs";
                    v16 = a1;
                    v17 = 236;
                    goto LABEL_149;
                  case 237:
                    v15 = "CalibrationCount";
                    v16 = a1;
                    v17 = 237;
                    goto LABEL_144;
                  case 238:
                    v13 = *v8;
                    v14 = "CalibrationLastTmp";
                    goto LABEL_77;
                  case 239:
                    v13 = *v8;
                    v14 = "CalibrationMaxTmp";
                    goto LABEL_77;
                  case 240:
                    v13 = *v8;
                    v14 = "CalibrationMinTmp";
                    goto LABEL_77;
                  case 241:
                    v13 = *v8;
                    v14 = "ungracefulBootWorstIndicator";
                    goto LABEL_77;
                  case 242:
                    v13 = *v8;
                    v14 = "metaMismatchReread";
                    goto LABEL_77;
                  case 243:
                    v13 = *v8;
                    v14 = "numS3SleepOps";
                    goto LABEL_77;
                  case 244:
                    v13 = *v8;
                    v14 = "odtsCurrent";
                    goto LABEL_77;
                  case 245:
                    v13 = *v8;
                    v14 = "prefetchReads";
                    goto LABEL_77;
                  case 246:
                    v13 = *v8;
                    v14 = "prefetchHits";
                    goto LABEL_77;
                  case 247:
                    v13 = *v8;
                    v14 = "prefetchWritesInvalidation";
                    goto LABEL_77;
                  case 248:
                    v13 = *v8;
                    v14 = "indmbUnitsTotal";
                    goto LABEL_77;
                  case 249:
                    v13 = *v8;
                    v14 = "selfThrottlingEngage";
                    goto LABEL_77;
                  case 250:
                    v13 = *v8;
                    v14 = "selfThrottlingDisengage";
                    goto LABEL_77;
                  case 252:
                    v13 = *v8;
                    v14 = "AbortSkip_WlpMode";
                    goto LABEL_77;
                  case 253:
                    v13 = *v8;
                    v14 = "hostWritesWlpMode";
                    goto LABEL_77;
                  case 254:
                    v13 = *v8;
                    v14 = "numClogDoubleUnc";
                    goto LABEL_77;
                  case 256:
                    v13 = *v8;
                    v14 = "AbortPad_WlpMode";
                    goto LABEL_77;
                  case 257:
                    v13 = *v8;
                    v14 = "bonfireIntermediateBandErases";
                    goto LABEL_77;
                  case 258:
                    v13 = *v8;
                    v14 = "bonfireUserBandErases";
                    goto LABEL_77;
                  case 259:
                    v13 = *v8;
                    v14 = "bonfireIntermediateBandProgs";
                    goto LABEL_77;
                  case 260:
                    v13 = *v8;
                    v14 = "bonfireUserBandProgs";
                    goto LABEL_77;
                  case 261:
                    v13 = *v8;
                    v14 = "bonfireIntermediatePageReads";
                    goto LABEL_77;
                  case 262:
                    v13 = *v8;
                    v14 = "bonfireUserPageReads";
                    goto LABEL_77;
                  case 263:
                    v13 = *v8;
                    v14 = "refreshUtil00";
                    goto LABEL_77;
                  case 264:
                    v13 = *v8;
                    v14 = "failToReadUtil00";
                    goto LABEL_77;
                  case 265:
                    v15 = "readCountHisto";
                    v16 = a1;
                    v17 = 265;
                    goto LABEL_102;
                  case 266:
                    v15 = "readAmpHisto";
                    v16 = a1;
                    v17 = 266;
LABEL_246:
                    v18 = v8;
                    v19 = 16;
                    goto LABEL_51;
                  case 267:
                    v13 = *v8;
                    v14 = "totalReadAmp";
                    goto LABEL_77;
                  case 268:
                    v15 = "nvmeModeSelect";
                    v16 = a1;
                    v17 = 268;
                    goto LABEL_144;
                  case 269:
                    v15 = "numBootBlockRefreshSuccess";
                    v16 = a1;
                    v17 = 269;
                    goto LABEL_149;
                  case 270:
                    v15 = "numBootBlockRefreshFail";
                    v16 = a1;
                    v17 = 270;
                    goto LABEL_149;
                  case 271:
                    v13 = *v8;
                    v14 = "numUnsupportedAsi";
                    goto LABEL_77;
                  case 272:
                    v13 = *v8;
                    v14 = "NumTerminatedProgramSegs";
                    goto LABEL_77;
                  case 273:
                    v13 = *v8;
                    v14 = "indParityPagesDrops";
                    goto LABEL_77;
                  case 274:
                    v13 = *v8;
                    v14 = "indFlowPrograms";
                    goto LABEL_77;
                  case 277:
                    v15 = "powerBudgetSelect";
                    v16 = a1;
                    v17 = 277;
                    goto LABEL_144;
                  case 279:
                    v13 = *v8;
                    v14 = "RxBurnNandWrites";
                    goto LABEL_77;
                  case 280:
                    v15 = "E2EDPErrorCounters";
                    v16 = a1;
                    v17 = 280;
LABEL_282:
                    v18 = v8;
                    v19 = 12;
                    goto LABEL_51;
                  case 281:
                    v13 = *v8;
                    v14 = "wcacheSectorsMax";
                    goto LABEL_77;
                  case 282:
                    v13 = *v8;
                    v14 = "wcacheSectorsMin";
                    goto LABEL_77;
                  case 283:
                    v13 = *v8;
                    v14 = "wcacheSectorsCur";
                    goto LABEL_77;
                  case 284:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsMax";
                    goto LABEL_77;
                  case 285:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsMin";
                    goto LABEL_77;
                  case 286:
                    v13 = *v8;
                    v14 = "wcacheDS_SectorsCur";
                    goto LABEL_77;
                  case 287:
                    v13 = *v8;
                    v14 = "wcacheFS_Reads";
                    goto LABEL_77;
                  case 288:
                    v13 = *v8;
                    v14 = "wcacheDS_Reads";
                    goto LABEL_77;
                  case 289:
                    v15 = "mspBootBlockReadFail";
                    v16 = a1;
                    v17 = 289;
                    goto LABEL_284;
                  case 290:
                    v15 = "mspBootBlockProgFail";
                    v16 = a1;
                    v17 = 290;
                    goto LABEL_284;
                  case 291:
                    v15 = "mspBootBlockEraseFail";
                    v16 = a1;
                    v17 = 291;
                    goto LABEL_284;
                  case 292:
                    v13 = *v8;
                    v14 = "bandsRefreshedOnError";
                    goto LABEL_77;
                  default:
                    switch(v7)
                    {
                      case 298:
                        v15 = "perHostReads";
                        v16 = a1;
                        v17 = 298;
                        goto LABEL_123;
                      case 299:
                        v15 = "perHostReadXacts";
                        v16 = a1;
                        v17 = 299;
                        goto LABEL_123;
                      case 300:
                        v15 = "perHostWrites";
                        v16 = a1;
                        v17 = 300;
                        goto LABEL_123;
                      case 301:
                        v15 = "perHostWriteXacts";
                        v16 = a1;
                        v17 = 301;
                        goto LABEL_123;
                      case 302:
                        v15 = "perHostNumFlushes";
                        v16 = a1;
                        v17 = 302;
                        goto LABEL_123;
                      case 303:
                        v15 = "perHostNumFences";
                        v16 = a1;
                        v17 = 303;
                        goto LABEL_123;
                      case 304:
                        v15 = "commitPadSectorsPerFlow";
                        v16 = a1;
                        v17 = 304;
                        goto LABEL_44;
                      case 305:
                        v15 = "wcacheDSOverWrLogSizeCnts";
                        v16 = a1;
                        v17 = 305;
                        goto LABEL_44;
                      case 306:
                        v15 = "wcacheDSOverWrSizeByFlow";
                        v16 = a1;
                        v17 = 306;
                        goto LABEL_144;
                      case 307:
                        v15 = "CmdRaisePrioiryEvents";
                        v16 = a1;
                        v17 = 307;
                        goto LABEL_44;
                      case 308:
                        v13 = *v8;
                        v14 = "utilNumVerification";
                        goto LABEL_77;
                      case 309:
                        v13 = *v8;
                        v14 = "utilRefreshes";
                        goto LABEL_77;
                      case 310:
                        v13 = *v8;
                        v14 = "utilBDRErrors";
                        goto LABEL_77;
                      case 311:
                        v13 = *v8;
                        v14 = "indBandsPerFlow";
                        goto LABEL_77;
                      case 312:
                        v13 = *v8;
                        v14 = "secsPerIndFlow";
                        goto LABEL_77;
                      case 313:
                        v13 = *v8;
                        v14 = "indDecodedECC";
                        goto LABEL_77;
                      case 314:
                        v15 = "numBootBlockValidateSuccess";
                        v16 = a1;
                        v17 = 314;
                        goto LABEL_149;
                      case 315:
                        v15 = "numBootBlockValidateFail";
                        v16 = a1;
                        v17 = 315;
                        goto LABEL_149;
                      case 316:
                        v15 = "clogPagesFillingPercentage";
                        v16 = a1;
                        v17 = 316;
                        goto LABEL_144;
                      case 317:
                        v13 = *v8;
                        v14 = "bdrCalTimeAccFactor";
                        goto LABEL_77;
                      case 318:
                        v13 = *v8;
                        v14 = "bootChainRdError";
                        goto LABEL_77;
                      case 319:
                        v13 = *v8;
                        v14 = "bootChainBlankError";
                        goto LABEL_77;
                      case 320:
                        v13 = *v8;
                        v14 = "bootChainRefreshError";
                        goto LABEL_77;
                      case 321:
                        v13 = *v8;
                        v14 = "bootChainVersionError";
                        goto LABEL_77;
                      case 322:
                        v13 = *v8;
                        v14 = "mspBootBlockMismatch";
                        goto LABEL_77;
                      case 323:
                        v13 = *v8;
                        v14 = "mspBootBlockMismatchErr";
                        goto LABEL_77;
                      case 324:
                        v15 = "bitflipAddr";
                        v16 = a1;
                        v17 = 324;
                        goto LABEL_102;
                      case 325:
                        v15 = "bitflipCount";
                        v16 = a1;
                        v17 = 325;
                        goto LABEL_102;
                      case 326:
                        v15 = "bitflipDupes";
                        v16 = a1;
                        v17 = 326;
                        goto LABEL_102;
                      case 327:
                        v15 = "bandsMaxTempHisto";
                        v16 = a1;
                        v17 = 327;
                        goto LABEL_319;
                      case 328:
                        v15 = "bandsMinTempHisto";
                        v16 = a1;
                        v17 = 328;
                        goto LABEL_319;
                      case 329:
                        v15 = "bandsLifeTimeTempHisto";
                        v16 = a1;
                        v17 = 329;
LABEL_319:
                        v18 = v8;
                        v19 = 30;
                        goto LABEL_51;
                      case 330:
                        v15 = "bandsDeltaTempHisto";
                        v16 = a1;
                        v17 = 330;
                        v18 = v8;
                        v19 = 22;
                        goto LABEL_51;
                      case 331:
                        v15 = "bandsCrossTempHisto";
                        v16 = a1;
                        v17 = 331;
                        v18 = v8;
                        v19 = 45;
                        goto LABEL_51;
                      case 332:
                        v15 = "wcacheWaitLogMs";
                        v16 = a1;
                        v17 = 332;
                        goto LABEL_44;
                      case 333:
                        v15 = "wcacheDS_segsSortedLogSize";
                        v16 = a1;
                        v17 = 333;
                        goto LABEL_44;
                      case 334:
                        v13 = *v8;
                        v14 = "numFirmwareWrites";
                        goto LABEL_77;
                      case 335:
                        v13 = *v8;
                        v14 = "numBisWrites";
                        goto LABEL_77;
                      case 336:
                        v13 = *v8;
                        v14 = "numBootChainUpdates";
                        goto LABEL_77;
                      case 337:
                        v13 = *v8;
                        v14 = "cntCalTimeWentBackWard";
                        goto LABEL_77;
                      case 338:
                        v13 = *v8;
                        v14 = "indBoRecoveries";
                        goto LABEL_77;
                      case 340:
                        v13 = *v8;
                        v14 = "numCrossTempUecc";
                        goto LABEL_77;
                      case 341:
                        v13 = *v8;
                        v14 = "latencyMonitorError";
                        goto LABEL_77;
                      case 343:
                        v13 = *v8;
                        v14 = "utilUeccReads";
                        goto LABEL_77;
                      case 344:
                        v13 = *v8;
                        v14 = "numOfAvoidedGCDueToTemp";
                        goto LABEL_77;
                      case 345:
                        v13 = *v8;
                        v14 = "forceShutdowns";
                        goto LABEL_77;
                      case 346:
                        v13 = *v8;
                        v14 = "gcSlcDestinations";
                        goto LABEL_77;
                      case 347:
                        v13 = *v8;
                        v14 = "indReplayExtUsed";
                        goto LABEL_77;
                      case 348:
                        v13 = *v8;
                        v14 = "defectsPerPackageOverflow";
                        goto LABEL_77;
                      case 349:
                        v13 = *v8;
                        v14 = "RxBurnIntBandsProgrammed";
                        goto LABEL_77;
                      case 350:
                        v13 = *v8;
                        v14 = "RxBurnUsrBandsProgrammed";
                        goto LABEL_77;
                      case 351:
                        v13 = *v8;
                        v14 = "RxBurnIntNandWrites";
                        goto LABEL_77;
                      case 352:
                        v13 = *v8;
                        v14 = "RxBurnUsrNandWrites";
                        goto LABEL_77;
                      case 353:
                        v13 = *v8;
                        v14 = "clogLastStripeUeccs";
                        goto LABEL_77;
                      case 354:
                        v13 = *v8;
                        v14 = "GC_MidDestSrcSwitchSLC2TLC";
                        goto LABEL_77;
                      case 355:
                        v13 = *v8;
                        v14 = "GC_MidDestSrcSwitchTLC2SLC";
                        goto LABEL_77;
                      case 356:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host0_normal";
                        goto LABEL_77;
                      case 357:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host1_normal";
                        goto LABEL_77;
                      case 358:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host0_s2r";
                        goto LABEL_77;
                      case 359:
                        v13 = *v8;
                        v14 = "nvme_stats_shutdown_count_host1_s2r";
                        goto LABEL_77;
                      case 360:
                        v15 = "gcPDusterIntrSrcValidityHisto";
                        v16 = a1;
                        v17 = 360;
                        goto LABEL_246;
                      case 361:
                        v15 = "gcPDusterUserSrcValidityHisto";
                        v16 = a1;
                        v17 = 361;
                        goto LABEL_246;
                      case 362:
                        v13 = *v8;
                        v14 = "raidFailedReadParity";
                        goto LABEL_77;
                      case 364:
                        v13 = *v8;
                        v14 = "lhotNumSkipes";
                        goto LABEL_77;
                      default:
                        switch(v7)
                        {
                          case 365:
                            v13 = *v8;
                            v14 = "lhotNumIsHotCalls";
                            goto LABEL_77;
                          case 366:
                            v13 = *v8;
                            v14 = "lhotFullLap";
                            goto LABEL_77;
                          case 367:
                            v13 = *v8;
                            v14 = "lhotSkipPrecent";
                            goto LABEL_77;
                          case 368:
                            v13 = *v8;
                            v14 = "eraseSuspendEvents";
                            goto LABEL_77;
                          case 369:
                            v13 = *v8;
                            v14 = "eraseSuspendedStatuses";
                            goto LABEL_77;
                          case 370:
                            v13 = *v8;
                            v14 = "eraseSuspendedBands";
                            goto LABEL_77;
                          case 371:
                            v13 = *v8;
                            v14 = "eraseSuspendSituationsBelowThreshold";
                            goto LABEL_77;
                          case 372:
                            v13 = *v8;
                            v14 = "eraseSuspendSituationsAboveThreshold";
                            goto LABEL_77;
                          case 373:
                            v13 = *v8;
                            v14 = "eraseSuspendReadChainsProcessed";
                            goto LABEL_77;
                          case 374:
                            v13 = *v8;
                            v14 = "bdrLastDoneHr";
                            goto LABEL_77;
                          case 375:
                            v13 = *v8;
                            v14 = "bdrBackupThreshHrs";
                            goto LABEL_77;
                          case 376:
                            v13 = *v8;
                            v14 = "clogPortableProgBufs";
                            goto LABEL_77;
                          case 377:
                            v13 = *v8;
                            v14 = "clogPortableDropBufs";
                            goto LABEL_77;
                          case 378:
                            v13 = *v8;
                            v14 = "clogPortablePadSectors";
                            goto LABEL_77;
                          case 379:
                            v13 = *v8;
                            v14 = "numRetiredBlocks";
                            goto LABEL_77;
                          case 381:
                            v13 = *v8;
                            v14 = "numRefreshOnErrNandRefreshPerf";
                            goto LABEL_77;
                          case 382:
                            v13 = *v8;
                            v14 = "raidReconstructReads";
                            goto LABEL_77;
                          case 383:
                            v13 = *v8;
                            v14 = "gcReadsNoBlog";
                            goto LABEL_77;
                          case 384:
                            v13 = *v8;
                            v14 = "AbortSkip_MPBXReadVerifyClosedBand";
                            goto LABEL_77;
                          case 385:
                            v13 = *v8;
                            v14 = "openBandReadFail";
                            goto LABEL_77;
                          case 386:
                            v13 = *v8;
                            v14 = "AbortSkip_MPBXReadVerifyOpenBand";
                            goto LABEL_77;
                          case 387:
                            v13 = *v8;
                            v14 = "AbortSkip_MBPXFailedRebuildingParity";
                            goto LABEL_77;
                          case 388:
                            v13 = *v8;
                            v14 = "raidSuccessfulPMXReconstructionInternal";
                            goto LABEL_77;
                          case 389:
                            v13 = *v8;
                            v14 = "raidSuccessfulPMXReconstructionHost";
                            goto LABEL_77;
                          case 390:
                            v13 = *v8;
                            v14 = "raidFailedPMXReconstructionInternal";
                            goto LABEL_77;
                          case 391:
                            v13 = *v8;
                            v14 = "raidFailedPMXReconstructionHost";
                            goto LABEL_77;
                          case 392:
                            v13 = *v8;
                            v14 = "raidSuccessfulRMXReconstructionInternal";
                            goto LABEL_77;
                          case 393:
                            v13 = *v8;
                            v14 = "raidSuccessfulRMXReconstructionHost";
                            goto LABEL_77;
                          case 394:
                            v13 = *v8;
                            v14 = "raidFailedRMXReconstructionInternal";
                            goto LABEL_77;
                          case 395:
                            v13 = *v8;
                            v14 = "raidFailedRMXReconstructionHost";
                            goto LABEL_77;
                          case 396:
                            v13 = *v8;
                            v14 = "raidFailedReadParityInternal";
                            goto LABEL_77;
                          case 397:
                            v13 = *v8;
                            v14 = "raidFailedReadQParityInternal";
                            goto LABEL_77;
                          case 398:
                            v13 = *v8;
                            v14 = "raidFailedReadQParity";
                            goto LABEL_77;
                          case 399:
                            v13 = *v8;
                            v14 = "raidFailedReadQCopy";
                            goto LABEL_77;
                          case 400:
                            v13 = *v8;
                            v14 = "raidFailedReconstructionQParity";
                            goto LABEL_77;
                          case 401:
                            v13 = *v8;
                            v14 = "offlineBlocksCnt";
                            goto LABEL_77;
                          case 402:
                            v13 = *v8;
                            v14 = "bork0Revectors";
                            goto LABEL_77;
                          case 403:
                            v13 = *v8;
                            v14 = "raidFailedReadBlog";
                            goto LABEL_77;
                          case 404:
                            v13 = *v8;
                            v14 = "numReliabilityRefreshes";
                            goto LABEL_77;
                          case 405:
                            v13 = *v8;
                            v14 = "raidFailedReadQCopyInternal";
                            goto LABEL_77;
                          case 406:
                            v15 = "raidReconstructSuccessFlow";
                            v16 = a1;
                            v17 = 406;
                            goto LABEL_102;
                          case 407:
                            v15 = "raidReconstructFailFlow";
                            v16 = a1;
                            v17 = 407;
                            goto LABEL_102;
                          case 408:
                            v13 = *v8;
                            v14 = "raidReconstructFailP";
                            goto LABEL_77;
                          case 409:
                            v13 = *v8;
                            v14 = "raidReconstructFailQ";
                            goto LABEL_77;
                          case 410:
                            v13 = *v8;
                            v14 = "raidReconstructFailUECC";
                            goto LABEL_77;
                          case 411:
                            v13 = *v8;
                            v14 = "raidReconstructFailUnsupp";
                            goto LABEL_77;
                          case 412:
                            v13 = *v8;
                            v14 = "raidUECCOpenBand";
                            goto LABEL_77;
                          case 414:
                            v13 = *v8;
                            v14 = "ueccReads";
                            goto LABEL_77;
                          case 416:
                            v13 = *v8;
                            v14 = "raidSuccessfulVerify";
                            goto LABEL_77;
                          case 417:
                            v13 = *v8;
                            v14 = "raidFailedVerify";
                            goto LABEL_77;
                          case 418:
                            v13 = *v8;
                            v14 = "numBandsVerified";
                            goto LABEL_77;
                          case 419:
                            v13 = *v8;
                            v14 = "cache_heads";
                            goto LABEL_77;
                          case 420:
                            v13 = *v8;
                            v14 = "AbortSkip_RMXtoMPBX";
                            goto LABEL_77;
                          case 421:
                            v13 = *v8;
                            v14 = "s3eFwVer";
                            goto LABEL_77;
                          case 422:
                            v13 = *v8;
                            v14 = "readVerifyNative";
                            goto LABEL_77;
                          case 423:
                            v13 = *v8;
                            v14 = "reducedReadVerifyNative";
                            goto LABEL_77;
                          case 424:
                            v13 = *v8;
                            v14 = "readVerifySlc";
                            goto LABEL_77;
                          case 425:
                            v13 = *v8;
                            v14 = "reducedReadVerifySlc";
                            goto LABEL_77;
                          case 426:
                            v13 = *v8;
                            v14 = "RxBurnEvictions";
                            goto LABEL_77;
                          case 427:
                            v13 = *v8;
                            v14 = "directToTLCBands";
                            goto LABEL_77;
                          case 428:
                            v13 = *v8;
                            v14 = "nandDesc";
                            goto LABEL_77;
                          case 429:
                            v13 = *v8;
                            v14 = "fwUpdatesPercentUsed";
                            goto LABEL_77;
                          case 430:
                            v13 = *v8;
                            v14 = "slcPercentUsed";
                            goto LABEL_77;
                          case 431:
                            v13 = *v8;
                            v14 = "percentUsed";
                            goto LABEL_77;
                          default:
                            switch(v7)
                            {
                              case 432:
                                v13 = *v8;
                                v14 = "hostAutoWrites";
                                goto LABEL_77;
                              case 433:
                                v13 = *v8;
                                v14 = "hostAutoWriteXacts";
                                goto LABEL_77;
                              case 434:
                                v13 = *v8;
                                v14 = "gcDestDynamic";
                                goto LABEL_77;
                              case 435:
                                v13 = *v8;
                                v14 = "gcDestStatic";
                                goto LABEL_77;
                              case 436:
                                v13 = *v8;
                                v14 = "gcDestWearlevel";
                                goto LABEL_77;
                              case 437:
                                v13 = *v8;
                                v14 = "gcDestParity";
                                goto LABEL_77;
                              case 438:
                                v13 = *v8;
                                v14 = "AbortSkip_Format";
                                goto LABEL_77;
                              case 440:
                                v13 = *v8;
                                v14 = "raidSLCPadding";
                                goto LABEL_77;
                              case 441:
                                v13 = *v8;
                                v14 = "raidGCBands";
                                goto LABEL_77;
                              case 442:
                                v13 = *v8;
                                v14 = "raidGCSectors";
                                goto LABEL_77;
                              case 443:
                                v13 = *v8;
                                v14 = "raidGCPadding";
                                goto LABEL_77;
                              case 444:
                                v13 = *v8;
                                v14 = "raidSLCBandsPerHostFlow";
                                goto LABEL_77;
                              case 445:
                                v13 = *v8;
                                v14 = "raidSLCSecsPerHostFlow";
                                goto LABEL_77;
                              case 446:
                                v13 = *v8;
                                v14 = "rxBurnMinCycleRuns";
                                goto LABEL_77;
                              case 447:
                                v13 = *v8;
                                v14 = "clogNumFastCxt";
                                goto LABEL_77;
                              case 448:
                                v13 = *v8;
                                v14 = "clogNumRapidReboots";
                                goto LABEL_77;
                              case 449:
                                v13 = *v8;
                                v14 = "clogFastCxtAbvThr";
                                goto LABEL_77;
                              case 450:
                                v13 = *v8;
                                v14 = "rxBurnDiffModeRuns";
                                goto LABEL_77;
                              case 452:
                                v13 = *v8;
                                v14 = "indReadVerifyFail";
                                goto LABEL_77;
                              case 453:
                                v15 = "numOfThrottlingEntriesPerReadLevel";
                                v16 = a1;
                                v17 = 453;
                                goto LABEL_213;
                              case 454:
                                v15 = "numOfThrottlingEntriesPerWriteLevel";
                                v16 = a1;
                                v17 = 454;
                                goto LABEL_213;
                              case 456:
                                v15 = "slcFifoDepth";
                                v16 = a1;
                                v17 = 456;
                                goto LABEL_44;
                              case 457:
                                v13 = *v8;
                                v14 = "wcacheSectorsDirtyIdle";
                                goto LABEL_77;
                              case 458:
                                v13 = *v8;
                                v14 = "wcacheDS_SectorsDirtyIdle";
                                goto LABEL_77;
                              case 459:
                                v13 = *v8;
                                v14 = "wcacheFS_MbytesDirtyIdle";
                                goto LABEL_77;
                              case 460:
                                v15 = "CacheDepthVsThroughput";
                                v16 = a1;
                                v17 = 460;
                                v18 = v8;
                                v19 = 256;
                                goto LABEL_51;
                              case 461:
                                v13 = *v8;
                                v14 = "directToTLCSectors";
                                goto LABEL_77;
                              case 462:
                                v13 = *v8;
                                v14 = "fallbackToWaterfall";
                                goto LABEL_77;
                              case 463:
                                v15 = "balanceProportionBucketsHistogram";
                                v16 = a1;
                                v17 = 463;
LABEL_449:
                                v18 = v8;
                                v19 = 11;
                                goto LABEL_51;
                              case 464:
                                v13 = *v8;
                                v14 = "lockToTlc";
                                goto LABEL_77;
                              case 465:
                                v15 = "burstSizeHistogram";
                                v16 = a1;
                                v17 = 465;
                                goto LABEL_44;
                              case 466:
                                v15 = "qosDirectToTLC";
                                v16 = a1;
                                v17 = 466;
                                goto LABEL_471;
                              case 467:
                                v15 = "maxQosDirectToTLC";
                                v16 = a1;
                                v17 = 467;
                                goto LABEL_144;
                              case 468:
                                v15 = "wcacheDirtyAtFlush";
                                v16 = a1;
                                v17 = 468;
                                goto LABEL_246;
                              case 469:
                                v15 = "raidReconstructSuccessPartition";
                                v16 = a1;
                                v17 = 469;
                                goto LABEL_123;
                              case 470:
                                v15 = "raidReconstructFailPartition";
                                v16 = a1;
                                v17 = 470;
                                goto LABEL_123;
                              case 471:
                                v13 = *v8;
                                v14 = "raidUncleanBootBandFail";
                                goto LABEL_77;
                              case 472:
                                v13 = *v8;
                                v14 = "raidReconstructFailBandFlowHost";
                                goto LABEL_77;
                              case 473:
                                v13 = *v8;
                                v14 = "raidReconstructFailBandFlowGC";
                                goto LABEL_77;
                              case 476:
                                v15 = "raidSuccessfulRecoLbaRange";
                                v16 = a1;
                                v17 = 476;
                                goto LABEL_123;
                              case 477:
                                v15 = "raidFailedRecoLbaRange";
                                v16 = a1;
                                v17 = 477;
                                goto LABEL_123;
                              case 481:
                                v15 = "skinnyBandErases_481";
                                v16 = a1;
                                v17 = 481;
                                goto LABEL_284;
                              case 483:
                                v13 = *v8;
                                v14 = "tlcOverHeatWaterfall";
                                goto LABEL_77;
                              case 484:
                                v13 = *v8;
                                v14 = "skinnyCyclesConvert";
                                goto LABEL_77;
                              case 485:
                                v13 = *v8;
                                v14 = "non_proportional_directToTLCSectors";
                                goto LABEL_77;
                              case 486:
                                v13 = *v8;
                                v14 = "maxFailedFastCxtSync";
                                goto LABEL_77;
                              case 487:
                                v13 = *v8;
                                v14 = "numFormatUserArea";
                                goto LABEL_77;
                              case 488:
                                v13 = *v8;
                                v14 = "clogFastCxtSyncAborted";
                                goto LABEL_77;
                              case 489:
                                v15 = "clogOccupationSectors";
                                v16 = a1;
                                v17 = 489;
                                goto LABEL_102;
                              case 490:
                                v15 = "bdrTmpHist";
                                v16 = a1;
                                v17 = 490;
LABEL_471:
                                v18 = v8;
                                v19 = 64;
                                goto LABEL_51;
                              case 491:
                                v13 = *v8;
                                v14 = "numFWUpdates";
                                goto LABEL_77;
                              case 492:
                                v13 = *v8;
                                v14 = "numClogLoadFails";
                                goto LABEL_77;
                              case 493:
                                v13 = *v8;
                                v14 = "rxBurnNumForcedDiffMode";
                                goto LABEL_77;
                              case 494:
                                v13 = *v8;
                                v14 = "RD_numSaves";
                                goto LABEL_77;
                              case 495:
                                v13 = *v8;
                                v14 = "eanCompressWrites";
                                goto LABEL_77;
                              case 496:
                                v13 = *v8;
                                v14 = "eanHostWrites";
                                goto LABEL_77;
                              case 497:
                                v13 = *v8;
                                v14 = "bandPreErases";
                                goto LABEL_77;
                              case 498:
                                v13 = *v8;
                                v14 = "eanHostUnmaps";
                                goto LABEL_77;
                              case 499:
                                v13 = *v8;
                                v14 = "eanHostFlushes";
                                goto LABEL_77;
                              case 500:
                                v13 = *v8;
                                v14 = "eanFastWrites";
                                goto LABEL_77;
                              case 501:
                                v13 = *v8;
                                v14 = "autowriteDS2FSCollisions";
                                goto LABEL_77;
                              case 502:
                                v13 = *v8;
                                v14 = "autowriteWaitTransferTaskBlocks";
                                goto LABEL_77;
                              case 503:
                                v15 = "avgCycle";
                                v16 = a1;
                                v17 = 503;
                                goto LABEL_123;
                              case 504:
                                v13 = *v8;
                                v14 = "RD_DeferredClearsOverflowCnt";
                                goto LABEL_77;
                              default:
                                switch(v7)
                                {
                                  case 505:
                                    v13 = *v8;
                                    v14 = "maxVerticsInBand";
                                    goto LABEL_77;
                                  case 506:
                                    v13 = *v8;
                                    v14 = "numVertics";
                                    goto LABEL_77;
                                  case 507:
                                    v13 = *v8;
                                    v14 = "exceededCVertics";
                                    goto LABEL_77;
                                  case 510:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailMismatch";
                                    goto LABEL_77;
                                  case 511:
                                    v15 = "mspbootBlockRefreshCnt";
                                    v16 = a1;
                                    v17 = 511;
                                    goto LABEL_284;
                                  case 516:
                                    v15 = "mspBootBlockRefreshTime";
                                    v16 = a1;
                                    v17 = 516;
                                    goto LABEL_284;
                                  case 517:
                                    v13 = *v8;
                                    v14 = "mspBootBlockCountPerMsp";
                                    goto LABEL_77;
                                  case 518:
                                    v13 = *v8;
                                    v14 = "skinnyRevectorSLC";
                                    goto LABEL_77;
                                  case 519:
                                    v13 = *v8;
                                    v14 = "skinnyRevectorTLC";
                                    goto LABEL_77;
                                  case 520:
                                    v13 = *v8;
                                    v14 = "perfSetupAttempts";
                                    goto LABEL_77;
                                  case 521:
                                    v13 = *v8;
                                    v14 = "perfSetupSuccesses";
                                    goto LABEL_77;
                                  case 522:
                                    v13 = *v8;
                                    v14 = "perfWriteAttempts";
                                    goto LABEL_77;
                                  case 523:
                                    v13 = *v8;
                                    v14 = "perfWriteSuccesses";
                                    goto LABEL_77;
                                  case 524:
                                    v13 = *v8;
                                    v14 = "perfReadAttempts";
                                    goto LABEL_77;
                                  case 525:
                                    v13 = *v8;
                                    v14 = "perfReadSuccesses";
                                    goto LABEL_77;
                                  case 526:
                                    v13 = *v8;
                                    v14 = "perfCleanupAttempts";
                                    goto LABEL_77;
                                  case 527:
                                    v13 = *v8;
                                    v14 = "perfCleanupSuccesses";
                                    goto LABEL_77;
                                  case 530:
                                    v13 = *v8;
                                    v14 = "firstFailedDieId";
                                    goto LABEL_77;
                                  case 531:
                                    v13 = *v8;
                                    v14 = "numDieFailures";
                                    goto LABEL_77;
                                  case 532:
                                    v13 = *v8;
                                    v14 = "spareAvailablePercent";
                                    goto LABEL_77;
                                  case 533:
                                    v13 = *v8;
                                    v14 = "dataFabricErr";
                                    goto LABEL_77;
                                  case 534:
                                    v13 = *v8;
                                    v14 = "downlinkFabricErr";
                                    goto LABEL_77;
                                  case 535:
                                    v13 = *v8;
                                    v14 = "prpAccTimeoutErr";
                                    goto LABEL_77;
                                  case 537:
                                    v13 = *v8;
                                    v14 = "uplinkFabricErr";
                                    goto LABEL_77;
                                  case 538:
                                    v13 = *v8;
                                    v14 = "skinnyBandsGBB";
                                    goto LABEL_77;
                                  case 539:
                                    v13 = *v8;
                                    v14 = "AbortPad_GcMustPadBand";
                                    goto LABEL_77;
                                  case 540:
                                    v13 = *v8;
                                    v14 = "AbortPad_GcMustPadSkinny";
                                    goto LABEL_77;
                                  case 541:
                                    v13 = *v8;
                                    v14 = "bdrHostPingInitial";
                                    goto LABEL_77;
                                  case 542:
                                    v13 = *v8;
                                    v14 = "bdrHostPingMoreNeeded";
                                    goto LABEL_77;
                                  case 543:
                                    v13 = *v8;
                                    v14 = "bandParityAllocationFailed";
                                    goto LABEL_77;
                                  case 544:
                                    v13 = *v8;
                                    v14 = "fastHwBurstToSlc";
                                    goto LABEL_77;
                                  case 545:
                                    v13 = *v8;
                                    v14 = "slowHwToTlc";
                                    goto LABEL_77;
                                  case 546:
                                    v15 = "slcDemandBurstSizeDetected";
                                    v16 = a1;
                                    v17 = 546;
                                    goto LABEL_44;
                                  case 547:
                                    v15 = "slcDemandBurstDur";
                                    v16 = a1;
                                    v17 = 547;
                                    goto LABEL_44;
                                  case 548:
                                    v13 = *v8;
                                    v14 = "fastHwToTlcBurst";
                                    goto LABEL_77;
                                  case 549:
                                    v15 = "slcDemandBurstSizeSlc";
                                    v16 = a1;
                                    v17 = 549;
                                    goto LABEL_44;
                                  case 551:
                                    v15 = "balanceProportionBucketsHistogramTlc";
                                    v16 = a1;
                                    v17 = 551;
                                    goto LABEL_449;
                                  case 553:
                                    v13 = *v8;
                                    v14 = "slowHwFlushToSlc";
                                    goto LABEL_77;
                                  case 557:
                                    v13 = *v8;
                                    v14 = "slowHwToSlc";
                                    goto LABEL_77;
                                  case 558:
                                    v13 = *v8;
                                    v14 = "flushNwToSlc";
                                    goto LABEL_77;
                                  case 559:
                                    v13 = *v8;
                                    v14 = "flushNwToTlc";
                                    goto LABEL_77;
                                  case 560:
                                    v13 = *v8;
                                    v14 = "oslcHw";
                                    goto LABEL_77;
                                  case 561:
                                    v13 = *v8;
                                    v14 = "oslcTransitions";
                                    goto LABEL_77;
                                  case 563:
                                    v13 = *v8;
                                    v14 = "slcDemandFlushCount";
                                    goto LABEL_77;
                                  case 564:
                                    v13 = *v8;
                                    v14 = "slcDemandBurstCount";
                                    goto LABEL_77;
                                  case 565:
                                    v13 = *v8;
                                    v14 = "oslcBaseAvgPE";
                                    goto LABEL_77;
                                  case 566:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailNoSPBX";
                                    goto LABEL_77;
                                  case 567:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailDouble";
                                    goto LABEL_77;
                                  case 568:
                                    v13 = *v8;
                                    v14 = "oslcFastWAmpUOnOff";
                                    goto LABEL_77;
                                  case 569:
                                    v13 = *v8;
                                    v14 = "oslcSlowWAmpUOnOff";
                                    goto LABEL_77;
                                  case 570:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailInvalid";
                                    goto LABEL_77;
                                  case 572:
                                    v13 = *v8;
                                    v14 = "oslcLastWAmpUx10";
                                    goto LABEL_77;
                                  case 573:
                                    v13 = *v8;
                                    v14 = "raidFailedReadNoBlog";
                                    goto LABEL_77;
                                  case 574:
                                    v13 = *v8;
                                    v14 = "raidReconstructFailBlank";
                                    goto LABEL_77;
                                  case 575:
                                    v13 = *v8;
                                    v14 = "oslcHotTLCOnOff";
                                    goto LABEL_77;
                                  case 576:
                                    v13 = *v8;
                                    v14 = "gcVPackDestinations";
                                    goto LABEL_77;
                                  case 581:
                                    v13 = *v8;
                                    v14 = "averageTLCPECycles";
                                    goto LABEL_77;
                                  case 582:
                                    v13 = *v8;
                                    v14 = "averageSLCPECycles";
                                    goto LABEL_77;
                                  case 583:
                                    v13 = *v8;
                                    v14 = "numAtomicBoots";
                                    goto LABEL_77;
                                  case 584:
                                    v13 = *v8;
                                    v14 = "clogMinorMismatch";
                                    goto LABEL_77;
                                  case 586:
                                    v13 = *v8;
                                    v14 = "raidExpectedFailRMXReconstructionInternal";
                                    goto LABEL_77;
                                  case 587:
                                    v13 = *v8;
                                    v14 = "raidExpectedFailRMXReconstructionHost";
                                    goto LABEL_77;
                                  case 588:
                                    v13 = *v8;
                                    v14 = "oslcGCinvalidations";
                                    goto LABEL_77;
                                  case 589:
                                    v13 = *v8;
                                    v14 = "oslcGCActivateReason";
                                    goto LABEL_77;
                                  default:
                                    switch(v7)
                                    {
                                      case 590:
                                        v13 = *v8;
                                        v14 = "oslcLowCleanBandsUOnOff";
                                        goto LABEL_77;
                                      case 591:
                                        v13 = *v8;
                                        v14 = "oslcTooManyGCMustOnOff";
                                        goto LABEL_77;
                                      case 592:
                                        v13 = *v8;
                                        v14 = "oslcBaseHostWrites";
                                        goto LABEL_77;
                                      case 593:
                                        v13 = *v8;
                                        v14 = "oslcBaseBandErases";
                                        goto LABEL_77;
                                      case 594:
                                        v13 = *v8;
                                        v14 = "oslcBdrBands";
                                        goto LABEL_77;
                                      case 595:
                                        v13 = *v8;
                                        v14 = "oslcBdrValid";
                                        goto LABEL_77;
                                      case 596:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksInternal";
                                        goto LABEL_77;
                                      case 597:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksOnRV";
                                        goto LABEL_77;
                                      case 601:
                                        v13 = *v8;
                                        v14 = "waterfallLockSectors";
                                        goto LABEL_77;
                                      case 602:
                                        v13 = *v8;
                                        v14 = "oslcGCActiveWrites";
                                        goto LABEL_77;
                                      case 603:
                                        v13 = *v8;
                                        v14 = "chipIdTemperatureSample";
                                        goto LABEL_77;
                                      case 604:
                                        v13 = *v8;
                                        v14 = "gcVPackWrites";
                                        goto LABEL_77;
                                      case 605:
                                        v15 = "gcActiveReasons";
                                        v16 = a1;
                                        v17 = 605;
                                        goto LABEL_44;
                                      case 606:
                                        v13 = *v8;
                                        v14 = "eanMaxInitTimeMs";
                                        goto LABEL_77;
                                      case 607:
                                        v13 = *v8;
                                        v14 = "eanMinToFirstReadTimeMs";
                                        goto LABEL_77;
                                      case 608:
                                        v13 = *v8;
                                        v14 = "skinnyAPGMRetire";
                                        goto LABEL_77;
                                      case 609:
                                        v13 = *v8;
                                        v14 = "unexpectedBlanksHost";
                                        goto LABEL_77;
                                      case 610:
                                        v15 = "pcieAerCounters";
                                        v16 = a1;
                                        v17 = 610;
                                        goto LABEL_471;
                                      case 611:
                                        v13 = *v8;
                                        v14 = "fastHwToTlcBalance";
                                        goto LABEL_77;
                                      case 612:
                                        v13 = *v8;
                                        v14 = "perfOSLCRuns";
                                        goto LABEL_77;
                                      case 613:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInGC";
                                        goto LABEL_77;
                                      case 614:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInTT";
                                        goto LABEL_77;
                                      case 615:
                                        v13 = *v8;
                                        v14 = "slcDemandBurstWritesInNRP";
                                        goto LABEL_77;
                                      case 616:
                                        v13 = *v8;
                                        v14 = "perfTotalDmaMb";
                                        goto LABEL_77;
                                      case 617:
                                        v13 = *v8;
                                        v14 = "eanAvgInitTimeMs";
                                        goto LABEL_77;
                                      case 618:
                                        v13 = *v8;
                                        v14 = "eanAvgToFirstReadTimeMs";
                                        goto LABEL_77;
                                      case 619:
                                        v13 = *v8;
                                        v14 = "eanMaxBootReadTimeMs";
                                        goto LABEL_77;
                                      case 620:
                                        v13 = *v8;
                                        v14 = "eanAvgBootReadTimeMs";
                                        goto LABEL_77;
                                      case 621:
                                        v15 = "eanBootReadsHist";
                                        v16 = a1;
                                        v17 = 621;
                                        goto LABEL_44;
                                      case 622:
                                        v13 = *v8;
                                        v14 = "maxBgInitTimeMs";
                                        goto LABEL_77;
                                      case 623:
                                        v13 = *v8;
                                        v14 = "avgBgInitTimeMs";
                                        goto LABEL_77;
                                      case 624:
                                        v15 = "clogFailReason";
                                        v16 = a1;
                                        v17 = 624;
                                        goto LABEL_246;
                                      case 625:
                                        v13 = *v8;
                                        v14 = "eanMinBootReadMBPerSec";
                                        goto LABEL_77;
                                      case 626:
                                        v13 = *v8;
                                        v14 = "eanAvgBootReadMBPerSec";
                                        goto LABEL_77;
                                      case 627:
                                        v13 = *v8;
                                        v14 = "minSkinnyPECycles";
                                        goto LABEL_77;
                                      case 628:
                                        v13 = *v8;
                                        v14 = "maxSkinnyPECycles";
                                        goto LABEL_77;
                                      case 629:
                                        v13 = *v8;
                                        v14 = "averageSkinnyPECycles";
                                        goto LABEL_77;
                                      case 630:
                                        v15 = "raidSuccessfulRecoEAN";
                                        v16 = a1;
                                        v17 = 630;
                                        goto LABEL_994;
                                      case 631:
                                        v15 = "raidFailedRecoEAN";
                                        v16 = a1;
                                        v17 = 631;
                                        goto LABEL_994;
                                      case 632:
                                        v15 = "eanFirstReadMode";
                                        v16 = a1;
                                        v17 = 632;
LABEL_994:
                                        v18 = v8;
                                        v19 = 6;
                                        goto LABEL_51;
                                      case 635:
                                        v13 = *v8;
                                        v14 = "oslcHwGC";
                                        goto LABEL_77;
                                      case 636:
                                        v13 = *v8;
                                        v14 = "oslcHwTT";
                                        goto LABEL_77;
                                      case 637:
                                        v13 = *v8;
                                        v14 = "oslcHwNRP";
                                        goto LABEL_77;
                                      case 638:
                                        v15 = "oslcDemandBurstSize";
                                        v16 = a1;
                                        v17 = 638;
                                        goto LABEL_44;
                                      case 639:
                                        v13 = *v8;
                                        v14 = "raidReconstructSuccessBandFlowOslc";
                                        goto LABEL_77;
                                      case 640:
                                        v13 = *v8;
                                        v14 = "raidReconstructFailBandFlowOslc";
                                        goto LABEL_77;
                                      case 641:
                                        v13 = *v8;
                                        v14 = "raidFailSectors";
                                        goto LABEL_77;
                                      case 642:
                                        v13 = *v8;
                                        v14 = "eanFailSectors";
                                        goto LABEL_77;
                                      case 643:
                                        v13 = *v8;
                                        v14 = "bdrTimeMode";
                                        goto LABEL_77;
                                      case 644:
                                        v13 = *v8;
                                        v14 = "raidParityNotSavedP";
                                        goto LABEL_77;
                                      case 645:
                                        v13 = *v8;
                                        v14 = "raidParityNotSavedQ";
                                        goto LABEL_77;
                                      case 646:
                                        v13 = *v8;
                                        v14 = "raidParityInvalid";
                                        goto LABEL_77;
                                      case 647:
                                        v13 = *v8;
                                        v14 = "raidParityUnknown";
                                        goto LABEL_77;
                                      case 648:
                                        v13 = *v8;
                                        v14 = "raidParityUnmapped";
                                        goto LABEL_77;
                                      case 649:
                                        v13 = *v8;
                                        v14 = "raidParityGCUnc";
                                        goto LABEL_77;
                                      case 657:
                                        v13 = *v8;
                                        v14 = "AbortSkip_MPBXProbational";
                                        goto LABEL_77;
                                      case 659:
                                        v13 = *v8;
                                        v14 = "raidVerificationReads";
                                        goto LABEL_77;
                                      case 666:
                                        v13 = *v8;
                                        v14 = "nofDies";
                                        goto LABEL_77;
                                      case 671:
                                        v13 = *v8;
                                        v14 = "skinnyBandsNum";
                                        goto LABEL_77;
                                      case 672:
                                        v13 = *v8;
                                        v14 = "skinnyBandsNumDips";
                                        goto LABEL_77;
                                      case 674:
                                        v15 = "oslcNoVotesHw";
                                        v16 = a1;
                                        v17 = 674;
                                        goto LABEL_149;
                                      case 675:
                                        v13 = *v8;
                                        v14 = "totalLbas";
                                        goto LABEL_77;
                                      case 676:
                                        v13 = *v8;
                                        v14 = "bdrHostPingExtra";
                                        goto LABEL_77;
                                      case 677:
                                        v13 = *v8;
                                        v14 = "magazineInstanceMeta";
                                        goto LABEL_77;
                                      default:
                                        switch(v7)
                                        {
                                          case 680:
                                            v15 = "magazineFWVersion";
                                            v16 = a1;
                                            v17 = 680;
                                            goto LABEL_130;
                                          case 681:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailPMXUnsup";
                                            goto LABEL_77;
                                          case 682:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailBMXUnsup";
                                            goto LABEL_77;
                                          case 683:
                                            v13 = *v8;
                                            v14 = "iBootNANDResets";
                                            goto LABEL_77;
                                          case 684:
                                            v13 = *v8;
                                            v14 = "pcieClkreqHighTimeout";
                                            goto LABEL_77;
                                          case 687:
                                            v15 = "cbdrInitSent";
                                            v16 = a1;
                                            v17 = 687;
                                            goto LABEL_130;
                                          case 688:
                                            v13 = *v8;
                                            v14 = "cbdrPauseSent";
                                            goto LABEL_77;
                                          case 689:
                                            v13 = *v8;
                                            v14 = "cbdrResumeSent";
                                            goto LABEL_77;
                                          case 690:
                                            v13 = *v8;
                                            v14 = "cbdrGetResultSent";
                                            goto LABEL_77;
                                          case 691:
                                            v13 = *v8;
                                            v14 = "cbdrEarlyExits";
                                            goto LABEL_77;
                                          case 694:
                                            v15 = "cbdrRefreshGrades";
                                            v16 = a1;
                                            v17 = 694;
                                            goto LABEL_44;
                                          case 695:
                                            v13 = *v8;
                                            v14 = "cbdrNotEnoughReads";
                                            goto LABEL_77;
                                          case 696:
                                            v13 = *v8;
                                            v14 = "cbdrAborts";
                                            goto LABEL_77;
                                          case 697:
                                            v13 = *v8;
                                            v14 = "TurboRaidHostClassifications";
                                            goto LABEL_77;
                                          case 698:
                                            v13 = *v8;
                                            v14 = "TurboRaidInternalClassifications";
                                            goto LABEL_77;
                                          case 699:
                                            v13 = *v8;
                                            v14 = "cbdrFullyDone";
                                            goto LABEL_77;
                                          case 702:
                                            v15 = "vcurve";
                                            v16 = a1;
                                            v17 = 702;
                                            goto LABEL_284;
                                          case 703:
                                            v15 = "injDepth";
                                            v16 = a1;
                                            v17 = 703;
                                            goto LABEL_282;
                                          case 704:
                                            v13 = *v8;
                                            v14 = "logical_disk_occupied_promiles";
                                            goto LABEL_77;
                                          case 711:
                                            v13 = *v8;
                                            v14 = "raidPrevFailedReconstructSkip";
                                            goto LABEL_77;
                                          case 712:
                                            v13 = *v8;
                                            v14 = "TurboRaidSuccessfulHostAuxReads";
                                            goto LABEL_77;
                                          case 713:
                                            v13 = *v8;
                                            v14 = "TurboRaidSuccessfulInternalAuxReads";
                                            goto LABEL_77;
                                          case 714:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationReliabilityHost";
                                            goto LABEL_77;
                                          case 715:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationReliabilityInternal";
                                            goto LABEL_77;
                                          case 716:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationQualityHost";
                                            goto LABEL_77;
                                          case 717:
                                            v13 = *v8;
                                            v14 = "turboRaidClassificationQualityInternal";
                                            goto LABEL_77;
                                          case 719:
                                            v13 = *v8;
                                            v14 = "skinnyBandErases";
                                            goto LABEL_77;
                                          case 721:
                                            v13 = *v8;
                                            v14 = "gcPDusterDestinations";
                                            goto LABEL_77;
                                          case 722:
                                            v13 = *v8;
                                            v14 = "gcPDusterWrites";
                                            goto LABEL_77;
                                          case 730:
                                            v13 = *v8;
                                            v14 = "rvFails";
                                            goto LABEL_77;
                                          case 737:
                                            v13 = *v8;
                                            v14 = "TurboRaidFailedHostAuxReads";
                                            goto LABEL_77;
                                          case 738:
                                            v13 = *v8;
                                            v14 = "TurboRaidFailedInternalAuxReads";
                                            goto LABEL_77;
                                          case 741:
                                            v13 = *v8;
                                            v14 = "autoSkipTriggers";
                                            goto LABEL_77;
                                          case 742:
                                            v13 = *v8;
                                            v14 = "autoSkipPlanes";
                                            goto LABEL_77;
                                          case 744:
                                            v15 = "raidReconstructDurationHisto";
                                            v16 = a1;
                                            v17 = 744;
                                            goto LABEL_149;
                                          case 745:
                                            v15 = "failsOnReconstructHisto";
                                            v16 = a1;
                                            v17 = 745;
                                            goto LABEL_149;
                                          case 746:
                                            v13 = *v8;
                                            v14 = "bandKill_userFlattenExcessive";
                                            goto LABEL_77;
                                          case 747:
                                            v13 = *v8;
                                            v14 = "bandKill_IntFlattenExcessive";
                                            goto LABEL_77;
                                          case 748:
                                            v13 = *v8;
                                            v14 = "bandKill_userFlattenBalance";
                                            goto LABEL_77;
                                          case 749:
                                            v13 = *v8;
                                            v14 = "bandKill_intFlattenBalance";
                                            goto LABEL_77;
                                          case 750:
                                            v13 = *v8;
                                            v14 = "bandKill_formatVertExcessive";
                                            goto LABEL_77;
                                          case 751:
                                            v13 = *v8;
                                            v14 = "bandKill_formatVertBalance";
                                            goto LABEL_77;
                                          case 753:
                                            v13 = *v8;
                                            v14 = "cbdrNumSlowRefreshes";
                                            goto LABEL_77;
                                          case 754:
                                            v13 = *v8;
                                            v14 = "cbdrNumFastRefreshes";
                                            goto LABEL_77;
                                          case 755:
                                            v13 = *v8;
                                            v14 = "cbdrTotalRefreshValidity";
                                            goto LABEL_77;
                                          case 756:
                                            v15 = "cbdrRefreshedAges";
                                            v16 = a1;
                                            v17 = 756;
                                            goto LABEL_673;
                                          case 758:
                                            v13 = *v8;
                                            v14 = "cbdrSkippedBlocks";
                                            goto LABEL_77;
                                          case 759:
                                            v15 = "cbdrScanPct";
                                            v16 = a1;
                                            v17 = 759;
                                            goto LABEL_102;
                                          case 760:
                                            v13 = *v8;
                                            v14 = "raidSuccessfulBMXReconstructionInternal";
                                            goto LABEL_77;
                                          case 761:
                                            v13 = *v8;
                                            v14 = "raidSuccessfulBMXReconstructionHost";
                                            goto LABEL_77;
                                          case 762:
                                            v13 = *v8;
                                            v14 = "raidFailedBMXReconstructionInternal";
                                            goto LABEL_77;
                                          case 763:
                                            v13 = *v8;
                                            v14 = "raidFailedBMXReconstructionHost";
                                            goto LABEL_77;
                                          case 764:
                                            v13 = *v8;
                                            v14 = "ricSPRVFail";
                                            goto LABEL_77;
                                          case 765:
                                            v13 = *v8;
                                            v14 = "ricMPRVFail";
                                            goto LABEL_77;
                                          case 767:
                                            v15 = "cbdrRefreshGradesSLC";
                                            v16 = a1;
                                            v17 = 767;
                                            goto LABEL_44;
                                          case 768:
                                            v15 = "cbdrRefreshedAgesSLC";
                                            v16 = a1;
                                            v17 = 768;
LABEL_673:
                                            v18 = v8;
                                            v19 = 9;
                                            goto LABEL_51;
                                          case 769:
                                            v15 = "cbdrScanPctSLC";
                                            v16 = a1;
                                            v17 = 769;
                                            goto LABEL_102;
                                          case 770:
                                            v15 = "cpuBurstLength";
                                            v16 = a1;
                                            v17 = 770;
                                            goto LABEL_149;
                                          case 771:
                                            v13 = *v8;
                                            v14 = "autoSkipRaidRecoFail";
                                            goto LABEL_77;
                                          case 772:
                                            v15 = "dmReasonsSlc";
                                            v16 = a1;
                                            v17 = 772;
                                            goto LABEL_284;
                                          case 773:
                                            v15 = "dmReasonsTlc";
                                            v16 = a1;
                                            v17 = 773;
                                            goto LABEL_284;
                                          case 774:
                                            v13 = *v8;
                                            v14 = "raidReconstructFailBMXAbort";
                                            goto LABEL_77;
                                          case 775:
                                            v13 = *v8;
                                            v14 = "bandKill_fatBindingNoBlocks";
                                            goto LABEL_77;
                                          case 776:
                                            v13 = *v8;
                                            v14 = "bandKill_fatBindingFewBlocks";
                                            goto LABEL_77;
                                          default:
                                            switch(v7)
                                            {
                                              case 777:
                                                v13 = *v8;
                                                v14 = "numBadBootBlocks";
                                                goto LABEL_77;
                                              case 778:
                                                v13 = *v8;
                                                v14 = "snapshotCPUHigh";
                                                goto LABEL_77;
                                              case 779:
                                                v13 = *v8;
                                                v14 = "snapshotCPULow";
                                                goto LABEL_77;
                                              case 780:
                                                v13 = *v8;
                                                v14 = "gcWithoutBMs";
                                                goto LABEL_77;
                                              case 781:
                                                v15 = "gcSearchTimeHistory";
                                                v16 = a1;
                                                v17 = 781;
                                                goto LABEL_44;
                                              case 785:
                                                v15 = "gcSearchPortion";
                                                v16 = a1;
                                                v17 = 785;
                                                goto LABEL_246;
                                              case 786:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBmxMp";
                                                goto LABEL_77;
                                              case 787:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBmx";
                                                goto LABEL_77;
                                              case 788:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBMXUECC";
                                                goto LABEL_77;
                                              case 789:
                                                v13 = *v8;
                                                v14 = "raidReconstructFailBMXBlank";
                                                goto LABEL_77;
                                              case 790:
                                                v13 = *v8;
                                                v14 = "raidPrevFailedReconstructBmxMpSkip";
                                                goto LABEL_77;
                                              case 792:
                                                v13 = *v8;
                                                v14 = "numTLCFatBands";
                                                goto LABEL_77;
                                              case 793:
                                                v13 = *v8;
                                                v14 = "fatValidity";
                                                goto LABEL_77;
                                              case 794:
                                                v13 = *v8;
                                                v14 = "fatTotal";
                                                goto LABEL_77;
                                              case 798:
                                                v15 = "raidBMXFailP";
                                                v16 = a1;
                                                v17 = 798;
                                                goto LABEL_144;
                                              case 799:
                                                v15 = "raidBMXFailUECC";
                                                v16 = a1;
                                                v17 = 799;
                                                goto LABEL_144;
                                              case 804:
                                                v15 = "raidBMXFailNoSPBX";
                                                v16 = a1;
                                                v17 = 804;
                                                goto LABEL_144;
                                              case 806:
                                                v15 = "raidBMXFailBlank";
                                                v16 = a1;
                                                v17 = 806;
                                                goto LABEL_144;
                                              case 809:
                                                v15 = "raidBMXFailUnsup";
                                                v16 = a1;
                                                v17 = 809;
                                                goto LABEL_144;
                                              case 811:
                                                v15 = "raidBMXFailMpSkip";
                                                v16 = a1;
                                                v17 = 811;
                                                goto LABEL_144;
                                              case 812:
                                                v15 = "raidBMXFailAbort";
                                                v16 = a1;
                                                v17 = 812;
                                                goto LABEL_144;
                                              case 813:
                                                v13 = *v8;
                                                v14 = "TurboRaidIsEnabled";
                                                goto LABEL_77;
                                              case 814:
                                                v15 = "raidBMXFailOther";
                                                v16 = a1;
                                                v17 = 814;
                                                goto LABEL_144;
                                              case 815:
                                                v15 = "raidBMXSuccess";
                                                v16 = a1;
                                                v17 = 815;
                                                goto LABEL_144;
                                              case 816:
                                                v13 = *v8;
                                                v14 = "skinnyBandsExtraDip";
                                                goto LABEL_77;
                                              case 821:
                                                v13 = *v8;
                                                v14 = "writeAmp";
                                                goto LABEL_77;
                                              case 822:
                                                v13 = *v8;
                                                v14 = "ricMaxClogOnlyPages";
                                                goto LABEL_77;
                                              case 823:
                                                v15 = "readClassifyStatusesHisto";
                                                v16 = a1;
                                                v17 = 823;
                                                goto LABEL_130;
                                              case 824:
                                                v15 = "readWithAuxStatusesHisto";
                                                v16 = a1;
                                                v17 = 824;
                                                goto LABEL_44;
                                              case 825:
                                                v15 = "readReconstructStatusesHisto";
                                                v16 = a1;
                                                v17 = 825;
                                                goto LABEL_44;
                                              case 826:
                                                v13 = *v8;
                                                v14 = "bdrBackupChecks";
                                                goto LABEL_77;
                                              case 827:
                                                v13 = *v8;
                                                v14 = "ricExceedClogOnlyPagesTH";
                                                goto LABEL_77;
                                              case 828:
                                                v13 = *v8;
                                                v14 = "numDipFailures";
                                                goto LABEL_77;
                                              case 831:
                                                v13 = *v8;
                                                v14 = "prefetchNextRange";
                                                goto LABEL_77;
                                              case 862:
                                                v13 = *v8;
                                                v14 = "raidSuccessfulSkip";
                                                goto LABEL_77;
                                              case 863:
                                                v13 = *v8;
                                                v14 = "raidFailedSkip";
                                                goto LABEL_77;
                                              case 864:
                                                v13 = *v8;
                                                v14 = "raidSkipAttempts";
                                                goto LABEL_77;
                                              case 865:
                                                v15 = "timeOfThrottlingPerLevel";
                                                v16 = a1;
                                                v17 = 865;
                                                goto LABEL_213;
                                              case 866:
                                                v15 = "timeOfThrottlingPerReadLevel";
                                                v16 = a1;
                                                v17 = 866;
                                                goto LABEL_213;
                                              case 867:
                                                v15 = "timeOfThrottlingPerWriteLevel";
                                                v16 = a1;
                                                v17 = 867;
                                                goto LABEL_213;
                                              case 868:
                                                v15 = "dmReasonsSlc_1bc";
                                                v16 = a1;
                                                v17 = 868;
                                                goto LABEL_284;
                                              case 869:
                                                v15 = "dmReasonsTlc_1bc";
                                                v16 = a1;
                                                v17 = 869;
                                                goto LABEL_284;
                                              case 870:
                                                v15 = "dmReasonsSlc_1bc_he";
                                                v16 = a1;
                                                v17 = 870;
                                                goto LABEL_284;
                                              case 871:
                                                v15 = "dmReasonsTlc_1bc_he";
                                                v16 = a1;
                                                v17 = 871;
                                                goto LABEL_284;
                                              case 876:
                                                v15 = "dmReasonsSlc_mbc";
                                                v16 = a1;
                                                v17 = 876;
                                                goto LABEL_284;
                                              case 877:
                                                v15 = "dmReasonsTlc_mbc";
                                                v16 = a1;
                                                v17 = 877;
                                                goto LABEL_284;
                                              case 883:
                                                v13 = *v8;
                                                v14 = "clogEmptyProgramms";
                                                goto LABEL_77;
                                              case 884:
                                                v13 = *v8;
                                                v14 = "oslcHwCloseBand";
                                                goto LABEL_77;
                                              case 891:
                                                v15 = "turboRaidSuccessAuxPartition";
                                                v16 = a1;
                                                v17 = 891;
                                                goto LABEL_123;
                                              case 892:
                                                v15 = "turboRaidFailAuxPartition";
                                                v16 = a1;
                                                v17 = 892;
                                                goto LABEL_123;
                                              case 893:
                                                v15 = "turboRaidClassifyQualPartition";
                                                v16 = a1;
                                                v17 = 893;
                                                goto LABEL_123;
                                              case 894:
                                                v15 = "turboRaidClassifyRelPartition";
                                                v16 = a1;
                                                v17 = 894;
                                                goto LABEL_123;
                                              case 895:
                                                v13 = *v8;
                                                v14 = "IND_pool_freeMinSilo";
                                                goto LABEL_77;
                                              case 896:
                                                v13 = *v8;
                                                v14 = "autoSweepBlocks";
                                                goto LABEL_77;
                                              case 897:
                                                v15 = "wcWrFragSizes";
                                                v16 = a1;
                                                v17 = 897;
                                                goto LABEL_246;
                                              case 898:
                                                v15 = "indStateAcrossGcDidNoL";
                                                v16 = a1;
                                                v17 = 898;
                                                goto LABEL_246;
                                              case 899:
                                                v15 = "indStateAcrossGcDidL";
                                                v16 = a1;
                                                v17 = 899;
                                                goto LABEL_246;
                                              case 900:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToWasRetire";
                                                goto LABEL_77;
                                              case 901:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToOpenBand";
                                                goto LABEL_77;
                                              case 902:
                                                v13 = *v8;
                                                v14 = "turboRaidNoClassifyDueToQualityBlock";
                                                goto LABEL_77;
                                              case 903:
                                                v13 = *v8;
                                                v14 = "turboRaidGbbOpenBand";
                                                goto LABEL_77;
                                              case 904:
                                                v13 = *v8;
                                                v14 = "turboRaidGbbShouldRetireOnRefresh";
                                                goto LABEL_77;
                                              case 905:
                                                v15 = "turboRaidRelPerBlock";
                                                v16 = a1;
                                                v17 = 905;
                                                goto LABEL_246;
                                              case 906:
                                                v15 = "turboRaidRelBetweenRefreshesPerBlock";
                                                v16 = a1;
                                                v17 = 906;
                                                goto LABEL_246;
                                              default:
                                                if (v7 <= 997)
                                                {
                                                  switch(v7)
                                                  {
                                                    case 907:
                                                      v15 = "turboRaidMaxRelBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 907;
                                                      goto LABEL_246;
                                                    case 908:
                                                      v15 = "turboRaidMinRelBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 908;
                                                      goto LABEL_246;
                                                    case 909:
                                                    case 910:
                                                    case 911:
                                                    case 912:
                                                    case 913:
                                                    case 914:
                                                    case 915:
                                                    case 916:
                                                    case 917:
                                                    case 924:
                                                    case 925:
                                                    case 926:
                                                    case 927:
                                                    case 928:
                                                    case 929:
                                                    case 936:
                                                    case 941:
                                                    case 945:
                                                    case 946:
                                                    case 947:
                                                    case 949:
                                                    case 950:
                                                    case 952:
                                                    case 954:
                                                    case 955:
                                                    case 956:
                                                    case 957:
                                                    case 958:
                                                    case 959:
                                                    case 960:
                                                    case 963:
                                                    case 966:
                                                    case 968:
                                                    case 969:
                                                    case 970:
                                                      goto LABEL_858;
                                                    case 918:
                                                      v15 = "turboRaidMaxCyclesBetweenRel";
                                                      v16 = a1;
                                                      v17 = 918;
                                                      goto LABEL_246;
                                                    case 919:
                                                      v15 = "turboRaidMinCyclesBetweenRel";
                                                      v16 = a1;
                                                      v17 = 919;
                                                      goto LABEL_246;
                                                    case 920:
                                                      v15 = "turboRaidAuxPerBlock";
                                                      v16 = a1;
                                                      v17 = 920;
                                                      goto LABEL_246;
                                                    case 921:
                                                      v15 = "turboRaidAuxBetweenRefreshesPerBlock";
                                                      v16 = a1;
                                                      v17 = 921;
                                                      goto LABEL_246;
                                                    case 922:
                                                      v13 = *v8;
                                                      v14 = "turboRaidRelLockMark";
                                                      goto LABEL_77;
                                                    case 923:
                                                      v13 = *v8;
                                                      v14 = "turboRaidAuxLockMark";
                                                      goto LABEL_77;
                                                    case 930:
                                                      v15 = "turboRaidMaxCyclesBetweenAux";
                                                      v16 = a1;
                                                      v17 = 930;
                                                      goto LABEL_246;
                                                    case 931:
                                                      v15 = "turboRaidMinCyclesBetweenAux";
                                                      v16 = a1;
                                                      v17 = 931;
                                                      goto LABEL_246;
                                                    case 932:
                                                      v15 = "turboRaidLastRelPECycles";
                                                      v16 = a1;
                                                      v17 = 932;
                                                      goto LABEL_246;
                                                    case 933:
                                                      v15 = "turboRaidRelQualPECycles";
                                                      v16 = a1;
                                                      v17 = 933;
                                                      goto LABEL_246;
                                                    case 934:
                                                      v15 = "turboRaidLastAuxPECycles";
                                                      v16 = a1;
                                                      v17 = 934;
                                                      goto LABEL_246;
                                                    case 935:
                                                      v15 = "turboRaidAuxQualPECycles";
                                                      v16 = a1;
                                                      v17 = 935;
                                                      goto LABEL_246;
                                                    case 937:
                                                      v13 = *v8;
                                                      v14 = "turboRaidPEFailAfterRel";
                                                      goto LABEL_77;
                                                    case 938:
                                                      v13 = *v8;
                                                      v14 = "turboRaidPEFailAfterAux";
                                                      goto LABEL_77;
                                                    case 939:
                                                      v13 = *v8;
                                                      v14 = "dvfmVotesCPU";
                                                      goto LABEL_77;
                                                    case 940:
                                                      v13 = *v8;
                                                      v14 = "dvfmVotesBandwidth";
                                                      goto LABEL_77;
                                                    case 942:
                                                      v13 = *v8;
                                                      v14 = "maxSLCEndurance";
                                                      goto LABEL_77;
                                                    case 943:
                                                      v13 = *v8;
                                                      v14 = "maxMixedEndurance";
                                                      goto LABEL_77;
                                                    case 944:
                                                      v13 = *v8;
                                                      v14 = "maxNativeEndurance";
                                                      goto LABEL_77;
                                                    case 948:
                                                      v15 = "assertHistory";
                                                      v16 = a1;
                                                      v17 = 948;
                                                      v18 = v8;
                                                      v19 = 40;
                                                      goto LABEL_51;
                                                    case 951:
                                                      v13 = *v8;
                                                      v14 = "asp3Support";
                                                      goto LABEL_77;
                                                    case 953:
                                                      v13 = *v8;
                                                      v14 = "numCrossTempRaidUecc";
                                                      goto LABEL_77;
                                                    case 961:
                                                      v13 = *v8;
                                                      v14 = "osBuildStr";
                                                      goto LABEL_77;
                                                    case 962:
                                                      v13 = *v8;
                                                      v14 = "raidConfig";
                                                      goto LABEL_77;
                                                    case 964:
                                                      v13 = *v8;
                                                      v14 = "raidBlkParityBands";
                                                      goto LABEL_77;
                                                    case 965:
                                                      v13 = *v8;
                                                      v14 = "raidBlkParitySecs";
                                                      goto LABEL_77;
                                                    case 967:
                                                      v15 = "indTrimFrags";
                                                      v16 = a1;
                                                      v17 = 967;
                                                      goto LABEL_282;
                                                    case 971:
                                                      v15 = "indUsedFrags";
                                                      v16 = a1;
                                                      v17 = 971;
                                                      goto LABEL_282;
                                                    default:
                                                      if (v7 == 996)
                                                      {
                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "clogFindFail";
                                                      }

                                                      else
                                                      {
                                                        if (v7 != 997)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "clogFindBlank";
                                                      }

                                                      break;
                                                  }

                                                  goto LABEL_78;
                                                }

                                                if (v7 > 1137)
                                                {
                                                  if (v7 <= 1170)
                                                  {
                                                    if (v7 > 1156)
                                                    {
                                                      if (v7 > 1167)
                                                      {
                                                        if (v7 == 1168)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1168;
                                                          v15 = "poDetectPERemovalTotalCost";
LABEL_123:
                                                          v18 = v8;
                                                          v19 = 2;
                                                          goto LABEL_51;
                                                        }

                                                        if (v7 == 1169)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1169;
                                                          v15 = "poDetectEmptySpotRemovalTotalCost";
                                                          goto LABEL_123;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v7 == 1157)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "eanMaxForceROTimeMs";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1158)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "eanMaxForceRORecoTimeMs";
                                                          goto LABEL_78;
                                                        }
                                                      }

                                                      goto LABEL_858;
                                                    }

                                                    if (v7 > 1147)
                                                    {
                                                      if (v7 == 1148)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1148;
                                                        v15 = "gc_concurrent_dw_gc1";
                                                      }

                                                      else
                                                      {
                                                        if (v7 != 1149)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v16 = a1;
                                                        v17 = 1149;
                                                        v15 = "gc_concurrent_dw_gc2";
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v7 == 1138)
                                                      {
                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "numOfToHappySwitches";
                                                        goto LABEL_78;
                                                      }

                                                      if (v7 != 1147)
                                                      {
                                                        goto LABEL_858;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1147;
                                                      v15 = "gc_concurrent_dw_gc12";
                                                    }

LABEL_875:
                                                    v18 = v8;
                                                    v19 = 24;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 > 1180)
                                                  {
                                                    if (v7 > 1182)
                                                    {
                                                      if (v7 != 1183)
                                                      {
                                                        if (v7 != 1184)
                                                        {
                                                          goto LABEL_858;
                                                        }

                                                        v13 = *v8;
                                                        v20 = a1;
                                                        v14 = "unhappy_state";
                                                        goto LABEL_78;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1183;
                                                      v15 = "gc_tot_dw_gc2";
                                                    }

                                                    else
                                                    {
                                                      v16 = a1;
                                                      if (v7 == 1181)
                                                      {
                                                        v17 = 1181;
                                                        v15 = "gc_cur_dw_gc3";
                                                      }

                                                      else
                                                      {
                                                        v17 = 1182;
                                                        v15 = "gc_tot_dw_gc1";
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v7 <= 1178)
                                                    {
                                                      if (v7 == 1171)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1171;
                                                        v15 = "poDetectEmptySpotRemovalAge";
                                                        goto LABEL_44;
                                                      }

                                                      if (v7 == 1172)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1172;
                                                        v15 = "poDetectGBBedMostSevereCost";
                                                        goto LABEL_130;
                                                      }

                                                      goto LABEL_858;
                                                    }

                                                    v16 = a1;
                                                    if (v7 == 1179)
                                                    {
                                                      v17 = 1179;
                                                      v15 = "gc_cur_dw_gc1";
                                                    }

                                                    else
                                                    {
                                                      v17 = 1180;
                                                      v15 = "gc_cur_dw_gc2";
                                                    }
                                                  }

LABEL_144:
                                                  v18 = v8;
                                                  v19 = 4;
                                                  goto LABEL_51;
                                                }

                                                if (v7 > 1039)
                                                {
                                                  if (v7 <= 1104)
                                                  {
                                                    if (v7 > 1041)
                                                    {
                                                      if (v7 != 1042)
                                                      {
                                                        if (v7 == 1080)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "raidForceClogLoad";
                                                          goto LABEL_78;
                                                        }

                                                        goto LABEL_858;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1042;
                                                      v15 = "bandsAgeBinsReadSectors";
                                                      v18 = v8;
                                                      v19 = 15;
                                                    }

                                                    else
                                                    {
                                                      v16 = a1;
                                                      if (v7 == 1040)
                                                      {
                                                        v17 = 1040;
                                                        v15 = "bandsAgeBinsV2";
                                                      }

                                                      else
                                                      {
                                                        v17 = 1041;
                                                        v15 = "bandsAgeBinsSnapshot";
                                                      }

                                                      v18 = v8;
                                                      v19 = 31;
                                                    }

LABEL_51:
                                                    AddFieldToContext(v16, v17, v15, v18, v19);
                                                    goto LABEL_79;
                                                  }

                                                  if (v7 <= 1115)
                                                  {
                                                    if (v7 == 1105)
                                                    {
                                                      v16 = a1;
                                                      v17 = 1105;
                                                      v15 = "hostReadSequential";
                                                      goto LABEL_847;
                                                    }

                                                    if (v7 == 1106)
                                                    {
                                                      v16 = a1;
                                                      v17 = 1106;
                                                      v15 = "GCReadSequential";
LABEL_847:
                                                      v18 = v8;
                                                      v19 = 14;
                                                      goto LABEL_51;
                                                    }

                                                    goto LABEL_858;
                                                  }

                                                  if (v7 == 1116)
                                                  {
                                                    v16 = a1;
                                                    v17 = 1116;
                                                    v15 = "gcwamp";
LABEL_284:
                                                    v18 = v8;
                                                    v19 = 32;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 == 1137)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "numOfToUnhappySwitches";
                                                    goto LABEL_78;
                                                  }

LABEL_858:
                                                  switch(v7)
                                                  {
                                                    case 1185:
                                                      v13 = *v8;
                                                      v14 = "unhappy_level";
                                                      goto LABEL_77;
                                                    case 1186:
                                                    case 1187:
                                                    case 1188:
                                                    case 1191:
                                                    case 1192:
                                                    case 1193:
                                                    case 1194:
                                                    case 1195:
                                                    case 1200:
                                                    case 1203:
                                                    case 1204:
                                                    case 1205:
                                                    case 1206:
                                                    case 1207:
                                                    case 1208:
                                                    case 1209:
                                                    case 1210:
                                                    case 1212:
                                                    case 1213:
                                                    case 1214:
                                                    case 1219:
                                                    case 1220:
                                                    case 1235:
                                                    case 1236:
                                                    case 1237:
                                                    case 1238:
                                                    case 1239:
                                                    case 1240:
                                                    case 1242:
                                                    case 1243:
                                                    case 1245:
                                                    case 1247:
                                                    case 1248:
                                                    case 1249:
                                                    case 1250:
                                                    case 1251:
                                                    case 1252:
                                                    case 1253:
                                                    case 1254:
                                                    case 1255:
                                                    case 1256:
                                                    case 1257:
                                                    case 1258:
                                                    case 1259:
                                                    case 1260:
                                                    case 1261:
                                                    case 1262:
                                                    case 1263:
LABEL_896:
                                                      if (v7 <= 1447)
                                                      {
                                                        switch(v7)
                                                        {
                                                          case 1354:
                                                            v13 = *v8;
                                                            v14 = "numOfThrottlingLevels";
                                                            goto LABEL_77;
                                                          case 1355:
                                                            v13 = *v8;
                                                            v14 = "crossTempColdEvict";
                                                            goto LABEL_77;
                                                          case 1356:
                                                            v13 = *v8;
                                                            v14 = "crossTempHotEvict";
                                                            goto LABEL_77;
                                                          case 1357:
                                                            v13 = *v8;
                                                            v14 = "crossTempColdHotEvict";
                                                            goto LABEL_77;
                                                          case 1358:
                                                            v15 = "tempChangedHisto";
                                                            v16 = a1;
                                                            v17 = 1358;
                                                            goto LABEL_940;
                                                          case 1359:
                                                            v15 = "tempChangedEnterETHisto";
                                                            v16 = a1;
                                                            v17 = 1359;
LABEL_940:
                                                            v18 = v8;
                                                            v19 = 13;
                                                            goto LABEL_51;
                                                          case 1362:
                                                            v15 = "gcMustReasons";
                                                            v16 = a1;
                                                            v17 = 1362;
                                                            goto LABEL_93;
                                                          case 1367:
                                                            v15 = "asyncMessageHisto";
                                                            v16 = a1;
                                                            v17 = 1367;
                                                            goto LABEL_284;
                                                          case 1368:
                                                            v13 = *v8;
                                                            v14 = "massScanIgnoredTooFrequent";
                                                            goto LABEL_77;
                                                          case 1369:
                                                            v15 = "realGBBPerDipOfFailingDie";
                                                            v16 = a1;
                                                            v17 = 1369;
                                                            goto LABEL_149;
                                                          case 1379:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedReadBlank";
                                                            goto LABEL_77;
                                                          case 1380:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedRaidSuccessValidLba";
                                                            goto LABEL_77;
                                                          case 1381:
                                                            v13 = *v8;
                                                            v14 = "unexpectedRaidFailures";
                                                            goto LABEL_77;
                                                          case 1382:
                                                            v13 = *v8;
                                                            v14 = "boffOrderedUnexpectedBlankValid";
                                                            goto LABEL_77;
                                                          case 1383:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailPMXReconstructionInternal";
                                                            goto LABEL_77;
                                                          case 1384:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailPMXReconstructionHost";
                                                            goto LABEL_77;
                                                          case 1385:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailBMXReconstructionInternal";
                                                            goto LABEL_77;
                                                          case 1386:
                                                            v13 = *v8;
                                                            v14 = "raidExpectedFailBMXReconstructionHost";
                                                            goto LABEL_77;
                                                          case 1392:
                                                            v13 = *v8;
                                                            v14 = "cbdrHPScanHP";
                                                            goto LABEL_77;
                                                          case 1393:
                                                            v13 = *v8;
                                                            v14 = "cbdrMPScanMP";
                                                            goto LABEL_77;
                                                          case 1394:
                                                            v13 = *v8;
                                                            v14 = "cbdrMPScanHP";
                                                            goto LABEL_77;
                                                          case 1401:
                                                            v13 = *v8;
                                                            v14 = "ldefragFailedMemBalancer";
                                                            goto LABEL_77;
                                                          case 1409:
                                                            v13 = *v8;
                                                            v14 = "BP_readThrottleEngagedCnt";
                                                            goto LABEL_77;
                                                          case 1410:
                                                            v13 = *v8;
                                                            v14 = "BP_readThrottleActualSize";
                                                            goto LABEL_77;
                                                          default:
                                                            goto LABEL_79;
                                                        }
                                                      }

                                                      if (v7 > 1535)
                                                      {
                                                        if (v7 > 1542)
                                                        {
                                                          if (v7 <= 1544)
                                                          {
                                                            v16 = a1;
                                                            if (v7 == 1543)
                                                            {
                                                              v17 = 1543;
                                                              v15 = "istkLowNoDIPingIntervals";
                                                            }

                                                            else
                                                            {
                                                              v17 = 1544;
                                                              v15 = "istkLowNoSUIPingIntervals";
                                                            }

                                                            goto LABEL_44;
                                                          }

                                                          if (v7 == 1545)
                                                          {
                                                            v16 = a1;
                                                            v17 = 1545;
                                                            v15 = "istkLowAfterMedIntervals";
                                                            goto LABEL_994;
                                                          }

                                                          if (v7 == 1547)
                                                          {
                                                            v16 = a1;
                                                            v17 = 1547;
                                                            v15 = "istkHWBetweenMed";
                                                            goto LABEL_102;
                                                          }

                                                          if (v7 != 1570)
                                                          {
                                                            goto LABEL_79;
                                                          }

                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "uptimeSeconds";
                                                        }

                                                        else if (v7 <= 1537)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          if (v7 == 1536)
                                                          {
                                                            v14 = "istkLowPings";
                                                          }

                                                          else
                                                          {
                                                            v14 = "istkLowNoDIPings";
                                                          }
                                                        }

                                                        else
                                                        {
                                                          switch(v7)
                                                          {
                                                            case 1538:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkLowNoSUIPings";
                                                              break;
                                                            case 1539:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkMedPings";
                                                              break;
                                                            case 1540:
                                                              v13 = *v8;
                                                              v20 = a1;
                                                              v14 = "istkHighPings";
                                                              break;
                                                            default:
                                                              goto LABEL_79;
                                                          }
                                                        }

                                                        goto LABEL_78;
                                                      }

                                                      if (v7 <= 1462)
                                                      {
                                                        if (v7 <= 1449)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          if (v7 == 1448)
                                                          {
                                                            v14 = "deviceTempMaxValue";
                                                          }

                                                          else
                                                          {
                                                            v14 = "deviceTempHighValue";
                                                          }

                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1450)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "deviceTempLowValue";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 == 1452)
                                                        {
                                                          v13 = *v8;
                                                          v20 = a1;
                                                          v14 = "selfPanicEnabled";
                                                          goto LABEL_78;
                                                        }

                                                        if (v7 != 1462)
                                                        {
                                                          goto LABEL_79;
                                                        }

                                                        v16 = a1;
                                                        v17 = 1462;
                                                        v15 = "nandWritesByMode";
                                                        goto LABEL_994;
                                                      }

                                                      if (v7 > 1532)
                                                      {
                                                        if (v7 == 1533)
                                                        {
                                                          v16 = a1;
                                                          v17 = 1533;
                                                          v15 = "istkLowPingIntervals";
                                                          goto LABEL_282;
                                                        }

                                                        v16 = a1;
                                                        if (v7 == 1534)
                                                        {
                                                          v17 = 1534;
                                                          v15 = "istkMedPingIntervals";
                                                        }

                                                        else
                                                        {
                                                          v17 = 1535;
                                                          v15 = "istkHighPingIntervals";
                                                        }

                                                        goto LABEL_44;
                                                      }

                                                      if (v7 == 1463)
                                                      {
                                                        v16 = a1;
                                                        v17 = 1463;
                                                        v15 = "nandReadsByMode";
                                                        goto LABEL_994;
                                                      }

                                                      if (v7 != 1494)
                                                      {
                                                        goto LABEL_79;
                                                      }

                                                      v16 = a1;
                                                      v17 = 1494;
                                                      v15 = "throttlingSecPerTTPerMW";
                                                      break;
                                                    case 1189:
                                                      v13 = *v8;
                                                      v14 = "lastLbaFormatTime";
                                                      goto LABEL_77;
                                                    case 1190:
                                                      v15 = "powerDownTime";
                                                      v16 = a1;
                                                      v17 = 1190;
                                                      goto LABEL_449;
                                                    case 1196:
                                                      v15 = "poDetectGBBedTotalCost";
                                                      v16 = a1;
                                                      v17 = 1196;
                                                      goto LABEL_102;
                                                    case 1197:
                                                      v15 = "poDetectGBBedAge";
                                                      v16 = a1;
                                                      v17 = 1197;
                                                      goto LABEL_44;
                                                    case 1198:
                                                      v15 = "poDetectPERemovalMostSevereCost";
                                                      v16 = a1;
                                                      v17 = 1198;
                                                      goto LABEL_130;
                                                    case 1199:
                                                      v13 = *v8;
                                                      v14 = "poDetectCurrentSize";
                                                      goto LABEL_77;
                                                    case 1201:
                                                      v15 = "gcVerticalSuccssfulAlignments";
                                                      v16 = a1;
                                                      v17 = 1201;
                                                      goto LABEL_144;
                                                    case 1202:
                                                      v15 = "gcVerticalNoAlignmentDueToMissingSegs";
                                                      v16 = a1;
                                                      v17 = 1202;
                                                      goto LABEL_144;
                                                    case 1211:
                                                      v15 = "forcedAllocationSmallEraseQ";
                                                      v16 = a1;
                                                      v17 = 1211;
                                                      goto LABEL_875;
                                                    case 1215:
                                                      v15 = "hostWritesPerThrottleZone";
                                                      v16 = a1;
                                                      v17 = 1215;
                                                      goto LABEL_102;
                                                    case 1216:
                                                      v15 = "tlcWLPerDipAvgPEC";
                                                      v16 = a1;
                                                      v17 = 1216;
                                                      goto LABEL_875;
                                                    case 1217:
                                                      v15 = "tlcWLPerDipMaxPEC";
                                                      v16 = a1;
                                                      v17 = 1217;
                                                      goto LABEL_875;
                                                    case 1218:
                                                      v15 = "tlcWLPerDipMinPEC";
                                                      v16 = a1;
                                                      v17 = 1218;
                                                      goto LABEL_875;
                                                    case 1221:
                                                      v13 = *v8;
                                                      v14 = "RD_openBandEvictBlocks";
                                                      goto LABEL_77;
                                                    case 1222:
                                                      v13 = *v8;
                                                      v14 = "RD_closedBandEvictBlocks";
                                                      goto LABEL_77;
                                                    case 1223:
                                                      v15 = "RD_closedBlocksTHHist";
                                                      v16 = a1;
                                                      v17 = 1223;
                                                      goto LABEL_44;
                                                    case 1224:
                                                      v15 = "apfsValidLbaOvershoot";
                                                      v16 = a1;
                                                      v17 = 1224;
                                                      break;
                                                    case 1225:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeMinSlc";
                                                      goto LABEL_77;
                                                    case 1226:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeInt";
                                                      goto LABEL_77;
                                                    case 1227:
                                                      v13 = *v8;
                                                      v14 = "HUPolicySwitchPeGap";
                                                      goto LABEL_77;
                                                    case 1228:
                                                      v15 = "HUPolicyWidthDown";
                                                      v16 = a1;
                                                      v17 = 1228;
                                                      goto LABEL_994;
                                                    case 1229:
                                                      v15 = "HUPolicyWidthUp";
                                                      v16 = a1;
                                                      v17 = 1229;
                                                      goto LABEL_994;
                                                    case 1230:
                                                      v13 = *v8;
                                                      v14 = "HUPolicyPrevPeSlc";
                                                      goto LABEL_77;
                                                    case 1231:
                                                      v13 = *v8;
                                                      v14 = "HUPolicyPrevPeTlc";
                                                      goto LABEL_77;
                                                    case 1232:
                                                      v13 = *v8;
                                                      v14 = "eanFastSize";
                                                      goto LABEL_77;
                                                    case 1233:
                                                      v13 = *v8;
                                                      v14 = "eanNumSlcEvictions";
                                                      goto LABEL_77;
                                                    case 1234:
                                                      v13 = *v8;
                                                      v14 = "eanNumForcedCompress";
                                                      goto LABEL_77;
                                                    case 1241:
                                                      v15 = "s2rTimeHisto";
                                                      v16 = a1;
                                                      v17 = 1241;
                                                      goto LABEL_44;
                                                    case 1244:
                                                      v13 = *v8;
                                                      v14 = "calendarTimeWentBackward";
                                                      goto LABEL_77;
                                                    case 1246:
                                                      v15 = "bandsUeccCrossTempHisto";
                                                      v16 = a1;
                                                      v17 = 1246;
                                                      goto LABEL_149;
                                                    case 1264:
                                                      v13 = *v8;
                                                      v14 = "numRefreshOnErrNandRefreshPerfOpt";
                                                      goto LABEL_77;
                                                    default:
                                                      switch(v7)
                                                      {
                                                        case 1271:
                                                          v13 = *v8;
                                                          v14 = "deviceTempMax";
                                                          goto LABEL_77;
                                                        case 1272:
                                                          v13 = *v8;
                                                          v14 = "deviceTempHigh";
                                                          goto LABEL_77;
                                                        case 1273:
                                                          v13 = *v8;
                                                          v14 = "deviceTempLow";
                                                          goto LABEL_77;
                                                        case 1282:
                                                          v13 = *v8;
                                                          v14 = "cbdrScanHP";
                                                          goto LABEL_77;
                                                        case 1283:
                                                          v13 = *v8;
                                                          v14 = "cbdrScanMP";
                                                          goto LABEL_77;
                                                        case 1285:
                                                          v13 = *v8;
                                                          v14 = "bitsPerCell";
                                                          goto LABEL_77;
                                                        case 1289:
                                                          v13 = *v8;
                                                          v14 = "numRefreshOnErrNandRefreshPerfOptOpen";
                                                          goto LABEL_77;
                                                        case 1293:
                                                          v15 = "bpZone2EntryTime";
                                                          v16 = a1;
                                                          v17 = 1293;
                                                          goto LABEL_246;
                                                        case 1294:
                                                          v15 = "bpZone2ExitTime";
                                                          v16 = a1;
                                                          v17 = 1294;
                                                          goto LABEL_246;
                                                        case 1295:
                                                          v15 = "bpHostChokeTime";
                                                          v16 = a1;
                                                          v17 = 1295;
                                                          goto LABEL_149;
                                                        case 1296:
                                                          v15 = "bpZone2EntryHW";
                                                          v16 = a1;
                                                          v17 = 1296;
                                                          goto LABEL_246;
                                                        case 1298:
                                                          v15 = "bpZone2ExitHW";
                                                          v16 = a1;
                                                          v17 = 1298;
                                                          goto LABEL_246;
                                                        case 1302:
                                                          v15 = "bpZone2EntryHostTP";
                                                          v16 = a1;
                                                          v17 = 1302;
                                                          goto LABEL_246;
                                                        case 1303:
                                                          v15 = "bpZone2EntryGCTP";
                                                          v16 = a1;
                                                          v17 = 1303;
                                                          goto LABEL_246;
                                                        case 1304:
                                                          v15 = "bpZone2ExitHostTP";
                                                          v16 = a1;
                                                          v17 = 1304;
                                                          goto LABEL_246;
                                                        case 1305:
                                                          v15 = "bpZone2ExitGCTP";
                                                          v16 = a1;
                                                          v17 = 1305;
                                                          goto LABEL_246;
                                                        case 1323:
                                                          v13 = *v8;
                                                          v14 = "prefetchNofHits";
                                                          goto LABEL_77;
                                                        case 1326:
                                                          v13 = *v8;
                                                          v14 = "massScanFullRounds";
                                                          goto LABEL_77;
                                                        case 1327:
                                                          v13 = *v8;
                                                          v14 = "massScanEarlyExits";
                                                          goto LABEL_77;
                                                        case 1328:
                                                          v13 = *v8;
                                                          v14 = "massScanMspFullScanRequests";
                                                          goto LABEL_77;
                                                        case 1329:
                                                          v13 = *v8;
                                                          v14 = "massScanMspEarlyExitRequests";
                                                          goto LABEL_77;
                                                        case 1333:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedRecoverableErrorGbbs";
                                                          goto LABEL_77;
                                                        case 1334:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedUnrecoverableErrorGbbs";
                                                          goto LABEL_77;
                                                        case 1335:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedBandOrphansNumBands";
                                                          goto LABEL_77;
                                                        case 1336:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedBandOrphansNumSectors";
                                                          goto LABEL_77;
                                                        case 1337:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragEvents";
                                                          goto LABEL_77;
                                                        case 1338:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragIterations";
                                                          goto LABEL_77;
                                                        case 1339:
                                                          v13 = *v8;
                                                          v14 = "gcBoffOrderedDefragSectors";
                                                          goto LABEL_77;
                                                        case 1344:
                                                          v15 = "unhappyWideGC1";
                                                          v16 = a1;
                                                          v17 = 1344;
                                                          goto LABEL_144;
                                                        case 1345:
                                                          v15 = "unhappyVertGC";
                                                          v16 = a1;
                                                          v17 = 1345;
                                                          goto LABEL_144;
                                                        case 1348:
                                                          v13 = *v8;
                                                          v14 = "thermalSelfThrottlingSupported";
                                                          goto LABEL_77;
                                                        case 1349:
                                                          v13 = *v8;
                                                          v14 = "thermalSelfThrottlingEnabled";
                                                          goto LABEL_77;
                                                        default:
                                                          goto LABEL_896;
                                                      }
                                                  }

LABEL_93:
                                                  v18 = v8;
                                                  v19 = 20;
                                                  goto LABEL_51;
                                                }

                                                if (v7 <= 1002)
                                                {
                                                  if (v7 > 1000)
                                                  {
                                                    if (v7 != 1001)
                                                    {
                                                      v13 = *v8;
                                                      v20 = a1;
                                                      v14 = "clogReplayTransientError";
                                                      goto LABEL_78;
                                                    }

                                                    v16 = a1;
                                                    v17 = 1001;
                                                    v15 = "clogReplayFailReason";
LABEL_149:
                                                    v18 = v8;
                                                    v19 = 8;
                                                    goto LABEL_51;
                                                  }

                                                  if (v7 == 998)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogFindUnc";
                                                    goto LABEL_78;
                                                  }

                                                  if (v7 == 999)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogFindUnexpected";
                                                    goto LABEL_78;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                if (v7 <= 1015)
                                                {
                                                  if (v7 == 1003)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "clogReplaySpfError";
                                                    goto LABEL_78;
                                                  }

                                                  if (v7 == 1015)
                                                  {
                                                    v16 = a1;
                                                    v17 = 1015;
                                                    v15 = "eanEarlyBootUeccPage";
                                                    goto LABEL_144;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                if (v7 != 1016)
                                                {
                                                  if (v7 == 1017)
                                                  {
                                                    v13 = *v8;
                                                    v20 = a1;
                                                    v14 = "eanEarlyBootUeccMultiplane";
                                                    goto LABEL_78;
                                                  }

                                                  goto LABEL_858;
                                                }

                                                v13 = *v8;
                                                v20 = a1;
                                                v14 = "eanEarlyBootNumUeccPages";
LABEL_78:
                                                AddSingleValue(v20, "", v14, v13);
LABEL_79:
                                                a2 = &v8[v10];
                                                v6 = v11 - v10;
                                                if (v11 != v10)
                                                {
                                                  continue;
                                                }

                                                return 1;
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