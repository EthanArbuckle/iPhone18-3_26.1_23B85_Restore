uint64_t sub_22703F364()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v4 = *v1;
  v2[145] = v0;

  v5 = v2[143];
  if (v0)
  {
    v6 = v2[142];

    v7 = sub_227041F38;
  }

  else
  {

    v7 = sub_22703F4A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t sub_22703F4A8()
{
  v1 = v0[128];
  v2 = v0[88];
  v3 = v0[87];
  v190 = *(v2 + *(v3 + 48));
  v4 = v0[89];
  v5 = *(v2 + *(v3 + 64));
  (*(v0[90] + 32))(v0[91]);
  sub_22766A630();

  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[136];
  v10 = v0[128];
  v11 = v0[121];
  v192 = v0;
  v12 = v0[120];
  v170 = v5;
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = v9;
    v15 = swift_slowAlloc();
    v198 = v15;
    *v13 = 136315138;
    v16 = sub_22766BEC0();
    v18 = sub_226E97AE8(v16, v17, &v198);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226E8E000, v6, v7, "Fetched archivedSessionWorkoutCounts: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v14(v10, v12);
  }

  else
  {

    v9(v10, v12);
  }

  v19 = v192[29];
  v22 = *(v19 + 56);
  v21 = v19 + 56;
  v20 = v22;
  v23 = -1;
  v24 = -1 << *(v192[29] + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & v20;
  v26 = (63 - v24) >> 6;
  v184 = v192[29];
  v187 = v192[84];
  v176 = (v187 + 8);

  v28 = 0;
  v29 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v171 = v26;
  v173 = v21;
  while (v25)
  {
    v34 = v28;
LABEL_14:
    v35 = v192[86];
    v36 = v192[85];
    v37 = v192[83];
    (*(v187 + 16))(v35, *(v184 + 48) + *(v187 + 72) * (__clz(__rbit64(v25)) | (v34 << 6)), v37);
    (*(v187 + 32))(v36, v35, v37);
    v38 = sub_227668460();
    v40 = v39;
    v41 = sub_227668470();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198 = v30;
    result = sub_226E92000(v38, v40);
    v44 = v30[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_90;
    }

    v48 = v43;
    if (v30[3] < v47)
    {
      sub_226FE6DC0(v47, isUniquelyReferenced_nonNull_native);
      result = sub_226E92000(v38, v40);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_84;
      }

LABEL_19:
      if (v48)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v53 = result;
    sub_226FF2400();
    result = v53;
    if (v48)
    {
LABEL_20:
      v50 = result;

      v30 = v198;
      v51 = v198[7];
      v52 = *(v51 + 8 * v50);
      *(v51 + 8 * v50) = v41;

      goto LABEL_24;
    }

LABEL_22:
    v30 = v198;
    v198[(result >> 6) + 8] |= 1 << result;
    v54 = (v30[6] + 16 * result);
    *v54 = v38;
    v54[1] = v40;
    *(v30[7] + 8 * result) = v41;
    v55 = v30[2];
    v46 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v46)
    {
      goto LABEL_98;
    }

    v30[2] = v56;
LABEL_24:
    v57 = v192[85];
    v58 = sub_227668460();
    v60 = v59;
    v61 = sub_227668440();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v198 = v29;
    result = sub_226E92000(v58, v60);
    v64 = v29[2];
    v65 = (v63 & 1) == 0;
    v46 = __OFADD__(v64, v65);
    v66 = v64 + v65;
    if (v46)
    {
      goto LABEL_91;
    }

    v67 = v63;
    if (v29[3] >= v66)
    {
      if ((v62 & 1) == 0)
      {
        v74 = result;
        sub_226FF2400();
        result = v74;
      }
    }

    else
    {
      sub_226FE6DC0(v66, v62);
      result = sub_226E92000(v58, v60);
      if ((v67 & 1) != (v68 & 1))
      {
LABEL_84:

        return sub_22766D220();
      }
    }

    v25 &= v25 - 1;
    v69 = v192[85];
    v70 = v192[83];
    if (v67)
    {
      v31 = result;

      v29 = v198;
      v32 = v198[7];
      v33 = *(v32 + 8 * v31);
      *(v32 + 8 * v31) = v61;

      result = (*v176)(v69, v70);
    }

    else
    {
      v29 = v198;
      v198[(result >> 6) + 8] |= 1 << result;
      v71 = (v29[6] + 16 * result);
      *v71 = v58;
      v71[1] = v60;
      *(v29[7] + 8 * result) = v61;
      result = (*v176)(v69, v70);
      v72 = v29[2];
      v46 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v46)
      {
        goto LABEL_99;
      }

      v29[2] = v73;
    }

    v28 = v34;
    v26 = v171;
    v21 = v173;
  }

  while (1)
  {
    v34 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v34 >= v26)
    {
      break;
    }

    v25 = *(v21 + 8 * v34);
    ++v28;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  v75 = v192[137];
  v76 = v192[101];
  v185 = v76;
  v188 = v192[138];
  v77 = v192[97];
  v174 = v75;
  v166 = v192[80];
  v78 = v192[41];
  v168 = v192[40];
  v179 = v192[34];
  v182 = v192[91];
  v177 = v192[33];
  v79 = v192[29];

  v80 = v78[21];
  __swift_project_boxed_opaque_existential_0(v78 + 17, v78[20]);
  v167 = sub_22766A2C0();
  sub_226E91B50((v78 + 7), (v192 + 2));
  v75(v76, v168, v77);
  v169 = sub_227663E90();
  sub_226E91B50((v78 + 22), (v192 + 7));
  v81 = v192[5];
  v82 = __swift_mutable_project_boxed_opaque_existential_1((v192 + 2), v81);
  v83 = *(v81 - 8);
  v84 = *(v83 + 64) + 15;
  v85 = swift_task_alloc();
  (*(v83 + 16))(v85, v82, v81);
  v86 = *v85;
  v87 = type metadata accessor for CatalogDataStore();
  v192[15] = v87;
  v192[16] = &off_283A99B78;
  v192[12] = v86;
  v88 = type metadata accessor for WorkoutPlanContentCurator();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  v91 = swift_allocObject();
  v192[146] = v91;
  v92 = __swift_mutable_project_boxed_opaque_existential_1((v192 + 12), v87);
  v93 = *(v87 - 8);
  v94 = *(v93 + 64) + 15;
  v95 = swift_task_alloc();
  (*(v93 + 16))(v95, v92, v87);
  v96 = *v95;
  v192[20] = v87;
  v192[21] = &off_283A99B78;
  v192[17] = v96;
  *(v91 + 16) = v167;
  *(v91 + 24) = v170;
  sub_226E91B50((v192 + 17), v91 + 32);
  v174(v91 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_configuration, v185, v77);
  *(v91 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_filterDurations) = v169;
  sub_226E91B50((v192 + 7), v91 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore);
  *(v91 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres) = v30;
  *(v91 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredTrainers) = v29;
  v183 = v91;
  v97 = (v91 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap);
  *v97 = v177;
  v97[1] = v179;
  v98 = v190 + 56;
  v99 = -1;
  v100 = -1 << *(v190 + 32);
  if (-v100 < 64)
  {
    v99 = ~(-1 << -v100);
  }

  v101 = v99 & *(v190 + 56);
  v102 = (63 - v100) >> 6;

  v103 = 0;
  v104 = MEMORY[0x277D84F90];
  while (v101)
  {
LABEL_42:
    v106 = v192[82];
    v107 = v192[79];
    (*(v166 + 16))(v106, *(v190 + 48) + *(v166 + 72) * (__clz(__rbit64(v101)) | (v103 << 6)), v107);
    v108 = sub_227666AE0();
    result = (*(v166 + 8))(v106, v107);
    v109 = *(v108 + 16);
    v110 = *(v104 + 16);
    v111 = v110 + v109;
    if (__OFADD__(v110, v109))
    {
      goto LABEL_92;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v111 > *(v104 + 24) >> 1)
    {
      if (v110 <= v111)
      {
        v112 = v110 + v109;
      }

      else
      {
        v112 = v110;
      }

      result = sub_226EB3F78(result, v112, 1, v104);
      v104 = result;
    }

    v101 &= v101 - 1;
    if (*(v108 + 16))
    {
      if ((*(v104 + 24) >> 1) - *(v104 + 16) < v109)
      {
        goto LABEL_96;
      }

      swift_arrayInitWithCopy();

      if (v109)
      {
        v113 = *(v104 + 16);
        v46 = __OFADD__(v113, v109);
        v114 = v113 + v109;
        if (v46)
        {
          goto LABEL_100;
        }

        *(v104 + 16) = v114;
      }
    }

    else
    {

      if (v109)
      {
        goto LABEL_93;
      }
    }
  }

  while (1)
  {
    v105 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      break;
    }

    if (v105 >= v102)
    {

      v180 = sub_226F3E6A8(v104);

      v115 = -1;
      v116 = -1 << *(v190 + 32);
      if (-v116 < 64)
      {
        v115 = ~(-1 << -v116);
      }

      v117 = v115 & *(v190 + 56);
      v118 = (63 - v116) >> 6;

      v119 = 0;
      v120 = MEMORY[0x277D84F90];
      while (v117)
      {
LABEL_63:
        v122 = v192[81];
        v123 = v192[79];
        (*(v166 + 16))(v122, *(v190 + 48) + *(v166 + 72) * (__clz(__rbit64(v117)) | (v119 << 6)), v123);
        v124 = sub_227666AA0();
        result = (*(v166 + 8))(v122, v123);
        v125 = *(v124 + 16);
        v126 = *(v120 + 16);
        v127 = v126 + v125;
        if (__OFADD__(v126, v125))
        {
          goto LABEL_94;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v127 > *(v120 + 24) >> 1)
        {
          if (v126 <= v127)
          {
            v128 = v126 + v125;
          }

          else
          {
            v128 = v126;
          }

          result = sub_226EB3F78(result, v128, 1, v120);
          v120 = result;
        }

        v117 &= v117 - 1;
        if (*(v124 + 16))
        {
          if ((*(v120 + 24) >> 1) - *(v120 + 16) < v125)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v125)
          {
            v129 = *(v120 + 16);
            v46 = __OFADD__(v129, v125);
            v130 = v129 + v125;
            if (v46)
            {
              goto LABEL_101;
            }

            *(v120 + 16) = v130;
          }
        }

        else
        {

          if (v125)
          {
            goto LABEL_95;
          }
        }
      }

      while (1)
      {
        v121 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_89;
        }

        if (v121 >= v118)
        {

          v131 = sub_226F3E6A8(v120);

          v132 = *(v180 + 16);
          if (v132)
          {
            v133 = *(v180 + 16);
            v134 = sub_22766C380();
            *(v134 + 16) = v132;
            bzero((v134 + 32), 8 * v132);
          }

          else
          {
            v134 = MEMORY[0x277D84F90];
          }

          v135 = sub_22704DA3C(v180, v134);

          *(v183 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies) = v135;
          v136 = *(v131 + 16);
          if (v136)
          {
            v137 = *(v131 + 16);
            v138 = sub_22766C380();
            *(v138 + 16) = v136;
            bzero((v138 + 32), 8 * v136);
          }

          else
          {
            v138 = MEMORY[0x277D84F90];
          }

          v139 = v192[138];
          v140 = v192[137];
          v186 = v192[102];
          v141 = v192[101];
          v178 = v192[118];
          v181 = v192[100];
          v142 = v192[98];
          v143 = v192[97];
          v144 = v192[40];
          v172 = v192[78];
          v175 = v192[41];
          v191 = *(v192 + 187);
          v145 = sub_22704DA3C(v131, v138);

          *(v183 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies) = v145;
          v146 = MEMORY[0x277D84F90];
          *(v183 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog) = sub_227149394(MEMORY[0x277D84F90]);
          v147 = sub_2271494D8(v146);
          __swift_destroy_boxed_opaque_existential_0(v192 + 7);
          v189 = *(v142 + 8);
          v189(v141, v143);
          __swift_destroy_boxed_opaque_existential_0(v192 + 17);
          *(v183 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup) = v147;
          __swift_destroy_boxed_opaque_existential_0(v192 + 12);

          __swift_destroy_boxed_opaque_existential_0(v192 + 2);

          v192[147] = sub_22703D9B8(v172);
          sub_2276627C0();
          v140(v181, v144, v143);
          v148 = type metadata accessor for WorkoutPlanContentUtils();
          v149 = *(v148 + 48);
          v150 = *(v148 + 52);
          v151 = swift_allocObject();
          v192[148] = v151;
          v140(v151 + OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_configuration, v181, v143);
          v140(v186, v181, v143);
          v152 = type metadata accessor for WorkoutPlanObjectiveUtils();
          v153 = *(v152 + 48);
          v154 = *(v152 + 52);
          v155 = swift_allocObject();
          v140(v155 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration, v186, v143);
          v156 = MEMORY[0x277D84F90];
          *(v155 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache) = sub_227149864(MEMORY[0x277D84F90]);
          *(v155 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache) = sub_227149954(v156);
          *(v155 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache) = sub_227149864(v156);
          v157 = sub_227149864(v156);
          v189(v181, v143);
          v189(v186, v143);
          *(v155 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache) = v157;
          *(v151 + OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_objectiveUtils) = v155;
          v158 = swift_task_alloc();
          v192[149] = v158;
          *v158 = v192;
          v158[1] = sub_2270403EC;
          v159 = v192[142];
          v160 = v192[75];
          v161 = v192[37];
          v162 = v192[31];
          v163 = v192[32];
          v164 = v192[29];
          v165 = v192[30];
          v196 = v192[118];
          v197 = v192[78];
          v195 = v192[39];
          v194 = v192[38];

          return sub_2274DF054(v160, v183, v164, v165, v162, v163, v159, v161);
        }

        v117 = *(v98 + 8 * v121);
        ++v119;
        if (v117)
        {
          v119 = v121;
          goto LABEL_63;
        }
      }
    }

    v101 = *(v98 + 8 * v105);
    ++v103;
    if (v101)
    {
      v103 = v105;
      goto LABEL_42;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_2270403EC(double a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1192);
  v6 = *v2;
  *(v4 + 1200) = a1;
  *(v4 + 1208) = v1;

  v7 = *(v3 + 1136);

  if (v1)
  {
    v8 = sub_227042248;
  }

  else
  {
    v8 = sub_227040524;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227040524()
{
  v378 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 904);
  v5 = *(v0 + 880);
  v358 = *(v0 + 568);
  v365 = *(v0 + 312);
  v371 = *(v0 + 600);
  v6 = *(v0 + 288);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  (*(v0 + 1056))(*(v0 + 936), *(v0 + 944), *(v0 + 920));
  v2(v4, v6, v5);

  sub_227665C50();
  if (sub_227663880())
  {
    v10 = *(v0 + 1016);
    sub_22766A630();
    v11 = sub_22766B380();
    v12 = sub_22766C890();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v12, "Empty plan detected", v13, 2u);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    v14 = *(v0 + 1016);
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v372 = *(v0 + 600);
    v17 = *(v0 + 584);
    v359 = *(v0 + 1184);
    v366 = *(v0 + 576);
    v350 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);

    (*(v15 + 8))(v14, v16);
    v22 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
    v23 = swift_allocError();
    (*(v20 + 104))(v24, *MEMORY[0x277D511A0], v21);
    swift_willThrow();

    (*(v18 + 8))(v350, v19);
    (*(v17 + 8))(v372, v366);
    v25 = *(v0 + 408);
    v26 = *(v0 + 360);
    (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
    *(v0 + 192) = v23;
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if (swift_dynamicCast())
    {
      v373 = v22;
      v28 = *(v0 + 984);
      v30 = *(v0 + 400);
      v29 = *(v0 + 408);
      v31 = *(v0 + 392);
      v32 = *(v0 + 360);
      v33 = *(v0 + 368);

      v341 = *(v33 + 32);
      v341(v30, v29, v32);
      sub_22766A630();
      v34 = *(v33 + 16);
      v34(v31, v30, v32);
      v35 = sub_22766B380();
      v351 = sub_22766C890();
      v36 = os_log_type_enabled(v35, v351);
      v37 = *(v0 + 984);
      v38 = *(v0 + 968);
      v39 = *(v0 + 960);
      v40 = *(v0 + 392);
      v42 = *(v0 + 360);
      v41 = *(v0 + 368);
      v360 = v34;
      if (v36)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v377[0] = v44;
        *v43 = 136315138;
        v329 = v37;
        v335 = v39;
        v45 = MEMORY[0x22AA995D0](v42, v373);
        v47 = v46;
        (*(v41 + 8))(v40, v42);
        v48 = sub_226E97AE8(v45, v47, v377);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_226E8E000, v35, v351, "Failed to create plan with error %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);

        v49 = *(v38 + 8);
        v50 = v329;
        v51 = v335;
      }

      else
      {

        (*(v41 + 8))(v40, v42);
        v49 = *(v38 + 8);
        v50 = v37;
        v51 = v39;
      }

      v134 = v49;
      v49(v50, v51);
      v135 = *(v0 + 1128);
      v136 = *(v0 + 1120);
      v137 = *(v0 + 752);
      v138 = *(v0 + 736);
      v139 = *(v0 + 544);
      v140 = *(v0 + 536);
      v141 = *(v0 + 528);
      v142 = *(*(v0 + 328) + 216);
      sub_227662740();
      sub_2276626F0();
      v136(v137, v138);
      (*(v140 + 16))(v139, v142 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v141);
      sub_227669730();
      (*(v140 + 8))(v139, v141);
      if (*(v0 + 185) == 1)
      {
        v285 = *(v0 + 1176);
        v266 = *(v0 + 1120);
        v270 = *(v0 + 1128);
        v143 = *(v0 + 1112);
        v204 = *(v0 + 1056);
        v207 = *(v0 + 1064);
        v211 = *(v0 + 928);
        v201 = *(v0 + 920);
        v277 = *(v0 + 832);
        v245 = *(v0 + 768);
        v262 = *(v0 + 736);
        v144 = *(v0 + 584);
        v273 = *(v0 + 576);
        v281 = *(v0 + 520);
        v312 = *(v0 + 512);
        v317 = *(v0 + 504);
        v355 = (v0 + 488);
        v145 = *(v0 + 480);
        v302 = *(v0 + 496);
        v307 = *(v0 + 488);
        v146 = *(v0 + 472);
        v253 = *(v0 + 464);
        v147 = *(v0 + 456);
        v326 = *(v0 + 448);
        v215 = *(v0 + 440);
        v233 = *(v0 + 432);
        v237 = *(v0 + 424);
        v333 = *(v0 + 400);
        v339 = *(v0 + 416);
        v293 = *(v0 + 384);
        v249 = *(v0 + 187) & 1;
        v148 = *(v0 + 368);
        v289 = *(v0 + 376);
        v149 = *(v0 + 344);
        v195 = *(v0 + 336);
        v197 = *(v0 + 352);
        v150 = *(v0 + 320);
        v258 = *(v0 + 312);
        v241 = *(v0 + 304);
        v199 = *(v0 + 296);
        v219 = *(v0 + 288);
        v229 = *(v0 + 280);
        v191 = *(v0 + 256);
        v192 = *(v0 + 360);
        v151 = *(v0 + 224);
        v193 = *(v0 + 232);
        v152 = *(v0 + 216);
        sub_227667240();
        sub_227667ED0();
        (*(v146 + 8))(v145, v253);
        (*(v144 + 56))(v147, 1, 1, v273);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E18, &qword_227676668);
        v153 = *(v148 + 72);
        v254 = (*(v148 + 80) + 32) & ~*(v148 + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_227670CD0;
        v360(v154 + v254, v333, v192);
        v204(v326, v191, v201);
        (*(v211 + 56))(v326, 0, 1, v201);
        (*(v149 + 104))(v197, *MEMORY[0x277CC9830], v195);

        sub_227662870();
        (*(v149 + 8))(v197, v195);
        sub_2276634F0();
        (*(v233 + 8))(v215, v237);
        sub_2276626F0();
        v266(v245, v262);
        v155 = WorkoutPlanSchedule.metricScaffold.getter();
        sub_2273326C4(v155);

        sub_226E93170(v229, v277, &qword_27D7B9E10, &qword_227676660);
        sub_227664CD0();
        sub_22766C490();
        v156 = sub_22766C4B0();
        (*(*(v156 - 8) + 56))(v339, 0, 1, v156);
        v327 = swift_allocObject();
        swift_weakInit();
        v360(v293, v333, v192);
        (*(v302 + 16))(v312, v281, v307);
        v157 = (v289 + v254 + 7) & 0xFFFFFFFFFFFFFFF8;
        v158 = (v157 + *(v302 + 80) + 8) & ~*(v302 + 80);
        v159 = swift_allocObject();
        *(v159 + 16) = 0;
        *(v159 + 24) = 0;
        v341(v159 + v254, v293, v192);
        *(v159 + v157) = v327;
        v160 = v159 + v158;
        v161 = (v0 + 520);
        (*(v302 + 32))(v160, v312, v307);
        sub_2272CA940(0, 0, v339, &unk_227676670, v159);

        v162 = *(v302 + 8);
      }

      else
      {
        v355 = (v0 + 960);
        v161 = (v0 + 976);
        v163 = *(v0 + 976);
        sub_22766A630();
        v164 = sub_22766B380();
        v165 = sub_22766C8B0();
        v166 = os_log_type_enabled(v164, v165);
        v167 = *(v0 + 968);
        if (v166)
        {
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&dword_226E8E000, v164, v165, "Metrics reporting disabled", v168, 2u);
          MEMORY[0x22AA9A450](v168, -1, -1);
        }

        v162 = v134;
      }

      v169 = *v161;
      v170 = *v355;
      v171 = *(v0 + 1168);
      v172 = *(v0 + 720);
      v348 = *(v0 + 712);
      v356 = *(v0 + 728);
      v173 = *(v0 + 624);
      v174 = *(v0 + 616);
      v175 = *(v0 + 608);
      v176 = *(v0 + 400);
      v178 = *(v0 + 360);
      v177 = *(v0 + 368);
      v162(v169, v170);
      swift_allocError();
      v360(v179, v176, v178);
      swift_willThrow();

      (*(v177 + 8))(v176, v178);
      (*(v174 + 8))(v173, v175);
      (*(v172 + 8))(v356, v348);
    }

    else
    {
      v86 = *(v0 + 1168);
      v87 = *(v0 + 728);
      v88 = *(v0 + 720);
      v89 = *(v0 + 712);
      v90 = *(v0 + 624);
      v91 = *(v0 + 616);
      v92 = *(v0 + 608);

      (*(v91 + 8))(v90, v92);
      (*(v88 + 8))(v87, v89);
    }

    v180 = *(v0 + 1048);
    v181 = *(v0 + 1040);
    v182 = *(v0 + 1032);
    v183 = *(v0 + 1024);
    v184 = *(v0 + 1016);
    v185 = *(v0 + 1008);
    v186 = *(v0 + 1000);
    v187 = *(v0 + 992);
    v188 = *(v0 + 984);
    v189 = *(v0 + 976);
    v202 = *(v0 + 952);
    v205 = *(v0 + 944);
    v208 = *(v0 + 936);
    v212 = *(v0 + 912);
    v216 = *(v0 + 904);
    v220 = *(v0 + 872);
    v223 = *(v0 + 848);
    v226 = *(v0 + 840);
    v230 = *(v0 + 832);
    v234 = *(v0 + 824);
    v238 = *(v0 + 816);
    v242 = *(v0 + 808);
    v246 = *(v0 + 800);
    v250 = *(v0 + 768);
    v255 = *(v0 + 760);
    v259 = *(v0 + 752);
    v263 = *(v0 + 728);
    v267 = *(v0 + 704);
    v271 = *(v0 + 688);
    v274 = *(v0 + 680);
    v278 = *(v0 + 656);
    v282 = *(v0 + 648);
    v286 = *(v0 + 624);
    v290 = *(v0 + 600);
    v294 = *(v0 + 592);
    v297 = *(v0 + 568);
    v303 = *(v0 + 544);
    v308 = *(v0 + 520);
    v313 = *(v0 + 512);
    v318 = *(v0 + 480);
    v322 = *(v0 + 456);
    v328 = *(v0 + 448);
    v334 = *(v0 + 440);
    v340 = *(v0 + 416);
    v344 = *(v0 + 408);
    v349 = *(v0 + 400);
    v357 = *(v0 + 392);
    v364 = *(v0 + 384);
    v370 = *(v0 + 352);

    v133 = *(v0 + 8);
  }

  else
  {
    v52 = *(v0 + 1128);
    v53 = *(v0 + 1120);
    v54 = *(v0 + 760);
    v55 = *(v0 + 736);
    v56 = *(v0 + 544);
    v57 = *(v0 + 536);
    v58 = *(v0 + 528);
    v59 = *(*(v0 + 328) + 216);
    sub_227662740();
    sub_2276626F0();
    v61 = v60;
    v53(v54, v55);
    (*(v57 + 16))(v56, v59 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v58);
    sub_227669730();
    (*(v57 + 8))(v56, v58);
    if (*(v0 + 186) == 1)
    {
      v62 = *(v0 + 1008);
      sub_22766A630();
      v63 = sub_22766B380();
      v64 = sub_22766C8B0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_226E8E000, v63, v64, "Reporting plan creation event to AMP", v65, 2u);
        MEMORY[0x22AA9A450](v65, -1, -1);
      }

      v66 = *(v0 + 1200);
      v298 = *(v0 + 1176);
      v283 = *(v0 + 1120);
      v287 = *(v0 + 1128);
      v67 = *(v0 + 1112);
      v319 = *(v0 + 1072);
      v323 = *(v0 + 1080);
      v264 = *(v0 + 1008);
      v68 = *(v0 + 968);
      v213 = *(v0 + 960);
      v247 = *(v0 + 928);
      v251 = *(v0 + 920);
      v330 = *(v0 + 888);
      v336 = *(v0 + 896);
      v367 = *(v0 + 904);
      v374 = *(v0 + 880);
      v291 = *(v0 + 832);
      v256 = *(v0 + 768);
      v275 = *(v0 + 736);
      v69 = *(v0 + 584);
      v224 = *(v0 + 576);
      v227 = *(v0 + 600);
      v345 = *(v0 + 520);
      v361 = *(v0 + 512);
      v304 = *(v0 + 496);
      v309 = *(v0 + 488);
      v314 = *(v0 + 504);
      v71 = *(v0 + 472);
      v70 = *(v0 + 480);
      v209 = *(v0 + 464);
      v217 = *(v0 + 456);
      v72 = *(v0 + 440);
      v231 = *(v0 + 448);
      v239 = *(v0 + 432);
      v243 = *(v0 + 424);
      v352 = *(v0 + 416);
      v73 = v63;
      v74 = *(v0 + 320);
      v295 = *(v0 + 312);
      v75 = *(v0 + 187);
      v279 = *(v0 + 304);
      v235 = *(v0 + 296);
      v260 = *(v0 + 288);
      v268 = *(v0 + 280);
      v76 = *(v0 + 224);
      v221 = *(v0 + 232);
      v77 = *(v0 + 216);

      (*(v68 + 8))(v264, v213);
      sub_227667240();
      sub_227667ED0();
      (*(v71 + 8))(v70, v209);
      (*(v69 + 16))(v217, v227, v224);
      (*(v69 + 56))(v217, 0, 1, v224);

      sub_2276637C0();
      (*(v247 + 56))(v231, 0, 1, v251);
      sub_227662890();
      sub_2276634F0();
      (*(v239 + 8))(v72, v243);
      sub_2276626F0();
      v283(v256, v275);
      v78 = WorkoutPlanSchedule.metricScaffold.getter();
      sub_2273326C4(v78);

      sub_226E93170(v268, v291, &qword_27D7B9E10, &qword_227676660);
      sub_227664CD0();
      sub_22766C490();
      v79 = sub_22766C4B0();
      (*(*(v79 - 8) + 56))(v352, 0, 1, v79);
      v299 = swift_allocObject();
      swift_weakInit();
      (*(v304 + 16))(v361, v345, v309);
      v319(v367, v260, v374);
      v80 = (*(v304 + 80) + 40) & ~*(v304 + 80);
      v81 = (v314 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
      v84 = (*(v330 + 80) + v83 + 8) & ~*(v330 + 80);
      v85 = swift_allocObject();
      *(v85 + 2) = 0;
      *(v85 + 3) = 0;
      *(v85 + 4) = v299;
      (*(v304 + 32))(&v85[v80], v361, v309);
      *&v85[v81] = v61;
      *&v85[v82] = v67;
      *&v85[v83] = v66;
      (*(v330 + 32))(&v85[v84], v367, v374);
      sub_2272CA940(0, 0, v352, &unk_227676678, v85);

      (*(v304 + 8))(v345, v309);
    }

    else
    {
      v93 = *(v0 + 1000);
      sub_22766A630();
      v94 = sub_22766B380();
      v95 = sub_22766C8B0();
      v96 = os_log_type_enabled(v94, v95);
      v97 = *(v0 + 1000);
      v98 = *(v0 + 968);
      v99 = *(v0 + 960);
      if (v96)
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_226E8E000, v94, v95, "Metrics reporting disabled", v100, 2u);
        MEMORY[0x22AA9A450](v100, -1, -1);
      }

      (*(v98 + 8))(v97, v99);
    }

    v101 = *(v0 + 992);
    v102 = *(v0 + 600);
    v103 = *(v0 + 592);
    v104 = *(v0 + 584);
    v105 = *(v0 + 576);
    sub_22766A630();
    (*(v104 + 16))(v103, v102, v105);
    v106 = sub_22766B380();
    v324 = sub_22766C8B0();
    v337 = v106;
    v107 = os_log_type_enabled(v106, v324);
    v331 = *(v0 + 1168);
    v108 = *(v0 + 968);
    v342 = *(v0 + 960);
    v346 = *(v0 + 992);
    v109 = *(v0 + 928);
    v110 = *(v0 + 728);
    v111 = *(v0 + 720);
    v112 = *(v0 + 712);
    v368 = *(v0 + 944);
    v375 = *(v0 + 624);
    v113 = *(v0 + 616);
    v353 = *(v0 + 920);
    v362 = *(v0 + 608);
    v114 = *(v0 + 592);
    v115 = *(v0 + 584);
    v116 = *(v0 + 576);
    if (v107)
    {
      v310 = *(v0 + 1184);
      v320 = *(v0 + 728);
      v117 = swift_slowAlloc();
      v315 = v112;
      v118 = swift_slowAlloc();
      v377[0] = v118;
      *v117 = 136315138;
      sub_226EABFDC(&qword_27D7B9DF8, MEMORY[0x277D50180]);
      v300 = v113;
      v305 = v111;
      v119 = sub_22766D140();
      v121 = v120;
      (*(v115 + 8))(v114, v116);
      v122 = sub_226E97AE8(v119, v121, v377);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_226E8E000, v337, v324, "Created workout plan: %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x22AA9A450](v118, -1, -1);
      MEMORY[0x22AA9A450](v117, -1, -1);

      (*(v108 + 8))(v346, v342);
      (*(v109 + 8))(v368, v353);
      (*(v300 + 8))(v375, v362);
      (*(v305 + 8))(v320, v315);
    }

    else
    {

      (*(v115 + 8))(v114, v116);
      (*(v108 + 8))(v346, v342);
      (*(v109 + 8))(v368, v353);
      (*(v113 + 8))(v375, v362);
      (*(v111 + 8))(v110, v112);
    }

    v123 = *(v0 + 1048);
    v124 = *(v0 + 1040);
    v125 = *(v0 + 1032);
    v126 = *(v0 + 1024);
    v127 = *(v0 + 1016);
    v194 = *(v0 + 1008);
    v196 = *(v0 + 1000);
    v198 = *(v0 + 992);
    v200 = *(v0 + 984);
    v203 = *(v0 + 976);
    v206 = *(v0 + 952);
    v210 = *(v0 + 944);
    v214 = *(v0 + 936);
    v218 = *(v0 + 912);
    v222 = *(v0 + 904);
    v225 = *(v0 + 872);
    v228 = *(v0 + 848);
    v232 = *(v0 + 840);
    v236 = *(v0 + 832);
    v240 = *(v0 + 824);
    v244 = *(v0 + 816);
    v248 = *(v0 + 808);
    v252 = *(v0 + 800);
    v257 = *(v0 + 768);
    v261 = *(v0 + 760);
    v269 = *(v0 + 752);
    v272 = *(v0 + 728);
    v276 = *(v0 + 704);
    v280 = *(v0 + 688);
    v284 = *(v0 + 680);
    v288 = *(v0 + 656);
    v292 = *(v0 + 648);
    v296 = *(v0 + 624);
    v265 = *(v0 + 600);
    v128 = *(v0 + 576);
    v129 = *(v0 + 568);
    v130 = *(v0 + 560);
    v131 = *(v0 + 552);
    v301 = *(v0 + 592);
    v306 = *(v0 + 544);
    v311 = *(v0 + 520);
    v316 = *(v0 + 512);
    v321 = *(v0 + 480);
    v325 = *(v0 + 456);
    v332 = *(v0 + 448);
    v338 = *(v0 + 440);
    v343 = *(v0 + 416);
    v347 = *(v0 + 408);
    v354 = *(v0 + 400);
    v363 = *(v0 + 392);
    v369 = *(v0 + 384);
    v376 = *(v0 + 352);
    v132 = *(v0 + 208);
    (*(*(v0 + 584) + 32))(*(v0 + 200));
    (*(v130 + 32))(v132, v129, v131);

    v133 = *(v0 + 8);
  }

  return v133();
}

