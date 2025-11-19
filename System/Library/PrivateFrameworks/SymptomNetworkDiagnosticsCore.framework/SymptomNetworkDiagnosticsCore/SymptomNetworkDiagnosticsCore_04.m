uint64_t sub_2325229D0()
{
  v200 = v0;
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = __swift_project_value_buffer(*(v0 + 408), qword_2814D7008);
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 136);
    sub_2324C28AC(*(v0 + 416), &unk_27DD932E0, qword_2325472E0);
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2324C0000, v6, v7, "Failed to perform request as IDS deviceID is nil", v8, 2u);
      MEMORY[0x238386450](v8, -1, -1);
    }

    v9 = *(v0 + 488);
    v10 = *(v0 + 496);
    v11 = *(v0 + 472);
    v12 = *(v0 + 480);
    v13 = *(v0 + 456);
    v14 = *(v0 + 464);
    v16 = *(v0 + 440);
    v15 = *(v0 + 448);
    v136 = *(v0 + 416);
    v137 = *(v0 + 400);
    v138 = *(v0 + 392);
    v139 = *(v0 + 384);
    v141 = *(v0 + 376);
    v143 = *(v0 + 360);
    v145 = *(v0 + 352);
    v147 = *(v0 + 336);
    v149 = *(v0 + 328);
    v151 = *(v0 + 320);
    v153 = *(v0 + 312);
    v155 = *(v0 + 304);
    v157 = *(v0 + 296);
    v159 = *(v0 + 288);
    v161 = *(v0 + 280);
    v163 = *(v0 + 272);
    v165 = *(v0 + 248);
    v167 = *(v0 + 240);
    v169 = *(v0 + 232);
    v171 = *(v0 + 224);
    v173 = *(v0 + 208);
    v175 = *(v0 + 200);
    v177 = *(v0 + 192);
    v180 = *(v0 + 184);
    v184 = *(v0 + 168);
    v188 = *(v0 + 160);
    v193 = *(v0 + 144);

    *(v0 + 72) = 1;
    *(v0 + 80) = 1;
    sub_232526CF4();
    swift_willThrowTypedImpl();

    *v193 = 1;
    *(v193 + 8) = 1;
    v17 = *(v0 + 8);
    goto LABEL_49;
  }

  v18 = *(v0 + 392);
  v19 = *(v0 + 400);
  v21 = *(v0 + 352);
  v20 = *(v0 + 360);
  v22 = *(v0 + 344);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  (*(*(v0 + 432) + 32))(*(v0 + 496), *(v0 + 416), *(v0 + 424));
  sub_232526DB0(v24 + *(v22 + 24), v19, type metadata accessor for NDFActorRequestType);
  sub_232526DB0(v19, v18, type metadata accessor for NDFActorRequestType);
  sub_232526DB0(v24, v20, type metadata accessor for NDFActorRequest);
  sub_232526DB0(v24, v21, type metadata accessor for NDFActorRequest);
  v25 = sub_232545888();
  v26 = sub_232546208();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 424);
    v29 = *(v0 + 384);
    v28 = *(v0 + 392);
    v30 = *(v0 + 360);
    v31 = *(v0 + 368);
    v181 = *(v0 + 344);
    v185 = *(v0 + 352);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v197 = v33;
    *v32 = 136315650;
    sub_232526DB0(v28, v29, type metadata accessor for NDFActorRequestType);
    v34 = sub_232545F88();
    v36 = v35;
    sub_232526E18(v28, type metadata accessor for NDFActorRequestType);
    v37 = sub_2324C2220(v34, v36, &v197);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    sub_232527474(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v38 = sub_232546608();
    v40 = v39;
    sub_232526E18(v30, type metadata accessor for NDFActorRequest);
    v41 = sub_2324C2220(v38, v40, &v197);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2080;
    v42 = *(v185 + *(v181 + 20));
    v198 = 0;
    v199 = 0xE000000000000000;
    sub_2325463D8();

    v198 = 0xD000000000000010;
    v199 = 0x800000023254CDA0;
    *(v0 + 96) = v42;
    v43 = sub_232546608();
    MEMORY[0x2383855C0](v43);

    MEMORY[0x2383855C0](93, 0xE100000000000000);
    v44 = v198;
    v45 = v199;
    sub_232526E18(v185, type metadata accessor for NDFActorRequest);
    v46 = sub_2324C2220(v44, v45, &v197);

    *(v32 + 24) = v46;
    _os_log_impl(&dword_2324C0000, v25, v26, "Received request %s from device %s with capabilities (%s)", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v33, -1, -1);
    MEMORY[0x238386450](v32, -1, -1);
  }

  else
  {
    v47 = *(v0 + 392);
    v49 = *(v0 + 352);
    v48 = *(v0 + 360);

    sub_232526E18(v49, type metadata accessor for NDFActorRequest);
    sub_232526E18(v48, type metadata accessor for NDFActorRequest);
    sub_232526E18(v47, type metadata accessor for NDFActorRequestType);
  }

  v50 = *(v0 + 368);
  sub_232526DB0(*(v0 + 400), *(v0 + 376), type metadata accessor for NDFActorRequestType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v77 = *(v0 + 376);
      v79 = *v77;
      v78 = v77[1];

      v80 = sub_232545888();
      v81 = sub_232546208();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v198 = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_2324C2220(v79, v78, &v198);
        _os_log_impl(&dword_2324C0000, v80, v81, "Received message %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x238386450](v83, -1, -1);
        MEMORY[0x238386450](v82, -1, -1);
      }

      v84 = *(v0 + 496);
      v85 = *(v0 + 480);
      v86 = *(v0 + 424);
      v87 = *(v0 + 432);
      v88 = *(v0 + 328);
      v89 = *(v0 + 120);
      v189 = *(v0 + 128);
      v194 = *(v0 + 400);
      v90 = *(v0 + 104);
      (*(v87 + 16))(v85, v84, v86);
      *(v0 + 40) = v79;
      *(v0 + 48) = v78;
      v91 = swift_dynamicCast();
      (*(*(v89 - 8) + 56))(v88, v91 ^ 1u, 1, v89);
      sub_232536358(v85, 1, v88, v90);
      sub_232526E18(v194, type metadata accessor for NDFActorRequestType);
      (*(v87 + 8))(v84, v86);
      goto LABEL_48;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_232526D48(*(v0 + 376), *(v0 + 200), type metadata accessor for NDFEvent);
      v92 = *sub_2324C8418();
      if (v92)
      {
        v74 = *(v92 + 144);
        *(v0 + 520) = v74;
        v93 = *v74 + 144;
        *(v0 + 528) = *v93;
        *(v0 + 536) = v93 & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
        v76 = sub_2325240A8;
        goto LABEL_28;
      }

      v98 = *(v0 + 136);
      v110 = sub_232524124;
LABEL_42:
      v97 = v110;
      goto LABEL_43;
    }

    v61 = *(v0 + 272);
    v62 = *(v0 + 280);
    sub_232526D48(*(v0 + 376), v62, type metadata accessor for NDFDevice);
    sub_232526DB0(v62, v61, type metadata accessor for NDFDevice);
    v63 = sub_232545888();
    v64 = sub_232546208();
    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 272);
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v198 = v68;
      *v67 = 136315138;
      v69 = sub_2324F6270();
      v71 = v70;
      sub_232526E18(v66, type metadata accessor for NDFDevice);
      v72 = sub_2324C2220(v69, v71, &v198);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_2324C0000, v63, v64, "Received device update from: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x238386450](v68, -1, -1);
      MEMORY[0x238386450](v67, -1, -1);
    }

    else
    {

      sub_232526E18(v66, type metadata accessor for NDFDevice);
    }

    v104 = *sub_2324C8418();
    if (!v104)
    {
      v111 = sub_232545888();
      v112 = sub_2325461F8();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_2324C0000, v111, v112, "Cannot get deviceManager from NDFAdminController", v113, 2u);
        MEMORY[0x238386450](v113, -1, -1);
      }

      v114 = *(v0 + 496);
      v115 = *(v0 + 472);
      v117 = *(v0 + 424);
      v116 = *(v0 + 432);
      v118 = *(v0 + 320);
      v191 = *(v0 + 280);
      v195 = *(v0 + 400);
      v119 = *(v0 + 240);
      v120 = *(v0 + 248);
      v121 = *(v0 + 208);
      v122 = *(v0 + 120);
      v186 = *(v0 + 128);
      v178 = *(v0 + 216);
      v182 = *(v0 + 104);
      sub_232545668();
      sub_232539988(v121, v120);
      (*(v116 + 16))(v115, v114, v117);
      sub_232526DB0(v120, v119, type metadata accessor for NDFActorGeneralResponse);
      v123 = swift_dynamicCast();
      (*(*(v122 - 8) + 56))(v118, v123 ^ 1u, 1, v122);
      sub_232536358(v115, 1, v118, v182);
      sub_232526E18(v120, type metadata accessor for NDFActorGeneralResponse);
      sub_232526E18(v191, type metadata accessor for NDFDevice);
      sub_232526E18(v195, type metadata accessor for NDFActorRequestType);
      (*(v116 + 8))(v114, v117);
      goto LABEL_48;
    }

    v105 = *(v104 + 128);
    *(v0 + 504) = v105;
    v106 = *(*v105 + 496);

    v190 = (v106 + *v106);
    v107 = v106[1];
    v108 = swift_task_alloc();
    *(v0 + 512) = v108;
    *v108 = v0;
    v108[1] = sub_232523C30;
    v109 = *(v0 + 280);

    return v190(v109);
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v53 = *(v0 + 488);
        v52 = *(v0 + 496);
        v54 = *(v0 + 424);
        v55 = *(v0 + 432);
        v56 = *(v0 + 400);
        v57 = *(v0 + 336);
        v59 = *(v0 + 120);
        v58 = *(v0 + 128);
        v60 = *(v0 + 104);
        (*(v55 + 16))(v53, v52, v54);
        *(v0 + 56) = 1735290736;
        *(v0 + 64) = 0xE400000000000000;
LABEL_47:
        v125 = swift_dynamicCast();
        (*(*(v59 - 8) + 56))(v57, v125 ^ 1u, 1, v59);
        sub_232536358(v53, 1, v57, v60);
        sub_232526E18(v56, type metadata accessor for NDFActorRequestType);
        (*(v55 + 8))(v52, v54);
LABEL_48:
        v127 = *(v0 + 488);
        v126 = *(v0 + 496);
        v128 = *(v0 + 472);
        v129 = *(v0 + 480);
        v131 = *(v0 + 456);
        v130 = *(v0 + 464);
        v133 = *(v0 + 440);
        v132 = *(v0 + 448);
        v134 = *(v0 + 416);
        v135 = *(v0 + 400);
        v140 = *(v0 + 392);
        v142 = *(v0 + 384);
        v144 = *(v0 + 376);
        v146 = *(v0 + 360);
        v148 = *(v0 + 352);
        v150 = *(v0 + 336);
        v152 = *(v0 + 328);
        v154 = *(v0 + 320);
        v156 = *(v0 + 312);
        v158 = *(v0 + 304);
        v160 = *(v0 + 296);
        v162 = *(v0 + 288);
        v164 = *(v0 + 280);
        v166 = *(v0 + 272);
        v168 = *(v0 + 248);
        v170 = *(v0 + 240);
        v172 = *(v0 + 232);
        v174 = *(v0 + 224);
        v176 = *(v0 + 208);
        v179 = *(v0 + 200);
        v183 = *(v0 + 192);
        v187 = *(v0 + 184);
        v192 = *(v0 + 168);
        v196 = *(v0 + 160);

        v17 = *(v0 + 8);
LABEL_49:

        return v17();
      }

      v94 = *sub_2324C8418();
      if (!v94)
      {

        v52 = *(v0 + 496);
        v53 = *(v0 + 456);
        v54 = *(v0 + 424);
        v55 = *(v0 + 432);
        v56 = *(v0 + 400);
        v57 = *(v0 + 304);
        v59 = *(v0 + 120);
        v124 = *(v0 + 128);
        v60 = *(v0 + 104);
        (*(v55 + 16))(v53, v52, v54);
        *(v0 + 88) = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
        goto LABEL_47;
      }

      v74 = *(v94 + 144);
      *(v0 + 544) = v74;
      v95 = *v74 + 200;
      *(v0 + 552) = *v95;
      *(v0 + 560) = v95 & 0xFFFFFFFFFFFFLL | 0xB281000000000000;
      v76 = sub_232524484;
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v73 = sub_2324C8418();
      if (*v73)
      {
        v74 = *(*v73 + 128);
        *(v0 + 576) = v74;
        v75 = *v74 + 336;
        *(v0 + 584) = *v75;
        *(v0 + 592) = v75 & 0xFFFFFFFFFFFFLL | 0xC3AD000000000000;
        v76 = sub_23252481C;
LABEL_28:
        v96 = v76;

        v97 = v96;
        v98 = v74;
LABEL_43:

        return MEMORY[0x2822009F8](v97, v98, 0);
      }

      (*(*(v0 + 264) + 56))(*(v0 + 192), 1, 1, *(v0 + 256));
      v98 = *(v0 + 136);
      v110 = sub_23252489C;
      goto LABEL_42;
    }

    v99 = swift_task_alloc();
    *(v0 + 600) = v99;
    *v99 = v0;
    v99[1] = sub_232524BBC;
    v100 = *(v0 + 496);
    v101 = *(v0 + 168);
    v102 = *(v0 + 136);

    return sub_2325254D8(v101, v100);
  }
}

uint64_t sub_232523C30()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_232523D40, v2, 0);
}

uint64_t sub_232523D40()
{
  v1 = v0[63];

  v2 = v0[62];
  v3 = v0[59];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[40];
  v49 = v0[35];
  v51 = v0[50];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[26];
  v10 = v0[15];
  v47 = v0[16];
  v43 = v0[27];
  v45 = v0[13];
  sub_232545668();
  sub_232539988(v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  sub_232526DB0(v8, v7, type metadata accessor for NDFActorGeneralResponse);
  v11 = swift_dynamicCast();
  (*(*(v10 - 8) + 56))(v6, v11 ^ 1u, 1, v10);
  sub_232536358(v3, 1, v6, v45);
  sub_232526E18(v8, type metadata accessor for NDFActorGeneralResponse);
  sub_232526E18(v49, type metadata accessor for NDFDevice);
  sub_232526E18(v51, type metadata accessor for NDFActorRequestType);
  (*(v4 + 8))(v2, v5);
  v13 = v0[61];
  v12 = v0[62];
  v14 = v0[59];
  v15 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  v19 = v0[55];
  v18 = v0[56];
  v20 = v0[52];
  v21 = v0[50];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v27 = v0[45];
  v28 = v0[44];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[34];
  v38 = v0[31];
  v39 = v0[30];
  v40 = v0[29];
  v41 = v0[28];
  v42 = v0[26];
  v44 = v0[25];
  v46 = v0[24];
  v48 = v0[23];
  v50 = v0[21];
  v52 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2325240A8()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  (*(v0 + 528))(*(v0 + 200));

  v3 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_232524124, v3, 0);
}

uint64_t sub_232524124()
{
  v1 = v0[62];
  v2 = v0[58];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[39];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[26];
  v48 = v0[25];
  v50 = v0[50];
  v9 = v0[15];
  v46 = v0[16];
  v42 = v0[27];
  v44 = v0[13];
  sub_232545668();
  sub_232539988(v8, v7);
  (*(v3 + 16))(v2, v1, v4);
  sub_232526DB0(v7, v6, type metadata accessor for NDFActorGeneralResponse);
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v5, v10 ^ 1u, 1, v9);
  sub_232536358(v2, 1, v5, v44);
  sub_232526E18(v7, type metadata accessor for NDFActorGeneralResponse);
  sub_232526E18(v48, type metadata accessor for NDFEvent);
  sub_232526E18(v50, type metadata accessor for NDFActorRequestType);
  (*(v3 + 8))(v1, v4);
  v12 = v0[61];
  v11 = v0[62];
  v13 = v0[59];
  v14 = v0[60];
  v16 = v0[57];
  v15 = v0[58];
  v18 = v0[55];
  v17 = v0[56];
  v19 = v0[52];
  v20 = v0[50];
  v23 = v0[49];
  v24 = v0[48];
  v25 = v0[47];
  v26 = v0[45];
  v27 = v0[44];
  v28 = v0[42];
  v29 = v0[41];
  v30 = v0[40];
  v31 = v0[39];
  v32 = v0[38];
  v33 = v0[37];
  v34 = v0[36];
  v35 = v0[35];
  v36 = v0[34];
  v37 = v0[31];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[28];
  v41 = v0[26];
  v43 = v0[25];
  v45 = v0[24];
  v47 = v0[23];
  v49 = v0[21];
  v51 = v0[20];

  v21 = v0[1];

  return v21();
}

uint64_t sub_232524484()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 136);
  *(v0 + 568) = (*(v0 + 552))(*(v0 + 496));

  return MEMORY[0x2822009F8](sub_232524508, v3, 0);
}

