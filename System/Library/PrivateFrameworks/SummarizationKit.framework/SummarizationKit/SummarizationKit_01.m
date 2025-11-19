uint64_t sub_227FDCDC0()
{
  v1 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v143 = (&v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v148 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v129 - v12;
  v153 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v155 = *(v153 - 8);
  v14 = *(v155 + 64);
  MEMORY[0x28223BE20](v153, v15);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v134 = (&v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v135 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v129 - v29;
  v141 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v31 = *(v141 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v141, v33);
  v145 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(*v0 + 96);
  v152 = v0;
  v36 = v0 + v35;
  result = swift_beginAccess();
  v38 = *(v36 + 8);
  v140 = *(v38 + 16);
  if (v140)
  {
    v139 = v18;
    v131 = v17;
    v133 = qword_2813C6AC0;
    v151 = qword_2813C6AB0;
    v138 = v31;
    v137 = v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v136 = (v19 + 48);
    v142 = v38;

    v39 = v142;
    v40 = 0;
    v144 = v1;
    v41 = v143;
    v147 = v13;
    v130 = v30;
    v132 = (v2 + 48);
    while (v40 < *(v39 + 16))
    {
      v42 = *(v138 + 72);
      v146 = v40;
      v43 = v145;
      sub_227FE5C54(v137 + v42 * v40, v145, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
      v44 = *(v141 + 28);
      sub_227FE5DD0(v43 + v44, v30, &qword_27D81E4B0, &qword_22813AB20);
      v45 = *v136;
      v46 = v139;
      if ((*v136)(v30, 1, v139) == 1)
      {
        sub_227FE5D1C(v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
        sub_227FE5CBC(v30, &qword_27D81E4B0, &qword_22813AB20);
      }

      else
      {
        sub_227FE5CBC(v30, &qword_27D81E4B0, &qword_22813AB20);
        v47 = v43 + v44;
        v48 = v135;
        sub_227FE5DD0(v47, v135, &qword_27D81E4B0, &qword_22813AB20);
        if (v45(v48, 1, v46) == 1)
        {
          v49 = v48;
          v50 = v134;
          *v134 = 0;
          v50[1] = 0xE000000000000000;
          v51 = v50 + *(v46 + 20);
          sub_228137D6C();
          v52 = v45(v49, 1, v46);
          v53 = v144;
          v54 = v131;
          if (v52 != 1)
          {
            sub_227FE5CBC(v135, &qword_27D81E4B0, &qword_22813AB20);
          }
        }

        else
        {
          v55 = v48;
          v50 = v134;
          sub_227FE5E38(v55, v134, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
          v53 = v144;
          v54 = v131;
        }

        v57 = *v50;
        v56 = v50[1];

        sub_227FE5D1C(v50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        swift_beginAccess();

        v150 = v57;
        v149 = v56;
        sub_2280BD990(&v160, v57, v56);
        swift_endAccess();

        v58 = v145;
        v59 = v132;
        if (*v145)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
          v60 = sub_22813993C();

          v61 = sub_22808C964(0x5F4C4C415FLL, 0xE500000000000000);
          v63 = v62;

          if (v63)
          {
            goto LABEL_66;
          }

          v60[(v61 >> 6) + 8] |= 1 << v61;
          v64 = (v60[6] + 16 * v61);
          *v64 = 0x5F4C4C415FLL;
          v64[1] = 0xE500000000000000;
          *(v60[7] + v61) = 1;
          v65 = v60[2];
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_67;
          }

          v60[2] = v67;
          v68 = v151;
          v69 = v152;
          swift_beginAccess();
          v70 = *(v69 + v68);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = *(v69 + v68);
          *(v69 + v68) = 0x8000000000000000;
          sub_22801B724(v60, v150, v149, isUniquelyReferenced_nonNull_native);

          *(v69 + v68) = v160;
          swift_endAccess();
          sub_227FE5D1C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
          v41 = v143;
        }

        else
        {
          v157 = *(v145 + 8);
          v156 = *(v157 + 16);
          if (v156)
          {
            v154 = v157 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
            swift_beginAccess();
            v72 = 0;
            while (v72 < *(v157 + 16))
            {
              sub_227FE5C54(v154 + *(v155 + 72) * v72, v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
              v73 = *(v153 + 24);
              sub_227FE5DD0(&v54[v73], v13, &qword_27D81E4A8, &unk_22813DE00);
              v74 = *v59;
              if ((*v59)(v13, 1, v53) == 1)
              {
                sub_227FE5D1C(v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
                sub_227FE5CBC(v13, &qword_27D81E4A8, &unk_22813DE00);
              }

              else
              {
                sub_227FE5CBC(v13, &qword_27D81E4A8, &unk_22813DE00);
                v75 = &v54[v73];
                v76 = v148;
                sub_227FE5DD0(v75, v148, &qword_27D81E4A8, &unk_22813DE00);
                if (v74(v76, 1, v53) == 1)
                {
                  *v41 = 0;
                  v41[1] = 0xE000000000000000;
                  v77 = v41 + *(v53 + 20);
                  sub_228137D6C();
                  if (v74(v76, 1, v53) != 1)
                  {
                    sub_227FE5CBC(v76, &qword_27D81E4A8, &unk_22813DE00);
                  }
                }

                else
                {
                  sub_227FE5E38(v76, v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
                }

                v78 = *v41;
                v79 = v41[1];

                sub_227FE5D1C(v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
                if (*v54)
                {
                  if (*(*(v152 + v151) + 16) && (v80 = *(v152 + v151), , sub_22808C964(v150, v149), v82 = v81, , (v82 & 1) != 0))
                  {
                    swift_beginAccess();
                    v84 = sub_227FE0FEC(v159, v150, v149);
                    if (*v83)
                    {
                      v85 = v83;
                      v129 = v84;
                      v86 = swift_isUniquelyReferenced_nonNull_native();
                      v158 = *v85;
                      v87 = v158;
                      *v85 = 0x8000000000000000;
                      v89 = sub_22808C964(v78, v79);
                      v90 = v87[2];
                      v91 = (v88 & 1) == 0;
                      v92 = v90 + v91;
                      if (__OFADD__(v90, v91))
                      {
                        goto LABEL_68;
                      }

                      v93 = v88;
                      if (v87[3] >= v92)
                      {
                        if ((v86 & 1) == 0)
                        {
                          sub_22801CB8C();
                        }
                      }

                      else
                      {
                        sub_228018E78(v92, v86);
                        v94 = sub_22808C964(v78, v79);
                        if ((v93 & 1) != (v95 & 1))
                        {
                          goto LABEL_70;
                        }

                        v89 = v94;
                      }

                      v53 = v144;
                      v123 = v158;
                      if (v93)
                      {
                        *(v158[7] + v89) = 1;
                      }

                      else
                      {
                        v158[(v89 >> 6) + 8] |= 1 << v89;
                        v124 = (v123[6] + 16 * v89);
                        *v124 = v78;
                        v124[1] = v79;
                        *(v123[7] + v89) = 1;
                        v125 = v123[2];
                        v66 = __OFADD__(v125, 1);
                        v126 = v125 + 1;
                        if (v66)
                        {
                          goto LABEL_69;
                        }

                        v123[2] = v126;
                      }

                      v127 = *v85;
                      *v85 = v123;

                      v84 = v129;
                    }

                    (v84)(v159, 0);
                    swift_endAccess();

                    sub_227FE5D1C(v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
                    v41 = v143;
                    v13 = v147;
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
                    v96 = sub_22813993C();

                    v97 = sub_22808C964(v78, v79);
                    v99 = v98;

                    if (v99)
                    {
                      goto LABEL_62;
                    }

                    v96[(v97 >> 6) + 8] |= 1 << v97;
                    v100 = (v96[6] + 16 * v97);
                    *v100 = v78;
                    v100[1] = v79;
                    *(v96[7] + v97) = 1;
                    v101 = v96[2];
                    v66 = __OFADD__(v101, 1);
                    v102 = v101 + 1;
                    if (v66)
                    {
                      goto LABEL_63;
                    }

                    v96[2] = v102;
                    v103 = v151;
                    v104 = v152;
                    swift_beginAccess();
                    v105 = *(v104 + v103);
                    v106 = swift_isUniquelyReferenced_nonNull_native();
                    v160 = *(v104 + v103);
                    v107 = v160;
                    *(v104 + v103) = 0x8000000000000000;
                    v108 = v149;
                    v109 = sub_22808C964(v150, v149);
                    v111 = *(v107 + 16);
                    v112 = (v110 & 1) == 0;
                    v66 = __OFADD__(v111, v112);
                    v113 = v111 + v112;
                    if (v66)
                    {
                      goto LABEL_64;
                    }

                    v114 = v110;
                    if (*(v107 + 24) >= v113)
                    {
                      v13 = v147;
                      if ((v106 & 1) == 0)
                      {
                        v128 = v109;
                        sub_22801CCF4();
                        v109 = v128;
                      }
                    }

                    else
                    {
                      sub_228019118(v113, v106);
                      v109 = sub_22808C964(v150, v108);
                      v13 = v147;
                      if ((v114 & 1) != (v115 & 1))
                      {
                        goto LABEL_70;
                      }
                    }

                    v53 = v144;
                    v116 = v160;
                    if (v114)
                    {
                      v117 = v160[7];
                      v118 = *(v117 + 8 * v109);
                      *(v117 + 8 * v109) = v96;
                    }

                    else
                    {
                      v160[(v109 >> 6) + 8] |= 1 << v109;
                      v119 = (v116[6] + 16 * v109);
                      v120 = v149;
                      *v119 = v150;
                      v119[1] = v120;
                      *(v116[7] + 8 * v109) = v96;
                      v121 = v116[2];
                      v66 = __OFADD__(v121, 1);
                      v122 = v121 + 1;
                      if (v66)
                      {
                        goto LABEL_65;
                      }

                      v116[2] = v122;
                    }

                    *(v152 + v151) = v116;
                    swift_endAccess();
                    sub_227FE5D1C(v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
                    v41 = v143;
                  }
                }

                else
                {
                  sub_227FE5D1C(v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

                  v13 = v147;
                }
              }

              if (v156 == ++v72)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
            break;
          }

LABEL_56:

          sub_227FE5D1C(v145, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
        }

        v30 = v130;
      }

      v40 = v146 + 1;
      v39 = v142;
      if (v146 + 1 == v140)
      {
      }
    }

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
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    result = sub_2281399EC();
    __break(1u);
  }

  return result;
}

uint64_t ClientSwitchConfiguration.__allocating_init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ClientSwitchConfiguration.init(configFilePath:)(a1, a2);
}

uint64_t ClientSwitchConfiguration.init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + qword_2813C6AC8);
  *v5 = 0xD000000000000019;
  v5[1] = 0x800000022813A980;
  v6 = (v2 + qword_2813C6AD0);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v2 + qword_2813C6AB8);
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000228143AB0;
  v8 = qword_2813C6AB0;
  *(v2 + v8) = sub_227FE4524(MEMORY[0x277D84F90]);
  *(v2 + qword_2813C6AC0) = MEMORY[0x277D84FA0];
  v9 = sub_227FDDDD4(a1, a2);

  sub_227FDCDC0();

  return v9;
}

uint64_t sub_227FDDDD4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = (v3 + *(*v3 + 104));
  v17 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v16 = v17;
  *(v16 + 8) = 0;
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x277D84F90];
  v15[16] = 0;
  v18 = &v15[*(v7 + 36)];
  sub_228137D6C();
  v19 = *(*v3 + 96);
  sub_227FE5E38(v15, v3 + v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  sub_227FE194C(a1, a2, v12);

  swift_beginAccess();
  sub_227FE5BEC(v12, v3 + v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  swift_endAccess();
  sub_227FE5C54(v3 + v19, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v20 = (*(*v3 + 192))(v15);
  v22 = v21;
  sub_227FE5D1C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  swift_beginAccess();
  v23 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v16;
  *v16 = 0x8000000000000000;
  sub_22801B5C4(v20, v22, 3u, isUniquelyReferenced_nonNull_native);
  *v16 = v27;
  *(v16 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t sub_227FDE070(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = (v3 + *(*v3 + 104));
  v17 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v16 = v17;
  *(v16 + 8) = 0;
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x277D84F90];
  v18 = &v15[*(v7 + 32)];
  sub_228137D6C();
  v19 = *(*v3 + 96);
  sub_227FE5E38(v15, v3 + v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  sub_227FC99C4(a1, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, v12);

  swift_beginAccess();
  sub_227FE5BEC(v12, v3 + v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  swift_endAccess();
  sub_227FE5C54(v3 + v19, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  v20 = (*(*v3 + 192))(v15);
  v22 = v21;
  sub_227FE5D1C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  swift_beginAccess();
  v23 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v16;
  *v16 = 0x8000000000000000;
  sub_22801B5C4(v20, v22, 3u, isUniquelyReferenced_nonNull_native);
  *v16 = v27;
  *(v16 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t sub_227FDE360(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = (v3 + *(*v3 + 104));
  v17 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v16 = v17;
  *(v16 + 8) = 0;
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x277D84F90];
  v18 = &v15[*(v7 + 32)];
  sub_228137D6C();
  v19 = *(*v3 + 96);
  sub_227FE5E38(v15, v3 + v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  sub_227FC99C4(a1, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, v12);

  swift_beginAccess();
  sub_227FE5BEC(v12, v3 + v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  swift_endAccess();
  sub_227FE5C54(v3 + v19, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  v20 = (*(*v3 + 192))(v15);
  v22 = v21;
  sub_227FE5D1C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  swift_beginAccess();
  v23 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v16;
  *v16 = 0x8000000000000000;
  sub_22801B5C4(v20, v22, 3u, isUniquelyReferenced_nonNull_native);
  *v16 = v27;
  *(v16 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t sub_227FDE650(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v28 - v14;
  v16 = (v3 + *(*v3 + 104));
  v17 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v16 = v17;
  *(v16 + 8) = 0;
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x277D84F90];
  v18 = &v15[*(v7 + 32)];
  sub_228137D6C();
  v19 = *(v7 + 36);
  v20 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
  v21 = *(*v3 + 96);
  sub_227FE5E38(v15, v3 + v21, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  sub_227FE225C(a1, a2, v12);

  swift_beginAccess();
  sub_227FE5BEC(v12, v3 + v21, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  swift_endAccess();
  sub_227FE5C54(v3 + v21, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v22 = (*(*v3 + 192))(v15);
  v24 = v23;
  sub_227FE5D1C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  swift_beginAccess();
  v25 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v16;
  *v16 = 0x8000000000000000;
  sub_22801B5C4(v22, v24, 3u, isUniquelyReferenced_nonNull_native);
  *v16 = v29;
  *(v16 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t ClientSwitchConfiguration.__allocating_init(assetManager:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return ClientSwitchConfiguration.init(assetManager:)(a1);
}

uint64_t ClientSwitchConfiguration.init(assetManager:)(void *a1)
{
  v3 = (v1 + qword_2813C6AC8);
  *v3 = 0xD000000000000019;
  v3[1] = 0x800000022813A980;
  v4 = (v1 + qword_2813C6AD0);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v1 + qword_2813C6AB8);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  v6 = qword_2813C6AB0;
  *(v1 + v6) = sub_227FE4524(MEMORY[0x277D84F90]);
  *(v1 + qword_2813C6AC0) = MEMORY[0x277D84FA0];
  v7 = *v3;
  v8 = v3[1];
  v9 = *v4;
  v10 = v4[1];
  v11 = *v5;
  v12 = v5[1];

  v13 = sub_227FDEAAC(a1, 0, v7, v8, v9, v10, v11, v12);

  sub_227FDCDC0();

  return v13;
}

uint64_t sub_227FDEAAC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a7;
  v102 = a8;
  v104 = a5;
  v105 = a6;
  LODWORD(v97) = a2;
  v98 = 0;
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v96 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v92 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v92 - v23;
  v25 = v8 + *(*v8 + 104);
  v26 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  v27 = a1;
  swift_arrayDestroy();
  *v25 = v26;
  v95 = v25;
  *(v25 + 8) = 0;
  *v24 = 0;
  *(v24 + 1) = MEMORY[0x277D84F90];
  v24[16] = 0;
  v28 = &v24[*(v13 + 36)];
  sub_228137D6C();
  v29 = *(*v8 + 96);
  v94 = v24;
  sub_227FE5E38(v24, v8 + v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v99 = a3;
  v100 = a4;
  v107 = a3;
  v108 = a4;

  MEMORY[0x22AAB1970](46, 0xE100000000000000);

  MEMORY[0x22AAB1970](v104, v105);

  v30 = v107;
  v103 = v108;
  v31 = sub_2280265D4(v97 & 1, v107, v108);
  v93 = v30;
  if (v32)
  {
    v33 = v98;
    sub_227FE2BAC(v31, v32);
    if (v33)
    {

      v34 = v8;
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v35 = sub_22813882C();
      __swift_project_value_buffer(v35, qword_2813C89F0);
      v36 = v33;
      v37 = sub_22813880C();
      v38 = sub_2281396CC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138543362;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_227FC3000, v37, v38, "load UAF config error: %{public}@", v39, 0xCu);
        sub_227FE5CBC(v40, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v40, -1, -1);
        MEMORY[0x22AAB28A0](v39, -1, -1);
      }

      else
      {
      }

      v33 = 0;
    }

    else
    {
      v43 = v21;
      v98 = v27;

      v34 = v8;
      swift_beginAccess();
      v97 = v29;
      sub_227FE5B84(v43, v8 + v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
      swift_endAccess();
      v44 = (*(*v8 + 192))(v43);
      v46 = v45;
      v47 = v95;
      swift_beginAccess();
      v48 = *v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106[0] = *v47;
      *v47 = 0x8000000000000000;
      sub_22801B5C4(v44, v46, 2u, isUniquelyReferenced_nonNull_native);
      *v47 = v106[0];
      *(v47 + 8) = 2;
      swift_endAccess();
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v50 = sub_22813882C();
      __swift_project_value_buffer(v50, qword_2813C89F0);
      v51 = v103;

      v52 = sub_22813880C();
      v53 = sub_2281396CC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v107 = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_227FCC340(v30, v51, &v107);
        _os_log_impl(&dword_227FC3000, v52, v53, "%{public}s is loaded from UAF", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AAB28A0](v55, -1, -1);
        MEMORY[0x22AAB28A0](v54, -1, -1);
      }

      sub_227FE5D1C(v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
      v29 = v97;
      v27 = v98;
    }
  }

  else
  {
    v34 = v8;
    v33 = v98;
  }

  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = [objc_opt_self() bundleForClass_];
  v58 = sub_22813927C();

  v59 = sub_22813927C();

  v60 = sub_22813927C();

  v61 = [v57 pathForResource:v58 ofType:v59 inDirectory:v60];

  if (!v61)
  {

    sub_227FE4988();
    v67 = swift_allocError();
    *v68 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  v98 = v27;
  v62 = sub_2281392AC();
  v64 = v63;

  v65 = v96;
  sub_227FE194C(v62, v64, v96);
  v66 = v103;
  if (v33)
  {
    v67 = v33;

LABEL_19:
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v69 = sub_22813882C();
    __swift_project_value_buffer(v69, qword_2813C89F0);
    v70 = v67;
    v71 = sub_22813880C();
    v72 = sub_2281396CC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138543362;
      v75 = v67;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v76;
      *v74 = v76;
      _os_log_impl(&dword_227FC3000, v71, v72, "load bundle config error: %{public}@", v73, 0xCu);
      sub_227FE5CBC(v74, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v74, -1, -1);
      MEMORY[0x22AAB28A0](v73, -1, -1);
    }

    else
    {
    }

    return v34;
  }

  v77 = (*(*v34 + 192))(v65);
  v79 = v78;
  v80 = v95;
  swift_beginAccess();
  v81 = *v80;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = *v80;
  *v80 = 0x8000000000000000;
  sub_22801B5C4(v77, v79, 1u, v82);
  *v80 = v106[0];
  swift_endAccess();
  swift_beginAccess();
  v83 = v94;
  sub_227FE5C54(v34 + v29, v94, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v84 = (*(*v34 + 184))(v65, v83);
  sub_227FE5D1C(v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  if (v84)
  {
    swift_beginAccess();
    sub_227FE5B84(v65, v34 + v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    swift_endAccess();
    *(v80 + 8) = 1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v85 = sub_22813882C();
    __swift_project_value_buffer(v85, qword_2813C89F0);

    v86 = sub_22813880C();
    v87 = sub_2281396CC();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v106[0] = v89;
      *v88 = 136446210;
      v90 = sub_227FCC340(v93, v66, v106);

      *(v88 + 4) = v90;
      _os_log_impl(&dword_227FC3000, v86, v87, "%{public}s is overwritten by the version from bundle", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x22AAB28A0](v89, -1, -1);
      MEMORY[0x22AAB28A0](v88, -1, -1);
    }

    else
    {
    }

    sub_227FE5D1C(v65, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  else
  {
    sub_227FE5D1C(v65, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  return v34;
}

uint64_t sub_227FDF5B4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v109 = a7;
  v110 = a8;
  v112 = a6;
  v104 = a4;
  LODWORD(v105) = a2;
  v106 = 0;
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v103 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v99 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v99 - v24;
  v26 = v9 + *(*v9 + 104);
  v27 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  v28 = a1;
  swift_arrayDestroy();
  *v26 = v27;
  v102 = v26;
  *(v26 + 8) = 0;
  *v25 = 0;
  *(v25 + 1) = MEMORY[0x277D84F90];
  v29 = &v25[*(v14 + 32)];
  sub_228137D6C();
  v30 = *(v14 + 36);
  v31 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
  v32 = *(*v9 + 96);
  v33 = v9;
  v34 = v9 + v32;
  v35 = v104;
  v101 = v25;
  sub_227FE5E38(v25, v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v107 = a3;
  v114 = a3;
  v115 = v35;

  MEMORY[0x22AAB1970](46, 0xE100000000000000);

  v108 = a5;
  MEMORY[0x22AAB1970](a5, v112);

  v36 = v114;
  v111 = v115;
  v37 = v28;
  v38 = sub_2280265D4(v105 & 1, v114, v115);
  v100 = v36;
  if (!v39)
  {
    v40 = v106;
LABEL_15:
    v62 = v37;
    v49 = v33;
    goto LABEL_16;
  }

  v40 = v106;
  sub_227FE2E00(v38, v39);
  if (v40)
  {

    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v41 = sub_22813882C();
    __swift_project_value_buffer(v41, qword_2813C89F0);
    v42 = v40;
    v43 = sub_22813880C();
    v44 = sub_2281396CC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_227FC3000, v43, v44, "load UAF config error: %{public}@", v45, 0xCu);
      sub_227FE5CBC(v46, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v46, -1, -1);
      MEMORY[0x22AAB28A0](v45, -1, -1);
    }

    else
    {
    }

    v40 = 0;
    goto LABEL_15;
  }

  v106 = v28;

  v49 = v33;
  swift_beginAccess();
  v105 = v32;
  sub_227FE5B84(v22, v33 + v32, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  swift_endAccess();
  v50 = (*(*v33 + 192))(v22);
  v52 = v51;
  v53 = v102;
  swift_beginAccess();
  v54 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113[0] = *v53;
  *v53 = 0x8000000000000000;
  sub_22801B5C4(v50, v52, 2u, isUniquelyReferenced_nonNull_native);
  *v53 = v113[0];
  *(v53 + 8) = 2;
  swift_endAccess();
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v56 = sub_22813882C();
  __swift_project_value_buffer(v56, qword_2813C89F0);
  v57 = v111;

  v58 = sub_22813880C();
  v59 = sub_2281396CC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v114 = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_227FCC340(v36, v57, &v114);
    _os_log_impl(&dword_227FC3000, v58, v59, "%{public}s is loaded from UAF", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AAB28A0](v61, -1, -1);
    MEMORY[0x22AAB28A0](v60, -1, -1);
  }

  sub_227FE5D1C(v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v32 = v105;
  v62 = v106;
LABEL_16:
  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = [objc_opt_self() bundleForClass_];
  v65 = sub_22813927C();

  v66 = sub_22813927C();

  v67 = sub_22813927C();

  v68 = [v64 pathForResource:v65 ofType:v66 inDirectory:v67];

  if (!v68)
  {

    sub_227FE4988();
    v74 = swift_allocError();
    *v75 = 0;
    swift_willThrow();

    goto LABEL_20;
  }

  v106 = v62;
  v69 = sub_2281392AC();
  v71 = v70;

  v72 = v103;
  sub_227FE225C(v69, v71, v103);
  v73 = v111;
  if (v40)
  {
    v74 = v40;

LABEL_20:
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v76 = sub_22813882C();
    __swift_project_value_buffer(v76, qword_2813C89F0);
    v77 = v74;
    v78 = sub_22813880C();
    v79 = sub_2281396CC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138543362;
      v82 = v74;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_227FC3000, v78, v79, "load bundle config error: %{public}@", v80, 0xCu);
      sub_227FE5CBC(v81, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v81, -1, -1);
      MEMORY[0x22AAB28A0](v80, -1, -1);
    }

    else
    {
    }

    return v49;
  }

  v84 = (*(*v49 + 192))(v72);
  v86 = v85;
  v87 = v102;
  swift_beginAccess();
  v88 = *v87;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v113[0] = *v87;
  *v87 = 0x8000000000000000;
  sub_22801B5C4(v84, v86, 1u, v89);
  *v87 = v113[0];
  swift_endAccess();
  swift_beginAccess();
  v90 = v101;
  sub_227FE5C54(v49 + v32, v101, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v91 = (*(*v49 + 184))(v72, v90);
  sub_227FE5D1C(v90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  if (v91)
  {
    swift_beginAccess();
    sub_227FE5B84(v72, v49 + v32, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    swift_endAccess();
    *(v87 + 8) = 1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v92 = sub_22813882C();
    __swift_project_value_buffer(v92, qword_2813C89F0);

    v93 = sub_22813880C();
    v94 = sub_2281396CC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v113[0] = v96;
      *v95 = 136446210;
      v97 = sub_227FCC340(v100, v73, v113);

      *(v95 + 4) = v97;
      _os_log_impl(&dword_227FC3000, v93, v94, "%{public}s is overwritten by the version from bundle", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x22AAB28A0](v96, -1, -1);
      MEMORY[0x22AAB28A0](v95, -1, -1);
    }

    else
    {
    }

    sub_227FE5D1C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  else
  {
    sub_227FE5D1C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  return v49;
}

uint64_t sub_227FE037C(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t (*a10)(void), void (*a11)(uint64_t), void (*a12)(uint64_t), uint64_t (*a13)(void), uint64_t (*a14)(void), unint64_t *a15, uint64_t a16, uint64_t (*a17)(void))
{
  v121 = a7;
  v122 = a8;
  v123 = a3;
  LODWORD(v116) = a2;
  v125 = a1;
  v117 = 0;
  v114 = a13;
  v115 = a12;
  v120 = a10;
  v21 = a9(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v113 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v110 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v110 - v32;
  v34 = v17 + *(*v17 + 104);
  v35 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v34 = v35;
  v112 = v34;
  *(v34 + 8) = 0;
  *v33 = 0;
  *(v33 + 1) = MEMORY[0x277D84F90];
  v36 = &v33[*(v22 + 32)];
  sub_228137D6C();
  v37 = *(*v17 + 96);
  v124 = v17;
  v111 = v33;
  v38 = v33;
  v39 = v123;
  sub_227FE5E38(v38, v17 + v37, v120);
  v127 = v39;
  v128 = a4;
  v118 = a4;

  MEMORY[0x22AAB1970](46, 0xE100000000000000);

  v119 = a5;
  v120 = a6;
  MEMORY[0x22AAB1970](a5, a6);

  v40 = v128;
  v41 = v116 & 1;
  v116 = v127;
  v42 = sub_2280265D4(v41, v127, v128);
  v43 = 0x2813C4000uLL;
  if (v44)
  {
    v45 = v117;
    a11(v42);
    if (v45)
    {

      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v46 = sub_22813882C();
      __swift_project_value_buffer(v46, qword_2813C89F0);
      v47 = v45;
      v48 = sub_22813880C();
      v49 = sub_2281396CC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        v52 = v45;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_227FC3000, v48, v49, "load UAF config error: %{public}@", v50, 0xCu);
        sub_227FE5CBC(v51, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v51, -1, -1);
        MEMORY[0x22AAB28A0](v50, -1, -1);
      }

      else
      {
      }

      v45 = 0;
    }

    else
    {

      v54 = v124;
      swift_beginAccess();
      v55 = v37;
      sub_227FE5B84(v30, v54 + v37, v115);
      swift_endAccess();
      v56 = v30;
      v57 = (*(*v54 + 192))(v30);
      v59 = v58;
      v60 = v112;
      swift_beginAccess();
      v61 = *v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126[0] = *v60;
      *v60 = 0x8000000000000000;
      sub_22801B5C4(v57, v59, 2u, isUniquelyReferenced_nonNull_native);
      *v60 = v126[0];
      *(v60 + 8) = 2;
      swift_endAccess();
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v63 = sub_22813882C();
      __swift_project_value_buffer(v63, qword_2813C89F0);

      v64 = sub_22813880C();
      v65 = sub_2281396CC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v127 = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_227FCC340(v116, v40, &v127);
        _os_log_impl(&dword_227FC3000, v64, v65, "%{public}s is loaded from UAF", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x22AAB28A0](v67, -1, -1);
        MEMORY[0x22AAB28A0](v66, -1, -1);
      }

      sub_227FE5D1C(v56, v114);
      v37 = v55;
    }
  }

  else
  {
    v45 = v117;
  }

  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = [objc_opt_self() bundleForClass_];
  v70 = sub_22813927C();

  v71 = sub_22813927C();

  v72 = sub_22813927C();

  v73 = [v69 pathForResource:v70 ofType:v71 inDirectory:v72];

  if (!v73)
  {

    sub_227FE4988();
    v80 = swift_allocError();
    *v81 = 0;
    swift_willThrow();

    v79 = v124;
    goto LABEL_19;
  }

  v122 = v37;
  v123 = v40;
  v74 = sub_2281392AC();
  v76 = v75;

  v77 = v113;
  v78 = v114;
  sub_227FC99C4(v74, v76, a14, a15, v115, a16, v114, v113);
  v79 = v124;
  if (v45)
  {
    v80 = v45;

    v43 = 0x2813C4000;
LABEL_19:
    if (*(v43 + 2472) != -1)
    {
      swift_once();
    }

    v82 = sub_22813882C();
    __swift_project_value_buffer(v82, qword_2813C89F0);
    v83 = v80;
    v84 = sub_22813880C();
    v85 = sub_2281396CC();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138543362;
      v88 = v80;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 4) = v89;
      *v87 = v89;
      _os_log_impl(&dword_227FC3000, v84, v85, "load bundle config error: %{public}@", v86, 0xCu);
      sub_227FE5CBC(v87, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v87, -1, -1);
      MEMORY[0x22AAB28A0](v86, -1, -1);
    }

    else
    {
    }

    return v79;
  }

  v90 = (*(*v79 + 192))(v77);
  v92 = v91;
  v93 = v112;
  swift_beginAccess();
  v94 = *v93;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v126[0] = *v93;
  *v93 = 0x8000000000000000;
  v96 = v90;
  v97 = v93;
  sub_22801B5C4(v96, v92, 1u, v95);
  *v93 = v126[0];
  swift_endAccess();
  v98 = v122;
  swift_beginAccess();
  v99 = v111;
  sub_227FE5C54(v79 + v98, v111, a17);
  v100 = (*(*v79 + 184))(v77, v99);
  sub_227FE5D1C(v99, v78);
  v101 = v77;
  v102 = v123;
  if (v100)
  {
    swift_beginAccess();
    sub_227FE5B84(v77, v79 + v98, v115);
    swift_endAccess();
    *(v97 + 8) = 1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v103 = sub_22813882C();
    __swift_project_value_buffer(v103, qword_2813C89F0);

    v104 = sub_22813880C();
    v105 = sub_2281396CC();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v126[0] = v107;
      *v106 = 136446210;
      v108 = sub_227FCC340(v116, v102, v126);

      *(v106 + 4) = v108;
      _os_log_impl(&dword_227FC3000, v104, v105, "%{public}s is overwritten by the version from bundle", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x22AAB28A0](v107, -1, -1);
      MEMORY[0x22AAB28A0](v106, -1, -1);
    }

    else
    {
    }

    sub_227FE5D1C(v101, v78);
  }

  else
  {
    sub_227FE5D1C(v77, v78);
  }

  return v79;
}

BOOL sub_227FE0E50(_DWORD *a1, _DWORD *a2)
{
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_227FCC340(0xD00000000000003DLL, 0x8000000228143B70, &v10);
    _os_log_impl(&dword_227FC3000, v5, v6, "version comparison of %{public}s is implemented", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  return *a2 < *a1;
}

void (*sub_227FE0FEC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_227FE3750(v6, a2, a3);
  return sub_227FE1074;
}

void sub_227FE1074(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_227FE10C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v61 = a3;
  v56 = *(a4 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v54 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v12;
  v55 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = v53 - v16;
  v18 = qword_2813C6AC0;
  swift_beginAccess();
  v19 = *(v6 + v18);

  v20 = sub_2280EAEE0(a1, a2, v19);

  if ((v20 & 1) == 0)
  {
    v21 = v6 + *(*v6 + 96);
    swift_beginAccess();
    if (*(v21 + 16) == 1)
    {
      v22 = swift_allocObject();
      v23 = 19;
      *(v22 + 16) = 19;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v24 = sub_227FE5EA4;
      v25 = 96;
LABEL_15:
      v43 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228143BF0, v25, v24);
      sub_227FDB3CC();
      swift_allocError();
      *v44 = v23;
      *(v44 + 8) = v43;
      return swift_willThrow();
    }

    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v26 = sub_22813882C();
    __swift_project_value_buffer(v26, qword_2813C89F0);

    v27 = sub_22813880C();
    v28 = sub_2281396BC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v53[0] = AssociatedTypeWitness;
      v30 = v29;
      v31 = swift_slowAlloc();
      v53[1] = v5;
      v32 = v31;
      v59 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_227FCC340(a1, a2, &v59);
      _os_log_impl(&dword_227FC3000, v27, v28, "clientID %{public}s is not configured in ClientSwitchConfiguration; assuming enabled by default", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAB28A0](v32, -1, -1);
      v33 = v30;
      AssociatedTypeWitness = v53[0];
      MEMORY[0x22AAB28A0](v33, -1, -1);
    }
  }

  v34 = qword_2813C6AB0;
  swift_beginAccess();
  v35 = *(v6 + v34);
  if (!*(v35 + 16))
  {
    return swift_endAccess();
  }

  v36 = sub_22808C964(a1, a2);
  if ((v37 & 1) == 0)
  {
    return swift_endAccess();
  }

  v38 = *(*(v35 + 56) + 8 * v36);
  swift_endAccess();
  v39 = *(v38 + 16);

  v40 = v61;
  if (v39 && (sub_22808C964(0x5F4C4C415FLL, 0xE500000000000000), (v41 & 1) != 0) || (sub_22813966C() & 1) != 0)
  {

    v42 = swift_allocObject();
    v23 = 15;
    *(v42 + 16) = 15;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    v24 = sub_227FE5EA0;
    v25 = 113;
    goto LABEL_15;
  }

  (*(v56 + 16))(v54, v40, a4);
  sub_22813949C();
  swift_getAssociatedConformanceWitness();
  sub_22813979C();
  v46 = v60;
  if (v60)
  {
    v47 = v59;
    do
    {
      if (*(v38 + 16))
      {
        sub_22808C964(v47, v46);
        v49 = v48;

        if (v49)
        {

          v50 = swift_allocObject();
          *(v50 + 16) = 15;
          *(v50 + 24) = 0;
          *(v50 + 32) = 0;
          v51 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228143BF0, 118, sub_227FE49DC);
          sub_227FDB3CC();
          swift_allocError();
          *v52 = 15;
          *(v52 + 8) = v51;
          swift_willThrow();
          return (*(v57 + 8))(v17, AssociatedTypeWitness);
        }
      }

      else
      {
      }

      sub_22813979C();
      v47 = v59;
      v46 = v60;
    }

    while (v60);
  }

  (*(v57 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_227FE16F4()
{
  v1 = *(v0 + qword_2813C6AC8 + 8);

  v2 = *(v0 + qword_2813C6AD0 + 8);

  v3 = *(v0 + qword_2813C6AB8 + 8);

  v4 = *(v0 + qword_2813C6AB0);

  v5 = *(v0 + qword_2813C6AC0);
}

uint64_t ClientSwitchConfiguration.deinit()
{
  sub_227FE5D1C(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C6AC8 + 8);

  v3 = *(v0 + qword_2813C6AD0 + 8);

  v4 = *(v0 + qword_2813C6AB8 + 8);

  v5 = *(v0 + qword_2813C6AB0);

  v6 = *(v0 + qword_2813C6AC0);

  return v0;
}

uint64_t ClientSwitchConfiguration.__deallocating_deinit()
{
  sub_227FE5D1C(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C6AC8 + 8);

  v3 = *(v0 + qword_2813C6AD0 + 8);

  v4 = *(v0 + qword_2813C6AB8 + 8);

  v5 = *(v0 + qword_2813C6AB0);

  v6 = *(v0 + qword_2813C6AC0);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_227FE194C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_2281392DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228136EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = 0;
  *(v20 + 1) = MEMORY[0x277D84F90];
  v20[16] = 0;
  v21 = *(v18 + 28);
  v70 = v20;
  sub_228137D6C();
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_22813927C();
  v24 = [v22 fileExistsAtPath_];

  if (!v24)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v29 = sub_22813882C();
    __swift_project_value_buffer(v29, qword_2813C89F0);

    v30 = sub_22813880C();
    v31 = sub_2281396CC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v68[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_227FCC340(a1, a2, v68);
      _os_log_impl(&dword_227FC3000, v30, v31, "config file does not exist: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAB28A0](v33, -1, -1);
      MEMORY[0x22AAB28A0](v32, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    return sub_227FE5D1C(v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  v64 = a1;
  sub_228136E4C();
  v25 = v67;
  v26 = sub_228136EBC();
  v28 = a2;
  if (v25)
  {
    (*(v10 + 8))(v14, v9);
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v38 = sub_22813882C();
    __swift_project_value_buffer(v38, qword_2813C89F0);

    v39 = v25;
    v40 = sub_22813880C();
    v41 = sub_2281396CC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v68[0] = v44;
      *v42 = 136446466;
      *(v42 + 4) = sub_227FCC340(v64, v28, v68);
      *(v42 + 12) = 2114;
      v45 = v25;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v46;
      *v43 = v46;
      _os_log_impl(&dword_227FC3000, v40, v41, "Failed to read file %{public}s and deflate binary content, error: %{public}@", v42, 0x16u);
      sub_227FE5CBC(v43, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAB28A0](v44, -1, -1);
      MEMORY[0x22AAB28A0](v42, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();

    return sub_227FE5D1C(v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  v35 = v26;
  v36 = v27;
  v37 = sub_227FC87CC(v26, v27);
  v49 = *(v10 + 8);
  v63 = v50;
  v51 = v37;
  v49(v14, v9);
  sub_227FC9210(v35, v36);
  sub_2281392CC();
  v67 = v51;
  v52 = v63;
  sub_2281392BC();
  v54 = v64;
  if (!v53)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v55 = sub_22813882C();
    __swift_project_value_buffer(v55, qword_2813C89F0);

    v56 = sub_22813880C();
    v57 = sub_2281396CC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v28;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v68[0] = v60;
      *v59 = 136446210;
      *(v59 + 4) = sub_227FCC340(v54, v58, v68);
      _os_log_impl(&dword_227FC3000, v56, v57, "Failed to parse file %{public}s as utf8 string", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AAB28A0](v60, -1, -1);
      MEMORY[0x22AAB28A0](v59, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v61 = 3;
    swift_willThrow();
    sub_227FC9210(v67, v52);
    return sub_227FE5D1C(v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  sub_227FCA2E8(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  sub_228137ECC();
  sub_227FE5D1C(v70, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  return sub_227FC9210(v67, v52);
}

uint64_t sub_227FE225C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = sub_2281392DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228136EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = 0;
  *(v20 + 1) = MEMORY[0x277D84F90];
  v21 = &v20[*(v18 + 24)];
  sub_228137D6C();
  v22 = *(v15 + 28);
  v23 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v24 = *(*(v23 - 8) + 56);
  v72 = v20;
  v24(&v20[v22], 1, 1, v23);
  v25 = [objc_opt_self() defaultManager];
  v26 = sub_22813927C();
  LODWORD(v22) = [v25 fileExistsAtPath_];

  if (!v22)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v31 = sub_22813882C();
    __swift_project_value_buffer(v31, qword_2813C89F0);

    v32 = sub_22813880C();
    v33 = sub_2281396CC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v70[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_227FCC340(a1, a2, v70);
      _os_log_impl(&dword_227FC3000, v32, v33, "config file does not exist: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAB28A0](v35, -1, -1);
      MEMORY[0x22AAB28A0](v34, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    return sub_227FE5D1C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  v66 = a1;
  sub_228136E4C();
  v27 = v69;
  v28 = sub_228136EBC();
  v30 = a2;
  if (v27)
  {
    (*(v10 + 8))(v14, v9);
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v40 = sub_22813882C();
    __swift_project_value_buffer(v40, qword_2813C89F0);

    v41 = v27;
    v42 = sub_22813880C();
    v43 = sub_2281396CC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v70[0] = v46;
      *v44 = 136446466;
      *(v44 + 4) = sub_227FCC340(v66, v30, v70);
      *(v44 + 12) = 2114;
      v47 = v27;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v48;
      *v45 = v48;
      _os_log_impl(&dword_227FC3000, v42, v43, "Failed to read file %{public}s and deflate binary content, error: %{public}@", v44, 0x16u);
      sub_227FE5CBC(v45, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAB28A0](v46, -1, -1);
      MEMORY[0x22AAB28A0](v44, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v49 = 2;
    swift_willThrow();

    return sub_227FE5D1C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  v37 = v28;
  v38 = v29;
  v39 = sub_227FC87CC(v28, v29);
  v51 = *(v10 + 8);
  v65 = v52;
  v53 = v39;
  v51(v14, v9);
  sub_227FC9210(v37, v38);
  sub_2281392CC();
  v69 = v53;
  v54 = v65;
  sub_2281392BC();
  v56 = v66;
  if (!v55)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v57 = sub_22813882C();
    __swift_project_value_buffer(v57, qword_2813C89F0);

    v58 = sub_22813880C();
    v59 = sub_2281396CC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v30;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v70[0] = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_227FCC340(v56, v60, v70);
      _os_log_impl(&dword_227FC3000, v58, v59, "Failed to parse file %{public}s as utf8 string", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AAB28A0](v62, -1, -1);
      MEMORY[0x22AAB28A0](v61, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v63 = 3;
    swift_willThrow();
    sub_227FC9210(v69, v54);
    return sub_227FE5D1C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  sub_227FCA2E8(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  sub_228137ECC();
  sub_227FE5D1C(v72, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  return sub_227FC9210(v69, v54);
}

void sub_227FE2BAC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000038, 0x8000000228143D20, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE2E00(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000037, 0x8000000228143C70, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE3054(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD00000000000002ELL, 0x8000000228143CF0, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE32A8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000039, 0x8000000228143BB0, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE34FC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000039, 0x8000000228143CB0, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void (*sub_227FE3750(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_227FE3A68(v8);
  v8[9] = sub_227FE385C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_227FE37FC;
}

void sub_227FE37FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_227FE385C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_22808C964(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22801CCF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_228019118(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_22808C964(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_227FE39B4;
}

void sub_227FE39B4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_22801C318(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_227FE5D7C(*(v7 + 48) + 16 * v6);
    sub_2280277E8(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_227FE3A68(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_227FE3A90;
}

unint64_t sub_227FE3A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C8, &qword_22813AB38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4D0, &qword_22813AB40);
    v9 = sub_22813993C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E4C8, &qword_22813AB38);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22808C964(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
      result = sub_227FE5E38(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for GMSModelInfoCache.CacheEntry);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_227FE3C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E440, &unk_22813AAB0);
    v3 = sub_22813993C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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

unint64_t sub_227FE3D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C0, &qword_22813AA30);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227FE3E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E418, &qword_22813AA88);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_227FE3F98(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E398, &qword_22813AA10);
  v3 = sub_22813993C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22808C9DC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22808C9DC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227FE40AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E388, &qword_22813AA00);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v13, &qword_27D81E390, &qword_22813AA08);
      v5 = v13;
      v6 = v14;
      result = sub_22808C964(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_227FCE2E0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_227FE41E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E448, &unk_22813C010);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, v13, &qword_27D81E450, &qword_22813AAC0);
      result = sub_22808CA18(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v13[0];
      v9 = v13[2];
      v7[1] = v13[1];
      v7[2] = v9;
      *v7 = v8;
      result = sub_227FCE2F8(&v14, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 80;
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

unint64_t sub_227FE4318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B8, &qword_22813AA28);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_22808CA2C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

void *sub_227FE4410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3E0, &qword_22813AA50);
  v3 = sub_22813993C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_22808C91C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22808C91C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227FE4524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C0, &qword_22813AB30);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for ClientSwitchConfiguration()
{
  result = qword_2813C6AA0;
  if (!qword_2813C6AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227FE4720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E470, &qword_22813AAE0);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, v13, &qword_27D81E478, &qword_22813AAE8);
      result = sub_22808CE90(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v13[0];
      v9 = v13[2];
      v7[1] = v13[1];
      v7[2] = v9;
      *v7 = v8;
      result = sub_227FCE2F8(&v14, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 80;
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

unint64_t sub_227FE4858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v13, &qword_27D81E380, &unk_228142F80);
      v5 = v13;
      v6 = v14;
      result = sub_22808C964(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_227FCE2F8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_227FE4988()
{
  result = qword_27D81E3A8;
  if (!qword_27D81E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E3A8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_227FE4A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3E8, &qword_22813AA58);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v13, &qword_27D81E3F0, &qword_22813AA60);
      v5 = v13;
      v6 = v14;
      result = sub_22808C964(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_227FCE2E0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_227FE4B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E490, &unk_22813AB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v22 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E498, &unk_22813C050);
    v9 = sub_22813993C();
    v10 = v7 + *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E490, &unk_22813AB00);
      result = sub_227FC7F80(v7);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v9[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
      result = sub_227FE5B1C(v7, v15 + *(*(v16 - 8) + 72) * v14, &qword_27D81E4A0, &unk_22813AB10);
      v17 = v9[7] + 24 * v14;
      v18 = *(v10 + 8);
      *v17 = *v10;
      *(v17 + 8) = v18;
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_227FE4D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v15, &qword_27D81E488, &qword_22813AAF8);
      v5 = v15;
      v6 = *v15;

      v8 = sub_2280D3358(v7, v3);
      v10 = v9;

      if (v10)
      {
        break;
      }

      *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
      *(v3[6] + 8 * v8) = v5;
      result = sub_227FCE2F8(&v16, (v3[7] + 32 * v8));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 40;
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

unint64_t sub_227FE4ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E430, &qword_22813AAA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E438, &qword_22813AAA8);
    v9 = sub_22813993C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E430, &qword_22813AAA0);
      v13 = *v7;
      result = sub_22808CE24(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = v13;
      v17 = v9[7];
      v18 = sub_228136EAC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, &v7[v10], v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {
        return v9;
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

unint64_t sub_227FE50AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E468, &unk_22813C040);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 8);
      v7 = *i;

      result = sub_22808CF24(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_227FE51B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E458, &qword_22813AAC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E460, &unk_22813AAD0);
    v9 = sub_22813993C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E458, &qword_22813AAC8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22808C964(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
      result = sub_227FE5E38(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_227FE5398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E410, &qword_22813AA80);
    v3 = sub_22813993C();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_22808DA18();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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

unint64_t sub_227FE5460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E408, &qword_22813AA78);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_22808CFAC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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

unint64_t sub_227FE5558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E420, &unk_22813AA90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E428, &unk_22813C030);
    v9 = sub_22813993C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E420, &unk_22813AA90);
      result = sub_22808CFAC(*v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = *v7;
      v16 = v9[7];
      v17 = type metadata accessor for SummarizationResult();
      result = sub_227FE5E38(&v7[v10], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for SummarizationResult);
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_227FE573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3F8, &qword_22813AA68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v22 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E400, &qword_22813AA70);
    v9 = sub_22813993C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E3F8, &qword_22813AA68);
      v13 = *v7;
      result = sub_22808D0CC(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
      result = sub_227FE5E38(v7 + v10, v17 + *(*(v18 - 8) + 72) * v16, type metadata accessor for PartialSummariesOperation.TaskResult);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {
        return v9;
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

unint64_t sub_227FE5914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C8, &qword_22813AA38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v22 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D0, &unk_22813AA40);
    v9 = sub_22813993C();
    v10 = v7 + *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v11, v7, &qword_27D81E3C8, &qword_22813AA38);
      result = sub_22808D108(v7);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v9[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
      result = sub_227FE5B1C(v7, v15 + *(*(v16 - 8) + 72) * v14, &qword_27D81E3D8, &unk_22813C640);
      v17 = v9[7] + 24 * v14;
      v18 = *(v10 + 8);
      *v17 = *v10;
      *(v17 + 8) = v18;
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_227FE5B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FE5B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FE5BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FE5C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FE5CBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FE5D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FE5DD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FE5E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_227FE5EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_22813927C();

  v25[0] = 0;
  v8 = [v6 initWithPattern:v7 options:a3 error:v25];

  v9 = v25[0];
  if (v8)
  {
    v10 = sub_22813882C();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a4, v10);
  }

  else
  {
    v13 = v25[0];
    v14 = sub_228136E2C();

    swift_willThrow();
    v15 = v14;
    v16 = sub_22813880C();
    v17 = sub_2281396EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_227FC3000, v16, v17, "Error compiling regular expression: %@", v18, 0xCu);
      sub_227FE60F8(v19);
      MEMORY[0x22AAB28A0](v19, -1, -1);
      MEMORY[0x22AAB28A0](v18, -1, -1);
    }

    swift_willThrow();
    v22 = sub_22813882C();
    (*(*(v22 - 8) + 8))(a4, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_227FE60F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B0, &qword_22813AA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SummarizationKit::SummarizationStyle_optional __swiftcall SummarizationStyle.init(argument:)(Swift::String argument)
{
  v2 = v1;
  result.value = SummarizationStyle.init(rawValue:)(argument).value;
  *v2 = v4;
  return result;
}

SummarizationKit::SummarizationStyle_optional __swiftcall SummarizationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22813995C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizationStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6369706F74;
  v3 = 0x736973706F6E7973;
  v4 = 0x6F436C6175736976;
  if (v1 != 3)
  {
    v4 = 0x6F546C6175736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E694C706F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_227FE62C0()
{
  result = qword_2813C83D0;
  if (!qword_2813C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C83D0);
  }

  return result;
}

uint64_t sub_227FE6314()
{
  v1 = *v0;
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_227FE640C()
{
  *v0;
  *v0;
  *v0;
  sub_22813923C();
}

uint64_t sub_227FE64F0()
{
  v1 = *v0;
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

void sub_227FE65F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6369706F74;
  v5 = 0xE800000000000000;
  v6 = 0x736973706F6E7973;
  v7 = 0xEE0073747065636ELL;
  v8 = 0x6F436C6175736976;
  if (v2 != 3)
  {
    v8 = 0x6F546C6175736976;
    v7 = 0xED0000656E694C70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E694C706F74;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_227FE6758()
{
  result = qword_27D81E4D8;
  if (!qword_27D81E4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E4E0, &qword_22813AC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4D8);
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

uint64_t sub_227FE684C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FE6B18();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_227FE68A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FE6AC4();
  v5 = sub_227FE6B18();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_227FE6900(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FE6AC4();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for SummarizationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarizationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227FE6AC4()
{
  result = qword_27D81E4E8;
  if (!qword_27D81E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4E8);
  }

  return result;
}

unint64_t sub_227FE6B18()
{
  result = qword_27D81E4F0;
  if (!qword_27D81E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4F0);
  }

  return result;
}

uint64_t sub_227FE6B6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_228138C0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D4B048])
  {
    v11 = 0;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v11;
    return result;
  }

  if (v10 == *MEMORY[0x277D4B050])
  {
    v11 = 1;
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x277D4B058])
  {
    v11 = 2;
    goto LABEL_7;
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v13 = sub_22813882C();
  __swift_project_value_buffer(v13, qword_2813C8A20);
  v14 = sub_22813880C();
  v15 = sub_2281396DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227FC3000, v14, v15, "Encountered @unknown default in when mapping SummarizationClient.SummarizationStyle to SummarizationStyle", v16, 2u);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 28;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v18 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228143D60, 38, sub_227FE6E48);
  sub_227FDB3CC();
  swift_allocError();
  *v19 = 28;
  *(v19 + 8) = v18;
  swift_willThrow();
  v20 = *(v5 + 8);
  v20(a1, v4);
  return (v20)(v9, v4);
}

uint64_t sub_227FE6E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_227FE6E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227FE6F0C()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813AF20[v1]);
  return sub_228139AEC();
}

uint64_t sub_227FE6F94()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813AF20[v1]);
  return sub_228139AEC();
}

uint64_t sub_227FE6FE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227FE7660(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_227FE702C(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD000000000000025;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD000000000000024;
      break;
    case 5:
      result = 0xD00000000000003DLL;
      break;
    case 6:
      result = 0xD00000000000004ELL;
      break;
    case 7:
      result = 0xD00000000000004ALL;
      break;
    case 8:
      result = 0xD000000000000046;
      break;
    case 9:
      result = 0xD00000000000002CLL;
      break;
    case 10:
      result = 0xD000000000000038;
      break;
    case 11:
      result = 0xD000000000000034;
      break;
    case 12:
      result = 0xD00000000000003BLL;
      break;
    case 13:
      result = 0xD000000000000030;
      break;
    case 14:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227FE71B8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_227FE702C(a2);
  v7 = v6;
  v8 = *MEMORY[0x277CCA068];
  v9 = sub_2281392AC();
  v11 = v10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E530, &unk_22813BFF0);
  v18 = sub_227FE777C();
  v14 = v9;
  v15 = v11;
  v16 = 3;
  sub_227FE77E0(&v14, v19);
  __swift_project_boxed_opaque_existential_1(&v14, v17);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v19[5] = DynamicType;
  v17 = MEMORY[0x277D837D0];
  v14 = v5;
  v15 = v7;
  result = sub_228024C84(&v14, v19);
  if (a3)
  {
    return a3(a1);
  }

  return result;
}

unint64_t sub_227FE72BC()
{
  sub_22813988C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E528, qword_22813AEA0);
  v0 = sub_2281392EC();
  MEMORY[0x22AAB1970](v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_227FE7384()
{
  result = qword_27D81E4F8;
  if (!qword_27D81E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4F8);
  }

  return result;
}

unint64_t sub_227FE73DC()
{
  result = qword_27D81E500;
  if (!qword_27D81E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E500);
  }

  return result;
}

unint64_t sub_227FE7430(uint64_t a1)
{
  *(a1 + 8) = sub_227FE7460();
  result = sub_227FE74B4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_227FE7460()
{
  result = qword_27D81E508;
  if (!qword_27D81E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E508);
  }

  return result;
}

unint64_t sub_227FE74B4()
{
  result = qword_27D81E510;
  if (!qword_27D81E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E510);
  }

  return result;
}

unint64_t sub_227FE7508(uint64_t a1)
{
  *(a1 + 8) = sub_227FE7538();
  result = sub_227FE758C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227FE7538()
{
  result = qword_27D81E518;
  if (!qword_27D81E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E518);
  }

  return result;
}

unint64_t sub_227FE758C()
{
  result = qword_27D81E520;
  if (!qword_27D81E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E520);
  }

  return result;
}

uint64_t sub_227FE75E0(uint64_t a1)
{
  v2 = sub_227FE7460();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_227FE761C(uint64_t a1)
{
  v2 = sub_227FE7460();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_227FE7660(uint64_t result)
{
  if (result > 1007)
  {
    if (result > 2999)
    {
      if (result > 4999)
      {
        if (result == 5000)
        {
          return 13;
        }

        if (result == 5001)
        {
          return 14;
        }
      }

      else
      {
        if (result == 3000)
        {
          return 11;
        }

        if (result == 4001)
        {
          return 12;
        }
      }
    }

    else if (result > 2004)
    {
      if (result == 2005)
      {
        return 9;
      }

      if (result == 2012)
      {
        return 10;
      }
    }

    else
    {
      if (result == 1008)
      {
        return 7;
      }

      if (result == 2003)
      {
        return 8;
      }
    }

    return 15;
  }

  if (result > 9)
  {
    if (result > 1000)
    {
      if (result == 1001)
      {
        return 5;
      }

      if (result == 1002)
      {
        return 6;
      }
    }

    else
    {
      if (result == 10)
      {
        return 3;
      }

      if (result == 1000)
      {
        return 4;
      }
    }

    return 15;
  }

  if (result > 2)
  {
    return 15;
  }

  return result;
}

unint64_t sub_227FE777C()
{
  result = qword_27D81E538;
  if (!qword_27D81E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E530, &unk_22813BFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E538);
  }

  return result;
}

uint64_t sub_227FE77E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for ClassificationError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassificationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227FE79AC()
{
  result = qword_27D81E540;
  if (!qword_27D81E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E540);
  }

  return result;
}

uint64_t type metadata accessor for TokenCounter()
{
  result = qword_2813C7BF0;
  if (!qword_2813C7BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227FE7A74()
{
  result = type metadata accessor for SummarizationSession.Configuration();
  if (v1 <= 0x3F)
  {
    result = sub_227FE7AF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_227FE7AF8()
{
  result = qword_2813C8558[0];
  if (!qword_2813C8558[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813C8558);
  }

  return result;
}

uint64_t sub_227FE7B5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ModelBundleIdentifier();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FE7C00, 0, 0);
}

uint64_t sub_227FE7C00()
{
  v1 = v0[5];
  sub_227FC8614(v0[4], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227FC8720(v0[7]);
      goto LABEL_6;
    }
  }

  else
  {
    sub_227FC8720(v0[7]);
  }

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  swift_storeEnumTagMultiPayload();
  LOBYTE(v5) = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v5, v4);
  sub_227FC8720(v4);
  if (v5)
  {
LABEL_6:
    v6 = v0[4];
    v7 = (v6 + *(type metadata accessor for TokenCounter() + 20));
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v10 = *(v9 + 8);
    v11 = *(v10 + 24);
    v28 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_227FE7EC0;
    v14 = v0[3];
    v15 = v0[2];
    v16 = v8;
    v17 = v10;
    v18 = v28;

    return v18(v15, v14, v16, v17);
  }

  v19 = v0[4];
  v20 = (v19 + *(type metadata accessor for TokenCounter() + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = *(v22 + 8);
  v24 = *(v23 + 16);
  v29 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[9] = v26;
  *v26 = v0;
  v26[1] = sub_227FE8008;
  v14 = v0[3];
  v15 = v0[2];
  v16 = v21;
  v17 = v23;
  v18 = v29;

  return v18(v15, v14, v16, v17);
}

uint64_t sub_227FE7EC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  v7 = *(v4 + 56);
  v8 = *(v4 + 48);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_227FE8008(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  v7 = *(v4 + 56);
  v8 = *(v4 + 48);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_227FE8150()
{
  v1 = type metadata accessor for ModelBundleIdentifier();
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  sub_227FC8614(v0, &v13 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_227FC8720(v9);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v11 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v0, v6);
    v9 = v6;
    goto LABEL_6;
  }

  v11 = 1;
LABEL_6:
  sub_227FC8720(v9);
  return v11 & 1;
}

uint64_t sub_227FE8248(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227FE82EC;

  return sub_227FE7B5C(a1, a2);
}

uint64_t sub_227FE82EC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_227FE83EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v5 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FE8480, 0, 0);
}

uint64_t sub_227FE8480()
{
  if (*(v0 + 472) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 464);
    v3 = *(v0 + 488);

    v4 = *(v0 + 8);

    return v4(v1, v2);
  }

  else
  {
    if (qword_2813C4918 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 480);
    v7 = *(v0 + 488);
    v8 = type metadata accessor for Signpost(0);
    *(v0 + 496) = __swift_project_value_buffer(v8, qword_2813C88A0);
    sub_227FEA45C(v6, v0 + 16);
    v9 = swift_allocObject();
    v10 = *(v0 + 64);
    *(v9 + 48) = *(v0 + 48);
    *(v9 + 64) = v10;
    *(v9 + 80) = *(v0 + 80);
    *(v9 + 96) = *(v0 + 96);
    v11 = *(v0 + 32);
    *(v9 + 16) = *(v0 + 16);
    *(v9 + 32) = v11;
    sub_22812F68C(sub_227FEB3F4, v7);

    v12 = v6[3];
    v13 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v12);
    v14 = *(v13 + 16);
    v19 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 504) = v16;
    *v16 = v0;
    v16[1] = sub_227FE86E0;
    v18 = *(v0 + 456);
    v17 = *(v0 + 464);

    return v19(v18, v17, v12, v13);
  }
}

uint64_t sub_227FE86E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v7 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v5 = sub_227FE8CC0;
  }

  else
  {
    v5 = sub_227FE87F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FE87F8()
{
  v29 = v0;
  v1 = *(*(v0 + 480) + 80);
  if (v1)
  {
    v2 = *(v0 + 512);
    v3 = *(v0 + 456);
    v4 = *(v0 + 464);
    v5 = sub_22813936C();
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v1 + 16));
    v7 = MEMORY[0x277D84A28];
    v28 = MEMORY[0x277D84A28];
    v27[0] = v5;

    sub_2280449E4(v27, KeyPath, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));

    v8 = swift_getKeyPath();
    os_unfair_lock_lock((v1 + 16));
    v28 = v7;
    v27[0] = v2;

    sub_2280449E4(v27, v8, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));

    v9 = swift_getKeyPath();
    os_unfair_lock_lock((v1 + 16));
    v28 = MEMORY[0x277D839B0];
    LOBYTE(v27[0]) = 0;

    sub_2280449FC(v27, v9, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));
  }

  if (*(v0 + 512) >= *(v0 + 472))
  {
    v21 = swift_task_alloc();
    *(v0 + 528) = v21;
    *v21 = v0;
    v21[1] = sub_227FE8A90;
    v22 = *(v0 + 512);
    v23 = *(v0 + 472);
    v24 = *(v0 + 480);
    v26 = *(v0 + 456);
    v25 = *(v0 + 464);

    return sub_227FE8E90(v26, v25, v22, v23, v1);
  }

  else
  {
    v10 = *(v0 + 488);
    v11 = *(v0 + 496);
    v12 = *(v0 + 464);
    sub_227FEA45C(*(v0 + 480), v0 + 368);
    v13 = swift_allocObject();
    v14 = *(v0 + 416);
    *(v13 + 48) = *(v0 + 400);
    *(v13 + 64) = v14;
    *(v13 + 80) = *(v0 + 432);
    *(v13 + 96) = *(v0 + 448);
    v15 = *(v0 + 384);
    *(v13 + 16) = *(v0 + 368);
    *(v13 + 32) = v15;

    sub_2281317B8(v10, sub_227FEB400);

    sub_227FEA5B8(v10);
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);
    v18 = *(v0 + 488);

    v19 = *(v0 + 8);

    return v19(v16, v17);
  }
}

uint64_t sub_227FE8A90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 528);
  v8 = *v3;
  *(*v3 + 536) = v2;

  if (v2)
  {
    v9 = sub_227FE8DAC;
  }

  else
  {
    *(v6 + 544) = a2;
    *(v6 + 552) = a1;
    v9 = sub_227FE8BC8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227FE8BC8()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  sub_227FEA45C(*(v0 + 480), v0 + 280);
  v3 = swift_allocObject();
  v4 = *(v0 + 328);
  *(v3 + 48) = *(v0 + 312);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 344);
  *(v3 + 96) = *(v0 + 360);
  v5 = *(v0 + 296);
  *(v3 + 16) = *(v0 + 280);
  *(v3 + 32) = v5;
  sub_2281317B8(v2, sub_227FEB3FC);

  sub_227FEA5B8(v2);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 488);

  v9 = *(v0 + 8);

  return v9(v6, v7);
}

uint64_t sub_227FE8CC0()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  sub_227FEA45C(*(v0 + 480), v0 + 104);
  v3 = swift_allocObject();
  v4 = *(v0 + 152);
  *(v3 + 48) = *(v0 + 136);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 168);
  *(v3 + 96) = *(v0 + 184);
  v5 = *(v0 + 120);
  *(v3 + 16) = *(v0 + 104);
  *(v3 + 32) = v5;
  sub_2281317B8(v1, sub_227FEA59C);

  sub_227FEA5B8(v1);
  v6 = *(v0 + 520);
  v7 = *(v0 + 488);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_227FE8DAC()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  sub_227FEA45C(*(v0 + 480), v0 + 192);
  v3 = swift_allocObject();
  v4 = *(v0 + 240);
  *(v3 + 48) = *(v0 + 224);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 256);
  *(v3 + 96) = *(v0 + 272);
  v5 = *(v0 + 208);
  *(v3 + 16) = *(v0 + 192);
  *(v3 + 32) = v5;
  sub_2281317B8(v1, sub_227FEB3F8);

  sub_227FEA5B8(v1);
  v6 = *(v0 + 536);
  v7 = *(v0 + 488);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_227FE8E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  return MEMORY[0x2822009F8](sub_227FE8EB8, 0, 0);
}

uint64_t sub_227FE8EB8()
{
  v36 = v0;
  if (v0[26] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = v0[23];
    v1 = v0[24];

LABEL_14:
    v23 = v0[1];

    return v23(v2, v1);
  }

  v3 = v0[27];
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v3 + 16));
    v35 = MEMORY[0x277D839B0];
    v34[0] = 1;

    sub_2280449FC(v34, KeyPath, (v3 + 24));
    os_unfair_lock_unlock((v3 + 16));
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v5 = sub_22813882C();
  v0[29] = __swift_project_value_buffer(v5, qword_2813C89F0);
  v6 = sub_22813880C();
  v7 = sub_2281396BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[25];
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_227FC3000, v6, v7, "Input will be truncated from token length %{public}ld", v9, 0xCu);
    MEMORY[0x22AAB28A0](v9, -1, -1);
  }

  v10 = v0[26];
  v11 = v0[24];

  if (v10 <= 0)
  {
    v2 = v0[23];
    v1 = v0[24];
    v19 = v0[29];
    v20 = sub_22813880C();
    v21 = sub_2281396BC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = 0;
      _os_log_impl(&dword_227FC3000, v20, v21, "Input has been truncated to token length %{public}ld", v22, 0xCu);
      MEMORY[0x22AAB28A0](v22, -1, -1);
    }

    goto LABEL_14;
  }

  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v0[30] = 1;
  v0[31] = v13;
  v16 = v0[23];
  v15 = v0[24];

  v17 = sub_227FE9BC0(v16, v15, v14, v13);
  v0[32] = v17;
  v0[33] = v18;
  v25 = v0[28];
  v26 = v25[3];
  v27 = v25[4];
  v28 = v17;
  v29 = v18;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v30 = *(v27 + 16);
  v33 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[34] = v32;
  *v32 = v0;
  v32[1] = sub_227FE9294;

  return v33(v28, v29, v26, v27);
}

uint64_t sub_227FE9294(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v5 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v6 = v3[33];

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FE93E4, 0, 0);
  }
}

void sub_227FE93E4()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 280);
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v1 + 16));
    v4 = MEMORY[0x277D84A28];
    *(v0 + 40) = MEMORY[0x277D84A28];
    *(v0 + 16) = v2;
    sub_227FE5EAC((v0 + 16), (v0 + 48));

    v5 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 24);
    *(v0 + 176) = v7;
    *(v1 + 24) = 0x8000000000000000;
    v8 = *(v0 + 72);
    v9 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, v8);
    v13 = *v12;
    *(v0 + 104) = v4;
    *(v0 + 80) = v13;

    v15 = sub_227FEB130(v14, v7);
    v17 = *(v7 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v9) = v16;
      if (*(v7 + 24) < v20)
      {
        sub_2280196BC(v20, isUniquelyReferenced_nonNull_native);
        v21 = *(v0 + 176);
        v15 = sub_227FEB130(KeyPath, v21);
        if ((v9 & 1) != (v22 & 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);

          sub_2281399EC();
          return;
        }

LABEL_10:
        if (v9)
        {
LABEL_11:
          v23 = (*(v21 + 56) + 32 * v15);
          __swift_destroy_boxed_opaque_existential_1Tm_0(v23);
          sub_227FE5EAC((v0 + 80), v23);
LABEL_31:
          v46 = *(v0 + 216);
          __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 48));

          *(v46 + 24) = v21;
          os_unfair_lock_unlock((v46 + 16));

          goto LABEL_32;
        }

LABEL_29:
        v37 = *(v0 + 104);
        v38 = v15;
        v39 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 80, v37);
        v40 = *(v37 - 8);
        v41 = *(v40 + 64) + 15;
        v42 = swift_task_alloc();
        (*(v40 + 16))(v42, v39, v37);
        v43 = *v42;
        *(v0 + 136) = v4;
        *(v0 + 112) = v43;
        *(v21 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        *(*(v21 + 48) + 8 * v38) = KeyPath;
        sub_227FE5EAC((v0 + 112), (*(v21 + 56) + 32 * v38));
        v44 = *(v21 + 16);
        v19 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v19)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return;
        }

        *(v21 + 16) = v45;

        __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 80));

        goto LABEL_31;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v7;
        goto LABEL_10;
      }
    }

    v86 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
    v24 = sub_22813991C();
    v21 = v24;
    v25 = *(v7 + 16);
    if (v25)
    {
      v26 = (v24 + 64);
      v27 = ((1 << *(v21 + 32)) + 63) >> 6;
      if (v21 != v7 || v26 >= v7 + 64 + 8 * v27)
      {
        memmove(v26, (v7 + 64), 8 * v27);
        v25 = *(v7 + 16);
      }

      v28 = 0;
      *(v21 + 16) = v25;
      v29 = 1 << *(v7 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & *(v7 + 64);
      v32 = (v29 + 63) >> 6;
      v87 = v32;
      if (v31)
      {
        do
        {
          v33 = __clz(__rbit64(v31));
          v89 = (v31 - 1) & v31;
LABEL_26:
          v88 = v33 | (v28 << 6);
          v36 = *(*(v7 + 48) + 8 * v88);
          sub_227FEB0D4(*(v7 + 56) + 32 * v88, v0 + 144);
          *(*(v21 + 48) + 8 * v88) = v36;
          sub_227FE5EAC((v0 + 144), (*(v21 + 56) + 32 * v88));

          v32 = v87;
          v31 = v89;
        }

        while (v89);
      }

      v34 = v28;
      while (1)
      {
        v28 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v28 >= v32)
        {
          break;
        }

        v35 = *(v7 + 64 + 8 * v28);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v89 = (v35 - 1) & v35;
          goto LABEL_26;
        }
      }
    }

    v15 = v86;
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_32:
  v47 = *(v0 + 280);
  v48 = *(v0 + 208);
  v49 = v47 - v48;
  if (__OFSUB__(v47, v48))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v49 < 1)
  {
    goto LABEL_46;
  }

  v50 = *(v0 + 232);
  v51 = sub_22813880C();
  v52 = sub_2281396BC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v0 + 280);
    v55 = *(v0 + 240);
    v54 = *(v0 + 248);
    v56 = swift_slowAlloc();
    *v56 = 134349568;
    *(v56 + 4) = v53;
    *(v56 + 12) = 2050;
    *(v56 + 14) = v54;
    *(v56 + 22) = 2050;
    *(v56 + 24) = v55;
    _os_log_impl(&dword_227FC3000, v51, v52, "Truncated token count %{public}ld exceeded target token count %{public}ld on attempt %{public}ld", v56, 0x20u);
    MEMORY[0x22AAB28A0](v56, -1, -1);
  }

  v57 = v49 + 50;
  if (__OFADD__(v49, 50))
  {
    goto LABEL_55;
  }

  v58 = *(v0 + 240);
  v19 = __OFADD__(v58, 1);
  v59 = v58 + 1;
  if (v19)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v60 = *(v0 + 248);
  if (v57 <= 0x12C)
  {
    v57 = 300;
  }

  v61 = v60 - v57;
  if (v60 > v57)
  {
    v62 = *(v0 + 288);
    v63 = *(v0 + 264);
    *(v0 + 240) = v59;
    *(v0 + 248) = v61;
    v64 = *(v0 + 224);
    v66 = *(v0 + 192);
    v65 = *(v0 + 200);
    v67 = *(v0 + 184);

    v68 = sub_227FE9BC0(v67, v66, v65, v61);
    *(v0 + 256) = v68;
    *(v0 + 264) = v69;
    if (v62)
    {
      v70 = *(v0 + 8);

      v70();
    }

    else
    {
      v78 = *(v0 + 224);
      v79 = v78[3];
      v80 = v78[4];
      v81 = v68;
      v82 = v69;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v83 = *(v80 + 16);
      v90 = (v83 + *v83);
      v84 = v83[1];
      v85 = swift_task_alloc();
      *(v0 + 272) = v85;
      *v85 = v0;
      v85[1] = sub_227FE9294;

      v90(v81, v82, v79, v80);
    }

    return;
  }

  v47 = *(v0 + 280);