uint64_t sub_227041F38()
{
  v52 = v0[145];
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[126];
  v7 = v0[125];
  v8 = v0[124];
  v9 = v0[123];
  v10 = v0[122];
  v13 = v0[119];
  v14 = v0[118];
  v15 = v0[117];
  v16 = v0[114];
  v17 = v0[113];
  v18 = v0[109];
  v19 = v0[106];
  v20 = v0[105];
  v21 = v0[104];
  v22 = v0[103];
  v23 = v0[102];
  v24 = v0[101];
  v25 = v0[100];
  v26 = v0[96];
  v27 = v0[95];
  v28 = v0[94];
  v29 = v0[91];
  v30 = v0[88];
  v31 = v0[86];
  v32 = v0[85];
  v33 = v0[82];
  v34 = v0[81];
  v35 = v0[78];
  v36 = v0[75];
  v37 = v0[74];
  v38 = v0[71];
  v39 = v0[68];
  v40 = v0[65];
  v41 = v0[64];
  v42 = v0[60];
  v43 = v0[57];
  v44 = v0[56];
  v45 = v0[55];
  v46 = v0[52];
  v47 = v0[51];
  v48 = v0[50];
  v49 = v0[49];
  v50 = v0[48];
  v51 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227042248()
{
  v182 = v0;
  v1 = *(v0 + 1184);

  v2 = *(v0 + 1208);
  v3 = *(v0 + 408);
  v4 = *(v0 + 360);
  (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
  *(v0 + 192) = v2;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 984);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v9 = *(v0 + 392);
    v11 = *(v0 + 360);
    v10 = *(v0 + 368);

    v172 = *(v10 + 32);
    v172(v8, v7, v11);
    sub_22766A630();
    v12 = *(v10 + 16);
    v12(v9, v8, v11);
    v13 = sub_22766B380();
    v169 = sub_22766C890();
    v14 = os_log_type_enabled(v13, v169);
    v15 = *(v0 + 984);
    v16 = *(v0 + 968);
    v17 = *(v0 + 960);
    v18 = *(v0 + 392);
    v20 = *(v0 + 360);
    v19 = *(v0 + 368);
    v179 = v12;
    if (v14)
    {
      v166 = *(v0 + 984);
      v21 = swift_slowAlloc();
      v162 = v17;
      v22 = swift_slowAlloc();
      v181 = v22;
      *v21 = 136315138;
      v23 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
      v24 = MEMORY[0x22AA995D0](v20, v23);
      v26 = v25;
      (*(v19 + 8))(v18, v20);
      v27 = sub_226E97AE8(v24, v26, &v181);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v13, v169, "Failed to create plan with error %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);

      v28 = *(v16 + 8);
      v30 = v162;
      v29 = v166;
    }

    else
    {

      (*(v19 + 8))(v18, v20);
      v28 = *(v16 + 8);
      v29 = v15;
      v30 = v17;
    }

    v38 = v28;
    v28(v29, v30);
    v39 = *(v0 + 1128);
    v40 = *(v0 + 1120);
    v41 = *(v0 + 752);
    v42 = *(v0 + 736);
    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    v46 = *(*(v0 + 328) + 216);
    sub_227662740();
    sub_2276626F0();
    v40(v41, v42);
    (*(v44 + 16))(v43, v46 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v45);
    sub_227669730();
    (*(v44 + 8))(v43, v45);
    if (*(v0 + 185) == 1)
    {
      v147 = *(v0 + 1176);
      v136 = *(v0 + 1120);
      v138 = *(v0 + 1128);
      v47 = *(v0 + 1112);
      v106 = *(v0 + 1056);
      v108 = *(v0 + 1064);
      v110 = *(v0 + 928);
      v104 = *(v0 + 920);
      v125 = *(v0 + 768);
      v134 = *(v0 + 736);
      v48 = *(v0 + 584);
      v140 = *(v0 + 576);
      v142 = *(v0 + 832);
      v144 = *(v0 + 520);
      v157 = *(v0 + 512);
      v159 = *(v0 + 504);
      v176 = (v0 + 488);
      v49 = *(v0 + 480);
      v153 = *(v0 + 496);
      v155 = *(v0 + 488);
      v50 = *(v0 + 472);
      v129 = *(v0 + 464);
      v96 = *(v0 + 456);
      v163 = *(v0 + 448);
      v112 = *(v0 + 440);
      v119 = *(v0 + 432);
      v121 = *(v0 + 424);
      v167 = *(v0 + 400);
      v170 = *(v0 + 416);
      v151 = *(v0 + 384);
      v127 = *(v0 + 187) & 1;
      v149 = *(v0 + 376);
      v51 = *(v0 + 368);
      v53 = *(v0 + 344);
      v52 = *(v0 + 352);
      v54 = *(v0 + 320);
      v132 = *(v0 + 312);
      v123 = *(v0 + 304);
      v100 = *(v0 + 336);
      v102 = *(v0 + 296);
      v114 = *(v0 + 288);
      v117 = *(v0 + 280);
      v97 = *(v0 + 256);
      v98 = *(v0 + 360);
      v55 = *(v0 + 224);
      v99 = *(v0 + 232);
      v56 = *(v0 + 216);
      sub_227667240();
      sub_227667ED0();
      (*(v50 + 8))(v49, v129);
      (*(v48 + 56))(v96, 1, 1, v140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E18, &qword_227676668);
      v57 = *(v51 + 72);
      v130 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_227670CD0;
      v179(v58 + v130, v167, v98);
      v106(v163, v97, v104);
      (*(v110 + 56))(v163, 0, 1, v104);
      (*(v53 + 104))(v52, *MEMORY[0x277CC9830], v100);

      sub_227662870();
      (*(v53 + 8))(v52, v100);
      sub_2276634F0();
      (*(v119 + 8))(v112, v121);
      sub_2276626F0();
      v136(v125, v134);
      v59 = WorkoutPlanSchedule.metricScaffold.getter();
      sub_2273326C4(v59);

      sub_226E93170(v117, v142, &qword_27D7B9E10, &qword_227676660);
      sub_227664CD0();
      sub_22766C490();
      v60 = sub_22766C4B0();
      (*(*(v60 - 8) + 56))(v170, 0, 1, v60);
      v164 = swift_allocObject();
      swift_weakInit();
      v179(v151, v167, v98);
      (*(v153 + 16))(v157, v144, v155);
      v61 = (v149 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = (v61 + *(v153 + 80) + 8) & ~*(v153 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      v172(v63 + v130, v151, v98);
      *(v63 + v61) = v164;
      v64 = v63 + v62;
      v65 = (v0 + 520);
      (*(v153 + 32))(v64, v157, v155);
      sub_2272CA940(0, 0, v170, &unk_227676670, v63);

      v66 = *(v153 + 8);
    }

    else
    {
      v176 = (v0 + 960);
      v65 = (v0 + 976);
      v67 = *(v0 + 976);
      sub_22766A630();
      v68 = sub_22766B380();
      v69 = sub_22766C8B0();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 968);
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_226E8E000, v68, v69, "Metrics reporting disabled", v72, 2u);
        MEMORY[0x22AA9A450](v72, -1, -1);
      }

      v66 = v38;
    }

    v73 = *v65;
    v74 = *v176;
    v75 = *(v0 + 1168);
    v76 = *(v0 + 720);
    v174 = *(v0 + 712);
    v177 = *(v0 + 728);
    v77 = *(v0 + 624);
    v78 = *(v0 + 616);
    v79 = *(v0 + 608);
    v80 = *(v0 + 400);
    v82 = *(v0 + 360);
    v81 = *(v0 + 368);
    v66(v73, v74);
    sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    v179(v83, v80, v82);
    swift_willThrow();

    (*(v81 + 8))(v80, v82);
    (*(v78 + 8))(v77, v79);
    (*(v76 + 8))(v177, v174);
  }

  else
  {
    v31 = *(v0 + 1168);
    v32 = *(v0 + 728);
    v33 = *(v0 + 720);
    v34 = *(v0 + 712);
    v35 = *(v0 + 624);
    v36 = *(v0 + 616);
    v37 = *(v0 + 608);

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
  }

  v84 = *(v0 + 1048);
  v85 = *(v0 + 1040);
  v86 = *(v0 + 1032);
  v87 = *(v0 + 1024);
  v88 = *(v0 + 1016);
  v89 = *(v0 + 1008);
  v90 = *(v0 + 1000);
  v91 = *(v0 + 992);
  v92 = *(v0 + 984);
  v93 = *(v0 + 976);
  v101 = *(v0 + 952);
  v103 = *(v0 + 944);
  v105 = *(v0 + 936);
  v107 = *(v0 + 912);
  v109 = *(v0 + 904);
  v111 = *(v0 + 872);
  v113 = *(v0 + 848);
  v115 = *(v0 + 840);
  v116 = *(v0 + 832);
  v118 = *(v0 + 824);
  v120 = *(v0 + 816);
  v122 = *(v0 + 808);
  v124 = *(v0 + 800);
  v126 = *(v0 + 768);
  v128 = *(v0 + 760);
  v131 = *(v0 + 752);
  v133 = *(v0 + 728);
  v135 = *(v0 + 704);
  v137 = *(v0 + 688);
  v139 = *(v0 + 680);
  v141 = *(v0 + 656);
  v143 = *(v0 + 648);
  v145 = *(v0 + 624);
  v146 = *(v0 + 600);
  v148 = *(v0 + 592);
  v150 = *(v0 + 568);
  v152 = *(v0 + 544);
  v154 = *(v0 + 520);
  v156 = *(v0 + 512);
  v158 = *(v0 + 480);
  v160 = *(v0 + 456);
  v161 = *(v0 + 448);
  v165 = *(v0 + 440);
  v168 = *(v0 + 416);
  v171 = *(v0 + 408);
  v173 = *(v0 + 400);
  v175 = *(v0 + 392);
  v178 = *(v0 + 384);
  v180 = *(v0 + 352);

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_227042F18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v39 = a5;
  v37 = a6;
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  result = sub_226EAF48C(a1, v15);
  if (!v6)
  {
    v36 = a1;
    v18 = *(a3 + 16);
    if (v18)
    {
      v31 = v12;
      v32 = v11;
      v33 = 0;
      v19 = sub_2274CD844(v18, 0);
      v20 = sub_2274CF838(v38, v19 + 4, v18, a3);
      v34 = v38[4];
      v35 = v20;

      result = sub_226EBB21C();
      if (v35 != v18)
      {
        __break(1u);
        return result;
      }

      v11 = v32;
      v6 = v33;
      v12 = v31;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v21 = v39;
    v22 = a4;
    v23 = v36;
    sub_22704ED88(v19, v22, v39, v36);
    if (v6)
    {
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      v25 = v24;

      v26 = sub_22704E488(v21, v23);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E08, &qword_227676658);
      v28 = v37;
      v29 = *(v27 + 48);
      v30 = *(v27 + 64);
      result = (*(v12 + 32))(v37, v15, v11);
      *(v28 + v29) = v25;
      *(v28 + v30) = v26;
    }
  }

  return result;
}