uint64_t sub_232524508()
{
  v1 = v0[71];
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[53];
  v5 = v0[54];
  v6 = v0[38];
  v7 = v0[15];
  v44 = v0[16];
  v46 = v0[50];
  v8 = v0[13];
  (*(v5 + 16))(v3, v2, v4);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
  v9 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v6, v9 ^ 1u, 1, v7);
  sub_232536358(v3, 1, v6, v8);
  sub_232526E18(v46, type metadata accessor for NDFActorRequestType);
  (*(v5 + 8))(v2, v4);
  v11 = v0[61];
  v10 = v0[62];
  v12 = v0[59];
  v13 = v0[60];
  v15 = v0[57];
  v14 = v0[58];
  v17 = v0[55];
  v16 = v0[56];
  v18 = v0[52];
  v19 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[47];
  v25 = v0[45];
  v26 = v0[44];
  v27 = v0[42];
  v28 = v0[41];
  v29 = v0[40];
  v30 = v0[39];
  v31 = v0[38];
  v32 = v0[37];
  v33 = v0[36];
  v34 = v0[35];
  v35 = v0[34];
  v36 = v0[31];
  v37 = v0[30];
  v38 = v0[29];
  v39 = v0[28];
  v40 = v0[26];
  v41 = v0[25];
  v42 = v0[24];
  v43 = v0[23];
  v45 = v0[21];
  v47 = v0[20];

  v20 = v0[1];

  return v20();
}

uint64_t sub_23252481C()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = *(v0 + 192);
  (*(v0 + 584))(*(v0 + 496));

  v4 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23252489C, v4, 0);
}

uint64_t sub_23252489C()
{
  v1 = v0[62];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v47 = v1;
  v49 = v0[50];
  v5 = v0[37];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[15];
  v45 = v0[16];
  v10 = v0[13];
  (*(v4 + 16))(v2);
  sub_2324CF3C4(v6, v7, &qword_27DD93578, &unk_2325480F0);
  v11 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v5, v11 ^ 1u, 1, v9);
  sub_232536358(v2, 1, v5, v10);
  sub_2324C28AC(v6, &qword_27DD93578, &unk_2325480F0);
  sub_232526E18(v49, type metadata accessor for NDFActorRequestType);
  (*(v4 + 8))(v47, v3);
  v13 = v0[61];
  v12 = v0[62];
  v14 = v0[59];
  v15 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  v19 = v0[55];
  v18 = v0[56];
  v20 = v0[52];
  v21 = v0[50];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v27 = v0[45];
  v28 = v0[44];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[34];
  v38 = v0[31];
  v39 = v0[30];
  v40 = v0[29];
  v41 = v0[28];
  v42 = v0[26];
  v43 = v0[25];
  v44 = v0[24];
  v46 = v0[23];
  v48 = v0[21];
  v50 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_232524BBC()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_232524CCC, v2, 0);
}

uint64_t sub_232524CCC()
{
  v1 = v0[62];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[53];
  v47 = v1;
  v49 = v0[50];
  v5 = v0[36];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v45 = v0[16];
  v10 = v0[13];
  (*(v2 + 16))(v3);
  sub_232526DB0(v6, v7, type metadata accessor for NDFDeviceEventInfo);
  v11 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v5, v11 ^ 1u, 1, v9);
  sub_232536358(v3, 1, v5, v10);
  sub_232526E18(v6, type metadata accessor for NDFDeviceEventInfo);
  sub_232526E18(v49, type metadata accessor for NDFActorRequestType);
  (*(v2 + 8))(v47, v4);
  v13 = v0[61];
  v12 = v0[62];
  v14 = v0[59];
  v15 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  v19 = v0[55];
  v18 = v0[56];
  v20 = v0[52];
  v21 = v0[50];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v27 = v0[45];
  v28 = v0[44];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[34];
  v38 = v0[31];
  v39 = v0[30];
  v40 = v0[29];
  v41 = v0[28];
  v42 = v0[26];
  v43 = v0[25];
  v44 = v0[24];
  v46 = v0[23];
  v48 = v0[21];
  v50 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_232525014()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 144);
    v0[3] = v2;
    v3 = (*v2 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
    v0[4] = *(*v2 + 144);
    v0[5] = v3;

    return MEMORY[0x2822009F8](sub_2325250E0, v2, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2325250E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))(*(v0 + 16));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23252514C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23252516C, v1, 0);
}

uint64_t sub_23252516C()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 144);
    v0[4] = v2;
    v3 = (*v2 + 200) & 0xFFFFFFFFFFFFLL | 0xB281000000000000;
    v0[5] = *(*v2 + 200);
    v0[6] = v3;

    return MEMORY[0x2822009F8](sub_232525248, v2, 0);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x277D84F90];

    return v4(v5);
  }
}

uint64_t sub_232525248()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 56) = (*(v0 + 40))(*(v0 + 16));

  return MEMORY[0x2822009F8](sub_2325252C4, v2, 0);
}

uint64_t sub_2325252C4()
{
  v1 = *(v0 + 56);
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_232525330(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_232525350, v2, 0);
}

uint64_t sub_232525350()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 128);
    v0[4] = v2;
    v3 = *v2 + 336;
    v0[5] = *v3;
    v0[6] = v3 & 0xFFFFFFFFFFFFLL | 0xC3AD000000000000;

    return MEMORY[0x2822009F8](sub_232525468, v2, 0);
  }

  else
  {
    v4 = v0[2];
    v5 = type metadata accessor for NDFDevice();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_232525468()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2325254D8(uint64_t a1, uint64_t a2)
{
  v3[185] = v2;
  v3[179] = a2;
  v3[173] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v3[186] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[187] = swift_task_alloc();
  v3[188] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252558C, v2, 0);
}

uint64_t sub_23252558C()
{
  v1 = v0[188];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[179];
  v5 = swift_task_alloc();
  v0[189] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  v0[190] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  swift_asyncLet_begin();
  v7 = v0[188];

  return MEMORY[0x282200928](v0 + 82, v7, sub_2325256A0, v0 + 162);
}

uint64_t sub_2325256A0()
{
  sub_2324CF3C4(*(v0 + 1504), *(v0 + 1496), &qword_27DD93578, &unk_2325480F0);

  return MEMORY[0x282200928](v0 + 16, v0 + 1336, sub_232525720, v0 + 1344);
}

uint64_t sub_23252573C()
{
  v1 = v0[187];
  v2 = v0[173];
  v3 = v0[167];

  sub_232539E44(v1, v3, v2);
  v4 = v0[188];

  return MEMORY[0x282200920](v0 + 82, v4, sub_2325257CC, v0 + 174);
}

uint64_t sub_2325257E8()
{
  v1 = *(v0 + 1520);

  return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_232525854, v0 + 1440);
}

uint64_t sub_232525870()
{
  v1 = v0[189];
  v2 = v0[188];
  v3 = v0[187];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2325258E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NDFActor();
  sub_232545CE8();
  sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58]);
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
  result = sub_232545728();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
    v8 = sub_232545DA8();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t sub_232525A4C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem;
  sub_232545CE8();
  sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58]);
  sub_232545748();
  v4 = sub_232545DA8();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v3);

  v6 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_logger;
  v7 = sub_2325458A8();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_232525B6C()
{
  v1 = v0;
  is_remote = swift_distributed_actor_is_remote();
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  if (is_remote)
  {
    v4 = sub_232545DA8();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
    v5 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  }

  else
  {
    v6 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem;
    sub_232545CE8();
    sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58]);
    sub_232545748();
    v7 = sub_232545DA8();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v0 + v6);

    v9 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_logger;
    v10 = sub_2325458A8();
    (*(*(v10 - 8) + 8))(v1 + v9, v10);
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v1);
}

uint64_t sub_232525CF4()
{
  sub_2325466F8();
  type metadata accessor for NDFActor();
  sub_232527474(&qword_2814D5168, type metadata accessor for NDFActor);
  sub_232545F18();
  return sub_232546738();
}

uint64_t sub_232525D84()
{
  if ((sub_2325457A8() & 1) == 0)
  {
    type metadata accessor for NDFActor();
    sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
    return sub_232545708();
  }

  return v0;
}

uint64_t sub_232525E20()
{
  if ((sub_2325457A8() & 1) == 0)
  {
    type metadata accessor for NDFActor();
    return sub_232545708();
  }

  return v0;
}

uint64_t sub_232525E74(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for NDFActor();
  sub_232545CE8();
  sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58]);
  result = sub_232545728();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
    v8 = sub_232545DA8();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t sub_232525FE8()
{
  v1 = *v0;
  type metadata accessor for NDFActor();
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
  return sub_232545778();
}

uint64_t sub_232526064()
{
  v2 = *v0;
  sub_2325466F8();
  type metadata accessor for NDFActor();
  sub_232545F18();
  return sub_232546738();
}

uint64_t sub_2325260C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  v5 = sub_232545DA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23252613C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for NDFActor();
  v5 = sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_2325261C8()
{
  v1 = *v0;
  type metadata accessor for NDFActor();
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
  sub_232527474(&unk_27DD93620, MEMORY[0x277CD9070]);
  return sub_232545788();
}

uint64_t sub_232526290@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NDFActor();
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor);
  sub_232527474(&qword_27DD93618, MEMORY[0x277CD9070]);
  result = sub_232545798();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_232526360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_232526380, a2, 0);
}

uint64_t sub_232526380()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 144);
    v0[5] = v2;
    v3 = (*v2 + 200) & 0xFFFFFFFFFFFFLL | 0xB281000000000000;
    v0[6] = *(*v2 + 200);
    v0[7] = v3;

    v4 = sub_232526448;
    v5 = v2;
  }

  else
  {

    v0[9] = MEMORY[0x277D84F90];
    v4 = sub_232526540;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232526448()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  *(v0 + 64) = (*(v0 + 48))(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2325264C4, v3, 0);
}

uint64_t sub_2325264C4()
{
  v1 = *(v0 + 64);
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  *(v0 + 72) = v1;

  return MEMORY[0x2822009F8](sub_232526540, 0, 0);
}

uint64_t sub_232526564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_232526580, a2, 0);
}

uint64_t sub_232526580()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 128);
    v0[4] = v2;
    v3 = *v2 + 336;
    v0[5] = *v3;
    v0[6] = v3 & 0xFFFFFFFFFFFFLL | 0xC3AD000000000000;

    return MEMORY[0x2822009F8](sub_23252669C, v2, 0);
  }

  else
  {
    v4 = v0[2];
    v5 = type metadata accessor for NDFDevice();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23252669C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t type metadata accessor for NDFActor()
{
  result = qword_2814D6AD0;
  if (!qword_2814D6AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23252675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2325267F4;

  return sub_23252147C();
}

uint64_t sub_2325267F4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  **(*v1 + 16) = a1;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_232526900()
{
  result = qword_27DD935E8;
  if (!qword_27DD935E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD935E8);
  }

  return result;
}

unint64_t sub_232526954()
{
  result = qword_27DD935F0;
  if (!qword_27DD935F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD935F0);
  }

  return result;
}

uint64_t sub_2325269A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_232545D28();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v5[5] = v16;
  *v16 = v5;
  v16[1] = sub_232526B7C;

  return sub_232521A90(a3, v12, v14, v15);
}

uint64_t sub_232526B7C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_232526CF4()
{
  result = qword_27DD93660;
  if (!qword_27DD93660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93660);
  }

  return result;
}

uint64_t sub_232526D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_232526DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232526E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_232526E78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return sub_232526360(a1, v5, v4);
}

uint64_t sub_232526F24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return sub_232526564(a1, v5, v4);
}

uint64_t sub_2325271A8()
{
  result = sub_232545DA8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2325458A8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFActorCapability.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NDFActorCapability.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_232527370()
{
  result = qword_27DD94580[0];
  if (!qword_27DD94580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94580);
  }

  return result;
}

unint64_t sub_2325273C8()
{
  result = qword_27DD94690;
  if (!qword_27DD94690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94690);
  }

  return result;
}

unint64_t sub_232527420()
{
  result = qword_27DD94698[0];
  if (!qword_27DD94698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94698);
  }

  return result;
}

uint64_t sub_232527474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDFActorError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NDFActorError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_232527530(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23252754C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_23252757C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_2325275B4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_232527628()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_232527660(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_2325276F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_232527770()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2325277B4(char a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232527864()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_discoveryTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_23252792C()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_232527994(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

double sub_232527A50()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_currentDiscoveryInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_232527A94(double a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_currentDiscoveryInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_232527B84(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    oslog = sub_232545888();
    v3 = sub_2325461F8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = a1;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      _os_log_impl(&dword_2324C0000, oslog, v3, "Actor invalidated due to error: %@", v4, 0xCu);
      sub_2324C28AC(v5, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v5, -1, -1);
      MEMORY[0x238386450](v4, -1, -1);

      v8 = oslog;
    }

    else
    {

      v8 = a1;
    }
  }
}

uint64_t sub_232527D10()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_232527D48();
  return v3;
}

uint64_t sub_232527D48()
{
  v1 = v0;
  v2 = sub_232545BD8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_defaultActor_initialize();
  type metadata accessor for NDFDeviceDiscoveryManager();
  *(v0 + 120) = sub_23253F1E8();
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v5 = sub_2324F44E0();
  v6 = sub_2325458A8();
  (*(*(v6 - 8) + 16))(v1 + v4, v5, v6);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_discoveryTimer) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingTask) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_currentDiscoveryInterval) = 0;
  sub_232545BC8();
  sub_232545C78();
  sub_2324F51B4();
  v7 = sub_232545CE8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v1 + 128) = sub_232545CD8();
  type metadata accessor for NDFActor();

  *(v1 + 112) = sub_232520DE8(v10);
  return v1;
}

uint64_t sub_232527EF8()
{
  v1 = v0[2];
  v2 = v1[16];
  v3 = (*(*v1 + 152))();
  v0[3] = v3;
  v4 = *(MEMORY[0x277CD8E48] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = type metadata accessor for NDFActor();
  v7 = sub_232533128(qword_2814D5180, type metadata accessor for NDFActor);
  *v5 = v0;
  v5[1] = sub_232528018;

  return MEMORY[0x282125BE8](v3, v6, v7);
}

uint64_t sub_232528018()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_232528218;
  }

  else
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);

    v5 = sub_23252813C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23252813C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Successfully published NDFActor listener", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_232528218()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v1;
  v5 = sub_232545888();
  v6 = sub_2325461F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2324C0000, v5, v6, "Failed to publish NDFActor: %@", v9, 0xCu);
    sub_2324C28AC(v10, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v10, -1, -1);
    MEMORY[0x238386450](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_232528388()
{
  v1 = sub_232545E68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232545E58();
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_232545EC8();
  v73 = *(v75 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232546268();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232546238();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_232546218();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = sub_232545EA8();
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = (&v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(*v0 + 200))(v22))
  {
    v83 = sub_232545888();
    v24 = sub_2325461F8();
    if (os_log_type_enabled(v83, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2324C0000, v83, v24, "Polling already in progress, not starting again", v25, 2u);
      MEMORY[0x238386450](v25, -1, -1);
    }

    v26 = v83;

    return;
  }

  v63 = v6;
  v64 = v20;
  v65 = v5;
  v66 = v2;
  v67 = v1;
  v27 = (*(*v0 + 208))(1);
  v28 = (*v0 + 224);
  v71 = *v28;
  v70 = v28;
  if (v71(v27))
  {
    swift_getObjectType();
    sub_2325462A8();
    swift_unknownObjectRelease();
  }

  v69 = sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
  v68 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
  sub_232545E88();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232533128(&qword_2814D4ED0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v78 + 104))(v17, *MEMORY[0x277D85260], v79);
  v29 = sub_232546258();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232533128(&unk_2814D4EB0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
  sub_2324E2640(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
  v30 = v80;
  v31 = v82;
  sub_232546378();
  v32 = sub_232546278();

  (*(v81 + 8))(v30, v31);
  v33 = (*(*v0 + 232))(v32);
  if (v71(v33))
  {
    v34 = sub_2324C4D38();
    v35 = *(**v34 + 344);

    v37 = v35(v36);

    v38 = *(**v34 + 368);

    v40 = v38(v39);

    if (v37 > v40)
    {
      __break(1u);
    }

    else if (COERCE__INT64(fabs(v40 - v37)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v41 = sub_2324E2058(0x20000000000001uLL);
      v42.n128_f64[0] = v37 + (v40 - v37) * vcvtd_n_f64_u64(v41, 0x35uLL);
      if (v41 == 0x20000000000000)
      {
        v42.n128_f64[0] = v40;
      }

      (*(*v0 + 280))(v42);
      ObjectType = swift_getObjectType();
      v44 = v72;
      v45 = sub_232545EB8();
      v46 = *(*v0 + 272);
      v47 = (v46)(v45);
      v48 = v74;
      *v74 = 0;
      v49 = v76;
      v50 = v63;
      (*(v76 + 104))(v48, *MEMORY[0x277D85168], v63);
      MEMORY[0x2383858F0](v44, v48, ObjectType, v47);
      (*(v49 + 8))(v48, v50);
      (*(v73 + 8))(v44, v75);

      v51 = sub_232545888();
      v52 = sub_232546208();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = v46();
        _os_log_impl(&dword_2324C0000, v51, v52, "Starting subscription discovery+polling for device state and events with interval of %fs", v53, 0xCu);
        MEMORY[0x238386450](v53, -1, -1);
      }

      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      v55 = swift_allocObject();
      swift_weakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v54;
      aBlock[4] = sub_232532B88;
      aBlock[5] = v56;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2324D0160;
      aBlock[3] = &block_descriptor_4;
      v57 = _Block_copy(aBlock);

      v58 = v83;
      sub_232545E78();
      v59 = v65;
      sub_2324DDFC0();
      sub_232546298();
      _Block_release(v57);
      (*(v66 + 8))(v59, v67);
      (*(v77 + 8))(v58, v64);

      sub_2325462B8();
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    return;
  }

  v60 = sub_232545888();
  v61 = sub_2325461F8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_2324C0000, v60, v61, "Failed to create subscription timer for discovery+polling", v62, 2u);
    MEMORY[0x238386450](v62, -1, -1);
  }
}

uint64_t sub_232528F80(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    result = swift_beginAccess();
    v9 = *(a2 + 16);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(a2 + 16) = v11;
      v12 = sub_2325460F8();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v8;
      v13[5] = a2;

      sub_2324C8F70(0, 0, v6, &unk_232548AA0, v13);
    }
  }

  return result;
}

