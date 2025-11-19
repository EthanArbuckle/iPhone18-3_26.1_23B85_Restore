uint64_t sub_2662FF5D8(void *a1, uint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  v194 = a1;
  v13 = sub_2664DFE68();
  v14 = *(v13 - 8);
  v221 = v13;
  v222 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v220 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v219 = (&v181 - v18);
  v208 = sub_2664DFF28();
  v203 = *(v208 - 8);
  v19 = *(v203 + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_2664DFE88();
  v209 = *(v210 - 8);
  v21 = *(v209 + 64);
  v22 = MEMORY[0x28223BE20](v210);
  v206 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v215 = &v181 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v204 = &v181 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v202 = &v181 - v29;
  MEMORY[0x28223BE20](v28);
  v216 = &v181 - v30;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v31 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v33 = (&v181 - v32);
  v217 = sub_2664DFF38();
  v213 = *(v217 - 8);
  v34 = *(v213 + 64);
  v35 = MEMORY[0x28223BE20](v217);
  v205 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v212 = &v181 - v37;
  v199 = sub_2664DFE38();
  v200 = *(v199 - 8);
  v38 = *(v200 + 64);
  v39 = MEMORY[0x28223BE20](v199);
  v198 = (&v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v186 = &v181 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v182 = &v181 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v201 = &v181 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v211 = &v181 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v214 = &v181 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v181 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v181 - v54;
  v56 = swift_allocObject();
  *(v56 + 16) = a6;
  *(v56 + 24) = a7;
  v57 = swift_allocObject();
  v192 = a2;
  v57[2] = a2;
  v57[3] = a3;
  v57[4] = sub_2663095C8;
  v57[5] = v56;
  v193 = a4;
  v57[6] = a4;
  v57[7] = a5;
  v196 = v57;
  v58 = sub_2664DF148();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();

  swift_retain_n();
  v195 = v56;

  sub_2664DF138();
  v61 = MEMORY[0x266782230]();

  v197 = v61;
  if (!v61)
  {
    v88 = a6;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v89 = v199;
    v90 = __swift_project_value_buffer(v199, qword_280F914F0);
    swift_beginAccess();
    (*(v200 + 16))(v53, v90, v89);
    v91 = sub_2664DFE18();
    v92 = sub_2664E06D8();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v193;
    if (v93)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_26629C000, v91, v92, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v95, 2u);
      MEMORY[0x266784AD0](v95, -1, -1);
    }

    (*(v200 + 8))(v53, v199);

    sub_2662FE7F4(MEMORY[0x277D84F90], v192, a3, v94, a5, v88, a7);
  }

  v184 = a5;
  v185 = a6;
  v187 = a3;
  v188 = a7;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v62 = v199;
    v63 = __swift_project_value_buffer(v199, qword_280F914F0);
    swift_beginAccess();
    v64 = *(v200 + 16);
    v191 = v63;
    v190 = v200 + 16;
    v189 = v64;
    v64(v55, v63, v62);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06C8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v67, 2u);
      v62 = v199;
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v68 = *(v200 + 8);
    v200 += 8;
    v68(v55, v62);
    v224 = MEMORY[0x277D84F90];
    v69 = v194[4];
    __swift_project_boxed_opaque_existential_1(v194, v194[3]);
    v70 = sub_2664DFEA8();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v73 = v193;
      v223 = *v33;
      v74 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v75 = v214;
      v189(v214, v191, v62);
      v76 = v74;
      v77 = sub_2664DFE18();
      v78 = sub_2664E06D8();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v188;
      v81 = v187;
      if (v79)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v183 = v68;
        v84 = v83;
        v223 = v83;
        *v82 = 136315138;
        swift_getErrorValue();
        v85 = sub_2664E0DE8();
        v87 = sub_2662A320C(v85, v86, &v223);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_26629C000, v77, v78, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        MEMORY[0x266784AD0](v84, -1, -1);
        MEMORY[0x266784AD0](v82, -1, -1);

        v183(v214, v199);
      }

      else
      {

        v68(v75, v62);
      }

      v119 = v192;

      sub_2662FE7F4(MEMORY[0x277D84F90], v119, v81, v73, v184, v185, v80);

      v120 = &v224;
      goto LABEL_54;
    }

    v183 = v68;
    v97 = v212;
    v96 = v213;
    v98 = v217;
    (*(v213 + 32))(v212, v33, v217);
    v99 = v205;
    (*(v96 + 16))(v205, v97, v98);
    v100 = (*(v96 + 88))(v99, v98);
    if (v100 == *MEMORY[0x277D5FEC0])
    {
      (*(v96 + 96))(v99, v98);
      v101 = v209;
      v102 = *(v209 + 32);
      v103 = v216;
      v104 = v210;
      v218 = v209 + 32;
      v214 = v102;
      (v102)(v216, v99, v210);
      v105 = v199;
      v189(v211, v191, v199);
      v106 = v202;
      v205 = *(v101 + 16);
      (v205)(v202, v103, v104);
      v107 = sub_2664DFE18();
      v108 = sub_2664E06C8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v223 = v110;
        *v109 = 136315138;
        sub_2663029EC();
        LODWORD(v201) = v108;
        v111 = sub_2664E0D48();
        v113 = v112;
        v114 = *(v101 + 8);
        v114(v106, v104);
        v115 = sub_2662A320C(v111, v113, &v223);
        v97 = v212;

        *(v109 + 4) = v115;
        _os_log_impl(&dword_26629C000, v107, v201, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        v116 = v110;
        v96 = v213;
        MEMORY[0x266784AD0](v116, -1, -1);
        MEMORY[0x266784AD0](v109, -1, -1);

        v117 = v211;
        v118 = v199;
      }

      else
      {

        v114 = *(v101 + 8);
        v114(v106, v104);
        v117 = v211;
        v118 = v105;
      }

      v183(v117, v118);
      v137 = v104;
      v138 = v204;
      (v205)(v204, v216, v137);
      v139 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v141 = *(v139 + 2);
      v140 = *(v139 + 3);
      v142 = v217;
      if (v141 >= v140 >> 1)
      {
        v139 = sub_266384A74(v140 > 1, v141 + 1, 1, v139);
      }

      v143 = v210;
      v114(v216, v210);
      (*(v96 + 8))(v97, v142);
      *(v139 + 2) = v141 + 1;
      (v214)(&v139[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v141], v138, v143);
      v224 = v139;
    }

    else
    {
      v121 = v199;
      v122 = v210;
      v101 = v209;
      if (v100 == *MEMORY[0x277D5FED0])
      {
        (*(v96 + 96))(v99, v98);
        v123 = *v99;
        v124 = v201;
        v189(v201, v191, v121);

        v125 = sub_2664DFE18();
        v126 = sub_2664E06C8();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = v123;
          v128 = v124;
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v223 = v130;
          *v129 = 136315138;
          v131 = MEMORY[0x2667834D0](v127, v122);
          v133 = sub_2662A320C(v131, v132, &v223);
          v97 = v212;

          *(v129 + 4) = v133;
          _os_log_impl(&dword_26629C000, v125, v126, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          v134 = v130;
          v96 = v213;
          MEMORY[0x266784AD0](v134, -1, -1);
          MEMORY[0x266784AD0](v129, -1, -1);

          v135 = v128;
          v123 = v127;
          v136 = v199;
        }

        else
        {

          v135 = v124;
          v136 = v121;
        }

        v183(v135, v136);
        sub_2662FA148(v123, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_36:
        (*(v96 + 8))(v97, v98);
        goto LABEL_37;
      }

      if (v100 != *MEMORY[0x277D5FEC8] && v100 != *MEMORY[0x277D5FED8] && v100 == *MEMORY[0x277D5FEE0])
      {
        v144 = v182;
        v189(v182, v191, v199);
        v145 = sub_2664DFE18();
        v146 = sub_2664E06C8();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&dword_26629C000, v145, v146, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v147, 2u);
          MEMORY[0x266784AD0](v147, -1, -1);
        }

        v183(v144, v121);
        goto LABEL_36;
      }

      v148 = *(v96 + 8);
      v148(v99, v98);
      v149 = v198;
      v189(v198, v191, v121);
      v150 = sub_2664DFE18();
      v151 = sub_2664E06D8();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        *v152 = 0;
        _os_log_impl(&dword_26629C000, v150, v151, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v152, 2u);
        MEMORY[0x266784AD0](v152, -1, -1);
      }

      v183(v149, v121);
      v148(v97, v98);
    }

LABEL_37:
    v153 = v224;
    v205 = *(v224 + 2);
    if (!v205)
    {
      break;
    }

    v154 = 0;
    v204 = (v101 + 16);
    v203 += 8;
    v218 = v222 + 16;
    LODWORD(v217) = *MEMORY[0x277D5FE90];
    v155 = *MEMORY[0x277D5FDF0];
    v216 = (v222 + 104);
    v201 = (v101 + 32);
    v198 = (v101 + 8);
    v156 = MEMORY[0x277D84F90];
    v55 = v210;
    v202 = v224;
    v33 = v219;
    v157 = v221;
    while (v154 < *(v153 + 2))
    {
      v214 = v156;
      v212 = ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v211 = *(v101 + 72);
      (*(v101 + 16))(v215, &v212[v153 + v211 * v154], v55);
      v213 = v154 + 1;
      v55 = v207;
      sub_2664DFE78();
      v158 = sub_2664DFF08();
      (*v203)(v55, v208);
      v159 = 0;
      v160 = *(v158 + 16);
      do
      {
        if (v160 == v159)
        {
          v55 = v210;
          (*v198)(v215, v210);

          v156 = v214;
          goto LABEL_40;
        }

        if (v159 >= *(v158 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v161 = v222;
        (*(v222 + 16))(v33, v158 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v159++, v157);
        v162 = sub_2664DFEB8();
        v55 = v220;
        (*(*(v162 - 8) + 104))(v220, v217, v162);
        (*(v161 + 104))(v55, v155, v157);
        v163 = sub_2664DFE58();
        v164 = *(v161 + 8);
        v164(v55, v157);
        v164(v33, v157);
      }

      while ((v163 & 1) == 0);

      v165 = *v201;
      v55 = v210;
      (*v201)(v206, v215, v210);
      v156 = v214;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v223 = v156;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v156 + 16) + 1, 1);
        v156 = v223;
      }

      v167 = v212;
      v169 = *(v156 + 16);
      v168 = *(v156 + 24);
      if (v169 >= v168 >> 1)
      {
        sub_2662FD058(v168 > 1, v169 + 1, 1);
        v156 = v223;
      }

      *(v156 + 16) = v169 + 1;
      v165(&v167[v156 + v169 * v211], v206, v55);
LABEL_40:
      v154 = v213;
      v101 = v209;
      v153 = v202;
      if (v213 == v205)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v156 = MEMORY[0x277D84F90];
LABEL_52:

  if (*(v156 + 16))
  {
    v170 = v194[8];
    v171 = v194[9];
    __swift_project_boxed_opaque_existential_1(v194 + 5, v170);
    (*(v171 + 8))(v156, sub_2663095F4, v196, v170, v171);

    v120 = &v225;
LABEL_54:
    v172 = *(v120 - 32);
  }

  v174 = v199;
  v189(v186, v191, v199);
  v175 = sub_2664DFE18();
  v176 = sub_2664E06C8();
  v177 = os_log_type_enabled(v175, v176);
  v178 = v188;
  v179 = v187;
  if (v177)
  {
    v180 = swift_slowAlloc();
    *v180 = 0;
    _os_log_impl(&dword_26629C000, v175, v176, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v180, 2u);
    MEMORY[0x266784AD0](v180, -1, -1);
  }

  v183(v186, v174);

  sub_2662FE7F4(MEMORY[0x277D84F90], v192, v179, v193, v184, v185, v178);
}

uint64_t sub_266300E6C(uint64_t a1, void *a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v44 = a3;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v39 - v7;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = qword_280F914E8;
  v45 = a4;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v40 = v9[2];
  v40(v14, v16, v8);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v20 = v9[1];
  v20(v14, v8);
  v21 = sub_2664DFC28();
  if (v22)
  {
    v23 = sub_2664E0328();
    v25 = v24;
  }

  else
  {
    v23 = v21;
    v25 = 0;
  }

  v26 = sub_2664DFC38();
  if (!v27)
  {
    v28 = v26;
    v30 = 0;
    if (!v25)
    {
      goto LABEL_10;
    }

LABEL_14:
    v38 = v45;

    sub_2662FF5D8(v41, v23, v25, v28, v30, v44, v38);
  }

  v28 = sub_2664E0328();
  v30 = v29;

  if (v25 | v30)
  {
    goto LABEL_14;
  }

LABEL_10:
  v31 = v42;
  v40(v42, v16, v8);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_26629C000, v32, v33, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem there is no media item title to match with.", v34, 2u);
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v20(v31, v8);
  v35 = sub_2664DFC48();
  v36 = v43;
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  sub_2662FC988(v36, v44, v45, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
  sub_2662A9238(v36, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_26630128C(void *a1, uint64_t *a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v173 = a1;
  v13 = sub_2664DFE68();
  v14 = *(v13 - 8);
  v199 = v13;
  v200 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v198 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v197 = &v161 - v18;
  v187 = sub_2664DFF28();
  v181 = *(v187 - 8);
  v19 = *(v181 + 64);
  MEMORY[0x28223BE20](v187);
  v186 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_2664DFE88();
  v188 = *(v191 - 8);
  v21 = v188[8];
  v22 = MEMORY[0x28223BE20](v191);
  v185 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v193 = &v161 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v182 = &v161 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v180 = &v161 - v29;
  MEMORY[0x28223BE20](v28);
  v194 = &v161 - v30;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v31 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v33 = &v161 - v32;
  v34 = sub_2664DFF38();
  v189 = *(v34 - 8);
  v190 = v34;
  v35 = *(v189 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v183 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v196 = &v161 - v38;
  v176 = sub_2664DFE38();
  v178 = *(v176 - 8);
  v39 = v178[8];
  v40 = MEMORY[0x28223BE20](v176);
  v177 = (&v161 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v40);
  v165 = &v161 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v162 = &v161 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v179 = &v161 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v184 = &v161 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v192 = &v161 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v161 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v161 - v55;
  v57 = swift_allocObject();
  v171 = a2;
  v57[2] = a2;
  v57[3] = a3;
  v172 = a4;
  v57[4] = a4;
  v57[5] = a5;
  v58 = a6;
  v57[6] = a6;
  v57[7] = a7;
  v174 = v57;
  v59 = sub_2664DF148();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = a7;

  sub_2664DF138();
  v63 = MEMORY[0x266782230]();

  v175 = v63;
  if (v63)
  {
    if (qword_280F914E8 != -1)
    {
      goto LABEL_61;
    }

    while (1)
    {
      v163 = a3;
      v164 = a5;
      v166 = v58;
      v167 = v62;
      v64 = v176;
      v65 = __swift_project_value_buffer(v176, qword_280F914F0);
      swift_beginAccess();
      v66 = v178[2];
      v170 = v65;
      v169 = v178 + 2;
      v168 = v66;
      v66(v56, v65, v64);
      v67 = sub_2664DFE18();
      v68 = sub_2664E06C8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_26629C000, v67, v68, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v69, 2u);
        MEMORY[0x266784AD0](v69, -1, -1);
      }

      v70 = v178[1];
      ++v178;
      v70(v56, v64);
      v202 = MEMORY[0x277D84F90];
      v71 = v173[4];
      __swift_project_boxed_opaque_existential_1(v173, v173[3]);
      v72 = sub_2664DFEA8();
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v201 = *v33;
        v75 = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v76 = v192;
        v168(v192, v170, v64);
        v77 = v75;
        v78 = sub_2664DFE18();
        v79 = v64;
        v80 = sub_2664E06D8();

        v81 = os_log_type_enabled(v78, v80);
        v82 = v167;
        v83 = v166;
        v84 = v164;
        if (v81)
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v201 = v86;
          *v85 = 136315138;
          swift_getErrorValue();
          v87 = sub_2664E0DE8();
          v89 = v70;
          v90 = sub_2662A320C(v87, v88, &v201);

          *(v85 + 4) = v90;
          _os_log_impl(&dword_26629C000, v78, v80, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v86);
          v91 = v86;
          v83 = v166;
          MEMORY[0x266784AD0](v91, -1, -1);
          v92 = v85;
          v82 = v167;
          MEMORY[0x266784AD0](v92, -1, -1);

          v89(v192, v79);
        }

        else
        {

          v70(v76, v79);
        }

        sub_2662F687C(MEMORY[0x277D84F90], v171, v163, v172, v84, v83, v82);
      }

      v161 = v70;
      v99 = v189;
      v58 = v190;
      v100 = v196;
      (*(v189 + 32))(v196, v33, v190);
      v101 = v183;
      (*(v99 + 16))(v183, v100, v58);
      v102 = (*(v99 + 88))(v101, v58);
      if (v102 == *MEMORY[0x277D5FEC0])
      {
        (*(v99 + 96))(v101, v58);
        v62 = v188;
        v103 = v188[4];
        v104 = v194;
        v105 = v191;
        v195 = (v188 + 4);
        v192 = v103;
        (v103)(v194, v101, v191);
        v168(v184, v170, v64);
        v106 = v180;
        v183 = *(v62 + 16);
        (v183)(v180, v104, v105);
        v107 = sub_2664DFE18();
        v108 = sub_2664E06C8();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = v106;
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v201 = v111;
          *v110 = 136315138;
          sub_2663029EC();
          v112 = sub_2664E0D48();
          v114 = v113;
          v115 = v188[1];
          v115(v109, v105);
          v116 = sub_2662A320C(v112, v114, &v201);
          v58 = v190;
          v62 = v188;

          *(v110 + 4) = v116;
          _os_log_impl(&dword_26629C000, v107, v108, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v111);
          v117 = v111;
          v99 = v189;
          MEMORY[0x266784AD0](v117, -1, -1);
          MEMORY[0x266784AD0](v110, -1, -1);
        }

        else
        {

          v115 = *(v62 + 8);
          v115(v106, v105);
        }

        v161(v184, v176);
        v33 = v182;
        (v183)(v182, v194, v105);
        v127 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
        v129 = *(v127 + 2);
        v128 = *(v127 + 3);
        v56 = (v129 + 1);
        if (v129 >= v128 >> 1)
        {
          v127 = sub_266384A74(v128 > 1, v129 + 1, 1, v127);
        }

        v115(v194, v105);
        (*(v99 + 8))(v196, v58);
        *(v127 + 2) = v56;
        (v192)(&v127[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v129], v33, v105);
        v202 = v127;
      }

      else
      {
        v105 = v191;
        v62 = v188;
        if (v102 == *MEMORY[0x277D5FED0])
        {
          (*(v99 + 96))(v101, v58);
          v56 = *v101;
          v118 = v179;
          v168(v179, v170, v64);

          v119 = sub_2664DFE18();
          v33 = sub_2664E06C8();

          if (os_log_type_enabled(v119, v33))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v201 = v121;
            *v120 = 136315138;
            v122 = MEMORY[0x2667834D0](v56, v105);
            v124 = v56;
            v125 = sub_2662A320C(v122, v123, &v201);
            v99 = v189;

            *(v120 + 4) = v125;
            v56 = v124;
            _os_log_impl(&dword_26629C000, v119, v33, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v120, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v121);
            v126 = v121;
            v58 = v190;
            v62 = v188;
            MEMORY[0x266784AD0](v126, -1, -1);
            MEMORY[0x266784AD0](v120, -1, -1);
          }

          v161(v118, v64);
          sub_2662FA148(v56, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_32:
          (*(v99 + 8))(v196, v58);
          goto LABEL_36;
        }

        if (v102 != *MEMORY[0x277D5FEC8] && v102 != *MEMORY[0x277D5FED8] && v102 == *MEMORY[0x277D5FEE0])
        {
          v130 = v162;
          v168(v162, v170, v64);
          v131 = sub_2664DFE18();
          v56 = sub_2664E06C8();
          if (os_log_type_enabled(v131, v56))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_26629C000, v131, v56, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v33, 2u);
            MEMORY[0x266784AD0](v33, -1, -1);
          }

          v161(v130, v64);
          goto LABEL_32;
        }

        v132 = v64;
        v133 = *(v99 + 8);
        v133(v101, v58);
        v134 = v177;
        v168(v177, v170, v132);
        v135 = sub_2664DFE18();
        v56 = sub_2664E06D8();
        if (os_log_type_enabled(v135, v56))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_26629C000, v135, v56, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v33, 2u);
          MEMORY[0x266784AD0](v33, -1, -1);
        }

        v161(v134, v132);
        v133(v196, v58);
      }