uint64_t sub_227043188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 136) = v45;
  *(v9 + 144) = v8;
  *(v9 + 120) = v44;
  *(v9 + 27) = v43;
  *(v9 + 104) = v42;
  *(v9 + 26) = a8;
  *(v9 + 88) = a6;
  *(v9 + 96) = a7;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 48) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  *(v9 + 160) = v11;
  v12 = *(v11 - 8);
  *(v9 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v14 = sub_227664EC0();
  *(v9 + 184) = v14;
  v15 = *(v14 - 8);
  *(v9 + 192) = v15;
  *(v9 + 200) = *(v15 + 64);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  v17 = sub_227667100();
  *(v9 + 248) = v17;
  v18 = *(v17 - 8);
  *(v9 + 256) = v18;
  *(v9 + 264) = *(v18 + 64);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v19 = sub_2276681F0();
  *(v9 + 296) = v19;
  v20 = *(v19 - 8);
  *(v9 + 304) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  v22 = sub_227665C20();
  *(v9 + 320) = v22;
  v23 = *(v22 - 8);
  *(v9 + 328) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  v25 = *(*(type metadata accessor for WorkoutPlanGenerationScaffold() - 8) + 64) + 15;
  *(v9 + 344) = swift_task_alloc();
  v26 = sub_227664440();
  *(v9 + 352) = v26;
  v27 = *(v26 - 8);
  *(v9 + 360) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();
  v29 = sub_227668240();
  *(v9 + 376) = v29;
  v30 = *(v29 - 8);
  *(v9 + 384) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v32 = sub_227662750();
  *(v9 + 416) = v32;
  v33 = *(v32 - 8);
  *(v9 + 424) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  v35 = sub_227667370();
  *(v9 + 448) = v35;
  v36 = *(v35 - 8);
  *(v9 + 456) = v36;
  *(v9 + 464) = *(v36 + 64);
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  v37 = sub_22766B390();
  *(v9 + 496) = v37;
  v38 = *(v37 - 8);
  *(v9 + 504) = v38;
  v39 = *(v38 + 64) + 15;
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22704375C, 0, 0);
}

unint64_t sub_22704375C()
{
  v160 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_22766A630();

  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v156 = *(v0 + 584);
    v150 = *(v0 + 504);
    v153 = *(v0 + 496);
    v144 = *(v0 + 120);
    v147 = *(v0 + 128);
    v143 = *(v0 + 27);
    v141 = *(v0 + 112);
    v136 = *(v0 + 376);
    v139 = *(v0 + 104);
    v7 = *(v0 + 26);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v159[0] = v12;
    *v11 = 136316674;
    *(v11 + 4) = sub_226E97AE8(v10, v8, v159);
    *(v11 + 12) = 2080;
    v13 = sub_227668770();
    v15 = sub_226E97AE8(v13, v14, v159);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B8950, MEMORY[0x277D533E0]);
    v16 = sub_22766C610();
    v18 = sub_226E97AE8(v16, v17, v159);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2048;
    *(v11 + 34) = v139;
    *(v11 + 42) = 2080;
    *(v0 + 16) = v141;
    *(v0 + 24) = v143 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_22704F918();
    v19 = sub_227663B60();
    v21 = sub_226E97AE8(v19, v20, v159);

    *(v11 + 44) = v21;
    *(v11 + 52) = 2048;
    *(v11 + 54) = v144;
    *(v11 + 62) = 2080;
    sub_226F4895C();
    v22 = sub_22766C610();
    v24 = sub_226E97AE8(v22, v23, v159);

    *(v11 + 64) = v24;
    _os_log_impl(&dword_226E8E000, v5, v6, "Making WorkoutPlanSchedule algorithmVersion: %s, scoringMode: %s modalitySelections: %s, totalDailyDuration: %ld, variation: %s, weekCount: %ld, weekdays: %s", v11, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v25 = *(v150 + 8);
    v25(v156, v153);
  }

  else
  {
    v26 = *(v0 + 584);
    v27 = *(v0 + 496);
    v28 = *(v0 + 504);

    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  *(v0 + 592) = v25;
  v29 = *(v0 + 576);
  v31 = *(v0 + 88);
  v30 = *(v0 + 96);
  sub_22766A630();

  v32 = sub_22766B380();
  v33 = sub_22766C8B0();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 576);
  v36 = *(v0 + 496);
  v37 = *(v0 + 504);
  v157 = v25;
  if (v34)
  {
    v39 = *(v0 + 88);
    v38 = *(v0 + 96);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v159[0] = v41;
    *v40 = 136315138;
    v42 = sub_22703AE64();
    v44 = sub_226E97AE8(v42, v43, v159);
    v25 = v157;

    *(v40 + 4) = v44;
    _os_log_impl(&dword_226E8E000, v32, v33, "Using modalityIdentifierMap: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v41, -1, -1);
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  v25(v35, v36);
  v45 = *(v0 + 568);
  v46 = *(v0 + 488);
  v47 = *(v0 + 448);
  v48 = *(v0 + 456);
  v49 = *(v0 + 136);
  sub_22766A630();
  v50 = *(v48 + 16);
  *(v0 + 600) = v50;
  *(v0 + 608) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v142 = v50;
  v50(v46, v49, v47);
  v51 = sub_22766B380();
  v52 = sub_22766C8B0();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 568);
  v55 = *(v0 + 496);
  v56 = *(v0 + 504);
  v57 = *(v0 + 488);
  v59 = *(v0 + 448);
  v58 = *(v0 + 456);
  if (v53)
  {
    v60 = swift_slowAlloc();
    v154 = v55;
    v61 = swift_slowAlloc();
    v159[0] = v61;
    *v60 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8]);
    v151 = v54;
    v62 = sub_22766D140();
    v64 = v63;
    v145 = v52;
    v65 = *(v58 + 8);
    v65(v57, v59);
    v66 = sub_226E97AE8(v62, v64, v159);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_226E8E000, v51, v145, "Using configuration: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AA9A450](v61, -1, -1);
    MEMORY[0x22AA9A450](v60, -1, -1);

    v157(v151, v154);
  }

  else
  {

    v65 = *(v58 + 8);
    v65(v57, v59);
    v25(v54, v55);
  }

  *(v0 + 616) = v65;
  v67 = *(v0 + 440);
  v69 = *(v0 + 416);
  v68 = *(v0 + 424);
  v70 = *(v0 + 384);
  v158 = *(v0 + 88);
  v71 = *(v0 + 72);
  v72 = sub_2270397D4(v71);
  v140 = sub_226F3E6A8(v72);
  *(v0 + 624) = v140;

  sub_227662740();
  sub_2276626F0();
  *(v0 + 632) = v73;
  v74 = *(v68 + 8);
  *(v0 + 640) = v74;
  *(v0 + 648) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v67, v69);
  v75 = v71 + 56;
  v76 = -1;
  v77 = -1 << *(v71 + 32);
  if (-v77 < 64)
  {
    v76 = ~(-1 << -v77);
  }

  v78 = v76 & *(v71 + 56);
  v79 = (63 - v77) >> 6;
  v152 = v70;
  v146 = (v70 + 8);
  v148 = v71;
  v134 = (v70 + 40);
  v135 = (v70 + 32);

  v80 = 0;
  v81 = MEMORY[0x277D84F98];
LABEL_12:
  v137 = v81;
  *(v0 + 656) = v81;
  v82 = v80;
  if (!v78)
  {
    goto LABEL_15;
  }

  do
  {
    while (1)
    {
      v80 = v82;
LABEL_20:
      v83 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v84 = *(v152 + 72);
      v85 = *(v152 + 16);
      v85(*(v0 + 408), *(v148 + 48) + v84 * (v83 | (v80 << 6)), *(v0 + 376));
      v86 = sub_227668220();
      if (*(v158 + 16))
      {
        break;
      }

      (*v146)(*(v0 + 408), *(v0 + 376));

      v82 = v80;
      if (!v78)
      {
        goto LABEL_15;
      }
    }

    v88 = *(v0 + 88);
    v89 = sub_226E92000(v86, v87);
    v91 = v90;

    if (v91)
    {
      v92 = *(v158 + 56) + 24 * v89;
      v93 = *v92;
      v94 = *(v92 + 8);
      v95 = *(v92 + 16);
      v85(*(v0 + 400), *(v0 + 408), *(v0 + 376));
      sub_226EB396C(v93, v94, v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v95;
      v159[0] = v137;
      v132 = v93;
      v133 = v94;
      result = sub_226F491D8(v93, v94, v95);
      v98 = *(v137 + 16);
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        __break(1u);
      }

      else
      {
        v102 = v97;
        if (*(v137 + 24) >= v101)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v113 = result;
            sub_226FF30B0();
            result = v113;
          }
        }

        else
        {
          sub_226FE875C(v101, isUniquelyReferenced_nonNull_native);
          result = sub_226F491D8(v93, v133, v95);
          if ((v102 & 1) != (v103 & 1))
          {
LABEL_38:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);

            return sub_22766D220();
          }
        }

        v104 = *(v0 + 400);
        v105 = *(v0 + 408);
        v106 = *(v0 + 376);
        if (v102)
        {
          v107 = result;
          v138 = *(v0 + 408);
          v108 = *(v0 + 400);
          sub_226EB2DFC(v132, v133, v131);
          v109 = v159[0];
          (*v134)(*(v159[0] + 56) + v107 * v84, v108, v106);
          (*v146)(v138, v106);
          v81 = v109;
          goto LABEL_12;
        }

        v81 = v159[0];
        *(v159[0] + 8 * (result >> 6) + 64) |= 1 << result;
        v110 = v81[6] + 24 * result;
        *v110 = v132;
        *(v110 + 8) = v133;
        *(v110 + 16) = v131;
        (*v135)(v81[7] + result * v84, v104, v106);
        result = (*v146)(v105, v106);
        v111 = v81[2];
        v100 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (!v100)
        {
          v81[2] = v112;
          goto LABEL_12;
        }
      }

      __break(1u);
      return result;
    }

    (*v146)(*(v0 + 408), *(v0 + 376));
    v82 = v80;
  }

  while (v78);
  while (1)
  {
LABEL_15:
    v80 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v80 >= v79)
    {
      break;
    }

    v78 = *(v75 + 8 * v80);
    ++v82;
    if (v78)
    {
      goto LABEL_20;
    }
  }

  v114 = *(v0 + 480);
  v116 = *(v0 + 456);
  v115 = *(v0 + 464);
  v117 = *(v0 + 448);
  v118 = *(v0 + 136);
  v119 = *(v0 + 144);
  v120 = *(v0 + 104);
  v121 = *(v0 + 72);

  v122 = v119[26];
  v155 = v119[25];
  __swift_project_boxed_opaque_existential_0(v119 + 22, v155);
  v142(v114, v118, v117);
  v123 = (*(v116 + 80) + 40) & ~*(v116 + 80);
  v124 = swift_allocObject();
  *(v0 + 664) = v124;
  *(v124 + 2) = v119;
  *(v124 + 3) = v140;
  *(v124 + 4) = v120;
  v125 = *(v116 + 32);
  *(v0 + 672) = v125;
  *(v0 + 680) = (v116 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v125(&v124[v123], v114, v117);
  v126 = *(v122 + 24);

  v149 = (v126 + *v126);
  v127 = v126[1];
  v128 = swift_task_alloc();
  *(v0 + 688) = v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9D0, &unk_2276766A0);
  *v128 = v0;
  v128[1] = sub_227044374;

  return (v149)(v0 + 32, sub_22704F96C, v124, v129, v155, v122);
}