uint64_t sub_2325290E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_232529100, 0, 0);
}

uint64_t sub_232529100()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = sub_232545888();
  v4 = sub_232546208();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_2324C0000, v3, v4, "Starting subscription discovery+polling for device state and events [iteration %ld]", v6, 0xCu);
    MEMORY[0x238386450](v6, -1, -1);
  }

  else
  {
    v7 = v0[6];
  }

  v8 = v0[5];
  v9 = *v8 + 328;
  v0[7] = *v9;
  v0[8] = v9 & 0xFFFFFFFFFFFFLL | 0x617000000000000;

  return MEMORY[0x2822009F8](sub_232529248, v8, 0);
}

uint64_t sub_232529248()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2325292AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v11 - v4;
  if ((*(*v0 + 248))(v3))
  {
    sub_232546158();
  }

  v6 = sub_2325460F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v9 = sub_2324C8F70(0, 0, v5, &unk_232548900, v8);
  return (*(*v0 + 256))(v9);
}

uint64_t sub_232529454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_2325460C8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232529514, 0, 0);
}

uint64_t sub_232529514()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = Strong;
    sub_232546168();
    v4 = (*v3 + 176) & 0xFFFFFFFFFFFFLL | 0x3A37000000000000;
    v0[11] = *(*v3 + 176);
    v0[12] = v4;

    return MEMORY[0x2822009F8](sub_232529830, v3, 0);
  }

  else
  {
    v5 = v0[9];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_232529830()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 104) = (*(v0 + 88))();

  return MEMORY[0x2822009F8](sub_2325298A0, 0, 0);
}

uint64_t sub_2325298A0()
{
  v1 = sub_23253F318();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_232529940;
  v3 = *(v0 + 104);

  return sub_23253F390(v1);
}

uint64_t sub_232529940(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_23252A014;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_232529A5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232529A5C()
{
  if (!*(*(v0 + 120) + 16))
  {
    v15 = *(v0 + 80);

    v16 = sub_232545888();
    v17 = sub_2325461F8();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 80);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2324C0000, v16, v17, "No endpoints discovered during subscription discovery", v20, 2u);
      MEMORY[0x238386450](v20, -1, -1);
    }

    goto LABEL_14;
  }

  v1 = *(v0 + 128);
  sub_232546168();
  if (v1)
  {
    v2 = *(v0 + 120);

    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    *(v0 + 40) = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    v6 = swift_dynamicCast();
    v7 = *(v0 + 80);
    if (v6)
    {

      v8 = sub_232545888();
      v9 = sub_232546208();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2324C0000, v8, v9, "Discovery+polling cancelled", v10, 2u);
        MEMORY[0x238386450](v10, -1, -1);
      }

      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = *(v0 + 56);
      v14 = *(v0 + 64);

      (*(v14 + 8))(v12, v13);

      goto LABEL_15;
    }

    v27 = v1;
    v16 = sub_232545888();
    v28 = sub_2325461F8();

    v29 = os_log_type_enabled(v16, v28);
    v30 = *(v0 + 80);
    if (!v29)
    {

      goto LABEL_15;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v1;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_2324C0000, v16, v28, "Error during subscription discovery+polling: %@", v31, 0xCu);
    sub_2324C28AC(v32, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v32, -1, -1);
    MEMORY[0x238386450](v31, -1, -1);

LABEL_14:

LABEL_15:
    v35 = *(v0 + 72);

    v36 = *(v0 + 8);

    return v36();
  }

  v21 = *(**(v0 + 80) + 360);
  v37 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 136) = v23;
  *v23 = v0;
  v23[1] = sub_232529E94;
  v24 = *(v0 + 120);
  v25 = *(v0 + 80);

  return v37(v24);
}

uint64_t sub_232529E94()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_232529FAC, 0, 0);
}

uint64_t sub_232529FAC()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23252A014()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 128);
  *(v0 + 40) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 80);
  if (v6)
  {

    v8 = sub_232545888();
    v9 = sub_232546208();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2324C0000, v8, v9, "Discovery+polling cancelled", v10, 2u);
      MEMORY[0x238386450](v10, -1, -1);
    }

    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);

    (*(v14 + 8))(v12, v13);
    v15 = *(v0 + 40);
  }

  else
  {

    v16 = v2;
    v17 = sub_232545888();
    v18 = sub_2325461F8();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 80);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_2324C0000, v17, v18, "Error during subscription discovery+polling: %@", v21, 0xCu);
      sub_2324C28AC(v22, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v22, -1, -1);
      MEMORY[0x238386450](v21, -1, -1);

      goto LABEL_9;
    }

    v15 = v2;
  }

LABEL_9:
  v25 = *(v0 + 72);

  v26 = *(v0 + 8);

  return v26();
}

void sub_23252A2A0()
{
  if (((*(*v0 + 200))() & 1) == 0)
  {
    oslog = sub_232545888();
    v3 = sub_2325461F8();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_11;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Discovery+polling not in progress, nothing to stop";
    goto LABEL_10;
  }

  v1 = (*(*v0 + 280))(0.0);
  if ((*(*v0 + 248))(v1))
  {
    sub_232546158();
  }

  v2 = (*(*v0 + 256))(0);
  if ((*(*v0 + 224))(v2))
  {
    swift_getObjectType();
    sub_2325462A8();
    swift_unknownObjectRelease();
  }

  (*(*v0 + 232))(0);
  (*(*v0 + 208))(0);
  oslog = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Stopped subscription discovery+polling";
LABEL_10:
    _os_log_impl(&dword_2324C0000, oslog, v3, v5, v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

LABEL_11:
}

uint64_t sub_23252A538()
{
  v1 = (*(**(v0 + 16) + 176))();
  *(v0 + 24) = v1;
  v2 = (*v1 + 104) & 0xFFFFFFFFFFFFLL | 0x5D28000000000000;
  *(v0 + 32) = *(*v1 + 104);
  *(v0 + 40) = v2;

  return MEMORY[0x2822009F8](sub_23252A5E0, v1, 0);
}

uint64_t sub_23252A5E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 32))();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23252A654(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93638, &unk_232548918);
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = type metadata accessor for NDFActorRequestType(0);
  v3[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(type metadata accessor for NDFActorRequest(0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_2325456F8();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252A7F4, v2, 0);
}

uint64_t sub_23252A7F4()
{
  v52 = v0;
  sub_232546168();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[7];
    sub_2324C28AC(v0[13], &unk_27DD932E0, qword_2325472E0);
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2324C0000, v6, v7, "Failed to retrieve device ID for NDFActor", v8, 2u);
      MEMORY[0x238386450](v8, -1, -1);
    }

    v9 = v0[5];

    v10 = type metadata accessor for NDFDeviceEventInfo(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = v0[16];
    v11 = v0[17];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    v16 = v0[9];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v18 = v0[6];
    v19 = v0[7];
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    v0[18] = type metadata accessor for NDFActor();
    sub_232545C78();
    v20 = sub_2324F5138();
    (*(*v19 + 296))(v20);
    sub_232545CE8();
    sub_232545CC8();
    v0[19] = sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor);
    v0[20] = sub_232545758();
    v21 = v0[6];
    v22 = v0[7];

    v50 = sub_232545B88();
    v24 = v23;
    v25 = 0xE90000000000003ELL;
    if (v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xE90000000000003ELL;
    }

    v48 = sub_232545B98();
    v28 = v27;
    if (v27)
    {
      v25 = v27;
    }

    v29 = sub_232545888();
    v30 = sub_2325461D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v48;
      if (!v28)
      {
        v31 = 0x6E776F6E6B6E753CLL;
      }

      v49 = v31;
      if (v24)
      {
        v32 = v50;
      }

      else
      {
        v32 = 0x6E776F6E6B6E753CLL;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = v34;
      *v33 = 136380931;
      v35 = sub_2324C2220(v32, v26, v51);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2080;
      v36 = sub_2324C2220(v49, v25, v51);

      *(v33 + 14) = v36;
      _os_log_impl(&dword_2324C0000, v29, v30, "About to retrieve active events and device info from device <%{private}s: %s>", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v34, -1, -1);
      MEMORY[0x238386450](v33, -1, -1);
    }

    else
    {
    }

    v37 = v0[16];
    v39 = v0[11];
    v38 = v0[12];
    v40 = v0[10];
    (*(v0[15] + 16))(v37, v0[17], v0[14]);
    v41 = *sub_232520DDC();
    swift_storeEnumTagMultiPayload();
    sub_2325336D4(v37, v41, v39, v38);
    sub_232546168();
    v43 = swift_task_alloc();
    v0[21] = v43;
    v44 = type metadata accessor for NDFDeviceEventInfo(0);
    v45 = sub_232533128(&qword_27DD93640, type metadata accessor for NDFDeviceEventInfo);
    *v43 = v0;
    v43[1] = sub_23252AEC0;
    v46 = v0[12];
    v47 = v0[9];

    return sub_232521A90(v47, v46, v44, v45);
  }
}

uint64_t sub_23252AEC0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_23252B14C;
  }

  else
  {
    v6 = sub_23252AFEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23252AFEC()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[5];
  sub_2325330C8(v0[12], type metadata accessor for NDFActorRequest);
  sub_2324CF3C4(v8 + *(v7 + 40), v9, &qword_27DD93648, &unk_232548928);
  sub_2324C28AC(v8, &qword_27DD93638, &unk_232548918);
  v10 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  sub_232545C98();
  (*(v6 + 8))(v4, v5);

  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_23252B14C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[15];
  sub_2325330C8(v0[12], type metadata accessor for NDFActorRequest);
  v7 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  sub_232545C98();
  (*(v6 + 8))(v4, v5);

  v8 = v0[22];
  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23252B264(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_232545688();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252B324, v1, 0);
}

uint64_t sub_23252B324()
{
  v1 = *(**sub_2324C4D38() + 392);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = *sub_2324C8418();
    if (v3)
    {
      v4 = v0[6];
      v6 = v0[2];
      v5 = v0[3];
      v7 = *(v3 + 128);
      v0[7] = v7;
      v8 = *(v3 + 144);
      v0[8] = v8;
      v9 = *(*v5 + 272);

      v9(v10);
      sub_232545628();
      sub_232533128(&qword_27DD93650, type metadata accessor for NDFActorManager);
      v11 = swift_task_alloc();
      v0[9] = v11;
      v11[2] = v6;
      v11[3] = v4;
      v11[4] = v5;
      v11[5] = v7;
      v11[6] = v8;
      v12 = *(MEMORY[0x277D858E8] + 4);
      v13 = swift_task_alloc();
      v0[10] = v13;
      *v13 = v0;
      v13[1] = sub_23252B628;

      return MEMORY[0x282200600]();
    }

    v19 = v0[3] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
    v15 = sub_232545888();
    v16 = sub_2325461F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "No device manager available";
      goto LABEL_10;
    }
  }

  else
  {
    v14 = v0[3] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
    v15 = sub_232545888();
    v16 = sub_232546208();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Device polling is disallowed";
LABEL_10:
      _os_log_impl(&dword_2324C0000, v15, v16, v18, v17, 2u);
      MEMORY[0x238386450](v17, -1, -1);
    }
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_23252B628()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23252B754, v3, 0);
}

uint64_t sub_23252B754()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  (*(v4 + 8))(v3, v5);
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23252B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v9 = sub_232545688();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v7[17] = *(v10 + 64);
  v7[18] = swift_task_alloc();
  v11 = sub_232545BA8();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v7[21] = *(v12 + 64);
  v7[22] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252B968, a5, 0);
}

uint64_t sub_23252B968()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    v41 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v39 = (v3 + 16);
    v40 = v4;
    v38 = *(v3 + 72);
    v37 = v4 + *(v0 + 168);
    v35 = (v3 + 32);
    v36 = *(v0 + 136) + 7;
    v42 = *(v0 + 128);
    v52 = sub_2325460F8();
    v6 = *(v52 - 8);
    v34 = *(v6 + 56);
    v33 = (v6 + 48);
    v32 = (v6 + 8);
    do
    {
      v51 = v2;
      v46 = *(v0 + 192);
      v49 = *(v0 + 184);
      v9 = *(v0 + 176);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      v12 = *(v0 + 120);
      v43 = v12;
      v44 = v11;
      v47 = *(v0 + 104);
      v48 = *(v0 + 112);
      v45 = *(v0 + 96);
      v13 = *(v0 + 88);
      v34();
      v50 = v5;
      (*v39)(v9, v5, v10);
      (*(v42 + 16))(v11, v13, v12);
      v14 = (v37 + *(v42 + 80)) & ~*(v42 + 80);
      v15 = (v36 + v14) & 0xFFFFFFFFFFFFFFF8;
      v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = (v17 + 16);
      *(v17 + 24) = 0;
      (*v35)(v17 + v40, v9, v10);
      (*(v42 + 32))(v17 + v14, v44, v43);
      *(v17 + v15) = v45;
      *(v17 + v16) = v47;
      *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
      sub_2324CF3C4(v46, v49, &qword_27DD93630, &qword_232547550);
      LODWORD(v9) = (*v33)(v49, 1, v52);

      v19 = *(v0 + 184);
      if (v9 == 1)
      {
        sub_2324C28AC(*(v0 + 184), &qword_27DD93630, &qword_232547550);
      }

      else
      {
        sub_2325460E8();
        (*v32)(v19, v52);
      }

      if (*v18)
      {
        v20 = *(v17 + 24);
        v21 = *v18;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_232546098();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = &unk_232548A70;
      *(v25 + 24) = v17;

      if (v24 | v22)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 192);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v41;
      swift_task_create();

      sub_2324C28AC(v8, &qword_27DD93630, &qword_232547550);
      v5 = v50 + v38;
      v2 = v51 - 1;
    }

    while (v51 != 1);
  }

  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 176);
  v29 = *(v0 + 144);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23252BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_2325460C8();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = type metadata accessor for NDFDevice();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93648, &unk_232548928) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v17 = type metadata accessor for NDFDeviceEventInfo(0);
  v8[20] = v17;
  v18 = *(v17 - 8);
  v8[21] = v18;
  v19 = *(v18 + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252BFDC, 0, 0);
}

uint64_t sub_23252BFDC()
{
  v41 = v0;
  v1 = 0xE90000000000003ELL;
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_232545B88();
  v0[23] = v5;
  v0[24] = v4;
  v6 = sub_232545B98();
  v0[25] = v7;
  v0[26] = v6;
  sub_232545638();
  if (v8 <= 0.0)
  {

    v9 = v0[22];
    v10 = v0[18];
    v11 = v0[19];
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[11];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[27] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
    v0[28] = 1;
    sub_232546168();
    v19 = v0[27];
    v20 = v0[6];
    if (v0[25])
    {
      v21 = v0[25];
    }

    if (v0[23])
    {
      v22 = v0[23];
    }

    v23 = sub_232545888();
    v24 = sub_2325461D8();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[25];
      v25 = v0[26];
      v27 = v0[23];
      if (v26)
      {
        v28 = v0[26];
      }

      else
      {
        v28 = 0x6E776F6E6B6E753CLL;
      }

      if (v26)
      {
        v29 = v0[25];
      }

      else
      {
        v29 = 0xE90000000000003ELL;
      }

      if (v27)
      {
        v30 = v0[24];
      }

      else
      {
        v30 = 0x6E776F6E6B6E753CLL;
      }

      if (v27)
      {
        v1 = v0[23];
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v31 = 136381187;
      *(v31 + 4) = sub_2324C2220(v30, v1, v40);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2324C2220(v28, v29, v40);
      *(v31 + 22) = 2048;
      *(v31 + 24) = 1;
      _os_log_impl(&dword_2324C0000, v23, v24, "Polling device state and events from <%{private}s: %s> [poll attempt: %ld]", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v32, -1, -1);
      MEMORY[0x238386450](v31, -1, -1);
    }

    v33 = *(*v0[6] + 352);
    v39 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    v0[29] = v35;
    *v35 = v0;
    v35[1] = sub_23252C7C4;
    v36 = v0[19];
    v37 = v0[6];
    v38 = v0[4];

    return v39(v36, v38);
  }
}