LABEL_36:
      v136 = v202;
      v183 = *(v202 + 2);
      if (!v183)
      {
        v184 = MEMORY[0x277D84F90];
LABEL_51:

        v151 = v184;
        if (*(v184 + 2))
        {
          v152 = v173[8];
          v153 = v173[9];
          __swift_project_boxed_opaque_existential_1(v173 + 5, v152);
          (*(v153 + 8))(v151, sub_266309654, v174, v152, v153);
        }

        else
        {

          v154 = v165;
          v155 = v176;
          v168(v165, v170, v176);
          v156 = sub_2664DFE18();
          v157 = sub_2664E06C8();
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            *v158 = 0;
            _os_log_impl(&dword_26629C000, v156, v157, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v158, 2u);
            MEMORY[0x266784AD0](v158, -1, -1);
          }

          v161(v154, v155);
          sub_2662F687C(MEMORY[0x277D84F90], v171, v163, v172, v164, v166, v167);
        }

        v98 = &v203;
        goto LABEL_57;
      }

      v137 = 0;
      v182 = (v62 + 16);
      v181 += 8;
      v196 = (v200 + 16);
      LODWORD(v195) = *MEMORY[0x277D5FE90];
      v138 = *MEMORY[0x277D5FDF0];
      v194 = (v200 + 104);
      a3 = v200 + 8;
      v179 = (v62 + 32);
      v177 = (v62 + 8);
      v184 = MEMORY[0x277D84F90];
      v180 = v202;
      a5 = v199;
      while (v137 < *(v136 + 2))
      {
        v190 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v189 = *(v62 + 72);
        (*(v62 + 16))(v193, &v136[v190 + v189 * v137], v105);
        v192 = (v137 + 1);
        v139 = v186;
        sub_2664DFE78();
        v140 = sub_2664DFF08();
        (*v181)(v139, v187);
        v141 = 0;
        v142 = *(v140 + 16);
        do
        {
          if (v142 == v141)
          {
            v105 = v191;
            (*v177)(v193, v191);

            goto LABEL_39;
          }

          if (v141 >= *(v140 + 16))
          {
            __break(1u);
            goto LABEL_60;
          }

          v143 = v200;
          v33 = v197;
          (*(v200 + 16))(v197, v140 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v141++, a5);
          v144 = sub_2664DFEB8();
          v56 = v198;
          (*(*(v144 - 8) + 104))(v198, v195, v144);
          (*(v143 + 104))(v56, v138, a5);
          v58 = sub_2664DFE58();
          v62 = *(v143 + 8);
          (v62)(v56, a5);
          (v62)(v33, a5);
        }

        while ((v58 & 1) == 0);

        v145 = *v179;
        (*v179)(v185, v193, v191);
        v146 = v184;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v201 = v146;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD058(0, *(v146 + 16) + 1, 1);
          v146 = v201;
        }

        v33 = v189;
        v56 = v190;
        v149 = *(v146 + 16);
        v148 = *(v146 + 24);
        v58 = v149 + 1;
        if (v149 >= v148 >> 1)
        {
          sub_2662FD058(v148 > 1, v149 + 1, 1);
          v146 = v201;
        }

        *(v146 + 16) = v58;
        v184 = v146;
        v150 = &v56[v146 + v149 * v33];
        v105 = v191;
        v145(v150, v185, v191);
LABEL_39:
        v137 = v192;
        v62 = v188;
        v136 = v180;
        if (v192 == v183)
        {
          goto LABEL_51;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v93 = v176;
  v94 = __swift_project_value_buffer(v176, qword_280F914F0);
  swift_beginAccess();
  (v178[2])(v54, v94, v93);
  v95 = sub_2664DFE18();
  v96 = sub_2664E06D8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_26629C000, v95, v96, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v97, 2u);
    MEMORY[0x266784AD0](v97, -1, -1);
  }

  (v178[1])(v54, v176);
  sub_2662F687C(MEMORY[0x277D84F90], v171, a3, v172, a5, v58, a7);
  v98 = &v202;
LABEL_57:
  v159 = *(v98 - 32);
}

unint64_t sub_2663029EC()
{
  result = qword_280072868;
  if (!qword_280072868)
  {
    sub_2664DFE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072868);
  }

  return result;
}

uint64_t sub_266302A44(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v66 = a2;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_2664DFE38();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = sub_2664DFC48();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v57 - v23;
  if (*(a1 + 16))
  {
    v64 = v24;
    v65 = v7;
    v26 = *(v24 + 16);
    v26(&v57 - v23, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v15);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v28 = v68;
    (*(v68 + 16))(v12, v27, v8);
    v26(v22, v25, v15);
    v63 = v8;
    v29 = v26;
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    v32 = os_log_type_enabled(v30, v31);
    v62 = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v59 = v25;
      v34 = v15;
      v35 = v33;
      v60 = swift_slowAlloc();
      v69 = v60;
      *v35 = 136315138;
      v29(v19, v22, v34);
      v36 = sub_2664E0318();
      v61 = v12;
      v38 = v37;
      v39 = v64;
      v40 = *(v64 + 8);
      v57 = v36;
      v58 = v40;
      v40(v22, v34);
      v41 = sub_2662A320C(v57, v38, &v69);

      v42 = v35;
      v15 = v34;
      v25 = v59;
      *(v42 + 1) = v41;
      v43 = v31;
      v44 = v42;
      _os_log_impl(&dword_26629C000, v30, v43, "OnscreenEntityProvider#firstOnScreenMediaItem returning on-screen media item: %s).", v42, 0xCu);
      v45 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      v46 = v58;
      (*(v28 + 8))(v61, v63);
    }

    else
    {

      v39 = v64;
      v46 = *(v64 + 8);
      v46(v22, v15);
      (*(v28 + 8))(v12, v63);
    }

    v56 = v65;
    v62(v65, v25, v15);
    (*(v39 + 56))(v56, 0, 1, v15);
    sub_2662FC988(v56, v66, v67, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem for definite reference: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no onscreen mediaItem found.");
    sub_2662A9238(v56, &qword_280072858, &qword_2664E4E40);
    return (v46)(v25, v15);
  }

  else
  {
    v47 = v24;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v49 = v68;
    v50 = v8;
    (*(v68 + 16))(v14, v48, v8);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06C8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v51, v52, "OnscreenEntityProvider#firstOnScreenMediaItem media item not found.", v53, 2u);
      v54 = v53;
      v49 = v68;
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    (*(v49 + 8))(v14, v50);
    (*(v47 + 56))(v7, 1, 1, v15);
    sub_2662FC988(v7, v66, v67, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem for definite reference: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no onscreen mediaItem found.");
    return sub_2662A9238(v7, &qword_280072858, &qword_2664E4E40);
  }
}

uint64_t sub_266303070(void *a1, uint64_t a2, uint64_t a3)
{
  v165 = a1;
  v5 = sub_2664DFE68();
  v6 = *(v5 - 8);
  v190 = v5;
  v191 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v189 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v188 = &v156 - v10;
  v177 = sub_2664DFF28();
  v172 = *(v177 - 8);
  v11 = *(v172 + 64);
  MEMORY[0x28223BE20](v177);
  v176 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_2664DFE88();
  v178 = *(v179 - 8);
  v13 = v178[8];
  v14 = MEMORY[0x28223BE20](v179);
  v175 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v184 = &v156 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v174 = (&v156 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v173 = &v156 - v21;
  MEMORY[0x28223BE20](v20);
  v180 = &v156 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v156 - v25;
  v27 = sub_2664DFF38();
  v28 = *(v27 - 8);
  v185 = v27;
  v186 = v28;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v182 = (&v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v187 = &v156 - v32;
  v169 = sub_2664DFE38();
  v33 = *(v169 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v169);
  v170 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v158 = &v156 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v168 = (&v156 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v171 = (&v156 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v183 = &v156 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v181 = &v156 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v156 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v156 - v50;
  v52 = swift_allocObject();
  *(v52 + 16) = a2;
  *(v52 + 24) = a3;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_26630957C;
  *(v53 + 24) = v52;
  v54 = sub_2664DF148();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  swift_retain_n();
  v166 = v52;

  sub_2664DF138();
  v57 = MEMORY[0x266782230]();

  v167 = v57;
  if (!v57)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v81 = v169;
    v82 = __swift_project_value_buffer(v169, qword_280F914F0);
    swift_beginAccess();
    (*(v33 + 16))(v49, v82, v81);
    v83 = sub_2664DFE18();
    v84 = sub_2664E06D8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_26629C000, v83, v84, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v85, 2u);
      MEMORY[0x266784AD0](v85, -1, -1);
    }

    (*(v33 + 8))(v49, v169);

    sub_266302A44(MEMORY[0x277D84F90], a2, a3);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v159 = v53;
    v157 = a2;
    v58 = v169;
    v59 = __swift_project_value_buffer(v169, qword_280F914F0);
    swift_beginAccess();
    v60 = *(v33 + 16);
    v162 = v59;
    v161 = v33 + 16;
    v160 = v60;
    v60(v51, v59, v58);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06C8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v64 = *(v33 + 8);
    v164 = v33 + 8;
    v163 = v64;
    v64(v51, v58);
    v193 = MEMORY[0x277D84F90];
    v65 = v165[4];
    __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    v66 = sub_2664DFEA8();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();

    sub_2664DFE98();
    v69 = v58;
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v192 = *v26;
      v70 = v192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v71 = v181;
      v160(v181, v162, v58);
      v72 = v70;
      v73 = sub_2664DFE18();
      v74 = sub_2664E06D8();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v192 = v76;
        *v75 = 136315138;
        swift_getErrorValue();
        v77 = sub_2664E0DE8();
        v79 = sub_2662A320C(v77, v78, &v192);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_26629C000, v73, v74, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x266784AD0](v76, -1, -1);
        MEMORY[0x266784AD0](v75, -1, -1);
      }

      v163(v71, v69);
      v80 = v157;

      sub_266302A44(MEMORY[0x277D84F90], v80, a3);
    }

    v87 = v186;
    v86 = v187;
    v53 = v185;
    (*(v186 + 32))(v187, v26, v185);
    v88 = v182;
    (*(v87 + 16))(v182, v86, v53);
    v89 = (*(v87 + 88))(v88, v53);
    v90 = v89 == *MEMORY[0x277D5FEC0];
    v156 = a3;
    if (v90)
    {
      (*(v87 + 96))(v88, v53);
      a2 = v178;
      v91 = v180;
      v33 = v179;
      v181 = v178[4];
      v182 = v178 + 4;
      (v181)(v180, v88, v179);
      v92 = v169;
      v160(v183, v162, v169);
      v93 = v173;
      v171 = *(a2 + 16);
      v171(v173, v91, v33);
      v94 = sub_2664DFE18();
      v95 = sub_2664E06C8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v192 = v97;
        *v96 = 136315138;
        sub_2663029EC();
        v98 = sub_2664E0D48();
        v100 = v99;
        v173 = v178[1];
        (v173)(v93, v33);
        v101 = sub_2662A320C(v98, v100, &v192);
        a2 = v178;

        *(v96 + 4) = v101;
        _os_log_impl(&dword_26629C000, v94, v95, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v102 = v97;
        v53 = v185;
        MEMORY[0x266784AD0](v102, -1, -1);
        v103 = v96;
        v91 = v180;
        MEMORY[0x266784AD0](v103, -1, -1);

        v104 = v183;
        v105 = v169;
      }

      else
      {

        v173 = *(a2 + 8);
        (v173)(v93, v33);
        v104 = v183;
        v105 = v92;
      }

      v163(v104, v105);
      v26 = v174;
      v171(v174, v91, v33);
      v119 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v121 = *(v119 + 2);
      v120 = *(v119 + 3);
      v122 = v186;
      if (v121 >= v120 >> 1)
      {
        v119 = sub_266384A74(v120 > 1, v121 + 1, 1, v119);
      }

      v123 = v91;
      v124 = v179;
      (v173)(v123, v179);
      (*(v122 + 8))(v187, v53);
      *(v119 + 2) = v121 + 1;
      (v181)(&v119[((*(a2 + 80) + 32) & ~*(a2 + 80)) + *(a2 + 72) * v121], v26, v124);
      v193 = v119;
    }

    else
    {
      v106 = v169;
      v107 = v179;
      a2 = v178;
      if (v89 == *MEMORY[0x277D5FED0])
      {
        (*(v87 + 96))(v88, v53);
        v108 = *v88;
        v109 = v171;
        v160(v171, v162, v106);

        v110 = sub_2664DFE18();
        v111 = sub_2664E06C8();

        if (os_log_type_enabled(v110, v111))
        {
          v26 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v192 = v112;
          *v26 = 136315138;
          v113 = MEMORY[0x2667834D0](v108, v107);
          v115 = sub_2662A320C(v113, v114, &v192);
          v53 = v185;

          *(v26 + 4) = v115;
          _os_log_impl(&dword_26629C000, v110, v111, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v112);
          v116 = v112;
          a2 = v178;
          MEMORY[0x266784AD0](v116, -1, -1);
          MEMORY[0x266784AD0](v26, -1, -1);

          v117 = v109;
          v118 = v169;
        }

        else
        {

          v117 = v109;
          v118 = v106;
        }

        v163(v117, v118);
        sub_2662FA148(v108, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_36:
        v133 = *(v87 + 8);
        v33 = v87 + 8;
        v133(v187, v53);
        goto LABEL_37;
      }

      if (v89 != *MEMORY[0x277D5FEC8] && v89 != *MEMORY[0x277D5FED8] && v89 == *MEMORY[0x277D5FEE0])
      {
        v26 = v168;
        v160(v168, v162, v169);
        v125 = sub_2664DFE18();
        v126 = sub_2664E06C8();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&dword_26629C000, v125, v126, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v127, 2u);
          MEMORY[0x266784AD0](v127, -1, -1);
        }

        v163(v26, v106);
        goto LABEL_36;
      }

      v129 = *(v87 + 8);
      v33 = v87 + 8;
      v128 = v129;
      v129(v88, v53);
      v26 = v170;
      v160(v170, v162, v106);
      v130 = sub_2664DFE18();
      v131 = sub_2664E06D8();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_26629C000, v130, v131, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v132, 2u);
        MEMORY[0x266784AD0](v132, -1, -1);
      }

      v163(v26, v106);
      v128(v187, v53);
      a2 = v178;
    }

LABEL_37:
    v134 = v193;
    v174 = *(v193 + 2);
    if (!v174)
    {
      break;
    }

    v135 = 0;
    v173 = (a2 + 16);
    v172 += 8;
    v187 = (v191 + 16);
    LODWORD(v186) = *MEMORY[0x277D5FE90];
    v136 = *MEMORY[0x277D5FDF0];
    v185 = v191 + 104;
    a3 = v191 + 8;
    v170 = (a2 + 32);
    v168 = (a2 + 8);
    v137 = MEMORY[0x277D84F90];
    v51 = v179;
    v171 = v193;
    while (v135 < *(v134 + 2))
    {
      v183 = v137;
      v181 = ((*(a2 + 80) + 32) & ~*(a2 + 80));
      v180 = *(a2 + 72);
      (*(a2 + 16))(v184, &v181[v134 + v180 * v135], v51);
      v182 = (v135 + 1);
      v51 = v176;
      sub_2664DFE78();
      v138 = sub_2664DFF08();
      (*v172)(v51, v177);
      v33 = 0;
      v139 = *(v138 + 16);
      do
      {
        if (v139 == v33)
        {
          v51 = v179;
          (*v168)(v184, v179);

          v137 = v183;
          goto LABEL_40;
        }

        if (v33 >= *(v138 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v51 = v190;
        v140 = v191;
        v26 = v188;
        (*(v191 + 16))(v188, v138 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v33++, v190);
        v141 = sub_2664DFEB8();
        v53 = v189;
        (*(*(v141 - 8) + 104))(v189, v186, v141);
        (*(v140 + 104))(v53, v136, v51);
        a2 = sub_2664DFE58();
        v142 = *(v140 + 8);
        v142(v53, v51);
        v142(v26, v51);
      }

      while ((a2 & 1) == 0);

      v143 = *v170;
      v51 = v179;
      (*v170)(v175, v184, v179);
      v137 = v183;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = v137;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v137 + 16) + 1, 1);
        v137 = v192;
      }

      v33 = *(v137 + 16);
      v145 = *(v137 + 24);
      if (v33 >= v145 >> 1)
      {
        sub_2662FD058(v145 > 1, v33 + 1, 1);
        v137 = v192;
      }

      *(v137 + 16) = v33 + 1;
      v143(&v181[v137 + v33 * v180], v175, v51);
LABEL_40:
      v135 = v182;
      a2 = v178;
      v134 = v171;
      if (v182 == v174)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v137 = MEMORY[0x277D84F90];
LABEL_52:

  if (*(v137 + 16))
  {
    v146 = v165[8];
    v147 = v165[9];
    __swift_project_boxed_opaque_existential_1(v165 + 5, v146);
    (*(v147 + 8))(v137, sub_2663095A8, v159, v146, v147);
  }

  v149 = v158;
  v150 = v169;
  v160(v158, v162, v169);
  v151 = sub_2664DFE18();
  v152 = sub_2664E06C8();
  v153 = os_log_type_enabled(v151, v152);
  v154 = v156;
  if (v153)
  {
    v155 = swift_slowAlloc();
    *v155 = 0;
    _os_log_impl(&dword_26629C000, v151, v152, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v155, 2u);
    MEMORY[0x266784AD0](v155, -1, -1);
  }

  v163(v149, v150);

  sub_266302A44(MEMORY[0x277D84F90], v157, v154);
}

uint64_t sub_2663047E4(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v166 = a1;
  v5 = sub_2664DFE68();
  v6 = *(v5 - 8);
  v190 = v5;
  v191 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v189 = (&v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v188 = (&v156 - v10);
  v179 = sub_2664DFF28();
  v173 = *(v179 - 8);
  v11 = *(v173 + 64);
  MEMORY[0x28223BE20](v179);
  v178 = (&v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = sub_2664DFE88();
  v13 = *(v180 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v180);
  v177 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v184 = &v156 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v174 = &v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v186 = &v156 - v22;
  MEMORY[0x28223BE20](v21);
  v183 = &v156 - v23;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v24 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v26 = (&v156 - v25);
  v27 = sub_2664DFF38();
  v181 = *(v27 - 8);
  v182 = v27;
  v28 = *(v181 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v176 = (&v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v187 = &v156 - v31;
  v32 = sub_2664DFE38();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v169 = (&v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v160 = &v156 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v157 = &v156 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v170 = &v156 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v171 = &v156 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v175 = &v156 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v156 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v156 - v50;
  v52 = swift_allocObject();
  *(v52 + 16) = a2;
  *(v52 + 24) = a3;
  v167 = v52;
  v53 = sub_2664DF148();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  sub_2664DF138();
  v56 = MEMORY[0x266782230]();

  v168 = v56;
  if (v56)
  {
    if (qword_280F914E8 != -1)
    {
      goto LABEL_62;
    }

    while (1)
    {
      v158 = a2;
      v159 = a3;
      v57 = __swift_project_value_buffer(v32, qword_280F914F0);
      swift_beginAccess();
      v58 = *(v33 + 16);
      v163 = v57;
      v162 = (v33 + 16);
      v161 = v58;
      v58(v51, v57, v32);
      v59 = sub_2664DFE18();
      v60 = sub_2664E06C8();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v186;
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_26629C000, v59, v60, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v63, 2u);
        MEMORY[0x266784AD0](v63, -1, -1);
      }

      v64 = *(v33 + 8);
      v33 += 8;
      v165 = v33;
      v164 = v64;
      v64(v51, v32);
      v193 = MEMORY[0x277D84F90];
      v65 = v166[4];
      __swift_project_boxed_opaque_existential_1(v166, v166[3]);
      v66 = sub_2664DFEA8();
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v192 = *v26;
        v69 = v192;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v70 = v175;
        v161(v175, v163, v32);
        v71 = v69;
        v72 = v32;
        v73 = sub_2664DFE18();
        v74 = sub_2664E06D8();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v192 = v76;
          *v75 = 136315138;
          swift_getErrorValue();
          v77 = sub_2664E0DE8();
          v79 = sub_2662A320C(v77, v78, &v192);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_26629C000, v73, v74, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x266784AD0](v76, -1, -1);
          MEMORY[0x266784AD0](v75, -1, -1);
        }

        v164(v70, v72);
        sub_2662F8E50(MEMORY[0x277D84F90], v158, v159);
      }

      v87 = v181;
      a3 = v182;
      v88 = v187;
      (*(v181 + 32))(v187, v26, v182);
      v89 = v176;
      (*(v87 + 16))(v176, v88, a3);
      v90 = (*(v87 + 88))(v89, a3);
      v91 = v90 == *MEMORY[0x277D5FEC0];
      v156 = v32;
      if (!v91)
      {
        break;
      }

      (*(v87 + 96))(v89, a3);
      v92 = *(v13 + 32);
      v93 = v183;
      v26 = v180;
      v185 = v13 + 32;
      v176 = v92;
      (v92)(v183, v89, v180);
      v33 = v171;
      v161(v171, v163, v32);
      v175 = *(v13 + 16);
      (v175)(v62, v93, v26);
      v94 = sub_2664DFE18();
      v95 = sub_2664E06C8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v192 = v97;
        *v96 = 136315138;
        sub_2663029EC();
        v98 = sub_2664E0D48();
        v100 = v99;
        v101 = v62;
        v102 = *(v13 + 8);
        v102(v101, v180);
        v103 = sub_2662A320C(v98, v100, &v192);
        a3 = v182;

        *(v96 + 4) = v103;
        _os_log_impl(&dword_26629C000, v94, v95, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v104 = v97;
        v87 = v181;
        MEMORY[0x266784AD0](v104, -1, -1);
        v105 = v96;
        v26 = v180;
        MEMORY[0x266784AD0](v105, -1, -1);
      }

      else
      {

        v115 = v62;
        v102 = *(v13 + 8);
        v102(v115, v26);
      }

      v164(v33, v156);
      v116 = v174;
      (v175)(v174, v183, v26);
      v117 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v119 = *(v117 + 2);
      v118 = *(v117 + 3);
      if (v119 >= v118 >> 1)
      {
        v117 = sub_266384A74(v118 > 1, v119 + 1, 1, v117);
      }

      v102(v183, v26);
      v120 = *(v87 + 8);
      a2 = (v87 + 8);
      v120(v187, a3);
      *(v117 + 2) = v119 + 1;
      (v176)(&v117[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v119], v116, v26);
      v193 = v117;
LABEL_37:
      v132 = v193;
      v175 = *(v193 + 2);
      if (!v175)
      {
        v176 = MEMORY[0x277D84F90];
LABEL_52:

        v144 = v176;
        if (v176[2])
        {
          v145 = v166[8];
          v146 = v166[9];
          __swift_project_boxed_opaque_existential_1(v166 + 5, v145);
          (*(v146 + 8))(v144, sub_266309658, v167, v145, v146);
        }

        else
        {

          v147 = v160;
          v148 = v156;
          v161(v160, v163, v156);
          v149 = sub_2664DFE18();
          v150 = sub_2664E06C8();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = v148;
            v152 = swift_slowAlloc();
            *v152 = 0;
            _os_log_impl(&dword_26629C000, v149, v150, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v152, 2u);
            v153 = v152;
            v148 = v151;
            MEMORY[0x266784AD0](v153, -1, -1);
          }

          v164(v147, v148);
          sub_2662F8E50(MEMORY[0x277D84F90], v158, v159);
        }

        v86 = &v195;
        goto LABEL_58;
      }

      v133 = 0;
      v174 = (v13 + 16);
      v173 += 8;
      v187 = (v191 + 16);
      LODWORD(v186) = *MEMORY[0x277D5FE90];
      v51 = *MEMORY[0x277D5FDF0];
      v185 = v191 + 104;
      v32 = v191 + 8;
      v170 = (v13 + 32);
      v169 = (v13 + 8);
      v176 = MEMORY[0x277D84F90];
      v172 = v13;
      v171 = v193;
      while (v133 < *(v132 + 2))
      {
        v182 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v181 = *(v13 + 72);
        (*(v13 + 16))(v184, &v132[v182 + v181 * v133], v26);
        v183 = (v133 + 1);
        v26 = v178;
        sub_2664DFE78();
        v134 = sub_2664DFF08();
        (*v173)(v26, v179);
        v33 = 0;
        v13 = *(v134 + 16);
        do
        {
          if (v13 == v33)
          {
            v26 = v180;
            (*v169)(v184, v180);

            goto LABEL_40;
          }

          if (v33 >= *(v134 + 16))
          {
            __break(1u);
            goto LABEL_61;
          }

          v135 = v190;
          v136 = v191;
          v26 = v188;
          (*(v191 + 16))(v188, v134 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v33++, v190);
          v137 = sub_2664DFEB8();
          a2 = v189;
          (*(*(v137 - 8) + 104))(v189, v186, v137);
          (*(v136 + 104))(a2, v51, v135);
          a3 = sub_2664DFE58();
          v138 = *(v136 + 8);
          v138(a2, v135);
          v138(v26, v135);
        }

        while ((a3 & 1) == 0);

        v33 = *v170;
        v26 = v180;
        (*v170)(v177, v184, v180);
        v139 = v176;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192 = v139;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD058(0, *(v139 + 16) + 1, 1);
          v139 = v192;
        }

        v141 = v182;
        v143 = *(v139 + 16);
        v142 = *(v139 + 24);
        a3 = v143 + 1;
        if (v143 >= v142 >> 1)
        {
          sub_2662FD058(v142 > 1, v143 + 1, 1);
          v139 = v192;
        }

        *(v139 + 16) = a3;
        v176 = v139;
        (v33)(v139 + v141 + v143 * v181, v177, v26);
LABEL_40:
        v133 = v183;
        v13 = v172;
        v132 = v171;
        if (v183 == v175)
        {
          goto LABEL_52;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      swift_once();
    }

    if (v90 == *MEMORY[0x277D5FED0])
    {
      (*(v87 + 96))(v89, a3);
      v106 = *v89;
      v33 = v170;
      v161(v170, v163, v32);

      v107 = sub_2664DFE18();
      v108 = sub_2664E06C8();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v192 = v110;
        *v109 = 136315138;
        v111 = MEMORY[0x2667834D0](v106, v180);
        v113 = sub_2662A320C(v111, v112, &v192);
        v87 = v181;

        *(v109 + 4) = v113;
        _os_log_impl(&dword_26629C000, v107, v108, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        v114 = v110;
        a3 = v182;
        MEMORY[0x266784AD0](v114, -1, -1);
        MEMORY[0x266784AD0](v109, -1, -1);
      }

      v164(v33, v32);
      sub_2662FA148(v106, sub_266384A74, MEMORY[0x277D5FE08]);
    }

    else
    {
      if (v90 == *MEMORY[0x277D5FEC8] || v90 == *MEMORY[0x277D5FED8] || v90 != *MEMORY[0x277D5FEE0])
      {
        v126 = v32;
        v128 = *(v87 + 8);
        a2 = (v87 + 8);
        v127 = v128;
        v128(v89, a3);
        v33 = v169;
        v161(v169, v163, v126);
        v129 = sub_2664DFE18();
        v130 = sub_2664E06D8();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_26629C000, v129, v130, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v131, 2u);
          MEMORY[0x266784AD0](v131, -1, -1);
        }

        v164(v33, v126);
        v127(v187, a3);
        goto LABEL_36;
      }

      v121 = v157;
      v161(v157, v163, v32);
      v122 = sub_2664DFE18();
      v123 = sub_2664E06C8();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_26629C000, v122, v123, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v124, 2u);
        MEMORY[0x266784AD0](v124, -1, -1);
      }

      v164(v121, v32);
    }

    v125 = *(v87 + 8);
    a2 = (v87 + 8);
    v125(v187, a3);