uint64_t sub_227044374()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  v2[87] = v0;

  v5 = v2[83];
  if (v0)
  {
    v6 = v2[82];
    v7 = v2[78];

    v8 = sub_227046328;
  }

  else
  {

    v8 = sub_2270444C4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2270444C4()
{
  v378 = v0;
  v1 = *(v0 + 32);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 32);

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v4)
  {
    v9 = v4;
    v10 = v375;
LABEL_11:
    v12 = *(v10 + 88);
    v4 = (v9 - 1) & v9;
    if (*(v12 + 16))
    {
      v13 = __clz(__rbit64(v9)) | (v7 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = *(*(v1 + 56) + 8 * v13);
      v16 = *v14;
      v17 = v14[1];

      v18 = sub_226E92000(v16, v17);
      if (v19)
      {
        v20 = *(*(v375 + 88) + 56) + 24 * v18;
        v21 = *v20;
        v22 = *(v20 + 8);
        v360 = *(v20 + 16);
        sub_226EB396C(*v20, v22, v360);

        v368 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2273A4FB0(0, v8[2] + 1, 1, v8);
        }

        v24 = v8[2];
        v23 = v8[3];
        if (v24 >= v23 >> 1)
        {
          v8 = sub_2273A4FB0((v23 > 1), v24 + 1, 1, v8);
        }

        v8[2] = v24 + 1;
        v25 = &v8[4 * v24];
        v25[4] = v368;
        v25[5] = v22;
        *(v25 + 48) = v360;
        v25[7] = v15;
      }

      else
      {
      }
    }
  }

  v10 = v375;
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v11 >= v5)
    {
      break;
    }

    v9 = *(v1 + 64 + 8 * v11);
    ++v7;
    if (v9)
    {
      v7 = v11;
      goto LABEL_11;
    }
  }

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
    v26 = sub_22766D010();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
  }

  v27 = *(v375 + 696);
  v376 = v26;
  sub_22704B3FC(v8, 1, &v376);
  if (!v27)
  {
    v28 = *(v375 + 72);
    v369 = v376;
    v29 = -1;
    v30 = -1 << *(v28 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v28 + 56);
    v32 = (63 - v30) >> 6;

    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    while (v31)
    {
      v35 = *(v10 + 72);
LABEL_33:
      v37 = *(v10 + 88);
      v38 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      (*(*(v10 + 384) + 16))(*(v10 + 392), *(v35 + 48) + *(*(v10 + 384) + 72) * (v38 | (v33 << 6)), *(v10 + 376));
      v39 = sub_227668220();
      if (*(v37 + 16))
      {
        v41 = *(v10 + 88);
        v42 = sub_226E92000(v39, v40);
        v44 = v43;

        v45 = *(v10 + 384);
        v46 = *(v10 + 376);
        if (v44)
        {
          v47 = *(*(v10 + 88) + 56) + 24 * v42;
          v48 = *(v47 + 8);
          v49 = *(v10 + 392);
          v361 = *v47;
          v50 = v46;
          v356 = *(v47 + 16);
          sub_226EB396C(*v47, v48, v356);
          v51 = sub_227668230();
          (*(v45 + 8))(v49, v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2273A4FB0(0, v34[2] + 1, 1, v34);
          }

          v53 = v34[2];
          v52 = v34[3];
          if (v53 >= v52 >> 1)
          {
            v34 = sub_2273A4FB0((v52 > 1), v53 + 1, 1, v34);
          }

          v34[2] = v53 + 1;
          v54 = &v34[4 * v53];
          v54[4] = v361;
          v54[5] = v48;
          *(v54 + 48) = v356;
          v54[7] = v51;
          v10 = v375;
        }

        else
        {
          (*(v45 + 8))(*(v10 + 392), v46);
        }
      }

      else
      {
        (*(*(v10 + 384) + 8))(*(v10 + 392), *(v10 + 376));
      }
    }

    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      v35 = *(v10 + 72);
      if (v36 >= v32)
      {
        break;
      }

      v31 = *(v35 + 8 * v36 + 56);
      ++v33;
      if (v31)
      {
        v33 = v36;
        goto LABEL_33;
      }
    }

    if (v34[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
      v55 = sub_22766D010();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v376 = v55;
    sub_22704B3FC(v34, 1, &v376);
    v56 = v376;
    *(swift_task_alloc() + 16) = v56;
    v57 = sub_22704D4E4(v369, sub_22704F9F0);

    if (*(v57 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
      v58 = sub_22766D010();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v376 = v58;
    sub_22704B3FC(v57, 1, &v376);
    v60 = *(v10 + 624);

    v61 = v376;
    if (!*(v376 + 16))
    {
      v75 = *(v10 + 656);
      v76 = *(v10 + 528);

      sub_22766A630();
      v77 = sub_22766B380();
      v78 = sub_22766C890();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_226E8E000, v77, v78, "Unable to build modality-duration mapping, may require catalog sync.", v79, 2u);
        MEMORY[0x22AA9A450](v79, -1, -1);
      }

      v80 = *(v10 + 592);
      v81 = *(v10 + 528);
      v82 = *(v10 + 496);
      v83 = *(v10 + 504);
      v84 = *(v10 + 184);
      v85 = *(v10 + 192);

      v80(v81, v82);
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(v85 + 104))(v86, *MEMORY[0x277D511E0], v84);
      swift_willThrow();
      goto LABEL_91;
    }

    v62 = *(v10 + 560);
    sub_22766A630();

    v63 = sub_22766B380();
    v64 = sub_22766C880();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v10 + 592);
    v67 = *(v10 + 560);
    v68 = *(v10 + 496);
    v69 = *(v10 + 504);
    if (v65)
    {
      v370 = *(v10 + 592);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v376 = v71;
      *v70 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
      sub_22704B2CC();
      v72 = sub_22766BEC0();
      v74 = sub_226E97AE8(v72, v73, &v376);
      v10 = v375;

      *(v70 + 4) = v74;
      _os_log_impl(&dword_226E8E000, v63, v64, "Computed modality-duration mapping with preferences: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AA9A450](v71, -1, -1);
      MEMORY[0x22AA9A450](v70, -1, -1);

      v370(v67, v68);
    }

    else
    {

      v66(v67, v68);
    }

    v87 = *(v10 + 26) & 1;
    v88 = sub_227668780();
    if (v88 == sub_227668780())
    {
      v362 = *(v10 + 104);
    }

    else
    {
      v362 = sub_22735B514(*(v10 + 104), *(*(v10 + 656) + 16), *(*(v10 + 128) + 16), v61);
    }

    v320 = *(v10 + 672);
    v325 = *(v10 + 680);
    v357 = *(v10 + 656);
    v315 = *(v10 + 616);
    v89 = *(v10 + 608);
    v90 = *(v10 + 600);
    v91 = *(v10 + 472);
    v92 = *(v10 + 480);
    v93 = *(v375 + 456);
    v94 = *(v375 + 448);
    v336 = *(v375 + 368);
    v341 = *(v375 + 344);
    v95 = *(v375 + 144);
    v96 = *(v375 + 136);
    v345 = *(v375 + 120);
    v351 = *(v375 + 128);
    v330 = *(v375 + 80);
    sub_22703D9B8(v336);
    v90(v91, v96, v94);
    v97 = type metadata accessor for WorkoutPlanScheduleUtils();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v100 = swift_allocObject();
    v90(v100 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration, v91, v94);
    v90(v92, v91, v94);
    v101 = type metadata accessor for WorkoutPlanObjectiveUtils();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    v104 = swift_allocObject();
    v90(v104 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration, v92, v94);
    v371 = v87;
    v105 = MEMORY[0x277D84F90];
    *(v104 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache) = sub_227149864(MEMORY[0x277D84F90]);
    *(v104 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache) = sub_227149954(v105);
    *(v104 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache) = sub_227149864(v105);
    v106 = sub_227149864(v105);
    v10 = v375;
    v315(v92, v94);
    *(v104 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache) = v106;
    *(v100 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils) = v104;
    v90(v92, v91, v94);
    v107 = type metadata accessor for WorkoutPlanFocusUtils();
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    v110 = swift_allocObject();
    v320(v110 + OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration, v92, v94);
    *(v110 + OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_objectiveUtils) = v104;
    *(v100 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_focusUtils) = v110;
    v111 = type metadata accessor for WorkoutPlanEnumerationUtils();
    v112 = *(v111 + 48);
    v113 = *(v111 + 52);
    v114 = swift_allocObject();
    v320(v114 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_configuration, v91, v94);
    *(v114 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode) = v371;
    *(v100 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_enumerationUtils) = v114;
    *(v100 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode) = v371;

    sub_227434190(v341, v330, v61, v357, v362, v351, v345, v336);
    v115 = *(v375 + 656);
LABEL_63:

    v116 = sub_227668780();
    if (v116 == sub_227668780() && (v117 = *(v10 + 344), !WorkoutPlanGenerationScaffold.satisfiesHardConstraints()()))
    {
      v169 = *(v10 + 552);
      sub_22766A630();
      v170 = sub_22766B380();
      v171 = sub_22766C890();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&dword_226E8E000, v170, v171, "Unable to find a feasible scaffold", v172, 2u);
        MEMORY[0x22AA9A450](v172, -1, -1);
      }

      v173 = *(v10 + 592);
      v174 = *(v10 + 552);
      v175 = *(v10 + 496);
      v176 = *(v10 + 504);
      v129 = *(v10 + 344);
      v130 = *(v375 + 192);
      v131 = *(v375 + 184);

      v173(v174, v175);
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
      v132 = swift_allocError();
      v134 = v177;
      v135 = MEMORY[0x277D511C0];
    }

    else
    {
      v118 = sub_227668780();
      if (v118 == sub_227668780())
      {
        v119 = *(v10 + 344);
        if (!WorkoutPlanGenerationScaffold.satisfiesPartialCoverageConstraints()())
        {
          v129 = *(v10 + 344);
          v178 = *(v10 + 184);
          v179 = *(v10 + 192);
          sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
          v180 = swift_allocError();
          (*(v179 + 104))(v181, *MEMORY[0x277D511C0], v178);
          v132 = v180;
LABEL_80:
          swift_willThrow();

          sub_22704FCD4(v129, type metadata accessor for WorkoutPlanGenerationScaffold);
          v182 = *(v10 + 232);
          v183 = *(v10 + 184);
          *(v10 + 40) = v132;
          v184 = v132;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
          if (swift_dynamicCast())
          {
            v185 = *(v10 + 520);
            v187 = *(v10 + 224);
            v186 = *(v10 + 232);
            v188 = *(v10 + 216);
            v189 = *(v10 + 184);
            v190 = *(v10 + 192);

            v339 = *(v190 + 32);
            v339(v187, v186, v189);
            sub_22766A630();
            v191 = *(v190 + 16);
            v191(v188, v187, v189);
            v192 = sub_22766B380();
            v193 = sub_22766C890();
            v194 = os_log_type_enabled(v192, v193);
            v195 = *(v10 + 592);
            v365 = *(v10 + 520);
            v196 = *(v10 + 504);
            v348 = *(v10 + 496);
            v354 = v191;
            v197 = *(v10 + 216);
            v200 = v10 + 184;
            v199 = *(v10 + 184);
            v198 = *(v200 + 8);
            if (v194)
            {
              v201 = swift_slowAlloc();
              v202 = swift_slowAlloc();
              v376 = v202;
              *v201 = 136315138;
              v203 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
              v204 = MEMORY[0x22AA995D0](v199, v203);
              v333 = v195;
              v206 = v205;
              (*(v198 + 8))(v197, v199);
              v207 = sub_226E97AE8(v204, v206, &v376);

              *(v201 + 4) = v207;
              _os_log_impl(&dword_226E8E000, v192, v193, "Failed to create scaffold with error %s", v201, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v202);
              MEMORY[0x22AA9A450](v202, -1, -1);
              MEMORY[0x22AA9A450](v201, -1, -1);

              v333(v365, v348);
            }

            else
            {

              (*(v198 + 8))(v197, v199);
              v195(v365, v348);
            }

            v10 = v375;
            v208 = *(v375 + 648);
            v209 = *(v375 + 640);
            v210 = *(v375 + 432);
            v211 = *(v375 + 416);
            v213 = *(v375 + 168);
            v212 = *(v375 + 176);
            v214 = *(v375 + 160);
            v216 = *(v375 + 56);
            v215 = *(v375 + 64);
            v366 = *(*(v375 + 144) + 216);
            sub_227662740();
            sub_2276626F0();
            v209(v210, v211);
            v376 = v216;
            v377 = v215;

            MEMORY[0x22AA98450](45, 0xE100000000000000);
            v217 = sub_227668770();
            MEMORY[0x22AA98450](v217);

            (*(v213 + 16))(v212, v366 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v214);
            sub_227669730();
            (*(v213 + 8))(v212, v214);
            if (*(v375 + 25) == 1)
            {
              v218 = (v375 + 248);
              v323 = *(v375 + 248);
              v219 = *(v375 + 632);
              v221 = *(v375 + 304);
              v220 = *(v375 + 312);
              v222 = *(v375 + 296);
              v373 = (v375 + 280);
              v298 = *(v375 + 280);
              v318 = *(v375 + 272);
              v328 = *(v375 + 264);
              v223 = *(v375 + 240);
              v287 = *(v375 + 224);
              v302 = *(v375 + 208);
              v306 = *(v375 + 256);
              v310 = *(v375 + 200);
              v224 = *(v375 + 192);
              v334 = *(v375 + 184);
              v349 = *(v375 + 152);
              v225 = *(v375 + 136);
              v284 = *(v375 + 128);
              v279 = *(v375 + 27);
              v290 = *(v375 + 104);
              v294 = *(v375 + 112);
              v226 = *(v375 + 80);
              v273 = *(v375 + 72);
              sub_227667240();
              sub_227667ED0();

              (*(v221 + 8))(v220, v222);
              v227 = sub_2276627D0();
              v228 = *(v227 - 8);
              v229 = v226;
              v10 = v375;
              (*(v228 + 16))(v223, v229, v227);
              (*(v228 + 56))(v223, 0, 1, v227);

              sub_22714972C(MEMORY[0x277D84F90]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E18, &qword_227676668);
              v230 = *(v224 + 72);
              v276 = (*(v224 + 80) + 32) & ~*(v224 + 80);
              v231 = swift_allocObject();
              *(v231 + 16) = xmmword_227670CD0;
              v354(v231 + v276, v287, v334);

              sub_227667050();
              sub_22766C490();
              v232 = sub_22766C4B0();
              (*(*(v232 - 8) + 56))(v349, 0, 1, v232);
              v313 = swift_allocObject();
              swift_weakInit();
              v354(v302, v287, v334);
              (*(v306 + 16))(v318, v298, v323);
              v233 = (v310 + v276 + 7) & 0xFFFFFFFFFFFFFFF8;
              v234 = (v233 + *(v306 + 80) + 8) & ~*(v306 + 80);
              v235 = swift_allocObject();
              *(v235 + 16) = 0;
              *(v235 + 24) = 0;
              v339(v235 + v276, v302, v334);
              *(v235 + v233) = v313;
              v236 = v354;
              (*(v306 + 32))(v235 + v234, v318, v323);
              sub_2272CA940(0, 0, v349, &unk_2276766B0, v235);

              v237 = (v306 + 8);
            }

            else
            {
              v237 = (v375 + 592);
              v218 = (v375 + 496);
              v373 = (v375 + 512);
              v238 = *(v375 + 512);

              sub_22766A630();
              v239 = sub_22766B380();
              v240 = sub_22766C8B0();
              v241 = os_log_type_enabled(v239, v240);
              v242 = *(v375 + 504);
              if (v241)
              {
                v243 = swift_slowAlloc();
                *v243 = 0;
                _os_log_impl(&dword_226E8E000, v239, v240, "Metrics reporting disabled", v243, 2u);
                MEMORY[0x22AA9A450](v243, -1, -1);
              }

              v236 = v354;
            }

            v244 = *v218;
            v245 = *v237;
            v247 = *(v10 + 360);
            v246 = *(v10 + 368);
            v248 = *(v10 + 352);
            v249 = *(v10 + 224);
            v250 = *(v10 + 184);
            v251 = *(v10 + 192);
            v245(*v373, v244);
            sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
            swift_allocError();
            v236(v252, v249, v250);
            swift_willThrow();
            (*(v251 + 8))(v249, v250);
            (*(v247 + 8))(v246, v248);
          }

          else
          {
            (*(*(v10 + 360) + 8))(*(v10 + 368), *(v10 + 352));
          }

LABEL_91:
          v253 = *(v10 + 584);
          v254 = *(v10 + 576);
          v255 = v10;
          v256 = *(v10 + 568);
          v257 = v255[70];
          v258 = v255[69];
          v259 = v255[68];
          v260 = v255[67];
          v261 = v255[66];
          v262 = v255[65];
          v263 = v255[64];
          v280 = v255[61];
          v282 = v255[60];
          v285 = v255[59];
          v288 = v255[55];
          v291 = v255[54];
          v295 = v255[51];
          v299 = v255[50];
          v303 = v255[49];
          v307 = v255[46];
          v311 = v255[43];
          v314 = v255[42];
          v319 = v255[39];
          v324 = v255[36];
          v329 = v255[35];
          v335 = v255[34];
          v340 = v255[30];
          v344 = v255[29];
          v350 = v255[28];
          v355 = v255[27];
          v359 = v255[26];
          v367 = v255[22];
          v374 = v255[19];

          v168 = v255[1];
LABEL_92:

          return v168();
        }
      }

      v120 = *(v10 + 344);
      if (!WorkoutPlanGenerationScaffold.isEmpty()())
      {
LABEL_72:
        v321 = *(v10 + 648);
        v308 = *(v10 + 640);
        v136 = *(v10 + 632);
        v363 = *(v10 + 536);
        v300 = *(v10 + 440);
        v304 = *(v10 + 416);
        v137 = *(v10 + 336);
        v296 = *(v10 + 344);
        v138 = *(v10 + 304);
        v139 = *(v10 + 312);
        v140 = *(v10 + 288);
        v141 = *(v10 + 296);
        v326 = *(v10 + 240);
        v142 = v10;
        v143 = *(v10 + 136);
        v337 = *(v142 + 27);
        v352 = *(v142 + 112);
        v144 = *(v142 + 96);
        v342 = *(v142 + 128);
        v346 = *(v142 + 104);
        v316 = *(v142 + 80);
        v331 = *(v142 + 72);
        v145 = *(v142 + 64);
        v292 = *(v142 + 56);
        sub_227667240();
        v146 = sub_227668090();
        v147 = *(v138 + 8);
        v147(v139, v141);
        sub_22703D460(v296, v144, v146, v137);
        sub_227667240();
        v376 = v292;
        v377 = v145;

        MEMORY[0x22AA98450](45, 0xE100000000000000);
        v148 = sub_227668770();
        MEMORY[0x22AA98450](v148);

        sub_227667ED0();

        v147(v139, v141);
        sub_227662740();
        sub_2276626F0();
        v308(v300, v304);
        v149 = sub_2276627D0();
        v150 = *(v149 - 8);
        (*(v150 + 16))(v326, v316, v149);
        (*(v150 + 56))(v326, 0, 1, v149);
        v151 = WorkoutPlanSchedule.metricScaffold.getter();
        sub_2273326C4(v151);

        sub_227667050();
        sub_227667040();
        v153 = v152;
        sub_227667070();
        v155 = v154;
        sub_22766A630();
        v156 = sub_22766B380();
        v157 = sub_22766C8B0();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 134217984;
          *(v158 + 4) = (v153 - v155) * 1000.0;
          _os_log_impl(&dword_226E8E000, v156, v157, "[Algorithm.RunTime] %f ms", v158, 0xCu);
          MEMORY[0x22AA9A450](v158, -1, -1);
        }

        v268 = *(v375 + 592);
        v271 = *(v375 + 584);
        v272 = *(v375 + 576);
        v274 = *(v375 + 568);
        v275 = *(v375 + 560);
        v277 = *(v375 + 552);
        v278 = *(v375 + 544);
        v159 = *(v375 + 536);
        v281 = *(v375 + 528);
        v283 = *(v375 + 520);
        v160 = *(v375 + 504);
        v161 = *(v375 + 496);
        v286 = *(v375 + 512);
        v289 = *(v375 + 488);
        v293 = *(v375 + 480);
        v297 = *(v375 + 472);
        v301 = *(v375 + 440);
        v305 = *(v375 + 432);
        v309 = *(v375 + 408);
        v312 = *(v375 + 400);
        v317 = *(v375 + 392);
        v162 = *(v375 + 360);
        v163 = *(v375 + 344);
        v265 = *(v375 + 352);
        v266 = *(v375 + 368);
        v164 = *(v375 + 328);
        v269 = *(v375 + 320);
        v270 = *(v375 + 336);
        v322 = *(v375 + 312);
        v267 = *(v375 + 288);
        v327 = *(v375 + 280);
        v332 = *(v375 + 272);
        v165 = *(v375 + 256);
        v264 = *(v375 + 248);
        v338 = *(v375 + 240);
        v343 = *(v375 + 232);
        v347 = *(v375 + 224);
        v353 = *(v375 + 216);
        v358 = *(v375 + 208);
        v364 = *(v375 + 176);
        v372 = *(v375 + 152);
        v166 = *(v375 + 48);

        v268(v159, v161);
        sub_22704FCD4(v163, type metadata accessor for WorkoutPlanGenerationScaffold);
        (*(v162 + 8))(v266, v265);
        (*(v165 + 32))(v166, v267, v264);
        v167 = type metadata accessor for WorkoutPlanScheduleResult();
        (*(v164 + 32))(v166 + *(v167 + 20), v270, v269);

        v168 = *(v375 + 8);
        goto LABEL_92;
      }

      v121 = *(v10 + 544);
      sub_22766A630();
      v122 = sub_22766B380();
      v123 = sub_22766C890();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_226E8E000, v122, v123, "Empty scaffold detected", v124, 2u);
        MEMORY[0x22AA9A450](v124, -1, -1);
      }

      v125 = *(v10 + 592);
      v126 = *(v10 + 544);
      v127 = *(v10 + 496);
      v128 = *(v10 + 504);
      v129 = *(v10 + 344);
      v130 = *(v375 + 192);
      v131 = *(v375 + 184);

      v125(v126, v127);
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
      v132 = swift_allocError();
      v134 = v133;
      v135 = MEMORY[0x277D511B8];
    }

    (*(v130 + 104))(v134, *v135, v131);
    v10 = v375;
    goto LABEL_80;
  }

  return swift_unexpectedError();
}

uint64_t sub_227046328()
{
  v35 = v0[87];
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v13 = v0[61];
  v14 = v0[60];
  v15 = v0[59];
  v16 = v0[55];
  v17 = v0[54];
  v18 = v0[51];
  v19 = v0[50];
  v20 = v0[49];
  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[34];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[28];
  v31 = v0[27];
  v32 = v0[26];
  v33 = v0[22];
  v34 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22704653C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v22 = a5;
  v21 = a4;
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  result = sub_226EAF48C(a1, v15);
  if (!v6)
  {
    v20 = a6;
    v18 = sub_227663E90();
    v19 = sub_22703BF7C(a3, v21, v18, v22, a1);
    (*(v12 + 8))(v15, v11);

    *v20 = v19;
  }

  return result;
}

uint64_t sub_2270466C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (!*(a5 + 16))
  {
    goto LABEL_21;
  }

  v10 = sub_226F491D8(a1, a2, a3 & 1);
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(*(a5 + 56) + 8 * v10);
  if (!*(v12 + 16))
  {
    goto LABEL_21;
  }

  v24 = v8;
  v25 = v6;
  v26 = v7;
  v13 = *(a4 + 16);

  if (!v13)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_18:

    v7 = v26;
    if (*(v16 + 16))
    {
      v6 = v25;
      v8 = v24;
LABEL_22:
      sub_226EB396C(v8, v7, v6 & 1);
      return v8;
    }

    v8 = v24;
    v6 = v25;
LABEL_21:

    goto LABEL_22;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v15 < v13)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_24;
    }

    v20 = *(a4 + 32 + 8 * v15++);
    v21 = *(v12 + 16);
    v22 = (v12 + 32);
    while (v21)
    {
      v23 = *v22++;
      --v21;
      if (v23 == v20)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226F1F090(0, *(v16 + 16) + 1, 1);
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_226F1F090((v17 > 1), v18 + 1, 1);
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v20;
        break;
      }
    }

    if (v19 == v13)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_227046898(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = a3;
  v73 = a2;
  v4 = sub_22766B390();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_227664010();
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v65);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_227663D60();
  v76 = *(v74 - 8);
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v64 - v14;
  MEMORY[0x28223BE20](v15);
  v67 = &v64 - v16;
  v17 = sub_227668FD0();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  v64 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_227668FC0();
  *(inited + 40) = v21;
  v22 = sub_226F3E6A8(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v23 = sub_227668FB0();
  v78 = MEMORY[0x277D84F90];
  v24 = sub_2270134B0(v22);

  sub_22745FA30(v24);
  v25 = sub_22701380C(v23);

  sub_22745FA30(v25);
  if (v19)
  {
    v26 = v78;
  }

  else
  {
    v77 = v17;
    sub_22766D140();
    sub_22766C540();
    sub_22766C540();
    sub_22766C540();
    sub_227663FC0();
    v27 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
    v28 = *(sub_2276660A0() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v64;
    v32 = v65;
    (*(v7 + 16))(v31 + v30, v10, v65);
    swift_storeEnumTagMultiPayload();
    v77 = v27;
    sub_22745FA30(v31);
    (*(v7 + 8))(v10, v32);
    v26 = v77;
  }

  v78 = MEMORY[0x277D84F90];
  v33 = sub_2276672F0();
  v34 = sub_2270134CC(v33);

  sub_22745FA30(v34);
  v35 = sub_2276672D0();
  v36 = sub_2270134E8(v35);

  sub_22745FA30(v36);
  v37 = sub_227667280();
  v38 = sub_227013504(v37);

  sub_22745FA30(v38);
  v39 = sub_227667260();
  v40 = sub_227013B2C(v39);
  v65 = v3;

  sub_22745FA30(v40);
  sub_226F438E8(v78);

  sub_226F438E8(v26);

  v41 = v75;
  sub_227663D10();
  v42 = v68;
  sub_22766A630();
  v43 = v76;
  v44 = v66;
  v45 = v74;
  (*(v76 + 16))(v66, v41, v74);
  v46 = sub_22766B380();
  v47 = sub_22766C8B0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v44;
    v50 = swift_slowAlloc();
    v78 = v50;
    *v48 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0]);
    v51 = sub_22766D140();
    v52 = v42;
    v54 = v53;
    v55 = *(v76 + 8);
    v55(v49, v74);
    v56 = v51;
    v45 = v74;
    v57 = sub_226E97AE8(v56, v54, &v78);

    *(v48 + 4) = v57;
    _os_log_impl(&dword_226E8E000, v46, v47, "Filtering catalog using: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA9A450](v50, -1, -1);
    v58 = v48;
    v43 = v76;
    MEMORY[0x22AA9A450](v58, -1, -1);

    (*(v69 + 8))(v52, v70);
  }

  else
  {

    v55 = *(v43 + 8);
    v55(v44, v45);
    (*(v69 + 8))(v42, v70);
  }

  v59 = v67;
  (*(v43 + 32))(v67, v75, v45);
  v60 = v72;
  v61 = v65;
  v62 = sub_22703B334(v59, v71);
  if (!v61)
  {
    v60 = sub_22735AD38(v62, v73);
  }

  v55(v59, v45);
  return v60;
}

uint64_t sub_227047060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = sub_227664EC0();
  v9[12] = v10;
  v11 = *(v10 - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v9[16] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
  v9[17] = v13;
  v14 = *(v13 + 64) + 15;
  v9[18] = swift_task_alloc();
  v9[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  v9[20] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE8, &qword_227676648);
  v9[24] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v9[25] = swift_task_alloc();
  v19 = sub_227663FA0();
  v9[26] = v19;
  v20 = *(v19 - 8);
  v9[27] = v20;
  v21 = *(v20 + 64) + 15;
  v9[28] = swift_task_alloc();
  v22 = sub_227666B60();
  v9[29] = v22;
  v23 = *(v22 - 8);
  v9[30] = v23;
  v24 = *(v23 + 64) + 15;
  v9[31] = swift_task_alloc();
  v9[32] = swift_task_alloc();
  v25 = sub_227667370();
  v9[33] = v25;
  v26 = *(v25 - 8);
  v9[34] = v26;
  v9[35] = *(v26 + 64);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = swift_task_alloc();
  v27 = sub_2276638D0();
  v9[39] = v27;
  v28 = *(v27 - 8);
  v9[40] = v28;
  v29 = *(v28 + 64) + 15;
  v9[41] = swift_task_alloc();
  v30 = sub_22766B390();
  v9[42] = v30;
  v31 = *(v30 - 8);
  v9[43] = v31;
  v32 = *(v31 + 64) + 15;
  v9[44] = swift_task_alloc();
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227047458, 0, 0);
}