uint64_t sub_23252C7C4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_23252EE5C;
  }

  else
  {
    v3 = sub_23252C8D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23252C8D8()
{
  v67 = v0;
  v1 = 0xE90000000000003ELL;
  v2 = v0[20];
  v3 = v0[19];
  v4 = (*(v0[21] + 48))(v3, 1, v2);
  v5 = v0[27];
  if (v4 == 1)
  {
    v6 = v0[6];
    if (v0[25])
    {
      v7 = v0[25];
    }

    if (v0[23])
    {
      v8 = v0[23];
    }

    sub_2324C28AC(v3, &qword_27DD93648, &unk_232548928);

    v9 = sub_232545888();
    v10 = sub_2325461F8();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[25];
      v11 = v0[26];
      v13 = v0[23];
      if (v12)
      {
        v14 = v0[26];
      }

      else
      {
        v14 = 0x6E776F6E6B6E753CLL;
      }

      if (v12)
      {
        v15 = v0[25];
      }

      else
      {
        v15 = 0xE90000000000003ELL;
      }

      if (v13)
      {
        v16 = v0[24];
      }

      else
      {
        v16 = 0x6E776F6E6B6E753CLL;
      }

      if (v13)
      {
        v1 = v0[23];
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v66 = v18;
      *v17 = 136380931;
      *(v17 + 4) = sub_2324C2220(v16, v1, &v66);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2324C2220(v14, v15, &v66);
      _os_log_impl(&dword_2324C0000, v9, v10, "Failed to retrieve device info and active events from remote call to device <%{private}s: %s>", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v18, -1, -1);
      MEMORY[0x238386450](v17, -1, -1);
    }

    v19 = swift_task_alloc();
    v0[37] = v19;
    *v19 = v0;
    v19[1] = sub_23252D940;
    v20 = v0[28];
    v21 = v0[5];
    v22 = v0[6];

    return sub_23252F374(v21, v20);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[6];
    if (v0[23])
    {
      v28 = v0[23];
    }

    sub_232533060(v3, v0[22], type metadata accessor for NDFDeviceEventInfo);
    sub_2324CF3C4(v24, v25, &qword_27DD93578, &unk_2325480F0);
    v29 = *(v24 + *(v2 + 20));
    v0[31] = v29;
    sub_2324CF3C4(v25, v26, &qword_27DD93578, &unk_2325480F0);
    swift_bridgeObjectRetain_n();

    v30 = sub_232545888();
    v31 = sub_232546208();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[17];
    if (v32)
    {
      v34 = v0[16];
      v35 = v0[12];
      v36 = v0[13];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v0[3] = v38;
      *v37 = 136315651;
      sub_2324CF3C4(v33, v34, &qword_27DD93578, &unk_2325480F0);
      v39 = (*(v36 + 48))(v34, 1, v35);
      v40 = v0[16];
      if (v39 == 1)
      {
        sub_2324C28AC(v0[16], &qword_27DD93578, &unk_2325480F0);
        v41 = 0xE300000000000000;
        v42 = 7104878;
      }

      else
      {
        v43 = v0[16];
        v42 = sub_2324F6270();
        v41 = v44;
        sub_2325330C8(v40, type metadata accessor for NDFDevice);
      }

      v45 = v0[23];
      if (v45)
      {
        v46 = v0[24];
      }

      else
      {
        v46 = 0x6E776F6E6B6E753CLL;
      }

      if (v45)
      {
        v47 = v0[23];
      }

      else
      {
        v47 = 0xE90000000000003ELL;
      }

      sub_2324C28AC(v0[17], &qword_27DD93578, &unk_2325480F0);
      v48 = sub_2324C2220(v42, v41, v0 + 3);

      *(v37 + 4) = v48;
      *(v37 + 12) = 2048;
      v49 = *(v29 + 16);

      *(v37 + 14) = v49;

      *(v37 + 22) = 2081;
      *(v37 + 24) = sub_2324C2220(v46, v47, v0 + 3);
      _os_log_impl(&dword_2324C0000, v30, v31, "Successfully retrieved device info %s and %ld active events from <%{private}s>", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v38, -1, -1);
      MEMORY[0x238386450](v37, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_2324C28AC(v33, &qword_27DD93578, &unk_2325480F0);
    }

    v50 = v0[15];
    v51 = v0[12];
    v52 = v0[13];
    sub_2324CF3C4(v0[18], v50, &qword_27DD93578, &unk_2325480F0);
    v53 = (*(v52 + 48))(v50, 1, v51);
    v54 = v0[15];
    if (v53 == 1)
    {
      sub_2324C28AC(v54, &qword_27DD93578, &unk_2325480F0);
      v55 = v0[8];
      v56 = v0[4];
      v0[33] = sub_232545B98();
      v0[34] = v57;
      v58 = (*v55 + 136) & 0xFFFFFFFFFFFFLL | 0xDF92000000000000;
      v0[35] = *(*v55 + 136);
      v0[36] = v58;

      return MEMORY[0x2822009F8](sub_23252D198, v55, 0);
    }

    else
    {
      v59 = v0[7];
      sub_232533060(v54, v0[14], type metadata accessor for NDFDevice);
      v64 = (*v59 + 496);
      v65 = (*v64 + **v64);
      v60 = (*v64)[1];
      v61 = swift_task_alloc();
      v0[32] = v61;
      *v61 = v0;
      v61[1] = sub_23252CFF4;
      v62 = v0[14];
      v63 = v0[7];

      return v65(v62);
    }
  }
}

uint64_t sub_23252CFF4()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23252D0F0, 0, 0);
}

uint64_t sub_23252D0F0()
{
  sub_2325330C8(v0[14], type metadata accessor for NDFDevice);
  v1 = v0[8];
  v2 = v0[4];
  v0[33] = sub_232545B98();
  v0[34] = v3;
  v4 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xDF92000000000000;
  v0[35] = *(*v1 + 136);
  v0[36] = v4;

  return MEMORY[0x2822009F8](sub_23252D198, v1, 0);
}

uint64_t sub_23252D198()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 64);
  (*(v0 + 280))(*(v0 + 248), *(v0 + 264), *(v0 + 272));

  return MEMORY[0x2822009F8](sub_23252D218, 0, 0);
}

uint64_t sub_23252D218()
{
  v79 = v0;
  v1 = 0xE90000000000003ELL;
  v2 = v0[30];
  sub_232546168();
  if (!v2)
  {
    v25 = v0[27];
    v26 = v0[6];
    if (v0[25])
    {
      v27 = v0[25];
    }

    if (v0[23])
    {
      v28 = v0[23];
    }

    v29 = sub_232545888();
    v30 = sub_2325461E8();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = v0[25];
      v31 = v0[26];
      v33 = v0[18];
      if (v32)
      {
        v34 = v0[25];
      }

      else
      {
        v34 = 0xE90000000000003ELL;
      }

      if (v32)
      {
        v35 = v0[26];
      }

      else
      {
        v35 = 0x6E776F6E6B6E753CLL;
      }

      if (v0[23])
      {
        v1 = v0[23];
        v36 = v0[24];
      }

      else
      {
        v36 = 0x6E776F6E6B6E753CLL;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78[0] = v38;
      *v37 = 136380931;
      v39 = sub_2324C2220(v36, v1, v78);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2080;
      v40 = sub_2324C2220(v35, v34, v78);

      *(v37 + 14) = v40;
      _os_log_impl(&dword_2324C0000, v29, v30, "Finished polling and processing for device <%{private}s: %s>", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v38, -1, -1);
      MEMORY[0x238386450](v37, -1, -1);
    }

    else
    {
      v63 = v0[25];
      v64 = v0[23];
      v33 = v0[18];
    }

    sub_2324C28AC(v33, &qword_27DD93578, &unk_2325480F0);
    sub_2325330C8(v0[22], type metadata accessor for NDFDeviceEventInfo);
    goto LABEL_60;
  }

  v3 = v0[22];
  sub_2324C28AC(v0[18], &qword_27DD93578, &unk_2325480F0);
  sub_2325330C8(v3, type metadata accessor for NDFDeviceEventInfo);
  v0[38] = v2;
  v4 = v0[11];
  v5 = v0[9];
  v0[2] = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
  v7 = swift_dynamicCast();
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[23];
  if (v7)
  {
    v11 = v0[6];
    if (v9)
    {
      v12 = v0[25];
    }

    if (v10)
    {
      v13 = v0[23];
    }

    (*(v0[10] + 8))(v0[11], v0[9]);

    v14 = sub_232545888();
    v15 = sub_232546208();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[25];
      v16 = v0[26];
      if (v17)
      {
        v18 = v0[25];
      }

      else
      {
        v18 = 0xE90000000000003ELL;
      }

      if (v17)
      {
        v19 = v0[26];
      }

      else
      {
        v19 = 0x6E776F6E6B6E753CLL;
      }

      if (v0[23])
      {
        v1 = v0[23];
        v20 = v0[24];
      }

      else
      {
        v20 = 0x6E776F6E6B6E753CLL;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v78[0] = v22;
      *v21 = 136380931;
      v23 = sub_2324C2220(v20, v1, v78);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = sub_2324C2220(v19, v18, v78);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_2324C0000, v14, v15, "Polling Task cancelled for endpoint <%{private}s: %s>", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v22, -1, -1);
      MEMORY[0x238386450](v21, -1, -1);
    }

    else
    {
      if (v0[25])
      {
        v65 = v0[25];
      }

      if (v0[23])
      {
        v66 = v0[23];
      }
    }

LABEL_60:
    v67 = v0[22];
    v68 = v0[18];
    v69 = v0[19];
    v71 = v0[16];
    v70 = v0[17];
    v73 = v0[14];
    v72 = v0[15];
    v74 = v0[11];

    v75 = v0[1];

    return v75();
  }

  v41 = v0[6];
  if (v9)
  {
    v42 = v0[25];
  }

  if (v10)
  {
    v43 = v0[23];
  }

  v44 = v2;
  v45 = sub_232545888();
  v46 = sub_2325461F8();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v0[25];
    v47 = v0[26];
    v49 = v0[23];
    if (!v48)
    {
      v47 = 0x6E776F6E6B6E753CLL;
    }

    v77 = v47;
    if (v48)
    {
      v50 = v0[25];
    }

    else
    {
      v50 = 0xE90000000000003ELL;
    }

    v76 = v50;
    if (v49)
    {
      v51 = v0[24];
    }

    else
    {
      v51 = 0x6E776F6E6B6E753CLL;
    }

    if (v49)
    {
      v52 = v0[23];
    }

    else
    {
      v52 = 0xE90000000000003ELL;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v78[0] = v55;
    *v53 = 136381187;
    *(v53 + 4) = sub_2324C2220(v51, v52, v78);
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_2324C2220(v77, v76, v78);
    *(v53 + 22) = 2112;
    v56 = v2;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 24) = v57;
    *v54 = v57;
    _os_log_impl(&dword_2324C0000, v45, v46, "Failed to retrieve device info or events from <%{private}s: %s>: %@", v53, 0x20u);
    sub_2324C28AC(v54, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v54, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x238386450](v55, -1, -1);
    MEMORY[0x238386450](v53, -1, -1);
  }

  v58 = swift_task_alloc();
  v0[39] = v58;
  *v58 = v0;
  v58[1] = sub_23252E3C0;
  v59 = v0[28];
  v60 = v0[5];
  v61 = v0[6];

  return sub_23252F374(v60, v59);
}

uint64_t sub_23252D940(char a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_23252DA40, 0, 0);
}

uint64_t sub_23252DA40()
{
  v106 = v0;
  if ((*(v0 + 320) & 1) == 0)
  {
    v29 = 0xE90000000000003ELL;
    v30 = *(v0 + 216);
    v31 = *(v0 + 48);
    if (*(v0 + 200))
    {
      v32 = *(v0 + 200);
    }

    if (*(v0 + 184))
    {
      v33 = *(v0 + 184);
    }

    v34 = sub_232545888();
    v35 = sub_232546208();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      if (v37)
      {
        v38 = *(v0 + 200);
      }

      else
      {
        v38 = 0xE90000000000003ELL;
      }

      if (v37)
      {
        v39 = *(v0 + 208);
      }

      else
      {
        v39 = 0x6E776F6E6B6E753CLL;
      }

      if (*(v0 + 184))
      {
        v29 = *(v0 + 184);
        v40 = *(v0 + 192);
      }

      else
      {
        v40 = 0x6E776F6E6B6E753CLL;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v105[0] = v42;
      *v41 = 136380931;
      v43 = sub_2324C2220(v40, v29, v105);

      *(v41 + 4) = v43;
      *(v41 + 12) = 2080;
      v44 = sub_2324C2220(v39, v38, v105);

      *(v41 + 14) = v44;
      _os_log_impl(&dword_2324C0000, v34, v35, "Aborting further polling attempts for endpoint <%{private}s: %s>", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v42, -1, -1);
      MEMORY[0x238386450](v41, -1, -1);

      goto LABEL_41;
    }

    v47 = *(v0 + 200);
    v48 = *(v0 + 184);

    goto LABEL_40;
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 40);
  result = sub_232545638();
  if (v4 <= 0.0)
  {
    v45 = *(v0 + 184);
    if (*(v0 + 200))
    {
      v46 = *(v0 + 200);
    }

    goto LABEL_40;
  }

  v5 = *(v0 + 224);
  v6 = v5 + 1;
  *(v0 + 224) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    return result;
  }

  v7 = 0xE90000000000003ELL;
  sub_232546168();
  if (v1)
  {
    *(v0 + 304) = v1;
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    *(v0 + 16) = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    v11 = swift_dynamicCast();
    v12 = *(v0 + 216);
    v13 = *(v0 + 200);
    v14 = *(v0 + 184);
    if (v11)
    {
      v15 = *(v0 + 48);
      if (v13)
      {
        v16 = *(v0 + 200);
      }

      if (v14)
      {
        v17 = *(v0 + 184);
      }

      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

      v18 = sub_232545888();
      v19 = sub_232546208();

      if (os_log_type_enabled(v18, v19))
      {
        v21 = *(v0 + 200);
        v20 = *(v0 + 208);
        if (v21)
        {
          v22 = *(v0 + 200);
        }

        else
        {
          v22 = 0xE90000000000003ELL;
        }

        if (v21)
        {
          v23 = *(v0 + 208);
        }

        else
        {
          v23 = 0x6E776F6E6B6E753CLL;
        }

        if (*(v0 + 184))
        {
          v7 = *(v0 + 184);
          v24 = *(v0 + 192);
        }

        else
        {
          v24 = 0x6E776F6E6B6E753CLL;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v105[0] = v26;
        *v25 = 136380931;
        v27 = sub_2324C2220(v24, v7, v105);

        *(v25 + 4) = v27;
        *(v25 + 12) = 2080;
        v28 = sub_2324C2220(v23, v22, v105);

        *(v25 + 14) = v28;
        _os_log_impl(&dword_2324C0000, v18, v19, "Polling Task cancelled for endpoint <%{private}s: %s>", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v26, -1, -1);
        MEMORY[0x238386450](v25, -1, -1);

        goto LABEL_41;
      }

      if (*(v0 + 200))
      {
        v100 = *(v0 + 200);
      }

      if (*(v0 + 184))
      {
        v101 = *(v0 + 184);
      }

LABEL_40:

LABEL_41:
      v49 = *(v0 + 176);
      v50 = *(v0 + 144);
      v51 = *(v0 + 152);
      v53 = *(v0 + 128);
      v52 = *(v0 + 136);
      v55 = *(v0 + 112);
      v54 = *(v0 + 120);
      v56 = *(v0 + 88);

      v57 = *(v0 + 8);

      return v57();
    }

    v79 = *(v0 + 48);
    if (v13)
    {
      v80 = *(v0 + 200);
    }

    if (v14)
    {
      v81 = *(v0 + 184);
    }

    v82 = v1;
    v83 = sub_232545888();
    v84 = sub_2325461F8();

    if (os_log_type_enabled(v83, v84))
    {
      v86 = *(v0 + 200);
      v85 = *(v0 + 208);
      v87 = *(v0 + 184);
      if (!v86)
      {
        v85 = 0x6E776F6E6B6E753CLL;
      }

      v104 = v85;
      if (v86)
      {
        v88 = *(v0 + 200);
      }

      else
      {
        v88 = 0xE90000000000003ELL;
      }

      v102 = v88;
      if (v87)
      {
        v89 = *(v0 + 192);
      }

      else
      {
        v89 = 0x6E776F6E6B6E753CLL;
      }

      if (v87)
      {
        v90 = *(v0 + 184);
      }

      else
      {
        v90 = 0xE90000000000003ELL;
      }

      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v105[0] = v93;
      *v91 = 136381187;
      *(v91 + 4) = sub_2324C2220(v89, v90, v105);
      *(v91 + 12) = 2080;
      *(v91 + 14) = sub_2324C2220(v104, v102, v105);
      *(v91 + 22) = 2112;
      v94 = v1;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v91 + 24) = v95;
      *v92 = v95;
      _os_log_impl(&dword_2324C0000, v83, v84, "Failed to retrieve device info or events from <%{private}s: %s>: %@", v91, 0x20u);
      sub_2324C28AC(v92, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v92, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x238386450](v93, -1, -1);
      MEMORY[0x238386450](v91, -1, -1);
    }

    v96 = swift_task_alloc();
    *(v0 + 312) = v96;
    *v96 = v0;
    v96[1] = sub_23252E3C0;
    v97 = *(v0 + 224);
    v98 = *(v0 + 40);
    v99 = *(v0 + 48);

    return sub_23252F374(v98, v97);
  }

  else
  {
    v58 = *(v0 + 216);
    v59 = *(v0 + 48);
    if (*(v0 + 200))
    {
      v60 = *(v0 + 200);
    }

    if (*(v0 + 184))
    {
      v61 = *(v0 + 184);
    }

    v62 = sub_232545888();
    v63 = sub_2325461D8();

    if (os_log_type_enabled(v62, v63))
    {
      v65 = *(v0 + 200);
      v64 = *(v0 + 208);
      v66 = *(v0 + 184);
      if (v65)
      {
        v67 = *(v0 + 208);
      }

      else
      {
        v67 = 0x6E776F6E6B6E753CLL;
      }

      if (v65)
      {
        v68 = *(v0 + 200);
      }

      else
      {
        v68 = 0xE90000000000003ELL;
      }

      if (v66)
      {
        v69 = *(v0 + 192);
      }

      else
      {
        v69 = 0x6E776F6E6B6E753CLL;
      }

      if (v66)
      {
        v70 = *(v0 + 184);
      }

      else
      {
        v70 = 0xE90000000000003ELL;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v105[0] = v72;
      *v71 = 136381187;
      *(v71 + 4) = sub_2324C2220(v69, v70, v105);
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_2324C2220(v67, v68, v105);
      *(v71 + 22) = 2048;
      *(v71 + 24) = v6;
      _os_log_impl(&dword_2324C0000, v62, v63, "Polling device state and events from <%{private}s: %s> [poll attempt: %ld]", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v72, -1, -1);
      MEMORY[0x238386450](v71, -1, -1);
    }

    v73 = *(**(v0 + 48) + 352);
    v103 = (v73 + *v73);
    v74 = v73[1];
    v75 = swift_task_alloc();
    *(v0 + 232) = v75;
    *v75 = v0;
    v75[1] = sub_23252C7C4;
    v76 = *(v0 + 152);
    v77 = *(v0 + 48);
    v78 = *(v0 + 32);

    return v103(v76, v78);
  }
}