LABEL_36:
    v26 = v180;
    goto LABEL_37;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v80 = __swift_project_value_buffer(v32, qword_280F914F0);
  swift_beginAccess();
  (*(v33 + 16))(v49, v80, v32);
  v81 = sub_2664DFE18();
  v82 = sub_2664E06D8();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = v32;
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_26629C000, v81, v82, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v84, 2u);
    v85 = v84;
    v32 = v83;
    MEMORY[0x266784AD0](v85, -1, -1);
  }

  (*(v33 + 8))(v49, v32);
  sub_2662F8E50(MEMORY[0x277D84F90], a2, a3);
  v86 = &v194;
LABEL_58:
  v154 = *(v86 - 32);
}

uint64_t sub_266305E30(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t (*a4)(void *), uint64_t a5)
{
  v71 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v60[-v11];
  v12 = sub_2664DFE38();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v69 = &v60[-v17];
  v18 = sub_2664DFC48();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60[-v24];
  result = MEMORY[0x28223BE20](v23);
  v29 = &v60[-v27];
  v30 = *(a1 + 16);
  v31 = a2;
  if (a2 < 0)
  {
    v31 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
      return result;
    }
  }

  if (v31 < v30)
  {
    if (a2 < 0 || v30 <= a2)
    {
      __break(1u);
    }

    else
    {
      v67 = a3;
      v68 = a4;
      v66 = v28;
      a3 = *(v28 + 16);
      a3(&v60[-v27], a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * a2, v18);
      if (qword_280F914E8 == -1)
      {
LABEL_7:
        v32 = v12;
        v33 = __swift_project_value_buffer(v12, qword_280F914F0);
        swift_beginAccess();
        v34 = v72;
        v35 = *(v72 + 16);
        v36 = v69;
        v65 = v32;
        v35(v69, v33, v32);
        a3(v25, v29, v18);
        v37 = a3;
        v38 = sub_2664DFE18();
        v39 = sub_2664E06C8();
        v40 = os_log_type_enabled(v38, v39);
        v64 = v37;
        if (v40)
        {
          v41 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v73 = v63;
          *v41 = 136315138;
          v37(v22, v25, v18);
          v42 = sub_2664E0318();
          v44 = v43;
          v45 = v66;
          v62 = v29;
          v46 = *(v66 + 8);
          v61 = v39;
          v46(v25, v18);
          v47 = sub_2662A320C(v42, v44, &v73);

          *(v41 + 4) = v47;
          _os_log_impl(&dword_26629C000, v38, v61, "OnscreenEntityProvider#onScreenMediaItemAtIndex returning on-screen media item: %s).", v41, 0xCu);
          v48 = v63;
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x266784AD0](v48, -1, -1);
          MEMORY[0x266784AD0](v41, -1, -1);

          v49 = v46;
          v29 = v62;
          (*(v72 + 8))(v69, v65);
        }

        else
        {

          v45 = v66;
          v49 = *(v66 + 8);
          v49(v25, v18);
          (*(v34 + 8))(v36, v65);
        }

        v59 = v70;
        v64(v70, v29, v18);
        (*(v45 + 56))(v59, 0, 1, v18);
        sub_2662FC3F4(v59, v67, v68, v71);
        sub_2662A9238(v59, &qword_280072858, &qword_2664E4E40);
        return (v49)(v29, v18);
      }
    }

    swift_once();
    goto LABEL_7;
  }

  v50 = v28;
  v51 = a3;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v52 = v12;
  v53 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v54 = v72;
  (*(v72 + 16))(v16, v53, v52);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06C8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_26629C000, v55, v56, "OnscreenEntityProvider#onScreenMediaItemAtIndex index seems to be out of bound.", v57, 2u);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  (*(v54 + 8))(v16, v52);
  v58 = v70;
  (*(v50 + 56))(v70, 1, 1, v18);
  sub_2662FC3F4(v58, v51, a4, v71);
  return sub_2662A9238(v58, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_2663064A4(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v178 = a1;
  v9 = sub_2664DFE68();
  v10 = *(v9 - 8);
  v204 = v9;
  v205 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v203 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v202 = &v166 - v14;
  v191 = sub_2664DFF28();
  v186 = *(v191 - 8);
  v15 = *(v186 + 64);
  MEMORY[0x28223BE20](v191);
  v190 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_2664DFE88();
  v192 = *(v193 - 8);
  v17 = *(v192 + 64);
  v18 = MEMORY[0x28223BE20](v193);
  v189 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v198 = &v166 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v187 = &v166 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v185 = &v166 - v25;
  MEMORY[0x28223BE20](v24);
  v199 = &v166 - v26;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v27 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v29 = &v166 - v28;
  v30 = sub_2664DFF38();
  v195 = *(v30 - 8);
  v196 = v30;
  v31 = *(v195 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v188 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v201 = &v166 - v34;
  v182 = sub_2664DFE38();
  v183 = *(v182 - 8);
  v35 = *(v183 + 64);
  v36 = MEMORY[0x28223BE20](v182);
  v181 = (&v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v36);
  v171 = &v166 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v168 = &v166 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v184 = &v166 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v194 = &v166 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v166 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v166 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v166 - v51;
  v53 = swift_allocObject();
  v177 = a3;
  v53[2] = a3;
  v53[3] = a4;
  v54 = a4;
  v53[4] = a5;
  v55 = swift_allocObject();
  v56 = a2;
  *(v55 + 16) = a2;
  v57 = a5;
  *(v55 + 24) = sub_2663095B0;
  *(v55 + 32) = v53;
  v58 = sub_2664DF148();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  swift_retain_n();
  v179 = v53;

  sub_2664DF138();
  v61 = MEMORY[0x266782230]();

  v180 = v61;
  if (!v61)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v88 = v182;
    v89 = __swift_project_value_buffer(v182, qword_280F914F0);
    swift_beginAccess();
    (*(v183 + 16))(v50, v89, v88);
    v90 = sub_2664DFE18();
    v91 = sub_2664E06D8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_26629C000, v90, v91, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v92, 2u);
      MEMORY[0x266784AD0](v92, -1, -1);
    }

    (*(v183 + 8))(v50, v182);

    sub_266305E30(MEMORY[0x277D84F90], v56, v177, v54, a5);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v172 = v55;
    v169 = v56;
    v170 = v54;
    v62 = v182;
    v63 = __swift_project_value_buffer(v182, qword_280F914F0);
    swift_beginAccess();
    v64 = *(v183 + 16);
    v175 = v63;
    v174 = v183 + 16;
    v173 = v64;
    v64(v52, v63, v62);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06C8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v68 = *(v183 + 8);
    v183 += 8;
    v176 = v68;
    v68(v52, v62);
    v207 = MEMORY[0x277D84F90];
    v69 = v178[4];
    __swift_project_boxed_opaque_existential_1(v178, v178[3]);
    v70 = sub_2664DFEA8();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v54 = v192;
    if (EnumCaseMultiPayload == 1)
    {
      v206 = *v29;
      v74 = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v75 = v197;
      v173(v197, v175, v62);
      v76 = v74;
      v77 = sub_2664DFE18();
      v78 = sub_2664E06D8();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v170;
      v81 = v177;
      if (v79)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v206 = v83;
        *v82 = 136315138;
        swift_getErrorValue();
        v84 = sub_2664E0DE8();
        v86 = sub_2662A320C(v84, v85, &v206);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_26629C000, v77, v78, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x266784AD0](v83, -1, -1);
        MEMORY[0x266784AD0](v82, -1, -1);

        v87 = v197;
      }

      else
      {

        v87 = v75;
      }

      v176(v87, v182);

      sub_266305E30(MEMORY[0x277D84F90], v169, v81, v80, v57);

      v115 = &v204;
      goto LABEL_55;
    }

    v93 = v195;
    v56 = v196;
    v94 = v201;
    (*(v195 + 32))(v201, v29, v196);
    v95 = v188;
    (*(v93 + 16))(v188, v94, v56);
    v96 = (*(v93 + 88))(v95, v56);
    v97 = v96 == *MEMORY[0x277D5FEC0];
    v167 = v57;
    if (v97)
    {
      (*(v93 + 96))(v95, v56);
      v98 = *(v54 + 32);
      v99 = v199;
      v100 = v193;
      v200 = v54 + 32;
      v197 = v98;
      (v98)(v199, v95, v193);
      v101 = v182;
      v173(v194, v175, v182);
      v102 = v185;
      v188 = *(v54 + 16);
      (v188)(v185, v99, v100);
      v103 = sub_2664DFE18();
      v104 = sub_2664E06C8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = v102;
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v206 = v107;
        *v106 = 136315138;
        sub_2663029EC();
        LODWORD(v184) = v104;
        v108 = sub_2664E0D48();
        v110 = v109;
        v29 = *(v54 + 8);
        (v29)(v105, v100);
        v111 = sub_2662A320C(v108, v110, &v206);
        v56 = v196;

        *(v106 + 4) = v111;
        _os_log_impl(&dword_26629C000, v103, v184, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        v112 = v107;
        v93 = v195;
        MEMORY[0x266784AD0](v112, -1, -1);
        MEMORY[0x266784AD0](v106, -1, -1);

        v113 = v194;
        v114 = v182;
      }

      else
      {

        v29 = *(v54 + 8);
        (v29)(v102, v100);
        v113 = v194;
        v114 = v101;
      }

      v176(v113, v114);
      v129 = v187;
      (v188)(v187, v199, v100);
      v130 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v132 = *(v130 + 2);
      v131 = *(v130 + 3);
      if (v132 >= v131 >> 1)
      {
        v130 = sub_266384A74(v131 > 1, v132 + 1, 1, v130);
      }

      v133 = v193;
      (v29)(v199, v193);
      (*(v93 + 8))(v201, v56);
      *(v130 + 2) = v132 + 1;
      (v197)(&v130[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v132], v129, v133);
      v207 = v130;
    }

    else
    {
      v116 = v182;
      v117 = v193;
      if (v96 == *MEMORY[0x277D5FED0])
      {
        (*(v93 + 96))(v95, v56);
        v118 = *v95;
        v119 = v184;
        v173(v184, v175, v116);

        v120 = sub_2664DFE18();
        v121 = sub_2664E06C8();

        if (os_log_type_enabled(v120, v121))
        {
          v29 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v206 = v122;
          *v29 = 136315138;
          v123 = MEMORY[0x2667834D0](v118, v117);
          v125 = sub_2662A320C(v123, v124, &v206);
          v93 = v195;

          *(v29 + 4) = v125;
          _os_log_impl(&dword_26629C000, v120, v121, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v122);
          v126 = v122;
          v56 = v196;
          MEMORY[0x266784AD0](v126, -1, -1);
          MEMORY[0x266784AD0](v29, -1, -1);

          v127 = v119;
          v128 = v182;
        }

        else
        {

          v127 = v119;
          v128 = v116;
        }

        v176(v127, v128);
        sub_2662FA148(v118, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_37:
        (*(v93 + 8))(v201, v56);
        goto LABEL_38;
      }

      if (v96 != *MEMORY[0x277D5FEC8] && v96 != *MEMORY[0x277D5FED8] && v96 == *MEMORY[0x277D5FEE0])
      {
        v134 = v168;
        v173(v168, v175, v182);
        v135 = sub_2664DFE18();
        v136 = sub_2664E06C8();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_26629C000, v135, v136, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v137, 2u);
          MEMORY[0x266784AD0](v137, -1, -1);
        }

        v176(v134, v116);
        goto LABEL_37;
      }

      v29 = *(v93 + 8);
      (v29)(v95, v56);
      v138 = v181;
      v173(v181, v175, v116);
      v139 = sub_2664DFE18();
      v140 = sub_2664E06D8();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_26629C000, v139, v140, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v141, 2u);
        MEMORY[0x266784AD0](v141, -1, -1);
      }

      v176(v138, v116);
      (v29)(v201, v56);
    }

LABEL_38:
    v142 = v207;
    v188 = *(v207 + 2);
    if (!v188)
    {
      break;
    }

    v143 = 0;
    v187 = (v54 + 16);
    v186 += 8;
    v201 = (v205 + 16);
    LODWORD(v200) = *MEMORY[0x277D5FE90];
    v55 = *MEMORY[0x277D5FDF0];
    v199 = (v205 + 104);
    v57 = v205 + 8;
    v184 = (v54 + 32);
    v181 = (v54 + 8);
    v144 = MEMORY[0x277D84F90];
    v52 = v193;
    v185 = v207;
    while (v143 < *(v142 + 2))
    {
      v197 = v144;
      v195 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v194 = *(v54 + 72);
      (*(v54 + 16))(v198, &v142[v195 + v194 * v143], v52);
      v196 = v143 + 1;
      v52 = v190;
      sub_2664DFE78();
      v145 = sub_2664DFF08();
      (*v186)(v52, v191);
      v146 = 0;
      v54 = *(v145 + 16);
      do
      {
        if (v54 == v146)
        {
          v52 = v193;
          (*v181)(v198, v193);

          v144 = v197;
          goto LABEL_41;
        }

        if (v146 >= *(v145 + 16))
        {
          __break(1u);
          goto LABEL_61;
        }

        v148 = v204;
        v147 = v205;
        v29 = v202;
        (*(v205 + 16))(v202, v145 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v146++, v204);
        v149 = sub_2664DFEB8();
        v52 = v203;
        (*(*(v149 - 8) + 104))(v203, v200, v149);
        (*(v147 + 104))(v52, v55, v148);
        v56 = sub_2664DFE58();
        v150 = *(v147 + 8);
        v150(v52, v148);
        v150(v29, v148);
      }

      while ((v56 & 1) == 0);

      v151 = *v184;
      v52 = v193;
      (*v184)(v189, v198, v193);
      v144 = v197;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v206 = v144;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v144 + 16) + 1, 1);
        v144 = v206;
      }

      v154 = *(v144 + 16);
      v153 = *(v144 + 24);
      v56 = v154 + 1;
      if (v154 >= v153 >> 1)
      {
        sub_2662FD058(v153 > 1, v154 + 1, 1);
        v144 = v206;
      }

      *(v144 + 16) = v56;
      v151(v144 + v195 + v154 * v194, v189, v52);
LABEL_41:
      v143 = v196;
      v54 = v192;
      v142 = v185;
      if (v196 == v188)
      {
        goto LABEL_53;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v144 = MEMORY[0x277D84F90];
LABEL_53:

  if (*(v144 + 16))
  {
    v155 = v178[8];
    v156 = v178[9];
    __swift_project_boxed_opaque_existential_1(v178 + 5, v155);
    (*(v156 + 8))(v144, sub_2663095BC, v172, v155, v156);

    v115 = &v208;
LABEL_55:
    v157 = *(v115 - 32);
  }

  v159 = v171;
  v160 = v182;
  v173(v171, v175, v182);
  v161 = sub_2664DFE18();
  v162 = sub_2664E06C8();
  v163 = os_log_type_enabled(v161, v162);
  v164 = v167;
  if (v163)
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_26629C000, v161, v162, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v165, 2u);
    MEMORY[0x266784AD0](v165, -1, -1);
  }

  v176(v159, v160);

  sub_266305E30(MEMORY[0x277D84F90], v169, v177, v170, v164);
}