uint64_t sub_227047458()
{
  v86 = v0;
  v1 = v0[46];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  sub_22766A630();
  (*(v3 + 16))(v2, v6, v4);

  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[40];
  v16 = v0[41];
  v17 = v0[39];
  if (v11)
  {
    v70 = v0[9];
    v75 = v10;
    log = v9;
    v18 = v0[6];
    v19 = v0[7];
    v83 = v0[46];
    v21 = v0[4];
    v20 = v0[5];
    v80 = v0[42];
    v22 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v85 = v72;
    *v22 = 136315906;
    *(v22 + 4) = sub_226E97AE8(v21, v20, &v85);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_226E97AE8(v18, v19, &v85);
    *(v22 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B9DF8, MEMORY[0x277D50180]);
    v23 = sub_22766D140();
    v25 = v24;
    (*(v15 + 8))(v16, v17);
    v26 = sub_226E97AE8(v23, v25, &v85);

    *(v22 + 24) = v26;
    *(v22 + 32) = 2080;
    sub_227668480();
    sub_226EABFDC(&qword_27D7B84C8, MEMORY[0x277D534C8]);
    v27 = sub_22766C610();
    v29 = sub_226E97AE8(v27, v28, &v85);

    *(v22 + 34) = v29;
    _os_log_impl(&dword_226E8E000, log, v75, "Querying alternative workouts algorithmVersion: %s, workoutIdentifier: %s, workoutPlan: %s modalityPreferences: %s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v72, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    v30 = *(v13 + 8);
    (v30)(v83, v80);
  }

  else
  {

    (*(v15 + 8))(v16, v17);
    v31 = v14;
    v30 = *(v13 + 8);
    (v30)(v12, v31);
  }

  v0[47] = v30;
  v32 = v0[45];
  v33 = v0[38];
  v34 = v0[33];
  v35 = v0[34];
  v36 = v0[10];
  sub_22766A630();
  v37 = *(v35 + 16);
  v0[48] = v37;
  v0[49] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v84 = v37;
  v37(v33, v36, v34);
  v38 = sub_22766B380();
  v39 = sub_22766C8B0();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[45];
  v42 = v0[42];
  v81 = v0[43];
  v43 = v0[38];
  v45 = v0[33];
  v44 = v0[34];
  if (v40)
  {
    loga = v30;
    v46 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v85 = v76;
    *v46 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8]);
    v71 = v41;
    v73 = v42;
    v47 = sub_22766D140();
    v49 = v48;
    v69 = v39;
    v50 = *(v44 + 8);
    v50(v43, v45);
    v51 = sub_226E97AE8(v47, v49, &v85);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_226E8E000, v38, v69, "Using configuration: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x22AA9A450](v76, -1, -1);
    MEMORY[0x22AA9A450](v46, -1, -1);

    (loga)(v71, v73);
  }

  else
  {

    v50 = *(v44 + 8);
    v50(v43, v45);
    (v30)(v41, v42);
  }

  v0[50] = v50;
  v52 = v0[37];
  v53 = v0[34];
  v54 = v0[35];
  v55 = v0[33];
  v56 = v0[10];
  v57 = v0[11];
  v58 = v0[6];
  v59 = v0[7];
  v82 = v57[25];
  v74 = v57[26];
  __swift_project_boxed_opaque_existential_0(v57 + 22, v82);
  v84(v52, v56, v55);
  v60 = (*(v53 + 80) + 40) & ~*(v53 + 80);
  v61 = swift_allocObject();
  v0[51] = v61;
  *(v61 + 2) = v57;
  *(v61 + 3) = v58;
  *(v61 + 4) = v59;
  v62 = *(v53 + 32);
  v0[52] = v62;
  v0[53] = (v53 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v62(&v61[v60], v52, v55);
  v63 = *(v74 + 24);

  v77 = (v63 + *v63);
  v64 = v63[1];
  v65 = swift_task_alloc();
  v0[54] = v65;
  *v65 = v0;
  v65[1] = sub_227047B10;
  v67 = v0[24];
  v66 = v0[25];

  return v77(v66, sub_22704B358, v61, v67, v82, v74);
}

uint64_t sub_227047B10()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = sub_227048588;
  }

  else
  {
    v5 = *(v2 + 408);

    v4 = sub_227047C2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_227047C2C()
{
  v126 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v113 = v0[20];
  v6 = v0[8];
  v107 = *(v4 + v5[12]);
  v7 = v5[20];
  v103 = *(v0[30] + 32);
  v106 = *(v4 + v5[16]);
  v103(v0[32], v4, v0[29]);
  (*(v2 + 32))(v1, v4 + v7, v3);
  v8 = sub_227663840();
  v111 = v8 + 64;
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v109 = (63 - v10) >> 6;
  v117 = v8;

  v13 = 0;
  v121 = MEMORY[0x277D84F90];
  v116 = v0;
  while (v11)
  {
LABEL_10:
    v15 = v0[22];
    v16 = v0[23];
    v17 = v0[21];
    v18 = __clz(__rbit64(v11)) | (v13 << 6);
    v19 = *(v117 + 48);
    v20 = sub_227665440();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v16, v19 + *(v21 + 72) * v18, v20);
    *(v16 + *(v113 + 48)) = *(*(v117 + 56) + 8 * v18);
    sub_226E93170(v16, v15, &qword_27D7B9DE0, &qword_227676640);
    v22 = *(v113 + 48);
    v23 = *(v15 + v22);
    (*(v21 + 32))(v17, v15, v20);
    *(v17 + v22) = v23;

    sub_226E97D1C(v17, &qword_27D7B9DE0, &qword_227676640);
    result = sub_226E97D1C(v16, &qword_27D7B9DE0, &qword_227676640);
    v24 = *(v23 + 16);
    v25 = *(v121 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v26 > *(v121 + 3) >> 1)
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_2273A57A4(result, v27, 1, v121);
      v121 = result;
    }

    v0 = v116;
    v11 &= v11 - 1;
    if (*(v23 + 16))
    {
      if ((*(v121 + 3) >> 1) - *(v121 + 2) < v24)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v28 = *(v121 + 2);
        v29 = __OFADD__(v28, v24);
        v30 = v28 + v24;
        if (v29)
        {
          goto LABEL_47;
        }

        *(v121 + 2) = v30;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v14 >= v109)
    {
      break;
    }

    v11 = *(v111 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  v31 = *(v121 + 2);
  if (v31)
  {
    v32 = v0;
    v125 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v31, 0);
    v33 = v125;
    v34 = (v121 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;

      v37 = sub_227667380();
      v39 = v38;

      v125 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_226F1EF90(v40 > 1, v41 + 1, 1);
        v33 = v125;
      }

      v33[2] = v41 + 1;
      v42 = &v33[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v34 += 2;
      --v31;
    }

    while (v31);

    v0 = v32;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v44 = v0[52];
  v43 = v0[53];
  v46 = v0[48];
  v45 = v0[49];
  v47 = v0[36];
  v48 = v0[33];
  v118 = v0[32];
  v122 = v0[55];
  v49 = v0[10];
  v114 = v0[9];
  v50 = sub_226F3E6A8(v33);

  v46(v47, v49, v48);
  v51 = type metadata accessor for WorkoutPlanAlternativesProvider();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  v44(v54 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v47, v48);
  v55 = swift_task_alloc();
  v55[2] = v54;
  v55[3] = v114;
  v55[4] = v118;
  v55[5] = v50;
  v56 = sub_2275F205C(sub_22704D430, v55, v107);

  v125 = v56;

  sub_22704BF48(&v125);
  if (v122)
  {
  }

  else
  {
    v115 = v54;

    v57 = v125;
    v58 = v125[2];
    if (v58)
    {
      v59 = v0;
      v123 = v0[30];
      v60 = v0[17];
      v125 = MEMORY[0x277D84F90];
      sub_226F1F928(0, v58, 0);
      v61 = v125;
      v62 = v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v119 = *(v60 + 72);
      do
      {
        v63 = v59[31];
        v64 = v59[29];
        v65 = v59;
        v68 = v59 + 18;
        v67 = v59[18];
        v66 = v68[1];
        sub_226E93170(v62, v66, &qword_27D7B9DD8, &qword_227679B60);
        sub_22704D454(v66, v67);
        v103(v63, v67, v64);
        v125 = v61;
        v70 = v61[2];
        v69 = v61[3];
        if (v70 >= v69 >> 1)
        {
          sub_226F1F928(v69 > 1, v70 + 1, 1);
          v61 = v125;
        }

        v71 = v65[31];
        v72 = v65[29];
        v61[2] = v70 + 1;
        v103(v61 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v70, v71, v72);
        v62 += v119;
        --v58;
        v59 = v65;
      }

      while (v58);
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
      v59 = v0;
    }

    v93 = v59[46];
    v94 = v59[45];
    v95 = v59[44];
    v96 = v59[41];
    v97 = v59[38];
    v98 = v59[37];
    v87 = v59[34];
    v88 = v59[33];
    v89 = v59[50];
    v99 = v59[36];
    v100 = v59[31];
    v73 = v59[30];
    v90 = v59[29];
    v91 = v59[32];
    v74 = v59[27];
    v75 = v59[28];
    v92 = v59[26];
    v101 = v59[25];
    v102 = v59[23];
    v104 = v59[22];
    v105 = v59[21];
    v108 = v59[19];
    v110 = v59[18];
    v112 = v59[16];
    v120 = v59[15];
    v124 = v59[14];
    v76 = v59[10];
    v77 = v59[11];
    v86 = v59[3];
    v78 = swift_task_alloc();
    *(v78 + 16) = v75;
    v79 = sub_227039ADC(v61, sub_22704FE40, v78);

    v80 = sub_22704D1E8(v79);

    v81 = swift_task_alloc();
    v81[2] = v115;
    v81[3] = v106;
    v81[4] = v76;
    sub_22703A184(sub_22704D4C4, v81, v80);

    v82 = *(v77 + 216);
    sub_2272CD6D4();
    sub_227666DD0();
    swift_setDeallocating();
    v89(v115 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v88);
    v83 = *(*v115 + 48);
    v84 = *(*v115 + 52);
    swift_deallocClassInstance();
    (*(v73 + 8))(v91, v90);
    (*(v74 + 8))(v75, v92);

    v85 = v116[1];

    return v85();
  }
}

uint64_t sub_227048588()
{
  v65 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 408);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);

  *(v0 + 16) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 352);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);

    (*(v10 + 32))(v8, v7, v11);
    sub_22766A630();
    v12 = *(v10 + 16);
    v12(v9, v8, v11);
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 376);
    v17 = *(v0 + 344);
    v18 = *(v0 + 352);
    v62 = *(v0 + 336);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);
    if (v15)
    {
      v59 = v12;
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      *v22 = 136315138;
      v23 = sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
      v53 = v18;
      v55 = v16;
      v24 = MEMORY[0x22AA995D0](v21, v23);
      v26 = v25;
      log = v13;
      v27 = *(v20 + 8);
      v27(v19, v21);
      v28 = v27;
      v29 = sub_226E97AE8(v24, v26, &v64);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_226E8E000, log, v14, "Failed to generate workout alternatives with error %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      v30 = v22;
      v12 = v59;
      MEMORY[0x22AA9A450](v30, -1, -1);

      v55(v53, v62);
    }

    else
    {

      v31 = *(v20 + 8);
      v31(v19, v21);
      v28 = v31;
      v16(v18, v62);
    }

    v32 = *(v0 + 120);
    v33 = *(v0 + 96);
    v34 = *(*(v0 + 88) + 216);
    sub_2272CD9E8(v32);
    sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    v12(v35, v32, v33);
    swift_willThrow();
    v28(v32, v33);
  }

  else
  {
    v63 = *(v0 + 440);
  }

  v36 = *(v0 + 360);
  v37 = *(v0 + 368);
  v38 = *(v0 + 352);
  v39 = *(v0 + 328);
  v40 = *(v0 + 296);
  v41 = *(v0 + 304);
  v42 = *(v0 + 288);
  v44 = *(v0 + 248);
  v43 = *(v0 + 256);
  v47 = *(v0 + 224);
  v48 = *(v0 + 200);
  v49 = *(v0 + 184);
  v50 = *(v0 + 176);
  loga = *(v0 + 168);
  v54 = *(v0 + 152);
  v56 = *(v0 + 144);
  v58 = *(v0 + 128);
  v60 = *(v0 + 120);
  v61 = *(v0 + 112);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2270489FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a3;
  v96 = a5;
  v90 = a6;
  v93 = sub_22766B390();
  v95 = *(v93 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = v83 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (v83 - v14);
  v16 = sub_227663FA0();
  v92 = *(v16 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227666B60();
  v97 = *(v20 - 8);
  v21 = *(v97 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v83 - v25;
  v27 = v99;
  v28 = a4;
  v29 = a1;
  v30 = a1;
  v31 = a2;
  result = sub_22703AF94(v98, v28, v30, v83 - v25);
  if (!v27)
  {
    v86 = v23;
    v87 = v15;
    v88 = v16;
    v89 = v26;
    v98 = v20;
    v33 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
    sub_226EAF48C(v29, v19);
    v99 = 0;
    v83[1] = v31;
    v84 = v19;
    v85 = v29;
    v34 = v87;
    sub_22766A630();
    v35 = v97;
    v36 = v98;
    v37 = v86;
    v38 = v89;
    (*(v97 + 16))(v86, v89, v98);
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v42 = v36;
      v43 = v100;
      *v41 = 136315138;
      v83[0] = sub_227666A50();
      v45 = v44;
      v46 = v37;
      v47 = *(v35 + 8);
      v47(v46, v42);
      v48 = v34;
      v49 = sub_226E97AE8(v83[0], v45, &v100);

      v50 = v41;
      v38 = v89;
      *(v50 + 1) = v49;
      _os_log_impl(&dword_226E8E000, v39, v40, "Querying alternative workouts for workoutIdentifier=%s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v51 = v43;
      v36 = v42;
      MEMORY[0x22AA9A450](v51, -1, -1);
      MEMORY[0x22AA9A450](v50, -1, -1);

      v52 = *(v95 + 8);
      v53 = v48;
    }

    else
    {

      v54 = v37;
      v47 = *(v35 + 8);
      v47(v54, v36);
      v52 = *(v95 + 8);
      v53 = v34;
    }

    v55 = v93;
    v52(v53, v93);
    v56 = v99;
    v57 = sub_22703CD44(v38, v96, v85);
    v99 = v56;
    v58 = v92;
    if (v56)
    {
      (*(v92 + 8))(v84, v88);
      return (v47)(v89, v36);
    }

    else
    {
      v59 = v57;
      v87 = v47;
      sub_22766A630();

      v60 = sub_22766B380();
      v61 = sub_22766C8B0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134217984;
        *(v62 + 4) = *(v59 + 16);

        _os_log_impl(&dword_226E8E000, v60, v61, "Found %ld workout alternatives", v62, 0xCu);
        v63 = v62;
        v55 = v93;
        MEMORY[0x22AA9A450](v63, -1, -1);
      }

      else
      {
      }

      v52(v94, v55);
      v64 = v99;
      v65 = sub_22704E488(v96, v85);
      v99 = v64;
      if (v64)
      {

        (*(v58 + 8))(v84, v88);
        return (v87)(v89, v36);
      }

      else
      {
        v66 = sub_226F34540(v65);
        sub_22766A630();

        v67 = sub_22766B380();
        v68 = sub_22766C8B0();
        v96 = v66;

        v69 = v67;
        if (os_log_type_enabled(v67, v68))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v100 = v71;
          *v70 = 136315138;
          v72 = sub_22766C610();
          v74 = sub_226E97AE8(v72, v73, &v100);
          v58 = v92;

          *(v70 + 4) = v74;
          v36 = v98;
          _os_log_impl(&dword_226E8E000, v69, v68, "Found completedWorkoutIdentifiers=%s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x22AA9A450](v71, -1, -1);
          MEMORY[0x22AA9A450](v70, -1, -1);

          v75 = v91;
          v76 = v93;
        }

        else
        {

          v75 = v91;
          v76 = v55;
        }

        v52(v75, v76);
        v77 = v90;
        v78 = v88;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE8, &qword_227676648);
        v80 = v79[12];
        v81 = v79[16];
        v82 = v79[20];
        (*(v97 + 32))(v77, v89, v36);
        *(v77 + v80) = v59;
        *(v77 + v81) = v96;
        return (*(v58 + 32))(v77 + v82, v84, v78);
      }
    }
  }

  return result;
}

uint64_t sub_227049138@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_227667240();
  v12 = sub_2276680D0();
  (*(v7 + 8))(v10, v6);
  result = sub_22733416C(v11, a2, v12);
  *a3 = result;
  return result;
}

uint64_t sub_227049244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E58, &qword_2276767B0) - 8) + 64) + 15;
  v9[12] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  v9[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  v9[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E60, &qword_2276767B8);
  v9[20] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v9[21] = swift_task_alloc();
  v17 = sub_227663FA0();
  v9[22] = v17;
  v18 = *(v17 - 8);
  v9[23] = v18;
  v19 = *(v18 + 64) + 15;
  v9[24] = swift_task_alloc();
  v20 = sub_227666B60();
  v9[25] = v20;
  v21 = *(v20 - 8);
  v9[26] = v21;
  v22 = *(v21 + 64) + 15;
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v23 = sub_227667370();
  v9[29] = v23;
  v24 = *(v23 - 8);
  v9[30] = v24;
  v9[31] = *(v24 + 64);
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v25 = sub_2276638D0();
  v9[35] = v25;
  v26 = *(v25 - 8);
  v9[36] = v26;
  v27 = *(v26 + 64) + 15;
  v9[37] = swift_task_alloc();
  v28 = sub_22766B390();
  v9[38] = v28;
  v29 = *(v28 - 8);
  v9[39] = v29;
  v30 = *(v29 + 64) + 15;
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270495F4, 0, 0);
}

uint64_t sub_2270495F4()
{
  v83 = v0;
  v1 = v0[41];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  sub_22766A630();
  (*(v3 + 16))(v2, v6, v4);

  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[41];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[35];
  if (v11)
  {
    v67 = v0[9];
    v72 = v10;
    log = v9;
    v18 = v0[6];
    v19 = v0[7];
    v80 = v0[41];
    v21 = v0[4];
    v20 = v0[5];
    v77 = v0[38];
    v22 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v82 = v69;
    *v22 = 136315906;
    *(v22 + 4) = sub_226E97AE8(v21, v20, &v82);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_226E97AE8(v18, v19, &v82);
    *(v22 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B9DF8, MEMORY[0x277D50180]);
    v23 = sub_22766D140();
    v25 = v24;
    (*(v15 + 8))(v16, v17);
    v26 = sub_226E97AE8(v23, v25, &v82);

    *(v22 + 24) = v26;
    *(v22 + 32) = 2080;
    sub_227668480();
    sub_226EABFDC(&qword_27D7B84C8, MEMORY[0x277D534C8]);
    v27 = sub_22766C610();
    v29 = sub_226E97AE8(v27, v28, &v82);

    *(v22 + 34) = v29;
    _os_log_impl(&dword_226E8E000, log, v72, "Querying replacement workouts algorithmVersion: %s, workoutIdentifier: %s, workoutPlan: %s modalityPreferences: %s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v69, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    v30 = *(v13 + 8);
    v30(v80, v77);
  }

  else
  {

    (*(v15 + 8))(v16, v17);
    v30 = *(v13 + 8);
    v30(v12, v14);
  }

  v31 = v0[40];
  v32 = v0[34];
  v33 = v0[29];
  v34 = v0[30];
  v35 = v0[10];
  sub_22766A630();
  v36 = *(v34 + 16);
  v0[42] = v36;
  v0[43] = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v81 = v36;
  v36(v32, v35, v33);
  v37 = sub_22766B380();
  v78 = sub_22766C8B0();
  v38 = os_log_type_enabled(v37, v78);
  v39 = v0[40];
  v40 = v0[38];
  v41 = v0[34];
  v43 = v0[29];
  v42 = v0[30];
  if (v38)
  {
    loga = v0[39];
    v44 = swift_slowAlloc();
    v73 = v30;
    v45 = swift_slowAlloc();
    v82 = v45;
    *v44 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8]);
    v68 = v39;
    v70 = v40;
    v46 = sub_22766D140();
    v48 = v47;
    (*(v42 + 8))(v41, v43);
    v49 = sub_226E97AE8(v46, v48, &v82);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_226E8E000, v37, v78, "Using configuration: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x22AA9A450](v45, -1, -1);
    MEMORY[0x22AA9A450](v44, -1, -1);

    v73(v68, v70);
  }

  else
  {

    (*(v42 + 8))(v41, v43);
    v30(v39, v40);
  }

  v50 = v0[33];
  v51 = v0[30];
  v52 = v0[31];
  v53 = v0[29];
  v54 = v0[10];
  v55 = v0[11];
  v56 = v0[6];
  v57 = v0[7];
  v79 = v55[25];
  v71 = v55[26];
  __swift_project_boxed_opaque_existential_0(v55 + 22, v79);
  v81(v50, v54, v53);
  v58 = (*(v51 + 80) + 40) & ~*(v51 + 80);
  v59 = swift_allocObject();
  v0[44] = v59;
  *(v59 + 2) = v55;
  *(v59 + 3) = v56;
  *(v59 + 4) = v57;
  v60 = *(v51 + 32);
  v0[45] = v60;
  v0[46] = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v60(&v59[v58], v50, v53);
  v61 = *(v71 + 24);

  v74 = (v61 + *v61);
  v62 = v61[1];
  v63 = swift_task_alloc();
  v0[47] = v63;
  *v63 = v0;
  v63[1] = sub_227049C88;
  v65 = v0[20];
  v64 = v0[21];

  return v74(v64, sub_22704FD40, v59, v65, v79, v71);
}