uint64_t sub_23252E3C0(char a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 321) = a1;

  return MEMORY[0x2822009F8](sub_23252E4C0, 0, 0);
}

uint64_t sub_23252E4C0()
{
  v61 = v0;
  if (*(v0 + 321))
  {

    v1 = *(v0 + 40);
    result = sub_232545638();
    if (v3 > 0.0)
    {
      v4 = *(v0 + 224);
      v5 = v4 + 1;
      *(v0 + 224) = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      else
      {
        sub_232546168();
        v38 = *(v0 + 216);
        v39 = *(v0 + 48);
        if (*(v0 + 200))
        {
          v40 = *(v0 + 200);
        }

        if (*(v0 + 184))
        {
          v41 = *(v0 + 184);
        }

        v42 = sub_232545888();
        v43 = sub_2325461D8();

        if (os_log_type_enabled(v42, v43))
        {
          v45 = *(v0 + 200);
          v44 = *(v0 + 208);
          v46 = *(v0 + 184);
          if (v45)
          {
            v47 = *(v0 + 208);
          }

          else
          {
            v47 = 0x6E776F6E6B6E753CLL;
          }

          if (v45)
          {
            v48 = *(v0 + 200);
          }

          else
          {
            v48 = 0xE90000000000003ELL;
          }

          if (v46)
          {
            v49 = *(v0 + 192);
          }

          else
          {
            v49 = 0x6E776F6E6B6E753CLL;
          }

          if (v46)
          {
            v50 = *(v0 + 184);
          }

          else
          {
            v50 = 0xE90000000000003ELL;
          }

          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v60[0] = v52;
          *v51 = 136381187;
          *(v51 + 4) = sub_2324C2220(v49, v50, v60);
          *(v51 + 12) = 2080;
          *(v51 + 14) = sub_2324C2220(v47, v48, v60);
          *(v51 + 22) = 2048;
          *(v51 + 24) = v5;
          _os_log_impl(&dword_2324C0000, v42, v43, "Polling device state and events from <%{private}s: %s> [poll attempt: %ld]", v51, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x238386450](v52, -1, -1);
          MEMORY[0x238386450](v51, -1, -1);
        }

        v53 = *(**(v0 + 48) + 352);
        v59 = (v53 + *v53);
        v54 = v53[1];
        v55 = swift_task_alloc();
        *(v0 + 232) = v55;
        *v55 = v0;
        v55[1] = sub_23252C7C4;
        v56 = *(v0 + 152);
        v57 = *(v0 + 48);
        v58 = *(v0 + 32);

        return v59(v56, v58);
      }

      return result;
    }

    v25 = *(v0 + 184);
    if (*(v0 + 200))
    {
      v26 = *(v0 + 200);
    }
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 48);
    if (*(v0 + 200))
    {
      v8 = *(v0 + 200);
    }

    if (*(v0 + 184))
    {
      v9 = *(v0 + 184);
    }

    v10 = sub_232545888();
    v11 = sub_232546208();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 304);
    if (v12)
    {
      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v16 = *(v0 + 184);
      if (v15)
      {
        v17 = *(v0 + 200);
      }

      else
      {
        v17 = 0xE90000000000003ELL;
      }

      if (v15)
      {
        v18 = *(v0 + 208);
      }

      else
      {
        v18 = 0x6E776F6E6B6E753CLL;
      }

      if (v16)
      {
        v19 = *(v0 + 184);
      }

      else
      {
        v19 = 0xE90000000000003ELL;
      }

      if (v16)
      {
        v20 = *(v0 + 192);
      }

      else
      {
        v20 = 0x6E776F6E6B6E753CLL;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v60[0] = v22;
      *v21 = 136380931;
      v23 = sub_2324C2220(v20, v19, v60);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = sub_2324C2220(v18, v17, v60);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_2324C0000, v10, v11, "Aborting further polling attempts for endpoint <%{private}s: %s>", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v22, -1, -1);
      MEMORY[0x238386450](v21, -1, -1);

      goto LABEL_32;
    }

    if (*(v0 + 200))
    {
      v27 = *(v0 + 200);
    }

    if (*(v0 + 184))
    {
      v28 = *(v0 + 184);
    }
  }

LABEL_32:
  v29 = *(v0 + 176);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 88);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_23252EE5C()
{
  v56 = v0;
  v1 = 0xE90000000000003ELL;
  v2 = v0[30];
  v0[2] = v2;
  v0[38] = v2;
  v3 = v0[11];
  v4 = v0[9];
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
  v6 = swift_dynamicCast();
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[23];
  if (v6)
  {
    v10 = v0[6];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v11 = sub_232545888();
    v12 = sub_232546208();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[25];
      v13 = v0[26];
      if (v14)
      {
        v15 = v0[25];
      }

      else
      {
        v15 = 0xE90000000000003ELL;
      }

      if (v14)
      {
        v16 = v0[26];
      }

      else
      {
        v16 = 0x6E776F6E6B6E753CLL;
      }

      if (v0[23])
      {
        v1 = v0[23];
        v17 = v0[24];
      }

      else
      {
        v17 = 0x6E776F6E6B6E753CLL;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = v19;
      *v18 = 136380931;
      v20 = sub_2324C2220(v17, v1, &v55);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2080;
      v21 = sub_2324C2220(v16, v15, &v55);

      *(v18 + 14) = v21;
      _os_log_impl(&dword_2324C0000, v11, v12, "Polling Task cancelled for endpoint <%{private}s: %s>", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v19, -1, -1);
      MEMORY[0x238386450](v18, -1, -1);
    }

    else
    {
      if (v0[25])
      {
        v42 = v0[25];
      }

      if (v0[23])
      {
        v43 = v0[23];
      }
    }

    v44 = v0[22];
    v45 = v0[18];
    v46 = v0[19];
    v48 = v0[16];
    v47 = v0[17];
    v50 = v0[14];
    v49 = v0[15];
    v51 = v0[11];

    v52 = v0[1];

    return v52();
  }

  else
  {
    v22 = v0[6];

    v23 = v2;
    v24 = sub_232545888();
    v25 = sub_2325461F8();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[25];
      v26 = v0[26];
      v28 = v0[23];
      if (!v27)
      {
        v26 = 0x6E776F6E6B6E753CLL;
      }

      v54 = v26;
      if (v27)
      {
        v29 = v0[25];
      }

      else
      {
        v29 = 0xE90000000000003ELL;
      }

      v53 = v29;
      if (v28)
      {
        v30 = v0[24];
      }

      else
      {
        v30 = 0x6E776F6E6B6E753CLL;
      }

      if (v28)
      {
        v31 = v0[23];
      }

      else
      {
        v31 = 0xE90000000000003ELL;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v34;
      *v32 = 136381187;
      *(v32 + 4) = sub_2324C2220(v30, v31, &v55);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2324C2220(v54, v53, &v55);
      *(v32 + 22) = 2112;
      v35 = v2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 24) = v36;
      *v33 = v36;
      _os_log_impl(&dword_2324C0000, v24, v25, "Failed to retrieve device info or events from <%{private}s: %s>: %@", v32, 0x20u);
      sub_2324C28AC(v33, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v33, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x238386450](v34, -1, -1);
      MEMORY[0x238386450](v32, -1, -1);
    }

    v37 = swift_task_alloc();
    v0[39] = v37;
    *v37 = v0;
    v37[1] = sub_23252E3C0;
    v38 = v0[28];
    v39 = v0[5];
    v40 = v0[6];

    return sub_23252F374(v39, v38);
  }
}

uint64_t sub_23252F374(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232545688();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_232546458();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252F494, v2, 0);
}

uint64_t sub_23252F494()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(**sub_2324C4D38() + 440);

  v6 = v4(v5);
  *(v0 + 88) = v6;

  v7 = v6 * v3;
  sub_232545638();
  *(v0 + 96) = v8;
  if (v7 >= v8)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
    v19 = sub_232545888();
    v20 = sub_2325461D8();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v7;
      *(v25 + 12) = 2048;
      sub_232545648();
      v27 = v26;
      (*(v23 + 8))(v22, v24);
      *(v25 + 14) = v27;
      _os_log_impl(&dword_2324C0000, v19, v20, "Notice: Sleeping %fs will exceed the next deadline of %f", v25, 0x16u);
      MEMORY[0x238386450](v25, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v28 = *(v0 + 80);
    v29 = *(v0 + 56);

    v30 = *(v0 + 8);
    v31 = *(v0 + 88) * *(v0 + 24) < *(v0 + 96);

    return v30(v31);
  }

  else
  {
    v9 = sub_232545888();
    v10 = sub_232546208();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_2324C0000, v9, v10, "Sleeping for %fs to try again...", v11, 0xCu);
      MEMORY[0x238386450](v11, -1, -1);
    }

    v12 = *(v0 + 80);

    v13 = sub_232546768();
    v15 = v14;
    sub_232546698();
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_23252F7E4;
    v17 = *(v0 + 80);

    return sub_23251CB30(v13, v15, 0, 0, 1);
  }
}

uint64_t sub_23252F7E4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 13);
  v5 = *v1;

  v6 = *(v2 + 10);
  v7 = *(v2 + 9);
  v8 = *(v2 + 8);
  if (v0)
  {
    v9 = *(v3 + 4);

    (*(v7 + 8))(v6, v8);

    return MEMORY[0x2822009F8](sub_23252F9D4, v9, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v10 = *(v3 + 10);
    v11 = *(v3 + 7);

    v12 = *(v5 + 1);
    v13 = v3[11] * *(v3 + 3) < v3[12];

    return v12(v13);
  }
}

uint64_t sub_23252F9D4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 88) * *(v0 + 24) < *(v0 + 96);

  return v3(v4);
}

char *sub_23252FA58()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v5 = sub_2325458A8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_discoveryTimer];
  swift_unknownObjectRelease();
  v7 = *&v0[OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingTask];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23252FAF8()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v5 = sub_2325458A8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_discoveryTimer];
  swift_unknownObjectRelease();
  v7 = *&v0[OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingTask];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23252FBA8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_232545BA8();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252FCA0, v1, 0);
}

uint64_t sub_23252FCA0()
{
  v27 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  swift_unknownObjectRetain();
  sub_232545BB8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[5];
    v6 = v0[4];
    sub_2324C28AC(v0[6], &qword_27DD93658, &unk_232548950);
    swift_unknownObjectRetain();
    v7 = sub_232545888();
    v8 = sub_2325461F8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      v0[2] = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
      v12 = sub_232545F88();
      v14 = sub_2324C2220(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2324C0000, v7, v8, "Failed to convert endpoint %s to NWEndpoint", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x238386450](v11, -1, -1);
      MEMORY[0x238386450](v10, -1, -1);
    }

    v15 = v0[9];
    v16 = v0[6];
    sub_232526CF4();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 1;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[5];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v0[10] = type metadata accessor for NDFActor();
    sub_232545C78();
    v21 = sub_2324F5138();
    (*(*v20 + 296))(v21);
    sub_232545CE8();
    sub_232545CC8();
    v0[11] = sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor);
    v22 = sub_232545758();
    v0[12] = v22;
    v23 = v22;

    v24 = swift_task_alloc();
    v0[13] = v24;
    *v24 = v0;
    v24[1] = sub_232530298;
    v25 = v0[5];

    return sub_232530814(v23);
  }
}

uint64_t sub_232530298(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  v6[14] = v2;

  v9 = v6[5];
  if (v2)
  {
    v10 = sub_232530584;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v10 = sub_2325303D8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2325303D8()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v16 = v0[7];
  v8 = sub_232545B88();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 95;
    v10 = 0xE100000000000000;
  }

  MEMORY[0x2383855C0](v8, v10);

  MEMORY[0x2383855C0](572537376, 0xE400000000000000);

  MEMORY[0x2383855C0](v2, v1);

  MEMORY[0x2383855C0](15906, 0xE200000000000000);

  v11 = *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  sub_232545C98();
  (*(v7 + 8))(v5, v16);

  v12 = v0[9];
  v13 = v0[6];

  v14 = v0[1];

  return v14(60, 0xE100000000000000);
}

uint64_t sub_232530584()
{
  v31 = v0;
  v1 = v0[11];
  v2 = v0[10];
  v3 = *(v0[12] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  sub_232545C98();
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[4];
  v6 = v0[5];

  swift_unknownObjectRetain();
  v8 = v4;
  v9 = sub_232545888();
  v10 = sub_2325461F8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[8];
    v28 = v0[7];
    v29 = v0[9];
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    v0[3] = v12;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
    v16 = sub_232545F88();
    v18 = sub_2324C2220(v16, v17, &v30);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v4;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2324C0000, v9, v10, "Failed to ping actor at endpoint %s: %@", v13, 0x16u);
    sub_2324C28AC(v14, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x238386450](v15, -1, -1);
    MEMORY[0x238386450](v13, -1, -1);

    (*(v11 + 8))(v29, v28);
  }

  else
  {
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[7];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[9];
  v25 = v0[6];

  v26 = v0[1];

  return v26(0, 0xE000000000000000);
}

uint64_t sub_232530814(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93670, &qword_232548970);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for NDFActorRequestType(0);
  v2[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(type metadata accessor for NDFActorRequest(0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = sub_2325456F8();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325309BC, v1, 0);
}

uint64_t sub_2325309BC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[6];
    sub_2324C28AC(v0[13], &unk_27DD932E0, qword_2325472E0);
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2324C0000, v6, v7, "Failed to ping actor as IDS deviceID is nil", v8, 2u);
      MEMORY[0x238386450](v8, -1, -1);
    }

    sub_232526CF4();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 1;
    swift_willThrow();
    v11 = v0[16];
    v10 = v0[17];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v16 = v0[8];
    v15 = v0[9];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[12];
    v25 = v0[10];
    v24 = v0[11];
    (*(v22 + 32))(v20, v0[13], v21);
    (*(v22 + 16))(v19, v20, v21);
    v26 = *sub_232520DDC();
    swift_storeEnumTagMultiPayload();
    sub_2325336D4(v19, v26, v24, v23);
    v27 = swift_task_alloc();
    v0[18] = v27;
    *v27 = v0;
    v27[1] = sub_232530CA0;
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[5];
    v31 = MEMORY[0x277D837D0];

    return sub_232521A90(v29, v28, v31, &off_28478EBC8);
  }
}

uint64_t sub_232530CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_23253113C;
  }

  else
  {
    v6 = sub_232530DCC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232530DCC()
{
  v36 = v0;
  v1 = v0[9];
  v2 = (v1 + *(v0[7] + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xED00003E65736E6FLL;
    v3 = 0x70736552206F4E3CLL;
  }

  v5 = v0[6];
  sub_2324CF3C4(v1, v0[8], &unk_27DD93670, &qword_232548970);

  v6 = sub_232545888();
  v7 = sub_232546208();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  v13 = v0[8];
  v12 = v0[9];
  v33 = v12;
  v34 = v0[12];
  if (v8)
  {
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v14 = 136315394;
    *(v14 + 4) = sub_2324C2220(v3, v4, &v35);
    *(v14 + 12) = 2080;
    sub_232533128(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v30 = v10;
    v31 = v9;
    v15 = sub_232546608();
    v16 = v4;
    v17 = v3;
    v19 = v18;
    sub_2324C28AC(v13, &unk_27DD93670, &qword_232548970);
    v20 = sub_2324C2220(v15, v19, &v35);
    v3 = v17;
    v4 = v16;

    *(v14 + 14) = v20;
    _os_log_impl(&dword_2324C0000, v6, v7, "Received response %s from device %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v32, -1, -1);
    MEMORY[0x238386450](v14, -1, -1);

    sub_2324C28AC(v33, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v34, type metadata accessor for NDFActorRequest);
    (*(v11 + 8))(v31, v30);
  }

  else
  {

    sub_2324C28AC(v13, &unk_27DD93670, &qword_232548970);
    sub_2324C28AC(v33, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v34, type metadata accessor for NDFActorRequest);
    (*(v11 + 8))(v9, v10);
  }

  v22 = v0[16];
  v21 = v0[17];
  v24 = v0[12];
  v23 = v0[13];
  v25 = v0[11];
  v27 = v0[8];
  v26 = v0[9];

  v28 = v0[1];

  return v28(v3, v4);
}

uint64_t sub_23253113C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  sub_2325330C8(v0[12], type metadata accessor for NDFActorRequest);
  (*(v3 + 8))(v1, v2);
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v11 = v0[8];
  v10 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_232531230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = sub_232545BA8();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23253132C, v3, 0);
}

uint64_t sub_23253132C()
{
  v29 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  swift_unknownObjectRetain();
  sub_232545BB8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[7];
    v6 = v0[4];
    sub_2324C28AC(v0[8], &qword_27DD93658, &unk_232548950);
    swift_unknownObjectRetain();
    v7 = sub_232545888();
    v8 = sub_2325461F8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      v0[2] = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
      v12 = sub_232545F88();
      v14 = sub_2324C2220(v12, v13, &v28);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2324C0000, v7, v8, "Failed to convert endpoint %s to NWEndpoint", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x238386450](v11, -1, -1);
      MEMORY[0x238386450](v10, -1, -1);
    }

    v15 = v0[11];
    v16 = v0[8];
    sub_232526CF4();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 1;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[7];
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v0[12] = type metadata accessor for NDFActor();
    sub_232545C78();
    v21 = sub_2324F5138();
    (*(*v20 + 296))(v21);
    sub_232545CE8();
    sub_232545CC8();
    v0[13] = sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor);
    v22 = sub_232545758();
    v0[14] = v22;
    v23 = v22;

    v24 = swift_task_alloc();
    v0[15] = v24;
    *v24 = v0;
    v24[1] = sub_23253196C;
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[5];

    return sub_232531F34(v23, v27, v25);
  }
}