uint64_t sub_266307C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = a1;
  v7 = sub_2664DFE68();
  v8 = *(v7 - 8);
  v185 = v7;
  v186 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v184 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v183 = (&v151 - v12);
  v172 = sub_2664DFF28();
  v167 = *(v172 - 8);
  v13 = *(v167 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_2664DFE88();
  v173 = *(v176 - 8);
  v15 = v173[8];
  v16 = MEMORY[0x28223BE20](v176);
  v170 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v179 = &v151 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v169 = &v151 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v168 = &v151 - v23;
  MEMORY[0x28223BE20](v22);
  v178 = (&v151 - v24);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  v25 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v27 = (&v151 - v26);
  v177 = sub_2664DFF38();
  v180 = *(v177 - 8);
  v28 = *(v180 + 64);
  v29 = MEMORY[0x28223BE20](v177);
  v174 = (&v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v182 = &v151 - v31;
  v163 = sub_2664DFE38();
  v32 = *(v163 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v163);
  v165 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v154 = &v151 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v164 = (&v151 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v166 = (&v151 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v175 = &v151 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v151 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v151 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v151 - v50;
  v52 = swift_allocObject();
  v52[2] = a2;
  v52[3] = a3;
  v161 = v52;
  v52[4] = a4;
  v53 = sub_2664DF148();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  sub_2664DF138();
  v56 = MEMORY[0x266782230]();

  v162 = v56;
  if (v56)
  {
    if (qword_280F914E8 != -1)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v151 = a2;
      v152 = a3;
      v153 = a4;
      v57 = v163;
      v58 = __swift_project_value_buffer(v163, qword_280F914F0);
      swift_beginAccess();
      v59 = *(v32 + 16);
      v157 = v58;
      v156 = (v32 + 16);
      v155 = v59;
      v59(v51, v58, v57);
      v60 = sub_2664DFE18();
      v61 = sub_2664E06C8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_26629C000, v60, v61, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v62, 2u);
        MEMORY[0x266784AD0](v62, -1, -1);
      }

      v63 = *(v32 + 8);
      v159 = (v32 + 8);
      v158 = v63;
      v63(v51, v57);
      v188 = MEMORY[0x277D84F90];
      v64 = v160[4];
      __swift_project_boxed_opaque_existential_1(v160, v160[3]);
      v65 = sub_2664DFEA8();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v187 = *v27;
        v68 = v187;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v155(v46, v157, v57);
        v69 = v68;
        v70 = sub_2664DFE18();
        v71 = v57;
        v72 = sub_2664E06D8();

        v73 = os_log_type_enabled(v70, v72);
        v74 = v153;
        if (v73)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v187 = v76;
          *v75 = 136315138;
          swift_getErrorValue();
          v77 = sub_2664E0DE8();
          v79 = sub_2662A320C(v77, v78, &v187);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_26629C000, v70, v72, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x266784AD0](v76, -1, -1);
          MEMORY[0x266784AD0](v75, -1, -1);
        }

        v158(v46, v71);
        sub_2662F9658(MEMORY[0x277D84F90], v151, v152, v74);
      }

      v86 = v180;
      v87 = v182;
      v88 = v177;
      (*(v180 + 32))(v182, v27, v177);
      v89 = v174;
      (*(v86 + 16))(v174, v87, v88);
      v90 = (*(v86 + 88))(v89, v88);
      if (v90 == *MEMORY[0x277D5FEC0])
      {
        (*(v86 + 96))(v89, v88);
        a3 = v173;
        v91 = v173 + 4;
        v92 = v178;
        v32 = v176;
        v174 = v173[4];
        (v174)(v178, v89, v176);
        v155(v175, v157, v57);
        v93 = v168;
        v166 = *(a3 + 16);
        v166(v168, v92, v32);
        v94 = sub_2664DFE18();
        v46 = sub_2664E06C8();
        v95 = os_log_type_enabled(v94, v46);
        v181 = v91;
        if (v95)
        {
          v96 = v93;
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v187 = v98;
          *v97 = 136315138;
          sub_2663029EC();
          v99 = sub_2664E0D48();
          v101 = v100;
          v102 = v173[1];
          v102(v96, v32);
          v103 = sub_2662A320C(v99, v101, &v187);
          a3 = v173;

          *(v97 + 4) = v103;
          _os_log_impl(&dword_26629C000, v94, v46, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v98);
          v104 = v98;
          v88 = v177;
          MEMORY[0x266784AD0](v104, -1, -1);
          MEMORY[0x266784AD0](v97, -1, -1);
        }

        else
        {

          v102 = *(a3 + 8);
          v102(v93, v32);
        }

        v158(v175, v163);
        v115 = v169;
        v166(v169, v178, v32);
        v116 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
        v118 = *(v116 + 2);
        v117 = *(v116 + 3);
        v119 = v180;
        if (v118 >= v117 >> 1)
        {
          v116 = sub_266384A74(v117 > 1, v118 + 1, 1, v116);
        }

        v102(v178, v32);
        (*(v119 + 8))(v182, v88);
        *(v116 + 2) = v118 + 1;
        (v174)(&v116[((*(a3 + 80) + 32) & ~*(a3 + 80)) + *(a3 + 72) * v118], v115, v32);
        v188 = v116;
      }

      else
      {
        v32 = v176;
        a3 = v173;
        if (v90 == *MEMORY[0x277D5FED0])
        {
          (*(v86 + 96))(v89, v88);
          v46 = *v89;
          v105 = v166;
          v155(v166, v157, v57);

          v106 = sub_2664DFE18();
          v107 = sub_2664E06C8();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v187 = v109;
            *v108 = 136315138;
            v110 = MEMORY[0x2667834D0](v46, v32);
            v112 = sub_2662A320C(v110, v111, &v187);
            v88 = v177;

            *(v108 + 4) = v112;
            _os_log_impl(&dword_26629C000, v106, v107, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v108, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v109);
            v113 = v109;
            a3 = v173;
            MEMORY[0x266784AD0](v113, -1, -1);
            v114 = v108;
            v86 = v180;
            MEMORY[0x266784AD0](v114, -1, -1);
          }

          v158(v105, v57);
          sub_2662FA148(v46, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_31:
          (*(v86 + 8))(v182, v88);
          goto LABEL_35;
        }

        if (v90 != *MEMORY[0x277D5FEC8] && v90 != *MEMORY[0x277D5FED8] && v90 == *MEMORY[0x277D5FEE0])
        {
          v120 = v164;
          v155(v164, v157, v57);
          v121 = sub_2664DFE18();
          v122 = sub_2664E06C8();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            *v123 = 0;
            _os_log_impl(&dword_26629C000, v121, v122, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v123, 2u);
            MEMORY[0x266784AD0](v123, -1, -1);
          }

          v158(v120, v57);
          goto LABEL_31;
        }

        v124 = v57;
        v125 = *(v86 + 8);
        v125(v89, v88);
        v46 = v165;
        v155(v165, v157, v124);
        v126 = sub_2664DFE18();
        v127 = sub_2664E06D8();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_26629C000, v126, v127, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v128, 2u);
          MEMORY[0x266784AD0](v128, -1, -1);
        }

        v158(v46, v124);
        v125(v182, v88);
      }

LABEL_35:
      v129 = v188;
      v169 = *(v188 + 2);
      if (!v169)
      {
        v27 = MEMORY[0x277D84F90];
LABEL_50:

        if (v27[2])
        {
          v142 = v160[8];
          v143 = v160[9];
          __swift_project_boxed_opaque_existential_1(v160 + 5, v142);
          (*(v143 + 8))(v27, sub_266309650, v161, v142, v143);
        }

        else
        {

          v144 = v154;
          v145 = v163;
          v155(v154, v157, v163);
          v146 = sub_2664DFE18();
          v147 = sub_2664E06C8();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            *v148 = 0;
            _os_log_impl(&dword_26629C000, v146, v147, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v148, 2u);
            MEMORY[0x266784AD0](v148, -1, -1);
          }

          v158(v144, v145);
          sub_2662F9658(MEMORY[0x277D84F90], v151, v152, v153);
        }

        v85 = &v190;
        goto LABEL_56;
      }

      v130 = 0;
      v168 = (a3 + 16);
      v167 += 8;
      v182 = (v186 + 16);
      LODWORD(v181) = *MEMORY[0x277D5FE90];
      v51 = *MEMORY[0x277D5FDF0];
      v180 = v186 + 104;
      a4 = v186 + 8;
      v165 = (a3 + 32);
      v164 = (a3 + 8);
      v27 = MEMORY[0x277D84F90];
      v166 = v188;
      a2 = v184;
      while (v130 < *(v129 + 2))
      {
        v178 = v27;
        v175 = ((*(a3 + 80) + 32) & ~*(a3 + 80));
        v174 = *(a3 + 72);
        (*(a3 + 16))(v179, &v175[v129 + v174 * v130], v32);
        v177 = v130 + 1;
        v131 = v171;
        sub_2664DFE78();
        v132 = sub_2664DFF08();
        (*v167)(v131, v172);
        v32 = 0;
        v133 = *(v132 + 16);
        do
        {
          if (v133 == v32)
          {
            v32 = v176;
            (*v164)(v179, v176);

            v27 = v178;
            goto LABEL_38;
          }

          if (v32 >= *(v132 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          v134 = v185;
          v135 = v186;
          v27 = v183;
          (*(v186 + 16))(v183, v132 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v32++, v185);
          v136 = sub_2664DFEB8();
          (*(*(v136 - 8) + 104))(a2, v181, v136);
          (*(v135 + 104))(a2, v51, v134);
          a3 = sub_2664DFE58();
          v46 = *(v135 + 8);
          (v46)(a2, v134);
          (v46)(v27, v134);
        }

        while ((a3 & 1) == 0);

        v137 = *v165;
        (*v165)(v170, v179, v176);
        v27 = v178;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v187 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD058(0, v27[2] + 1, 1);
          v27 = v187;
        }

        v140 = v27[2];
        v139 = v27[3];
        if (v140 >= v139 >> 1)
        {
          sub_2662FD058(v139 > 1, v140 + 1, 1);
          v27 = v187;
        }

        v27[2] = v140 + 1;
        v141 = &v175[v27 + v140 * v174];
        v32 = v176;
        v137(v141, v170, v176);
LABEL_38:
        v130 = v177;
        a3 = v173;
        v129 = v166;
        if (v177 == v169)
        {
          goto LABEL_50;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v80 = v163;
  v81 = __swift_project_value_buffer(v163, qword_280F914F0);
  swift_beginAccess();
  (*(v32 + 16))(v49, v81, v80);
  v82 = sub_2664DFE18();
  v83 = sub_2664E06D8();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_26629C000, v82, v83, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v84, 2u);
    MEMORY[0x266784AD0](v84, -1, -1);
  }

  (*(v32 + 8))(v49, v163);
  sub_2662F9658(MEMORY[0x277D84F90], a2, a3, a4);
  v85 = &v189;
LABEL_56:
  v149 = *(v85 - 32);
}

uint64_t sub_2663092DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_280F914E8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v12, v6);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "OnscreenEntityProvider#firstOnScreenMediaItem...", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_266303070(a1, a2, a3);
}

unint64_t sub_2663094CC()
{
  result = qword_2800728D0;
  if (!qword_2800728D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800728D0);
  }

  return result;
}

unint64_t sub_266309518()
{
  result = qword_2800728E0;
  if (!qword_2800728E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800728D8, &qword_2664E4F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800728E0);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t *AtomicValue.__allocating_init(name:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26630D9D0(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2663096A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2662A7224(a1, &v10 - v6, &qword_2800737D0, qword_2664E4FD0);
  v8 = *a2;
  return sub_2663097B4(v7);
}

uint64_t sub_26630974C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280F91D08;
  swift_beginAccess();
  return sub_2662A7224(v1 + v3, a1, &qword_2800737D0, qword_2664E4FD0);
}

uint64_t sub_2663097B4(uint64_t a1)
{
  v3 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_266309814@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2664E0948();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2663098C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2664E0948();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t *AtomicValue.init(name:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26630D7FC(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2663099A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a1;
  v64 = a2;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v54 - v7;
  v59 = *(v4 + 80);
  v8 = sub_2664E0948();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v54 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v58 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v65 = v12[2];
  v65(v20, v21, v11);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v55 = v12;
    v27 = v26;
    v68 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), &v68);
    _os_log_impl(&dword_26629C000, v22, v23, "AtomicValue#next [%{public}s]", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v28 = v27;
    v12 = v55;
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v66 = v12[1];
  v66(v20, v11);
  v29 = v3[2];
  sub_2662A98AC();
  v30 = v58;
  v65(v58, v21, v11);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v68 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), &v68);
    _os_log_impl(&dword_26629C000, v31, v32, "AtomicValue#next [%{public}s] lock acquired", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v66(v30, v11);
  v35 = v60;
  v36 = v61;
  *(v3 + 24) = 0;
  (*(*(v59 - 8) + 56))(v35, 1, 1);
  sub_2663098C0(v35);
  v65(v36, v21, v11);

  v37 = sub_2664DFE18();
  v38 = sub_2664E06E8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v68 = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), &v68);
    *(v39 + 12) = 2082;
    sub_266309814(v35);
    v41 = v57;
    (*(v56 + 8))(v35, v57);
    v67 = v41;
    swift_getMetatypeMetadata();
    v42 = sub_2664E0318();
    v44 = sub_2662A320C(v42, v43, &v68);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_26629C000, v37, v38, "AtomicValue#next [%{public}s] computing value for: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v66(v36, v11);
  v45 = v62;
  sub_2664DE428();
  v46 = sub_2664DE438();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  sub_2663097B4(v45);
  v47 = v3 + *(*v3 + 120);
  v49 = *v47;
  v48 = *(v47 + 1);
  v50 = swift_allocObject();
  v51 = v63;
  v52 = v64;
  v50[2] = v3;
  v50[3] = v51;
  v50[4] = v52;

  v49(sub_26630DA3C, v50);
}

uint64_t sub_26630A104(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v98 = a1;
  v99 = a2;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v89 - v7;
  v94 = *(v4 + 80);
  v8 = sub_2664E0948();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v96 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v11;
  MEMORY[0x28223BE20](v10);
  v97 = &v89 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v95 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v89 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v90 = &v89 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v89 - v26;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v103 = v14[2];
  v104 = v14 + 2;
  v103(v27, v28, v13);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();

  v31 = os_log_type_enabled(v29, v30);
  v102 = v28;
  if (v31)
  {
    v32 = v13;
    v33 = v14;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v106 = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v106);
    _os_log_impl(&dword_26629C000, v29, v30, "AtomicValue#getAndCompute [%{public}s]", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v36 = v35;
    v28 = v102;
    MEMORY[0x266784AD0](v36, -1, -1);
    v37 = v34;
    v14 = v33;
    v13 = v32;
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  v38 = v14[1];
  v38(v27, v13);
  v39 = *(v3 + 2);
  sub_2662A98AC();
  v103(v25, v28, v13);

  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v93 = v20;
    v44 = v38;
    v45 = v13;
    v46 = v14;
    v47 = v43;
    v106 = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v106);
    _os_log_impl(&dword_26629C000, v40, v41, "AtomicValue#getAndCompute [%{public}s] lock acquired", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v48 = v47;
    v14 = v46;
    v13 = v45;
    v38 = v44;
    v20 = v93;
    MEMORY[0x266784AD0](v48, -1, -1);
    v49 = v42;
    v28 = v102;
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  v38(v25, v13);
  if (v3[24] == 1)
  {
    sub_2662AA89C();
    v50 = v90;
    v103(v90, v28, v13);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v106 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v106);
      _os_log_impl(&dword_26629C000, v51, v52, "AtomicValue#getAndCompute [%{public}s] lock released", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v38(v50, v13);
    v103(v20, v102, v13);

    v66 = v20;
    v67 = sub_2664DFE18();
    v68 = sub_2664E06E8();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v102 = v38;
      v70 = v69;
      v71 = swift_slowAlloc();
      v106 = v71;
      *v70 = 136446466;
      *(v70 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v106);
      *(v70 + 12) = 2082;
      v72 = v97;
      v93 = v66;
      sub_266309814(v97);
      v73 = v101;
      (*(v100 + 8))(v72, v101);
      v105 = v73;
      swift_getMetatypeMetadata();
      v74 = sub_2664E0318();
      v76 = sub_2662A320C(v74, v75, &v106);

      *(v70 + 14) = v76;
      _os_log_impl(&dword_26629C000, v67, v68, "AtomicValue#getAndCompute [%{public}s] using pre-computed value: %{public}s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v71, -1, -1);
      MEMORY[0x266784AD0](v70, -1, -1);

      v102(v93, v13);
    }

    else
    {

      v38(v66, v13);
      v72 = v97;
    }

    sub_266309814(v72);
    v98(v72);
    v60 = v100;
    v87 = v101;
    v86 = v72;
  }

  else
  {
    v102 = v38;
    sub_266309814(v96);
    v55 = v95;
    v103(v95, v28, v13);

    v56 = sub_2664DFE18();
    v57 = sub_2664E06E8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = v14;
      v106 = v103;
      *v58 = 136446466;
      *(v58 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v106);
      *(v58 + 12) = 2082;
      v59 = v97;
      sub_266309814(v97);
      v60 = v100;
      v61 = v101;
      (*(v100 + 8))(v59, v101);
      v105 = v61;
      swift_getMetatypeMetadata();
      v62 = sub_2664E0318();
      v64 = sub_2662A320C(v62, v63, &v106);

      *(v58 + 14) = v64;
      _os_log_impl(&dword_26629C000, v56, v57, "AtomicValue#getAndCompute [%{public}s] computing value for: %{public}s", v58, 0x16u);
      v65 = v103;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      v102(v95, v13);
    }

    else
    {

      v102(v55, v13);
      v60 = v100;
      v61 = v101;
      v59 = v97;
    }

    v77 = v91;
    sub_2664DE428();
    v78 = sub_2664DE438();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    sub_2663097B4(v77);
    v79 = &v3[*(*v3 + 120)];
    v81 = *v79;
    v80 = *(v79 + 1);
    v82 = v96;
    (*(v60 + 16))(v59, v96, v61);
    v83 = (*(v60 + 80) + 48) & ~*(v60 + 80);
    v84 = swift_allocObject();
    *(v84 + 2) = v94;
    *(v84 + 3) = v3;
    v85 = v99;
    *(v84 + 4) = v98;
    *(v84 + 5) = v85;
    (*(v60 + 32))(&v84[v83], v59, v61);

    v81(sub_26630DA64, v84);

    v86 = v82;
    v87 = v61;
  }

  return (*(v60 + 8))(v86, v87);
}

uint64_t sub_26630AC90(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v9 = *a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v9 + 80);
  v16 = sub_2664E0948();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - v18;
  *(a2 + 24) = 1;
  (*(v20 + 16))(v34 - v18, a1, v16);
  sub_2663098C0(v19);
  v21 = a2[2];
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v22, v10);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34[1] = a4;
    v26 = a3;
    v27 = v25;
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), &v37);
    *(v27 + 12) = 2082;
    v36 = v16;
    swift_getMetatypeMetadata();
    v29 = sub_2664E0318();
    v31 = sub_2662A320C(v29, v30, &v37);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_26629C000, v23, v24, "AtomicValue#getAndCompute [%{public}s] lock released, received value: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v28, -1, -1);
    v32 = v27;
    a3 = v26;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  return a3(v35);
}

uint64_t sub_26630AFF8(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v115 = a4;
  v116 = a3;
  v120 = a2;
  v117 = a1;
  v6 = *(*v4 + 80);
  v7 = sub_2664E0948();
  v109 = *(v7 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v7);
  v114 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v108 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v103 - v14;
  v121 = sub_2664DE438();
  v15 = *(v121 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v121);
  v105 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v107 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v113 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v103 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v103 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v119 = &v103 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v103 - v31;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v122 = v19[2];
  v123 = v19 + 2;
  v122(v32, v33, v18);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  v36 = os_log_type_enabled(v34, v35);
  v118 = v15;
  v110 = v7;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v125 = v104;
    *v37 = 136446466;
    *(v37 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v125);
    *(v37 + 12) = 2082;
    v126 = v117;
    v127 = v120 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v38 = sub_2664E0318();
    v39 = v19;
    v41 = v18;
    v42 = sub_2662A320C(v38, v40, &v125);

    *(v37 + 14) = v42;
    v18 = v41;
    _os_log_impl(&dword_26629C000, v34, v35, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v37, 0x16u);
    v43 = v104;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    v44 = v39[1];
  }

  else
  {

    v44 = v19[1];
  }

  v44(v32, v18);
  v45 = v119;
  v104 = v5[2];
  sub_2662A98AC();
  v119 = v33;
  v122(v45, v33, v18);

  v46 = sub_2664DFE18();
  v47 = sub_2664E06E8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v45;
    v50 = v18;
    v51 = swift_slowAlloc();
    v126 = v51;
    *v48 = 136446210;
    *(v48 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v126);
    _os_log_impl(&dword_26629C000, v46, v47, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v52 = v51;
    v18 = v50;
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);

    v53 = v49;
    v54 = v50;
  }

  else
  {

    v53 = v45;
    v54 = v18;
  }

  v44(v53, v54);
  v55 = v118;
  v56 = v112;
  v57 = v111;
  if ((v120 & 1) == 0)
  {
    v58 = *&v117;
    v59 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(v5 + v59, v57, &qword_2800737D0, qword_2664E4FD0);
    v60 = *(v55 + 48);
    if (v60(v57, 1, v121) == 1)
    {
      v61 = v44;
      v62 = v105;
      sub_2664DE378();
      v63 = v60(v57, 1, v121);
      v64 = v62;
      v44 = v61;
      if (v63 != 1)
      {
        sub_2662A9238(v57, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v64 = v105;
      (*(v55 + 32))(v105, v57, v121);
    }

    sub_2664DE3C8();
    v66 = v65;
    (*(v55 + 8))(v64, v121);
    v67 = fabs(v66);
    if (v67 > v58)
    {
      v122(v56, v119, v18);

      v68 = sub_2664DFE18();
      v69 = sub_2664E06E8();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = v56;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v125 = v72;
        *v71 = 136446722;
        *(v71 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v125);
        *(v71 + 12) = 2050;
        *(v71 + 14) = v67;
        *(v71 + 22) = 2050;
        *(v71 + 24) = *&v117;
        _os_log_impl(&dword_26629C000, v68, v69, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v71, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v55 = v118;
        MEMORY[0x266784AD0](v72, -1, -1);
        MEMORY[0x266784AD0](v71, -1, -1);

        v73 = v70;
      }

      else
      {

        v73 = v56;
      }

      v44(v73, v18);
      *(v5 + 24) = 0;
    }
  }

  if (*(v5 + 24) == 1)
  {
    sub_266309814(v114);
    sub_2662AA89C();
    v74 = v106;
    v75 = v119;
    v122(v106, v119, v18);

    v76 = sub_2664DFE18();
    v77 = sub_2664E06E8();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v125 = v79;
      *v78 = 136446210;
      *(v78 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v125);
      _os_log_impl(&dword_26629C000, v76, v77, "AtomicValue#computeIfAbsent [%{public}s] lock released", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x266784AD0](v79, -1, -1);
      MEMORY[0x266784AD0](v78, -1, -1);
    }

    v44(v74, v18);
    v122(v113, v75, v18);

    v86 = sub_2664DFE18();
    v87 = sub_2664E06E8();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v125 = v89;
      *v88 = 136446466;
      *(v88 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v125);
      *(v88 + 12) = 2082;
      v90 = v110;
      v124 = v110;
      swift_getMetatypeMetadata();
      v91 = sub_2664E0318();
      v93 = sub_2662A320C(v91, v92, &v125);

      *(v88 + 14) = v93;
      _os_log_impl(&dword_26629C000, v86, v87, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v88, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v89, -1, -1);
      MEMORY[0x266784AD0](v88, -1, -1);

      v44(v113, v18);
    }

    else
    {

      v44(v113, v18);
      v90 = v110;
    }

    v102 = v114;
    v116(v114);
    return (*(v109 + 8))(v102, v90);
  }

  else
  {
    v80 = v44;
    v81 = v107;
    v122(v107, v119, v18);

    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v125 = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v125);
      _os_log_impl(&dword_26629C000, v82, v83, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x266784AD0](v85, -1, -1);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    v80(v81, v18);
    v94 = v108;
    sub_2664DE428();
    (*(v55 + 56))(v94, 0, 1, v121);
    sub_2663097B4(v94);
    v95 = v5 + *(*v5 + 120);
    v97 = *v95;
    v96 = *(v95 + 1);
    v98 = swift_allocObject();
    v100 = v115;
    v99 = v116;
    v98[2] = v5;
    v98[3] = v99;
    v98[4] = v100;

    v97(sub_26630DAE0, v98);
  }
}