uint64_t sub_227049C88()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_22704A794;
  }

  else
  {
    v5 = *(v2 + 352);

    v4 = sub_227049DA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_227049DA4()
{
  v125 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v112 = v0[16];
  v6 = v0[8];
  v7 = *(v5 + 64);
  v102 = *(v0[26] + 32);
  v105 = *(v4 + *(v5 + 48));
  v102(v0[28], v4, v0[25]);
  (*(v2 + 32))(v1, v4 + v7, v3);
  v8 = sub_227663840();
  v109 = v8 + 64;
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v107 = (63 - v10) >> 6;
  v115 = v8;

  v13 = 0;
  v119 = MEMORY[0x277D84F90];
  v111 = v0;
  while (v11)
  {
LABEL_10:
    v15 = v0[18];
    v16 = v0[19];
    v17 = v0[17];
    v18 = __clz(__rbit64(v11)) | (v13 << 6);
    v19 = *(v115 + 48);
    v20 = sub_227665440();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v16, v19 + *(v21 + 72) * v18, v20);
    *(v16 + *(v112 + 48)) = *(*(v115 + 56) + 8 * v18);
    sub_226E93170(v16, v15, &qword_27D7B9DE0, &qword_227676640);
    v22 = *(v112 + 48);
    v23 = *(v15 + v22);
    (*(v21 + 32))(v17, v15, v20);
    *(v17 + v22) = v23;

    sub_226E97D1C(v17, &qword_27D7B9DE0, &qword_227676640);
    result = sub_226E97D1C(v16, &qword_27D7B9DE0, &qword_227676640);
    v24 = *(v23 + 16);
    v25 = *(v119 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v26 > *(v119 + 3) >> 1)
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_2273A57A4(result, v27, 1, v119);
      v119 = result;
    }

    v11 &= v11 - 1;
    if (*(v23 + 16))
    {
      if ((*(v119 + 3) >> 1) - *(v119 + 2) < v24)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      v0 = v111;
      if (v24)
      {
        v28 = *(v119 + 2);
        v29 = __OFADD__(v28, v24);
        v30 = v28 + v24;
        if (v29)
        {
          goto LABEL_53;
        }

        *(v119 + 2) = v30;
      }
    }

    else
    {

      v0 = v111;
      if (v24)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v14 >= v107)
    {
      break;
    }

    v11 = *(v109 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  v31 = *(v119 + 2);
  if (v31)
  {
    v32 = v0;
    v124 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v31, 0);
    v33 = v124;
    v34 = (v119 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;

      v37 = sub_227667380();
      v39 = v38;

      v124 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_226F1EF90(v40 > 1, v41 + 1, 1);
        v33 = v124;
      }

      v33[2] = v41 + 1;
      v42 = &v33[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v34 += 2;
      --v31;
    }

    while (v31);

    v0 = v32;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v44 = v0[45];
  v43 = v0[46];
  v46 = v0[42];
  v45 = v0[43];
  v47 = v0[32];
  v48 = v0[29];
  v116 = v0[28];
  v120 = v0[48];
  v49 = v0[10];
  v113 = v0[9];
  v50 = sub_226F3E6A8(v33);

  v46(v47, v49, v48);
  v51 = type metadata accessor for WorkoutPlanAlternativesProvider();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  v44(v54 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v47, v48);
  v55 = swift_task_alloc();
  v55[2] = v54;
  v55[3] = v113;
  v55[4] = v116;
  v55[5] = v50;
  v56 = sub_2275F205C(sub_22704FE5C, v55, v105);

  v124 = v56;

  sub_22704BF48(&v124);
  if (v120)
  {
  }

  else
  {

    v57 = v124;
    v58 = v124[2];
    if (v58)
    {
      v59 = v0;
      v121 = v0[26];
      v60 = v0[13];
      v124 = MEMORY[0x277D84F90];
      sub_226F1F928(0, v58, 0);
      v61 = v124;
      v62 = v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v117 = *(v60 + 72);
      do
      {
        v63 = v59[27];
        v64 = v59[25];
        v65 = v59;
        v68 = v59 + 14;
        v67 = v59[14];
        v66 = v68[1];
        sub_226E93170(v62, v66, &qword_27D7B9DD8, &qword_227679B60);
        sub_22704D454(v66, v67);
        v102(v63, v67, v64);
        v124 = v61;
        v70 = v61[2];
        v69 = v61[3];
        if (v70 >= v69 >> 1)
        {
          sub_226F1F928(v69 > 1, v70 + 1, 1);
          v61 = v124;
        }

        v71 = v65[27];
        v72 = v65[25];
        v61[2] = v70 + 1;
        v102(v61 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v70, v71, v72);
        v62 += v117;
        --v58;
        v59 = v65;
      }

      while (v58);
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
      v59 = v0;
    }

    v73 = v59[28];
    v74 = v59[26];
    v122 = v59[25];
    v75 = v59[24];
    v76 = v59[12];
    v77 = swift_task_alloc();
    v78 = v59;
    *(v77 + 16) = v75;
    v79 = sub_227039ADC(v61, sub_22704FDF8, v77);

    v80 = sub_22703A3D4(v79);

    sub_227666B40();
    v82 = v81;
    v83 = sub_227663E90();
    v84 = sub_22735B7D0(v83, v82);
    v86 = v85;

    if (v86)
    {
      v87 = 0;
    }

    else
    {
      v87 = v84;
    }

    v78[2] = v80;
    *(swift_task_alloc() + 16) = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E68, &qword_2276767C0);
    sub_226E9CFD0(&qword_27D7B9E70, &qword_27D7B9E68, &qword_2276767C0);
    sub_22766C210();

    (*(v74 + 8))(v73, v122);

    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E78, &qword_2276767C8);
    if ((*(*(v88 - 8) + 48))(v76, 1, v88) == 1)
    {
      sub_226E97D1C(v78[12], &qword_27D7B9E58, &qword_2276767B0);
      v89 = 1;
    }

    else
    {
      v102(v78[3], v78[12] + *(v88 + 48), v78[25]);
      v89 = 0;
    }

    v90 = v78;
    v91 = v78[40];
    v92 = v78[41];
    v93 = v78[37];
    v94 = v78[34];
    v96 = v90[32];
    v95 = v90[33];
    v101 = v90[28];
    v103 = v90[27];
    v97 = v90[23];
    v98 = v90[24];
    v99 = v90[22];
    v104 = v90[21];
    v106 = v90[19];
    v108 = v90[18];
    v110 = v90[17];
    v114 = v90[15];
    v118 = v90[14];
    v123 = v90[12];
    (*(v90[26] + 56))(v90[3], v89, 1, v90[25]);
    (*(v97 + 8))(v98, v99);

    v100 = v90[1];

    return v100();
  }
}

uint64_t sub_22704A794()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[24];
  v14 = v0[21];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[14];
  v20 = v0[12];

  v11 = v0[1];
  v12 = v0[48];

  return v11();
}

uint64_t sub_22704A8D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a3;
  v68 = a5;
  v66 = a6;
  v71 = sub_22766B390();
  v67 = *(v71 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v71);
  v70 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = sub_227663FA0();
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227666B60();
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  v25 = v74;
  result = sub_22703AF94(v73, a4, a1, &v57 - v23);
  if (!v25)
  {
    v62 = v22;
    v63 = v13;
    v73 = v24;
    v64 = v14;
    v65 = v18;
    v27 = a2;
    v28 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
    sub_226EAF48C(a1, v17);
    v74 = 0;
    v59 = v27;
    v60 = a1;
    v61 = v17;
    v29 = v63;
    sub_22766A630();
    v30 = v72;
    v31 = v62;
    v32 = v65;
    (*(v72 + 16))(v62, v73, v65);
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v75 = v58;
      *v35 = 136315138;
      v57 = sub_227666A50();
      v37 = v36;
      v38 = *(v30 + 8);
      v38(v31, v32);
      v39 = v29;
      v40 = sub_226E97AE8(v57, v37, &v75);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_226E8E000, v33, v34, "Querying replacement workouts for workoutIdentifier=%s", v35, 0xCu);
      v41 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);

      v42 = *(v67 + 8);
      v42(v39, v71);
    }

    else
    {

      v38 = *(v30 + 8);
      v38(v31, v32);
      v42 = *(v67 + 8);
      v42(v29, v71);
    }

    v43 = v74;
    v44 = v73;
    v45 = sub_22703CD44(v73, v68, v60);
    v74 = v43;
    if (v43)
    {
      (*(v69 + 8))(v61, v64);
      return (v38)(v44, v32);
    }

    else
    {
      v46 = v45;
      sub_22766A630();

      v47 = sub_22766B380();
      v48 = sub_22766C8B0();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v64;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = *(v46 + 16);

        _os_log_impl(&dword_226E8E000, v47, v48, "Found %ld workout replacements", v51, 0xCu);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      else
      {
      }

      v52 = v66;
      v53 = v69;
      v42(v70, v71);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E60, &qword_2276767B8);
      v55 = *(v54 + 48);
      v56 = *(v54 + 64);
      (*(v72 + 32))(v52, v73, v65);
      *(v52 + v55) = v46;
      return (*(v53 + 32))(v52 + v56, v61, v50);
    }
  }

  return result;
}