uint64_t sub_23253196C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  v6[16] = v2;

  v9 = v6[7];
  if (v2)
  {
    v10 = sub_232531C58;
  }

  else
  {
    v6[17] = a2;
    v6[18] = a1;
    v10 = sub_232531AAC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_232531AAC()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v16 = v0[9];
  v8 = sub_232545B88();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 95;
    v10 = 0xE100000000000000;
  }

  MEMORY[0x2383855C0](v8, v10);

  MEMORY[0x2383855C0](572537376, 0xE400000000000000);

  MEMORY[0x2383855C0](v2, v1);

  MEMORY[0x2383855C0](15906, 0xE200000000000000);

  v11 = *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  sub_232545C98();
  (*(v7 + 8))(v5, v16);

  v12 = v0[11];
  v13 = v0[8];

  v14 = v0[1];

  return v14(60, 0xE100000000000000);
}

uint64_t sub_232531C58()
{
  v34 = v0;
  v1 = v0[13];
  v2 = v0[12];
  v3 = *(v0[14] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  sub_232545C98();
  v4 = v0[16];
  v5 = v0[14];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];

  swift_unknownObjectRetain();

  v9 = v4;
  v10 = sub_232545888();
  v11 = sub_2325461F8();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = v0[10];
    v31 = v0[9];
    v32 = v0[11];
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_2324C2220(v12, v13, &v33);
    *(v15 + 12) = 2080;
    v0[3] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
    v18 = sub_232545F88();
    v20 = sub_2324C2220(v18, v19, &v33);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v22;
    *v16 = v22;
    _os_log_impl(&dword_2324C0000, v10, v11, "Failed to send message %s to actor at %s: %@", v15, 0x20u);
    sub_2324C28AC(v16, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x238386450](v17, -1, -1);
    MEMORY[0x238386450](v15, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[11];
  v27 = v0[8];

  v28 = v0[1];

  return v28(0, 0xE000000000000000);
}

uint64_t sub_232531F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93670, &qword_232548970);
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for NDFActorRequestType(0);
  v4[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = *(*(type metadata accessor for NDFActorRequest(0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = sub_2325456F8();
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v13 = *(v12 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325320E0, v3, 0);
}

uint64_t sub_2325320E0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[8];
    sub_2324C28AC(v0[15], &unk_27DD932E0, qword_2325472E0);
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2324C0000, v6, v7, "Failed to message actor as IDS deviceID is nil", v8, 2u);
      MEMORY[0x238386450](v8, -1, -1);
    }

    sub_232526CF4();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 1;
    swift_willThrow();
    v11 = v0[18];
    v10 = v0[19];
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[18];
    v20 = v0[19];
    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[14];
    v25 = v0[12];
    v24 = v0[13];
    v27 = v0[6];
    v26 = v0[7];
    (*(v22 + 32))(v20, v0[15], v21);
    (*(v22 + 16))(v19, v20, v21);
    v28 = *sub_232520DDC();
    *v24 = v27;
    v24[1] = v26;
    swift_storeEnumTagMultiPayload();

    sub_2325336D4(v19, v28, v24, v23);
    v29 = swift_task_alloc();
    v0[20] = v29;
    *v29 = v0;
    v29[1] = sub_2325323E0;
    v30 = v0[14];
    v31 = v0[11];
    v32 = v0[5];
    v33 = MEMORY[0x277D837D0];

    return sub_232521A90(v31, v30, v33, &off_28478EBC8);
  }
}

uint64_t sub_2325323E0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_23253287C;
  }

  else
  {
    v6 = sub_23253250C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23253250C()
{
  v36 = v0;
  v1 = v0[11];
  v2 = (v1 + *(v0[9] + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xED00003E65736E6FLL;
    v3 = 0x70736552206F4E3CLL;
  }

  v5 = v0[8];
  sub_2324CF3C4(v1, v0[10], &unk_27DD93670, &qword_232548970);

  v6 = sub_232545888();
  v7 = sub_232546208();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  v13 = v0[10];
  v12 = v0[11];
  v33 = v12;
  v34 = v0[14];
  if (v8)
  {
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v14 = 136315394;
    *(v14 + 4) = sub_2324C2220(v3, v4, &v35);
    *(v14 + 12) = 2080;
    sub_232533128(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v30 = v10;
    v31 = v9;
    v15 = sub_232546608();
    v16 = v4;
    v17 = v3;
    v19 = v18;
    sub_2324C28AC(v13, &unk_27DD93670, &qword_232548970);
    v20 = sub_2324C2220(v15, v19, &v35);
    v3 = v17;
    v4 = v16;

    *(v14 + 14) = v20;
    _os_log_impl(&dword_2324C0000, v6, v7, "Received response %s from device %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v32, -1, -1);
    MEMORY[0x238386450](v14, -1, -1);

    sub_2324C28AC(v33, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v34, type metadata accessor for NDFActorRequest);
    (*(v11 + 8))(v31, v30);
  }

  else
  {

    sub_2324C28AC(v13, &unk_27DD93670, &qword_232548970);
    sub_2324C28AC(v33, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v34, type metadata accessor for NDFActorRequest);
    (*(v11 + 8))(v9, v10);
  }

  v22 = v0[18];
  v21 = v0[19];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];
  v27 = v0[10];
  v26 = v0[11];

  v28 = v0[1];

  return v28(v3, v4);
}

uint64_t sub_23253287C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  sub_2325330C8(v0[14], type metadata accessor for NDFActorRequest);
  (*(v3 + 8))(v1, v2);
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_232532970(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem);
  type metadata accessor for NDFActor();
  sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor);
  return sub_232545C98();
}

uint64_t sub_2325329F8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_232546458();
  v7 = sub_232533128(&qword_27DD935A0, MEMORY[0x277D85928]);
  sub_232546678();
  sub_232533128(&unk_27DD93680, MEMORY[0x277D858F8]);
  sub_232546468();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_23251CDC0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232532BA8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_232529454(v3, v4, v5, v2);
}