uint64_t sub_26630BE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  *(a2 + 24) = 1;
  v13 = *(*a2 + 112);
  swift_beginAccess();
  v14 = *(a2 + v13);
  *(a2 + v13) = a1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v15 = *(a2 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v16, v8);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29[1] = a4;
    v22 = v21;
    v32 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), &v32);
    *(v20 + 12) = 2082;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072978, &qword_2664E5088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072980, &unk_2664E5090);
    v23 = sub_2664E0318();
    v25 = v24;
    swift_unknownObjectRelease();
    v26 = sub_2662A320C(v23, v25, &v32);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_26629C000, v17, v18, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v22, -1, -1);
    v27 = v20;
    a3 = v30;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v9 + 8))(v12, v8);
  return a3(&v33);
}

uint64_t sub_26630C160(__int128 *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[9];
  v12 = a1[7];
  v67 = a1[8];
  v68 = v11;
  v13 = a1[9];
  v14 = a1[11];
  v69 = a1[10];
  v70 = v14;
  v15 = a1[5];
  v16 = a1[3];
  v63 = a1[4];
  v64 = v15;
  v17 = a1[5];
  v18 = a1[7];
  v65 = a1[6];
  v66 = v18;
  v19 = a1[1];
  v59 = *a1;
  v60 = v19;
  v20 = a1[3];
  v22 = *a1;
  v21 = a1[1];
  v61 = a1[2];
  v23 = v61;
  v62 = v20;
  v79 = v67;
  v80 = v13;
  v24 = a1[11];
  v81 = v69;
  v82 = v24;
  v75 = v63;
  v76 = v17;
  v77 = v65;
  v78 = v12;
  v71 = v22;
  v72 = v21;
  *(a2 + 24) = 1;
  v73 = v23;
  v74 = v16;
  v25 = (a2 + *(*a2 + 112));
  swift_beginAccess();
  v26 = v25[9];
  v83[8] = v25[8];
  v83[9] = v26;
  v27 = v25[11];
  v83[10] = v25[10];
  v83[11] = v27;
  v28 = v25[5];
  v83[4] = v25[4];
  v83[5] = v28;
  v29 = v25[7];
  v83[6] = v25[6];
  v83[7] = v29;
  v30 = v25[1];
  v83[0] = *v25;
  v83[1] = v30;
  v31 = v25[3];
  v83[2] = v25[2];
  v83[3] = v31;
  v32 = v80;
  v25[8] = v79;
  v25[9] = v32;
  v33 = v82;
  v25[10] = v81;
  v25[11] = v33;
  v34 = v76;
  v25[4] = v75;
  v25[5] = v34;
  v35 = v78;
  v25[6] = v77;
  v25[7] = v35;
  v36 = v72;
  *v25 = v71;
  v25[1] = v36;
  v37 = v74;
  v25[2] = v73;
  v25[3] = v37;
  sub_2662A7224(&v71, v84, &qword_280073320, &unk_2664EF750);
  sub_2662A9238(v83, &qword_280073320, &unk_2664EF750);
  v38 = *(a2 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v39, v6);
  v84[8] = v67;
  v84[9] = v68;
  v84[10] = v69;
  v84[11] = v70;
  v84[4] = v63;
  v84[5] = v64;
  v84[6] = v65;
  v84[7] = v66;
  v84[0] = v59;
  v84[1] = v60;
  v84[2] = v61;
  v84[3] = v62;

  sub_2662A7224(v84, v58, &qword_280073320, &unk_2664EF750);
  v40 = sub_2664DFE18();
  v41 = v10;
  v42 = sub_2664E06E8();

  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v7;
    v45 = v44;
    v58[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), v58);
    *(v43 + 12) = 2082;
    v55 = v41;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
    v46 = sub_2664E0318();
    v54 = v6;
    v47 = a3;
    v48 = v46;
    v50 = v49;
    sub_2662A9238(v84, &qword_280073320, &unk_2664EF750);
    v51 = v48;
    a3 = v47;
    v52 = sub_2662A320C(v51, v50, v58);

    *(v43 + 14) = v52;
    _os_log_impl(&dword_26629C000, v40, v42, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v45, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);

    (*(v56 + 8))(v55, v54);
  }

  else
  {

    sub_2662A9238(v84, &qword_280073320, &unk_2664EF750);
    (*(v7 + 8))(v41, v6);
  }

  return a3(&v59);
}

uint64_t sub_26630C614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  *(a2 + 24) = 1;
  v13 = *(*a2 + 112);
  swift_beginAccess();
  v14 = *(a2 + v13);
  *(a2 + v13) = a1;
  swift_bridgeObjectRetain_n();

  v15 = *(a2 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v16, v8);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29[1] = a4;
    v22 = v21;
    v32 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), &v32);
    *(v20 + 12) = 2082;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072968, &qword_2664E5070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072970, &unk_2664E5078);
    v23 = sub_2664E0318();
    v25 = v24;

    v26 = sub_2662A320C(v23, v25, &v32);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_26629C000, v17, v18, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v22, -1, -1);
    v27 = v20;
    a3 = v30;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
  return a3(&v33);
}

uint64_t sub_26630C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = a1;
  v28[1] = a2;
  v28[2] = a3;
  *(a4 + 24) = 1;
  v14 = (a4 + *(*a4 + 112));
  swift_beginAccess();
  v15 = v14[2];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;

  v16 = *(a4 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v17, v9);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2662A320C(*(a4 + *(*a4 + 128)), *(a4 + *(*a4 + 128) + 8), &v27);
    *(v20 + 12) = 2082;
    v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v27);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  return (v26[0])(v28);
}

uint64_t sub_26630CC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  v40 = a7;
  v41 = a6;
  v12 = sub_2664DFE38();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = a1;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = a4;
  *(a5 + 24) = 1;
  v15 = (a5 + *(*a5 + 112));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  sub_266314294(a1);
  sub_2663142F4(v16);
  v20 = *(a5 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = v39;
  v22 = __swift_project_value_buffer(v39, qword_280F914F0);
  swift_beginAccess();
  v24 = v37;
  v23 = v38;
  (*(v38 + 16))(v37, v22, v21);
  v25 = v44[0];

  sub_266314294(v25);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  sub_2663142F4(v25);
  v28 = v21;
  v29 = v23;
  if (os_log_type_enabled(v26, v27))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_2662A320C(*(a5 + *(*a5 + 128)), *(a5 + *(*a5 + 128) + 8), &v43);
    *(v30 + 12) = 2082;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v43);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_26629C000, v26, v27, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v29 + 8))(v24, v28);
  return v41(v44);
}

uint64_t sub_26630CFF8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v33 = a5;
  v34 = a4;
  v8 = *a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + 80);
  v15 = sub_2664E0948();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  *(a2 + 24) = 1;
  (*(v19 + 16))(&v32 - v17, a1, v15);
  sub_2663098C0(v18);
  v20 = a2[2];
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v21, v9);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), &v36);
    *(v25 + 12) = 2082;
    v35 = v15;
    swift_getMetatypeMetadata();
    v27 = sub_2664E0318();
    v29 = sub_2662A320C(v27, v28, &v36);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_26629C000, v22, v23, v33, v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v26, -1, -1);
    v30 = v25;
    a3 = v32;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  return a3(a1);
}

uint64_t sub_26630D350()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_2664E0948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[2];
  sub_2662A98AC();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v13, v7);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20[1] = v12;
    v17 = v16;
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_2662A320C(*&v1[*(*v1 + 128)], *&v1[*(*v1 + 128) + 8], &v21);
    _os_log_impl(&dword_26629C000, v14, v15, "AtomicValue#reset [%{public}s] resetting value", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  (*(*(v2 - 8) + 56))(v6, 1, 1, v2);
  sub_2663098C0(v6);
  v1[24] = 0;
  return sub_2662AA89C();
}

char *AtomicValue.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  sub_2662A9238(&v0[qword_280F91D08], &qword_2800737D0, qword_2664E4FD0);
  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = sub_2664E0948();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 120) + 8];

  v7 = *&v0[*(*v0 + 128) + 8];

  return v0;
}

uint64_t AtomicValue.__deallocating_deinit()
{
  AtomicValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_26630D7A8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t *sub_26630D7FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 24) = 0;
  v11 = qword_280F91D08;
  v12 = sub_2664DE438();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  (*(*(*(v10 + 80) - 8) + 56))(v5 + *(*v5 + 112), 1, 1);
  v13 = (v5 + *(*v5 + 120));
  *v13 = a3;
  v13[1] = a4;
  v14 = (v5 + *(*v5 + 128));
  *v14 = a1;
  v14[1] = a2;
  v15 = qword_280F91468;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91470;
  v18[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v18[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[0] = v16;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v5[2] = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v18);
  return v5;
}

uint64_t *sub_26630D9D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  v10 = type metadata accessor for AtomicValue();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_26630D7FC(a1, a2, a3, a4);
}

uint64_t sub_26630DA64(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_2664E0948() - 8);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_26630AC90(a1, v5, v6, v7, v8);
}

void sub_26630DB08(uint64_t a1)
{
  sub_26630DD10();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = sub_2664E0948();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_26630DD10()
{
  if (!qword_280F914D0)
  {
    sub_2664DE438();
    v0 = sub_2664E0948();
    if (!v1)
    {
      atomic_store(v0, &qword_280F914D0);
    }
  }
}

uint64_t sub_26630DD68(uint64_t a1, int a2, _BYTE *a3, void (*a4)(__int128 *), uint64_t a5, int a6, void *a7, uint64_t a8, char *a9, uint64_t a10)
{
  v127 = a7;
  v121 = a2;
  v119 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v107 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v116 = &v103 - v19;
  v124 = sub_2664DE438();
  v120 = *(v124 - 8);
  v20 = *(v120 + 64);
  MEMORY[0x28223BE20](v124);
  v104 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v109 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v103 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v106 = &v103 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v117 = &v103 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v122 = &v103 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v103 - v35;
  v37 = swift_allocObject();
  v111 = a4;
  *(v37 + 16) = a4;
  *(v37 + 24) = a5;
  v113 = a6;
  *(v37 + 32) = a6;
  v38 = v127;
  *(v37 + 40) = v127;
  *(v37 + 48) = a8;
  v110 = a9;
  *(v37 + 56) = a9;
  *(v37 + 64) = a10;
  v118 = v37;
  v39 = qword_280F914E8;
  v114 = a5;

  v108 = v38;
  v115 = a8;

  v112 = a10;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  v41 = *(v23 + 16);
  v126 = v23 + 16;
  v127 = v40;
  v125 = v41;
  v41(v36, v40, v22);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();

  v44 = os_log_type_enabled(v42, v43);
  v123 = v23;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v128[0] = v46;
    *v45 = 136446466;
    *(v45 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v128);
    *(v45 + 12) = 2082;
    v131 = v119;
    v132 = v121 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v47 = sub_2664E0318();
    v49 = sub_2662A320C(v47, v48, v128);

    *(v45 + 14) = v49;
    _os_log_impl(&dword_26629C000, v42, v43, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v45, 0x16u);
    swift_arrayDestroy();
    v50 = v123;
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  else
  {
    v50 = v23;
  }

  v51 = *(v50 + 8);
  v51(v36, v22);
  v52 = v122;
  v53 = *(a3 + 2);
  sub_2662A98AC();
  v125(v52, v127, v22);

  v54 = sub_2664DFE18();
  v55 = sub_2664E06E8();

  v56 = os_log_type_enabled(v54, v55);
  v122 = v51;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v131 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v131);
    _os_log_impl(&dword_26629C000, v54, v55, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v51(v52, v22);
  v59 = v120;
  v60 = v116;
  v61 = v117;
  if ((v121 & 1) == 0)
  {
    v62 = *&v119;
    v63 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v63], v60, &qword_2800737D0, qword_2664E4FD0);
    v64 = *(v59 + 48);
    if (v64(v60, 1, v124) == 1)
    {
      v65 = v104;
      sub_2664DE378();
      v66 = v64(v60, 1, v124);
      v67 = v65;
      if (v66 != 1)
      {
        sub_2662A9238(v60, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v67 = v104;
      (*(v59 + 32))(v104, v60, v124);
    }

    sub_2664DE3C8();
    v69 = v68;
    (*(v59 + 8))(v67, v124);
    v70 = fabs(v69);
    if (v70 > v62)
    {
      v125(v61, v127, v22);

      v71 = sub_2664DFE18();
      v72 = sub_2664E06E8();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v131 = v74;
        *v73 = 136446722;
        *(v73 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v131);
        *(v73 + 12) = 2050;
        *(v73 + 14) = v70;
        *(v73 + 22) = 2050;
        *(v73 + 24) = *&v119;
        _os_log_impl(&dword_26629C000, v71, v72, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v73, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x266784AD0](v74, -1, -1);
        v75 = v73;
        v59 = v120;
        MEMORY[0x266784AD0](v75, -1, -1);
      }

      (v122)(v61, v22);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v76 = *(*a3 + 112);
    swift_beginAccess();
    v130 = *&a3[v76];
    swift_unknownObjectRetain_n();
    sub_2662AA89C();
    v77 = v106;
    v125(v106, v127, v22);

    v78 = sub_2664DFE18();
    v79 = sub_2664E06E8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v129 = v81;
      *v80 = 136446210;
      *(v80 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v129);
      _os_log_impl(&dword_26629C000, v78, v79, "AtomicValue#computeIfAbsent [%{public}s] lock released", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x266784AD0](v81, -1, -1);
      MEMORY[0x266784AD0](v80, -1, -1);
    }

    v82 = v122;
    (v122)(v77, v22);
    v83 = v109;
    v125(v109, v127, v22);

    v84 = sub_2664DFE18();
    v85 = sub_2664E06E8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v129 = v87;
      *v86 = 136446466;
      *(v86 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v129);
      *(v86 + 12) = 2082;
      v128[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072978, &qword_2664E5088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072980, &unk_2664E5090);
      v88 = sub_2664E0318();
      v90 = sub_2662A320C(v88, v89, &v129);

      *(v86 + 14) = v90;
      _os_log_impl(&dword_26629C000, v84, v85, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v86, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v87, -1, -1);
      MEMORY[0x266784AD0](v86, -1, -1);

      (v122)(v83, v22);
    }

    else
    {

      v82(v83, v22);
    }

    sub_2662C7454(&v130, v111, v114, v113 & 1, v108, v115, v110, v112);

    return swift_unknownObjectRelease();
  }

  else
  {
    v91 = v105;
    v125(v105, v127, v22);

    v92 = sub_2664DFE18();
    v93 = sub_2664E06E8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v131 = v95;
      *v94 = 136446210;
      *(v94 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v131);
      _os_log_impl(&dword_26629C000, v92, v93, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x266784AD0](v95, -1, -1);
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    (v122)(v91, v22);
    v96 = v107;
    sub_2664DE428();
    (*(v59 + 56))(v96, 0, 1, v124);
    v97 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v96, &a3[v97]);
    swift_endAccess();
    v98 = &a3[*(*a3 + 120)];
    v100 = *v98;
    v99 = *(v98 + 1);
    v101 = swift_allocObject();
    v101[2] = a3;
    v101[3] = sub_266314388;
    v101[4] = v118;

    v100(sub_266314400, v101);
  }
}