uint64_t sub_22704AE50@<X0>(uint64_t *a1@<X8>)
{
  sub_227666B40();
  v3 = v2;
  v4 = sub_227663E90();
  v5 = sub_22735B7D0(v4, v3);
  v7 = v6;

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_22704AED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = sub_227666B60();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_22704AFA8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[27];

  v2 = OBJC_IVAR____TtC15SeymourServices19WorkoutPlanProvider__workoutPlanAlgorithmSeed;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD0, &qword_227676628);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanProvider()
{
  result = qword_2813A1408;
  if (!qword_2813A1408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22704B0D4()
{
  sub_22704B184();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22704B184()
{
  if (!qword_2813A5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    sub_22704B250(&qword_28139D208);
    sub_22704B250(&qword_28139D200);
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A5498);
    }
  }
}

uint64_t sub_22704B250(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22704B2CC()
{
  result = qword_27D7B87A8;
  if (!qword_27D7B87A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87A8);
  }

  return result;
}

unint64_t *sub_22704B384(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22704D348(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_22704B3FC(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *a3;
  sub_226EB396C(v6, v5, v8);

  v10 = sub_226F491D8(v6, v5, v8);
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

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_226FE2FE8(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_226F491D8(v6, v5, v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v10 = sub_22766D220();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_226FF0A58();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_226EB2DFC(v6, v5, v8);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = v22[6] + 24 * v10;
  *v23 = v6;
  *(v23 + 8) = v5;
  *(v23 + 16) = v8;
  *(v22[7] + 8 * v10) = v7;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v39 != 1)
    {
      v16 = (a1 + 88);
      v26 = 1;
      while (v26 < *(a1 + 16))
      {
        v6 = *(v16 - 3);
        v5 = *(v16 - 2);
        v7 = *v16;
        v8 = *(v16 - 8);
        v27 = *a3;
        sub_226EB396C(v6, v5, v8);

        v28 = sub_226F491D8(v6, v5, v8);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v14 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v14)
        {
          goto LABEL_23;
        }

        a2 = v29;
        if (v27[3] < v32)
        {
          sub_226FE2FE8(v32, 1);
          v33 = *a3;
          v28 = sub_226F491D8(v6, v5, v8);
          if ((a2 & 1) != (v34 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v35 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v36 = v35[6] + 24 * v28;
        *v36 = v6;
        *(v36 + 8) = v5;
        *(v36 + 16) = v8;
        *(v35[7] + 8 * v28) = v7;
        v37 = v35[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        ++v26;
        v35[2] = v38;
        v16 += 4;
        if (v39 == v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_21:

    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_22704B80C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a1 + 56;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;
  v40 = a2 + 32;

  v11 = 0;
  v12 = 0;
  v39 = v6;
  if (v9)
  {
    do
    {
      v13 = v9;
      v14 = v12;
LABEL_10:
      v16 = *(a2 + 16);
      if (v11 == v16)
      {
LABEL_25:
        sub_226EBB21C();

        swift_bridgeObjectRelease_n();
        return;
      }

      if (v11 >= v16)
      {
        goto LABEL_27;
      }

      v42 = v11;
      v43 = (v13 - 1) & v13;
      v17 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13)))));
      v18 = *v17;
      v19 = v17[1];
      v20 = *(v40 + 8 * v11);
      v21 = *a4;

      v23 = sub_226E92000(v18, v19);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_28;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if (a3)
        {
          if (v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_226FF016C();
          if (v27)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_226FE2228(v26, a3 & 1);
        v28 = *a4;
        v29 = sub_226E92000(v18, v19);
        if ((v27 & 1) != (v30 & 1))
        {
          goto LABEL_30;
        }

        v23 = v29;
        if (v27)
        {
LABEL_23:
          v36 = swift_allocError();
          swift_willThrow();
          v37 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
          if (swift_dynamicCast())
          {
            goto LABEL_31;
          }

          sub_226EBB21C();

          swift_bridgeObjectRelease_n();

          return;
        }
      }

      v31 = *a4;
      *(*a4 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 8 * v23) = v20;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_29;
      }

      v9 = v43;
      v11 = v42 + 1;
      v31[2] = v35;
      a3 = 1;
      v12 = v14;
      v6 = v39;
    }

    while (v43);
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_25;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_22766D220();
  __break(1u);
LABEL_31:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_22704BBEC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a3;

  v10 = sub_226F3AC2C(v7);
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
    sub_226FE69A8(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_226F3AC2C(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_22766D220();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_226FF239C();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v7;
  *(v22[7] + 8 * v10) = v8;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v7 = *(v6 - 8);
      v8 = *v6;
      v26 = *a3;

      v27 = sub_226F3AC2C(v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_226FE69A8(v31, 1);
        v32 = *a3;
        v27 = sub_226F3AC2C(v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v7;
      *(v34[7] + 8 * v27) = v8;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_22704BF48(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117834(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22704BFFC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22704BFFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22704C398(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22704C140(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22704C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    v23 = v21;
    v24 = v40;
    while (1)
    {
      sub_226E93170(v22, v17, &qword_27D7B9DD8, &qword_227679B60);
      sub_226E93170(v20, v13, &qword_27D7B9DD8, &qword_227679B60);
      v25 = *(v24 + 48);
      v26 = *&v17[v25];
      v27 = *&v13[v25];
      sub_226E97D1C(v13, &qword_27D7B9DD8, &qword_227679B60);
      result = sub_226E97D1C(v17, &qword_27D7B9DD8, &qword_227679B60);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_22704D454(v22, v39);
      v24 = v40;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22704D454(v28, v20);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22704C398(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v110 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v124 = &v108 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v110;
    if (!*v110)
    {
      goto LABEL_136;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_2271171D0(v4);
    }

    v127 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v104 = *(result + 16 * v4);
        v105 = result;
        v106 = *(result + 16 * (v4 - 1) + 40);
        sub_22704CCE8(*a3 + *(v119 + 72) * v104, *a3 + *(v119 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v119 + 72) * v106, a4);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_2271171D0(v105);
        }

        if (v4 - 2 >= *(v105 + 2))
        {
          goto LABEL_124;
        }

        v107 = &v105[16 * v4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v127 = v105;
        sub_227117144(v4 - 1);
        result = v127;
        v4 = *(v127 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v126 = v9;
  while (1)
  {
    v22 = v20;
    v116 = v21;
    if (v20 + 1 >= v19)
    {
      v34 = v20 + 1;
    }

    else
    {
      v111 = v20;
      v23 = *a3;
      v121 = v19;
      v122 = v23;
      v24 = *(v119 + 72);
      v25 = v23 + v24 * (v20 + 1);
      v26 = v124;
      sub_226E93170(v25, v124, &qword_27D7B9DD8, &qword_227679B60);
      v27 = v111;
      v28 = v23 + v24 * v111;
      v29 = v125;
      sub_226E93170(v28, v125, &qword_27D7B9DD8, &qword_227679B60);
      v30 = *(v9 + 48);
      v31 = *(v26 + v30);
      v32 = *(v29 + v30);
      sub_226E97D1C(v29, &qword_27D7B9DD8, &qword_227679B60);
      result = sub_226E97D1C(v26, &qword_27D7B9DD8, &qword_227679B60);
      v4 = v27 + 2;
      v120 = v24;
      v33 = v122 + v24 * v4;
      while (1)
      {
        v34 = v121;
        if (v121 == v4)
        {
          break;
        }

        LODWORD(v122) = v32 < v31;
        v35 = v124;
        sub_226E93170(v33, v124, &qword_27D7B9DD8, &qword_227679B60);
        v36 = v125;
        sub_226E93170(v25, v125, &qword_27D7B9DD8, &qword_227679B60);
        v37 = *(v126 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_226E97D1C(v36, &qword_27D7B9DD8, &qword_227679B60);
        result = sub_226E97D1C(v35, &qword_27D7B9DD8, &qword_227679B60);
        ++v4;
        v33 += v120;
        v25 += v120;
        if (((v122 ^ (v39 >= v38)) & 1) == 0)
        {
          v34 = v4 - 1;
          break;
        }
      }

      a4 = v109;
      v9 = v126;
      v22 = v111;
      if (v32 < v31)
      {
        if (v34 < v111)
        {
          goto LABEL_127;
        }

        if (v111 < v34)
        {
          v108 = v6;
          v4 = v120 * (v34 - 1);
          v40 = v34 * v120;
          v41 = v34;
          v42 = v111;
          v43 = v111 * v120;
          v112 = a3;
          do
          {
            if (v42 != --v34)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_133;
              }

              sub_22704D454(v44 + v43, v115);
              if (v43 < v4 || v44 + v43 >= (v44 + v40))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_22704D454(v115, v44 + v4);
              a3 = v112;
            }

            ++v42;
            v4 -= v120;
            v40 -= v120;
            v43 += v120;
          }

          while (v42 < v34);
          v6 = v108;
          a4 = v109;
          v9 = v126;
          v22 = v111;
          v34 = v41;
        }
      }
    }

    v45 = a3[1];
    if (v34 < v45)
    {
      if (__OFSUB__(v34, v22))
      {
        goto LABEL_126;
      }

      if (v34 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v46)
        {
          break;
        }
      }
    }

    v20 = v34;
    if (v34 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v116;
    }

    else
    {
      result = sub_2273A4F9C(0, *(v116 + 2) + 1, 1, v116);
      v21 = result;
    }

    v4 = *(v21 + 2);
    v47 = *(v21 + 3);
    a4 = v4 + 1;
    if (v4 >= v47 >> 1)
    {
      result = sub_2273A4F9C((v47 > 1), v4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = a4;
    v48 = &v21[16 * v4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    if (!*v110)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      v49 = *v110;
      while (1)
      {
        v50 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_53:
          if (v54)
          {
            goto LABEL_114;
          }

          v67 = &v21[16 * a4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_117;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_121;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v77 = &v21[16 * a4];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_67:
        if (v72)
        {
          goto LABEL_116;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_74:
        v4 = v50 - 1;
        if (v50 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v88 = v21;
        a4 = *&v21[16 * v4 + 32];
        v89 = *&v21[16 * v50 + 40];
        sub_22704CCE8(*a3 + *(v119 + 72) * a4, *a3 + *(v119 + 72) * *&v21[16 * v50 + 32], *a3 + *(v119 + 72) * v89, v49);
        if (v6)
        {
        }

        if (v89 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_2271171D0(v88);
        }

        v9 = v126;
        if (v4 >= *(v90 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v90[16 * v4];
        *(v91 + 4) = a4;
        *(v91 + 5) = v89;
        v127 = v90;
        v4 = &v127;
        result = sub_227117144(v50);
        v21 = v127;
        a4 = *(v127 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * a4 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_112;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_113;
      }

      v62 = &v21[16 * a4];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_115;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_118;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v53 < v87)
        {
          v50 = a4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v19 = a3[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_97;
    }
  }

  v108 = v6;
  v111 = v22;
  v112 = a3;
  v92 = *(v119 + 72);
  v93 = *a3 + v92 * (v34 - 1);
  v94 = -v92;
  v95 = v22 - v34;
  v122 = *a3;
  v113 = v92;
  v114 = v46;
  a4 = v122 + v34 * v92;
LABEL_87:
  v120 = v93;
  v121 = v34;
  v117 = a4;
  v118 = v95;
  v96 = v93;
  v97 = v126;
  while (1)
  {
    v4 = v124;
    sub_226E93170(a4, v124, &qword_27D7B9DD8, &qword_227679B60);
    v98 = v125;
    sub_226E93170(v96, v125, &qword_27D7B9DD8, &qword_227679B60);
    v99 = *(v97 + 48);
    v100 = *(v4 + v99);
    v101 = *(v98 + v99);
    sub_226E97D1C(v98, &qword_27D7B9DD8, &qword_227679B60);
    result = sub_226E97D1C(v4, &qword_27D7B9DD8, &qword_227679B60);
    if (v101 >= v100)
    {
LABEL_86:
      v34 = v121 + 1;
      v20 = v114;
      v93 = v120 + v113;
      v95 = v118 - 1;
      a4 = v117 + v113;
      if (v121 + 1 != v114)
      {
        goto LABEL_87;
      }

      v6 = v108;
      v22 = v111;
      a3 = v112;
      v9 = v126;
      if (v114 < v111)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    v102 = v123;
    sub_22704D454(a4, v123);
    v97 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_22704D454(v102, v96);
    v96 += v94;
    a4 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_22704CCE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = v28;
        while (1)
        {
          v31 = v49;
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v42;
            goto LABEL_58;
          }

          v43 = v25;
          v49 += v26;
          v32 = v27 + v26;
          sub_226E93170(v32, v12, &qword_27D7B9DD8, &qword_227679B60);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v47;
          sub_226E93170(v34, v47, &qword_27D7B9DD8, &qword_227679B60);
          v37 = *(v48 + 48);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v12 = v35;
          sub_226E97D1C(v40, &qword_27D7B9DD8, &qword_227679B60);
          sub_226E97D1C(v35, &qword_27D7B9DD8, &qword_227679B60);
          if (v39 < v38)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v32;
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v32;
            }
          }

          v27 = v25;
          v28 = v46;
          v30 = v32 > v45;
          v26 = v44;
          if (!v30)
          {
            a2 = v46;
            goto LABEL_57;
          }
        }

        if (v31 < v46 || v49 >= v46)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v26 = v44;
          a2 = v33;
          if (v31 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_57:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < v49)
    {
      do
      {
        sub_226E93170(a2, v12, &qword_27D7B9DD8, &qword_227679B60);
        v21 = v47;
        sub_226E93170(a4, v47, &qword_27D7B9DD8, &qword_227679B60);
        v22 = *(v48 + 48);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_226E97D1C(v21, &qword_27D7B9DD8, &qword_227679B60);
        sub_226E97D1C(v12, &qword_27D7B9DD8, &qword_227679B60);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v19 && a2 < v49);
    }
  }

LABEL_58:
  sub_227117270(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_22704D1E8(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22704D348(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_22704B384(v9, v4, v2);
  result = MEMORY[0x22AA9A450](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_22704D348(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_227329178(result, a2, v4, a3);
      }
    }
  }

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
      return sub_227329178(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22704D454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22704D4C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_227049138(a1, v2[3], a2);
}

uint64_t sub_22704D4E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v46 = MEMORY[0x277D84F90];
  sub_226F1FE48(0, v2, 0);
  v3 = v46;
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  result = sub_22766CC90();
  v8 = result;
  v9 = 0;
  v10 = *(v4 + 36);
  v36 = v4 + 72;
  v37 = v2;
  v38 = v10;
  v39 = v4 + 64;
  v40 = v4;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_22;
    }

    if (v10 != *(v4 + 36))
    {
      goto LABEL_23;
    }

    v42 = v9;
    v13 = *(v4 + 56);
    v14 = *(v4 + 48) + 24 * v8;
    v15 = v3;
    v17 = *v14;
    v16 = *(v14 + 8);
    v18 = *(v14 + 16);
    v19 = *(v13 + 8 * v8);
    sub_226EB396C(*v14, v16, *(v14 + 16));

    v20 = a2(v17, v16, v18, v19);
    v44 = v21;
    v45 = v20;
    v43 = v22;
    v24 = v23;
    v25 = v16;
    v3 = v15;
    sub_226EB2DFC(v17, v25, v18);

    v27 = *(v15 + 16);
    v26 = *(v15 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_226F1FE48((v26 > 1), v27 + 1, 1);
      v3 = v15;
    }

    *(v3 + 16) = v27 + 1;
    v28 = v3 + 32 * v27;
    *(v28 + 32) = v45;
    *(v28 + 40) = v44;
    *(v28 + 48) = v43 & 1;
    *(v28 + 56) = v24;
    v4 = v40;
    v11 = 1 << *(v40 + 32);
    if (v8 >= v11)
    {
      goto LABEL_24;
    }

    v5 = v39;
    v29 = *(v39 + 8 * v12);
    if ((v29 & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    v10 = v38;
    if (v38 != *(v40 + 36))
    {
      goto LABEL_26;
    }

    v30 = v29 & (-2 << (v8 & 0x3F));
    if (v30)
    {
      v11 = __clz(__rbit64(v30)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v12 << 6;
      v32 = v12 + 1;
      v33 = (v36 + 8 * v12);
      while (v32 < (v11 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_226EB526C(v8, v38, 0);
          v11 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v8, v38, 0);
    }

LABEL_4:
    v9 = v42 + 1;
    v8 = v11;
    if (v42 + 1 == v37)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22704D7AC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 64); ; i += 40)
  {
    v5 = *(i - 3);
    v32 = *(i - 4);
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;

    sub_226EB396C(v7, v6, v8);
    sub_226EB396C(v7, v6, v8);
    v10 = sub_226F491D8(v7, v6, v8);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_226FE696C(v13, 1);
      v1 = v33;
      v15 = sub_226F491D8(v7, v6, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v30 = v5;
      sub_226EB2DFC(v7, v6, v8);
      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v31 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2273A55F4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_2273A55F4((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v17 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[40 * v21];
      v2 = v31;
      *(v4 + 4) = v32;
      *(v4 + 5) = v30;
      *(v4 + 6) = v7;
      *(v4 + 7) = v6;
      v4[64] = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_227670CD0;
      *(v24 + 32) = v32;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v6;
      *(v24 + 64) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = v1[6] + 24 * v10;
      *v25 = v7;
      *(v25 + 8) = v6;
      *(v25 + 16) = v8;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22704DA3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v5 = sub_22766D010();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_22704B80C(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_22704DB08(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    v12 = *v4;

    result = sub_226E92000(v10, v9);
    v14 = v12[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      sub_226FE6994(v17, a2 & 1);
      v19 = *v4;
      result = sub_226E92000(v10, v9);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v21 = *v4;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v32 = result;
    sub_226FF2388();
    result = v32;
    v4 = a3;
    v21 = *a3;
    if ((v18 & 1) == 0)
    {
LABEL_25:
      v21[(result >> 6) + 8] |= 1 << result;
      v33 = (v21[6] + 16 * result);
      *v33 = v10;
      v33[1] = v9;
      *(v21[7] + 8 * result) = v11;
      v34 = v21[2];
      v16 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v16)
      {
        goto LABEL_30;
      }

      v21[2] = v35;
      goto LABEL_5;
    }

LABEL_12:
    v22 = *(v21[7] + 8 * result);
    v23 = *(v11 + 16);
    v24 = *(v22 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_29;
    }

    v37 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v27 = *(v22 + 3) >> 1, v27 < v25))
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v22 = sub_2273A5120(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      v27 = *(v22 + 3) >> 1;
    }

    v4 = a3;
    if (*(v11 + 16))
    {
      v29 = *(v22 + 2);
      if (v27 - v29 < v23)
      {
        goto LABEL_32;
      }

      memcpy(&v22[8 * v29 + 32], (v11 + 32), 8 * v23);

      if (v23)
      {
        v30 = *(v22 + 2);
        v16 = __OFADD__(v30, v23);
        v31 = v30 + v23;
        if (v16)
        {
          goto LABEL_33;
        }

        *(v22 + 2) = v31;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_31;
      }
    }

    v7 = v21[7];
    v8 = *(v7 + 8 * v37);
    *(v7 + 8 * v37) = v22;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22704DD68(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v34 = v1;
  while (v4)
  {
    v11 = v6;
LABEL_11:
    v12 = __clz(__rbit64(v4)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v36 = *v13;
    v15 = *(a1 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);

    sub_226EB396C(v17, v16, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_226F491D8(v17, v16, v18);
    v22 = v7[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v7[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        sub_226FF21EC();
        v20 = v32;
      }
    }

    else
    {
      sub_226FE6650(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_226F491D8(v17, v16, v18);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v4 &= v4 - 1;
    if (v26)
    {
      v8 = v20;
      sub_226EB2DFC(v17, v16, v18);
      v9 = (v7[7] + 16 * v8);
      v10 = v9[1];
      *v9 = v36;
      v9[1] = v14;
    }

    else
    {
      v7[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v7[6] + 24 * v20;
      *v28 = v17;
      *(v28 + 8) = v16;
      *(v28 + 16) = v18;
      v29 = (v7[7] + 16 * v20);
      *v29 = v36;
      v29[1] = v14;
      v30 = v7[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v7[2] = v31;
    }

    v6 = v11;
    v1 = v34;
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return a1;
    }

    v4 = *(v1 + 8 * v11);
    ++v6;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22704DFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v57 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  sub_22766A630();
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  v19 = os_log_type_enabled(v17, v18);
  v55 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a2;
    _os_log_impl(&dword_226E8E000, v17, v18, "Logging plans for %ld days:", v20, 0xCu);
    v21 = v20;
    v12 = v55;
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  v23 = *(v5 + 8);
  v22 = v5 + 8;
  v58 = v23;
  result = v23(v16, v4);
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v26 = 0;
    *&v25 = 134217984;
    v56 = v25;
    *&v25 = 134218242;
    v51 = v25;
    v52 = v4;
    v53 = a2;
    v54 = v22;
    do
    {
      v28 = MEMORY[0x22AA95620](v26);
      if (v28 == 7)
      {
        sub_22766A630();
        v29 = sub_22766B380();
        v30 = sub_22766C890();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = v56;
          *(v31 + 4) = v26;
          _os_log_impl(&dword_226E8E000, v29, v30, "Failed to create Weekday with value: %ld", v31, 0xCu);
          MEMORY[0x22AA9A450](v31, -1, -1);
        }

        v27 = v9;
      }

      else
      {
        v32 = v57;
        if (*(a1 + 16))
        {
          v33 = sub_226F3AC2C(v28);
          if (v34)
          {
            v35 = *(*(a1 + 56) + 8 * v33);

            sub_22766A630();

            v36 = sub_22766B380();
            v37 = sub_22766C8B0();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v59 = v39;
              *v38 = v51;
              *(v38 + 4) = v26;
              *(v38 + 12) = 2080;
              v40 = sub_227667400();
              v41 = a1;
              v42 = MEMORY[0x22AA98660](v35, v40);
              v44 = v43;

              v45 = sub_226E97AE8(v42, v44, &v59);

              *(v38 + 14) = v45;
              a1 = v41;
              v4 = v52;
              _os_log_impl(&dword_226E8E000, v36, v37, "Day: %ld -> Scheduled items: %s", v38, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v39);
              v46 = v39;
              a2 = v53;
              MEMORY[0x22AA9A450](v46, -1, -1);
              MEMORY[0x22AA9A450](v38, -1, -1);

              v47 = v57;
            }

            else
            {

              v47 = v32;
            }

            result = v58(v47, v4);
            v12 = v55;
            goto LABEL_8;
          }
        }

        sub_22766A630();
        v48 = sub_22766B380();
        v49 = sub_22766C8B0();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = v56;
          *(v50 + 4) = v26;
          _os_log_impl(&dword_226E8E000, v48, v49, "Day: %ld -> unscheduledDay", v50, 0xCu);
          MEMORY[0x22AA9A450](v50, -1, -1);
        }

        v27 = v12;
      }

      result = v58(v27, v4);
LABEL_8:
      ++v26;
    }

    while (a2 != v26);
  }

  return result;
}

uint64_t sub_22704E488(uint64_t a1, void *a2)
{
  v86 = a2;
  v94 = sub_227664530();
  v90 = *(v94 - 8);
  v2 = v90[8];
  MEMORY[0x28223BE20](v94);
  v93 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227665FB0();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 8);
  MEMORY[0x28223BE20](v4);
  v83 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v81 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v82 = &v79 - v10;
  v11 = sub_227667AA0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_227662930();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v79 - v21;
  v23 = sub_227662750();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v88 = &v79 - v29;
  v30 = sub_2276681F0();
  v91 = *(v30 - 8);
  v92 = v30;
  v31 = *(v91 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667240();
  sub_227662740();
  (*(v15 + 104))(v18, *MEMORY[0x277CC9968], v14);
  sub_227668120();
  sub_227662610();
  (*(v15 + 8))(v18, v14);
  v34 = v24 + 8;
  v35 = v23;
  v80 = *(v24 + 8);
  v80(v27, v23);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_226E97D1C(v22, &qword_27D7B9690, qword_227670B50);
    v36 = sub_227665CB0();
    sub_226EABFDC(&qword_28139B740, MEMORY[0x277D51D30]);
    swift_allocError();
    (*(*(v36 - 1) + 104))(v37, *MEMORY[0x277D51D28], v36);
    swift_willThrow();
    v39 = v91;
    v38 = v92;
    goto LABEL_5;
  }

  v40 = v88;
  (*(v24 + 32))(v88, v22, v23);
  v41 = v81;
  v42 = v40;
  sub_227665F70();
  sub_2276681C0();
  v43 = v83;
  sub_227665F60();
  sub_227665F50();
  v44 = *(v84 + 1);
  v45 = v43;
  v46 = v85;
  v44(v45, v85);
  v44(v41, v46);
  v36 = v89;
  sub_227667A90();
  v47 = __swift_project_boxed_opaque_existential_0(v86, v86[3]);
  sub_22742F870(v36, *v47, v47[1], *(v47 + 16), v47[3]);
  v48 = v87;
  v49 = sub_227232EB8(100);
  v87 = v48;
  if (v48)
  {

    sub_22704FCD4(v36, MEMORY[0x277D530D0]);
    v80(v42, v23);
    v39 = v91;
    v38 = v92;
LABEL_5:
    (*(v39 + 8))(v33, v38);
    return v36;
  }

  v51 = v49;
  v79 = v34;
  v81 = v35;
  v82 = v33;

  v36 = sub_2271481B8(MEMORY[0x277D84F90]);
  v52 = v51 + 56;
  v53 = 1 << v51[32];
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v51 + 7);
  v56 = (v53 + 63) >> 6;
  v86 = v90 + 2;
  v83 = (v90 + 1);

  v57 = 0;
  v84 = v51 + 56;
  v85 = v51;
  if (v55)
  {
    while (1)
    {
      v58 = v57;
LABEL_14:
      (v90[2])(v93, *(v51 + 6) + v90[9] * (__clz(__rbit64(v55)) | (v58 << 6)), v94);
      v59 = sub_2276644F0();
      v61 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v36;
      v63 = sub_226E92000(v59, v61);
      v65 = v36[2];
      v66 = (v64 & 1) == 0;
      v67 = __OFADD__(v65, v66);
      v68 = v65 + v66;
      if (v67)
      {
        goto LABEL_29;
      }

      v69 = v64;
      if (v36[3] < v68)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v72 = v63;
      sub_226FF016C();
      v63 = v72;
      v36 = v95;
      if (v69)
      {
LABEL_20:
        v71 = v63;

        v63 = v71;
        goto LABEL_24;
      }

LABEL_22:
      v36[(v63 >> 6) + 8] |= 1 << v63;
      v73 = (v36[6] + 16 * v63);
      *v73 = v59;
      v73[1] = v61;
      *(v36[7] + 8 * v63) = 0;
      v74 = v36[2];
      v67 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v67)
      {
        goto LABEL_31;
      }

      v36[2] = v75;
LABEL_24:
      v76 = v36[7];
      v77 = *(v76 + 8 * v63);
      v67 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      v51 = v85;
      if (v67)
      {
        goto LABEL_30;
      }

      v55 &= v55 - 1;
      *(v76 + 8 * v63) = v78;
      (*v83)(v93, v94);
      v57 = v58;
      v52 = v84;
      if (!v55)
      {
        goto LABEL_11;
      }
    }

    sub_226FE2228(v68, isUniquelyReferenced_nonNull_native);
    v63 = sub_226E92000(v59, v61);
    if ((v69 & 1) != (v70 & 1))
    {
      goto LABEL_32;
    }

LABEL_19:
    v36 = v95;
    if (v69)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_11:
  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v58 >= v56)
    {

      sub_22704FCD4(v89, MEMORY[0x277D530D0]);
      v80(v88, v81);
      (*(v91 + 8))(v82, v92);

      return v36;
    }

    v55 = *&v52[8 * v58];
    ++v57;
    if (v55)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_22704ED88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a2;
  v52 = a4;
  v51 = a3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = *v12;
      v14 = *(*v12 + 16);
      v15 = *(v11 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_36;
      }

      v17 = *v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *(v11 + 3) >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v19 = v15 + v14;
        }

        else
        {
          v19 = v15;
        }

        v11 = sub_2273A55F4(isUniquelyReferenced_nonNull_native, v19, 1, v11);
        if (!*(v13 + 16))
        {
LABEL_3:

          if (v14)
          {
            goto LABEL_37;
          }

          goto LABEL_4;
        }
      }

      if ((*(v11 + 3) >> 1) - *(v11 + 2) < v14)
      {
        goto LABEL_38;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v20 = *(v11 + 2);
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_39;
        }

        *(v11 + 2) = v22;
      }

LABEL_4:
      ++v12;
      --v10;
    }

    while (v10);
  }

  v23 = v57;
  v24 = sub_22704D7AC(v11);

  v25 = sub_227039E78(v24);
  v54 = v23;

  v58 = MEMORY[0x277D84F90];
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  v30 = (v27 + 63) >> 6;
  v57 = v25;

  v31 = 0;
  v55 = v25 + 64;
  while (v29)
  {
LABEL_28:
    v35 = __clz(__rbit64(v29)) | (v31 << 6);
    v36 = v56;
    v37 = *(v57 + 48) + 24 * v35;
    v39 = *v37;
    v38 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(*(v57 + 56) + 8 * v35);
    v42 = *(v56 + 16);
    sub_226EB396C(*v37, v38, *(v37 + 16));
    if (v42)
    {
      v43 = sub_226F491D8(v39, v38, v40);
      v33 = v40;
      if (v44)
      {
        v53 = v40;
        v45 = (*(v36 + 56) + 16 * v43);
        v46 = *v45;
        v47 = v45[1];

        v48 = v46;
        v49 = v54;
        v50 = sub_22703B664(v41, v48, v47, v51, v52);
        v54 = v49;
        if (v49)
        {

          sub_226EB2DFC(v39, v38, v53);

          return;
        }

        v32 = v50;

        v33 = v53;
      }

      else
      {
        v32 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v32 = MEMORY[0x277D84FA0];
      v33 = v40;
    }

    v29 &= v29 - 1;
    sub_226EB2DFC(v39, v38, v33);
    sub_22745FA5C(v32);
    v26 = v55;
  }

  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v34 >= v30)
    {

      sub_226EDEFE4(v58);

      return;
    }

    v29 = *(v26 + 8 * v34);
    ++v31;
    if (v29)
    {
      v31 = v34;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void *sub_22704F1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_227667400();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E40, &qword_227676690);
  result = sub_22766CFF0();
  v10 = 0;
  v53 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v64 = (v5 + 8);
  v51 = v5;
  v52 = result + 8;
  v60 = v4;
  v61 = a2;
  v50 = result;
  v48 = v12;
  v49 = v17;
  v59 = v5 + 16;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v53 + 48) + v21);
      v23 = *(*(v53 + 56) + 8 * v21);
      v24 = *(v23 + 16);
      if (v24)
      {
        break;
      }

      v43 = MEMORY[0x277D84F90];
LABEL_25:
      *(v52 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(result[6] + v21) = v22;
      *(result[7] + 8 * v21) = v43;
      v44 = result[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_30;
      }

      result[2] = v46;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v55 = *(*(v53 + 48) + v21);
    v56 = v18 | (v10 << 6);
    v57 = v16;
    v58 = v10;
    v25 = v23 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v66 = *(v51 + 72);
    v65 = *(v51 + 16);
    v54 = v23;

    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v65(v8, v25, v4);
      v26 = sub_2276673E0();
      if (*(a2 + 16))
      {
        v28 = sub_226E92000(v26, v27);
        v30 = v29;

        if (v30)
        {
          v31 = *(a2 + 56) + 24 * v28;
          v32 = v4;
          v33 = *v31;
          v34 = *(v31 + 8);
          v35 = *(v31 + 16);
          sub_226EB396C(*v31, v34, v35);
          v36 = sub_2276673F0();
          v62 = sub_2276673C0();
          (*v64)(v8, v32);
          v37 = v36;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v38 = v63;
          }

          else
          {
            v38 = sub_2273A55F4(0, *(v63 + 2) + 1, 1, v63);
          }

          v40 = *(v38 + 2);
          v39 = *(v38 + 3);
          if (v40 >= v39 >> 1)
          {
            v38 = sub_2273A55F4((v39 > 1), v40 + 1, 1, v38);
          }

          *(v38 + 2) = v40 + 1;
          v63 = v38;
          v41 = &v38[40 * v40];
          a2 = v61;
          v42 = v62;
          *(v41 + 4) = v37;
          *(v41 + 5) = v42;
          *(v41 + 6) = v33;
          *(v41 + 7) = v34;
          v41[64] = v35;
          v4 = v60;
          goto LABEL_14;
        }
      }

      else
      {
      }

      (*v64)(v8, v4);
LABEL_14:
      v25 += v66;
      if (!--v24)
      {

        v17 = v49;
        result = v50;
        v16 = v57;
        v10 = v58;
        v21 = v56;
        v22 = v55;
        v43 = v63;
        goto LABEL_25;
      }
    }
  }

LABEL_5:
  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return result;
    }

    v20 = *(v48 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22704F57C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227667370() - 8);
  v6 = v2[4];
  return sub_227042F18(a1, v2[2], v2[3], v2[5], v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), a2);
}

uint64_t sub_22704F600(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227664EC0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227664CE0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226E92F34;

  return sub_2272D2054(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_22704F76C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_227664CE0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_227665C20() - 8);
  v10 = (*(v9 + 80) + v8 + 8) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v6);
  v15 = *(v1 + v7);
  v16 = *(v1 + v8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_226E93028;

  return sub_2272D4550(v14, v15, v16, a1, v11, v12, v13, v1 + v5, v1 + v10);
}

unint64_t sub_22704F918()
{
  result = qword_27D7B9E30;
  if (!qword_27D7B9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9E30);
  }

  return result;
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v3 = sub_227664EC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  v14 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v3);
  v15 = *(v1 + v7);

  (*(v9 + 8))(v1 + v11, v8);

  return MEMORY[0x2821FE8E8](v1, v11 + v12, v13 | 7);
}

uint64_t sub_22704FB68(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227664EC0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227667100() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226E93028;

  return sub_2272CE33C(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_22704FCD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22704FE14@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = __OFSUB__(*result, v3);
  v5 = *result - v3;
  if (v4)
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0 || (v4 = __OFSUB__(0, v5), v5 = -v5, !v4))
  {
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

id sub_22705000C(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = sub_22766C000();
  if (*(v3 + 16))
  {
    v6 = sub_226E92000(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v3 + 56) + 8 * v6);

      return sub_22766C750();
    }
  }

  else
  {
  }

  v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v11 initWithInteger_];
}

id sub_227050148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AchievementEnvironment()
{
  result = qword_27D7B9EA8;
  if (!qword_27D7B9EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2270502AC()
{
  sub_2270503BC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_227662750();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2270503BC()
{
  if (!qword_2813A5818)
  {
    sub_227662750();
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A5818);
    }
  }
}

uint64_t sub_227050414(uint64_t a1)
{
  v33 = sub_227668390();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v26[1] = v1;
    v37 = MEMORY[0x277D84F90];
    sub_226EB5238(0, v6, 0);
    v8 = -1 << *(a1 + 32);
    v35 = a1 + 56;
    v36 = v37;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v30 = v3 + 8;
    v31 = v3 + 16;
    v27 = a1 + 64;
    v28 = v6;
    v29 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v35 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v34 = *(a1 + 36);
      v13 = v32;
      v14 = v33;
      (*(v3 + 16))(v32, *(a1 + 48) + *(v3 + 72) * v9, v33);
      v15 = sub_227668360();
      result = (*(v3 + 8))(v13, v14);
      v16 = v36;
      v37 = v36;
      v18 = *(v36 + 16);
      v17 = *(v36 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226EB5238((v17 > 1), v18 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v18 + 1;
      *(v16 + 8 * v18 + 32) = v15;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v19 = *(v35 + 8 * v12);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v36 = v16;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v27 + 8 * v12);
        v3 = v29;
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v9, v34, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v34, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v28)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227050714(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE0, &qword_227676AA0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - v5);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28 = v1;
  v36 = MEMORY[0x277D84F90];
  sub_226F1FEA8(0, v7, 0);
  v8 = v36;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v12 = result;
  v13 = 0;
  v29 = a1 + 64;
  v30 = v7;
  v31 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v34 = v13;
    v35 = v16;
    v17 = *(a1 + 48);
    v18 = sub_227665100();
    (*(*(v18 - 8) + 16))(v6 + *(v33 + 48), v17 + *(*(v18 - 8) + 72) * v12, v18);
    *v6 = sub_2276650C0();
    v36 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_226F1FEA8(v19 > 1, v20 + 1, 1);
      v8 = v36;
    }

    *(v8 + 16) = v20 + 1;
    result = sub_227063300(v6, v8 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v9 = v31;
    v21 = *(v31 + 8 * v15);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_226EB526C(v12, v35, 0);
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v12, v35, 0);
    }

LABEL_4:
    v13 = v34 + 1;
    v12 = v14;
    if (v34 + 1 == v30)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_227050A1C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v55 = a3;
  v54 = a2(0);
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v48 = &v47 - v10;
  v11 = *(a1 + 16);
  v60 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v11, 0);
  v12 = a1 + 56;
  v13 = v60;
  v14 = -1;
  v15 = -1 << *(a1 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(a1 + 56);
  v17 = (63 - v15) >> 6;
  v56 = a1;
  v57 = v4;
  v52 = v11;
  if (v11)
  {
    v50 = v4 + 8;
    v51 = v4 + 16;

    v18 = 0;
    v19 = 0;
    while (v16)
    {
      v20 = v13;
LABEL_11:
      v22 = v57;
      v23 = *(a1 + 48) + *(v57 + 72) * (__clz(__rbit64(v16)) | (v19 << 6));
      v24 = v53;
      v25 = v54;
      v26 = (*(v57 + 16))(v53, v23, v54);
      v27 = v55(v26);
      v58 = v28;
      v59 = v27;
      (*(v22 + 8))(v24, v25);
      v13 = v20;
      v60 = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F1EF90(v29 > 1, v30 + 1, 1);
        v13 = v60;
      }

      ++v18;
      v16 &= v16 - 1;
      *(v13 + 16) = v30 + 1;
      v31 = v13 + 16 * v30;
      v32 = v58;
      *(v31 + 32) = v59;
      *(v31 + 40) = v32;
      a1 = v56;
      if (v18 == v52)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        goto LABEL_29;
      }

      v16 = *(v12 + 8 * v21);
      ++v19;
      if (v16)
      {
        v20 = v13;
        v19 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = 0;
LABEL_16:
    v33 = v57;
    v58 = v57 + 16;
    v52 = v57 + 8;
    v53 = (v57 + 32);
    if (!v16)
    {
      goto LABEL_18;
    }

    do
    {
      v59 = v13;
LABEL_22:
      v35 = *(a1 + 48) + *(v33 + 72) * (__clz(__rbit64(v16)) | (v19 << 6));
      v36 = v49;
      v37 = v54;
      (*(v33 + 16))(v49, v35, v54);
      v38 = v48;
      v39 = (*(v33 + 32))(v48, v36, v37);
      v40 = v55(v39);
      v42 = v41;
      (*(v33 + 8))(v38, v37);
      v13 = v59;
      v60 = v59;
      v44 = *(v59 + 16);
      v43 = *(v59 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_226F1EF90(v43 > 1, v44 + 1, 1);
        v13 = v60;
      }

      v16 &= v16 - 1;
      *(v13 + 16) = v44 + 1;
      v45 = v13 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      a1 = v56;
      v33 = v57;
    }

    while (v16);
LABEL_18:
    while (1)
    {
      v34 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v34 >= v17)
      {

        return v13;
      }

      v16 = *(v12 + 8 * v34);
      ++v19;
      if (v16)
      {
        v59 = v13;
        v19 = v34;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227050E80(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 192);
    v11 = *(result + 200);
    swift_unknownObjectRetain();

    swift_getObjectType();
    a3();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_227050FCC(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F20, &qword_22767A960) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270510A0, 0, 0);
}

uint64_t sub_2270510A0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = v0[10];
    v4 = sub_227667500();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_2270512C4;
    v6 = v0[10];

    return sub_2270593C8(v6);
  }

  else
  {
    v8 = v0[8];
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    v0[14] = v9;
    if (v9)
    {
      v10 = v0[9];
      v11 = sub_227668970();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
      v12 = swift_task_alloc();
      v0[15] = v12;
      *v12 = v0;
      v12[1] = sub_227051570;
      v13 = v0[9];

      return sub_227053904(v13);
    }

    else
    {
      v15 = v0[9];
      v14 = v0[10];

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_2270512C4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 104) = v0;

  sub_226E97D1C(v4, &qword_27D7B9EE8, &qword_227676AA8);

  if (v0)
  {
    v5 = sub_227051720;
  }

  else
  {
    v5 = sub_227051428;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227051428()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    v4 = sub_227668970();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_227051570;
    v6 = v0[9];

    return sub_227053904(v6);
  }

  else
  {
    v9 = v0[9];
    v8 = v0[10];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_227051570()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 128) = v0;

  sub_226E97D1C(v5, &qword_27D7B9F20, &qword_22767A960);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22705178C, 0, 0);
  }

  else
  {
    v8 = *(v2 + 72);
    v7 = *(v2 + 80);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_227051720()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22705178C()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227051818()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_227051900;

    return sub_227056070();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227051900()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2270638EC, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_227051A5C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_227051900;

    return sub_22705BF50();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227051B44(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227051BE0, 0, 0);
}

uint64_t sub_227051BE0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  v3 = v0[6];
  if (Strong)
  {
    v4 = v0[6];
    sub_2276674E0();
    v5 = sub_227667500();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_227051D30;
    v7 = v0[6];

    return sub_2270593C8(v7);
  }

  else
  {
    v9 = v0[6];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_227051D30()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_226E97D1C(v5, &qword_27D7B9EE8, &qword_227676AA8);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227051ED4, 0, 0);
  }

  else
  {
    v7 = *(v2 + 48);

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_227051ED4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_227051F50(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v6 + 104))(v9, *a4, v5);
  sub_227669660();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227052060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v43 = a2;
  v4 = sub_227669910();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227665E80();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766A2F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22766B390();
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6D0();
  v20 = *(v12 + 16);
  v41 = a1;
  v20(v15, a1, v11);
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v23;
    v37 = swift_slowAlloc();
    v48 = v37;
    *v23 = 136315138;
    sub_22766A2D0();
    sub_227063888(&qword_27D7B9F48, MEMORY[0x277D51EA0]);
    v24 = v47;
    v25 = sub_22766D140();
    v38 = v4;
    v27 = v26;
    (*(v46 + 8))(v10, v24);
    (*(v12 + 8))(v15, v11);
    v28 = sub_226E97AE8(v25, v27, &v48);
    v4 = v38;

    v29 = v36;
    *(v36 + 1) = v28;
    _os_log_impl(&dword_226E8E000, v21, v22, "Broadcasting mindful minutes metric %s updated to clients!", v29, 0xCu);
    v30 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  (*(v39 + 8))(v19, v40);
  swift_getObjectType();
  v31 = v44;
  v32 = v42;
  (*(v44 + 104))(v42, *MEMORY[0x277D4E1A0], v4);
  sub_22766A2D0();
  v33 = v47;
  sub_227669650();
  (*(v46 + 8))(v10, v33);
  return (*(v31 + 8))(v32, v4);
}

uint64_t sub_227052528()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_226F73E2C;

    return sub_22705BF50();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227052610()
{
  v1[29] = v0;
  v2 = sub_22766B390();
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v4 = *(v3 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v5 = sub_227662750();
  v1[34] = v5;
  v6 = *(v5 - 8);
  v1[35] = v6;
  v7 = *(v6 + 64) + 15;
  v1[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[37] = v8;
  v9 = *(v8 - 8);
  v1[38] = v9;
  v10 = *(v9 + 64) + 15;
  v1[39] = swift_task_alloc();
  v11 = sub_227665AD0();
  v1[40] = v11;
  v12 = *(v11 - 8);
  v1[41] = v12;
  v13 = *(v12 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v14 = sub_227667900();
  v1[44] = v14;
  v15 = *(v14 - 8);
  v1[45] = v15;
  v16 = *(v15 + 64) + 15;
  v1[46] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[47] = v17;
  v18 = *(v17 - 8);
  v1[48] = v18;
  v19 = *(v18 + 64) + 15;
  v1[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270528CC, v0, 0);
}

uint64_t sub_2270528CC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 232) + 392), *(*(v0 + 232) + 416));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 56);
  v3 = *(v0 + 392);
  if (*(v0 + 80))
  {
    sub_226E92AB8((v0 + 56), v0 + 96);
    sub_226E91B50(v0 + 96, v0 + 136);
    v4 = swift_allocObject();
    sub_226E92AB8((v0 + 136), v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_226F099DC();
    v5 = swift_allocError();
    *v6 = 0;
    *(swift_allocObject() + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  return MEMORY[0x2822009F8](sub_227052A7C, 0, 0);
}

uint64_t sub_227052A7C()
{
  v1 = v0[49];
  v2 = swift_task_alloc();
  v0[50] = v2;
  *(v2 + 16) = "SeymourServices/HealthDataSystem.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 123;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[51] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
  *v4 = v0;
  v4[1] = sub_227052BA0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637E4, v2, v5);
}

uint64_t sub_227052BA0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = sub_22705301C;
    v6 = 0;
  }

  else
  {
    v7 = v2[29];
    (*(v2[48] + 8))(v2[49], v2[47]);
    v5 = sub_227052CFC;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_227052CFC()
{
  v1 = v0[46];
  v2 = v0[39];
  sub_2276678E0();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  (*(v4 + 8))(v1, v3, v4);

  return MEMORY[0x2822009F8](sub_227052DB8, 0, 0);
}

uint64_t sub_227052DB8()
{
  v1 = v0[39];
  v2 = swift_task_alloc();
  v0[53] = v2;
  *(v2 + 16) = "SeymourServices/HealthDataSystem.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 128;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_227052EC0;
  v5 = v0[43];
  v6 = v0[40];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2270637FC, v2, v6);
}

uint64_t sub_227052EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *(*v1 + 424);
  v9 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v5 = sub_227053644;
    v6 = 0;
  }

  else
  {
    v7 = v2[29];
    (*(v2[38] + 8))(v2[39], v2[37]);
    v5 = sub_2270532BC;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22705301C()
{
  v1 = v0[29];
  (*(v0[48] + 8))(v0[49], v0[47]);

  return MEMORY[0x2822009F8](sub_227053098, v1, 0);
}

uint64_t sub_227053098()
{
  v29 = v0;
  v1 = v0[52];
  v2 = v0[32];
  sub_22766A6D0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v27 = v0[32];
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[25];
    v11 = MEMORY[0x22AA995D0](v0[26], v0[27]);
    v13 = sub_226E97AE8(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to query service subscription with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v27, v7);
  }

  else
  {
    v15 = v0[31];
    v14 = v0[32];
    v16 = v0[30];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[49];
  v18 = v0[46];
  v20 = v0[42];
  v19 = v0[43];
  v21 = v0[39];
  v22 = v0[36];
  v24 = v0[32];
  v23 = v0[33];

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_2270532BC()
{
  v52 = v0;
  v1 = v0[43];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v2 + 8))(v3, v4);
  if (v5)
  {
    v6 = v0[45];
    v7 = v0[46];
    v8 = v0[44];
    (*(v0[41] + 8))(v0[43], v0[40]);
    (*(v6 + 8))(v7, v8);
  }

  else
  {
    v10 = v0[42];
    v9 = v0[43];
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[33];
    sub_22766A6D0();
    (*(v11 + 16))(v10, v9, v12);
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[45];
    v18 = v0[44];
    v49 = v0[46];
    v50 = v0[43];
    v20 = v0[41];
    v19 = v0[42];
    v21 = v0[40];
    v22 = v0[30];
    v23 = v0[31];
    v47 = v22;
    v48 = v0[33];
    if (v16)
    {
      v45 = v15;
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      *v24 = 136315138;
      sub_227063888(&qword_28139B758, MEMORY[0x277D51C40]);
      log = v14;
      v25 = v21;
      v46 = v18;
      v26 = sub_22766D140();
      v27 = v5;
      v29 = v28;
      v30 = *(v20 + 8);
      v30(v19, v25);
      v31 = sub_226E97AE8(v26, v29, &v51);
      v5 = v27;

      *(v24 + 4) = v31;
      _os_log_impl(&dword_226E8E000, log, v45, "Skipping HealthKit workout due to current subscription status: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);

      (*(v23 + 8))(v48, v47);
      v30(v50, v25);
      (*(v17 + 8))(v49, v46);
    }

    else
    {

      v32 = *(v20 + 8);
      v32(v19, v21);
      (*(v23 + 8))(v48, v47);
      v32(v50, v21);
      (*(v17 + 8))(v49, v18);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v33 = v0[49];
  v34 = v0[46];
  v36 = v0[42];
  v35 = v0[43];
  v37 = v0[39];
  v38 = v0[36];
  v40 = v0[32];
  v39 = v0[33];

  v41 = v0[1];

  return v41(v5 & 1);
}

uint64_t sub_227053644()
{
  v1 = v0[29];
  (*(v0[38] + 8))(v0[39], v0[37]);

  return MEMORY[0x2822009F8](sub_2270536C0, v1, 0);
}

uint64_t sub_2270536C0()
{
  v29 = v0;
  (*(v0[45] + 8))(v0[46], v0[44]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[55];
  v2 = v0[32];
  sub_22766A6D0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v27 = v0[32];
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[25];
    v11 = MEMORY[0x22AA995D0](v0[26], v0[27]);
    v13 = sub_226E97AE8(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to query service subscription with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v27, v7);
  }

  else
  {
    v15 = v0[31];
    v14 = v0[32];
    v16 = v0[30];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[49];
  v18 = v0[46];
  v20 = v0[42];
  v19 = v0[43];
  v21 = v0[39];
  v22 = v0[36];
  v24 = v0[32];
  v23 = v0[33];

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_227053904(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22766B390();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = sub_2276627D0();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v10 = sub_227666BF0();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = sub_227663FA0();
  v2[25] = v13;
  v14 = *(v13 - 8);
  v2[26] = v14;
  v15 = *(v14 + 64) + 15;
  v2[27] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F20, &qword_22767A960) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v17 = sub_227668970();
  v2[29] = v17;
  v18 = *(v17 - 8);
  v2[30] = v18;
  v19 = *(v18 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v20 = sub_22766A8A0();
  v2[33] = v20;
  v21 = *(v20 - 8);
  v2[34] = v21;
  v22 = *(v21 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227053C18, v1, 0);
}

uint64_t sub_227053C18()
{
  v37 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(*(v0 + 104) + 344);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F938], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_227053FA0;
    v8 = *(v0 + 104);

    return sub_227052610();
  }

  else
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 104);
    sub_22766A6D0();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      *(v0 + 392) = v4;
      v20 = MEMORY[0x22AA958B0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
      v22 = sub_226E97AE8(v20, v21, &v36);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_226E8E000, v12, v13, "Querying, insertion and syncing of HealthKit mindful sessions is not supported on %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    v23 = sub_227664710();
    sub_227063888(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D50BA0], v23);
    swift_willThrow();
    v25 = *(v0 + 280);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);
    v34 = *(v0 + 128);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_227053FA0(char a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 393) = a1;

  return MEMORY[0x2822009F8](sub_2270540B8, v3, 0);
}

uint64_t sub_2270540B8()
{
  if (*(v0 + 393) == 1)
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 240);
    v3 = *(v0 + 224);
    sub_226E93170(*(v0 + 96), v3, &qword_27D7B9F20, &qword_22767A960);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 104);
      sub_226E97D1C(*(v0 + 224), &qword_27D7B9F20, &qword_22767A960);
      v5 = v4[17];
      v6 = v4[18];
      __swift_project_boxed_opaque_existential_0(v4 + 14, v5);
      v7 = *__swift_project_boxed_opaque_existential_0(v4 + 37, v4[40]);
      *(v0 + 40) = type metadata accessor for ConfigurationDataStore();
      *(v0 + 48) = &off_283AA1218;
      *(v0 + 16) = v7;
      sub_226E91B50(v0 + 16, v0 + 56);
      v8 = swift_allocObject();
      *(v0 + 296) = v8;
      sub_226E92AB8((v0 + 56), v8 + 16);

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v9 = *(v6 + 24);
      v41 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      *(v0 + 304) = v11;
      *v11 = v0;
      v11[1] = sub_2270544F8;
      v12 = *(v0 + 216);
      v13 = *(v0 + 200);

      return (v41)(v12, sub_2270638D4, v8, v13, v5, v6);
    }

    else
    {
      v34 = *(v0 + 248);
      v35 = *(v0 + 256);
      v36 = *(v0 + 232);
      v37 = *(*(v0 + 240) + 32);
      v37(v34, *(v0 + 224), v36);
      v37(v35, v34, v36);
      v38 = swift_task_alloc();
      *(v0 + 320) = v38;
      *v38 = v0;
      v38[1] = sub_2270546E8;
      v39 = *(v0 + 256);
      v40 = *(v0 + 104);

      return sub_22705531C(v39);
    }
  }

  else
  {
    v15 = *(v0 + 136);
    sub_22766A6D0();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Skipping HealthKitMindfulSession query/insert, no subscription found", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
    v23 = *(v0 + 280);
    v24 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = *(v0 + 192);
    v29 = *(v0 + 168);
    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 128);

    v33 = *(v0 + 8);

    return v33();
  }
}