uint64_t type metadata accessor for NDFActorManager()
{
  result = qword_2814D6E30;
  if (!qword_2814D6E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232532C88(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2324C2910;

  return sub_23252B7EC(v10, a2, v5, v6, v7, v8, v9);
}

uint64_t sub_232532D54()
{
  result = sub_2325458A8();
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

uint64_t sub_232532E24()
{
  v2 = *(sub_232545BA8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_232545688() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + v8);
  v11 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_2324C290C;

  return sub_23252BDC8(v12, v13, v14, v0 + v3, v0 + v6, v9, v10, v11);
}

uint64_t sub_232532FA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return sub_2324CDEA8(a1, v5);
}

uint64_t sub_232533060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2325330C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_232533128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232533170()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2325290E0(v4, v5, v6, v2, v3);
}

uint64_t sub_2325332DC()
{
  v1 = 0x696C696261706163;
  if (*v0 != 1)
  {
    v1 = 0x5474736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656369766564;
  }
}

uint64_t sub_232533344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23253A240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232533378(uint64_t a1)
{
  v2 = sub_232533638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325333B4(uint64_t a1)
{
  v2 = sub_232533638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325333F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93698, &qword_232548AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232533638();
  sub_232546758();
  v16 = 0;
  sub_2325456F8();
  sub_23253368C(&qword_27DD93530, MEMORY[0x277CC95F0]);
  sub_2325465E8();
  if (!v2)
  {
    v11 = type metadata accessor for NDFActorRequest(0);
    v15 = *(v3 + *(v11 + 20));
    v14[15] = 1;
    sub_232526954();
    sub_2325465E8();
    v12 = *(v11 + 24);
    v14[14] = 2;
    type metadata accessor for NDFActorRequestType(0);
    sub_23253368C(&qword_27DD936A0, type metadata accessor for NDFActorRequestType);
    sub_2325465E8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_232533638()
{
  result = qword_27DD94820;
  if (!qword_27DD94820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94820);
  }

  return result;
}

uint64_t sub_23253368C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2325336D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2325456F8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for NDFActorRequest(0);
  *(a4 + *(v9 + 20)) = a2;
  return sub_232534D04(a3, a4 + *(v9 + 24), type metadata accessor for NDFActorRequestType);
}

uint64_t sub_232533778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for NDFActorRequestType(0);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2325456F8();
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936A8, &qword_232548AB8);
  v26 = *(v30 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NDFActorRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232533638();
  sub_232546748();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v26;
  v18 = v27;
  v22 = v15;
  v23 = a1;
  v34 = 0;
  sub_23253368C(&qword_27DD93558, MEMORY[0x277CC95F0]);
  v19 = v28;
  sub_232546548();
  (*(v18 + 32))(v22, v19, v29);
  v33 = 1;
  sub_232526900();
  sub_232546548();
  v20 = v22;
  *&v22[*(v12 + 20)] = v31;
  v32 = 2;
  sub_23253368C(&qword_27DD936B0, type metadata accessor for NDFActorRequestType);
  sub_232546548();
  (*(v17 + 8))(v11, v30);
  sub_232534D04(v6, v20 + *(v12 + 24), type metadata accessor for NDFActorRequestType);
  sub_232533BD4(v20, v24, type metadata accessor for NDFActorRequest);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return sub_232534DC0(v20, type metadata accessor for NDFActorRequest);
}

uint64_t sub_232533BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232533C6C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6567617373656DLL;
    if (v1 != 1)
    {
      v5 = 0x7055656369766564;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1735289200;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001FLL;
    }

    v3 = 0x6E65764565746F6ELL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_232533D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23253A364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232533D88(uint64_t a1)
{
  v2 = sub_232534BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533DC4(uint64_t a1)
{
  v2 = sub_232534BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533E0C(uint64_t a1)
{
  v2 = sub_232534E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533E48(uint64_t a1)
{
  v2 = sub_232534E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533E90(uint64_t a1)
{
  v2 = sub_232534E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533ECC(uint64_t a1)
{
  v2 = sub_232534E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533F08(uint64_t a1)
{
  v2 = sub_232534D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533F44(uint64_t a1)
{
  v2 = sub_232534D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533F8C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_232533FBC(uint64_t a1)
{
  v2 = sub_232534EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533FF8(uint64_t a1)
{
  v2 = sub_232534EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232534034(uint64_t a1)
{
  v2 = sub_232534CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232534070(uint64_t a1)
{
  v2 = sub_232534CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325340AC(uint64_t a1)
{
  v2 = sub_232534C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325340E8(uint64_t a1)
{
  v2 = sub_232534C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232534124(uint64_t a1)
{
  v2 = sub_232534C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232534160(uint64_t a1)
{
  v2 = sub_232534C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23253419C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936B8, &qword_232548AC0);
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936C0, &qword_232548AC8);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v5);
  v70 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936C8, &qword_232548AD0);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v62 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936D0, &qword_232548AD8);
  v66 = *(v83 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v62 - v12;
  v81 = type metadata accessor for NDFEvent(0);
  v13 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936D8, &qword_232548AE0);
  v65 = *(v79 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v62 - v16;
  v64 = type metadata accessor for NDFDevice();
  v17 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v77 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936E0, &qword_232548AE8);
  v76 = *(v19 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936E8, &qword_232548AF0);
  v62 = *(v63 - 8);
  v23 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v25 = &v62 - v24;
  v26 = type metadata accessor for NDFActorRequestType(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936F0, &qword_232548AF8);
  v86 = *(v30 - 8);
  v87 = v30;
  v31 = *(v86 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v62 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232534BB4();
  v85 = v33;
  sub_232546758();
  sub_232533BD4(v84, v29, type metadata accessor for NDFActorRequestType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v40 = v76;
    v41 = v19;
    v43 = v78;
    v42 = v79;
    v44 = v82;
    v45 = v83;
    if (!EnumCaseMultiPayload)
    {
      v56 = *v29;
      v57 = v29[1];
      v89 = 1;
      sub_232534E74();
      v36 = v87;
      v58 = v85;
      sub_232546578();
      sub_2325465C8();

      (*(v40 + 8))(v22, v41);
      v38 = *(v86 + 8);
      v39 = v58;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v46 = v77;
      sub_232534D04(v29, v77, type metadata accessor for NDFDevice);
      v90 = 2;
      sub_232534E20();
      v47 = v43;
      v48 = v87;
      v49 = v85;
      sub_232546578();
      sub_23253368C(&qword_27DD936F8, type metadata accessor for NDFDevice);
      sub_2325465E8();
      (*(v65 + 8))(v47, v42);
      sub_232534DC0(v46, type metadata accessor for NDFDevice);
      return (*(v86 + 8))(v49, v48);
    }

    v60 = v80;
    sub_232534D04(v29, v80, type metadata accessor for NDFEvent);
    v91 = 3;
    sub_232534D6C();
    v52 = v87;
    v61 = v85;
    sub_232546578();
    sub_23253368C(qword_2814D5080, type metadata accessor for NDFEvent);
    sub_2325465E8();
    (*(v66 + 8))(v44, v45);
    sub_232534DC0(v60, type metadata accessor for NDFEvent);
    v38 = *(v86 + 8);
    v39 = v61;
LABEL_16:
    v59 = v52;
    return v38(v39, v59);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v93 = 5;
      sub_232534C5C();
      v51 = v70;
      v52 = v87;
      v53 = v85;
      sub_232546578();
      v55 = v71;
      v54 = v72;
    }

    else
    {
      v94 = 6;
      sub_232534C08();
      v51 = v73;
      v52 = v87;
      v53 = v85;
      sub_232546578();
      v55 = v74;
      v54 = v75;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v92 = 4;
    sub_232534CB0();
    v51 = v67;
    v52 = v87;
    v53 = v85;
    sub_232546578();
    v55 = v68;
    v54 = v69;
LABEL_15:
    (*(v55 + 8))(v51, v54);
    v38 = *(v86 + 8);
    v39 = v53;
    goto LABEL_16;
  }

  v88 = 0;
  sub_232534EC8();
  v36 = v87;
  v37 = v85;
  sub_232546578();
  (*(v62 + 8))(v25, v63);
  v38 = *(v86 + 8);
  v39 = v37;
LABEL_11:
  v59 = v36;
  return v38(v39, v59);
}

unint64_t sub_232534BB4()
{
  result = qword_27DD94828;
  if (!qword_27DD94828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94828);
  }

  return result;
}

unint64_t sub_232534C08()
{
  result = qword_27DD94830;
  if (!qword_27DD94830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94830);
  }

  return result;
}

unint64_t sub_232534C5C()
{
  result = qword_27DD94838;
  if (!qword_27DD94838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94838);
  }

  return result;
}

unint64_t sub_232534CB0()
{
  result = qword_27DD94840;
  if (!qword_27DD94840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94840);
  }

  return result;
}

uint64_t sub_232534D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_232534D6C()
{
  result = qword_27DD94848;
  if (!qword_27DD94848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94848);
  }

  return result;
}

uint64_t sub_232534DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_232534E20()
{
  result = qword_27DD94850;
  if (!qword_27DD94850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94850);
  }

  return result;
}

unint64_t sub_232534E74()
{
  result = qword_27DD94858;
  if (!qword_27DD94858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94858);
  }

  return result;
}

unint64_t sub_232534EC8()
{
  result = qword_27DD94860;
  if (!qword_27DD94860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94860);
  }

  return result;
}

uint64_t sub_232534F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93700, &qword_232548B00);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v3);
  v109 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93708, &qword_232548B08);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v6);
  v108 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93710, &qword_232548B10);
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v9);
  v103 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93718, &qword_232548B18);
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v12);
  v107 = &v82 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93720, &qword_232548B20);
  v91 = *(v92 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v102 = &v82 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93728, &qword_232548B28);
  v90 = *(v87 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v87);
  v101 = &v82 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93730, &qword_232548B30);
  v88 = *(v89 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v106 = &v82 - v20;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93738, &qword_232548B38);
  v105 = *(v110 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x28223BE20](v110);
  v23 = &v82 - v22;
  v24 = type metadata accessor for NDFActorRequestType(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v82 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v82 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = &v82 - v35;
  v38 = a1[3];
  v37 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v38);
  sub_232534BB4();
  v39 = v112;
  sub_232546748();
  if (v39)
  {
    goto LABEL_24;
  }

  v82 = v34;
  v40 = v106;
  v83 = v31;
  v84 = v28;
  v41 = v107;
  v86 = 0;
  v43 = v108;
  v42 = v109;
  v112 = v24;
  v85 = v36;
  v44 = v110;
  v45 = v23;
  v46 = sub_232546558();
  if (*(v46 + 16) == 1)
  {
    v47 = *(v46 + 32);
    if (v47 != 7)
    {
      if (*(v46 + 32) > 2u)
      {
        if (*(v46 + 32) <= 4u)
        {
          v48 = v104;
          if (v47 == 3)
          {
            v116 = 3;
            sub_232534D6C();
            v49 = v41;
            v50 = v86;
            sub_2325464C8();
            v51 = v105;
            if (!v50)
            {
              type metadata accessor for NDFEvent(0);
              sub_23253368C(&qword_2814D5078, type metadata accessor for NDFEvent);
              v52 = v96;
              sub_232546548();
              (*(v95 + 8))(v49, v52);
              (*(v51 + 8))(v23, v110);
              swift_unknownObjectRelease();
              v80 = v84;
              swift_storeEnumTagMultiPayload();
              v81 = v85;
              sub_232534D04(v80, v85, type metadata accessor for NDFActorRequestType);
LABEL_36:
              v79 = v111;
              goto LABEL_37;
            }
          }

          else
          {
            v117 = 4;
            sub_232534CB0();
            v65 = v103;
            v66 = v86;
            sub_2325464C8();
            v51 = v105;
            if (!v66)
            {
              (*(v93 + 8))(v65, v94);
              (*(v51 + 8))(v23, v44);
              swift_unknownObjectRelease();
              v81 = v85;
              swift_storeEnumTagMultiPayload();
              goto LABEL_36;
            }
          }

          goto LABEL_22;
        }

        v48 = v104;
        v60 = v23;
        if (v47 == 5)
        {
          v118 = 5;
          sub_232534C5C();
          v62 = v86;
          sub_2325464C8();
          v61 = v105;
          if (!v62)
          {
            (*(v97 + 8))(v43, v98);
            (*(v61 + 8))(v23, v44);
            swift_unknownObjectRelease();
            v81 = v85;
            swift_storeEnumTagMultiPayload();
            goto LABEL_36;
          }

          goto LABEL_16;
        }

        v119 = 6;
        sub_232534C08();
        v69 = v86;
        sub_2325464C8();
        v70 = v105;
        if (!v69)
        {
          (*(v99 + 8))(v42, v100);
          (*(v70 + 8))(v23, v44);
          swift_unknownObjectRelease();
          v81 = v85;
          swift_storeEnumTagMultiPayload();
          goto LABEL_36;
        }

LABEL_27:
        (*(v105 + 8))(v23, v44);
        goto LABEL_23;
      }

      if (*(v46 + 32))
      {
        v58 = v86;
        if (v47 == 1)
        {
          v114 = 1;
          sub_232534E74();
          v59 = v101;
          v60 = v23;
          sub_2325464C8();
          if (v58)
          {
            v61 = v105;
LABEL_16:
            (*(v61 + 8))(v60, v44);
            goto LABEL_23;
          }

          v71 = v87;
          v74 = sub_232546528();
          v76 = v75;
          (*(v90 + 8))(v59, v71);
          (*(v105 + 8))(v23, v44);
          swift_unknownObjectRelease();
          v77 = v82;
          *v82 = v74;
          v77[1] = v76;
          swift_storeEnumTagMultiPayload();
          v78 = v77;
        }

        else
        {
          v115 = 2;
          sub_232534E20();
          v64 = v102;
          sub_2325464C8();
          if (v58)
          {
            goto LABEL_27;
          }

          type metadata accessor for NDFDevice();
          sub_23253368C(&qword_27DD93748, type metadata accessor for NDFDevice);
          v72 = v83;
          v73 = v92;
          sub_232546548();
          (*(v91 + 8))(v64, v73);
          (*(v105 + 8))(v23, v44);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v78 = v72;
        }

        v81 = v85;
        sub_232534D04(v78, v85, type metadata accessor for NDFActorRequestType);
      }

      else
      {
        v113 = 0;
        sub_232534EC8();
        v63 = v86;
        sub_2325464C8();
        if (v63)
        {
          v51 = v105;
LABEL_22:
          (*(v51 + 8))(v23, v44);
          goto LABEL_23;
        }

        (*(v88 + 8))(v40, v89);
        (*(v105 + 8))(v23, v44);
        swift_unknownObjectRelease();
        v81 = v85;
        swift_storeEnumTagMultiPayload();
      }

      v79 = v111;
      v48 = v104;
LABEL_37:
      sub_232534D04(v81, v48, type metadata accessor for NDFActorRequestType);
      v67 = v79;
      return __swift_destroy_boxed_opaque_existential_0(v67);
    }
  }

  v53 = v44;
  v54 = sub_232546418();
  swift_allocError();
  v56 = v55;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93740, &qword_232548B40) + 48);
  *v56 = v112;
  sub_2325464D8();
  sub_232546408();
  (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
  swift_willThrow();
  (*(v105 + 8))(v45, v53);
LABEL_23:
  swift_unknownObjectRelease();
LABEL_24:
  v67 = v111;
  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_232535D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = sub_232546318();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_232535DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEA00000000007974 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_232535F24(unsigned __int8 a1)
{
  sub_2325466F8();
  MEMORY[0x238385CF0](a1);
  return sub_232546738();
}

uint64_t sub_232535F6C(char a1)
{
  if (!a1)
  {
    return 0x4449656369766564;
  }

  if (a1 == 1)
  {
    return 0x696C696261706163;
  }

  return 0x65736E6F70736572;
}

uint64_t sub_232535FEC()
{
  sub_2325466F8();
  sub_232535EFC(v2, *v0);
  return sub_232546738();
}

uint64_t sub_232536034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232535DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23253605C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2325360B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_232536104(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = v5;
  type metadata accessor for NDFActorResponse.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2325465F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232546758();
  v26 = 0;
  sub_2325456F8();
  sub_23253368C(&qword_27DD93530, MEMORY[0x277CC95F0]);
  v12 = v22;
  sub_2325465E8();
  if (!v12)
  {
    v13 = v19;
    v14 = v21;
    v23 = *(v3 + *(v21 + 36));
    v25 = 1;
    sub_232526954();
    sub_2325465E8();
    v15 = *(v14 + 40);
    v24 = 2;
    v16 = *(v13 + 16);
    sub_2325465A8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_232536358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2325456F8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for NDFActorResponse();
  *(a4 + *(v9 + 36)) = a2;
  v10 = *(v9 + 40);
  v11 = sub_232546318();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_232536458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_232546318();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = v31 - v9;
  v41 = sub_2325456F8();
  v38 = *(v41 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDFActorResponse.CodingKeys();
  swift_getWitnessTable();
  v42 = sub_232546568();
  v37 = *(v42 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = v31 - v13;
  v40 = a3;
  v15 = type metadata accessor for NDFActorResponse();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v43 = v14;
  v20 = v44;
  sub_232546748();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v37;
  v21 = v38;
  v31[1] = a2;
  v44 = v18;
  v23 = v40;
  v48 = 0;
  sub_23253368C(&qword_27DD93558, MEMORY[0x277CC95F0]);
  v24 = v39;
  sub_232546548();
  (*(v21 + 32))(v44, v24, v41);
  v47 = 1;
  sub_232526900();
  sub_232546548();
  v25 = v15;
  *&v44[*(v15 + 36)] = v45;
  v46 = 2;
  v26 = *(v23 + 8);
  v27 = v36;
  sub_232546508();
  (*(v22 + 8))(v43, v42);
  v28 = v44;
  (*(v33 + 32))(&v44[*(v25 + 40)], v27, v34);
  v29 = v32;
  (*(v32 + 16))(v35, v28, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v29 + 8))(v28, v25);
}

BOOL sub_232536950(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return 1;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a4 == 2 && a3 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 2 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a1)
    {
      if (a4 == 2 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }

    return 0;
  }

  return !a4;
}

unint64_t sub_2325369E4(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 0xD000000000000018;
  }

  if (a2 == 1)
  {
    return 0xD000000000000011;
  }

  v3 = 0x74656E7265746E49;
  if (a1 != 2)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000015;
  if (a1)
  {
    v4 = 0xD000000000000010;
  }

  if (a1 <= 1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_232536ACC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_232536B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000023254D060 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_232546628();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_232536BA8(uint64_t a1)
{
  v2 = sub_232536DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232536BE4(uint64_t a1)
{
  v2 = sub_232536DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232536C20(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93750, &unk_232548B48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232536DA0();
  sub_232546758();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
  sub_2324FB390(&qword_27DD93548);
  sub_2325465A8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_232536DA0()
{
  result = qword_27DD94868;
  if (!qword_27DD94868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94868);
  }

  return result;
}

void *sub_232536E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_23253A5C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_232536EBC()
{
  v1 = 0x414E656C62756F64;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7774654E656D6173;
  }
}

uint64_t sub_232536F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23253A7C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232536F50(uint64_t a1)
{
  v2 = sub_23253A76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232536F8C(uint64_t a1)
{
  v2 = sub_23253A76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232536FC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93758, &qword_232548B58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253A76C();
  sub_232546758();
  v10[15] = 0;
  sub_232546598();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  sub_232546598();
  v10[13] = 2;
  sub_232546598();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2325371A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23253A8EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

unint64_t sub_232537208()
{
  v1 = *v0;
  v2 = 0x6576726553736E64;
  v3 = 0xD000000000000016;
  v4 = 0x74656E7265746E69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2325372EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23253ADB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232537320(uint64_t a1)
{
  v2 = sub_23253AABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23253735C(uint64_t a1)
{
  v2 = sub_23253AABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537398(uint64_t a1)
{
  v2 = sub_23253ABB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325373D4(uint64_t a1)
{
  v2 = sub_23253ABB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537410(uint64_t a1)
{
  v2 = sub_23253AC0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23253744C(uint64_t a1)
{
  v2 = sub_23253AC0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537488(uint64_t a1)
{
  v2 = sub_23253AB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325374C4(uint64_t a1)
{
  v2 = sub_23253AB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_232546628();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_232537580(uint64_t a1)
{
  v2 = sub_23253ACB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325375BC(uint64_t a1)
{
  v2 = sub_23253ACB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325375F8(uint64_t a1)
{
  v2 = sub_23253AD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232537634(uint64_t a1)
{
  v2 = sub_23253AD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537670(uint64_t a1)
{
  v2 = sub_23253AB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325376AC(uint64_t a1)
{
  v2 = sub_23253AB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325376E8(void *a1, uint64_t a2, int a3)
{
  v51 = a3;
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93760, &qword_232548B60);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93768, &qword_232548B68);
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93770, &qword_232548B70);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93778, &qword_232548B78);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93780, &qword_232548B80);
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93788, &qword_232548B88);
  v38 = *(v21 - 8);
  v22 = *(v38 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93790, &unk_232548B90);
  v53 = *(v25 - 8);
  v54 = v25;
  v26 = *(v53 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v38 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253AABC();
  sub_232546758();
  if (!v51)
  {
    LOBYTE(v55) = 1;
    sub_23253ACB4();
    v33 = v54;
    sub_232546578();
    BYTE2(v55) = BYTE2(v52);
    LOWORD(v55) = v52;
    sub_23253AD08();
    sub_2325465A8();
    (*(v48 + 8))(v20, v17);
    return (*(v53 + 8))(v28, v33);
  }

  if (v51 == 1)
  {
    LOBYTE(v55) = 2;
    sub_23253AC0C();
    v30 = v54;
    sub_232546578();
    v55 = v52;
    sub_23253AC60();
    v31 = v50;
    sub_2325465A8();
    (*(v49 + 8))(v16, v31);
    return (*(v53 + 8))(v28, v30);
  }

  if (v52 > 1)
  {
    if (v52 == 2)
    {
      LOBYTE(v55) = 4;
      sub_23253AB64();
      v35 = v42;
      v34 = v54;
      sub_232546578();
      v37 = v43;
      v36 = v44;
    }

    else
    {
      LOBYTE(v55) = 5;
      sub_23253AB10();
      v35 = v45;
      v34 = v54;
      sub_232546578();
      v37 = v46;
      v36 = v47;
    }

    goto LABEL_12;
  }

  if (v52)
  {
    LOBYTE(v55) = 3;
    sub_23253ABB8();
    v35 = v39;
    v34 = v54;
    sub_232546578();
    v37 = v40;
    v36 = v41;
LABEL_12:
    (*(v37 + 8))(v35, v36);
    return (*(v53 + 8))(v28, v34);
  }

  LOBYTE(v55) = 0;
  sub_23253AD5C();
  v34 = v54;
  sub_232546578();
  (*(v38 + 8))(v24, v21);
  return (*(v53 + 8))(v28, v34);
}

BOOL sub_232537DB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      v5 = *a1;
      if (*a1 > 1)
      {
        if (v5 == 2)
        {
          if (v2 == 2 && v4 == 2)
          {
            return 1;
          }
        }

        else if (v2 == 2 && v4 == 3)
        {
          return 1;
        }
      }

      else if (v5)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && !v4)
      {
        return 1;
      }
    }

    return 0;
  }

  return !*(a2 + 8);
}

unint64_t sub_232537E4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23253AFC4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_232537EA8()
{
  v1 = *v0;
  sub_2325466F8();
  sub_232546728();
  return sub_232546738();
}

uint64_t sub_232537F1C()
{
  v1 = *v0;
  sub_2325466F8();
  sub_232546728();
  return sub_232546738();
}

uint64_t sub_232537F60@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23253B934(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_232538048()
{
  v1 = *v0;
  sub_2324E6FC0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_232538080(uint64_t a1, char a2)
{
  result = sub_2324E6E70(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2325380F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 24);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23253816C(uint64_t a1)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 24);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_232538230@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 28);
  v4 = sub_2325456F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2325382F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 36);
  v4 = sub_2325456F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_232538370@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  v13 = type metadata accessor for NDFEvent(0);
  v14 = v13[6];
  v15 = sub_232545688();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  v16 = v13[7];
  v17 = sub_2325456F8();
  v20 = *(*(v17 - 8) + 32);
  (v20)((v17 - 8), a8 + v16, a5, v17);
  sub_2324F1C98(a6, a8 + v13[8], &unk_27DD932E0, qword_2325472E0);
  v18 = a8 + v13[9];

  return v20(v18, a7, v17);
}

uint64_t sub_2325384B0()
{
  v1 = v0;
  sub_2325463D8();
  MEMORY[0x2383855C0](91, 0xE100000000000000);
  v2 = type metadata accessor for NDFEvent(0);
  v3 = v2[6];
  sub_232545688();
  sub_23253368C(&qword_2814D62B8, MEMORY[0x277CC9578]);
  v4 = sub_232546608();
  MEMORY[0x2383855C0](v4);

  MEMORY[0x2383855C0](8250, 0xE200000000000000);
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v5 = 0x800000023254CFE0;
      v6 = 0xD000000000000011;
    }

    else
    {
      v7 = *v1;
      v8 = 0xEF65676174754F20;
      v9 = 0x74656E7265746E49;
      if (*v1 != 2)
      {
        v9 = 0xD000000000000014;
        v8 = 0x800000023254CF60;
      }

      v10 = 0x800000023254CFA0;
      v11 = 0xD000000000000015;
      if (v7)
      {
        v11 = 0xD000000000000010;
        v10 = 0x800000023254CFC0;
      }

      if (v7 <= 1)
      {
        v6 = v11;
      }

      else
      {
        v6 = v9;
      }

      if (v7 <= 1)
      {
        v5 = v10;
      }

      else
      {
        v5 = v8;
      }
    }
  }

  else
  {
    v5 = 0x800000023254CF80;
    v6 = 0xD000000000000018;
  }

  MEMORY[0x2383855C0](v6, v5);

  MEMORY[0x2383855C0](10272, 0xE200000000000000);
  v12 = v2[9];
  sub_2325456F8();
  sub_23253368C(&qword_2814D62A0, MEMORY[0x277CC95F0]);
  v13 = sub_232546608();
  MEMORY[0x2383855C0](v13);

  MEMORY[0x2383855C0](3940393, 0xE300000000000000);
  v17 = *(v1 + 9);
  sub_232546478();
  MEMORY[0x2383855C0](0x20726F66203ELL, 0xE600000000000000);
  v14 = v1 + v2[7];
  v15 = sub_232546608();
  MEMORY[0x2383855C0](v15);

  MEMORY[0x2383855C0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2325387A0()
{
  v1 = *v0;
  v2 = 0x707954746E657665;
  v3 = 0x4449656369766564;
  v4 = 0x49555570756F7267;
  if (v1 != 4)
  {
    v4 = 0x495555746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F43746E657665;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_232538864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23253EB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23253888C(uint64_t a1)
{
  v2 = sub_23253B944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325388C8(uint64_t a1)
{
  v2 = sub_23253B944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232538904(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937A8, &qword_232548BA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253B944();
  sub_232546758();
  v11 = *(v3 + 8);
  v18 = *v3;
  v19 = v11;
  v20 = 0;
  sub_23253B998();
  sub_2325465E8();
  if (!v2)
  {
    LOBYTE(v18) = *(v3 + 9);
    v20 = 1;
    sub_23253B9EC();
    sub_2325465E8();
    v12 = type metadata accessor for NDFEvent(0);
    v13 = v12[6];
    LOBYTE(v18) = 2;
    sub_232545688();
    sub_23253368C(&qword_27DD93538, MEMORY[0x277CC9578]);
    sub_2325465E8();
    v14 = v12[7];
    LOBYTE(v18) = 3;
    sub_2325456F8();
    sub_23253368C(&qword_27DD93530, MEMORY[0x277CC95F0]);
    sub_2325465E8();
    v15 = v12[8];
    LOBYTE(v18) = 4;
    sub_2325465A8();
    v16 = v12[9];
    LOBYTE(v18) = 5;
    sub_2325465E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_232538C08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v45 - v5;
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = sub_232545688();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937C0, &qword_232548BA8);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = type metadata accessor for NDFEvent(0);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v26 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_23253B944();
  v58 = v20;
  v27 = v59;
  sub_232546748();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }

  v28 = v16;
  v59 = v12;
  v63 = 0;
  sub_23253BA40();
  sub_232546548();
  v29 = v62;
  *v24 = v61;
  v24[8] = v29;
  v63 = 1;
  sub_23253BA94();
  sub_232546548();
  v30 = v56;
  v24[9] = v61;
  LOBYTE(v61) = 2;
  sub_23253368C(&qword_27DD93560, MEMORY[0x277CC9578]);
  sub_232546548();
  v31 = *(v55 + 32);
  v32 = &v24[v21[6]];
  v49 = v13;
  v31(v32, v28, v13);
  LOBYTE(v61) = 3;
  v33 = sub_23253368C(&qword_27DD93558, MEMORY[0x277CC95F0]);
  v34 = v59;
  v35 = v53;
  sub_232546548();
  v36 = v21[7];
  v37 = v35;
  v38 = v33;
  v39 = v54 + 32;
  v40 = *(v54 + 32);
  v48 = v24;
  v40(&v24[v36], v34, v37);
  LOBYTE(v61) = 4;
  v41 = v52;
  v59 = v38;
  sub_232546508();
  v46 = v40;
  v47 = v39;
  sub_2324F1C98(v41, &v48[v21[8]], &unk_27DD932E0, qword_2325472E0);
  LOBYTE(v61) = 5;
  v42 = v51;
  sub_232546548();
  (*(v30 + 8))(v58, v57);
  v43 = v48;
  v46(&v48[v21[9]], v42, v37);
  sub_232533BD4(v43, v50, type metadata accessor for NDFEvent);
  __swift_destroy_boxed_opaque_existential_0(v60);
  return sub_232534DC0(v43, type metadata accessor for NDFEvent);
}

uint64_t sub_232539378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_2325393E8(uint64_t a1)
{
  v3 = sub_232545688();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23253946C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_232546628();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2325394FC(uint64_t a1)
{
  v2 = sub_23253BAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232539538(uint64_t a1)
{
  v2 = sub_23253BAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232539574(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937D8, &qword_232548BB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BAE8();
  sub_232546758();
  sub_232545688();
  sub_23253368C(&qword_27DD93538, MEMORY[0x277CC9578]);
  sub_2325465E8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2325396EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_232545688();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937E0, &unk_232548BB8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NDFActorGeneralResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BAE8();
  sub_232546748();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23253368C(&qword_27DD93560, MEMORY[0x277CC9578]);
    sub_232546548();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_232534D04(v14, v17, type metadata accessor for NDFActorGeneralResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_232539988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_232539A3C()
{
  v1 = *(v0 + *(type metadata accessor for NDFDeviceEventInfo(0) + 20));
}

uint64_t sub_232539A88()
{
  if (*v0)
  {
    result = 0x7645657669746361;
  }

  else
  {
    result = 0x656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_232539AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v6 || (sub_232546628() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7645657669746361 && a2 == 0xEC00000073746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232546628();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_232539BB0(uint64_t a1)
{
  v2 = sub_23253BB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232539BEC(uint64_t a1)
{
  v2 = sub_23253BB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232539C28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937E8, &unk_232548BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BB7C();
  sub_232546758();
  v14 = 0;
  type metadata accessor for NDFDevice();
  sub_23253368C(&qword_27DD936F8, type metadata accessor for NDFDevice);
  sub_2325465A8();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for NDFDeviceEventInfo(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
    sub_23253BBD0(&qword_2814D4F20, qword_2814D5080);
    sub_2325465E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_232539E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2324F1C98(a1, a3, &qword_27DD93578, &unk_2325480F0);
  result = type metadata accessor for NDFDeviceEventInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_232539E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937F0, qword_232548BD8);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NDFDeviceEventInfo(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BB7C();
  sub_232546748();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v12;
  v17 = v15;
  v18 = v25;
  type metadata accessor for NDFDevice();
  v29 = 0;
  sub_23253368C(&qword_27DD93748, type metadata accessor for NDFDevice);
  v19 = v26;
  sub_232546508();
  sub_2324F1C98(v7, v17, &qword_27DD93578, &unk_2325480F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
  v28 = 1;
  sub_23253BBD0(&qword_2814D4F18, &qword_2814D5078);
  sub_232546548();
  (*(v18 + 8))(v11, v19);
  v20 = v24;
  *(v17 + *(v23 + 20)) = v27;
  sub_232533BD4(v17, v20, type metadata accessor for NDFDeviceEventInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_232534DC0(v17, type metadata accessor for NDFDeviceEventInfo);
}

uint64_t sub_23253A240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEA00000000007974 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    return 2;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23253A364(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v3 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7055656369766564 && a2 == 0xEC00000065746164 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65764565746F6ELL && a2 == 0xE900000000000074 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023254D000 == a2 || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023254D020 == a2 || (sub_232546628() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000023254D040 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *sub_23253A5C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93878, &unk_23254A8E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232536DA0();
  sub_232546748();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324FB390(&qword_27DD93570);
    sub_232546508();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_23253A76C()
{
  result = qword_27DD94870;
  if (!qword_27DD94870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94870);
  }

  return result;
}

uint64_t sub_23253A7C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7774654E656D6173 && a2 == 0xEB000000006B726FLL;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x414E656C62756F64 && a2 == 0xE900000000000054 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023254D080 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23253A8EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93870, &qword_23254A8D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253A76C();
  sub_232546748();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = 0;
  v9 = sub_2325464F8();
  v15 = 1;
  v10 = sub_2325464F8();
  v14 = 2;
  v11 = sub_2325464F8();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (v10 << 8) | (v11 << 16) | v9;
}

unint64_t sub_23253AABC()
{
  result = qword_27DD94878;
  if (!qword_27DD94878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94878);
  }

  return result;
}

unint64_t sub_23253AB10()
{
  result = qword_27DD94880;
  if (!qword_27DD94880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94880);
  }

  return result;
}

unint64_t sub_23253AB64()
{
  result = qword_27DD94888;
  if (!qword_27DD94888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94888);
  }

  return result;
}

unint64_t sub_23253ABB8()
{
  result = qword_27DD94890;
  if (!qword_27DD94890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94890);
  }

  return result;
}

unint64_t sub_23253AC0C()
{
  result = qword_27DD94898;
  if (!qword_27DD94898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94898);
  }

  return result;
}

unint64_t sub_23253AC60()
{
  result = qword_27DD93798;
  if (!qword_27DD93798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93798);
  }

  return result;
}

unint64_t sub_23253ACB4()
{
  result = qword_27DD948A0;
  if (!qword_27DD948A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948A0);
  }

  return result;
}

unint64_t sub_23253AD08()
{
  result = qword_27DD937A0;
  if (!qword_27DD937A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937A0);
  }

  return result;
}

unint64_t sub_23253AD5C()
{
  result = qword_27DD948A8;
  if (!qword_27DD948A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948A8);
  }

  return result;
}

uint64_t sub_23253ADB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000023254D0A0 == a2;
  if (v3 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023254D0C0 == a2 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576726553736E64 && a2 == 0xEF65676174754F72 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023254D0E0 == a2 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74656E7265746E69 && a2 == 0xEE0065676174754FLL || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023254D100 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_23253AFC4(uint64_t *a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93838, &qword_23254A8A0);
  v58 = *(v61 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93840, &qword_23254A8A8);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93848, &qword_23254A8B0);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = &v48 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93850, &qword_23254A8B8);
  v57 = *(v51 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v51);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93858, &qword_23254A8C0);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93860, &qword_23254A8C8);
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93868, &qword_23254A8D0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v67 = a1;
  v27 = __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_23253AABC();
  v28 = v66;
  sub_232546748();
  if (!v28)
  {
    v49 = v16;
    v50 = v15;
    v29 = v63;
    v30 = v64;
    v31 = v65;
    v66 = v21;
    v32 = sub_232546558();
    if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 6))
    {
      v37 = sub_232546418();
      swift_allocError();
      v38 = v20;
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93740, &qword_232548B40) + 48);
      *v40 = &type metadata for NDFEvent.NDFEventType;
      v27 = v24;
      sub_2325464D8();
      sub_232546408();
      (*(*(v37 - 8) + 104))(v40, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v66 + 8))(v24, v38);
      swift_unknownObjectRelease();
    }

    else if (*(v32 + 32) > 2u)
    {
      if (v33 == 3)
      {
        LOBYTE(v68) = 3;
        sub_23253ABB8();
        sub_2325464C8();
        v44 = v66;
        (*(v55 + 8))(v29, v56);
        (*(v44 + 8))(v24, v20);
        swift_unknownObjectRelease();
        v27 = 1;
      }

      else
      {
        v43 = v66;
        if (v33 == 4)
        {
          LOBYTE(v68) = 4;
          sub_23253AB64();
          sub_2325464C8();
          (*(v59 + 8))(v30, v60);
          (*(v43 + 8))(v24, v20);
          swift_unknownObjectRelease();
          v27 = 2;
        }

        else
        {
          LOBYTE(v68) = 5;
          sub_23253AB10();
          sub_2325464C8();
          (*(v58 + 8))(v31, v61);
          (*(v43 + 8))(v24, v20);
          swift_unknownObjectRelease();
          v27 = 3;
        }
      }
    }

    else if (*(v32 + 32))
    {
      if (v33 == 1)
      {
        LOBYTE(v68) = 1;
        sub_23253ACB4();
        v34 = v50;
        sub_2325464C8();
        v35 = v66;
        sub_23253BEBC();
        v36 = v54;
        sub_232546508();
        (*(v53 + 8))(v34, v36);
        (*(v35 + 8))(v24, v20);
        swift_unknownObjectRelease();
        v27 = v68 | (BYTE2(v68) << 16);
      }

      else
      {
        LOBYTE(v68) = 2;
        sub_23253AC0C();
        v45 = v62;
        sub_2325464C8();
        v46 = v66;
        sub_23253BE00();
        v47 = v51;
        sub_232546508();
        (*(v57 + 8))(v45, v47);
        (*(v46 + 8))(v24, v20);
        swift_unknownObjectRelease();
        v27 = v68;
      }
    }

    else
    {
      LOBYTE(v68) = 0;
      sub_23253AD5C();
      sub_2325464C8();
      (*(v52 + 8))(v19, v49);
      (*(v66 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v27 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v67);
  return v27;
}

uint64_t sub_23253B934(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

unint64_t sub_23253B944()
{
  result = qword_27DD948B0;
  if (!qword_27DD948B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948B0);
  }

  return result;
}

unint64_t sub_23253B998()
{
  result = qword_27DD937B0;
  if (!qword_27DD937B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937B0);
  }

  return result;
}

unint64_t sub_23253B9EC()
{
  result = qword_27DD937B8;
  if (!qword_27DD937B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937B8);
  }

  return result;
}

unint64_t sub_23253BA40()
{
  result = qword_27DD937C8;
  if (!qword_27DD937C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937C8);
  }

  return result;
}

unint64_t sub_23253BA94()
{
  result = qword_27DD937D0;
  if (!qword_27DD937D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937D0);
  }

  return result;
}

unint64_t sub_23253BAE8()
{
  result = qword_27DD948B8;
  if (!qword_27DD948B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948B8);
  }

  return result;
}

unint64_t sub_23253BB7C()
{
  result = qword_27DD948C0[0];
  if (!qword_27DD948C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD948C0);
  }

  return result;
}

uint64_t sub_23253BBD0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93408, qword_232548490);
    sub_23253368C(a2, type metadata accessor for NDFEvent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23253BC6C(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93600, type metadata accessor for NDFActorRequest);
  result = sub_23253368C(&qword_27DD93608, type metadata accessor for NDFActorRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253BCF0(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD936B0, type metadata accessor for NDFActorRequestType);
  result = sub_23253368C(&qword_27DD936A0, type metadata accessor for NDFActorRequestType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253BD74(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23253BE00()
{
  result = qword_27DD937F8;
  if (!qword_27DD937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937F8);
  }

  return result;
}

uint64_t sub_23253BE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23253BEBC()
{
  result = qword_27DD93800;
  if (!qword_27DD93800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93800);
  }

  return result;
}

uint64_t sub_23253BF6C(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_2814D5078, type metadata accessor for NDFEvent);
  result = sub_23253368C(qword_2814D5080, type metadata accessor for NDFEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253BFF0(uint64_t a1)
{
  *(a1 + 8) = sub_23253BBD0(&qword_2814D4F18, &qword_2814D5078);
  result = sub_23253BBD0(&qword_2814D4F20, qword_2814D5080);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C090(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93748, type metadata accessor for NDFDevice);
  result = sub_23253368C(&qword_27DD936F8, type metadata accessor for NDFDevice);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C114(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93808, type metadata accessor for NDFActorGeneralResponse);
  result = sub_23253368C(&qword_27DD93810, type metadata accessor for NDFActorGeneralResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C198(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93818, type metadata accessor for NDFDeviceEventInfo);
  result = sub_23253368C(&qword_27DD93820, type metadata accessor for NDFDeviceEventInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C244()
{
  result = sub_2325456F8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NDFActorRequestType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23253C320()
{
  result = type metadata accessor for NDFDevice();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NDFEvent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23253C3A8(uint64_t a1)
{
  result = sub_2325456F8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_232546318();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23253C438(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!v10)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_33;
  }

  v16 = v15 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v19 < 2)
    {
LABEL_32:
      if (v12)
      {
LABEL_33:
        if (v8 >= v11)
        {
          v25 = *(v7 + 48);

          return v25(a1);
        }

        else
        {
          v23 = (*(*(*(a3 + 16) - 8) + 48))((((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14, v10);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_32;
  }

LABEL_19:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_23253C698(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_2325456F8();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = v13 - 1;
  if (!v13)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v13)
  {
    v18 = *(v12 + 64);
  }

  else
  {
    v18 = *(v12 + 64) + 1;
  }

  v19 = ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v18;
  if (a3 <= v17)
  {
    goto LABEL_20;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v9 = 4;
      if (v17 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v17 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v17 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v19] = 0;
    }

    else if (v9)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v11 >= v16)
      {
        v29 = *(v10 + 56);

        v29(a1, a2, v11, v8);
      }

      else
      {
        v25 = (((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15);
        if (v16 >= a2)
        {
          v30 = *(v12 + 56);

          v30(v25, (a2 + 1));
        }

        else
        {
          if (v18 <= 3)
          {
            v26 = ~(-1 << (8 * v18));
          }

          else
          {
            v26 = -1;
          }

          if (v18)
          {
            v27 = v26 & (~v16 + a2);
            if (v18 <= 3)
            {
              v28 = v18;
            }

            else
            {
              v28 = 4;
            }

            bzero(v25, v18);
            if (v28 > 2)
            {
              if (v28 == 3)
              {
                *v25 = v27;
                v25[2] = BYTE2(v27);
              }

              else
              {
                *v25 = v27;
              }
            }

            else if (v28 == 1)
            {
              *v25 = v27;
            }

            else
            {
              *v25 = v27;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v22 = ~v17 + a2;
  if (v19 >= 4)
  {
    bzero(a1, ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v18);
    *a1 = v22;
    v23 = 1;
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = (v22 >> (8 * v19)) + 1;
  if (!v19)
  {
LABEL_58:
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v24 = v22 & ~(-1 << (8 * v19));
  bzero(a1, ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v18);
  if (v19 == 3)
  {
    *a1 = v24;
    a1[2] = BYTE2(v24);
    goto LABEL_58;
  }

  if (v19 == 2)
  {
    *a1 = v24;
    if (v9 > 1)
    {
LABEL_62:
      if (v9 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v9 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v9)
  {
    a1[v19] = v23;
  }
}

void sub_23253CA44()
{
  sub_232545688();
  if (v0 <= 0x3F)
  {
    sub_2325456F8();
    if (v1 <= 0x3F)
    {
      sub_23253D114(319, &qword_2814D6298, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_29SymptomNetworkDiagnosticsCore8NDFEventV0E4TypeO0E16PayloadDNSOutageVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_29SymptomNetworkDiagnosticsCore8NDFEventV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_23253CB6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23253CBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23253CBF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_23253CC2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23253CC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDFEvent.NDFEventType.NDFEventPayloadNetworkMisconfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFEvent.NDFEventType.NDFEventPayloadNetworkMisconfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFEvent.NDFEventContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}