uint64_t sub_26630EBB8(uint64_t a1, int a2, _BYTE *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v115 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v107 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v114 = &v103 - v15;
  v16 = sub_2664DE438();
  v116 = *(v16 - 8);
  v117 = v16;
  v17 = *(v116 + 64);
  MEMORY[0x28223BE20](v16);
  v104 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v108 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v103 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v106 = &v103 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v103 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v103 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v103 - v34;
  v36 = swift_allocObject();
  v109 = a4;
  v36[2] = a4;
  v36[3] = a5;
  v112 = v36;
  v36[4] = a6;
  v37 = qword_280F914E8;
  v110 = a5;

  v111 = a6;

  if (v37 != -1)
  {
    swift_once();
  }

  v103 = v30;
  v38 = __swift_project_value_buffer(v19, qword_280F914F0);
  swift_beginAccess();
  v39 = v20[2];
  v120 = v20 + 2;
  v121 = v38;
  v119 = v39;
  v39(v35, v38, v19);

  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();

  v42 = os_log_type_enabled(v40, v41);
  v118 = v20;
  v113 = a2;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v122[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v122);
    *(v43 + 12) = 2082;
    v125 = v115;
    v126 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v45 = sub_2664E0318();
    v47 = sub_2662A320C(v45, v46, v122);
    v20 = v118;

    *(v43 + 14) = v47;
    _os_log_impl(&dword_26629C000, v40, v41, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v48 = v20[1];
  v48(v35, v19);
  v49 = *(a3 + 2);
  sub_2662A98AC();
  v119(v33, v121, v19);

  v50 = sub_2664DFE18();
  v51 = sub_2664E06E8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v125 = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
    _os_log_impl(&dword_26629C000, v50, v51, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v52, -1, -1);
  }

  v48(v33, v19);
  v55 = v116;
  v54 = v117;
  v56 = &unk_280F91000;
  v57 = v114;
  if ((v113 & 1) == 0)
  {
    v58 = *&v115;
    v59 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v59], v57, &qword_2800737D0, qword_2664E4FD0);
    v60 = *(v55 + 48);
    if (v60(v57, 1, v54) == 1)
    {
      v61 = v48;
      v62 = v104;
      sub_2664DE378();
      v63 = v60(v57, 1, v54);
      v64 = v62;
      v48 = v61;
      v56 = &unk_280F91000;
      if (v63 != 1)
      {
        sub_2662A9238(v57, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v64 = v104;
      (*(v55 + 32))(v104, v57, v54);
    }

    sub_2664DE3C8();
    v66 = v65;
    (*(v55 + 8))(v64, v54);
    v67 = fabs(v66);
    if (v67 > v58)
    {
      v68 = v103;
      v119(v103, v121, v19);

      v69 = sub_2664DFE18();
      v70 = sub_2664E06E8();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v125 = v72;
        *v71 = 136446722;
        *(v71 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
        *(v71 + 12) = 2050;
        *(v71 + 14) = v67;
        *(v71 + 22) = 2050;
        *(v71 + 24) = *&v115;
        _os_log_impl(&dword_26629C000, v69, v70, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v71, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v73 = v72;
        v55 = v116;
        MEMORY[0x266784AD0](v73, -1, -1);
        v74 = v71;
        v54 = v117;
        MEMORY[0x266784AD0](v74, -1, -1);
      }

      v48(v68, v19);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v75 = *(*a3 + 112);
    swift_beginAccess();
    v124 = *&a3[v75];
    swift_unknownObjectRetain_n();
    sub_2662AA89C();
    v76 = v106;
    v119(v106, v121, v19);

    v77 = sub_2664DFE18();
    v78 = sub_2664E06E8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v123 = v80;
      *v79 = 136446210;
      *(v79 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v123);
      _os_log_impl(&dword_26629C000, v77, v78, "AtomicValue#computeIfAbsent [%{public}s] lock released", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    v48(v76, v19);
    v81 = v108;
    v119(v108, v121, v19);

    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v123 = v85;
      *v84 = 136446466;
      *(v84 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v123);
      *(v84 + 12) = 2082;
      v122[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072978, &qword_2664E5088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072980, &unk_2664E5090);
      v86 = sub_2664E0318();
      v88 = sub_2662A320C(v86, v87, &v123);

      *(v84 + 14) = v88;
      _os_log_impl(&dword_26629C000, v82, v83, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v85, -1, -1);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    v48(v81, v19);
    sub_2662C9830(&v124, v109, v110, v111);

    return swift_unknownObjectRelease();
  }

  else
  {
    v90 = v105;
    v119(v105, v121, v19);

    v91 = sub_2664DFE18();
    v92 = sub_2664E06E8();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v125 = v94;
      *v93 = 136446210;
      *(v93 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
      _os_log_impl(&dword_26629C000, v91, v92, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      v95 = v94;
      v55 = v116;
      MEMORY[0x266784AD0](v95, -1, -1);
      v96 = v93;
      v54 = v117;
      MEMORY[0x266784AD0](v96, -1, -1);
    }

    v48(v90, v19);
    v97 = v107;
    sub_2664DE428();
    (*(v55 + 56))(v97, 0, 1, v54);
    v98 = v56[417];
    swift_beginAccess();
    sub_2663132FC(v97, &a3[v98]);
    swift_endAccess();
    v99 = &a3[*(*a3 + 120)];
    v101 = *v99;
    v100 = *(v99 + 1);
    v102 = swift_allocObject();
    v102[2] = a3;
    v102[3] = sub_26631436C;
    v102[4] = v112;

    v101(sub_266314378, v102);
  }
}

uint64_t sub_26630F97C(uint64_t a1, int a2, _BYTE *a3, void (*a4)(void), uint64_t a5)
{
  LODWORD(v132) = a2;
  v128 = *&a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v122 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v118 - v12;
  v133 = sub_2664DE438();
  v130 = *(v133 - 8);
  v14 = *(v130 + 64);
  MEMORY[0x28223BE20](v133);
  v119 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v121 = &v118 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v129 = &v118 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v118 = &v118 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v131 = &v118 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v118 - v30;
  v32 = swift_allocObject();
  v124 = a4;
  v125 = a5;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  v127 = v32;
  v33 = qword_280F914E8;

  if (v33 != -1)
  {
    swift_once();
  }

  v120 = v13;
  v123 = v21;
  v34 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v35 = v17[2];
  v136 = v17 + 2;
  v137 = v34;
  v135 = v35;
  v35(v31, v34, v16);

  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  v38 = os_log_type_enabled(v36, v37);
  v134 = v17;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v141 = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v141);
    *(v39 + 12) = 2082;
    *v153 = v128;
    BYTE8(v153[0]) = v132 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v41 = sub_2664E0318();
    v43 = sub_2662A320C(v41, v42, &v141);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_26629C000, v36, v37, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    v44 = v40;
    v17 = v134;
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v45 = v17[1];
  v45(v31, v16);
  v46 = v131;
  v47 = *(a3 + 2);
  sub_2662A98AC();
  v135(v46, v137, v16);

  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v153[0] = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v153);
    _os_log_impl(&dword_26629C000, v48, v49, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);

    v52 = v131;
  }

  else
  {

    v52 = v46;
  }

  v53 = v16;
  v45(v52, v16);
  v55 = v129;
  v54 = v130;
  v56 = v133;
  v57 = &unk_280F91000;
  v58 = v53;
  v126 = v45;
  if ((v132 & 1) == 0)
  {
    v132 = v53;
    v59 = v128;
    v60 = qword_280F91D08;
    swift_beginAccess();
    v61 = v120;
    sub_2662A7224(&a3[v60], v120, &qword_2800737D0, qword_2664E4FD0);
    v62 = v54;
    v63 = *(v54 + 48);
    if (v63(v61, 1, v56) == 1)
    {
      v64 = v55;
      v65 = v119;
      sub_2664DE378();
      v66 = v63(v61, 1, v56);
      v67 = v65;
      v55 = v64;
      v54 = v62;
      if (v66 != 1)
      {
        sub_2662A9238(v61, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v67 = v119;
      (*(v62 + 32))(v119, v61, v56);
      v54 = v62;
    }

    sub_2664DE3C8();
    v69 = v68;
    (*(v54 + 8))(v67, v56);
    v70 = fabs(v69);
    v45 = v126;
    v58 = v132;
    v57 = &unk_280F91000;
    if (v70 > v59)
    {
      v71 = v118;
      v135(v118, v137, v132);

      v72 = sub_2664DFE18();
      v73 = sub_2664E06E8();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v153[0] = v75;
        *v74 = 136446722;
        *(v74 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v153);
        *(v74 + 12) = 2050;
        *(v74 + 14) = v70;
        *(v74 + 22) = 2050;
        *(v74 + 24) = v128;
        _os_log_impl(&dword_26629C000, v72, v73, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v74, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        v76 = v75;
        v54 = v130;
        MEMORY[0x266784AD0](v76, -1, -1);
        v77 = v74;
        v55 = v129;
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      v45(v71, v58);
      a3[24] = 0;
      v56 = v133;
      v57 = &unk_280F91000;
    }
  }

  if (a3[24] == 1)
  {
    v78 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v79 = v78[9];
    v80 = v78[7];
    v160 = v78[8];
    v161 = v79;
    v81 = v78[9];
    v82 = v78[11];
    v162 = v78[10];
    v163 = v82;
    v83 = v78[5];
    v84 = v78[3];
    v156 = v78[4];
    v157 = v83;
    v85 = v78[5];
    v86 = v78[7];
    v158 = v78[6];
    v159 = v86;
    v87 = v78[1];
    v153[0] = *v78;
    v153[1] = v87;
    v88 = v78[3];
    v90 = *v78;
    v89 = v78[1];
    v154 = v78[2];
    v155 = v88;
    v149 = v160;
    v150 = v81;
    v91 = v78[11];
    v151 = v162;
    v152 = v91;
    v145 = v156;
    v146 = v85;
    v147 = v158;
    v148 = v80;
    v141 = v90;
    v142 = v89;
    v143 = v154;
    v144 = v84;
    sub_2662A7224(v153, v140, &qword_280073320, &unk_2664EF750);
    sub_2662AA89C();
    v135(v55, v137, v58);

    v92 = sub_2664DFE18();
    v93 = sub_2664E06E8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v140[0] = v95;
      *v94 = 136446210;
      *(v94 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v140);
      _os_log_impl(&dword_26629C000, v92, v93, "AtomicValue#computeIfAbsent [%{public}s] lock released", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x266784AD0](v95, -1, -1);
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    v45(v55, v58);
    v96 = v123;
    v135(v123, v137, v58);
    v140[8] = v149;
    v140[9] = v150;
    v140[10] = v151;
    v140[11] = v152;
    v140[4] = v145;
    v140[5] = v146;
    v140[6] = v147;
    v140[7] = v148;
    v140[0] = v141;
    v140[1] = v142;
    v140[2] = v143;
    v140[3] = v144;

    sub_2662A7224(v140, v139, &qword_280073320, &unk_2664EF750);
    v97 = sub_2664DFE18();
    v98 = sub_2664E06E8();

    sub_2662A9238(v140, &qword_280073320, &unk_2664EF750);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v139[0] = v100;
      *v99 = 136446466;
      *(v99 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v139);
      *(v99 + 12) = 2082;
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
      v101 = sub_2664E0318();
      v103 = sub_2662A320C(v101, v102, v139);

      *(v99 + 14) = v103;
      _os_log_impl(&dword_26629C000, v97, v98, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v100, -1, -1);
      MEMORY[0x266784AD0](v99, -1, -1);
    }

    v126(v96, v58);
    sub_2663BDEB0(&v141, v124);
    v139[8] = v149;
    v139[9] = v150;
    v139[10] = v151;
    v139[11] = v152;
    v139[4] = v145;
    v139[5] = v146;
    v139[6] = v147;
    v139[7] = v148;
    v139[0] = v141;
    v139[1] = v142;
    v139[2] = v143;
    v139[3] = v144;
    sub_2662A9238(v139, &qword_280073320, &unk_2664EF750);
  }

  else
  {
    v104 = v121;
    v135(v121, v137, v58);

    v105 = sub_2664DFE18();
    v106 = sub_2664E06E8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v153[0] = v108;
      *v107 = 136446210;
      *(v107 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v153);
      _os_log_impl(&dword_26629C000, v105, v106, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      v109 = v108;
      v56 = v133;
      MEMORY[0x266784AD0](v109, -1, -1);
      v110 = v107;
      v54 = v130;
      MEMORY[0x266784AD0](v110, -1, -1);
    }

    v45(v104, v58);
    v111 = v122;
    sub_2664DE428();
    (*(v54 + 56))(v111, 0, 1, v56);
    v112 = v57[417];
    swift_beginAccess();
    sub_2663132FC(v111, &a3[v112]);
    swift_endAccess();
    v113 = &a3[*(*a3 + 120)];
    v115 = *v113;
    v114 = *(v113 + 1);
    v116 = swift_allocObject();
    v116[2] = a3;
    v116[3] = sub_26631439C;
    v116[4] = v127;

    v115(sub_2663143A4, v116);
  }
}

uint64_t sub_266310808(uint64_t a1, int a2, _BYTE *a3, void (*a4)(void), uint64_t a5)
{
  v123 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v116 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = &v110 - v13;
  v14 = sub_2664DE438();
  v15 = *(v14 - 8);
  v124 = v14;
  v125 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v113 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v117 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v114 = &v110 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v115 = &v110 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v110 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v110 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v110 - v33;
  v35 = swift_allocObject();
  v118 = a4;
  *(v35 + 16) = a4;
  *(v35 + 24) = a5;
  v122 = v35;
  v36 = qword_280F914E8;
  v119 = a5;

  if (v36 != -1)
  {
    swift_once();
  }

  v111 = v29;
  v37 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v127 = v19[2];
  v128 = v19 + 2;
  v127(v34, v37, v18);

  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();

  v40 = os_log_type_enabled(v38, v39);
  v120 = a2;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v112 = v19;
    v42 = v41;
    v43 = swift_slowAlloc();
    v110 = v32;
    v44 = v43;
    v129[0] = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v129);
    *(v42 + 12) = 2082;
    v132 = v123;
    v133 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v45 = sub_2664E0318();
    v47 = v18;
    v48 = v37;
    v49 = sub_2662A320C(v45, v46, v129);

    *(v42 + 14) = v49;
    v37 = v48;
    v18 = v47;
    _os_log_impl(&dword_26629C000, v38, v39, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    v50 = v44;
    v32 = v110;
    MEMORY[0x266784AD0](v50, -1, -1);
    v51 = v42;
    v52 = v112;
    MEMORY[0x266784AD0](v51, -1, -1);

    v53 = v52[1];
    v54 = v34;
    v55 = v47;
  }

  else
  {

    v53 = v19[1];
    v54 = v34;
    v55 = v18;
  }

  v126 = v53;
  v53(v54, v55);
  v112 = *(a3 + 2);
  sub_2662A98AC();
  v127(v32, v37, v18);

  v56 = sub_2664DFE18();
  v57 = sub_2664E06E8();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v121;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v132 = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v132);
    _os_log_impl(&dword_26629C000, v56, v57, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v62 = v126;
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);

    v62(v32, v18);
  }

  else
  {

    v126(v32, v18);
  }

  v64 = v124;
  v63 = v125;
  v65 = &unk_280F91000;
  if ((v120 & 1) == 0)
  {
    v66 = *&v123;
    v67 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v67], v59, &qword_2800737D0, qword_2664E4FD0);
    v68 = *(v63 + 48);
    if (v68(v59, 1, v64) == 1)
    {
      v69 = v113;
      sub_2664DE378();
      v70 = v68(v59, 1, v64);
      v71 = v69;
      v65 = &unk_280F91000;
      if (v70 != 1)
      {
        sub_2662A9238(v59, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v71 = v113;
      (*(v63 + 32))(v113, v59, v64);
    }

    sub_2664DE3C8();
    v73 = v72;
    (*(v63 + 8))(v71, v64);
    v74 = fabs(v73);
    if (v74 > v66)
    {
      v75 = v111;
      v127(v111, v37, v18);

      v76 = sub_2664DFE18();
      v77 = sub_2664E06E8();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v132 = v79;
        *v78 = 136446722;
        *(v78 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v132);
        *(v78 + 12) = 2050;
        *(v78 + 14) = v74;
        *(v78 + 22) = 2050;
        *(v78 + 24) = *&v123;
        _os_log_impl(&dword_26629C000, v76, v77, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v78, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        v64 = v124;
        MEMORY[0x266784AD0](v79, -1, -1);
        v80 = v78;
        v63 = v125;
        MEMORY[0x266784AD0](v80, -1, -1);
      }

      v126(v75, v18);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v81 = *(*a3 + 112);
    swift_beginAccess();
    v131 = *&a3[v81];
    swift_bridgeObjectRetain_n();
    sub_2662AA89C();
    v82 = v115;
    v127(v115, v37, v18);

    v83 = sub_2664DFE18();
    v84 = sub_2664E06E8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v130 = v86;
      *v85 = 136446210;
      *(v85 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v130);
      _os_log_impl(&dword_26629C000, v83, v84, "AtomicValue#computeIfAbsent [%{public}s] lock released", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      v87 = v126;
      MEMORY[0x266784AD0](v86, -1, -1);
      MEMORY[0x266784AD0](v85, -1, -1);

      v87(v82, v18);
    }

    else
    {

      v126(v82, v18);
    }

    v102 = v117;
    v127(v117, v37, v18);

    v103 = sub_2664DFE18();
    v104 = sub_2664E06E8();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v130 = v106;
      *v105 = 136446466;
      *(v105 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v130);
      *(v105 + 12) = 2082;
      v129[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072968, &qword_2664E5070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072970, &unk_2664E5078);
      v107 = sub_2664E0318();
      v109 = sub_2662A320C(v107, v108, &v130);

      *(v105 + 14) = v109;
      _os_log_impl(&dword_26629C000, v103, v104, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v106, -1, -1);
      MEMORY[0x266784AD0](v105, -1, -1);
    }

    v126(v102, v18);
    sub_2662DF980(&v131, v118);
  }

  else
  {
    v88 = v37;
    v89 = v114;
    v127(v114, v88, v18);

    v90 = sub_2664DFE18();
    v91 = sub_2664E06E8();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v132 = v93;
      *v92 = 136446210;
      *(v92 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v132);
      _os_log_impl(&dword_26629C000, v90, v91, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x266784AD0](v93, -1, -1);
      v94 = v92;
      v63 = v125;
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    v126(v89, v18);
    v95 = v116;
    sub_2664DE428();
    (*(v63 + 56))(v95, 0, 1, v64);
    v96 = v65[417];
    swift_beginAccess();
    sub_2663132FC(v95, &a3[v96]);
    swift_endAccess();
    v97 = &a3[*(*a3 + 120)];
    v99 = *v97;
    v98 = *(v97 + 1);
    v100 = swift_allocObject();
    v100[2] = a3;
    v100[3] = sub_266314354;
    v100[4] = v122;

    v99(sub_26631435C, v100);
  }
}

uint64_t sub_266311654(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v125 = a2;
  v123 = *&a1;
  v126 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = &v107 - v20;
  v124 = sub_2664DE438();
  v121 = *(v124 - 8);
  v21 = *(v121 + 64);
  MEMORY[0x28223BE20](v124);
  v107 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2664DFE38();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v113 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v107 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v110 = &v107 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v108 = &v107 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v119 = &v107 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v107 - v36;
  v38 = swift_allocObject();
  v114 = a4;
  v38[2] = a4;
  v38[3] = a5;
  v117 = a6;
  v38[4] = a6;
  v38[5] = a7;
  v39 = v126;
  v38[6] = a8;
  v38[7] = v39;
  v122 = v38;
  v38[8] = a10;
  v40 = qword_280F914E8;
  v116 = a5;

  v118 = a7;

  v112 = a8;
  v115 = a10;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v42 = v24[2];
  v129 = v24 + 2;
  v130 = v41;
  v128 = v42;
  v42(v37, v41, v23);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();

  v45 = os_log_type_enabled(v43, v44);
  v127 = v24;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v133[0] = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v133);
    *(v46 + 12) = 2082;
    *&v134 = v123;
    BYTE8(v134) = v125 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v48 = sub_2664E0318();
    v50 = sub_2662A320C(v48, v49, v133);
    v24 = v127;

    *(v46 + 14) = v50;
    _os_log_impl(&dword_26629C000, v43, v44, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  v51 = v24[1];
  v51(v37, v23);
  v52 = v23;
  v53 = v120;
  v54 = v119;
  v120 = *(a3 + 2);
  sub_2662A98AC();
  v128(v54, v130, v23);

  v55 = sub_2664DFE18();
  v56 = sub_2664E06E8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v134 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v134);
    _os_log_impl(&dword_26629C000, v55, v56, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v59 = v54;
  v60 = v51;
  v51(v59, v23);
  v61 = v124;
  if ((v125 & 1) == 0)
  {
    v62 = v123;
    v63 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v63], v53, &qword_2800737D0, qword_2664E4FD0);
    v64 = v121;
    v65 = *(v121 + 48);
    if (v65(v53, 1, v61) == 1)
    {
      v66 = v107;
      sub_2664DE378();
      v67 = v65(v53, 1, v61);
      v68 = v66;
      if (v67 != 1)
      {
        sub_2662A9238(v53, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v68 = v107;
      (*(v64 + 32))(v107, v53, v61);
    }

    sub_2664DE3C8();
    v70 = v69;
    (*(v64 + 8))(v68, v61);
    v71 = fabs(v70);
    v72 = v108;
    if (v71 > v62)
    {
      v128(v108, v130, v52);

      v73 = sub_2664DFE18();
      v74 = sub_2664E06E8();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = v52;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v134 = v77;
        *v76 = 136446722;
        *(v76 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v134);
        *(v76 + 12) = 2050;
        *(v76 + 14) = v71;
        *(v76 + 22) = 2050;
        *(v76 + 24) = v123;
        _os_log_impl(&dword_26629C000, v73, v74, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v76, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x266784AD0](v77, -1, -1);
        v78 = v76;
        v52 = v75;
        v61 = v124;
        MEMORY[0x266784AD0](v78, -1, -1);
      }

      v51(v72, v52);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v79 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v80 = *(v79 + 2);
    v134 = *v79;
    v135 = v80;

    sub_2662AA89C();
    v81 = v110;
    v128(v110, v130, v52);

    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v132 = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v132);
      _os_log_impl(&dword_26629C000, v82, v83, "AtomicValue#computeIfAbsent [%{public}s] lock released", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x266784AD0](v85, -1, -1);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    v60(v81, v52);
    v86 = v113;
    v128(v113, v130, v52);

    v87 = sub_2664DFE18();
    v88 = sub_2664E06E8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v132 = v90;
      *v89 = 136446466;
      *(v89 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v132);
      *(v89 + 12) = 2082;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
      v91 = sub_2664E0318();
      v93 = sub_2662A320C(v91, v92, &v132);

      *(v89 + 14) = v93;
      _os_log_impl(&dword_26629C000, v87, v88, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v90, -1, -1);
      MEMORY[0x266784AD0](v89, -1, -1);
    }

    v60(v86, v52);
    sub_2663F3148(&v134, v114, v116, v117, v118, v112, v126, v115);
  }

  else
  {
    v95 = v109;
    v128(v109, v130, v52);

    v96 = sub_2664DFE18();
    v97 = sub_2664E06E8();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v134 = v99;
      *v98 = 136446210;
      *(v98 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v134);
      _os_log_impl(&dword_26629C000, v96, v97, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x266784AD0](v99, -1, -1);
      MEMORY[0x266784AD0](v98, -1, -1);
    }

    v60(v95, v52);
    v100 = v121;
    v101 = v111;
    sub_2664DE428();
    (*(v100 + 56))(v101, 0, 1, v61);
    v102 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v101, &a3[v102]);
    swift_endAccess();
    v103 = &a3[*(*a3 + 120)];
    v105 = *v103;
    v104 = *(v103 + 1);
    v106 = swift_allocObject();
    v106[2] = a3;
    v106[3] = sub_266313370;
    v106[4] = v122;

    v105(sub_266314404, v106);
  }
}

uint64_t sub_2663124DC(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  v116 = a2;
  v112 = *&a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v105 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v101 - v12;
  v113 = sub_2664DE438();
  v115 = *(v113 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x28223BE20](v113);
  v102 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DFE38();
  v120 = *(v15 - 8);
  v16 = v120[8];
  v17 = MEMORY[0x28223BE20](v15);
  v106 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v103 = &v101 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v101 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v101 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v101 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v101 - v30;
  v32 = swift_allocObject();
  v107 = a4;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  v111 = v32;
  v33 = qword_280F914E8;
  v108 = a5;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v35 = v120[2];
  v118 = v120 + 2;
  v119 = v34;
  v117 = v35;
  v35(v31, v34, v15);

  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  v38 = os_log_type_enabled(v36, v37);
  v104 = v23;
  v110 = v26;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v123[0] = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v123);
    *(v39 + 12) = 2082;
    *&v124 = v112;
    BYTE8(v124) = v116 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v41 = sub_2664E0318();
    v43 = sub_2662A320C(v41, v42, v123);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_26629C000, v36, v37, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v44 = v120[1];
  v44(v31, v15);
  v45 = *(a3 + 2);
  sub_2662A98AC();
  v117(v29, v119, v15);

  v46 = sub_2664DFE18();
  v47 = sub_2664E06E8();

  v48 = os_log_type_enabled(v46, v47);
  v114 = v44;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v124 = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v124);
    _os_log_impl(&dword_26629C000, v46, v47, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  v44(v29, v15);
  v51 = v115;
  v52 = v110;
  v53 = v113;
  v54 = v109;
  if ((v116 & 1) == 0)
  {
    v55 = v112;
    v56 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v56], v54, &qword_2800737D0, qword_2664E4FD0);
    v57 = *(v51 + 48);
    if (v57(v54, 1, v53) == 1)
    {
      v58 = v102;
      sub_2664DE378();
      v59 = v57(v54, 1, v53);
      v60 = v58;
      if (v59 != 1)
      {
        sub_2662A9238(v54, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v60 = v102;
      (*(v51 + 32))(v102, v54, v53);
    }

    sub_2664DE3C8();
    v62 = v61;
    (*(v51 + 8))(v60, v53);
    v63 = fabs(v62);
    if (v63 > v55)
    {
      v117(v52, v119, v15);

      v64 = sub_2664DFE18();
      v65 = sub_2664E06E8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v124 = v67;
        *v66 = 136446722;
        *(v66 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v124);
        *(v66 + 12) = 2050;
        *(v66 + 14) = v63;
        *(v66 + 22) = 2050;
        *(v66 + 24) = v112;
        _os_log_impl(&dword_26629C000, v64, v65, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v66, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        v53 = v113;
        MEMORY[0x266784AD0](v67, -1, -1);
        v68 = v66;
        v51 = v115;
        MEMORY[0x266784AD0](v68, -1, -1);
      }

      v114(v52, v15);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v69 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v70 = *(v69 + 2);
    v124 = *v69;
    v125 = v70;

    sub_2662AA89C();
    v71 = v104;
    v117(v104, v119, v15);

    v72 = sub_2664DFE18();
    v73 = sub_2664E06E8();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v114;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v122 = v77;
      *v76 = 136446210;
      *(v76 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v122);
      _os_log_impl(&dword_26629C000, v72, v73, "AtomicValue#computeIfAbsent [%{public}s] lock released", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x266784AD0](v77, -1, -1);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v75(v71, v15);
    v78 = v106;
    v117(v106, v119, v15);

    v79 = sub_2664DFE18();
    v80 = sub_2664E06E8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v122 = v82;
      *v81 = 136446466;
      *(v81 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v122);
      *(v81 + 12) = 2082;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
      v83 = sub_2664E0318();
      v85 = sub_2662A320C(v83, v84, &v122);

      *(v81 + 14) = v85;
      _os_log_impl(&dword_26629C000, v79, v80, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v82, -1, -1);
      MEMORY[0x266784AD0](v81, -1, -1);
    }

    v75(v78, v15);
    sub_2663F4550(&v124, v107, v108);
  }

  else
  {
    v87 = v103;
    v117(v103, v119, v15);

    v88 = sub_2664DFE18();
    v89 = sub_2664E06E8();

    v90 = os_log_type_enabled(v88, v89);
    v91 = v114;
    if (v90)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v124 = v93;
      *v92 = 136446210;
      *(v92 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v124);
      _os_log_impl(&dword_26629C000, v88, v89, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x266784AD0](v93, -1, -1);
      v94 = v92;
      v51 = v115;
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    v91(v87, v15);
    v95 = v105;
    sub_2664DE428();
    (*(v51 + 56))(v95, 0, 1, v53);
    v96 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v95, &a3[v96]);
    swift_endAccess();
    v97 = &a3[*(*a3 + 120)];
    v99 = *v97;
    v98 = *(v97 + 1);
    v100 = swift_allocObject();
    v100[2] = a3;
    v100[3] = sub_2663132F4;
    v100[4] = v111;

    v99(sub_26631336C, v100);
  }
}