LABEL_46:
  v72 = *(v0 + 256);
  v71 = *(v0 + 264);
  v73 = *(v0 + 232);
  v74 = sub_22813880C();
  v75 = sub_2281396BC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 134349056;
    *(v76 + 4) = v47;
    _os_log_impl(&dword_227FC3000, v74, v75, "Input has been truncated to token length %{public}ld", v76, 0xCu);
    MEMORY[0x22AAB28A0](v76, -1, -1);
  }

  v77 = *(v0 + 8);

  v77(v72, v71);
}

uint64_t sub_227FE9BC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return v6;
  }

  v10 = sub_2280DB150();
  v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v12 = sub_2280E9BE4(0xD000000000000011, 0x8000000228144170, 0);
  if (v4)
  {

    return v6;
  }

  v13 = v12;
  v33 = a3;
  v34 = a4;
  v14 = 7;
  if (((a2 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v31 = v10;
  v32 = (v14 | (v7 << 16));
  v37[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
  sub_227FEB294();
  sub_227FDB420();
  v38 = sub_22813973C();
  v35 = v15;
  v37[0] = MEMORY[0x277D84F90];
  v16 = sub_22813927C();
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a2;
  v17[4] = v37;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_227FEB2F8;
  *(v18 + 24) = v17;
  aBlock[4] = sub_227FEB304;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2280E6468;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  [v13 enumerateMatchesInString:v16 options:0 range:v38 usingBlock:{v35, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_35;
  }

  v21 = v37[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E558, &qword_22813B0F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v31;
  *(inited + 40) = v21;
  isEscapingClosureAtFileLocation = sub_227FEA1DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E560, &qword_22813B100);
  swift_arrayDestroy();
  v16 = *(isEscapingClosureAtFileLocation + 16);
  if (!v16)
  {
    v18 = 4 * v7;
    v17 = v32;
LABEL_15:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v18 = 4 * v7;
  v17 = v32;
  if (*(isEscapingClosureAtFileLocation + 8 * v16 + 24) >> 14 != 4 * v7)
  {
    goto LABEL_15;
  }

  v18 = *(isEscapingClosureAtFileLocation + 8 * v16 + 24) >> 14;
  while (1)
  {
    v25 = floor(v16 / v33 * v34);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    if (!__OFSUB__(v25, 1))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    isEscapingClosureAtFileLocation = sub_2281339CC(0, v16 + 1, 1, isEscapingClosureAtFileLocation);
LABEL_16:
    v24 = *(isEscapingClosureAtFileLocation + 16);
    v23 = *(isEscapingClosureAtFileLocation + 24);
    v16 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      isEscapingClosureAtFileLocation = sub_2281339CC((v23 > 1), v24 + 1, 1, isEscapingClosureAtFileLocation);
    }

    *(isEscapingClosureAtFileLocation + 16) = v16;
    *(isEscapingClosureAtFileLocation + 8 * v24 + 32) = v17;
  }

  v26 = (v25 - 1) & ~((v25 - 1) >> 63);
  if (v16 - 1 < v26)
  {
    v26 = v16 - 1;
  }

  if (v26 >= v16)
  {
    goto LABEL_39;
  }

  v27 = *(isEscapingClosureAtFileLocation + 8 * v26 + 32);
  if (v18 <= v27 >> 14)
  {
    v28 = v17;
  }

  else
  {
    v28 = v27;
  }

  if (v18 == v28 >> 14)
  {
  }

  else
  {
    v29 = sub_22813948C();
    v6 = MEMORY[0x22AAB18D0](v29);
  }

  return v6;
}

uint64_t sub_227FEA074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_227FEA140@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_227FEA1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_19:
    v29 = v3;

    v1 = 0;
    sub_227FEA664(&v29);

    v15 = v29;
    v16 = *(v29 + 2);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        v21 = *(v15 + 2);
        if (v19 >= v21)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v22 = *&v15[8 * v19 + 32];
        v23 = v19 + 1;
        if ((v17 & ((v22 ^ v18) < 0x4000)) == 1)
        {
          break;
        }

LABEL_27:
        v18 = v22;
        v19 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2281339CC(0, *(v20 + 2) + 1, 1, v20);
        }

        v27 = *(v20 + 2);
        v26 = *(v20 + 3);
        v1 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          v20 = sub_2281339CC((v26 > 1), v27 + 1, 1, v20);
        }

        *(v20 + 2) = v1;
        *&v20[8 * v27 + 32] = v18;
        v17 = 1;
        if (v19 == v16)
        {
          goto LABEL_34;
        }
      }

      v24 = &v15[8 * v19 + 40];
      while (v16 != v23)
      {
        if (v23 >= v21)
        {
          goto LABEL_35;
        }

        v25 = *v24;
        v24 += 8;
        v22 = v25;
        ++v23;
        if ((v25 ^ v18) >= 0x4000)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_34:

    return v20;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v10 = v6 + v5;
      }

      else
      {
        v10 = v6;
      }

      v3 = sub_2281339CC(isUniquelyReferenced_nonNull_native, v10, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        v11 = *(v3 + 2);
        if ((*(v3 + 3) >> 1) - v11 < v5)
        {
          goto LABEL_38;
        }

        memcpy(&v3[8 * v11 + 32], (v4 + 32), 8 * v5);

        if (v5)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v5);
          v14 = v12 + v5;
          if (v13)
          {
            goto LABEL_39;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_37;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      goto LABEL_19;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_227FEA494(void *a1)
{
  sub_22813988C();

  v2 = a1[8];
  v3 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t objectdestroyTm_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_227FEA5B8(uint64_t a1)
{
  v2 = type metadata accessor for SignpostToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227FEA664(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227FEA63C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22813997C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22813954C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_227FEA79C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_227FEA79C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_227FEAF6C(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_227FEACE4((*a3 + 8 * *v79), (*a3 + 8 * *v81), (*a3 + 8 * v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 8 * v8);
      v12 = v11 >> 14;
      v13 = *(*a3 + 8 * v10) >> 14;
      v14 = v10 + 2;
      while (v6 != v14)
      {
        v15 = *(*a3 + 8 * v14);
        v16 = (v12 < v13) ^ (v15 >> 14 >= v11 >> 14);
        ++v14;
        v11 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + 8 * v18);
            *(v21 + 8 * v18) = *(v21 + 8 * v17);
            *(v21 + 8 * v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2281337BC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_2281337BC((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_227FEACE4((*a3 + 8 * v74), (*a3 + 8 * *&v9[16 * v35 + 32]), (*a3 + 8 * v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_227FEAF6C(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_227FEAEE0(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v8 - 8;
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + 8 * v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >> 14 >= *v27 >> 14)
    {
LABEL_29:
      ++v8;
      v23 += 8;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_227FEACE4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 >> 14 < *v17 >> 14)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_227FEAEE0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FEAF6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_227FEAF80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E568, &qword_22813B108);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_227FEB0D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_227FEB130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
  v5 = sub_2281391DC();
  return sub_227FEB1AC(a1, v5, a2);
}

unint64_t sub_227FEB1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = -1 << *(a3 + 32);
  v5 = a2 & ~v4;
  if ((*(a3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      v9 = *(*(a3 + 48) + 8 * v5);
      if (sub_22813926C())
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_227FEB294()
{
  result = qword_2813C4650;
  if (!qword_2813C4650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E550, &qword_22813B0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4650);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227FEB348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227FEB390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227FEB424()
{
  v0 = sub_22813808C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281380AC();
  if ((*(v1 + 88))(v5, v0) == *MEMORY[0x277D0D7A0])
  {
    sub_22813732C();
    v6 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v7 = *(*(*(v6 + 8) + 8) + 8);
    v8 = sub_22813738C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v10 = sub_22813882C();
    __swift_project_value_buffer(v10, qword_2813C89F0);
    v11 = sub_22813880C();
    v12 = sub_2281396DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_227FC3000, v11, v12, "Handling @unknown default for llm() in GenerativeAssistantSettingsProvider.modelBundleIdentifier:", v13, 2u);
      MEMORY[0x22AAB28A0](v13, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_227FEB638()
{
  result = sub_22813882C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_227FEB6E0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for SessionCache.CacheKey();
  sub_228136FCC();
  type metadata accessor for SessionCache.CacheEntry();
  sub_227FEB8D0();
  sub_228137CAC();
  swift_getWitnessTable();
  sub_2281391CC();
  v3 = *(sub_2281374EC() + 16);
  sub_22813976C();
  v4 = qword_2813C7C88;
  v5 = sub_22813882C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_2813C7D90 + 8);

  return v0;
}

uint64_t sub_227FEB830()
{
  sub_227FEB6E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_227FEB8D0()
{
  result = qword_2813C8778;
  if (!qword_2813C8778)
  {
    sub_228136FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8778);
  }

  return result;
}

uint64_t sub_227FEB930(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_228136F8C();
    if (v4 <= 0x3F)
    {
      result = sub_228136FCC();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_227FEB9D8()
{
  sub_227FEBAA8();
  if (v0 <= 0x3F)
  {
    sub_227FEBB00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227FEBAA8()
{
  if (!qword_2813C6FE8[0])
  {
    type metadata accessor for ModelBundleIdentifier();
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, qword_2813C6FE8);
    }
  }
}

void sub_227FEBB00()
{
  if (!qword_2813C4660)
  {
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4660);
    }
  }
}

uint64_t sub_227FEBB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E578, &unk_22813B280);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v31 - v18;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2281399BC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_2281399BC() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_2281399BC() & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v32 = type metadata accessor for SessionCache.CacheKey();
  v20 = v32[13];
  v21 = *(v15 + 48);
  sub_227FEC1B0(a1 + v20, v19);
  sub_227FEC1B0(a2 + v20, &v19[v21]);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_227FEC284(v19, &qword_27D81E570, &qword_22813B1F0);
      goto LABEL_21;
    }

LABEL_17:
    sub_227FEC284(v19, &qword_27D81E578, &unk_22813B280);
    return 0;
  }

  sub_227FEC1B0(v19, v14);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_227FC8720(v14);
    goto LABEL_17;
  }

  sub_227FEC220(&v19[v21], v9);
  v24 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v14, v9);
  sub_227FC8720(v9);
  sub_227FC8720(v14);
  sub_227FEC284(v19, &qword_27D81E570, &qword_22813B1F0);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v25 = v32[14];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 == 2)
    {
      goto LABEL_26;
    }

    return 0;
  }

  result = 0;
  if (v27 != 2 && ((v27 ^ v26) & 1) == 0)
  {
LABEL_26:
    v28 = v32[15];
    v29 = *(a1 + v28);
    v30 = *(a2 + v28);
    if (v29 == 2)
    {
      if (v30 == 2)
      {
        return 1;
      }
    }

    else if (v30 != 2 && ((v30 ^ v29) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_227FEBEE4(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for ModelBundleIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v24 - v13;
  v15 = *v2;
  v16 = v2[1];
  sub_22813923C();
  v17 = v2[2];
  v18 = v2[3];
  sub_22813923C();
  v19 = *(v2 + 8);
  sub_228139ADC();
  v20 = v2[5];
  v21 = v2[6];
  sub_22813923C();
  v22 = *(v2 + 14);
  sub_228139ADC();
  sub_227FEC1B0(v2 + a2[13], v14);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_228139ACC();
  }

  else
  {
    sub_227FEC220(v14, v9);
    sub_228139ACC();
    ModelBundleIdentifier.hash(into:)();
    sub_227FC8720(v9);
  }

  if (*(v2 + a2[14]) != 2)
  {
    sub_228139ACC();
  }

  sub_228139ACC();
  if (*(v2 + a2[15]) != 2)
  {
    sub_228139ACC();
  }

  return sub_228139ACC();
}

uint64_t sub_227FEC0F4(int *a1)
{
  sub_228139AAC();
  sub_227FEBEE4(v3, a1);
  return sub_228139AEC();
}

uint64_t sub_227FEC144(uint64_t a1, int *a2)
{
  sub_228139AAC();
  sub_227FEBEE4(v4, a2);
  return sub_228139AEC();
}

uint64_t sub_227FEC188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_227FEBB50(a1, a2);
}

uint64_t sub_227FEC1B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FEC220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FEC284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FEC314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v33 - v6;
  v8 = sub_22813701C();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22813713C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C86B0 != -1)
  {
    swift_once();
  }

  v19 = *(off_2813C86B8 + 2);
  if (v19)
  {
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = off_2813C86B8 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v42 = *(v20 + 56);
    v43 = v21;
    v44 = v20;
    v23 = (v20 - 8);
    v24 = (v40 + 48);
    v41 = (v40 + 32);
    v25 = MEMORY[0x277D84F90];
    v38 = v12;
    v39 = v8;
    v37 = v13;
    v21(v18, v22, v13);
    while (1)
    {
      sub_22813710C();
      (*v23)(v18, v13);
      if ((*v24)(v7, 1, v8) == 1)
      {
        sub_227FECD5C(v7);
      }

      else
      {
        v26 = *v41;
        (*v41)(v12, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_228133AD0(0, v25[2] + 1, 1, v25);
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = sub_228133AD0(v27 > 1, v28 + 1, 1, v25);
        }

        v25[2] = v28 + 1;
        v8 = v39;
        v29 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28;
        v12 = v38;
        v26(v29, v38, v39);
        v13 = v37;
      }

      v22 += v42;
      if (!--v19)
      {
        break;
      }

      v43(v18, v22, v13);
    }
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v30 = sub_227FECF2C(v25);

  v31 = sub_228028A68(&unk_283B5B150);
  swift_arrayDestroy();
  sub_2280EAEE0(v34, v35, v31);

  sub_227FEC80C(v30);
  return sub_22813799C();
}

uint64_t sub_227FEC6F4(char *a1, uint64_t a2, uint64_t a3)
{
  if (sub_2281006F8(a1))
  {
    return sub_228100294(a3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FEC74C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22813936C();
  v5 = MEMORY[0x22AAB1BF0](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_2281393DC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_2280BDFE4(v13, v9, v10);

      v9 = sub_2281393DC();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_227FEC80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v52 = v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v51 = v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v50 = v44 - v13;
  v49 = sub_22813713C();
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v49, v16);
  v55 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22813701C();
  v18 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46, v19);
  v47 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 56);
  v26 = (v23 + 63) >> 6;
  v44[3] = v20 + 56;
  v44[4] = v20 + 16;
  v45 = v20;
  v48 = v14;
  v44[1] = v14 + 32;
  v44[2] = v20 + 8;
  v53 = a1;

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v31 = v46;
  v30 = v47;
  for (i = v50; v25; result = (*(v48 + 32))(v29 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39, v55, v49))
  {
    v54 = v29;
LABEL_9:
    v34 = v45;
    v35 = *(v45 + 16);
    v35(v30, *(v53 + 48) + *(v45 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v31);
    v35(i, v30, v31);
    (*(v34 + 56))(i, 0, 1, v31);
    v36 = sub_2281370BC();
    (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
    v37 = sub_22813708C();
    (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
    sub_2281370FC();
    (*(v34 + 8))(v30, v31);
    v29 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_2281336A0(0, v29[2] + 1, 1, v29);
    }

    v39 = v29[2];
    v38 = v29[3];
    if (v39 >= v38 >> 1)
    {
      v29 = sub_2281336A0(v38 > 1, v39 + 1, 1, v29);
    }

    v25 &= v25 - 1;
    v29[2] = v39 + 1;
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v26)
    {

      v56 = v29;
      v40 = sub_228102F0C();
      MEMORY[0x28223BE20](v40, v41);
      v44[-2] = &v56;
      v43 = sub_2280CAD30(sub_227FED098, &v44[-4], v42);

      return v43;
    }

    v25 = *(v22 + 8 * v33);
    ++v28;
    if (v25)
    {
      v54 = v29;
      v28 = v33;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227FECD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227FECDC4(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  v3 = sub_22813713C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3, v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *a2;
  v12 = *(*a2 + 16);
  v15[1] = v4 + 16;
  while (1)
  {
    v13 = v10;
    if (v12 == v10)
    {
      return v12 != v13;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    (*(v4 + 16))(v9, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v3);
    v14 = sub_228100294(v16);
    result = (*(v4 + 8))(v9, v3);
    if (v14)
    {
      return v12 != v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227FECF2C(uint64_t a1)
{
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_227FED0B8();
  result = MEMORY[0x22AAB1BF0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_2280BDAE0(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

unint64_t sub_227FED0B8()
{
  result = qword_2813C8768;
  if (!qword_2813C8768)
  {
    sub_22813701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8768);
  }

  return result;
}

uint64_t sub_227FED110(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_227FED188();
  result = MEMORY[0x22AAB1BF0](v2, &type metadata for Com_Apple_Summarizationkit_Proto_SummarizationStyle, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_2280BDE78(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_227FED188()
{
  result = qword_2813C8610;
  if (!qword_2813C8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8610);
  }

  return result;
}

uint64_t sub_227FED20C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *v3;
  v5 = *(v3 + 1);
  a3(a1, a2);

  v6 = sub_22813999C();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
  }

  v9 = sub_228136E1C();

  v10 = NSError.loggingDescription.getter();
  return v10;
}

uint64_t sub_227FED308(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2281338C0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_227FED428(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2281338C0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_227FF7CB8(&v30, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v16;
  }

  if (result != v13)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v31)
  {
    goto LABEL_13;
  }

  v17 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = v30;
    if (v17 < *(v30 + 16))
    {
      v19 = *(v4 + 2);
      v20 = v30 + 16 * v17;
      v22 = *(v20 + 32);
      v21 = *(v20 + 40);

      while (1)
      {
LABEL_22:
        v23 = *(v4 + 3);
        v24 = v23 >> 1;
        if ((v23 >> 1) < v19 + 1)
        {
          result = sub_2281338C0((v23 > 1), v19 + 1, 1, v4);
          v4 = result;
          v24 = *(result + 24) >> 1;
          v25 = v19 - v24;
          if (v19 < v24)
          {
LABEL_24:
            v29 = v24;
            v2 = 0;
            v26 = (v18 + 24 + 16 * v17);
            v28 = v19;
            v27 = &v4[16 * v19 + 40];
            while (1)
            {
              *(v27 - 1) = v22;
              *v27 = v21;
              if (!(v17 + v2))
              {
                break;
              }

              if ((v17 + v2 - 1) >= *(v18 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v22 = *(v26 - 1);
              v21 = *v26;

              --v2;
              v26 -= 2;
              v27 += 16;
              if (v25 == v2)
              {
                v17 += v2;
                v19 = v29;
                *(v4 + 2) = v29;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v28 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v25 = v19 - v24;
          if (v19 < v24)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v19;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_227FED66C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_227FED7B0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228133CE0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t ClassificationRequestHandler.RequestInfo.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_227FED8D4(uint64_t *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_228136FCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = *(a2 + 1);

  *a2 = v16;
  *(a2 + 1) = v15;
  sub_228136F9C();
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_228136FBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_227FFB0A0(v8, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
  }

  v19 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  return (*(v10 + 40))(&a2[*(v19 + 20)], v14, v9);
}

uint64_t ClassificationRequestHandler.RequestInfo.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 1);

  *v2 = a1;
  *(v2 + 1) = a2;
  sub_228136F9C();
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_228136FBC();
    if (v17(v9, 1, v10) != 1)
    {
      sub_227FFB0A0(v9, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
  }

  v18 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  return (*(v11 + 40))(&v2[*(v18 + 20)], v15, v10);
}

void (*ClassificationRequestHandler.RequestInfo.requestIdentifier.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = sub_228136FCC();
  v5[2] = v8;
  v9 = *(v8 - 8);
  v5[3] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[4] = v10;
  return sub_227FEDDC0;
}

void sub_227FEDDC0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[4];
    v4 = v2[1];
  }

  else
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    v8 = **v2;
    v9 = *(*v2 + 1);
    sub_228136F9C();
    v10 = *(v6 + 6);
    if (v10(v7, 1, v5) == 1)
    {
      v12 = v2[1];
      v11 = v2[2];
      v13 = v2[4];
      sub_228136FBC();
      if (v10(v12, 1, v11) != 1)
      {
        sub_227FFB0A0(v2[1], &qword_27D81E588, &qword_22813B2D0);
      }
    }

    else
    {
      (*(v2[3] + 4))(v2[4], v2[1], v2[2]);
    }

    v14 = v2[3];
    v3 = v2[4];
    v4 = v2[1];
    v15 = v2[2];
    v16 = *v2;
    v17 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
    (*(v14 + 5))(&v16[*(v17 + 20)], v3, v15);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t ClassificationRequestHandler.RequestInfo.requestUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 20);
  v4 = sub_228136FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClassificationRequestHandler.RequestInfo.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClassificationRequestHandler.RequestInfo.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ClassificationRequestHandler.RequestInfo.clientApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ClassificationRequestHandler.RequestInfo.clientProcessIdentifier.setter(int a1)
{
  result = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t _s16SummarizationKit28ClassificationRequestHandlerC0D4InfoV27clientApplicationIdentifierSSvg_0()
{
  v1 = (v0 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClassificationRequestHandler.RequestInfo.init(requestIdentifier:useCaseIdentifier:clientApplicationIdentifier:clientProcessIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X8>)
{
  v32 = a7;
  v31 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v31 - v17;
  v19 = sub_228136FCC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = a1;
  *(a8 + 1) = a2;

  sub_228136F9C();

  v25 = *(v20 + 48);
  if (v25(v18, 1, v19) == 1)
  {
    sub_228136FBC();
    if (v25(v18, 1, v19) != 1)
    {
      sub_227FFB0A0(v18, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
  }

  v26 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  result = (*(v20 + 32))(&a8[v26[5]], v24, v19);
  v28 = &a8[v26[6]];
  *v28 = a3;
  *(v28 + 1) = a4;
  v29 = &a8[v26[7]];
  v30 = v31;
  *v29 = a5;
  *(v29 + 1) = v30;
  *&a8[v26[8]] = v32;
  return result;
}

uint64_t sub_227FEE3EC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_227FEE41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228136FCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FEE490(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_227FEE4C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ClassificationRequestHandler.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ClassificationRequestHandler.init()();
  return v3;
}

uint64_t ClassificationRequestHandler.init()()
{
  v1 = sub_22813882C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_2813C8A08);
  v9 = *(v2 + 16);
  v9(v0 + v7, v8, v1);
  v10 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  if (qword_2813C4928 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Signpost(0);
  v12 = __swift_project_value_buffer(v11, qword_2813C88D0);
  sub_227FF9A3C(v12, v0 + v10, type metadata accessor for Signpost);
  v9(v6, v0 + v7, v1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E590, &qword_22813B2D8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_227FE4B5C(MEMORY[0x277D84F90]);
  *(v16 + 16) = 0;
  *(v16 + 24) = v17;
  (*(v2 + 32))(v16 + qword_2813C7C88, v6, v1);
  v18 = (v16 + qword_2813C7D90);
  *v18 = sub_227FF924C;
  v18[1] = 0;
  *(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache) = v16;
  return v0;
}

uint64_t ClassificationRequestHandler.prewarm(requestInfo:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227FEE808;

  return sub_227FEE8FC(a1, 0);
}

uint64_t sub_227FEE808()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227FEE8FC(uint64_t a1, char a2)
{
  *(v3 + 248) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v5 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v3 + 96) = v5;
  v6 = *(v5 - 8);
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 + 64);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FEEA60, 0, 0);
}

uint64_t sub_227FEEA60()
{
  v48 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 248);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  if (*(v0 + 248))
  {
    v8 = 0xEB00000000206465;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  *(v0 + 200) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9A3C(v6, v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v2, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v3, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v4, type metadata accessor for ClassificationRequestHandler.RequestInfo);

  sub_22810A6C8();
  sub_22810A6D0();
  v9 = sub_22813880C();
  v10 = sub_2281396BC();

  if (os_log_type_enabled(v9, v10))
  {
    if (v5)
    {
      v11 = 0x7461636572706564;
    }

    else
    {
      v11 = 0;
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v44 = *(v0 + 176);
    v45 = *(v0 + 168);
    v14 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v15 = 136316418;
    *(v15 + 4) = sub_227FCC340(v11, v8, &v47);
    *(v15 + 12) = 2082;
    v17 = *v12;
    v16 = v12[1];

    sub_227FFA994(v12, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v18 = sub_227FCC340(v17, v16, &v47);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2082;
    v19 = (v13 + v14[6]);
    v20 = *v19;
    v21 = v19[1];

    sub_227FFA994(v13, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v22 = sub_227FCC340(v20, v21, &v47);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2082;
    v23 = (v44 + v14[7]);
    v24 = *v23;
    v25 = v23[1];

    sub_227FFA994(v44, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v26 = sub_227FCC340(v24, v25, &v47);

    *(v15 + 34) = v26;
    *(v15 + 42) = 1026;
    LODWORD(v14) = *(v45 + v14[8]);
    sub_227FFA994(v45, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    *(v15 + 44) = v14;
    *(v15 + 48) = 1026;
    *(v15 + 50) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v9, v10, "Received %sprewarm request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v15, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v46, -1, -1);
    MEMORY[0x22AAB28A0](v15, -1, -1);
  }

  else
  {
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    sub_227FFA994(*(v0 + 168), type metadata accessor for ClassificationRequestHandler.RequestInfo);

    sub_227FFA994(v29, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v28, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v27, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  }

  if (qword_2813C4920 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 160);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v33 = *(v0 + 88);
  v34 = *(v0 + 72);
  v35 = type metadata accessor for Signpost(0);
  v36 = __swift_project_value_buffer(v35, qword_2813C88B8);
  *(v0 + 208) = v36;
  sub_227FF9A3C(v34, v30, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v38 = swift_allocObject();
  *(v0 + 216) = v38;
  sub_227FF99D8(v30, v38 + v37);
  v39 = swift_allocObject();
  *(v0 + 224) = v39;
  *(v39 + 16) = sub_227FFB234;
  *(v39 + 24) = v38;

  sub_2281324C4(v36, v39);
  v40 = swift_task_alloc();
  *(v0 + 232) = v40;
  *v40 = v0;
  v40[1] = sub_227FEEEFC;
  v42 = *(v0 + 72);
  v41 = *(v0 + 80);

  return sub_227FF7824(v40, v41, v42);
}

uint64_t sub_227FEEEFC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_227FEF324;
  }

  else
  {
    v3 = sub_227FEF010;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FEF010()
{
  v33 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  v5 = *(v0 + 248);
  v6 = *(v0 + 72);
  sub_2281324D4(v4, *(v0 + 208), *(v0 + 224));
  sub_227FFA994(v4, type metadata accessor for SignpostToken);

  sub_227FF9A3C(v6, v3, type metadata accessor for ClassificationRequestHandler.RequestInfo);

  v7 = sub_22813880C();
  v8 = sub_2281396BC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 152);
  LODWORD(v3) = *(v0 + 248);
  if (v9)
  {
    if (*(v0 + 248))
    {
      v11 = 0xEB00000000206465;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    if (*(v0 + 248))
    {
      v12 = 0x7461636572706564;
    }

    else
    {
      v12 = 0;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315394;
    v15 = sub_227FCC340(v12, v11, &v32);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2082;
    v16 = *v10;
    v17 = v10[1];

    sub_227FFA994(v10, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v18 = sub_227FCC340(v16, v17, &v32);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_227FC3000, v7, v8, "Successfully handled %sprewarm request [requestIdentifier: %{public}s]", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {

    sub_227FFA994(v10, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  }

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v26 = *(v0 + 136);
  v25 = *(v0 + 144);
  v28 = *(v0 + 120);
  v27 = *(v0 + 128);
  v31 = *(v0 + 88);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_227FEF324()
{
  v62 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v48 = *(v0 + 144);
  v49 = *(v0 + 136);
  v50 = *(v0 + 128);
  v52 = *(v0 + 120);
  v5 = *(v0 + 88);
  v55 = *(v0 + 80);
  v58 = *(v0 + 200);
  v6 = *(v0 + 72);
  *(v0 + 248);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = sub_227FFB234;
  v7[4] = v2;
  swift_beginAccess();
  v8 = *(v3 + 24);
  *(v3 + 16) = sub_227FFB33C;
  *(v3 + 24) = v7;

  v9 = v1;

  swift_willThrow();
  sub_2281324D4(v5, v4, v3);
  sub_227FFA994(v5, type metadata accessor for SignpostToken);

  sub_227FF9A3C(v6, v48, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v49, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v50, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v52, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v10 = v1;
  v11 = sub_22813880C();
  v12 = sub_2281396DC();

  if (os_log_type_enabled(v11, v12))
  {
    v59 = v12;
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v51 = *(v0 + 120);
    v53 = *(v0 + 240);
    v16 = *(v0 + 96);
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *v17 = 136447234;
    v19 = *v13;
    v18 = v13[1];

    sub_227FFA994(v13, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v20 = sub_227FCC340(v19, v18, v61);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v21 = (v14 + v16[6]);
    v22 = *v21;
    v23 = v21[1];

    sub_227FFA994(v14, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v24 = sub_227FCC340(v22, v23, v61);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    v25 = (v15 + v16[7]);
    v26 = *v25;
    v27 = v25[1];

    sub_227FFA994(v15, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v28 = sub_227FCC340(v26, v27, v61);

    *(v17 + 24) = v28;
    *(v17 + 32) = 1026;
    LODWORD(v28) = *(v51 + v16[8]);
    sub_227FFA994(v51, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    *(v17 + 34) = v28;
    *(v17 + 38) = 2082;
    swift_getErrorValue();
    v29 = *(v0 + 40);
    v30 = Error.loggingDescription.getter(*(v0 + 48), *(v0 + 56));
    v32 = sub_227FCC340(v30, v31, v61);

    *(v17 + 40) = v32;
    _os_log_impl(&dword_227FC3000, v11, v59, "Prewarm request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v17, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v56, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  else
  {
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = *(v0 + 128);
    sub_227FFA994(*(v0 + 120), type metadata accessor for ClassificationRequestHandler.RequestInfo);

    sub_227FFA994(v35, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v34, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v33, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  }

  v36 = *(v0 + 240);
  v37 = *(v0 + 184);
  v38 = *(v0 + 192);
  v40 = *(v0 + 168);
  v39 = *(v0 + 176);
  v42 = *(v0 + 152);
  v41 = *(v0 + 160);
  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  v54 = *(v0 + 128);
  v57 = *(v0 + 120);
  v60 = *(v0 + 88);
  swift_willThrow();

  v45 = *(v0 + 8);
  v46 = *(v0 + 240);

  return v45();
}

uint64_t ClassificationRequestHandler.prewarm(for:clientApplicationIdentifier:clientProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 144) = a4;
  *(v5 + 16) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v7 = sub_228138CEC();
  *(v5 + 48) = v7;
  v8 = *(v7 - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v10 = sub_228136FCC();
  *(v5 + 72) = v10;
  v11 = *(v10 - 8);
  *(v5 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v13 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v5 + 104) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FEF988, 0, 0);
}

uint64_t sub_227FEF988()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v29 = *(v0 + 40);
  sub_228136FBC();
  v8 = sub_228136FAC();
  v10 = v9;
  (*(v4 + 8))(v2, v3);
  (*(v5 + 104))(v6, *MEMORY[0x277D4B188], v7);
  v11 = sub_228138CDC();
  v30 = v12;
  (*(v5 + 8))(v6, v7);
  *v1 = v8;
  v1[1] = v10;

  sub_228136F9C();

  v13 = *(v4 + 48);
  if (v13(v29, 1, v3) == 1)
  {
    v14 = *(v0 + 72);
    v15 = *(v0 + 40);
    v16 = *(v0 + 88);
    sub_228136FBC();
    if (v13(v15, 1, v14) != 1)
    {
      sub_227FFB0A0(*(v0 + 40), &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  }

  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20 = *(v0 + 144);
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);
  (*(*(v0 + 80) + 32))(v18 + v19[5], *(v0 + 88), *(v0 + 72));
  v23 = (v18 + v19[6]);
  *v23 = v11;
  v23[1] = v30;
  v24 = (v18 + v19[7]);
  *v24 = v22;
  v24[1] = v21;
  *(v18 + v19[8]) = v20;
  sub_227FF99D8(v18, v17);

  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_227FEFC00;
  v26 = *(v0 + 120);
  v27 = *(v0 + 32);

  return sub_227FEE8FC(v26, 1);
}

uint64_t sub_227FEFC00()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_227FEFDDC;
  }

  else
  {
    v3 = sub_227FEFD14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FEFD14()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[5];
  sub_227FFA994(v0[15], type metadata accessor for ClassificationRequestHandler.RequestInfo);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227FEFDDC()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[5];
  sub_227FFA994(v0[15], type metadata accessor for ClassificationRequestHandler.RequestInfo);

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t ClassificationRequestHandler.classifyPriority(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = sub_228138ACC();
  v5[27] = v10;
  v11 = *(v10 - 8);
  v5[28] = v11;
  v12 = *(v11 + 64) + 15;
  v5[29] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF0034, 0, 0);
}

{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[41] = v7;
  v8 = *(v7 - 8);
  v5[42] = v8;
  v9 = *(v8 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v10 = *(*(type metadata accessor for PriorityModelSession.Input() - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v5[46] = v11;
  v12 = *(v11 - 8);
  v5[47] = v12;
  v13 = *(v12 + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v14 = sub_228138ACC();
  v5[50] = v14;
  v15 = *(v14 - 8);
  v5[51] = v15;
  v16 = *(v15 + 64) + 15;
  v5[52] = swift_task_alloc();
  v17 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF1CD4, 0, 0);
}

{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = sub_228138ACC();
  v5[27] = v10;
  v11 = *(v10 - 8);
  v5[28] = v11;
  v12 = *(v11 + 64) + 15;
  v5[29] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF39AC, 0, 0);
}

{
  v5[18] = a4;
  v5[19] = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF4F04, 0, 0);
}

{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = sub_228138ACC();
  v5[27] = v10;
  v11 = *(v10 - 8);
  v5[28] = v11;
  v12 = *(v11 + 64) + 15;
  v5[29] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF58A0, 0, 0);
}

{
  v5[18] = a4;
  v5[19] = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF6D50, 0, 0);
}

uint64_t sub_227FF0034()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 248) = boxed_opaque_existential_1;
  sub_227FF9A3C(v2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 256) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v3 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 264) = v6;
  *(v0 + 272) = v7;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  sub_227FFA05C((v0 + 56), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = sub_227FFA074;
  *(v9 + 24) = v8;

  sub_2281324C4(v3 + v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_227FF01F4;
  v11 = *(v0 + 232);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 152);

  return sub_227FF0C60(v11, v6, v12, v13, v14);
}

uint64_t sub_227FF01F4()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_227FF0838;
  }

  else
  {
    v3 = sub_227FF0308;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FF0308()
{
  v1 = *(v0 + 304);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    sub_227FFA698(*(v0 + 168) + *(v0 + 256), v4, v2);
    v8 = v2;
    sub_227FFA31C(v4, v3, v2);

    *(v0 + 136) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v10 = swift_dynamicCast();
    v11 = *(v6 + 56);
    if (v10)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 208);
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);
      v16 = *(v0 + 176);
      v11(v16, 0, 1, v14);
      (*(v15 + 32))(v13, v16, v14);
      v17 = *(v15 + 16);
      v17(v12, v13, v14);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v18 = swift_allocError();
      v17(v19, v12, v14);
      v20 = swift_allocObject();
      *(v20 + 16) = 3;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      v21 = sub_227FF9AA4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFA9F4);

      v22 = *(v15 + 8);
      v22(v12, v14);
      *(v0 + 120) = 3;
      *(v0 + 128) = v21;
      sub_227FE7384();
      v23 = sub_22813999C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v36 = 3;
        *(v36 + 8) = v21;
      }

      v37 = *(v0 + 208);
      v38 = *(v0 + 184);
      swift_willThrow();

      v22(v37, v38);
      v2 = v24;
    }

    else
    {
      v35 = *(v0 + 176);
      v11(v35, 1, 1, *(v0 + 184));
      sub_227FFB0A0(v35, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v40 = *(v0 + 280);
    v39 = *(v0 + 288);
    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v43 = *(v0 + 240);
    v51 = *(v0 + 232);
    v53 = *(v0 + 208);
    v44 = *(v0 + 168);
    v55 = *(v0 + 200);
    v57 = *(v0 + 176);
    v45 = swift_allocObject();
    v45[2] = v2;
    v45[3] = sub_227FFA074;
    v45[4] = v40;
    swift_beginAccess();
    v46 = *(v39 + 24);
    *(v39 + 16) = sub_227FFA988;
    *(v39 + 24) = v45;

    v47 = v2;

    swift_willThrow();
    sub_2281324D4(v43, v44 + v41, v39);
    sub_227FFA994(v43, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v34 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 264);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);
    v52 = *(v0 + 208);
    v54 = *(v0 + 200);
    v32 = *(v0 + 168);
    v56 = *(v0 + 176);
    v33 = *(v0 + 144);
    sub_227FFA07C(v32 + *(v0 + 256), v27);
    sub_227FFA31C(v27, v26, 0);
    (*(v31 + 32))(v33, v28, v30);
    sub_2281324D4(v29, v32 + v49, v25);
    sub_227FFA994(v29, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_227FF0838()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  sub_227FFA698(*(v0 + 168) + *(v0 + 256), v3, v1);
  v7 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFA9F4);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 120) = 3;
    *(v0 + 128) = v20;
    sub_227FE7384();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 3;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 184);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 176);
    v10(v24, 1, 1, *(v0 + 184));
    sub_227FFB0A0(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 240);
  v39 = *(v0 + 232);
  v40 = *(v0 + 208);
  v33 = *(v0 + 168);
  v41 = *(v0 + 200);
  v42 = *(v0 + 176);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_227FFA074;
  v34[4] = v29;
  swift_beginAccess();
  v35 = *(v28 + 24);
  *(v28 + 16) = sub_227FFA988;
  *(v28 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v30, v28);
  sub_227FFA994(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_227FF0C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a1;
  v5[15] = a2;
  v7 = sub_228136F8C();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = sub_22813899C();
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v13 = type metadata accessor for PriorityModelSession.Input();
  v5[24] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v15 = swift_task_alloc();
  v5[26] = v15;
  *v15 = v5;
  v15[1] = sub_227FF0DE8;

  return sub_227FF15E8(a4);
}