uint64_t sub_2663132FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26631339C(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned __int8 a9, void *a10)
{
  v130 = a2;
  v128 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v115 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = &v110 - v20;
  v129 = sub_2664DE438();
  v126 = *(v129 - 8);
  v21 = *(v126 + 64);
  MEMORY[0x28223BE20](v129);
  v111 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2664DFE38();
  v131 = *(v23 - 8);
  v24 = *(v131 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v117 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v113 = &v110 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v114 = &v110 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v112 = &v110 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v124 = &v110 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v110 - v35;
  v37 = swift_allocObject();
  *(v37 + 16) = a4;
  *(v37 + 24) = a5;
  *(v37 + 32) = a6;
  *(v37 + 40) = a7;
  *(v37 + 48) = a8;
  v118 = a9;
  *(v37 + 56) = a9;
  v127 = v37;
  *(v37 + 64) = a10;
  v38 = qword_280F914E8;
  v119 = a4;

  v121 = a5;

  v122 = a6;

  v123 = a7;

  v116 = a8;
  v120 = a10;
  v39 = a10;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  v41 = v131;
  v42 = *(v131 + 16);
  v134 = v131 + 16;
  v135 = v40;
  v133 = v42;
  v42(v36, v40, v23);

  v43 = sub_2664DFE18();
  v44 = v23;
  v45 = sub_2664E06E8();

  if (os_log_type_enabled(v43, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v138[0] = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v138);
    *(v46 + 12) = 2082;
    v139 = v128;
    LOBYTE(v140) = v130 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v48 = sub_2664E0318();
    v50 = sub_2662A320C(v48, v49, v138);

    *(v46 + 14) = v50;
    _os_log_impl(&dword_26629C000, v43, v45, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  v132 = *(v41 + 8);
  v132(v36, v44);
  v51 = v44;
  v52 = v124;
  v124 = *(a3 + 2);
  sub_2662A98AC();
  v133(v52, v135, v44);

  v53 = sub_2664DFE18();
  v54 = sub_2664E06E8();

  v55 = os_log_type_enabled(v53, v54);
  v56 = v125;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v139 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v139);
    _os_log_impl(&dword_26629C000, v53, v54, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v132(v52, v51);
  v59 = v129;
  if ((v130 & 1) == 0)
  {
    v60 = *&v128;
    v61 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v61], v56, &qword_2800737D0, qword_2664E4FD0);
    v62 = v126;
    v63 = *(v126 + 48);
    if (v63(v56, 1, v59) == 1)
    {
      v64 = v111;
      sub_2664DE378();
      v65 = v63(v56, 1, v59);
      v66 = v64;
      if (v65 != 1)
      {
        sub_2662A9238(v56, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v66 = v111;
      (*(v62 + 32))(v111, v56, v59);
    }

    sub_2664DE3C8();
    v68 = v67;
    (*(v62 + 8))(v66, v59);
    v69 = fabs(v68);
    v70 = v112;
    if (v69 > v60)
    {
      v133(v112, v135, v51);

      v71 = sub_2664DFE18();
      v72 = sub_2664E06E8();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = v51;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v139 = v75;
        *v74 = 136446722;
        *(v74 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v139);
        *(v74 + 12) = 2050;
        *(v74 + 14) = v69;
        *(v74 + 22) = 2050;
        *(v74 + 24) = *&v128;
        _os_log_impl(&dword_26629C000, v71, v72, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v74, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x266784AD0](v75, -1, -1);
        v76 = v74;
        v51 = v73;
        MEMORY[0x266784AD0](v76, -1, -1);
      }

      v132(v70, v51);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v77 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v78 = v77[1];
    v79 = v77[2];
    v80 = v77[3];
    v139 = *v77;
    v140 = v78;
    v141 = v79;
    v142 = v80;
    sub_266314294(v139);
    sub_2662AA89C();
    v81 = v114;
    v133(v114, v135, v51);

    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v137 = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v137);
      _os_log_impl(&dword_26629C000, v82, v83, "AtomicValue#computeIfAbsent [%{public}s] lock released", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x266784AD0](v85, -1, -1);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    v132(v81, v51);
    v86 = v117;
    v133(v117, v135, v51);
    v87 = v139;
    v88 = v51;

    sub_266314294(v87);
    v89 = sub_2664DFE18();
    v90 = sub_2664E06E8();

    sub_2663142F4(v87);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v137 = v92;
      *v91 = 136446466;
      *(v91 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v137);
      *(v91 + 12) = 2082;
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
      v93 = sub_2664E0318();
      v95 = sub_2662A320C(v93, v94, &v137);

      *(v91 + 14) = v95;
      _os_log_impl(&dword_26629C000, v89, v90, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v92, -1, -1);
      MEMORY[0x266784AD0](v91, -1, -1);
    }

    v132(v86, v88);
    sub_26644B010(&v139, v119, v121, v122, v123, v116, v118 & 1, v120);
    sub_2663142F4(v139);
  }

  else
  {
    v96 = v113;
    v133(v113, v135, v51);

    v97 = sub_2664DFE18();
    v98 = sub_2664E06E8();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v139 = v100;
      *v99 = 136446210;
      *(v99 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v139);
      _os_log_impl(&dword_26629C000, v97, v98, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      v101 = v100;
      v59 = v129;
      MEMORY[0x266784AD0](v101, -1, -1);
      MEMORY[0x266784AD0](v99, -1, -1);
    }

    v132(v96, v51);
    v102 = v126;
    v103 = v115;
    sub_2664DE428();
    (*(v102 + 56))(v103, 0, 1, v59);
    v104 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v103, &a3[v104]);
    swift_endAccess();
    v105 = &a3[*(*a3 + 120)];
    v107 = *v105;
    v106 = *(v105 + 1);
    v108 = swift_allocObject();
    v108[2] = a3;
    v108[3] = sub_266314264;
    v108[4] = v127;

    v107(sub_26631427C, v108);
  }
}

uint64_t sub_266314294(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2663142F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2663143A4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[9];
  v12[8] = a1[8];
  v12[9] = v5;
  v6 = a1[11];
  v12[10] = a1[10];
  v12[11] = v6;
  v7 = a1[5];
  v12[4] = a1[4];
  v12[5] = v7;
  v8 = a1[7];
  v12[6] = a1[6];
  v12[7] = v8;
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v10 = a1[3];
  v12[2] = a1[2];
  v12[3] = v10;
  return sub_26630C160(v12, v2, v3);
}

SiriAudioSupport::CoreAnalyticsResponses::FabricatedPlayCodes_optional __swiftcall CoreAnalyticsResponses.FabricatedPlayCodes.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 0xFFFFFFFFFFFFFFFALL)
  {
    v2 = ~rawValue;
  }

  else
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26631442C()
{
  result = qword_280072990;
  if (!qword_280072990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072990);
  }

  return result;
}

uint64_t sub_266314480()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](~v1);
  return sub_2664E0EB8();
}

uint64_t sub_2663144F8()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](~v1);
  return sub_2664E0EB8();
}

void AccountStoreProvider.storeAccount(forHomeUserIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() ic_sharedAccountStore];
  v6 = sub_2664DE478();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_26631472C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2662A6624;
  v9[3] = &block_descriptor_7;
  v8 = _Block_copy(v9);

  [v5 ic:v6 storeAccountForHomeUserIdentifier:v8 completion:?];
  _Block_release(v8);
}

uint64_t sub_26631469C(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = sub_2663147C4();
    v10 = &protocol witness table for ACAccount;
    *&v8 = a1;
    sub_2662A8618(&v8, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  v6 = a1;
  a3(v11, a2);
  return sub_2663149FC(v11);
}

unint64_t AccountStoreProvider.activeiTunesAccount.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  result = 0;
  if (v3)
  {
    result = sub_2663147C4();
    v5 = &protocol witness table for ACAccount;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

unint64_t sub_2663147C4()
{
  result = qword_280072998;
  if (!qword_280072998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072998);
  }

  return result;
}

void sub_266314810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() ic_sharedAccountStore];
  v6 = sub_2664DE478();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_266314A68;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2662A6624;
  v9[3] = &block_descriptor_11;
  v8 = _Block_copy(v9);

  [v5 ic:v6 storeAccountForHomeUserIdentifier:v8 completion:?];
  _Block_release(v8);
}

unint64_t sub_266314934@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  result = 0;
  if (v3)
  {
    result = sub_2663147C4();
    v5 = &protocol witness table for ACAccount;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_2663149FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729A0, qword_2664E5288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShimExperience()
{
  result = qword_2800729A8;
  if (!qword_2800729A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266314B0C()
{
  sub_266314B80();
  if (v0 <= 0x3F)
  {
    sub_2664DE268();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266314B80()
{
  if (!qword_2800729B8)
  {
    sub_2664DFCD8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800729C0, &qword_2664E52B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2800729B8);
    }
  }
}

uint64_t sub_266314C78(__int128 *a1)
{
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v69 - v5;
  v7 = sub_2664DEC48();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - v12;
  if (qword_280F90DC0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v77 = v6;
    v83 = v2;
    v13 = *(qword_280F91D00 + 16);
    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837E0];
    v76 = v7;
    v16 = MEMORY[0x266783210](v13, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    v7 = *(a1 + 2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v18 = MEMORY[0x266783210](v7, v14, v17, v15);
    v81 = v8;
    v82 = v7;
    v74 = v16;
    v84 = a1;
    if (v7)
    {
      break;
    }

LABEL_17:
    v6 = (qword_280F91D00 + 56);
    v35 = 1 << *(qword_280F91D00 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(qword_280F91D00 + 56);
    v8 = ((v35 + 63) >> 6);
    a1 = &v86;
    v78 = (v81 + 48);
    v71 = (v81 + 32);
    v70 = (v81 + 16);
    v69 = (v81 + 8);
    v81 = qword_280F91D00;

    v38 = 0;
    v7 = v83;
    v75 = v84 + 5;
    v40 = v76;
    v39 = v77;
    v79 = v8;
    v80 = v6;
LABEL_20:
    v41 = v38;
    v2 = v82;
    if (!v37)
    {
      goto LABEL_22;
    }

    do
    {
      v38 = v41;
LABEL_25:
      v42 = (*(v81 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v37)))));
      v43 = v42[1];
      v84 = *v42;
      v85 = v43;
      if (v2)
      {
        v83 = v7;
        v89 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v2, 0);
        v44 = v89;
        v45 = v75;
        v46 = v2;
        while (1)
        {
          v47 = *(v45 - 1);
          v48 = *v45;
          *&v86 = v47;
          *(&v86 + 1) = v48;
          v49 = *(v18 + 2);
          swift_bridgeObjectRetain_n();
          if (!v49)
          {
            goto LABEL_33;
          }

          v50 = sub_2662A3E98(v47, v48);
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }

          v52 = *(*(v18 + 7) + 8 * v50);
          if (!*(v52 + 16))
          {
            goto LABEL_33;
          }

          v53 = *(*(v18 + 7) + 8 * v50);

          v54 = sub_2662A3E98(v84, v85);
          if ((v55 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v52 + 56) + 32 * v54, &v87);

LABEL_34:

          v89 = v44;
          v57 = *(v44 + 16);
          v56 = *(v44 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2662FCF64((v56 > 1), v57 + 1, 1);
            v44 = v89;
          }

          *(v44 + 16) = v57 + 1;
          v58 = (v44 + 48 * v57);
          v59 = v86;
          v60 = v88;
          v58[3] = v87;
          v58[4] = v60;
          v58[2] = v59;
          v45 += 2;
          if (!--v46)
          {

            v7 = v83;
            v40 = v76;
            v39 = v77;
            if (*(v44 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v61 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v87 = 0u;
        v88 = 0u;
        goto LABEL_34;
      }

      v44 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v61 = sub_2664E0C98();
LABEL_41:
      *&v86 = v61;
      sub_266318424(v44, 1, &v86);
      if (v7)
      {
        goto LABEL_52;
      }

      v37 &= v37 - 1;
      sub_266317280(v86);

      sub_2664DEC38();

      v62 = (*v78)(v39, 1, v40);
      v2 = v82;
      v8 = v79;
      v6 = v80;
      if (v62 != 1)
      {
        v63 = v72;
        (*v71)(v72, v39, v40);
        v64 = v73;
        (*v70)(v73, v63, v40);
        v65 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v65;
        sub_26634F030(v64, v84, v85, isUniquelyReferenced_nonNull_native);

        v67 = v63;
        v8 = v79;
        v6 = v80;
        (*v69)(v67, v40);
        v74 = v86;
        goto LABEL_20;
      }

      sub_2662A9238(v39, &qword_2800729C8, &unk_2664E52E0);
      v41 = v38;
    }

    while (v37);
LABEL_22:
    while (1)
    {
      v38 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v38 >= v8)
      {

        return v74;
      }

      v37 = *&v6[8 * v38];
      ++v41;
      if (v37)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v8 = a1 + 5;
  while (1)
  {
    a1 = *(v8 - 1);
    v21 = *v8;

    v22 = sub_2664B8A70(a1, v21);
    v2 = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v18;
    v6 = v18;
    v24 = sub_2662A3E98(a1, v21);
    v25 = *(v18 + 2);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_48;
    }

    v28 = v23;
    if (*(v18 + 3) < v27)
    {
      break;
    }

    if (v2)
    {
      if (v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = &v86;
      sub_266453E1C();
      if (v28)
      {
LABEL_4:

        v18 = v86;
        v19 = *(v86 + 56);
        v20 = *(v19 + 8 * v24);
        *(v19 + 8 * v24) = v22;

        goto LABEL_5;
      }
    }

LABEL_13:
    v18 = v86;
    *(v86 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v31 = (*(v18 + 6) + 16 * v24);
    *v31 = a1;
    v31[1] = v21;
    *(*(v18 + 7) + 8 * v24) = v22;
    v32 = *(v18 + 2);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_49;
    }

    *(v18 + 2) = v34;
LABEL_5:
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v27, v2);
  v6 = v86;
  v29 = sub_2662A3E98(a1, v21);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if (v28)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2663153A0(__int128 *a1)
{
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v69 - v5;
  v7 = sub_2664DEC48();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - v12;
  if (qword_280F90A10 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v77 = v6;
    v82 = qword_280F91CF8;
    v83 = v2;
    v13 = *(qword_280F91CF8 + 16);
    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837E0];
    v76 = v7;
    v16 = MEMORY[0x266783210](v13, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    v7 = *(a1 + 2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v18 = MEMORY[0x266783210](v7, v14, v17, v15);
    v81 = v7;
    v74 = v16;
    v75 = v8;
    v84 = a1;
    if (v7)
    {
      break;
    }

LABEL_17:
    v6 = (v82 + 56);
    v35 = 1 << *(v82 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v82 + 56);
    v8 = ((v35 + 63) >> 6);
    a1 = &v86;
    v78 = (v75 + 6);
    v71 = (v75 + 4);
    v70 = (v75 + 2);
    v69 = (v75 + 1);

    v38 = 0;
    v7 = v83;
    v75 = v84 + 5;
    v40 = v76;
    v39 = v77;
    v79 = v8;
    v80 = v6;
LABEL_20:
    v41 = v38;
    v2 = v81;
    if (!v37)
    {
      goto LABEL_22;
    }

    do
    {
      v38 = v41;
LABEL_25:
      v42 = (*(v82 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v37)))));
      v43 = v42[1];
      v84 = *v42;
      v85 = v43;
      if (v2)
      {
        v83 = v7;
        v89 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v2, 0);
        v44 = v89;
        v45 = v75;
        v46 = v2;
        while (1)
        {
          v47 = *(v45 - 1);
          v48 = *v45;
          *&v86 = v47;
          *(&v86 + 1) = v48;
          v49 = *(v18 + 2);
          swift_bridgeObjectRetain_n();
          if (!v49)
          {
            goto LABEL_33;
          }

          v50 = sub_2662A3E98(v47, v48);
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }

          v52 = *(*(v18 + 7) + 8 * v50);
          if (!*(v52 + 16))
          {
            goto LABEL_33;
          }

          v53 = *(*(v18 + 7) + 8 * v50);

          v54 = sub_2662A3E98(v84, v85);
          if ((v55 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v52 + 56) + 32 * v54, &v87);

LABEL_34:

          v89 = v44;
          v57 = *(v44 + 16);
          v56 = *(v44 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2662FCF64((v56 > 1), v57 + 1, 1);
            v44 = v89;
          }

          *(v44 + 16) = v57 + 1;
          v58 = (v44 + 48 * v57);
          v59 = v86;
          v60 = v88;
          v58[3] = v87;
          v58[4] = v60;
          v58[2] = v59;
          v45 += 2;
          if (!--v46)
          {

            v7 = v83;
            v40 = v76;
            v39 = v77;
            if (*(v44 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v61 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v87 = 0u;
        v88 = 0u;
        goto LABEL_34;
      }

      v44 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v61 = sub_2664E0C98();
LABEL_41:
      *&v86 = v61;
      sub_266318424(v44, 1, &v86);
      if (v7)
      {
        goto LABEL_52;
      }

      v37 &= v37 - 1;
      sub_266317280(v86);

      sub_2664DEC38();

      v62 = (*v78)(v39, 1, v40);
      v6 = v80;
      v2 = v81;
      v8 = v79;
      if (v62 != 1)
      {
        v63 = v72;
        (*v71)(v72, v39, v40);
        v64 = v73;
        (*v70)(v73, v63, v40);
        v65 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v65;
        sub_26634F030(v64, v84, v85, isUniquelyReferenced_nonNull_native);

        v67 = v63;
        v8 = v79;
        v6 = v80;
        (*v69)(v67, v40);
        v74 = v86;
        goto LABEL_20;
      }

      sub_2662A9238(v39, &qword_2800729C8, &unk_2664E52E0);
      v41 = v38;
    }

    while (v37);
LABEL_22:
    while (1)
    {
      v38 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v38 >= v8)
      {

        return v74;
      }

      v37 = *&v6[8 * v38];
      ++v41;
      if (v37)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v8 = a1 + 5;
  while (1)
  {
    v22 = *(v8 - 1);
    v21 = *v8;

    a1 = sub_2663F9890();
    v2 = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v18;
    v6 = v18;
    v24 = sub_2662A3E98(v22, v21);
    v25 = *(v18 + 2);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_48;
    }

    v28 = v23;
    if (*(v18 + 3) < v27)
    {
      break;
    }

    if (v2)
    {
      if (v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = &v86;
      sub_266453E1C();
      if (v28)
      {
LABEL_4:

        v18 = v86;
        v19 = *(v86 + 56);
        v20 = *(v19 + 8 * v24);
        *(v19 + 8 * v24) = a1;

        goto LABEL_5;
      }
    }

LABEL_13:
    v18 = v86;
    *(v86 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v31 = (*(v18 + 6) + 16 * v24);
    *v31 = v22;
    v31[1] = v21;
    *(*(v18 + 7) + 8 * v24) = a1;
    v32 = *(v18 + 2);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_49;
    }

    *(v18 + 2) = v34;
LABEL_5:
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v27, v2);
  v6 = v86;
  v29 = sub_2662A3E98(v22, v21);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if (v28)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266315AB8(__int128 *a1, uint64_t a2)
{
  v86 = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v70 - v6;
  v8 = sub_2664DEC48();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v70 - v13;
  if (qword_280F90918 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v78 = v7;
    v83 = qword_280F91CE8;
    v84 = v3;
    v14 = *(qword_280F91CE8 + 16);
    v15 = MEMORY[0x277D837D0];
    v16 = MEMORY[0x277D837E0];
    v77 = v8;
    v17 = MEMORY[0x266783210](v14, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
    v8 = *(a1 + 2);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v19 = MEMORY[0x266783210](v8, v15, v18, v16);
    v82 = v8;
    v75 = v17;
    v85 = a1;
    v76 = v9;
    if (v8)
    {
      break;
    }

LABEL_17:
    v7 = (v83 + 56);
    v36 = 1 << *(v83 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v83 + 56);
    v9 = ((v36 + 63) >> 6);
    a1 = &v87;
    v79 = (v76 + 6);
    v72 = (v76 + 4);
    v71 = (v76 + 2);
    v70 = (v76 + 1);

    v39 = 0;
    v8 = v84;
    v76 = v85 + 5;
    v41 = v77;
    v40 = v78;
    v80 = v9;
    v81 = v7;
LABEL_20:
    v42 = v39;
    v3 = v82;
    if (!v38)
    {
      goto LABEL_22;
    }

    do
    {
      v39 = v42;
LABEL_25:
      v43 = (*(v83 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v38)))));
      v44 = v43[1];
      v85 = *v43;
      v86 = v44;
      if (v3)
      {
        v84 = v8;
        v90 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v3, 0);
        v45 = v90;
        v46 = v76;
        v47 = v3;
        while (1)
        {
          v48 = *(v46 - 1);
          v49 = *v46;
          *&v87 = v48;
          *(&v87 + 1) = v49;
          v50 = *(v19 + 2);
          swift_bridgeObjectRetain_n();
          if (!v50)
          {
            goto LABEL_33;
          }

          v51 = sub_2662A3E98(v48, v49);
          if ((v52 & 1) == 0)
          {
            goto LABEL_33;
          }

          v53 = *(*(v19 + 7) + 8 * v51);
          if (!*(v53 + 16))
          {
            goto LABEL_33;
          }

          v54 = *(*(v19 + 7) + 8 * v51);

          v55 = sub_2662A3E98(v85, v86);
          if ((v56 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v53 + 56) + 32 * v55, &v88);

LABEL_34:

          v90 = v45;
          v58 = *(v45 + 16);
          v57 = *(v45 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_2662FCF64((v57 > 1), v58 + 1, 1);
            v45 = v90;
          }

          *(v45 + 16) = v58 + 1;
          v59 = (v45 + 48 * v58);
          v60 = v87;
          v61 = v89;
          v59[3] = v88;
          v59[4] = v61;
          v59[2] = v60;
          v46 += 2;
          if (!--v47)
          {

            v8 = v84;
            v41 = v77;
            v40 = v78;
            if (*(v45 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v62 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v88 = 0u;
        v89 = 0u;
        goto LABEL_34;
      }

      v45 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v62 = sub_2664E0C98();
LABEL_41:
      *&v87 = v62;
      sub_266318424(v45, 1, &v87);
      if (v8)
      {
        goto LABEL_52;
      }

      v38 &= v38 - 1;
      sub_266317280(v87);

      sub_2664DEC38();

      v63 = (*v79)(v40, 1, v41);
      v7 = v81;
      v3 = v82;
      v9 = v80;
      if (v63 != 1)
      {
        v64 = v73;
        (*v72)(v73, v40, v41);
        v65 = v74;
        (*v71)(v74, v64, v41);
        v66 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v66;
        sub_26634F030(v65, v85, v86, isUniquelyReferenced_nonNull_native);

        v68 = v64;
        v9 = v80;
        v7 = v81;
        (*v70)(v68, v41);
        v75 = v87;
        goto LABEL_20;
      }

      sub_2662A9238(v40, &qword_2800729C8, &unk_2664E52E0);
      v42 = v39;
    }

    while (v38);
LABEL_22:
    while (1)
    {
      v39 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v39 >= v9)
      {

        return v75;
      }

      v38 = *&v7[8 * v39];
      ++v42;
      if (v38)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v9 = a1 + 5;
  while (1)
  {
    a1 = *(v9 - 1);
    v22 = *v9;

    v23 = sub_266469114(a1, v22, v86);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = v19;
    v7 = v19;
    v25 = sub_2662A3E98(a1, v22);
    v26 = *(v19 + 2);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_48;
    }

    v29 = v24;
    if (*(v19 + 3) < v28)
    {
      break;
    }

    if (v3)
    {
      if (v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = &v87;
      sub_266453E1C();
      if (v29)
      {
LABEL_4:

        v19 = v87;
        v20 = *(v87 + 56);
        v21 = *(v20 + 8 * v25);
        *(v20 + 8 * v25) = v23;

        goto LABEL_5;
      }
    }

LABEL_13:
    v19 = v87;
    *(v87 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v32 = (*(v19 + 6) + 16 * v25);
    *v32 = a1;
    v32[1] = v22;
    *(*(v19 + 7) + 8 * v25) = v23;
    v33 = *(v19 + 2);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_49;
    }

    *(v19 + 2) = v35;
LABEL_5:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v28, v3);
  v7 = v87;
  v30 = sub_2662A3E98(a1, v22);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    if (v29)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266316204(uint64_t a1, int a2)
{
  LODWORD(v90) = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v74 - v6;
  v8 = sub_2664DEC48();
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v74 - v12;
  if (qword_280F8FD88 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v82 = v7;
    v88 = v3;
    v87 = qword_280F91C68;
    v13 = *(qword_280F91C68 + 16);
    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837E0];
    v81 = v8;
    v79 = MEMORY[0x266783210](v13, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
    v16 = *(a1 + 16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v18 = MEMORY[0x266783210](v16, v14, v17, v15);
    v83 = v16;
    v80 = a1;
    if (v16)
    {
      break;
    }

LABEL_19:
    v3 = v87 + 56;
    v43 = 1 << *(v87 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v87 + 56);
    v7 = ((v43 + 63) >> 6);
    v84 = (v78 + 48);
    v75 = (v78 + 32);
    v74 = (v78 + 16);
    v78 += 8;

    v46 = 0;
    v80 += 5;
    v8 = v88;
    a1 = v82;
    v47 = v81;
    v86 = v3;
    v85 = v7;
LABEL_22:
    v48 = v46;
    v49 = v83;
    if (!v45)
    {
      goto LABEL_24;
    }

    do
    {
      v46 = v48;
LABEL_27:
      v50 = (*(v87 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v45)))));
      v51 = v50[1];
      v89 = *v50;
      v90 = v51;
      if (v49)
      {
        v88 = v8;
        v91 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v49, 0);
        v52 = v91;
        v53 = v80;
        while (1)
        {
          v54 = *(v53 - 1);
          v55 = *v53;
          *&v92 = v54;
          *(&v92 + 1) = v55;
          v56 = *(v18 + 2);
          swift_bridgeObjectRetain_n();
          if (!v56)
          {
            goto LABEL_35;
          }

          v57 = sub_2662A3E98(v54, v55);
          if ((v58 & 1) == 0)
          {
            goto LABEL_35;
          }

          v59 = *(*(v18 + 7) + 8 * v57);
          if (!*(v59 + 16))
          {
            goto LABEL_35;
          }

          v60 = *(*(v18 + 7) + 8 * v57);

          v61 = sub_2662A3E98(v89, v90);
          if ((v62 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v59 + 56) + 32 * v61, &v93);

LABEL_36:

          v91 = v52;
          v64 = *(v52 + 16);
          v63 = *(v52 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2662FCF64((v63 > 1), v64 + 1, 1);
            v52 = v91;
          }

          *(v52 + 16) = v64 + 1;
          v65 = (v52 + 48 * v64);
          v66 = v92;
          v67 = v94;
          v65[3] = v93;
          v65[4] = v67;
          v65[2] = v66;
          v53 += 2;
          if (!--v49)
          {

            v8 = v88;
            a1 = v82;
            v47 = v81;
            v49 = v83;
            if (*(v52 + 16))
            {
              goto LABEL_40;
            }

LABEL_42:
            v68 = MEMORY[0x277D84F98];
            goto LABEL_43;
          }
        }

LABEL_35:
        v93 = 0u;
        v94 = 0u;
        goto LABEL_36;
      }

      v52 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_42;
      }

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v68 = sub_2664E0C98();
LABEL_43:
      *&v92 = v68;
      sub_266318424(v52, 1, &v92);
      if (v8)
      {
        goto LABEL_56;
      }

      v45 &= v45 - 1;
      sub_266317280(v92);

      sub_2664DEC38();

      if ((*v84)(a1, 1, v47) != 1)
      {
        v69 = v76;
        (*v75)(v76, a1, v47);
        v70 = v77;
        (*v74)(v77, v69, v47);
        v71 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v92 = v71;
        sub_26634F030(v70, v89, v90, isUniquelyReferenced_nonNull_native);

        (*v78)(v69, v47);
        v79 = v92;
        v3 = v86;
        v7 = v85;
        goto LABEL_22;
      }

      sub_2662A9238(a1, &qword_2800729C8, &unk_2664E52E0);
      v48 = v46;
      v3 = v86;
      v7 = v85;
    }

    while (v45);
LABEL_24:
    while (1)
    {
      v46 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v46 >= v7)
      {

        return v79;
      }

      v45 = *(v3 + 8 * v46);
      ++v48;
      if (v45)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
  v19 = (a1 + 40);
  v3 = v16;
  while (1)
  {
    v8 = *(v19 - 1);
    v22 = *v19;
    v95[0] = 0x6979616C50776F6ELL;
    v95[1] = 0xEF6574617453676ELL;
    *&v92 = 0x6574617473;
    *(&v92 + 1) = 0xE500000000000000;
    LODWORD(v91) = v90;

    v23 = sub_2664E0D48();
    MEMORY[0x2667833B0](v23);

    v97 = MEMORY[0x277D837D0];
    v96 = v92;
    v24 = sub_2664E0C98();

    sub_2662A7224(v95, &v92, &unk_2800734F0, &unk_2664E3660);
    v25 = *(&v92 + 1);
    a1 = v92;
    v7 = v24;
    v26 = sub_2662A3E98(v92, *(&v92 + 1));
    if (v27)
    {
      goto LABEL_50;
    }

    *&v24[8 * (v26 >> 6) + 64] |= 1 << v26;
    v28 = (*(v24 + 6) + 16 * v26);
    *v28 = a1;
    v28[1] = v25;
    sub_266318804(&v93, (*(v24 + 7) + 32 * v26));
    v29 = *(v24 + 2);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_51;
    }

    *(v24 + 2) = v31;

    sub_2662A9238(v95, &unk_2800734F0, &unk_2664E3660);
    a1 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v18;
    v7 = v18;
    v33 = sub_2662A3E98(v8, v22);
    v34 = *(v18 + 2);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_52;
    }

    v37 = v32;
    if (*(v18 + 3) < v36)
    {
      break;
    }

    if (a1)
    {
      if (v32)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = &v92;
      sub_266453E1C();
      if (v37)
      {
LABEL_4:

        v18 = v92;
        v20 = *(v92 + 56);
        v21 = *(v20 + 8 * v33);
        *(v20 + 8 * v33) = v24;

        goto LABEL_5;
      }
    }

LABEL_15:
    v18 = v92;
    *(v92 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v40 = (*(v18 + 6) + 16 * v33);
    *v40 = v8;
    v40[1] = v22;
    *(*(v18 + 7) + 8 * v33) = v24;
    v41 = *(v18 + 2);
    v30 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v30)
    {
      goto LABEL_53;
    }

    *(v18 + 2) = v42;
LABEL_5:
    v19 += 2;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  sub_2664508A8(v36, a1);
  v7 = v92;
  v38 = sub_2662A3E98(v8, v22);
  if ((v37 & 1) == (v39 & 1))
  {
    v33 = v38;
    if (v37)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_56:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266316B18(int64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v78 - v8;
  v89 = 0;
  v9 = sub_2664DEC48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v78 - v14;
  v15 = *(a3 + 16);
  v94 = a2;
  v82 = (a3 + 16);
  v81 = v15;
  v16 = *((v15)(a2, a3) + 16);

  v17 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D837E0];
  v88 = v9;
  v19 = MEMORY[0x266783210](v16, MEMORY[0x277D837D0], v9, MEMORY[0x277D837E0]);
  v20 = *(a1 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
  v22 = MEMORY[0x266783210](v20, v17, v21, v18);
  v86 = v20;
  v87 = a1;
  v83 = v19;
  v84 = v10;
  if (v20)
  {
    v91 = *(a3 + 32);
    v92 = a3 + 32;
    v23 = (a1 + 40);
    v90 = a3;
    do
    {
      v26 = *(v23 - 1);
      v27 = *v23;

      v28 = (v91)(v26, v27, v94, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v95 = v22;
      v31 = sub_2662A3E98(v26, v27);
      v32 = v22[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_47;
      }

      v35 = v30;
      if (v22[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v30)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_266453E1C();
          if (v35)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_2664508A8(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_2662A3E98(v26, v27);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_49;
        }

        v31 = v36;
        if (v35)
        {
LABEL_3:

          v22 = v95;
          v24 = *(v95 + 56);
          v25 = *(v24 + 8 * v31);
          *(v24 + 8 * v31) = v28;

          goto LABEL_4;
        }
      }

      v22 = v95;
      *(v95 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (v22[6] + 16 * v31);
      *v38 = v26;
      v38[1] = v27;
      *(v22[7] + 8 * v31) = v28;
      v39 = v22[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_48;
      }

      v22[2] = v41;
LABEL_4:
      v23 += 2;
      --v20;
      a3 = v90;
    }

    while (v20);
  }

  v42 = v81();
  v43 = 0;
  v44 = v42 + 56;
  v45 = 1 << *(v42 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v42 + 56);
  v48 = (v45 + 63) >> 6;
  v91 = (v84 + 48);
  v92 = v42;
  v82 = (v84 + 32);
  v81 = (v84 + 16);
  v78 = (v84 + 8);
  v84 = v87 + 40;
  v49 = v89;
  v50 = v85;
  v87 = v48;
  v90 = v42 + 56;
LABEL_19:
  v51 = v43;
  v52 = v86;
  if (!v47)
  {
    goto LABEL_21;
  }

  do
  {
    v43 = v51;
LABEL_24:
    v53 = (*(v92 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v47)))));
    v54 = v53[1];
    v93 = *v53;
    v94 = v54;
    if (v52)
    {
      v89 = v49;
      v98 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      sub_2662FCF64(0, v52, 0);
      v55 = v98;
      v56 = v84;
      while (1)
      {
        v57 = *(v56 - 1);
        v58 = *v56;
        *&v95 = v57;
        *(&v95 + 1) = v58;
        v59 = v22[2];
        swift_bridgeObjectRetain_n();
        if (!v59)
        {
          goto LABEL_32;
        }

        v60 = sub_2662A3E98(v57, v58);
        if ((v61 & 1) == 0)
        {
          goto LABEL_32;
        }

        v62 = *(v22[7] + 8 * v60);
        if (!*(v62 + 16))
        {
          goto LABEL_32;
        }

        v63 = *(v22[7] + 8 * v60);

        v64 = sub_2662A3E98(v93, v94);
        if ((v65 & 1) == 0)
        {
          break;
        }

        sub_2662A01E8(*(v62 + 56) + 32 * v64, &v96);

LABEL_33:

        v98 = v55;
        v67 = *(v55 + 16);
        v66 = *(v55 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_2662FCF64((v66 > 1), v67 + 1, 1);
          v55 = v98;
        }

        *(v55 + 16) = v67 + 1;
        v68 = (v55 + 48 * v67);
        v69 = v95;
        v70 = v97;
        v68[3] = v96;
        v68[4] = v70;
        v68[2] = v69;
        v56 += 2;
        if (!--v52)
        {

          v49 = v89;
          v50 = v85;
          v52 = v86;
          if (*(v55 + 16))
          {
            goto LABEL_37;
          }

LABEL_39:
          v71 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

LABEL_32:
      v96 = 0u;
      v97 = 0u;
      goto LABEL_33;
    }

    v55 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_39;
    }

LABEL_37:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
    v71 = sub_2664E0C98();
LABEL_40:
    *&v95 = v71;
    sub_266318424(v55, 1, &v95);
    if (v49)
    {
      goto LABEL_50;
    }

    v47 &= v47 - 1;
    sub_266317280(v95);

    sub_2664DEC38();

    if ((*v91)(v50, 1, v88) != 1)
    {
      v72 = v79;
      v73 = v88;
      (*v82)(v79, v50, v88);
      v74 = v80;
      (*v81)(v80, v72, v73);
      v75 = v83;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v95 = v75;
      sub_26634F030(v74, v93, v94, v76);

      (*v78)(v72, v73);
      v83 = v95;
      v44 = v90;
      v48 = v87;
      goto LABEL_19;
    }

    sub_2662A9238(v50, &qword_2800729C8, &unk_2664E52E0);
    v51 = v43;
    v44 = v90;
    v48 = v87;
  }

  while (v47);
LABEL_21:
  while (1)
  {
    v43 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v43 >= v48)
    {

      return v83;
    }

    v47 = *(v44 + 8 * v43);
    ++v51;
    if (v47)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_2664E0DD8();
  __break(1u);
LABEL_50:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_266317280(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
    v1 = sub_2664E0C98();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_2662A7224(*(a1 + 56) + 32 * v14, &v30, &unk_280074250, &unk_2664E3680);
        v28 = v17;
        v29 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
        swift_dynamicCast();
        sub_266318804(&v24, v26);
        sub_266318804(v26, v27);
        sub_266318804(v27, &v25);
        result = sub_2662A3E98(v17, v16);
        if (v18)
        {
          v8 = (v1[6] + 16 * result);
          v9 = v8[1];
          *v8 = v17;
          v8[1] = v16;
          v10 = result;

          v11 = (v1[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_266318804(&v25, v11);
          v7 = v12;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v1[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_266318804(&v25, (v1[7] + 32 * result));
          v20 = v1[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v1[2] = v22;
          v7 = v12;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_26631750C(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
  v2 = *(*(v46 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v46);
  v45 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - v5;
  v47 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E8, &qword_2664E5310);
    v6 = sub_2664E0C98();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = v47 + 64;
  v8 = 1 << *(v47 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v47 + 64);
  v11 = (v8 + 63) >> 6;
  v41 = v6 + 8;

  v13 = 0;
  v43 = v6;
  v42 = v7;
  while (v10)
  {
    v18 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v47 + 56);
    v22 = (*(v47 + 48) + 16 * v20);
    v24 = *v22;
    v48 = v22[1];
    v23 = v48;
    v25 = sub_2664DF398();
    v26 = *(v25 - 8);
    v27 = v21 + *(v26 + 72) * v20;
    v28 = v46;
    v29 = v44;
    (*(v26 + 16))(&v44[*(v46 + 48)], v27, v25);
    *v29 = v24;
    v29[1] = v23;
    v30 = v29;
    v31 = v45;
    sub_266319B8C(v30, v45, &qword_2800729E0, &qword_2664E5308);
    v32 = *(v28 + 48);
    v33 = *v31;
    v34 = v31[1];
    v50 = v25;
    v51 = &protocol witness table for HistoryStats;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(v26 + 32))(boxed_opaque_existential_1, v31 + v32, v25);
    sub_2662A8618(&v49, v53);
    sub_2662A8618(v53, v54);
    sub_2662A8618(v54, &v52);

    v6 = v43;
    result = sub_2662A3E98(v33, v34);
    if (v36)
    {
      v14 = (v6[6] + 16 * result);
      v15 = v14[1];
      *v14 = v33;
      v14[1] = v34;
      v16 = result;

      v17 = (v6[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      result = sub_2662A8618(&v52, v17);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v6[6] + 16 * result);
      *v37 = v33;
      v37[1] = v34;
      result = sub_2662A8618(&v52, v6[7] + 40 * result);
      v38 = v6[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v6[2] = v40;
    }

    v13 = v18;
    v7 = v42;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v18);
    ++v13;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2663178D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729F0, &qword_2664E5318);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_2662A01E8(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_266318804((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_266318804(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_266318804(v31, v32);
    v16 = *(v2 + 40);
    result = sub_2664E0A98();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_266318804(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_266317B9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v27 = v8 >> 6;

    v28 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v33 >= v27)
      {
LABEL_39:

        return v2;
      }

      v7 = *(v4 + 8 * v33);
      ++v28;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v35 = v34 | (v33 << 6);
          v36 = *(*(a1 + 48) + 8 * v35);
          sub_2662A01E8(*(a1 + 56) + 32 * v35, v44 + 8);
          *&v44[0] = v36;
          v49 = v44[0];
          v50 = v44[1];
          v51 = v45;
          type metadata accessor for CFString(0);
          v37 = v36;
          swift_dynamicCast();
          sub_266318804((&v49 + 8), (v46 + 8));
          v38 = *&v46[0];
          sub_266318804((v46 + 8), (v47 + 8));
          sub_266318804((v47 + 8), v43);
          sub_266318804(v43, v47);
          result = sub_26634DD28(v38);
          if (v39)
          {
            v29 = *(v2 + 48);
            v30 = *(v29 + 8 * result);
            *(v29 + 8 * result) = v38;
            v31 = result;

            v32 = (*(v2 + 56) + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1Tm(v32);
            result = sub_266318804(v47, v32);
            v28 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_43;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v38;
            result = sub_266318804(v47, (*(v2 + 56) + 32 * result));
            v40 = *(v2 + 16);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_44;
            }

            *(v2 + 16) = v42;
            v28 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v33 = v28;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_2662A01E8(*(a1 + 56) + 32 * v15, &v49 + 8);
      *&v49 = v16;
      v47[0] = v49;
      v47[1] = v50;
      v48 = v51;
      *&v43[0] = v16;
      type metadata accessor for CFString(0);
      v17 = v16;
      swift_dynamicCast();
      sub_266318804((v47 + 8), (v46 + 8));
      v18 = *&v46[0];
      sub_266318804((v46 + 8), (v44 + 8));
      sub_266318804((v44 + 8), v46);
      v19 = *(v2 + 40);
      sub_2664E0E68();
      sub_2664E0E88();
      if (v18)
      {
        sub_266318878();
        sub_2664DF658();
      }

      result = sub_2664E0EB8();
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v10 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v18;
      result = sub_266318804(v46, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_39;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_266318040(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729F0, &qword_2664E5318);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_2662A01E8(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    swift_dynamicCast();
    sub_266318804((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_266318804(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_266318804(v31, v32);
    v16 = *(v2 + 40);
    result = sub_2664E0A98();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_266318804(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_266318320(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_2663153A0(a1);
}

uint64_t sub_2663183E0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_266314C78(a1);
}

void sub_266318424(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_2662A7224(a1 + 32, &v51, &qword_280072880, &unk_2664E4EE0);
  v8 = v51;
  v7 = v52;
  v49 = v51;
  v50 = v52;
  v47 = v53;
  v48 = v54;
  v9 = *a3;
  v10 = sub_2662A3E98(v51, v52);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2664505E0(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_2662A3E98(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_2664E0DD8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_266453C68();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v55 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2662A9238(&v47, &unk_280074250, &unk_2664E3680);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  v24 = (v22[7] + 32 * v10);
  v25 = v48;
  *v24 = v47;
  v24[1] = v25;
  v26 = v22[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v14)
  {
    v22[2] = v27;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v28 = a1 + 80;
    v29 = 1;
    while (v29 < *(a1 + 16))
    {
      sub_2662A7224(v28, &v51, &qword_280072880, &unk_2664E4EE0);
      v31 = v51;
      v30 = v52;
      v49 = v51;
      v50 = v52;
      v47 = v53;
      v48 = v54;
      v32 = *a3;
      v33 = sub_2662A3E98(v51, v52);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v14 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v14)
      {
        goto LABEL_23;
      }

      v38 = v34;
      if (v32[3] < v37)
      {
        sub_2664505E0(v37, 1);
        v39 = *a3;
        v33 = sub_2662A3E98(v31, v30);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v31;
      v42[1] = v30;
      v43 = (v41[7] + 32 * v33);
      v44 = v48;
      *v43 = v47;
      v43[1] = v44;
      v45 = v41[2];
      v14 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v29;
      v41[2] = v46;
      v28 += 48;
      if (v4 == v29)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}