void sub_22CF1685C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D016B7C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2318C5DE0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_22CF1695C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_22CF10414(v2);
}

uint64_t sub_22CF16990(uint64_t a1)
{
  v83 = sub_22D01483C();
  v86 = *(v83 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v83, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01502C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v85 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v102 = &v80 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v101 = &v80 - v17;
  v100 = sub_22D014EFC();
  v95 = *(v100 - 8);
  v18 = *(v95 + 64);
  v20 = MEMORY[0x28223BE20](v100, v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v94 = &v80 - v24;
  v106 = sub_22D0149AC();
  v99 = *(v106 - 8);
  v25 = *(v99 + 64);
  MEMORY[0x28223BE20](v106, v26);
  v93 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v80 - v35;
  if (*(v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasActivityListenerEntitlement))
  {
    return 1;
  }

  if ((*(v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasRemoteActivityAccessorEntitlement) & 1) == 0)
  {
    v37 = (a1 + *(type metadata accessor for Activity() + 52));
    v38 = *v37;
    v39 = v37[1];
    if ((sub_22D014F5C() & 1) == 0)
    {
      return 0;
    }
  }

  v82 = v6;
  v80 = type metadata accessor for Activity();
  v40 = *(v80 + 28);
  v81 = a1;
  v41 = *(a1 + v40);
  v42 = *(v41 + 64);
  v98 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v103 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier);
  v84 = (v43 + 63) >> 6;
  v87 = v99 + 32;
  v88 = v99 + 16;
  v46 = (v8 + 32);
  v104 = (v8 + 8);
  v96 = (v99 + 8);
  v92 = v41;

  v48 = 0;
  v105 = v7;
  v90 = v36;
  v91 = v22;
  v97 = v46;
  v89 = v33;
  v49 = v98;
  if (v45)
  {
    while (1)
    {
      v50 = v48;
LABEL_16:
      v53 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v54 = v53 | (v50 << 6);
      v55 = v92;
      v56 = v99;
      (*(v99 + 16))(v93, *(v92 + 48) + *(v99 + 72) * v54, v106);
      v57 = v94;
      v58 = *(v55 + 56) + *(v95 + 72) * v54;
      v59 = MEMORY[0x277CB9790];
      sub_22CF1C294(v58, v94, MEMORY[0x277CB9790]);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v61 = *(v60 + 48);
      v33 = v89;
      (*(v56 + 32))();
      sub_22CF0A794(v57, &v33[v61], v59);
      (*(*(v60 - 8) + 56))(v33, 0, 1, v60);
      v7 = v105;
      v36 = v90;
      v22 = v91;
      v46 = v97;
LABEL_17:
      sub_22CEF0368(v33, v36, &qword_27D9F3828, &qword_22D01BD10);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      if ((*(*(v62 - 8) + 48))(v36, 1, v62) == 1)
      {
        break;
      }

      sub_22CF0A794(&v36[*(v62 + 48)], v22, MEMORY[0x277CB9790]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v64 = *v46;
      if (EnumCaseMultiPayload == 1)
      {
        v64(v102, v22, v7);
        if (sub_22D014F9C() == *v103 && v65 == v103[1])
        {

          (*v104)(v102, v7);
          goto LABEL_42;
        }

        v66 = sub_22D016DFC();

        (*v104)(v102, v7);
      }

      else
      {
        v64(v101, v22, v7);
        if (sub_22D014F9C() == *v103 && v67 == v103[1])
        {

          (*v104)(v101, v7);
LABEL_42:

          (*v96)(v36, v106);
          return 1;
        }

        v66 = sub_22D016DFC();

        (*v104)(v101, v7);
      }

      if (v66)
      {
        goto LABEL_42;
      }

      result = (*v96)(v36, v106);
      v49 = v98;
      if (!v45)
      {
        goto LABEL_8;
      }
    }

    v69 = *(v81 + *(v80 + 36));
    v70 = *(v69 + 16);
    if (!v70)
    {
      return 0;
    }

    v71 = 0;
    v106 = v69 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v102 = (v86 + 16);
    v72 = *MEMORY[0x277CB9348];
    v73 = (v86 + 8);
    v74 = (v86 + 96);
    v75 = v83;
    while (v71 < *(v69 + 16))
    {
      v76 = v86;
      v77 = v82;
      (*(v86 + 16))(v82, v106 + *(v86 + 72) * v71, v75);
      if ((*(v76 + 88))(v77, v75) == v72)
      {
        (*v74)(v77, v75);
        (*v97)(v85, v77, v105);
        if (sub_22D014F9C() == *v103 && v78 == v103[1])
        {

          (*v104)(v85, v105);
          return 1;
        }

        v79 = sub_22D016DFC();

        result = (*v104)(v85, v105);
        v75 = v83;
        if (v79)
        {
          return 1;
        }
      }

      else
      {
        result = (*v73)(v77, v75);
      }

      if (v70 == ++v71)
      {
        return 0;
      }
    }
  }

  else
  {
LABEL_8:
    if (v84 <= v48 + 1)
    {
      v51 = v48 + 1;
    }

    else
    {
      v51 = v84;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v50 >= v84)
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
        (*(*(v68 - 8) + 56))(v33, 1, 1, v68);
        v45 = 0;
        v48 = v52;
        goto LABEL_17;
      }

      v45 = *(v49 + 8 * v50);
      ++v48;
      if (v45)
      {
        v48 = v50;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_22CF17328(uint64_t a1, SEL *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() *a2];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22D01416C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22CF173F4(void *a1, uint64_t a2, uint64_t a3)
{
  v194 = a3;
  v195 = a2;
  v187 = sub_22D015DDC();
  v186 = *(v187 - 8);
  v5 = *(v186 + 64);
  MEMORY[0x28223BE20](v187, v6);
  v185 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v184 = &v175 - v11;
  v179 = sub_22D01483C();
  v178 = *(v179 - 8);
  v12 = *(v178 + 64);
  MEMORY[0x28223BE20](v179, v13);
  v183 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_22D015D8C();
  v175 = *(v176 - 8);
  v15 = *(v175 + 64);
  MEMORY[0x28223BE20](v176, v16);
  v182 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01430C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v190 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_22D015E0C();
  v180 = *(v181 - 8);
  v22 = *(v180 + 64);
  MEMORY[0x28223BE20](v181, v23);
  v177 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v188 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v191 = &v175 - v31;
  v32 = sub_22D0162DC();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  v192 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22D015C8C();
  v198 = *(v36 - 8);
  v199 = v36;
  v37 = *(v198 + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v189 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v193 = &v175 - v42;
  v43 = sub_22D0161DC();
  v202 = *(v43 - 8);
  v203 = v43;
  v44 = *(v202 + 64);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v197 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v209 = &v175 - v49;
  v50 = sub_22D01459C();
  v51 = *(v50 - 8);
  v205 = v50;
  v206 = v51;
  v52 = *(v51 + 8);
  v54 = MEMORY[0x28223BE20](v50, v53);
  v56 = &v175 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v57);
  v196 = &v175 - v58;
  v208 = sub_22D015B6C();
  v201 = *(v208 - 8);
  v59 = *(v201 + 64);
  v61 = MEMORY[0x28223BE20](v208, v60);
  v63 = &v175 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v61, v64);
  v207 = &v175 - v66;
  MEMORY[0x28223BE20](v65, v67);
  v200 = (&v175 - v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  v70 = *(*(v69 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v69 - 8, v71);
  v74 = &v175 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v75);
  v77 = &v175 - v76;
  v78 = sub_22D0145EC();
  v79 = *(v78 - 8);
  v210 = v78;
  v211 = v79;
  v80 = *(v79 + 64);
  v82 = MEMORY[0x28223BE20](v78, v81);
  v84 = &v175 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v82, v85);
  v88 = &v175 - v87;
  v90 = MEMORY[0x28223BE20](v86, v89);
  v92 = &v175 - v91;
  MEMORY[0x28223BE20](v90, v93);
  v204 = &v175 - v94;
  v95 = type metadata accessor for Activity();
  v96 = (a1 + v95[13]);
  v97 = *v96;
  v98 = v96[1];
  result = sub_22D014F5C();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = type metadata accessor for ActivityManagerEvent(0);
  if (*(a1 + *(result + 20)) <= 1u)
  {
    if (!*(a1 + *(result + 20)))
    {
      return result;
    }

    sub_22CF09E84(*(a1 + v95[9]), v77);
    v109 = v211;
    if ((*(v211 + 48))(v77, 1, v210) == 1)
    {
      v103 = &unk_27D9F2358;
      v104 = &unk_22D018980;
      v105 = v77;
      return sub_22CEEC3D8(v105, v103, v104);
    }

    v120 = v3;
    v121 = v204;
    (*(v109 + 32))();
    v122 = v196;
    sub_22D0145DC();
    v124 = v205;
    v123 = v206;
    v125 = (*(v206 + 11))(v122, v205);
    if (v125 == *MEMORY[0x277CB9218])
    {
      (*(v123 + 12))(v122, v124);
      v126 = *v122;
      v127 = *(v122 + 2);
      v128 = *(v122 + 3);
      v129 = v200;
      *v200 = v126;
      *(v129 + 2) = v127;
      v130 = MEMORY[0x277D4D558];
      v131 = 24;
    }

    else
    {
      if (v125 != *MEMORY[0x277CB9210])
      {
        if (v125 != *MEMORY[0x277CB9220])
        {
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v160 = sub_22D01637C();
          __swift_project_value_buffer(v160, qword_281444498);
          v161 = v210;
          v162 = v211;
          v163 = *(v211 + 16);
          v163(v92, v121, v210);
          v164 = sub_22D01636C();
          v165 = sub_22D0168EC();
          if (os_log_type_enabled(v164, v165))
          {
            v166 = swift_slowAlloc();
            v167 = swift_slowAlloc();
            v212 = v167;
            *v166 = 136380675;
            v163(v88, v92, v161);
            v168 = sub_22D01669C();
            v170 = v169;
            v171 = *(v162 + 8);
            v171(v92, v161);
            v172 = sub_22CEEE31C(v168, v170, &v212);

            *(v166 + 4) = v172;
            _os_log_impl(&dword_22CEE1000, v164, v165, "PushParticipant received unexpected push input: %{private}s", v166, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v167);
            MEMORY[0x2318C6860](v167, -1, -1);
            v173 = v166;
            v124 = v205;
            MEMORY[0x2318C6860](v173, -1, -1);

            v171(v204, v161);
          }

          else
          {

            v174 = *(v162 + 8);
            v174(v92, v161);
            v174(v121, v161);
          }

          return (*(v206 + 1))(v196, v124);
        }

        v130 = MEMORY[0x277D4D560];
        v129 = v200;
LABEL_20:
        v133 = v201;
        v134 = v208;
        (*(v201 + 104))(v129, *v130, v208);
        v135 = *a1;
        v205 = a1[1];
        v206 = v135;
        sub_22D0145BC();
        sub_22D0161EC();
        v136 = *(v133 + 16);
        v136(v207, v129, v134);
        v137 = v95[5];
        if ((sub_22D014CFC() & 1) == 0)
        {
          sub_22D014D1C();
        }

        (*(v202 + 16))(v197, v209, v203);
        v136(v63, v207, v208);
        v138 = v205;

        sub_22D015B2C();
        sub_22D015C1C();
        v139 = v193;
        v140 = v206;
        sub_22D015BEC();
        v141 = v120[10];
        __swift_project_boxed_opaque_existential_1(v120 + 6, v120[9]);
        v142 = v120;
        sub_22D015F6C();
        ObjectType = swift_getObjectType();
        v144 = v194;
        v145 = *(v194 + 32);
        swift_unknownObjectRetain();
        v145(v142, &off_28402B970, v140, v138, ObjectType, v144);
        swift_unknownObjectRelease();
        (*(v198 + 8))(v139, v199);
        v146 = *(v201 + 8);
        v147 = v208;
        v146(v207, v208);
        (*(v202 + 8))(v209, v203);
        v146(v200, v147);
        return (*(v211 + 8))(v204, v210);
      }

      (*(v123 + 12))(v122, v124);
      v132 = *v122;
      v128 = *(v122 + 1);
      v129 = v200;
      *v200 = v132;
      v130 = MEMORY[0x277D4D550];
      v131 = 8;
    }

    *(v129 + v131) = v128;
    goto LABEL_20;
  }

  if (*(a1 + *(result + 20)) != 3)
  {
    v106 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
    v107 = *a1;
    v108 = a1[1];
    return sub_22D015F0C();
  }

  v100 = a1;
  sub_22CF09E84(*(a1 + v95[9]), v74);
  v102 = v210;
  v101 = v211;
  if ((*(v211 + 48))(v74, 1, v210) == 1)
  {
    v103 = &unk_27D9F2358;
    v104 = &unk_22D018980;
    v105 = v74;
    return sub_22CEEC3D8(v105, v103, v104);
  }

  v110 = v3;
  (*(v101 + 32))(v84, v74, v102);
  sub_22D0145DC();
  v111 = v205;
  v112 = v206;
  if ((*(v206 + 11))(v56, v205) == *MEMORY[0x277CB9220])
  {
    v113 = v110[10];
    __swift_project_boxed_opaque_existential_1(v110 + 6, v110[9]);
    v114 = sub_22D015F2C();
    MEMORY[0x28223BE20](v114, v115);
    v116 = v191;
    sub_22CF11BC8(sub_22CF11BF4, v114, v191);

    v117 = v188;
    sub_22CEEB6DC(v116, v188, &qword_27D9F2700, &unk_22D01AEA0);
    v119 = v198;
    v118 = v199;
    if ((*(v198 + 48))(v117, 1, v199) == 1)
    {
      sub_22CEEC3D8(v116, &qword_27D9F2700, &unk_22D01AEA0);
      (*(v211 + 8))(v84, v102);
      v105 = v117;
      v103 = &qword_27D9F2700;
      v104 = &unk_22D01AEA0;
      return sub_22CEEC3D8(v105, v103, v104);
    }

    (*(v119 + 32))(v189, v117, v118);
    v148 = sub_22D015C3C();
    v208 = v149;
    v209 = v148;
    v150 = *v100;
    v206 = v100[1];
    v207 = v150;

    sub_22D015C5C();
    sub_22D0142DC();
    (*(v175 + 104))(v182, *MEMORY[0x277D4D5C0], v176);
    v151 = v211;
    v152 = v183;
    (*(v211 + 16))(v183, v84, v102);
    (*(v178 + 104))(v152, *MEMORY[0x277CB9320], v179);
    v153 = v95[14];
    v154 = sub_22D0146BC();
    v155 = *(v154 - 8);
    v156 = v100 + v153;
    v157 = v184;
    (*(v155 + 16))(v184, v156, v154);
    (*(v155 + 56))(v157, 0, 1, v154);
    (*(v186 + 104))(v185, *MEMORY[0x277D4D5D0], v187);
    v158 = v177;
    sub_22D015DBC();
    v159 = v110[15];
    __swift_project_boxed_opaque_existential_1(v110 + 11, v110[14]);
    sub_22D01601C();
    (*(v180 + 8))(v158, v181);
    (*(v198 + 8))(v189, v199);
    sub_22CEEC3D8(v191, &qword_27D9F2700, &unk_22D01AEA0);
    return (*(v151 + 8))(v84, v102);
  }

  else
  {
    (*(v101 + 8))(v84, v102);
    return (*(v112 + 1))(v56, v111);
  }
}

void sub_22CF185DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v90 = a2;
  v91 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v93 = &v90 - v7;
  v8 = type metadata accessor for ActivityManagerEvent(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = (&v90 - v16);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v90 - v20);
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v90 - v23);
  v25 = sub_22D01430C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Activity();
  v31 = *(v92 + 40);
  sub_22D0142DC();
  sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578]);
  LOBYTE(v31) = sub_22D01663C();
  (*(v26 + 8))(v30, v25);
  if (v31)
  {
    v32 = *(a1 + *(v8 + 20));
    switch(v32)
    {
      case 4:
        if (sub_22CF0B5E0() != 1)
        {
          return;
        }

        if (qword_28143FB38 != -1)
        {
          swift_once();
        }

        v57 = sub_22D01637C();
        __swift_project_value_buffer(v57, qword_281444450);
        sub_22CF0CCBC(a1, v17, type metadata accessor for ActivityManagerEvent);
        v58 = sub_22D01636C();
        v59 = sub_22D01690C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v95[0] = v61;
          *v60 = 136446210;
          v62 = *v17;
          v63 = v17[1];

          sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
          v64 = sub_22CEEE31C(v62, v63, v95);

          *(v60 + 4) = v64;
          _os_log_impl(&dword_22CEE1000, v58, v59, "Activity was discarded %{public}s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          MEMORY[0x2318C6860](v61, -1, -1);
          MEMORY[0x2318C6860](v60, -1, -1);
        }

        else
        {

          sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
        }

        v80 = v94;
        v81 = v94[2];
        v86 = *(v81 + 16);
        os_unfair_lock_lock(v86);
        v87 = *a1;
        v88 = a1[1];
        v89 = v93;
        (*(*(v92 - 8) + 56))(v93, 1, 1);
        swift_beginAccess();

        sub_22CF0BC5C(v89, v87, v88);
        swift_endAccess();
        v85 = v86;
        goto LABEL_32;
      case 2:
        if (qword_28143FB38 != -1)
        {
          swift_once();
        }

        v49 = sub_22D01637C();
        __swift_project_value_buffer(v49, qword_281444450);
        sub_22CF0CCBC(a1, v21, type metadata accessor for ActivityManagerEvent);
        v50 = sub_22D01636C();
        v51 = sub_22D01690C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v95[0] = v53;
          *v52 = 136446210;
          v54 = *v21;
          v55 = v21[1];

          sub_22CF0F640(v21, type metadata accessor for ActivityManagerEvent);
          v56 = sub_22CEEE31C(v54, v55, v95);

          *(v52 + 4) = v56;
          _os_log_impl(&dword_22CEE1000, v50, v51, "Activity became a zombie %{public}s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x2318C6860](v53, -1, -1);
          MEMORY[0x2318C6860](v52, -1, -1);
        }

        else
        {

          sub_22CF0F640(v21, type metadata accessor for ActivityManagerEvent);
        }

        v65 = v94;
        v66 = v94[2];
        v67 = *(v66 + 16);
        os_unfair_lock_lock(v67);
        v68 = *a1;
        v69 = a1[1];
        v70 = a1;
        v71 = v93;
        sub_22CF0CCBC(v70, v93, type metadata accessor for Activity);
        (*(*(v92 - 8) + 56))(v71, 0, 1);
        swift_beginAccess();

        sub_22CF0BC5C(v71, v68, v69);
        swift_endAccess();
        os_unfair_lock_unlock(v67);
        v72 = *(v66 + 16);
        os_unfair_lock_lock(v72);
        v73 = v65;
        goto LABEL_33;
      case 1:
        if (qword_28143FB38 != -1)
        {
          swift_once();
        }

        v33 = sub_22D01637C();
        __swift_project_value_buffer(v33, qword_281444450);
        sub_22CF0CCBC(a1, v24, type metadata accessor for ActivityManagerEvent);
        v34 = sub_22D01636C();
        v35 = sub_22D01690C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v95[0] = v37;
          *v36 = 136446210;
          v38 = *v24;
          v39 = v24[1];

          sub_22CF0F640(v24, type metadata accessor for ActivityManagerEvent);
          v40 = sub_22CEEE31C(v38, v39, v95);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_22CEE1000, v34, v35, "Activity did start %{public}s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          MEMORY[0x2318C6860](v37, -1, -1);
          MEMORY[0x2318C6860](v36, -1, -1);
        }

        else
        {

          sub_22CF0F640(v24, type metadata accessor for ActivityManagerEvent);
        }

        ObjectType = swift_getObjectType();
        v75 = *a1;
        v76 = a1[1];
        (*(v91 + 32))(v94, &off_28402BD60, *a1, v76, ObjectType);
        if (sub_22CF0B5E0() == 1)
        {
          v77 = sub_22D01636C();
          v78 = sub_22D01690C();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_22CEE1000, v77, v78, "Tracking zombie activity", v79, 2u);
            MEMORY[0x2318C6860](v79, -1, -1);
          }

          v80 = v94;
          v81 = v94[2];
          v82 = *(v81 + 16);
          os_unfair_lock_lock(v82);
          v83 = a1;
          v84 = v93;
          sub_22CF0CCBC(v83, v93, type metadata accessor for Activity);
          (*(*(v92 - 8) + 56))(v84, 0, 1);
          swift_beginAccess();

          sub_22CF0BC5C(v84, v75, v76);
          swift_endAccess();
          v85 = v82;
LABEL_32:
          os_unfair_lock_unlock(v85);
          v72 = *(v81 + 16);
          os_unfair_lock_lock(v72);
          v73 = v80;
LABEL_33:
          sub_22CFC1910(v73);
          os_unfair_lock_unlock(v72);
        }

        break;
    }
  }

  else
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v41 = sub_22D01637C();
    __swift_project_value_buffer(v41, qword_281444450);
    sub_22CF0CCBC(a1, v13, type metadata accessor for ActivityManagerEvent);
    v42 = sub_22D01636C();
    v43 = sub_22D01690C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v95[0] = v45;
      *v44 = 136446210;
      v46 = *v13;
      v47 = v13[1];

      sub_22CF0F640(v13, type metadata accessor for ActivityManagerEvent);
      v48 = sub_22CEEE31C(v46, v47, v95);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_22CEE1000, v42, v43, "Ignoring pending activity %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2318C6860](v45, -1, -1);
      MEMORY[0x2318C6860](v44, -1, -1);
    }

    else
    {

      sub_22CF0F640(v13, type metadata accessor for ActivityManagerEvent);
    }
  }
}

void sub_22CF19114(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for ActivityManagerEvent(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = (&v37 - v15);
  v17 = *(a1 + *(v14 + 28));
  if (v17 == 4)
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v28 = sub_22D01637C();
    __swift_project_value_buffer(v28, qword_281444450);
    sub_22CF1C1C8(a1, v12);
    v29 = sub_22D01636C();
    v30 = sub_22D01690C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136446210;
      v33 = *v12;
      v34 = v12[1];

      sub_22CF0D34C(v12);
      v35 = sub_22CEEE31C(v33, v34, &v38);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22CEE1000, v29, v30, "Ephemeral activity ended %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2318C6860](v32, -1, -1);
      MEMORY[0x2318C6860](v31, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v12);
    }

    v36 = *(*(v4 + 16) + 16);
    os_unfair_lock_lock(v36);
    sub_22CF3C408(v4, a1);
    goto LABEL_17;
  }

  if (v17 == 1)
  {
    ObjectType = swift_getObjectType();
    (*(a3 + 32))(v3, &off_28402A260, *a1, a1[1], ObjectType, a3);
    v19 = *(type metadata accessor for Activity() + 20);
    if (sub_22D014CFC() & 1) != 0 || (sub_22D014D1C())
    {
      if (qword_28143FB38 != -1)
      {
        swift_once();
      }

      v20 = sub_22D01637C();
      __swift_project_value_buffer(v20, qword_281444450);
      sub_22CF1C1C8(a1, v16);
      v21 = sub_22D01636C();
      v22 = sub_22D01690C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v38 = v24;
        *v23 = 136446210;
        v25 = *v16;
        v26 = v16[1];

        sub_22CF0D34C(v16);
        v27 = sub_22CEEE31C(v25, v26, &v38);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_22CEE1000, v21, v22, "Tracking ephemeral activity %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x2318C6860](v24, -1, -1);
        MEMORY[0x2318C6860](v23, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v16);
      }

      v36 = *(*(v4 + 16) + 16);
      os_unfair_lock_lock(v36);
      sub_22CF11390(v4, a1);
LABEL_17:
      os_unfair_lock_unlock(v36);
    }
  }
}

uint64_t sub_22CF19518(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  updated = type metadata accessor for PowerLog.UpdateEvent(0);
  v5 = *(*(updated - 1) + 64);
  MEMORY[0x28223BE20](updated, v6);
  v8 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v69[-v12];
  v14 = type metadata accessor for PowerLog.LifecycleEvent(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v69[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for ActivityManagerEvent(0);
  v20 = *(a1 + v19[6]);
  type metadata accessor for ReplicatorParticipant();
  v21 = swift_dynamicCastClass();
  v73 = type metadata accessor for Activity();
  v22 = *(a1 + v73[13] + 8);
  type metadata accessor for PushParticipant();
  result = swift_dynamicCastClass();
  if (*(a1 + v19[5]) <= 1u)
  {
    v41 = v72;
    if (!*(a1 + v19[5]))
    {
      return result;
    }

    v70 = v22 != 0;
    v42 = v21 != 0;
    ObjectType = swift_getObjectType();
    v44 = *a1;
    v45 = a1[1];
    v46 = v74;
    (*(v41 + 32))(v74, &off_28402EA98, *a1, v45, ObjectType, v41);
    sub_22D0142DC();
    v47 = a1 + v73[6];
    v48 = sub_22D014F9C();
    v50 = v49;

    v51 = sub_22CF1173C(a1);
    v52 = &v18[v14[5]];
    *v52 = v48;
    v52[1] = v50;
    v53 = &v18[v14[6]];
    *v53 = v44;
    v53[1] = v45;
    v18[v14[7]] = v42;
    v18[v14[8]] = 0;
    *&v18[v14[9]] = v51;
    v18[v14[10]] = v70;
    v54 = *(v46 + 40);
    v55 = (v46 + 16);
    goto LABEL_7;
  }

  if (*(a1 + v19[5]) - 2 >= 2)
  {
    v56 = v22 != 0;
    v57 = v21 != 0;
    sub_22D0142DC();
    v58 = a1 + v73[6];
    v59 = sub_22D014F9C();
    v61 = v60;
    v63 = *a1;
    v62 = a1[1];

    v64 = v74;
    v65 = sub_22CF1173C(a1);
    v66 = &v18[v14[5]];
    *v66 = v59;
    v66[1] = v61;
    v67 = &v18[v14[6]];
    *v67 = v63;
    v67[1] = v62;
    v18[v14[7]] = v57;
    v18[v14[8]] = 1;
    *&v18[v14[9]] = v65;
    v18[v14[10]] = v56;
    v54 = *(v64 + 40);
    v55 = (v64 + 16);
LABEL_7:
    v68 = *__swift_project_boxed_opaque_existential_1(v55, v54);
    sub_22CF1CBF4(v18);
    v39 = type metadata accessor for PowerLog.LifecycleEvent;
    v40 = v18;
    return sub_22CF1CF70(v40, v39);
  }

  LODWORD(v72) = v22 != 0;
  v24 = v21 != 0;
  LODWORD(v71) = result == 0;
  v25 = v73;
  v26 = a1 + v73[14];
  sub_22D01462C();
  v27 = sub_22D0150CC();
  v28 = (*(*(v27 - 8) + 48))(v13, 1, v27) != 1;
  sub_22CEEC3D8(v13, &qword_27D9F2308, &unk_22D018950);
  v29 = *(a1 + v19[8]);
  v30 = sub_22CF0B5E0();
  sub_22D0142DC();
  v31 = a1 + v25[6];
  v32 = sub_22D014F9C();
  v33 = *a1;
  v34 = a1[1];
  v35 = &v8[updated[5]];
  *v35 = v32;
  v35[1] = v36;
  v37 = &v8[updated[6]];
  *v37 = v33;
  v37[1] = v34;
  v8[updated[7]] = v24;
  v8[updated[8]] = v29;
  v8[updated[9]] = v28;
  v8[updated[10]] = v30;
  v8[updated[11]] = v72;
  v8[updated[12]] = v71;
  v38 = *__swift_project_boxed_opaque_existential_1((v74 + 16), *(v74 + 40));

  sub_22CF303E4(v8);
  v39 = type metadata accessor for PowerLog.UpdateEvent;
  v40 = v8;
  return sub_22CF1CF70(v40, v39);
}

uint64_t sub_22CF199C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF19A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_22D01430C();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = *(v1 + v4 + v2[7] + 8);

  v8 = *(v1 + v4 + v2[8] + 8);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 24) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF1A060(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 16))(v3, v2, &off_28402C298, ObjectType, v5);
}

uint64_t sub_22CF1A0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF1A11C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF1A164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF1A1AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF1A1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v165 = a3;
  v164 = a2;
  v4 = sub_22D01495C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v163 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for ActivityParticipantEvent(0);
  v8 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162, v9);
  v161 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Activity();
  v173 = *(v11 - 8);
  v12 = *(v173 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v169 = (&v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14, v16);
  v160 = (&v154 - v18);
  MEMORY[0x28223BE20](v17, v19);
  v177 = (&v154 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v170 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v171 = &v154 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v154 - v30;
  v32 = type metadata accessor for ActivityManagerEvent(0);
  v33 = *(*(v32 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v155 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v154 - v38;
  v182 = sub_22D01502C();
  v40 = *(v182 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v182, v42);
  v44 = &v154 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22D01483C();
  v168 = *(v45 - 8);
  v46 = *(v168 + 64);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v176 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v48, v50);
  v53 = &v154 - v52;
  v178 = v11;
  v54 = *(a1 + *(v11 + 36));
  v55 = *(v54 + 16);
  v172 = v31;
  v175 = v39;
  v183 = result;
  if (v55)
  {
    v167 = v32;
    v174 = a1;
    LODWORD(v187) = 0;
    v56 = *(v168 + 16);
    v57 = v54 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    v185 = *(v168 + 72);
    v186 = v56;
    v58 = (v168 + 88);
    LODWORD(v184) = *MEMORY[0x277CB9348];
    v180 = (v168 + 96);
    v181 = (v168 + 8);
    v59 = (v40 + 32);
    v60 = (v40 + 8);
    v56(v53, v57, v45);
    while (1)
    {
      v64 = (*v58)(v53, v45);
      if (v64 == v184)
      {
        (*v180)(v53, v45);
        v61 = v182;
        (*v59)(v44, v53, v182);
        v62 = sub_22D014F6C();
        v63 = v61;
        v45 = v183;
        result = (*v60)(v44, v63);
        LODWORD(v187) = v62 | v187;
      }

      else
      {
        result = (*v181)(v53, v45);
      }

      v57 += v185;
      if (!--v55)
      {
        break;
      }

      v186(v53, v57, v45);
    }

    v31 = v172;
    a1 = v174;
    v39 = v175;
    v32 = v167;
    if (v187)
    {
      return result;
    }
  }

  if (*(a1 + *(v32 + 20)) > 1u)
  {
    return result;
  }

  v65 = v179;
  v66 = v179[7];
  v67 = v179[8];
  v68 = __swift_project_boxed_opaque_existential_1(v179 + 4, v66);
  v69 = *(v66 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68, v68);
  v72 = &v154 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v69 + 16))(v72);
  v73 = (*(v67 + 8))(v66, v67);
  v74 = (*(v69 + 8))(v72, v66);
  MEMORY[0x28223BE20](v74, v75);
  *(&v154 - 2) = a1;
  v76 = sub_22CEE9F88(sub_22CF1CAF8, (&v154 - 4), v73);

  v77 = v76[2];
  v181 = v65[10];
  if (v181 >= v77)
  {
  }

  v174 = a1;
  if (qword_28143FB58 != -1)
  {
LABEL_50:
    swift_once();
  }

  v180 = sub_22D01637C();
  v167 = (v173 + 48);
  v166 = (v173 + 56);
  v186 = (v168 + 16);
  v159 = v165 + 24;
  v158 = (v168 + 8);
  *&v78 = 136380675;
  v157 = v78;
  *&v78 = 136446210;
  v156 = v78;
  v79 = v177;
  while (1)
  {
    v92 = __swift_project_value_buffer(v180, qword_281444498);
    sub_22CF0CC54(v174, v39, type metadata accessor for ActivityManagerEvent);
    v187 = v92;
    v93 = sub_22D01636C();
    v94 = sub_22D01690C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v76;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v188[0] = v97;
      *v96 = v157;
      v98 = *(v178 + 24);
      sub_22CEFF220(&qword_281443988, MEMORY[0x277CB9810]);
      v99 = sub_22D016DEC();
      v100 = v39;
      v39 = v101;
      sub_22CF0F640(v100, type metadata accessor for ActivityManagerEvent);
      v102 = sub_22CEEE31C(v99, v39, v188);

      *(v96 + 4) = v102;
      _os_log_impl(&dword_22CEE1000, v93, v94, "Requester has too many activities: %{private}s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      MEMORY[0x2318C6860](v97, -1, -1);
      v103 = v96;
      v76 = v95;
      MEMORY[0x2318C6860](v103, -1, -1);

      v104 = v95[2];
      if (!v104)
      {
        goto LABEL_26;
      }
    }

    else
    {

      sub_22CF0F640(v39, type metadata accessor for ActivityManagerEvent);
      v104 = v76[2];
      if (!v104)
      {
LABEL_26:
        v107 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23F0, &unk_22D0196D0);
    v105 = *(v173 + 72);
    v106 = (*(v173 + 80) + 32) & ~*(v173 + 80);
    v107 = swift_allocObject();
    v108 = _swift_stdlib_malloc_size(v107);
    if (!v105)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v108 - v106 == 0x8000000000000000 && v105 == -1)
    {
      goto LABEL_49;
    }

    v107[2] = v104;
    v107[3] = 2 * ((v108 - v106) / v105);
    v110 = sub_22CF7B31C(v188, v107 + v106, v104, v76);
    v39 = v188[1];
    v111 = v76;
    v76 = v188[2];
    v31 = v188[4];
    v112 = v111;

    sub_22CEE57FC();
    if (v110 != v104)
    {
      goto LABEL_48;
    }

    v31 = v172;
    v79 = v177;
    v76 = v112;
LABEL_27:
    v113 = v178;
    sub_22CFA87F0(v107, v31);

    v114 = v171;
    sub_22CEEB6DC(v31, v171, &qword_27D9F3810, &unk_22D018FA0);
    if ((*v167)(v114, 1, v113) == 1)
    {
      break;
    }

    sub_22CFA8FC0(v114, v79);
    v116 = *v79;
    v115 = v79[1];
    v117 = sub_22CEEC698(*v79, v115);
    if (v118)
    {
      v119 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v188[0] = v76;
      v121 = v170;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CFB6320();
        v121 = v170;
        v76 = v188[0];
      }

      v122 = *(v76[6] + 16 * v119 + 8);

      sub_22CFA8FC0(v76[7] + *(v173 + 72) * v119, v121);
      sub_22CFBCCB8(v119, v76);
      v123 = 0;
    }

    else
    {
      v123 = 1;
      v121 = v170;
    }

    (*v166)(v121, v123, 1, v113);
    sub_22CEEC3D8(v121, &qword_27D9F3810, &unk_22D018FA0);
    v124 = *(v79 + *(v113 + 36));
    v125 = v169;
    if (*(v124 + 16))
    {
      v184 = v116;
      v185 = v76;
      v126 = *(v168 + 16);
      v126(v176, v124 + ((*(v168 + 80) + 32) & ~*(v168 + 80)), v183);
      sub_22CF0CC54(v79, v125, type metadata accessor for Activity);
      v127 = sub_22D01636C();
      v128 = sub_22D01690C();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v188[0] = v130;
        *v129 = v156;
        v131 = *v125;
        v132 = v125[1];

        sub_22CF0F640(v125, type metadata accessor for Activity);
        v133 = sub_22CEEE31C(v131, v132, v188);
        v80 = v172;

        *(v129 + 4) = v133;
        _os_log_impl(&dword_22CEE1000, v127, v128, "Ending zombie session: %{public}s", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v130);
        MEMORY[0x2318C6860](v130, -1, -1);
        MEMORY[0x2318C6860](v129, -1, -1);

        v39 = v175;
      }

      else
      {

        sub_22CF0F640(v125, type metadata accessor for Activity);
        v39 = v175;
        v80 = v31;
      }

      v81 = v162;
      v82 = *(v162 + 24);

      sub_22D01494C();
      v83 = v161;
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v84 = v176;
      v85 = v183;
      v126(&v83[v81[7]], v176, v183);
      v86 = v81[9];
      v87 = sub_22D0146BC();
      (*(*(v87 - 8) + 56))(&v83[v86], 1, 1, v87);
      *v83 = v184;
      *(v83 + 1) = v115;
      *(v83 + 2) = 0;
      *(v83 + 3) = 0;
      v88 = &v83[v81[8]];
      *v88 = v179;
      *(v88 + 1) = &off_28402B568;
      v83[v81[10]] = 0;
      ObjectType = swift_getObjectType();
      v90 = v165;
      v91 = *(v165 + 24);

      v91(v83, ObjectType, v90);
      sub_22CF0F640(v83, type metadata accessor for ActivityParticipantEvent);
      (*v158)(v84, v85);
      sub_22CEEC3D8(v80, &qword_27D9F3810, &unk_22D018FA0);
      v79 = v177;
      v31 = v80;
      v76 = v185;
    }

    else
    {
      v134 = v160;
      sub_22CF0CC54(v79, v160, type metadata accessor for Activity);
      v135 = sub_22D01636C();
      v136 = sub_22D0168EC();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v188[0] = v138;
        *v137 = v156;
        v139 = *v134;
        v140 = v134[1];

        sub_22CF0F640(v134, type metadata accessor for Activity);
        v141 = sub_22CEEE31C(v139, v140, v188);

        *(v137 + 4) = v141;
        _os_log_impl(&dword_22CEE1000, v135, v136, "No sources exist for zombie activity: %{public}s", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        v142 = v138;
        v79 = v177;
        MEMORY[0x2318C6860](v142, -1, -1);
        MEMORY[0x2318C6860](v137, -1, -1);
      }

      else
      {

        sub_22CF0F640(v134, type metadata accessor for Activity);
      }

      sub_22CEEC3D8(v31, &qword_27D9F3810, &unk_22D018FA0);
      v39 = v175;
    }

    sub_22CF0F640(v79, type metadata accessor for Activity);
    if (v181 >= v76[2])
    {
    }
  }

  sub_22CEEC3D8(v114, &qword_27D9F3810, &unk_22D018FA0);
  v143 = v155;
  sub_22CF0CC54(v174, v155, type metadata accessor for ActivityManagerEvent);
  v144 = sub_22D01636C();
  v145 = sub_22D0168FC();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = v113;
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v188[0] = v148;
    *v147 = v157;
    v149 = *(v146 + 24);
    sub_22CEFF220(&qword_281443988, MEMORY[0x277CB9810]);
    v150 = sub_22D016DEC();
    v152 = v151;
    sub_22CF0F640(v143, type metadata accessor for ActivityManagerEvent);
    v153 = sub_22CEEE31C(v150, v152, v188);

    *(v147 + 4) = v153;
    _os_log_impl(&dword_22CEE1000, v144, v145, "Requester has too many active sessions: %{private}s", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    MEMORY[0x2318C6860](v148, -1, -1);
    MEMORY[0x2318C6860](v147, -1, -1);
  }

  else
  {

    sub_22CF0F640(v143, type metadata accessor for ActivityManagerEvent);
  }

  sub_22CEEC3D8(v31, &qword_27D9F3810, &unk_22D018FA0);
}

uint64_t sub_22CF1B3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3278, &unk_22D01B2C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF1B440()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22CF1B48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22D01430C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22CF1B538()
{
  v0 = sub_22D01502C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v3 = sub_22D014F9C();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v7 = sub_22CEE8CD0(v3, v5, 1);
  v8 = [v7 localizedName];

  v9 = sub_22D01667C();
  return v9;
}

void sub_22CF1B858()
{
  v1 = *(type metadata accessor for ActivityManagerEvent(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_22CF1F444(v2);
}

void *sub_22CF1B8BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_22CF1BA14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22CF1BAAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for ActivityManagerEvent(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v40[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v40[-1] - v16;
  LODWORD(v16) = *(a1 + *(v8 + 28));
  v18 = v16 >= 2;
  v19 = v16 - 2;
  if (!v18)
  {
    sub_22CEE3A84(v4 + 32, v40);
    v32 = v41;
    v33 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v33 + 24))(a1, v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    ObjectType = swift_getObjectType();
    (*(a3 + 32))(v4, &off_28402E5A0, *a1, a1[1], ObjectType, a3);
    return;
  }

  if (v19 >= 2)
  {
    sub_22CEE3A84(v4 + 32, v40);
    v37 = v41;
    v38 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v38 + 32))(*a1, a1[1], v37, v38);
    goto LABEL_11;
  }

  sub_22CEE3A84(v4 + 32, v40);
  v20 = v41;
  v21 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v21 + 16))(*a1, a1[1], v20, v21);
  v22 = type metadata accessor for Activity();
  v23 = (*(*(v22 - 8) + 48))(v17, 1, v22);
  sub_22CEEC3D8(v17, &qword_27D9F3810, &unk_22D018FA0);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  if (v23 != 1)
  {
    sub_22CEE3A84(v4 + 32, v40);
    v35 = v41;
    v36 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v36 + 24))(a1, v35, v36);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return;
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v24 = sub_22D01637C();
  __swift_project_value_buffer(v24, qword_281444498);
  sub_22CF0CCBC(a1, v12, type metadata accessor for ActivityManagerEvent);
  v25 = sub_22D01636C();
  v26 = sub_22D0168EC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136446210;
    v29 = *v12;
    v30 = v12[1];

    sub_22CF0F640(v12, type metadata accessor for ActivityManagerEvent);
    v31 = sub_22CEEE31C(v29, v30, v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22CEE1000, v25, v26, "PersistentParticipant received update for non-existent activity: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x2318C6860](v28, -1, -1);
    MEMORY[0x2318C6860](v27, -1, -1);
  }

  else
  {

    sub_22CF0F640(v12, type metadata accessor for ActivityManagerEvent);
  }
}

uint64_t sub_22CF1BF00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22CEEC698(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_22CFBBDE0(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_22CEEC698(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_22CFB856C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_22CF1C0A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = *a2;
  v9 = a2[1];
  sub_22CF0CB84(a2, &v12 - v6, type metadata accessor for Activity);
  v10 = type metadata accessor for Activity();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  swift_beginAccess();

  sub_22CF0BC5C(v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_22CF1C1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityManagerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF1C22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF1C294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_22CF1C2FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_22CF1C384(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3818, &qword_22D01BD00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v40 - v8;
  (*(v5 + 16))(&v40 - v8, &v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__target], v4);
  sub_22D01567C();
  (*(v5 + 8))(v9, v4);
  v10 = v47;
  if (v47)
  {
    v46 = sub_22CF0D704(a1);
    sub_22D01566C();
    v11 = sub_22D01563C();
    v12 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processManager], *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processManager + 24]);
    v13 = *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier];
    v40 = *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8];
    v41 = v13;
    LODWORD(v43) = *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_pid];
    v44 = "Delivering activity changes";
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = v10;
    v14[5] = v11;
    v15 = *v12;
    v17 = v15[5];
    v16 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v17);
    v42 = *(v16 + 40);
    v45 = v11;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v18 = v2;
    swift_unknownObjectRetain_n();
    v19 = v18;
    v20 = v42(v43, v17, v16);
    if (v20)
    {
      v21 = v20;
      v22 = v19;

      swift_unknownObjectRetain();
      v23 = v45;

      sub_22CF0DC2C(v21, 0xD000000000000018, v44 | 0x8000000000000000, v46, v15, v22, a1, v10, 30.0, v23);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();
LABEL_11:

      return;
    }

    v43 = v14;
    v28 = v45;
    v30 = v15[5];
    v29 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v30);
    v32 = v40;
    v31 = v41;
    v33 = (*(v29 + 32))(v41, v40, v30, v29);
    if (v33)
    {
      v34 = v33;
      v35 = v19;

      swift_unknownObjectRetain();

      sub_22CF0DC2C(v34, 0xD000000000000018, v44 | 0x8000000000000000, v46, v15, v35, a1, v10, 30.0, v28);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();
      goto LABEL_11;
    }

    v37 = v43;
    v36 = v44;
    if (v46 == 2)
    {

      sub_22CF7D8CC(v31, v32, v15, v15, 0xD000000000000018, v36 | 0x8000000000000000, 2, sub_22CFD9270, 30.0, v37);

      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();

      goto LABEL_11;
    }

    sub_22CEEEBB4();
    v38 = swift_allocError();
    *v39 = 2;
    sub_22CF2F0BC(v38, v19, a1, v10, v28);

    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v24 = sub_22D01637C();
    __swift_project_value_buffer(v24, qword_2814444B0);
    v25 = sub_22D01636C();
    v26 = sub_22D0168EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22CEE1000, v25, v26, "Cannot send changes to bad remote target", v27, 2u);
      MEMORY[0x2318C6860](v27, -1, -1);
    }
  }
}

uint64_t sub_22CF1C920()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF1C978(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22CF21580(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22CF60134();
      goto LABEL_16;
    }

    sub_22CF78BEC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  result = sub_22D016ECC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22D016DFC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22D016E0C();
  __break(1u);
  return result;
}

uint64_t sub_22CF1CB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF1CB78(uint64_t a1, void *a2)
{
  v3 = sub_22D015C2C();
  if (v4)
  {
    if (v3 == *a2 && v4 == a2[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_22D016DFC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22CF1CBF4(uint64_t a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D01653C();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PowerLog.LifecycleEvent(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v22[1] = *(v1 + 16);
  sub_22CF199C0(a1, v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PowerLog.LifecycleEvent);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  sub_22CF19A28(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PowerLog.LifecycleEvent);
  aBlock[4] = sub_22CF11C18;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_9_0;
  v20 = _Block_copy(aBlock);
  sub_22D0164EC();
  v24 = MEMORY[0x277D84F90];
  sub_22CF1A11C(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v13, v8, v20);
  _Block_release(v20);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v23);
}

uint64_t sub_22CF1CF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22CF1CFD0()
{
  v0 = sub_22D01666C();
  sub_22CF1D078();
  v1 = sub_22D0165CC();

  PLLogRegisteredEvent();
}

unint64_t sub_22CF1D078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D019D40;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  v2 = sub_22D01426C();
  v3 = sub_22CEE82F8(0, &qword_28143D900, 0x277CBEAA8);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  v4 = type metadata accessor for PowerLog.LifecycleEvent(0);
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_22D01666C();
  v9 = sub_22CEE82F8(0, &qword_28143D8F0, 0x277CCACA8);
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x800000022D01E850;
  v10 = (v0 + v4[6]);
  v11 = *v10;
  v12 = v10[1];
  *(inited + 144) = sub_22D01666C();
  *(inited + 168) = v9;
  *(inited + 176) = 0x656372756F73;
  *(inited + 184) = 0xE600000000000000;
  v13 = MEMORY[0x277D83B88];
  *(inited + 192) = *(v0 + v4[7]);
  *(inited + 216) = v13;
  *(inited + 224) = 0x707954746E657665;
  *(inited + 232) = 0xE900000000000065;
  v14 = 1;
  if (*(v0 + v4[8]))
  {
    v14 = 2;
  }

  *(inited + 240) = v14;
  *(inited + 264) = v13;
  strcpy((inited + 272), "updateBudget");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v15 = *(v0 + v4[9]);
  *(inited + 312) = v13;
  *(inited + 288) = v15;
  v16 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  swift_arrayDestroy();
  return v16;
}

_OWORD *sub_22CF1D288(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_22CF1D2A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v127 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v128 = v123 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v123 - v15;
  v17 = sub_22D01461C();
  v125 = *(v17 - 8);
  v126 = v17;
  v18 = *(v125 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v123 - v24;
  v26 = type metadata accessor for ActivityManagerEvent(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v31 = (v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = (v123 - v34);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = (v123 - v38);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = MEMORY[0x28223BE20](v41, v42);
  v46 = (v123 - v45);
  v47 = *(v43 + 28);
  v130 = a1;
  v48 = *(a1 + v47);
  if (v48 > 1)
  {
    if (v48 != 3)
    {
      v62 = v130;
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v63 = sub_22D01637C();
      __swift_project_value_buffer(v63, qword_281444320);
      sub_22CF0CCBC(v62, v31, type metadata accessor for ActivityManagerEvent);
      v64 = sub_22D01636C();
      v65 = sub_22D01690C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v131[0] = v67;
        *v66 = 136446210;
        v68 = *v31;
        v69 = v31[1];

        sub_22CF0F640(v31, type metadata accessor for ActivityManagerEvent);
        v70 = sub_22CEEE31C(v68, v69, v131);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_22CEE1000, v64, v65, "Activity is no longer relevant %{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x2318C6860](v67, -1, -1);
        MEMORY[0x2318C6860](v66, -1, -1);
      }

      else
      {

        sub_22CF0F640(v31, type metadata accessor for ActivityManagerEvent);
      }

      v80 = v129;
      v81 = *(v129 + 16);
      v82 = *(v81 + 16);
      os_unfair_lock_lock(v82);
      v83 = *v62;
      v84 = v62[1];
      v85 = type metadata accessor for Activity();
      v86 = v128;
      (*(*(v85 - 8) + 56))(v128, 1, 1, v85);
      swift_beginAccess();

      sub_22CF0BC5C(v86, v83, v84);
      swift_endAccess();
      os_unfair_lock_unlock(v82);
      v87 = *(v81 + 16);
      os_unfair_lock_lock(v87);
      v88 = v80;
      goto LABEL_37;
    }

    v49 = type metadata accessor for Activity();
    v50 = v130;
    v51 = v130 + *(v49 + 56);
    sub_22D01467C();
    sub_22D01460C();
    (*(v125 + 8))(v22, v126);
    v52 = sub_22D01430C();
    LODWORD(v51) = (*(*(v52 - 8) + 48))(v13, 1, v52);
    sub_22CEEC3D8(v13, &qword_27D9F2648, &unk_22D018BC0);
    if (v51 == 1)
    {
      v53 = v129;
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v54 = sub_22D01637C();
      __swift_project_value_buffer(v54, qword_281444320);
      sub_22CF0CCBC(v50, v35, type metadata accessor for ActivityManagerEvent);
      v55 = sub_22D01636C();
      v56 = sub_22D01690C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v131[0] = v58;
        *v57 = 136446210;
        v59 = *v35;
        v60 = v35[1];

        sub_22CF0F640(v35, type metadata accessor for ActivityManagerEvent);
        v61 = sub_22CEEE31C(v59, v60, v131);

        *(v57 + 4) = v61;
        _os_log_impl(&dword_22CEE1000, v55, v56, "Stopping activity tracking %{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x2318C6860](v58, -1, -1);
        MEMORY[0x2318C6860](v57, -1, -1);
      }

      else
      {

        sub_22CF0F640(v35, type metadata accessor for ActivityManagerEvent);
      }

      v97 = v53[2];
      v98 = *(v97 + 16);
      os_unfair_lock_lock(v98);
      v99 = *v50;
      v100 = v50[1];
      v101 = v128;
      (*(*(v49 - 8) + 56))(v128, 1, 1, v49);
    }

    else
    {
      v53 = v129;
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v89 = sub_22D01637C();
      __swift_project_value_buffer(v89, qword_281444320);
      sub_22CF0CCBC(v50, v39, type metadata accessor for ActivityManagerEvent);
      v90 = sub_22D01636C();
      v91 = sub_22D01690C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v131[0] = v93;
        *v92 = 136446210;
        v94 = *v39;
        v95 = v39[1];

        sub_22CF0F640(v39, type metadata accessor for ActivityManagerEvent);
        v96 = sub_22CEEE31C(v94, v95, v131);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_22CEE1000, v90, v91, "Tracking activity %{public}s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x2318C6860](v93, -1, -1);
        MEMORY[0x2318C6860](v92, -1, -1);
      }

      else
      {

        sub_22CF0F640(v39, type metadata accessor for ActivityManagerEvent);
      }

      v97 = v53[2];
      v98 = *(v97 + 16);
      os_unfair_lock_lock(v98);
      v99 = *v50;
      v100 = v50[1];
      v101 = v128;
      sub_22CF0CCBC(v50, v128, type metadata accessor for Activity);
      (*(*(v49 - 8) + 56))(v101, 0, 1, v49);
    }

    swift_beginAccess();

    sub_22CF0BC5C(v101, v99, v100);
    swift_endAccess();
    os_unfair_lock_unlock(v98);
    v87 = *(v97 + 16);
LABEL_36:
    os_unfair_lock_lock(v87);
    v88 = v53;
LABEL_37:
    sub_22CF11D74(v88);
    os_unfair_lock_unlock(v87);
    return;
  }

  v71 = v127;
  v124 = v44;
  if (v48 && sub_22CF0B5E0() != 1)
  {
    if (qword_28143DAB0 != -1)
    {
      swift_once();
    }

    v72 = sub_22D01637C();
    v73 = __swift_project_value_buffer(v72, qword_281444320);
    sub_22CF0CCBC(v130, v46, type metadata accessor for ActivityManagerEvent);
    v123[1] = v73;
    v74 = sub_22D01636C();
    v75 = sub_22D01690C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v131[0] = v77;
      *v76 = 136446210;
      v78 = v46[1];
      v123[0] = *v46;

      sub_22CF0F640(v46, type metadata accessor for ActivityManagerEvent);
      v79 = sub_22CEEE31C(v123[0], v78, v131);

      *(v76 + 4) = v79;
      _os_log_impl(&dword_22CEE1000, v74, v75, "Subscribing to activity %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x2318C6860](v77, -1, -1);
      MEMORY[0x2318C6860](v76, -1, -1);
    }

    else
    {

      sub_22CF0F640(v46, type metadata accessor for ActivityManagerEvent);
    }

    v53 = v129;
    v102 = v16;
    v103 = v25;
    ObjectType = swift_getObjectType();
    v105 = v130;
    v106 = *v130;
    v107 = v130[1];
    (*(v71 + 32))(v53, &off_28402D270, *v130, v107, ObjectType, v71);
    v108 = type metadata accessor for Activity();
    v109 = v105 + *(v108 + 56);
    sub_22D01467C();
    sub_22D01460C();
    (*(v125 + 8))(v103, v126);
    v110 = sub_22D01430C();
    v111 = (*(*(v110 - 8) + 48))(v102, 1, v110);
    sub_22CEEC3D8(v102, &qword_27D9F2648, &unk_22D018BC0);
    if (v111 != 1)
    {
      v112 = v124;
      sub_22CF0CCBC(v105, v124, type metadata accessor for ActivityManagerEvent);
      v113 = sub_22D01636C();
      v114 = sub_22D01690C();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v131[0] = v116;
        *v115 = 136446210;
        v129 = v106;
        v117 = v107;
        v118 = *v112;
        v119 = v112[1];

        sub_22CF0F640(v112, type metadata accessor for ActivityManagerEvent);
        v120 = sub_22CEEE31C(v118, v119, v131);
        v107 = v117;
        v105 = v130;

        *(v115 + 4) = v120;
        v106 = v129;
        _os_log_impl(&dword_22CEE1000, v113, v114, "Tracking activity %{public}s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        MEMORY[0x2318C6860](v116, -1, -1);
        MEMORY[0x2318C6860](v115, -1, -1);
      }

      else
      {

        sub_22CF0F640(v112, type metadata accessor for ActivityManagerEvent);
      }

      v121 = *(v53[2] + 16);
      os_unfair_lock_lock(v121);
      v122 = v128;
      sub_22CF0CCBC(v105, v128, type metadata accessor for Activity);
      (*(*(v108 - 8) + 56))(v122, 0, 1, v108);
      swift_beginAccess();

      sub_22CF0BC5C(v122, v106, v107);
      swift_endAccess();
      os_unfair_lock_unlock(v121);
    }

    v87 = *(v53[2] + 16);
    goto LABEL_36;
  }
}

void sub_22CF1E084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v59 - v10;
  v12 = type metadata accessor for ActivityManagerEvent(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v59 - v20);
  if (*(a1 + *(v19 + 28)) - 2 < 2)
  {
    if (sub_22CF0B5E0() == 3)
    {
      if (qword_28143DA88 != -1)
      {
        swift_once();
      }

      v22 = sub_22D01637C();
      __swift_project_value_buffer(v22, qword_2814442D8);
      sub_22CF0CCBC(a1, v17, type metadata accessor for ActivityManagerEvent);
      v23 = sub_22D01636C();
      v24 = sub_22D01690C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v62[0] = v26;
        *v25 = 136446210;
        v27 = *v17;
        v28 = v17[1];

        sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
        v29 = sub_22CEEE31C(v27, v28, v62);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_22CEE1000, v23, v24, "Delayed activity was updated %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x2318C6860](v26, -1, -1);
        MEMORY[0x2318C6860](v25, -1, -1);
      }

      else
      {

        sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
      }

      v47 = v4[2];
      v48 = *(v47 + 16);
      v39 = (v47 + 16);
      v38 = v48;
      os_unfair_lock_lock(v48);
      v49 = *a1;
      v50 = a1[1];
      sub_22CF0CCBC(a1, v11, type metadata accessor for Activity);
      v51 = type metadata accessor for Activity();
      (*(*(v51 - 8) + 56))(v11, 0, 1, v51);
      swift_beginAccess();

      v44 = v11;
      v45 = v49;
      v46 = v50;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (*(a1 + *(v19 + 28)))
  {
LABEL_13:
    v37 = v3[2];
    v40 = *(v37 + 16);
    v39 = (v37 + 16);
    v38 = v40;
    os_unfair_lock_lock(v40);
    v42 = *a1;
    v41 = a1[1];
    v43 = type metadata accessor for Activity();
    (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
    swift_beginAccess();

    v44 = v11;
    v45 = v42;
    v46 = v41;
    goto LABEL_18;
  }

  if (sub_22CF0B5E0() != 3)
  {
    return;
  }

  if (qword_28143DA88 != -1)
  {
    swift_once();
  }

  v30 = sub_22D01637C();
  __swift_project_value_buffer(v30, qword_2814442D8);
  sub_22CF0CCBC(a1, v21, type metadata accessor for ActivityManagerEvent);
  v31 = sub_22D01636C();
  v32 = sub_22D01690C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62[0] = v61;
    *v33 = 136446210;
    v34 = v21[1];
    v60 = *v21;

    sub_22CF0F640(v21, type metadata accessor for ActivityManagerEvent);
    v35 = sub_22CEEE31C(v60, v34, v62);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_22CEE1000, v31, v32, "Delayed activity did appear %{public}s", v33, 0xCu);
    v36 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x2318C6860](v36, -1, -1);
    MEMORY[0x2318C6860](v33, -1, -1);
  }

  else
  {

    sub_22CF0F640(v21, type metadata accessor for ActivityManagerEvent);
  }

  ObjectType = swift_getObjectType();
  v53 = *a1;
  v54 = a1[1];
  (*(a3 + 32))(v4, &off_28402EC70, *a1, v54, ObjectType, a3);
  v55 = v4[2];
  v56 = *(v55 + 16);
  v39 = (v55 + 16);
  v38 = v56;
  os_unfair_lock_lock(v56);
  sub_22CF0CCBC(a1, v11, type metadata accessor for Activity);
  v57 = type metadata accessor for Activity();
  (*(*(v57 - 8) + 56))(v11, 0, 1, v57);
  swift_beginAccess();

  v44 = v11;
  v45 = v53;
  v46 = v54;
LABEL_18:
  sub_22CF0BC5C(v44, v45, v46);
  swift_endAccess();
  os_unfair_lock_unlock(v38);
  v58 = *v39;
  os_unfair_lock_lock(*v39);
  sub_22CF1E8A0(v4);
  os_unfair_lock_unlock(v58);
}

uint64_t sub_22CF1E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22CEEC698(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CF28A08(type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Activity();
    v22 = *(v15 - 8);
    sub_22CEF0B08(v14 + *(v22 + 72) * v9, a3, type metadata accessor for Activity);
    sub_22CF28D18(v9, v12, type metadata accessor for Activity);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Activity();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22CF1E8A0(void *a1)
{
  v2 = sub_22D01559C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0155CC();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01430C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 9), &v39, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v40 + 1))
  {
    sub_22CEE3A84(&v39, v38);
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v39, (a1 + 9));
  swift_endAccess();
  sub_22CF15224(v21);
  sub_22D01423C();
  v22 = sub_22D01428C();
  v23 = *(v13 + 8);
  v23(v18, v12);
  if (v22)
  {
    (*(v13 + 16))(v18, v21, v12);
    (*(v34 + 104))(v6, *MEMORY[0x277D4D508], v35);
    sub_22D01558C();
    v24 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v36 + 8))(v11, v37);
    v23(v21, v12);

    sub_22CEF44D4(&v39, v38);
    swift_beginAccess();
    sub_22CF1B3B4(v38, (a1 + 9));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143DA88 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_2814442D8);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v12;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "No more delayed activities awaiting start", v30, 2u);
      MEMORY[0x2318C6860](v30, -1, -1);

      v31 = v21;
      v32 = v29;
    }

    else
    {

      v31 = v21;
      v32 = v12;
    }

    return (v23)(v31, v32);
  }
}

uint64_t sub_22CF1EDB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF1EDF0(uint64_t a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D01653C();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityManagerEvent(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v22[1] = *(v1 + 16);
  sub_22CF0CBEC(a1, v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityManagerEvent);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  sub_22CF0FFD8(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ActivityManagerEvent);
  aBlock[4] = sub_22CF1B858;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_13;
  v20 = _Block_copy(aBlock);

  sub_22D0164EC();
  v24 = MEMORY[0x277D84F90];
  sub_22CF1A164(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v13, v8, v20);
  _Block_release(v20);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v23);
}

uint64_t sub_22CF1F180()
{
  v1 = type metadata accessor for ActivityManagerEvent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v28 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = type metadata accessor for Activity();
  v8 = v7[5];
  v9 = sub_22D014E2C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v7[6];
  v11 = sub_22D01502C();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v7[7]);

  v13 = *(v0 + v3 + v7[8]);

  v14 = *(v0 + v3 + v7[9]);

  v15 = v7[10];
  v16 = sub_22D01430C();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v3 + v15, v16);
  v17(v0 + v3 + v7[11], v16);
  v18 = *(v0 + v3 + v7[13] + 8);

  v19 = v7[14];
  v20 = sub_22D0146BC();
  (*(*(v20 - 8) + 8))(v0 + v3 + v19, v20);
  v21 = v7[15];
  v22 = sub_22D01486C();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  v24 = *(v5 + v7[16] + 8);

  v25 = *(v5 + *(v1 + 24));
  swift_unknownObjectRelease();
  v26 = *(v5 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v28, v2 | 7);
}

void sub_22CF1F444(uint64_t a1)
{
  v263 = a1;
  v2 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v240 = *(v2 - 8);
  v3 = *(v240 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v243 = v239 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_22D01436C();
  v256 = *(v242 - 8);
  v6 = *(v256 + 64);
  MEMORY[0x28223BE20](v242, v7);
  v241 = v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for ActivityManagerEvent(0);
  v9 = *(*(v258 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v258, v10);
  v13 = (v239 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v11, v14);
  v261 = v239 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v260 = (v239 - v19);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v257 = (v239 - v22);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v253 = (v239 - v25);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v252 = (v239 - v28);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v251 = (v239 - v31);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v250 = (v239 - v34);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v249 = (v239 - v37);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v248 = (v239 - v40);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v247 = (v239 - v43);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v246 = (v239 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v245 = (v239 - v49);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v244 = (v239 - v52);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v255 = v239 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v254 = (v239 - v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8, v60);
  v259 = v239 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8, v64);
  v66 = v239 - v65;
  v67 = sub_22D01471C();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67, v70);
  v72 = v239 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22D01659C();
  v74 = *(v73 - 1);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73, v76);
  v78 = (v239 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v262 = v1;
  v79 = *(v1 + 16);
  *v78 = v79;
  (*(v74 + 104))(v78, *MEMORY[0x277D85200], v73);
  v80 = v79;
  LOBYTE(v79) = sub_22D0165BC();
  (*(v74 + 8))(v78, v73);
  if ((v79 & 1) == 0)
  {
    __break(1u);
    goto LABEL_115;
  }

  v73 = v263;
  sub_22CF0D3A8(v72);
  v81 = sub_22D0146CC();
  v82 = *(v68 + 8);
  v82(v72, v67);
  if (v81 & 1) != 0 || (sub_22CF0D3A8(v72), v83 = sub_22D0146DC(), v84 = (v82)(v72, v67), (v83))
  {
    if (qword_28143DA98 == -1)
    {
LABEL_5:
      v86 = sub_22D01637C();
      __swift_project_value_buffer(v86, qword_2814442F0);
      sub_22CF0CBEC(v73, v13, type metadata accessor for ActivityManagerEvent);
      v87 = sub_22D01636C();
      v88 = sub_22D01690C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&v265[0] = v90;
        *v89 = 136446210;
        v91 = *v13;
        v92 = v13[1];

        sub_22CF0F5E0(v13, type metadata accessor for ActivityManagerEvent);
        v93 = sub_22CEEE31C(v91, v92, v265);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_22CEE1000, v87, v88, "Not replicating ephemeral/momentary activity: %{public}s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        v94 = v90;
LABEL_7:
        MEMORY[0x2318C6860](v94, -1, -1);
        MEMORY[0x2318C6860](v89, -1, -1);

        return;
      }

      v95 = v13;
      goto LABEL_9;
    }

LABEL_115:
    swift_once();
    goto LABEL_5;
  }

  v96 = v262;
  v97 = *(v262 + 176);
  MEMORY[0x28223BE20](v84, v85);
  v239[-2] = sub_22CFA3834;
  v239[-1] = v96;
  os_unfair_lock_lock(v97 + 4);
  sub_22CFA384C(v265);
  os_unfair_lock_unlock(v97 + 4);
  v98 = *&v265[0];
  if (!*&v265[0])
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v110 = sub_22D01637C();
    __swift_project_value_buffer(v110, qword_2814442F0);
    v101 = v261;
    sub_22CF0CBEC(v73, v261, type metadata accessor for ActivityManagerEvent);
    v87 = sub_22D01636C();
    v111 = sub_22D0168EC();
    if (os_log_type_enabled(v87, v111))
    {
      v89 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v265[0] = v112;
      *v89 = 136446210;
      v113 = *v101;
      v114 = v101[1];

      sub_22CF0F5E0(v101, type metadata accessor for ActivityManagerEvent);
      v115 = sub_22CEEE31C(v113, v114, v265);

      *(v89 + 4) = v115;
      _os_log_impl(&dword_22CEE1000, v87, v111, "Not replicating ephemeral/momentary activity because activityManager is not set: %{public}s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      v94 = v112;
      goto LABEL_7;
    }

LABEL_28:
    v95 = v101;
    goto LABEL_9;
  }

  v99 = *(&v265[0] + 1);
  if (sub_22CF37A40())
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v100 = sub_22D01637C();
    __swift_project_value_buffer(v100, qword_2814442F0);
    v101 = v260;
    sub_22CF0CBEC(v73, v260, type metadata accessor for ActivityManagerEvent);
    v102 = sub_22D01636C();
    v103 = sub_22D01690C();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v265[0] = v105;
      *v104 = 136446210;
      v106 = *v101;
      v107 = v101[1];

      sub_22CF0F5E0(v101, type metadata accessor for ActivityManagerEvent);
      v108 = sub_22CEEE31C(v106, v107, v265);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_22CEE1000, v102, v103, "Not replicating scene-backed activity: %{public}s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      v109 = v105;
LABEL_16:
      MEMORY[0x2318C6860](v109, -1, -1);
      MEMORY[0x2318C6860](v104, -1, -1);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v116 = type metadata accessor for Activity();
  sub_22CF8CDAC(*(v73 + *(v116 + 36)), v66);
  v117 = sub_22D01483C();
  v118 = (*(*(v117 - 8) + 48))(v66, 1, v117);
  sub_22CEEC3D8(v66, &qword_27D9F2300, &qword_22D01A830);
  if (v118 != 1)
  {
    v128 = v258;
    v129 = *(v73 + *(v258 + 20));
    if (*(v73 + *(v116 + 52) + 8))
    {
      if (*(v73 + *(v258 + 20)) > 1u)
      {
        if (v129 == 2)
        {
          if (qword_28143DA98 != -1)
          {
            swift_once();
          }

          v158 = sub_22D01637C();
          __swift_project_value_buffer(v158, qword_2814442F0);
          v131 = v252;
          sub_22CF0CBEC(v73, v252, type metadata accessor for ActivityManagerEvent);
          v132 = sub_22D01636C();
          v133 = sub_22D01690C();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *&v265[0] = v135;
            *v134 = 136446210;
            v159 = v131[1];
            v261 = *v131;

            sub_22CF0F5E0(v131, type metadata accessor for ActivityManagerEvent);
            v160 = sub_22CEEE31C(v261, v159, v265);

            *(v134 + 4) = v160;
            v138 = "Remote activity did stop: %{public}s";
            goto LABEL_52;
          }
        }

        else
        {
          if (v129 != 3)
          {
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v164 = sub_22D01637C();
            __swift_project_value_buffer(v164, qword_2814442F0);
            v165 = v253;
            sub_22CF0CBEC(v73, v253, type metadata accessor for ActivityManagerEvent);
            v166 = sub_22D01636C();
            v167 = sub_22D01690C();
            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              *&v265[0] = v169;
              *v168 = 136446210;
              v170 = v165[1];
              v261 = *v165;

              sub_22CF0F5E0(v165, type metadata accessor for ActivityManagerEvent);
              v171 = sub_22CEEE31C(v261, v170, v265);

              *(v168 + 4) = v171;
              _os_log_impl(&dword_22CEE1000, v166, v167, "Remote activity was dismissed: %{public}s", v168, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v169);
              MEMORY[0x2318C6860](v169, -1, -1);
              MEMORY[0x2318C6860](v168, -1, -1);
            }

            else
            {

              sub_22CF0F5E0(v165, type metadata accessor for ActivityManagerEvent);
            }

            sub_22CF90068(v73);
            v161 = *v73;
            v162 = v73[1];
            v163 = v259;
            (*(*(v116 - 8) + 56))(v259, 1, 1, v116);
            goto LABEL_88;
          }

          if (qword_28143DA98 != -1)
          {
            swift_once();
          }

          v130 = sub_22D01637C();
          __swift_project_value_buffer(v130, qword_2814442F0);
          v131 = v251;
          sub_22CF0CBEC(v73, v251, type metadata accessor for ActivityManagerEvent);
          v132 = sub_22D01636C();
          v133 = sub_22D01690C();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *&v265[0] = v135;
            *v134 = 136446210;
            v136 = v131[1];
            v261 = *v131;

            sub_22CF0F5E0(v131, type metadata accessor for ActivityManagerEvent);
            v137 = sub_22CEEE31C(v261, v136, v265);

            *(v134 + 4) = v137;
            v138 = "Remote activity did update: %{public}s";
LABEL_52:
            _os_log_impl(&dword_22CEE1000, v132, v133, v138, v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v135);
            MEMORY[0x2318C6860](v135, -1, -1);
            MEMORY[0x2318C6860](v134, -1, -1);

LABEL_54:
            v161 = *v73;
            v162 = v73[1];
            v163 = v259;
            sub_22CF0CBEC(v73, v259, type metadata accessor for Activity);
            (*(*(v116 - 8) + 56))(v163, 0, 1, v116);
LABEL_88:
            swift_beginAccess();

            v179 = v163;
            v180 = v161;
            v181 = v162;
            goto LABEL_89;
          }
        }

        sub_22CF0F5E0(v131, type metadata accessor for ActivityManagerEvent);
        goto LABEL_54;
      }

      if (*(v73 + *(v258 + 20)))
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v172 = sub_22D01637C();
        __swift_project_value_buffer(v172, qword_2814442F0);
        v147 = v250;
        sub_22CF0CBEC(v73, v250, type metadata accessor for ActivityManagerEvent);
        v148 = sub_22D01636C();
        v149 = sub_22D01690C();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *&v265[0] = v151;
          *v150 = 136446210;
          v260 = *v147;
          v261 = v116;
          v173 = v147[1];

          sub_22CF0F5E0(v147, type metadata accessor for ActivityManagerEvent);
          v174 = sub_22CEEE31C(v260, v173, v265);
          v116 = v261;

          *(v150 + 4) = v174;
          v154 = "Remote activity did start: %{public}s";
          goto LABEL_63;
        }
      }

      else
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v146 = sub_22D01637C();
        __swift_project_value_buffer(v146, qword_2814442F0);
        v147 = v249;
        sub_22CF0CBEC(v73, v249, type metadata accessor for ActivityManagerEvent);
        v148 = sub_22D01636C();
        v149 = sub_22D01690C();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *&v265[0] = v151;
          *v150 = 136446210;
          v260 = *v147;
          v261 = v116;
          v152 = v147[1];

          sub_22CF0F5E0(v147, type metadata accessor for ActivityManagerEvent);
          v153 = sub_22CEEE31C(v260, v152, v265);
          v116 = v261;

          *(v150 + 4) = v153;
          v154 = "Remote activity did pend: %{public}s";
LABEL_63:
          _os_log_impl(&dword_22CEE1000, v148, v149, v154, v150, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v151);
          MEMORY[0x2318C6860](v151, -1, -1);
          MEMORY[0x2318C6860](v150, -1, -1);

LABEL_65:
          ObjectType = swift_getObjectType();
          v176 = *v73;
          v177 = v73[1];
          (*(v99 + 32))(v96, &off_28402B0B0, *v73, v177, ObjectType, v99);
          v178 = v259;
          sub_22CF0CBEC(v73, v259, type metadata accessor for Activity);
          (*(*(v116 - 8) + 56))(v178, 0, 1, v116);
          swift_beginAccess();

          v179 = v178;
          v180 = v176;
          v181 = v177;
LABEL_89:
          sub_22CF0BC5C(v179, v180, v181);
          swift_endAccess();
          swift_unknownObjectRelease();
          return;
        }
      }

      sub_22CF0F5E0(v147, type metadata accessor for ActivityManagerEvent);
      goto LABEL_65;
    }

    if (*(v73 + *(v258 + 20)) > 2u)
    {
      if (v129 != 3)
      {
        v155 = *v73;
        v156 = v73[1];
        v157 = v259;
        (*(*(v116 - 8) + 56))(v259, 1, 1, v116);
        goto LABEL_67;
      }
    }

    else if (v129 < 2)
    {
      v139 = swift_getObjectType();
      v140 = *v73;
      v141 = v73[1];
      (*(v99 + 32))(v96, &off_28402B0B0, *v73, v141, v139, v99);
      v142 = v259;
      sub_22CF0CBEC(v73, v259, type metadata accessor for Activity);
      (*(*(v116 - 8) + 56))(v142, 0, 1, v116);
      swift_beginAccess();

      v143 = v142;
      v144 = v140;
      v145 = v141;
      goto LABEL_68;
    }

    v155 = *v73;
    v156 = v73[1];
    v157 = v259;
    sub_22CF0CBEC(v73, v259, type metadata accessor for Activity);
    (*(*(v116 - 8) + 56))(v157, 0, 1, v116);
LABEL_67:
    swift_beginAccess();

    v143 = v157;
    v144 = v155;
    v145 = v156;
LABEL_68:
    sub_22CF0BC5C(v143, v144, v145);
    swift_endAccess();
    v182 = sub_22CF8CF70(v73);
    if (!v182[2])
    {

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v193 = sub_22D01637C();
      __swift_project_value_buffer(v193, qword_2814442F0);
      v194 = v254;
      sub_22CF0CBEC(v73, v254, type metadata accessor for ActivityManagerEvent);
      v195 = v73;
      v196 = v255;
      sub_22CF0CBEC(v195, v255, type metadata accessor for ActivityManagerEvent);
      v102 = sub_22D01636C();
      v197 = sub_22D01690C();
      if (os_log_type_enabled(v102, v197))
      {
        v104 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        *&v265[0] = v263;
        *v104 = 136446466;
        v198 = v128;
        v199 = *v194;
        v200 = v194[1];

        sub_22CF0F5E0(v194, type metadata accessor for ActivityManagerEvent);
        v201 = sub_22CEEE31C(v199, v200, v265);

        *(v104 + 4) = v201;
        *(v104 + 12) = 2082;
        v264 = *(v196 + *(v198 + 20));
        v202 = sub_22D01669C();
        v204 = v203;
        sub_22CF0F5E0(v196, type metadata accessor for ActivityManagerEvent);
        v205 = sub_22CEEE31C(v202, v204, v265);

        *(v104 + 14) = v205;
        _os_log_impl(&dword_22CEE1000, v102, v197, "No destinations for event %{public}s of type %{public}s", v104, 0x16u);
        v206 = v263;
        swift_arrayDestroy();
        v109 = v206;
        goto LABEL_16;
      }

      swift_unknownObjectRelease();

      sub_22CF0F5E0(v196, type metadata accessor for ActivityManagerEvent);
      v95 = v194;
LABEL_9:
      sub_22CF0F5E0(v95, type metadata accessor for ActivityManagerEvent);
      return;
    }

    v260 = v182;
    if (v129 <= 1)
    {
      if (v129)
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v226 = sub_22D01637C();
        __swift_project_value_buffer(v226, qword_2814442F0);
        v184 = v245;
        sub_22CF0CBEC(v73, v245, type metadata accessor for ActivityManagerEvent);
        v185 = sub_22D01636C();
        v186 = sub_22D01690C();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          *&v265[0] = v188;
          *v187 = 136446210;
          v227 = *v184;
          v228 = v184[1];

          sub_22CF0F5E0(v184, type metadata accessor for ActivityManagerEvent);
          v229 = sub_22CEEE31C(v227, v228, v265);

          *(v187 + 4) = v229;
          v192 = "Local activity did start: %{public}s";
          goto LABEL_102;
        }
      }

      else
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v207 = sub_22D01637C();
        __swift_project_value_buffer(v207, qword_2814442F0);
        v184 = v244;
        sub_22CF0CBEC(v73, v244, type metadata accessor for ActivityManagerEvent);
        v185 = sub_22D01636C();
        v186 = sub_22D01690C();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          *&v265[0] = v188;
          *v187 = 136446210;
          v208 = *v184;
          v209 = v184[1];

          sub_22CF0F5E0(v184, type metadata accessor for ActivityManagerEvent);
          v210 = sub_22CEEE31C(v208, v209, v265);

          *(v187 + 4) = v210;
          v192 = "Local activity did pend: %{public}s";
          goto LABEL_102;
        }
      }
    }

    else if (v129 == 2)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v211 = sub_22D01637C();
      __swift_project_value_buffer(v211, qword_2814442F0);
      v184 = v246;
      sub_22CF0CBEC(v73, v246, type metadata accessor for ActivityManagerEvent);
      v185 = sub_22D01636C();
      v186 = sub_22D01690C();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *&v265[0] = v188;
        *v187 = 136446210;
        v212 = *v184;
        v213 = v184[1];

        sub_22CF0F5E0(v184, type metadata accessor for ActivityManagerEvent);
        v214 = sub_22CEEE31C(v212, v213, v265);

        *(v187 + 4) = v214;
        v192 = "Local activity did stop: %{public}s";
        goto LABEL_102;
      }
    }

    else
    {
      if (v129 != 3)
      {
        v215 = v182;
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v216 = sub_22D01637C();
        __swift_project_value_buffer(v216, qword_2814442F0);
        v217 = v247;
        sub_22CF0CBEC(v73, v247, type metadata accessor for ActivityManagerEvent);
        v218 = sub_22D01636C();
        v219 = sub_22D01690C();
        v220 = os_log_type_enabled(v218, v219);
        v239[1] = v98;
        if (v220)
        {
          v221 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          *&v265[0] = v222;
          *v221 = 136446210;
          v223 = *v217;
          v224 = v217[1];

          sub_22CF0F5E0(v217, type metadata accessor for ActivityManagerEvent);
          v225 = sub_22CEEE31C(v223, v224, v265);

          *(v221 + 4) = v225;
          _os_log_impl(&dword_22CEE1000, v218, v219, "Local activity was dismissed: %{public}s", v221, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v222);
          MEMORY[0x2318C6860](v222, -1, -1);
          MEMORY[0x2318C6860](v221, -1, -1);
        }

        else
        {

          sub_22CF0F5E0(v217, type metadata accessor for ActivityManagerEvent);
        }

        v230 = v215[2];
        if (v230)
        {
          *&v265[0] = MEMORY[0x277D84F90];
          sub_22CF442C0(0, v230, 0);
          v231 = *&v265[0];
          v232 = v215 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
          v261 = *(v240 + 72);
          v233 = (v256 + 16);
          v234 = v243;
          v235 = v242;
          v236 = v241;
          do
          {
            sub_22CF0CBEC(v232, v234, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            (*v233)(v236, v234, v235);
            sub_22CF0F5E0(v234, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            *&v265[0] = v231;
            v238 = *(v231 + 16);
            v237 = *(v231 + 24);
            if (v238 >= v237 >> 1)
            {
              sub_22CF442C0(v237 > 1, v238 + 1, 1);
              v234 = v243;
              v231 = *&v265[0];
            }

            *(v231 + 16) = v238 + 1;
            (*(v256 + 32))(v231 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v238, v236, v235);
            v232 += v261;
            --v230;
          }

          while (v230);

          v73 = v263;
        }

        else
        {

          v231 = MEMORY[0x277D84F90];
        }

        sub_22CF8F470(v73, v231);

        swift_unknownObjectRelease();
        return;
      }

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v183 = sub_22D01637C();
      __swift_project_value_buffer(v183, qword_2814442F0);
      v184 = v248;
      sub_22CF0CBEC(v73, v248, type metadata accessor for ActivityManagerEvent);
      v185 = sub_22D01636C();
      v186 = sub_22D01690C();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *&v265[0] = v188;
        *v187 = 136446210;
        v189 = *v184;
        v190 = v184[1];

        sub_22CF0F5E0(v184, type metadata accessor for ActivityManagerEvent);
        v191 = sub_22CEEE31C(v189, v190, v265);

        *(v187 + 4) = v191;
        v192 = "Local activity did update: %{public}s";
LABEL_102:
        _os_log_impl(&dword_22CEE1000, v185, v186, v192, v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v188);
        MEMORY[0x2318C6860](v188, -1, -1);
        MEMORY[0x2318C6860](v187, -1, -1);

LABEL_104:
        sub_22CF8D580(v73, v260);
        swift_unknownObjectRelease();

        return;
      }
    }

    sub_22CF0F5E0(v184, type metadata accessor for ActivityManagerEvent);
    goto LABEL_104;
  }

  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v119 = sub_22D01637C();
  __swift_project_value_buffer(v119, qword_2814442F0);
  v120 = v257;
  sub_22CF0CBEC(v73, v257, type metadata accessor for ActivityManagerEvent);
  v121 = sub_22D01636C();
  v122 = sub_22D01690C();
  if (!os_log_type_enabled(v121, v122))
  {

    swift_unknownObjectRelease();
    v95 = v120;
    goto LABEL_9;
  }

  v123 = swift_slowAlloc();
  v124 = swift_slowAlloc();
  *&v265[0] = v124;
  *v123 = 136446210;
  v125 = *v120;
  v126 = v120[1];

  sub_22CF0F5E0(v120, type metadata accessor for ActivityManagerEvent);
  v127 = sub_22CEEE31C(v125, v126, v265);

  *(v123 + 4) = v127;
  _os_log_impl(&dword_22CEE1000, v121, v122, "Not replicating activity that opts out of sync: %{public}s", v123, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  MEMORY[0x2318C6860](v124, -1, -1);
  MEMORY[0x2318C6860](v123, -1, -1);
  swift_unknownObjectRelease();
}

uint64_t sub_22CF21580(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  result = sub_22D016C1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_22CF217E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_22CF21854(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 0;
  v4 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = 0;
  os_unfair_lock_unlock(v3);
  if (v5)
  {
    v6 = sub_22CFD6104(v5);

    sub_22CF1C384(v6);
  }

  return sub_22D01562C();
}

uint64_t sub_22CF21918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v134 = a2;
  v3 = sub_22D01461C();
  v4 = *(v3 - 8);
  v132 = v3;
  v133 = v4;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v123 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v121 = v102 - v10;
  v130 = sub_22D0146BC();
  v136 = *(v130 - 8);
  v11 = *(v136 + 64);
  MEMORY[0x28223BE20](v130, v12);
  v120 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D014C4C();
  v128 = *(v14 - 8);
  v129 = v14;
  v15 = *(v128 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v122 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v119 = v102 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v131 = v102 - v23;
  v117 = sub_22D01430C();
  v115 = *(v117 - 8);
  v24 = *(v115 + 64);
  MEMORY[0x28223BE20](v117, v25);
  v116 = v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D0149CC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v103 = v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22D01502C();
  v31 = *(v112 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v112, v33);
  v35 = v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v35;
  v36 = sub_22D01488C();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v109 = v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v41 = *(*(v40 - 8) + 64);
  v42 = v40 - 8;
  v124 = v40 - 8;
  v44 = MEMORY[0x28223BE20](v40 - 8, v43);
  v114 = v102 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v48 = v102 - v47;
  v113 = v102 - v47;
  v49 = sub_22D01471C();
  v126 = *(v49 - 8);
  v127 = v49;
  v50 = *(v126 + 64);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v118 = v102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v135 = v102 - v55;
  sub_22CEEB6DC(a1, v48, &unk_27D9F3840, &unk_22D01A2B0);
  v56 = *(v48 + 1);

  v57 = &v48[*(v42 + 56)];
  v58 = *(v57 + 1);
  v111 = *v57;
  v110 = v58;
  v59 = type metadata accessor for Activity();
  v60 = v59[5];

  sub_22D014D7C();
  v108 = sub_22D014D4C();
  v107 = v61;
  v62 = v59[6];
  v105 = *&v57[v59[7]];
  v104 = *&v57[v59[8]];
  (*(v31 + 16))(v35, &v57[v62], v112);

  sub_22D014DBC();
  v63 = *&v57[v59[9]];

  LODWORD(v112) = sub_22D014CFC();
  v102[1] = sub_22D014D1C();
  sub_22D014D0C();
  (*(v115 + 16))(v116, &v57[v59[11]], v117);
  v64 = &v57[v59[13]];
  v65 = *v64;
  v66 = *(v64 + 1);

  sub_22D014D8C();
  v67 = &v57[v59[16]];
  v68 = *(v67 + 1);
  v101 = *v67;

  sub_22D0146FC();
  sub_22CF0C71C(v57);
  v69 = v125;
  v70 = v114;
  sub_22CEEB6DC(v125, v114, &unk_27D9F3840, &unk_22D01A2B0);
  v71 = *(v70 + 8);

  v72 = v124;
  v73 = *(v124 + 56);
  v74 = v70;
  LOBYTE(v70) = sub_22CF0B5E0();
  sub_22CF0C71C(v74 + v73);
  v75 = v128;
  v76 = v129;
  v77 = **(&unk_2787486F8 + v70);
  v78 = v119;
  (*(v128 + 104))(v119, v77, v129);
  (*(v75 + 32))(v131, v78, v76);
  v79 = v69;
  v80 = v113;
  sub_22CEEB6DC(v79, v113, &unk_27D9F3840, &unk_22D01A2B0);
  v81 = *(v80 + 8);

  v82 = v80 + *(v72 + 56);
  v83 = v59[14];
  v84 = v136;
  v115 = *(v136 + 16);
  v85 = v120;
  v86 = v130;
  (v115)(v120, v82 + v83, v130);
  sub_22CF0C71C(v82);
  v87 = v121;
  sub_22D01467C();
  v88 = *(v84 + 8);
  v136 = v84 + 8;
  v88(v85, v86);
  v89 = sub_22D0145FC();
  v116 = v90;
  v117 = v89;
  v119 = *(v133 + 8);
  (v119)(v87, v132);
  sub_22CEEB6DC(v125, v80, &unk_27D9F3840, &unk_22D01A2B0);
  v91 = *(v80 + 8);

  v92 = v80 + *(v124 + 56);
  v93 = v92 + v59[14];
  v94 = v130;
  (v115)(v85, v93, v130);
  sub_22CF0C71C(v92);
  sub_22D01467C();
  v88(v85, v94);
  (*(v126 + 16))(v118, v135, v127);
  v96 = v128;
  v95 = v129;
  v97 = v131;
  (*(v128 + 16))(v122, v131, v129);
  v98 = v132;
  (*(v133 + 16))(v123, v87, v132);
  sub_22D014A8C();
  (v119)(v87, v98);
  (*(v96 + 8))(v97, v95);
  (*(v126 + 8))(v135, v127);
  v99 = sub_22D014A9C();
  return (*(*(v99 - 8) + 56))(v134, 0, 1, v99);
}

uint64_t sub_22CF224E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v32 - v10;
  v12 = sub_22D01483C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32[0] = a2;
    v32[1] = result;
    v19 = a3;
    v20 = *(v3 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection);
    sub_22CEE84BC([v20 remoteProcess]);
    (*(v13 + 104))(v11, *MEMORY[0x277CB9348], v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v17, v11, v12);
    sub_22CEE3A84(v3 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_activityAuthorizer, v33);
    v21 = v34;
    v22 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v23 = [v20 remoteProcess];
    v24 = v19;
    v25 = v19;
    v26 = v32[0];
    v27 = (*(v22 + 16))(v25, v23, a1, v32[0], v21, v22);

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v27)
    {
      sub_22CF2412C(a1, v26, v17, v24);
    }

    else
    {
      if (qword_28143FB60 != -1)
      {
        swift_once();
      }

      v28 = sub_22D01637C();
      __swift_project_value_buffer(v28, qword_2814444B0);
      v29 = sub_22D01636C();
      v30 = sub_22D0168EC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22CEE1000, v29, v30, "Client is not permitted to update activity", v31, 2u);
        MEMORY[0x2318C6860](v31, -1, -1);
        swift_unknownObjectRelease();

        return (*(v13 + 8))(v17, v12);
      }
    }

    swift_unknownObjectRelease();
    return (*(v13 + 8))(v17, v12);
  }

  return result;
}

uint64_t sub_22CF22940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v71 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v64 - v8;
  v10 = sub_22D0150CC();
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2340, &qword_22D01D0A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v64 - v18;
  v20 = sub_22D01502C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v64 - v28;
  v30 = a2;
  sub_22CEE84BC(v30);
  v65 = v26;
  v66 = v14;
  (*(v21 + 56))(v19, 0, 1, v20);
  v31 = v21;
  v32 = *(v21 + 32);
  v67 = v29;
  v32(v29, v19, v20);
  sub_22D01462C();
  v33 = v70;
  v34 = (*(v70 + 48))(v9, 1, v10);
  v71 = v20;
  if (v34 == 1)
  {
    sub_22CEEC3D8(v9, &qword_27D9F2308, &unk_22D018950);
LABEL_8:
    v40 = v31;
LABEL_9:
    v41 = sub_22D01666C();
    v42 = [v30 hasEntitlement_];

    v43 = v67;
    v44 = v71;
    if (v42)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v45 = sub_22D01637C();
      __swift_project_value_buffer(v45, qword_281444420);
      v46 = v65;
      (*(v40 + 16))(v65, v43, v44);
      v47 = sub_22D01636C();
      v48 = sub_22D01690C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v72 = v50;
        *v49 = 136380675;
        sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810]);
        v51 = sub_22D016DEC();
        v53 = v52;
        v54 = *(v40 + 8);
        v54(v46, v44);
        v55 = sub_22CEEE31C(v51, v53, &v72);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_22CEE1000, v47, v48, "Requester is entitled to update activities while playing background audio: %{private}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x2318C6860](v50, -1, -1);
        MEMORY[0x2318C6860](v49, -1, -1);

        v54(v67, v44);
      }

      else
      {

        v58 = *(v40 + 8);
        v58(v46, v44);
        v58(v43, v44);
      }

      v56 = 1;
    }

    else
    {
      v57 = sub_22CF23150(v30);
      (*(v40 + 8))(v43, v44);
      v56 = v57 ^ 1;
    }

    return v56 & 1;
  }

  v36 = v10;
  v37 = v66;
  (*(v33 + 32))(v66, v9, v10);
  if ((sub_22D01505C() & 1) == 0)
  {
    (*(v33 + 8))(v37, v10);
    goto LABEL_8;
  }

  v38 = sub_22D01666C();
  v39 = [v30 hasEntitlement_];

  v40 = v31;
  if (v39)
  {
    (*(v33 + 8))(v37, v36);
    goto LABEL_9;
  }

  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v59 = sub_22D01637C();
  __swift_project_value_buffer(v59, qword_281444420);
  v60 = v30;
  v61 = sub_22D01636C();
  v62 = sub_22D0168EC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 67240192;
    *(v63 + 4) = [v60 pid];

    _os_log_impl(&dword_22CEE1000, v61, v62, "Requester is not entitled to request activities that needs to break through Focus: %{public}d", v63, 8u);
    MEMORY[0x2318C6860](v63, -1, -1);
  }

  else
  {
  }

  (*(v33 + 8))(v66, v36);
  (*(v31 + 8))(v67, v71);
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_22CF23150(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3D00, &qword_22D01D0A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v94 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3D08, &qword_22D01D0B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v94 - v11;
  v13 = &off_278748000;
  v14 = [objc_opt_self() identifierWithPid_];
  if (!v14)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_281444420);
    v19 = a1;
    v20 = sub_22D01636C();
    v21 = sub_22D0168EC();
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_48;
    }

    v22 = swift_slowAlloc();
    *v22 = 67240192;
    *(v22 + 4) = [v19 pid];

    _os_log_impl(&dword_22CEE1000, v20, v21, "Could not get identifier for pid: %{public}d", v22, 8u);
    MEMORY[0x2318C6860](v22, -1, -1);

    return 0;
  }

  v15 = v14;
  v110 = v8;
  sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
  v16 = v15;
  v17 = sub_22CF23FE0(v16);

  v109 = v7;
  v23 = [v17 currentState];
  if (!v23)
  {
    if (qword_28143FB28 != -1)
    {
LABEL_91:
      swift_once();
    }

    v47 = sub_22D01637C();
    __swift_project_value_buffer(v47, qword_281444420);
    v19 = a1;
    v48 = sub_22D01636C();
    v49 = sub_22D0168EC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67240192;
      *(v50 + 4) = [v19 v13[417]];

      _os_log_impl(&dword_22CEE1000, v48, v49, "Could not get state for pid: %{public}d", v50, 8u);
      MEMORY[0x2318C6860](v50, -1, -1);

      return 0;
    }

LABEL_47:
    goto LABEL_48;
  }

  v24 = v23;
  v107 = v6;
  v25 = [v23 endowmentNamespaces];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22D01685C();

    v28 = *MEMORY[0x277D0AC90];
    v29 = sub_22D01667C();
    v31 = sub_22CF24034(v29, v30, v27);

    if (v31)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v32 = sub_22D01637C();
      __swift_project_value_buffer(v32, qword_281444420);
      v19 = a1;
      v33 = sub_22D01636C();
      v34 = sub_22D01690C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67240192;
        *(v35 + 4) = [v19 pid];

        v36 = "Foreground process is permitted to update activity: %{public}d";
LABEL_45:
        _os_log_impl(&dword_22CEE1000, v33, v34, v36, v35, 8u);
        MEMORY[0x2318C6860](v35, -1, -1);

        return 0;
      }

LABEL_46:

      goto LABEL_47;
    }
  }

  v37 = [v24 assertions];
  if (!v37)
  {
LABEL_41:
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v59 = sub_22D01637C();
    __swift_project_value_buffer(v59, qword_281444420);
    v19 = a1;
    v33 = sub_22D01636C();
    v34 = sub_22D0168EC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67240192;
      *(v35 + 4) = [v19 pid];

      v36 = "Process is not targeted by assertions and can update activity: %{public}d";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v38 = v37;
  v39 = sub_22CEE82F8(0, &qword_28143D920, 0x277D46F10);
  v40 = sub_22D00631C();
  v108 = v39;
  v41 = sub_22D01685C();

  v101 = v41 & 0xC000000000000001;
  if ((v41 & 0xC000000000000001) != 0)
  {
    if (sub_22D016B7C())
    {
      v106 = v41;
      v100 = 0;
      v99 = a1;
      v102 = v24;
      v103 = v17;
      v104 = v16;
      swift_unknownObjectRetain();
      sub_22D016B3C();
      v98 = v40;
      sub_22D01689C();
      v42 = v114;
      v43 = v115;
      v45 = v116;
      v44 = v117;
      v46 = v118;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  if (!*(v41 + 16))
  {
LABEL_40:

    goto LABEL_41;
  }

  v98 = v40;
  v100 = 0;
  v99 = a1;
  v102 = v24;
  v103 = v17;
  v104 = v16;
  v51 = -1 << *(v41 + 32);
  v43 = v41 + 56;
  v45 = ~v51;
  v52 = -v51;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v46 = v53 & *(v41 + 56);

  v44 = 0;
  v106 = v41;
  v42 = v41;
LABEL_28:
  v105 = v45;
  do
  {
    if (v42 < 0)
    {
      v58 = sub_22D016BAC();
      if (!v58)
      {
        goto LABEL_39;
      }

      v112 = v58;
      swift_dynamicCast();
      v54 = v119;
      if (!v119)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v56 = v44;
      v57 = v46;
      if (!v46)
      {
        while (1)
        {
          v44 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            __break(1u);
LABEL_75:
            sub_22CEE57FC();

            if (qword_28143FB28 != -1)
            {
              swift_once();
            }

            v85 = sub_22D01637C();
            __swift_project_value_buffer(v85, qword_281444420);
            v86 = v99;
            v87 = sub_22D01636C();
            v88 = sub_22D0168EC();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 67240192;
              *(v89 + 4) = [v86 pid];

              _os_log_impl(&dword_22CEE1000, v87, v88, "Process is only playing background media so is forbidden to update activity: %{public}d", v89, 8u);
              MEMORY[0x2318C6860](v89, -1, -1);
            }

            else
            {
            }

            return 1;
          }

          if (v44 >= ((v45 + 64) >> 6))
          {
            break;
          }

          v57 = *(v43 + 8 * v44);
          ++v56;
          if (v57)
          {
            goto LABEL_29;
          }
        }

LABEL_39:

        sub_22CEE57FC();

        return 0;
      }

LABEL_29:
      v46 = (v57 - 1) & v57;
      v54 = *(*(v42 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v57)))));
      if (!v54)
      {
        goto LABEL_39;
      }
    }

    v55 = [v54 reason];
  }

  while (v55 != 1);
  sub_22CEE57FC();
  if (v101)
  {
    v61 = v106;
    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01689C();
    v62 = v119;
    v63 = v120;
    v65 = v121;
    v64 = v122;
    v66 = v123;
  }

  else
  {
    v61 = v106;
    v67 = -1 << *(v106 + 32);
    v63 = v106 + 56;
    v65 = ~v67;
    v68 = -v67;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v66 = v69 & *(v106 + 56);

    v64 = 0;
  }

  v70 = v100;
  v16 = &selRef_initWithBundleIdentifier_allowPlaceholder_error_;
  v97 = v65;
  v17 = ((v65 + 64) >> 6);
  v98 = (v110 + 56);
  v96 = (v110 + 32);
  v95 = (v110 + 8);
  v105 = v63;
  v106 = v61;
  v110 = v62;
  while (1)
  {
    a1 = v66;
    v13 = v64;
    if (v62 < 0)
    {
      v74 = sub_22D016BAC();
      if (!v74)
      {
        goto LABEL_75;
      }

      v111 = v74;
      swift_dynamicCast();
      v73 = v112;
      v101 = v64;
      v66 = a1;
    }

    else
    {
      v71 = v64;
      v72 = a1;
      if (!a1)
      {
        while (1)
        {
          v64 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          if (v64 >= v17)
          {
            goto LABEL_75;
          }

          v72 = *(v63 + 8 * v64);
          ++v71;
          if (v72)
          {
            goto LABEL_64;
          }
        }

        __break(1u);
        goto LABEL_91;
      }

LABEL_64:
      v101 = v13;
      v66 = (v72 - 1) & v72;
      v73 = *(*(v62 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v72)))));
    }

    if (!v73)
    {
      goto LABEL_75;
    }

    if (![v73 v16[45]])
    {
LABEL_57:

      goto LABEL_58;
    }

    if ([v73 v16[45]] != 1)
    {
      break;
    }

    v75 = [v73 explanation];
    if (!v75)
    {
      goto LABEL_57;
    }

    v76 = v75;
    v77 = sub_22D01667C();
    v79 = v78;

    v80 = v107;
    sub_22D0157BC();
    if (v70)
    {

      (*v98)(v80, 1, 1, v109);
      sub_22CEEC3D8(v80, &qword_27D9F3D00, &qword_22D01D0A8);
      v70 = 0;
      v16 = &selRef_initWithBundleIdentifier_allowPlaceholder_error_;
LABEL_58:
      v63 = v105;
      v62 = v110;
    }

    else
    {
      v81 = *v98;
      v100 = 0;
      v82 = v109;
      v81(v80, 0, 1, v109);
      (*v96)(v12, v80, v82);
      v112 = v77;
      v113 = v79;
      sub_22D006384();
      sub_22D0063D8();
      v83 = sub_22D01662C();

      v84 = v82;
      v70 = v100;
      (*v95)(v12, v84);

      v63 = v105;
      v16 = &selRef_initWithBundleIdentifier_allowPlaceholder_error_;
      v62 = v110;
      if (v83)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_83:
  sub_22CEE57FC();

  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v90 = sub_22D01637C();
  __swift_project_value_buffer(v90, qword_281444420);
  v19 = v99;
  v91 = sub_22D01636C();
  v92 = sub_22D01690C();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 67240192;
    *(v93 + 4) = [v19 pid];

    _os_log_impl(&dword_22CEE1000, v91, v92, "Process is doing more than playing background media so is permitted to update activity: %{public}d", v93, 8u);
    MEMORY[0x2318C6860](v93, -1, -1);

    return 0;
  }

LABEL_48:
  return 0;
}

id sub_22CF23FE0(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22CF17328(a1, &selRef_handleForIdentifier_error_);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF24034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v7 = sub_22D016ECC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22D016DFC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22CF2412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v7 = sub_22D01483C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D0146BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = v5;
  v28 = *(v5 + 16);
  (*(v13 + 16))(v16, a4, v12);
  (*(v8 + 16))(v11, v25, v7);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = v5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v27;
  (*(v13 + 32))(&v19[v17], v16, v12);
  (*(v8 + 32))(&v19[v18], v11, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22CF245B8;
  *(v21 + 24) = v19;
  aBlock[4] = sub_22CEF4034;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_76;
  v22 = _Block_copy(aBlock);

  dispatch_sync(v28, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF24450()
{
  v1 = sub_22D0146BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22D01483C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_22CF245B8()
{
  v1 = *(sub_22D0146BC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22D01483C() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_22CF2468C(v5, v6, v7, v0 + v2, v8);
}

void sub_22CF2468C(void *a1, uint64_t a2, NSObject *a3, _BYTE *a4, uint64_t a5)
{
  v161 = a5;
  v164 = a4;
  v166 = a2;
  v167 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v156 = &v139[-v9];
  v154 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v153 = *(v154 - 8);
  v10 = *(v153 + 64);
  MEMORY[0x28223BE20](v154, v11);
  v155 = &v139[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = sub_22D01436C();
  v151 = *(v152 - 1);
  v13 = *(v151 + 64);
  MEMORY[0x28223BE20](v152, v14);
  v149 = &v139[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = sub_22D01483C();
  v157 = *(v160 - 8);
  v16 = *(v157 + 64);
  v18 = MEMORY[0x28223BE20](v160, v17);
  v150 = &v139[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v20);
  v159 = &v139[-v21];
  v162 = sub_22D0146BC();
  v165 = *(v162 - 8);
  v22 = v165[8];
  v24 = MEMORY[0x28223BE20](v162, v23);
  v158 = &v139[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v139[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v139[-v32];
  v34 = sub_22D01430C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v139[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for Activity();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = &v139[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v44, v47);
  v163 = &v139[-v48];
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    swift_beginAccess();
    v148 = a1;
    v49 = a1[15];
    if (*(v49 + 16))
    {

      v50 = sub_22CEEC698(v166, v167);
      if (v51)
      {
        sub_22CF0CB84(*(v49 + 56) + *(v41 + 72) * v50, v46, type metadata accessor for Activity);

        sub_22CF0FF70(v46, v163, type metadata accessor for Activity);
        v52 = *(v40 + 40);
        sub_22D0142DC();
        sub_22CEF87FC(&qword_281443A30, MEMORY[0x277CC9578]);
        LOBYTE(v52) = sub_22D01663C();
        (*(v35 + 8))(v39, v34);
        if ((v52 & 1) == 0)
        {
          sub_22D01462C();
          v53 = sub_22D0150CC();
          v54 = (*(*(v53 - 8) + 48))(v33, 1, v53);
          sub_22CEEC3D8(v33, &qword_27D9F2308, &unk_22D018950);
          if (v54 == 1)
          {
            v55 = v167;
            if (qword_28143FB58 == -1)
            {
LABEL_7:
              v56 = sub_22D01637C();
              __swift_project_value_buffer(v56, qword_281444498);

              v57 = sub_22D01636C();
              v58 = sub_22D0168EC();

              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                v60 = swift_slowAlloc();
                v169 = v60;
                *v59 = 136446210;
                *(v59 + 4) = sub_22CEEE31C(v166, v55, &v169);
                _os_log_impl(&dword_22CEE1000, v57, v58, "Cannot update a pending activity without an alert configuration; id %{public}s", v59, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v60);
                MEMORY[0x2318C6860](v60, -1, -1);
                MEMORY[0x2318C6860](v59, -1, -1);
              }

              goto LABEL_51;
            }

LABEL_56:
            swift_once();
            goto LABEL_7;
          }
        }

        v71 = v167;
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v72 = sub_22D01637C();
        v73 = __swift_project_value_buffer(v72, qword_281444498);
        v74 = v162;
        v145 = v165[2];
        v147 = v165 + 2;
        v145(v28, v164, v162);
        v75 = v157;
        v76 = v157 + 16;
        v77 = *(v157 + 16);
        v79 = v159;
        v78 = v160;
        v77(v159, v161, v160);

        v143 = v73;
        v80 = sub_22D01636C();
        v81 = sub_22D01690C();

        v82 = os_log_type_enabled(v80, v81);
        v146 = v76;
        v144 = v77;
        if (v82)
        {
          v83 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v169 = v142;
          *v83 = 136446723;
          *(v83 + 4) = sub_22CEEE31C(v166, v71, &v169);
          *(v83 + 12) = 2082;
          v140 = v81;
          v84 = v149;
          v141 = v80;
          sub_22D01466C();
          sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0]);
          v85 = v152;
          v86 = sub_22D016DEC();
          v87 = v78;
          v89 = v88;
          (*(v151 + 8))(v84, v85);
          v152 = v165[1];
          (v152)(v28, v162);
          v90 = sub_22CEEE31C(v86, v89, &v169);

          *(v83 + 14) = v90;
          *(v83 + 22) = 2081;
          v91 = v159;
          v77(v150, v159, v87);
          v92 = sub_22D01669C();
          v94 = v93;
          v95 = v87;
          v71 = v167;
          (*(v75 + 8))(v91, v95);
          v55 = v166;
          v96 = sub_22CEEE31C(v92, v94, &v169);

          *(v83 + 24) = v96;
          v97 = v141;
          _os_log_impl(&dword_22CEE1000, v141, v140, "Pending activity update for %{public}s with payload %{public}s for XPC participant content source %{private}s", v83, 0x20u);
          v98 = v142;
          swift_arrayDestroy();
          MEMORY[0x2318C6860](v98, -1, -1);
          v99 = v83;
          v74 = v162;
          MEMORY[0x2318C6860](v99, -1, -1);
        }

        else
        {

          (*(v75 + 8))(v79, v78);
          v152 = v165[1];
          (v152)(v28, v74);
          v55 = v166;
        }

        v100 = v148;
        v101 = v158;
        v102 = v145;
        v145(v158, v164, v74);
        v103 = __swift_project_boxed_opaque_existential_1(v100 + 28, v100[31]);
        v104 = *v103;
        v105 = *(*(*v103 + 48) + 16);
        os_unfair_lock_lock(v105);
        v106 = *(v104 + 112);

        v107 = sub_22CF24034(v55, v71, v106);

        os_unfair_lock_unlock(v105);
        if (v107)
        {

          v108 = sub_22D01636C();
          v109 = sub_22D01690C();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v169 = v111;
            *v110 = 136446210;
            *(v110 + 4) = sub_22CEEE31C(v55, v71, &v169);
            _os_log_impl(&dword_22CEE1000, v108, v109, "Activity is unthrottled: %{public}s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v111);
            MEMORY[0x2318C6860](v111, -1, -1);
            MEMORY[0x2318C6860](v110, -1, -1);
          }

          goto LABEL_50;
        }

        v112 = *(*__swift_project_boxed_opaque_existential_1(v100 + 20, v100[23]) + 16);
        if (*(v112 + 16))
        {
          v113 = sub_22CF259D0(0);
          if (v114)
          {
            v115 = sub_22CF25A3C(v55, v71, *(*(v112 + 56) + 8 * v113));
            v116 = v148;
            v117 = *__swift_project_boxed_opaque_existential_1(v148 + 20, v148[23]);
            sub_22CF263F8(v55, v71);
            v118 = *(*__swift_project_boxed_opaque_existential_1(v116 + 20, v116[23]) + 16);
            if (*(v118 + 16))
            {
              v119 = sub_22CF259D0(0);
              if (v120)
              {
                v121 = sub_22CF25A3C(v55, v71, *(*(v118 + 56) + 8 * v119));
                v122 = v121;
                if (v115)
                {

                  v123 = sub_22D01636C();
                  v124 = sub_22D01690C();

                  v125 = os_log_type_enabled(v123, v124);
                  if (!v122)
                  {
                    if (v125)
                    {
                      v126 = swift_slowAlloc();
                      v127 = swift_slowAlloc();
                      v169 = v127;
                      *v126 = 136446210;
                      *(v126 + 4) = sub_22CEEE31C(v55, v71, &v169);
                      _os_log_impl(&dword_22CEE1000, v123, v124, "Activity is no longer chatty: %{public}s", v126, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1Tm(v127);
                      MEMORY[0x2318C6860](v127, -1, -1);
                      MEMORY[0x2318C6860](v126, -1, -1);
                    }

                    swift_beginAccess();
                    sub_22CF3C4B0(v55, v71);
                    swift_endAccess();

                    goto LABEL_50;
                  }
                }

                else
                {
                  if (!v121)
                  {
LABEL_50:
                    v135 = v154;
                    v136 = v155;
                    v144(v155 + *(v154 + 20), v161, v160);
                    v102(v136 + *(v135 + 24), v101, v74);
                    v137 = *(v135 + 28);

                    sub_22D0142DC();
                    *v136 = v55;
                    v136[1] = v71;
                    v138 = v156;
                    sub_22CF0CB84(v136, v156, type metadata accessor for XPCInputParticipant.ActivityUpdate);
                    (*(v153 + 56))(v138, 0, 1, v135);
                    swift_beginAccess();

                    sub_22CF26EA8(v138, v55, v71);
                    swift_endAccess();
                    sub_22CF2737C();
                    sub_22CF289A8(v136, type metadata accessor for XPCInputParticipant.ActivityUpdate);
                    (v152)(v101, v74);
LABEL_51:
                    sub_22CF289A8(v163, type metadata accessor for Activity);
                    return;
                  }

                  v128 = v148;
                  swift_beginAccess();
                  v129 = v128[18];

                  v130 = sub_22CF24034(v55, v71, v129);

                  v123 = sub_22D01636C();
                  v124 = sub_22D01690C();

                  v125 = os_log_type_enabled(v123, v124);
                  if ((v130 & 1) == 0)
                  {
                    if (v125)
                    {
                      v133 = swift_slowAlloc();
                      v134 = swift_slowAlloc();
                      v169 = v134;
                      *v133 = 136446210;
                      *(v133 + 4) = sub_22CEEE31C(v55, v71, &v169);
                      _os_log_impl(&dword_22CEE1000, v123, v124, "Activity has become chatty: %{public}s", v133, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1Tm(v134);
                      MEMORY[0x2318C6860](v134, -1, -1);
                      MEMORY[0x2318C6860](v133, -1, -1);
                    }

                    swift_beginAccess();

                    sub_22CEE54CC(&v168, v55, v71);
                    swift_endAccess();

                    goto LABEL_49;
                  }
                }

                if (v125)
                {
                  v131 = swift_slowAlloc();
                  v132 = swift_slowAlloc();
                  v169 = v132;
                  *v131 = 136446210;
                  *(v131 + 4) = sub_22CEEE31C(v55, v71, &v169);
                  _os_log_impl(&dword_22CEE1000, v123, v124, "Activity continues to be chatty: %{public}s", v131, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v132);
                  MEMORY[0x2318C6860](v132, -1, -1);
                  MEMORY[0x2318C6860](v131, -1, -1);
                }

LABEL_49:
                sub_22D01468C();
                goto LABEL_50;
              }

LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_54;
      }
    }

    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v65 = sub_22D01637C();
    __swift_project_value_buffer(v65, qword_281444498);
    v66 = v167;

    v67 = sub_22D01636C();
    v68 = sub_22D0168EC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v169 = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_22CEEE31C(v166, v66, &v169);
      _os_log_impl(&dword_22CEE1000, v67, v68, "XPCInputParticipant has no activity for update; id %{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x2318C6860](v70, -1, -1);
      MEMORY[0x2318C6860](v69, -1, -1);
    }
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v61 = sub_22D01637C();
    __swift_project_value_buffer(v61, qword_281444498);
    v167 = sub_22D01636C();
    v62 = sub_22D0168EC();
    if (os_log_type_enabled(v167, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_22CEE1000, v167, v62, "XPCInputParticipant has no ActivityManager", v63, 2u);
      MEMORY[0x2318C6860](v63, -1, -1);
    }

    v64 = v167;
  }
}

uint64_t type metadata accessor for XPCInputParticipant.ActivityUpdate()
{
  result = qword_28143EB70;
  if (!qword_28143EB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22CF259D0(char a1)
{
  v3 = *(v1 + 40);
  sub_22D016EAC();
  MEMORY[0x2318C6020](a1 & 1);
  v4 = sub_22D016ECC();

  return sub_22CF25C40(a1 & 1, v4);
}

BOOL sub_22CF25A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for XPCInputBudgetManager.Budget();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v26 - v16;
  swift_beginAccess();
  v18 = *(v4 + 32);

  v20 = sub_22CF25CB0(v19, v4);

  v21 = *(v4 + 32);
  *(v4 + 32) = v20;

  if (*(v20 + 16) && (v22 = sub_22CEEC698(a1, a2), (v23 & 1) != 0))
  {
    sub_22CF2628C(*(v20 + 56) + *(v9 + 72) * v22, v14);

    sub_22CF26E44(v14, v17);
    v24 = *&v17[*(v8 + 20)];
    sub_22CF26360(v17);
    return v24 >= a3;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for XPCInputBudgetManager.Budget()
{
  result = qword_28143E6F8;
  if (!qword_28143E6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22CF25C40(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22CF25CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_22CFFFE74(v15, v8, a1, a2);
      MEMORY[0x2318C6860](v15, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10, v11);
  bzero(v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v12 = sub_22CF25E70((v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_22CF25E70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v66 = a4;
  v51 = a1;
  v65 = sub_22D01430C();
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v65, v7);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v64 = &v49 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CF0, &unk_22D01CDE0);
  v12 = *(*(v63 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v63, v13);
  v62 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v61 = (&v49 - v17);
  v18 = type metadata accessor for XPCInputBudgetManager.Budget();
  v60 = *(v18 - 8);
  v19 = *(v60 + 64);
  result = MEMORY[0x28223BE20](v18 - 8, v20);
  v59 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v67 = a3;
  v24 = *(a3 + 64);
  v52 = 0;
  v53 = a3 + 64;
  v25 = 1 << *(a3 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v54 = (v25 + 63) >> 6;
  v57 = (v5 + 8);
  v58 = (v5 + 16);
  v28 = v65;
  while (v27)
  {
    v29 = __clz(__rbit64(v27));
    v69 = (v27 - 1) & v27;
LABEL_11:
    v32 = v29 | (v23 << 6);
    v33 = v67[7];
    v34 = (v67[6] + 16 * v32);
    v36 = *v34;
    v35 = v34[1];
    v37 = v59;
    v38 = *(v60 + 72);
    v55 = v32;
    sub_22CF2628C(v33 + v38 * v32, v59);
    v39 = v61;
    *v61 = v36;
    *(v39 + 8) = v35;
    v68 = v35;
    v40 = v63;
    sub_22CF2628C(v37, v39 + *(v63 + 48));
    v41 = v62;
    sub_22CF262F0(v39, v62);
    v42 = *(v41 + 8);
    swift_bridgeObjectRetain_n();

    v43 = *(v40 + 48);
    v44 = v56;
    (*v58)(v56, v41 + v43, v28);
    sub_22CF26360(v41 + v43);
    v45 = *(v66 + 24);
    v46 = v64;
    sub_22D01425C();
    v47 = *v57;
    (*v57)(v44, v28);
    sub_22D0142DC();
    LOBYTE(v43) = sub_22D01427C();
    v47(v44, v28);
    v47(v46, v28);
    sub_22CEEC3D8(v39, &qword_27D9F3CF0, &unk_22D01CDE0);
    sub_22CF26360(v37);

    v27 = v69;
    if (v43)
    {
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
        return sub_22CF263BC(v51, v50, v52, v67);
      }
    }
  }

  v30 = v23;
  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v54)
    {
      return sub_22CF263BC(v51, v50, v52, v67);
    }

    v31 = *(v53 + 8 * v23);
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v69 = (v31 - 1) & v31;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF2628C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCInputBudgetManager.Budget();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF262F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CF0, &unk_22D01CDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF26360(uint64_t a1)
{
  v2 = type metadata accessor for XPCInputBudgetManager.Budget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CF263F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3250, &qword_22D01B1E8);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for XPCInputBudgetManager.Budget();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(v2 + 32);

  v22 = sub_22CF25CB0(v21, v3);

  v23 = *(v3 + 32);
  *(v3 + 32) = v22;

  if (!os_variant_has_internal_ui() || (v24 = [objc_opt_self() standardUserDefaults], v25 = sub_22D01666C(), v26 = objc_msgSend(v24, sel_BOOLForKey_, v25), v24, v25, !v26))
  {
    v31 = *(v3 + 32);
    v32 = v41;
    if (*(v31 + 16))
    {
      v33 = *(v3 + 32);

      v34 = sub_22CEEC698(a1, v32);
      if (v35)
      {
        sub_22CF2628C(*(v31 + 56) + *(v15 + 72) * v34, v13);

        v36 = *(v15 + 56);
        v36(v13, 0, 1, v14);
        sub_22CF26E44(v13, v19);
LABEL_13:
        v37 = *(v14 + 20);
        v38 = *&v19[v37];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (!v39)
        {
          *&v19[v37] = v40;
          sub_22CF2628C(v19, v10);
          v36(v10, 0, 1, v14);
          swift_beginAccess();

          sub_22CF26930(v10, a1, v32);
          swift_endAccess();
          sub_22CF26360(v19);
          return;
        }

        __break(1u);
        goto LABEL_16;
      }
    }

    v36 = *(v15 + 56);
    v36(v13, 1, 1, v14);
    sub_22D0142DC();
    *&v19[*(v14 + 20)] = 0;
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_22CEEC3D8(v13, &qword_27D9F3250, &qword_22D01B1E8);
    }

    goto LABEL_13;
  }

  if (qword_28143FB28 != -1)
  {
LABEL_16:
    swift_once();
  }

  v27 = sub_22D01637C();
  __swift_project_value_buffer(v27, qword_281444420);
  v28 = sub_22D01636C();
  v29 = sub_22D01690C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22CEE1000, v28, v29, "Automation flag set, not reducing budget.", v30, 2u);
    MEMORY[0x2318C6860](v30, -1, -1);
  }
}

uint64_t sub_22CF26840(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22CF268C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22CF26930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3250, &qword_22D01B1E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for XPCInputBudgetManager.Budget();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F3250, &qword_22D01B1E8);
    sub_22CFBCA50(a2, a3, v11);

    return sub_22CEEC3D8(v11, &qword_27D9F3250, &qword_22D01B1E8);
  }

  else
  {
    sub_22CEF0B08(a1, v16, type metadata accessor for XPCInputBudgetManager.Budget);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22CFBF800(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_22CF26B04(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v54 = a6;
  v9 = v6;
  v12 = a3(0);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v53 = &v48 - v15;
  v16 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v17 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = a2;
  result = sub_22D016D2C();
  v19 = result;
  if (*(v16 + 16))
  {
    v49 = v9;
    v50 = v16;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = result + 64;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v20 << 6);
      v33 = *(v16 + 56);
      v34 = (*(v16 + 48) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v51 + 72);
      v38 = v33 + v37 * v32;
      if (v52)
      {
        sub_22CEF0B08(v38, v53, v54);
      }

      else
      {
        sub_22CF28C98(v38, v53, v54);
      }

      v39 = *(v19 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v40 = -1 << *(v19 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v26 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v26 + 8 * v42);
          if (v46 != -1)
          {
            v27 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v41) & ~*(v26 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v28 = (*(v19 + 48) + 16 * v27);
      *v28 = v36;
      v28[1] = v35;
      result = sub_22CEF0B08(v53, *(v19 + 56) + v37 * v27, v54);
      ++*(v19 + 16);
      v16 = v50;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_36;
    }

    v47 = 1 << *(v16 + 32);
    v9 = v49;
    if (v47 >= 64)
    {
      bzero(v21, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v47;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v9 = v19;
  return result;
}

uint64_t sub_22CF26E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCInputBudgetManager.Budget();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF26EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2A78, &unk_22D01B130);
    sub_22CF32FD4(a2, a3, v11);

    return sub_22CEEC3D8(v11, &qword_27D9F2A78, &unk_22D01B130);
  }

  else
  {
    sub_22CEF0B08(a1, v16, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22CFBF5FC(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_22CF27090(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22D01483C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22D0146BC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_22D01430C();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22CF27210(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22D01483C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_22D0146BC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_22D01430C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_22CF2737C()
{
  v1 = v0;
  v2 = sub_22D0164CC();
  v98 = *(v2 - 8);
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01653C();
  v97 = *(v7 - 8);
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v96 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v108 = &v93 - v14;
  v107 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v109 = *(v107 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x28223BE20](v107, v16);
  v106 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_22D01430C();
  v18 = *(v111 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v111, v20);
  v110 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v93 - v24;
  v26 = sub_22D01659C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = (&v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v1 + 2);
  *v31 = v32;
  (*(v27 + 104))(v31, *MEMORY[0x277D85200], v26);
  v33 = v32;
  LOBYTE(v32) = sub_22D0165BC();
  (*(v27 + 8))(v31, v26);
  if (v32)
  {
    v93 = v6;
    v94 = v7;
    v95 = v2;
    sub_22D0142DC();
    v34 = swift_beginAccess();
    v35 = *(v1 + 16);
    MEMORY[0x28223BE20](v34, v36);
    *(&v93 - 2) = v1;
    *(&v93 - 1) = v25;

    v37 = sub_22CF27D84(sub_22CF282CC, (&v93 - 4), v35);

    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v43 = v109;
    v104 = (v18 + 16);
    v105 = (v109 + 56);
    v100 = v18 + 32;
    v99 = v18 + 40;

    v44 = 0;
    v45 = v25;
    v46 = v43;
    v101 = v42;
    v103 = v18;
    v102 = v37;
    while (v41)
    {
LABEL_12:
      v50 = *(v37 + 56);
      v51 = *(v46 + 72);
      v52 = v106;
      sub_22CF0CB84(v50 + v51 * (__clz(__rbit64(v41)) | (v44 << 6)), v106, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v54 = *v52;
      v53 = v52[1];

      sub_22CF289A8(v52, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      swift_beginAccess();
      v55 = *(v1 + 16);
      v112 = v54;
      v56 = sub_22CEEC698(v54, v53);
      if (v57)
      {
        v58 = v56;
        v59 = *(v1 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v1 + 16);
        v114 = v61;
        *(v1 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CF28C5C();
          v61 = v114;
        }

        v62 = *(*(v61 + 48) + 16 * v58 + 8);

        v63 = *(v61 + 56) + v58 * v51;
        v64 = v108;
        sub_22CF0FF70(v63, v108, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        sub_22CF28D00(v58, v61);
        v65 = *(v1 + 16);
        *(v1 + 16) = v61;

        v66 = 0;
      }

      else
      {
        v66 = 1;
        v64 = v108;
      }

      (*v105)(v64, v66, 1, v107);
      sub_22CEEC3D8(v64, &qword_27D9F2A78, &unk_22D01B130);
      swift_endAccess();
      swift_beginAccess();
      v67 = v45;
      (*v104)(v110, v45, v111);
      v68 = *(v1 + 17);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(v1 + 17);
      v70 = v114;
      v71 = v1;
      *(v1 + 17) = 0x8000000000000000;
      v73 = sub_22CEEC698(v112, v53);
      v74 = v70[2];
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v77 = v72;
      if (v70[3] >= v76)
      {
        if ((v69 & 1) == 0)
        {
          sub_22CFB7B8C();
        }
      }

      else
      {
        sub_22CFBB188(v76, v69);
        v78 = sub_22CEEC698(v112, v53);
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_33;
        }

        v73 = v78;
      }

      v37 = v102;
      if (v77)
      {

        v47 = v114;
        v18 = v103;
        (*(v103 + 40))(v114[7] + *(v103 + 72) * v73, v110, v111);
      }

      else
      {
        v47 = v114;
        v114[(v73 >> 6) + 8] |= 1 << v73;
        v80 = (v47[6] + 16 * v73);
        v81 = v111;
        *v80 = v112;
        v80[1] = v53;
        v18 = v103;
        (*(v103 + 32))(v47[7] + *(v103 + 72) * v73, v110, v81);
        v82 = v47[2];
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          goto LABEL_31;
        }

        v47[2] = v84;
      }

      v41 &= v41 - 1;
      v1 = v71;
      v48 = *(v71 + 17);
      *(v71 + 17) = v47;

      swift_endAccess();
      v45 = v67;
      v46 = v109;
      v42 = v101;
    }

    while (1)
    {
      v49 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v49 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v49);
      ++v44;
      if (v41)
      {
        v44 = v49;
        goto LABEL_12;
      }
    }

    if (*(v37 + 16))
    {
      v112 = v45;
      v86 = *(v1 + 3);
      v87 = swift_allocObject();
      *(v87 + 16) = v37;
      *(v87 + 24) = v1;
      aBlock[4] = sub_22CF297C4;
      aBlock[5] = v87;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_65;
      v88 = _Block_copy(aBlock);

      v89 = v96;
      sub_22D0164EC();
      v114 = MEMORY[0x277D84F90];
      sub_22CEF87FC(&qword_28143FA60, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CF0EDA8();
      v90 = v93;
      v91 = v95;
      sub_22D016ADC();
      v45 = v112;
      MEMORY[0x2318C5B10](0, v89, v90, v88);
      _Block_release(v88);
      (*(v98 + 8))(v90, v91);
      (*(v97 + 8))(v89, v94);
    }

    sub_22CF28F14(v85);

    return (*(v18 + 8))(v45, v111);
  }

  else
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_22D016E1C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF27D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22CEE9DF8(a1, a2, a3, sub_22CF27DF8, sub_22CF27DF8);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF27DF8(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v35 = a4;
  v30 = a2;
  v31 = a1;
  v5 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  result = MEMORY[0x28223BE20](v5 - 8, v7);
  v32 = 0;
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v36 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v37 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v36[7];
    v23 = (v36[6] + 16 * v21);
    v24 = v23[1];
    v38[0] = *v23;
    v38[1] = v24;
    v25 = v33;
    v26 = v21;
    sub_22CF07D60(v22 + *(v34 + 72) * v21, v33, type metadata accessor for XPCInputParticipant.ActivityUpdate);

    v27 = v39;
    v28 = v35(v38, v25);
    sub_22CF1CB18(v25, type metadata accessor for XPCInputParticipant.ActivityUpdate);

    v39 = v27;
    if (v27)
    {
      return result;
    }

    v16 = v37;
    if (v28)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_22CEE4728(v31, v30, v32, v36, type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      }
    }
  }

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
      return sub_22CEE4728(v31, v30, v32, v36, type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF28070(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v27 - v9;
  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2A80, &unk_22D019B70);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v22 = (v27 - v21);
  v23 = *a1;
  v24 = a1[1];
  *v22 = v23;
  v22[1] = v24;
  sub_22CF0CB84(a2, v27 + *(v20 + 56) - v21, type metadata accessor for XPCInputParticipant.ActivityUpdate);

  sub_22CF282EC(v23, v24, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22CEEC3D8(v10, &qword_27D9F2648, &unk_22D018BC0);
    v25 = 0;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v25 = sub_22D01428C();
    (*(v12 + 8))(v16, v11);
  }

  sub_22CEEC3D8(v22, &unk_27D9F2A80, &unk_22D019B70);
  return v25 & 1;
}

uint64_t sub_22CF282EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v73 = a1;
  v74 = sub_22D01430C();
  v7 = *(v74 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v74, v9);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v69 = &v66 - v13;
  v14 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v15 = *(v14 - 8);
  v70 = v14;
  v71 = v15;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v72 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v66 - v26;
  v28 = sub_22D01659C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = (&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v4[2];
  *v33 = v34;
  (*(v29 + 104))(v33, *MEMORY[0x277D85200], v28);
  v35 = v34;
  LOBYTE(v34) = sub_22D0165BC();
  result = (*(v29 + 8))(v33, v28);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  swift_beginAccess();
  v37 = v4[15];
  if (!*(v37 + 16))
  {
    goto LABEL_13;
  }

  v38 = v4[15];

  v39 = sub_22CEEC698(v73, a2);
  if ((v40 & 1) == 0)
  {

LABEL_13:
    v64 = type metadata accessor for Activity();
    v45 = 1;
    (*(*(v64 - 8) + 56))(v27, 1, 1, v64);
    sub_22CEEC3D8(v27, &qword_27D9F3810, &unk_22D018FA0);
LABEL_14:
    v65 = v74;
    return (*(v7 + 56))(a3, v45, 1, v65);
  }

  v41 = v39;
  v67 = a3;
  v42 = *(v37 + 56);
  v43 = type metadata accessor for Activity();
  v44 = *(v43 - 8);
  sub_22CF0CB84(v42 + *(v44 + 72) * v41, v27, type metadata accessor for Activity);

  v45 = 1;
  (*(v44 + 56))(v27, 0, 1, v43);
  sub_22CEEC3D8(v27, &qword_27D9F3810, &unk_22D018FA0);
  swift_beginAccess();
  v46 = v4[16];
  if (!*(v46 + 16))
  {
    a3 = v67;
    goto LABEL_14;
  }

  v47 = v4[16];

  v48 = a2;
  v49 = sub_22CEEC698(v73, a2);
  a3 = v67;
  v50 = v74;
  if ((v51 & 1) == 0)
  {

    v45 = 1;
    v65 = v50;
    return (*(v7 + 56))(a3, v45, 1, v65);
  }

  sub_22CF0CB84(*(v46 + 56) + *(v71 + 72) * v49, v20, type metadata accessor for XPCInputParticipant.ActivityUpdate);

  v52 = v72;
  sub_22CF0FF70(v20, v72, type metadata accessor for XPCInputParticipant.ActivityUpdate);
  swift_beginAccess();
  v53 = v4[17];
  if (!*(v53 + 16))
  {
LABEL_19:
    (*(v7 + 16))(a3, v52 + *(v70 + 28), v50);
LABEL_20:
    sub_22CF289A8(v52, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v65 = v50;
    v45 = 0;
    return (*(v7 + 56))(a3, v45, 1, v65);
  }

  v54 = v4[17];

  v55 = sub_22CEEC698(v73, v48);
  if ((v56 & 1) == 0)
  {

    goto LABEL_19;
  }

  v57 = *(v53 + 56) + *(v7 + 72) * v55;
  v58 = v68;
  v71 = *(v7 + 16);
  (v71)(v68, v57, v50);

  (*(v7 + 32))(v69, v58, v50);
  result = __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
  v59 = *(*result + 16);
  if (!*(v59 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_22CF259D0(1);
  if (v60)
  {
    v61 = v73;
    if (sub_22CF25A3C(v73, v48, *(*(v59 + 56) + 8 * result)))
    {
      v62 = *__swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
      sub_22CF718F0(v61, v48);
      v63 = v69;
      sub_22D01425C();
      (*(v7 + 8))(v63, v50);
    }

    else
    {
      (*(v7 + 8))(v69, v50);
      (v71)(a3, v52 + *(v70 + 28), v50);
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22CF289A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22CF28A08(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v43 = a4;
  v7 = v4;
  v8 = a1(0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v41 = &v40 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v4;
  v13 = sub_22D016D1C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v40 = v7;
    result = (v13 + 64);
    v16 = v12 + 64;
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 64 + 8 * v17)
    {
      result = memmove(result, (v12 + 64), 8 * v17);
    }

    v19 = 0;
    v20 = *(v12 + 16);
    v44 = v14;
    *(v14 + 16) = v20;
    v21 = 1 << *(v12 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v12 + 64);
    v24 = (v21 + 63) >> 6;
    if (v23)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v45 = (v23 - 1) & v23;
LABEL_17:
        v28 = v25 | (v19 << 6);
        v29 = 16 * v28;
        v30 = *(v12 + 56);
        v31 = (*(v12 + 48) + 16 * v28);
        v32 = v12;
        v33 = *v31;
        v34 = v31[1];
        v35 = v41;
        v36 = *(v42 + 72) * v28;
        v37 = v43;
        sub_22CF28C98(v30 + v36, v41, v43);
        v38 = v44;
        v39 = (*(v44 + 48) + v29);
        *v39 = v33;
        v39[1] = v34;
        v12 = v32;
        sub_22CEF0B08(v35, *(v38 + 56) + v36, v37);

        v23 = v45;
      }

      while (v45);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v14 = v44;
        goto LABEL_21;
      }

      v27 = *(v16 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v45 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

uint64_t sub_22CF28C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22CF28D18(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22D016AFC() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v15 = sub_22D016ECC();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CF28F14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v105 = v90 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2A80, &unk_22D019B70);
  v6 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104, v7);
  v101 = (v90 - v8);
  v103 = sub_22D01430C();
  v9 = *(v103 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v103, v11);
  v14 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v90 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v90 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v91 = v90 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v92 = v90 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v95 = v90 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v96 = v90 - v33;
  v34 = sub_22D01659C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = (v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v1[2];
  *v39 = v40;
  (*(v35 + 104))(v39, *MEMORY[0x277D85200], v34);
  v90[1] = v40;
  LOBYTE(v40) = sub_22D0165BC();
  result = (*(v35 + 8))(v39, v34);
  if (v40)
  {
    v93 = v22;
    v94 = v14;
    v42 = v1[19];

    sub_22D014E9C();

    swift_beginAccess();
    v43 = v1[16];
    v44 = v43 + 64;
    v45 = 1 << *(v43 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v43 + 64);
    v48 = (v45 + 63) >> 6;
    v100 = (v9 + 48);
    v97 = (v9 + 32);
    v98 = v9;
    v106 = v43;
    result = swift_bridgeObjectRetain_n();
    v49 = 0;
    v99 = MEMORY[0x277D84F90];
    v102 = v1;
LABEL_5:
    v50 = v49;
    if (!v47)
    {
      goto LABEL_7;
    }

    do
    {
      v51 = v18;
      v49 = v50;
LABEL_11:
      v52 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v53 = v52 | (v49 << 6);
      v54 = *(v106 + 56);
      v55 = (*(v106 + 48) + 16 * v53);
      v56 = *v55;
      v57 = v55[1];
      v58 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
      v59 = v101;
      sub_22CF0CB84(v54 + *(*(v58 - 8) + 72) * v53, v101 + *(v104 + 48), type metadata accessor for XPCInputParticipant.ActivityUpdate);
      *v59 = v56;
      v59[1] = v57;

      v60 = v105;
      v1 = v102;
      sub_22CF282EC(v56, v57, v105);
      sub_22CEEC3D8(v59, &unk_27D9F2A80, &unk_22D019B70);
      if ((*v100)(v60, 1, v103) != 1)
      {
        v61 = *v97;
        (*v97)(v91, v60, v103);
        v18 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_22CFCE548(0, v99[2] + 1, 1, v99);
        }

        v63 = v99[2];
        v62 = v99[3];
        v64 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          v90[0] = v63 + 1;
          v67 = sub_22CFCE548(v62 > 1, v63 + 1, 1, v99);
          v64 = v90[0];
          v99 = v67;
        }

        v65 = v98;
        v66 = v99;
        v99[2] = v64;
        result = (v61)(v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v63, v91, v103);
        goto LABEL_5;
      }

      result = sub_22CEEC3D8(v60, &qword_27D9F2648, &unk_22D018BC0);
      v50 = v49;
      v18 = v51;
    }

    while (v47);
    while (1)
    {
LABEL_7:
      v49 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v49 >= v48)
      {
        break;
      }

      v47 = *(v44 + 8 * v49);
      ++v50;
      if (v47)
      {
        v51 = v18;
        goto LABEL_11;
      }
    }

    v68 = v95;
    sub_22D01423C();
    v69 = v99[2];
    if (v69)
    {
      v70 = v97;
      v71 = *(v98 + 16);
      v72 = v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v104 = *(v98 + 72);
      v105 = v71;
      v106 = v98 + 16;
      v73 = (v98 + 8);
      v101 = (v97 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      v74 = v18;
      v75 = v92;
      v76 = v103;
      do
      {
        (v105)(v75, v72, v76);
        sub_22CEF87FC(&qword_281443A30, MEMORY[0x277CC9578]);
        v77 = sub_22D01663C();
        v78 = (v77 & 1) == 0;
        if (v77)
        {
          v79 = v68;
        }

        else
        {
          v79 = v75;
        }

        if (v78)
        {
          v80 = v68;
        }

        else
        {
          v80 = v75;
        }

        (*v73)(v79, v76);
        v81 = *v70;
        (*v70)(v74, v80, v76);
        v81(v68, v74, v76);
        v72 += v104;
        --v69;
      }

      while (v69);

      v1 = v102;
      v82 = v98;
    }

    else
    {

      v82 = v98;
      v81 = *v97;
    }

    v83 = v96;
    v84 = v103;
    v81(v96, v68, v103);
    v85 = v93;
    sub_22D01423C();
    v86 = sub_22D01428C();
    v87 = *(v82 + 8);
    v87(v85, v84);
    v88 = v94;
    if (v86)
    {
      sub_22D0142DC();
      if (sub_22D01427C())
      {
        v89 = v1[19];

        sub_22D01424C();
        swift_allocObject();
        swift_weakInit();

        sub_22D014E8C();

        v87(v88, v84);
        v87(v83, v84);
      }

      sub_22CF2737C();
      v87(v88, v84);
    }

    return (v87)(v83, v84);
  }

  else
  {
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF29780()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF297CC(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v77 = sub_22D01483C();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v77, v5);
  v76 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22D01436C();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v75, v9);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22D01430C();
  v11 = *(v91 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v91, v13);
  v83 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v89 = *(v95 - 8);
  v15 = *(v89 + 64);
  v17 = MEMORY[0x28223BE20](v95, v16);
  v94 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v90 = &v71 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v88 = (&v71 - v24);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = (&v71 - v27);
  MEMORY[0x28223BE20](v26, v29);
  v86 = &v71 - v30;
  v31 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a1 + 64);
  v93 = (v32 + 63) >> 6;
  v84 = (v11 + 8);
  v73 = (v7 + 8);
  v72 = (v3 + 16);

  v36 = 0;
  *&v37 = 136446979;
  v71 = v37;
  v78 = a1;
  v87 = v28;
  v85 = a1 + 64;
  while (v34)
  {
    v38 = v94;
LABEL_13:
    v40 = v86;
    sub_22CF0CB84(*(a1 + 56) + *(v89 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v86, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    sub_22CF0FF70(v40, v28, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v41 = v83;
    sub_22D0142DC();
    v42 = *(v95 + 28);
    sub_22D01424C();
    v44 = v43;
    (*v84)(v41, v91);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v45 = sub_22D01637C();
    __swift_project_value_buffer(v45, qword_281444498);
    v46 = v88;
    sub_22CF0CB84(v28, v88, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v47 = v90;
    sub_22CF0CB84(v28, v90, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    sub_22CF0CB84(v28, v38, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v48 = sub_22D01636C();
    v49 = sub_22D01690C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = v48;
      v51 = v50;
      v82 = swift_slowAlloc();
      v96[0] = v82;
      *v51 = v71;
      v80 = v49;
      v52 = *v46;
      v53 = v46[1];

      v79 = type metadata accessor for XPCInputParticipant.ActivityUpdate;
      sub_22CF289A8(v46, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v54 = sub_22CEEE31C(v52, v53, v96);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2082;
      v55 = v95;
      v56 = v47 + *(v95 + 24);
      v57 = v74;
      sub_22D01466C();
      sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0]);
      v58 = v75;
      v59 = sub_22D016DEC();
      v61 = v60;
      (*v73)(v57, v58);
      v62 = v47;
      v63 = v79;
      sub_22CF289A8(v62, v79);
      v64 = sub_22CEEE31C(v59, v61, v96);

      *(v51 + 14) = v64;
      *(v51 + 22) = 2081;
      (*v72)(v76, v38 + *(v55 + 20), v77);
      v65 = sub_22D01669C();
      v67 = v66;
      sub_22CF289A8(v38, v63);
      v68 = sub_22CEEE31C(v65, v67, v96);
      a1 = v78;

      *(v51 + 24) = v68;
      *(v51 + 32) = 2050;
      *(v51 + 34) = v44;
      v69 = v81;
      _os_log_impl(&dword_22CEE1000, v81, v80, "Publishing pended activity update for %{public}s with payload %{public}s for XPC participant content source %{private}s after pended delay %{public}fs", v51, 0x2Au);
      v70 = v82;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v70, -1, -1);
      MEMORY[0x2318C6860](v51, -1, -1);
    }

    else
    {

      sub_22CF289A8(v38, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      sub_22CF289A8(v47, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      sub_22CF289A8(v46, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    }

    v34 &= v34 - 1;
    v28 = v87;
    sub_22CF29F78(v87);
    result = sub_22CF289A8(v28, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v31 = v85;
  }

  v38 = v94;
  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v93)
    {
    }

    v34 = *(v31 + 8 * v39);
    ++v36;
    if (v34)
    {
      v36 = v39;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22CF29F78(void *a1)
{
  v2 = v1;
  v110 = a1;
  v107 = type metadata accessor for ActivityParticipantEvent(0);
  v3 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22D01483C();
  v109 = *(v106 - 8);
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v106, v8);
  v102 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01436C();
  v100 = *(v10 - 8);
  v101 = v10;
  v11 = *(v100 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v14 = *(*(v108 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v108, v15);
  v105 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v104 = &v93 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v103 = (&v93 - v22);
  v23 = sub_22D01659C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + 16);
  *v28 = v29;
  v30 = v24[13];
  v30(v28, *MEMORY[0x277D851F0], v23);
  v31 = v29;
  v32 = sub_22D0165BC();
  v33 = v24[1];
  v33(v28, v23);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v34 = *(v2 + 24);
  *v28 = v34;
  v30(v28, *MEMORY[0x277D85200], v23);
  v35 = v34;
  LOBYTE(v34) = sub_22D0165BC();
  v33(v28, v23);
  if ((v34 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2328, &qword_22D019B80);
  sub_22D01699C();
  v28 = v111[0];
  if (v111[0])
  {
    v97 = v2;
    v98 = v111[1];
    if (qword_28143FB58 == -1)
    {
LABEL_5:
      v36 = sub_22D01637C();
      __swift_project_value_buffer(v36, qword_281444498);
      v37 = v110;
      v38 = v103;
      sub_22CF0CB84(v110, v103, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v39 = v104;
      sub_22CF0CB84(v37, v104, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v40 = v105;
      sub_22CF0CB84(v37, v105, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v41 = sub_22D01636C();
      v42 = sub_22D01690C();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v106;
      v45 = v108;
      v46 = v109;
      if (v43)
      {
        v47 = swift_slowAlloc();
        v95 = v42;
        v48 = v47;
        v96 = swift_slowAlloc();
        v111[0] = v96;
        *v48 = 136446723;
        v49 = v45;
        v94 = v41;
        v50 = v38;
        v51 = *v38;
        v52 = v38[1];

        v93 = type metadata accessor for XPCInputParticipant.ActivityUpdate;
        sub_22CF289A8(v50, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        v53 = sub_22CEEE31C(v51, v52, v111);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2082;
        v54 = v39 + *(v49 + 24);
        v103 = v28;
        v55 = v99;
        sub_22D01466C();
        sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0]);
        v56 = v40;
        v57 = v44;
        v58 = v109;
        v59 = v39;
        v60 = v101;
        v61 = sub_22D016DEC();
        v63 = v62;
        (*(v100 + 8))(v55, v60);
        v64 = v59;
        v65 = v93;
        sub_22CF289A8(v64, v93);
        v66 = sub_22CEEE31C(v61, v63, v111);

        *(v48 + 14) = v66;
        *(v48 + 22) = 2081;
        v67 = v108;
        (*(v58 + 16))(v102, v56 + *(v108 + 20), v57);
        v68 = sub_22D01669C();
        v70 = v69;
        sub_22CF289A8(v56, v65);
        v71 = sub_22CEEE31C(v68, v70, v111);
        v72 = v57;

        *(v48 + 24) = v71;
        v73 = v94;
        _os_log_impl(&dword_22CEE1000, v94, v95, "Updating activity %{public}s with payload %{public}s for XPC participant content source %{private}s", v48, 0x20u);
        v74 = v96;
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v74, -1, -1);
        MEMORY[0x2318C6860](v48, -1, -1);

        v75 = v67;
      }

      else
      {

        sub_22CF289A8(v40, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        sub_22CF289A8(v39, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        sub_22CF289A8(v38, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        v75 = v45;
        v72 = v44;
        v58 = v46;
      }

      v80 = v110;
      v82 = *v110;
      v81 = v110[1];
      v83 = v107;
      v84 = *(v107 + 24);
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      (*(v58 + 16))(&v6[v83[7]], &v80[*(v75 + 20)], v72);
      v85 = v83[9];
      v86 = *(v75 + 24);
      v87 = sub_22D0146BC();
      v88 = *(v87 - 8);
      (*(v88 + 16))(&v6[v85], &v80[v86], v87);
      (*(v88 + 56))(&v6[v85], 0, 1, v87);
      *v6 = v82;
      *(v6 + 1) = v81;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      v89 = &v6[v83[8]];
      *v89 = v97;
      *(v89 + 1) = &off_28402A298;
      v6[v83[10]] = 0;
      ObjectType = swift_getObjectType();
      v91 = v98;
      v92 = *(v98 + 24);

      v92(v6, ObjectType, v91);
      swift_unknownObjectRelease();
      sub_22CF289A8(v6, type metadata accessor for ActivityParticipantEvent);
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v76 = sub_22D01637C();
  __swift_project_value_buffer(v76, qword_281444498);
  v77 = sub_22D01636C();
  v78 = sub_22D0168EC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_22CEE1000, v77, v78, "XPCInputParticipant has no ActivityManager", v79, 2u);
    MEMORY[0x2318C6860](v79, -1, -1);
  }
}

uint64_t sub_22CF2A87C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 216);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22CF2A8D4(uint64_t a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = *(v1 + 40);
  sub_22CEFEA98(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityParticipantEvent);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_22CF0A72C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActivityParticipantEvent);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CF2AB60;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22CEF3C48;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_37_1;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_22CF2AAFC()
{
  v1 = *(type metadata accessor for ActivityParticipantEvent(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v3 = *(v0 + 16);
  sub_22CF2AB64(v2);
}

void sub_22CF2AB64(uint64_t *a1)
{
  v103 = type metadata accessor for ActivityParticipantEvent(0);
  v3 = *(*(v103 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v103, v4);
  v104 = (&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5, v7);
  v101 = &v93 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v102 = (&v93 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v95 = (&v93 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v98 = &v93 - v18;
  v19 = sub_22D0146BC();
  v99 = *(v19 - 8);
  v100 = v19;
  v20 = *(v99 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v94 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D01486C();
  v96 = *(v23 - 8);
  v97 = v23;
  v24 = *(v96 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Activity();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22D01659C();
  v39 = *(v38 - 1);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  v43 = (&v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v1[5];
  *v43 = v44;
  (*(v39 + 104))(v43, *MEMORY[0x277D85200], v38);
  v45 = v44;
  LOBYTE(v44) = sub_22D0165BC();
  v47 = *(v39 + 8);
  v46 = v39 + 8;
  v47(v43, v38);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v50 = sub_22D01637C();
    __swift_project_value_buffer(v50, qword_281444498);
    v51 = v104;
    sub_22CEFEA98(v46, v104, type metadata accessor for ActivityParticipantEvent);
    v52 = sub_22D01636C();
    v53 = sub_22D0168EC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v105[0] = v55;
      *v54 = 136446210;
      v56 = *v51;
      v57 = v51[1];

      sub_22CF0A5FC(v51, type metadata accessor for ActivityParticipantEvent);
      v58 = sub_22CEEE31C(v56, v57, v105);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_22CEE1000, v52, v53, "Unexpected error occurred when evaluating event obsolecence for activity: %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x2318C6860](v55, -1, -1);
      MEMORY[0x2318C6860](v54, -1, -1);

      return;
    }

    v69 = type metadata accessor for ActivityParticipantEvent;
    v70 = v51;
    goto LABEL_22;
  }

  v48 = sub_22CF2B748(a1);
  v49 = a1;
  if (v48)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v59 = sub_22D01637C();
    __swift_project_value_buffer(v59, qword_281444498);
    v60 = v102;
    sub_22CEFEA98(a1, v102, type metadata accessor for ActivityParticipantEvent);
    v61 = sub_22D01636C();
    v62 = sub_22D0168EC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v105[0] = v64;
      *v63 = 136446210;
      v65 = *v60;
      v66 = v60[1];

      sub_22CF0A5FC(v60, type metadata accessor for ActivityParticipantEvent);
      v67 = sub_22CEEE31C(v65, v66, v105);

      *(v63 + 4) = v67;
      v68 = "Event is obsolete for activity: %{public}s";
LABEL_10:
      _os_log_impl(&dword_22CEE1000, v61, v62, v68, v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x2318C6860](v64, -1, -1);
      MEMORY[0x2318C6860](v63, -1, -1);

      return;
    }

LABEL_21:

    v69 = type metadata accessor for ActivityParticipantEvent;
    v70 = v60;
    goto LABEL_22;
  }

  v71 = v103;
  sub_22CEFEA98(a1 + *(v103 + 24), v37, type metadata accessor for ActivityParticipantEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22CF0A72C(v37, v32, type metadata accessor for Activity);
    v75 = (a1 + v71[8]);
    v76 = *v75;
    v77 = v75[1];
    ObjectType = swift_getObjectType();
    v79 = v71;
    v80 = ObjectType;
    v81 = a1[2];
    v82 = a1[3];
    v83 = *(v49 + v79[10]);
    v84 = *(v77 + 8);
    swift_unknownObjectRetain();
    sub_22CF0A7FC(v32, v76, v81, v82, v83, v1, v80, v84);
    swift_unknownObjectRelease();
    v69 = type metadata accessor for Activity;
    v70 = v32;
LABEL_22:
    sub_22CF0A5FC(v70, v69);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v74 = v96;
    v73 = v97;
    (*(v96 + 32))(v27, v37, v97);
    sub_22CF35D50(*v49, v49[1], v49 + v71[9], v27, *(v49 + v71[8]), *(v49 + v71[8] + 8), v49 + v71[7], v49[2], v49[3], *(v49 + v71[10]));
    (*(v74 + 8))(v27, v73);
    return;
  }

  v85 = v98;
  sub_22CEEB6DC(a1 + v71[9], v98, &qword_27D9F22F8, &unk_22D018940);
  v87 = v99;
  v86 = v100;
  if ((*(v99 + 48))(v85, 1, v100) == 1)
  {
    sub_22CEEC3D8(v85, &qword_27D9F22F8, &unk_22D018940);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v88 = sub_22D01637C();
    __swift_project_value_buffer(v88, qword_281444498);
    v60 = v95;
    sub_22CEFEA98(a1, v95, type metadata accessor for ActivityParticipantEvent);
    v61 = sub_22D01636C();
    v62 = sub_22D0168EC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v105[0] = v64;
      *v63 = 136446210;
      v89 = *v60;
      v90 = v60[1];

      sub_22CF0A5FC(v60, type metadata accessor for ActivityParticipantEvent);
      v91 = sub_22CEEE31C(v89, v90, v105);

      *(v63 + 4) = v91;
      v68 = "Update did not include payload for activity: %{public}s";
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v92 = v94;
  (*(v87 + 32))(v94, v85, v86);
  sub_22CF2C224(*v49, v49[1], v92, *(v49 + v71[8]), *(v49 + v71[8] + 8), v49 + v71[7], v49[2], v49[3], *(v49 + v71[10]));
  (*(v87 + 8))(v92, v86);
}

uint64_t sub_22CF2B748(uint64_t *a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v111 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v8);
  v103 = (&v100 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v106 = &v100 - v13;
  v14 = sub_22D0146BC();
  v107 = *(v14 - 8);
  v108 = v14;
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Activity();
  v114 = *(v112 - 8);
  v18 = *(v114 + 64);
  MEMORY[0x28223BE20](v112, v19);
  v105 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v113 = &v100 - v24;
  v109 = sub_22D01430C();
  v116 = *(v109 - 8);
  v25 = *(v116 + 64);
  v27 = MEMORY[0x28223BE20](v109, v26);
  v101 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v104 = &v100 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v110 = &v100 - v33;
  v34 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22D01659C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = (&v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = v1;
  v45 = *(v1 + 40);
  *v44 = v45;
  (*(v40 + 104))(v44, *MEMORY[0x277D85200], v39);
  v46 = v45;
  LOBYTE(v45) = sub_22D0165BC();
  v48 = *(v40 + 8);
  v47 = v40 + 8;
  v48(v44, v39);
  if ((v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v49 = (a1 + *(v3 + 32));
  v50 = *v49;
  v51 = v49[1];
  ObjectType = swift_getObjectType();
  if ((*(v51 + 48))(ObjectType, v51))
  {
LABEL_5:
    v54 = 0;
    return v54 & 1;
  }

  v47 = a1;
  v53 = v3;
  sub_22CEFEA98(a1 + *(v3 + 24), v38, type metadata accessor for ActivityParticipantEvent.EventType);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_22CF0A5FC(v38, type metadata accessor for ActivityParticipantEvent.EventType);
    goto LABEL_5;
  }

  v56 = *a1;
  v57 = a1[1];
  v58 = v115;
  swift_beginAccess();
  v59 = *(v58 + 32);
  if (*(v59 + 16))
  {
    v60 = *(v58 + 32);

    v61 = sub_22CEEC698(v56, v57);
    v62 = v116;
    v64 = v113;
    v63 = v114;
    if (v65)
    {
      sub_22CEFEA98(*(v59 + 56) + *(v114 + 72) * v61, v113, type metadata accessor for Activity);
      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v67 = v112;
  }

  else
  {
    v66 = 1;
    v62 = v116;
    v67 = v112;
    v64 = v113;
    v63 = v114;
  }

  (*(v63 + 56))(v64, v66, 1, v67);
  if ((*(v63 + 48))(v64, 1, v67))
  {
    sub_22CEEC3D8(v64, &qword_27D9F3810, &unk_22D018FA0);
    if (qword_28143FB58 == -1)
    {
LABEL_15:
      v68 = sub_22D01637C();
      __swift_project_value_buffer(v68, qword_281444498);
      v69 = v111;
      sub_22CEFEA98(v47, v111, type metadata accessor for ActivityParticipantEvent);
      v70 = sub_22D01636C();
      v71 = sub_22D0168EC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v117 = v73;
        *v72 = 136446210;
        v74 = *v69;
        v75 = v69[1];

        sub_22CF0A5FC(v69, type metadata accessor for ActivityParticipantEvent);
        v76 = sub_22CEEE31C(v74, v75, &v117);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_22CEE1000, v70, v71, "Received an update for an unknown activity: %{public}s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x2318C6860](v73, -1, -1);
        MEMORY[0x2318C6860](v72, -1, -1);
      }

      else
      {

        sub_22CF0A5FC(v69, type metadata accessor for ActivityParticipantEvent);
      }

      sub_22CF3D1BC();
      v54 = swift_allocError();
      *v94 = 0;
      swift_willThrow();
      return v54 & 1;
    }

LABEL_28:
    swift_once();
    goto LABEL_15;
  }

  v77 = v105;
  sub_22CEFEA98(v64, v105, type metadata accessor for Activity);
  sub_22CEEC3D8(v64, &qword_27D9F3810, &unk_22D018FA0);
  v78 = v77 + *(v67 + 56);
  v79 = v104;
  sub_22D01469C();
  sub_22CF0A5FC(v77, type metadata accessor for Activity);
  v81 = v109;
  v80 = v110;
  (*(v62 + 32))(v110, v79, v109);
  v82 = v106;
  sub_22CEEB6DC(v47 + *(v53 + 36), v106, &qword_27D9F22F8, &unk_22D018940);
  v84 = v107;
  v83 = v108;
  if ((*(v107 + 48))(v82, 1, v108) == 1)
  {
    sub_22CEEC3D8(v82, &qword_27D9F22F8, &unk_22D018940);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v85 = sub_22D01637C();
    __swift_project_value_buffer(v85, qword_281444498);
    v86 = v103;
    sub_22CEFEA98(v47, v103, type metadata accessor for ActivityParticipantEvent);
    v87 = sub_22D01636C();
    v88 = sub_22D0168EC();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v117 = v90;
      *v89 = 136446210;
      v91 = *v86;
      v92 = v86[1];

      sub_22CF0A5FC(v86, type metadata accessor for ActivityParticipantEvent);
      v93 = sub_22CEEE31C(v91, v92, &v117);

      *(v89 + 4) = v93;
      v81 = v109;
      _os_log_impl(&dword_22CEE1000, v87, v88, "Received an update without a payload for activity: %{public}s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x2318C6860](v90, -1, -1);
      MEMORY[0x2318C6860](v89, -1, -1);
    }

    else
    {

      sub_22CF0A5FC(v86, type metadata accessor for ActivityParticipantEvent);
    }

    sub_22CF3D1BC();
    v54 = swift_allocError();
    *v99 = 1;
    swift_willThrow();
    (*(v62 + 8))(v110, v81);
  }

  else
  {
    v95 = v102;
    (*(v84 + 32))(v102, v82, v83);
    v96 = v101;
    sub_22D01469C();
    v97 = v80;
    v54 = sub_22D01427C();
    v98 = *(v62 + 8);
    v98(v96, v81);
    (*(v84 + 8))(v95, v83);
    v98(v97, v81);
  }

  return v54 & 1;
}

void sub_22CF2C224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v176 = a8;
  v175 = a7;
  v180 = a6;
  v181 = a4;
  v184 = a5;
  v182 = a3;
  v178 = sub_22D0146BC();
  v177 = *(v178 - 8);
  v13 = *(v177 + 64);
  MEMORY[0x28223BE20](v178, v14);
  v172 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for ActivityManagerEvent(0);
  v16 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174, v17);
  v188 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v173 = &v171 - v22;
  v179 = sub_22D01430C();
  v183 = *(v179 - 8);
  v23 = v183[8];
  v25 = MEMORY[0x28223BE20](v179, v24);
  v27 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v171 - v29;
  v31 = type metadata accessor for Activity();
  v185 = *(v31 - 8);
  v186 = v31;
  v32 = *(v185 + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v37);
  v187 = &v171 - v38;
  v39 = sub_22D01659C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = (&v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v10[5];
  *v44 = v45;
  (*(v40 + 104))(v44, *MEMORY[0x277D85200], v39);
  v46 = v45;
  LOBYTE(v45) = sub_22D0165BC();
  v48 = *(v40 + 8);
  v47 = v40 + 8;
  v48(v44, v39);
  if ((v45 & 1) == 0)
  {
    __break(1u);
LABEL_59:
    swift_once();
    goto LABEL_23;
  }

  swift_beginAccess();
  v49 = v10[3];
  v47 = a2;
  if (*(v49 + 16))
  {
    v50 = v10[3];

    v51 = sub_22CEEC698(a1, a2);
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v51);

      swift_beginAccess();
      v54 = v10[4];
      if (*(v54 + 16))
      {
        v55 = v10[4];

        v56 = sub_22CEEC698(a1, v47);
        if (v57)
        {
          sub_22CEFEA98(*(v54 + 56) + *(v185 + 72) * v56, v36, type metadata accessor for Activity);

          v58 = v36;
          v59 = v187;
          sub_22CF0A72C(v58, v187, type metadata accessor for Activity);
          if (sub_22CF0B5E0() == 1 && (v60 = swift_getObjectType(), ((v184[5].isa)(v60) & 1) == 0))
          {

            if (qword_28143FB58 != -1)
            {
              swift_once();
            }

            v109 = sub_22D01637C();
            __swift_project_value_buffer(v109, qword_281444498);

            v110 = sub_22D01636C();
            v111 = sub_22D0168EC();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v190[0] = v113;
              *v112 = 136446210;
              *(v112 + 4) = sub_22CEEE31C(a1, v47, v190);
              _os_log_impl(&dword_22CEE1000, v110, v111, "Received an update for a zombie activity: %{public}s", v112, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v113);
              MEMORY[0x2318C6860](v113, -1, -1);
              MEMORY[0x2318C6860](v112, -1, -1);
            }

            v114 = sub_22D014C3C();
            sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
            v107 = swift_allocError();
            (*(*(v114 - 8) + 104))(v115, *MEMORY[0x277CB95D0], v114);
            swift_willThrow();
          }

          else
          {
            v61 = v186;
            v62 = *(v59 + *(v186 + 36));

            v63 = sub_22D01482C();

            if (v63 & 1) != 0 || (sub_22D0147FC())
            {
              sub_22D01469C();
              v180 = *(v61 + 56);
              sub_22D01469C();
              sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578]);
              v64 = v179;
              v65 = sub_22D01663C();
              v67 = v183 + 1;
              v66 = v183[1];
              v66(v27, v64);
              v183 = v67;
              v66(v30, v64);
              v68 = v181;
              if (v65 & 1) == 0 || (v69 = v66, v70 = swift_getObjectType(), ((v184[6].isa)(v70)))
              {
                if (qword_28143FB58 != -1)
                {
                  swift_once();
                }

                v183 = v53;
                v71 = sub_22D01637C();
                __swift_project_value_buffer(v71, qword_281444498);

                v72 = sub_22D01636C();
                v73 = sub_22D01690C();

                v74 = os_log_type_enabled(v72, v73);
                v75 = v186;
                if (v74)
                {
                  v76 = swift_slowAlloc();
                  v77 = swift_slowAlloc();
                  v190[0] = v77;
                  *v76 = 136446210;
                  *(v76 + 4) = sub_22CEEE31C(a1, v47, v190);
                  _os_log_impl(&dword_22CEE1000, v72, v73, "Updating activity: %{public}s", v76, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v77);
                  v78 = v77;
                  v75 = v186;
                  MEMORY[0x2318C6860](v78, -1, -1);
                  MEMORY[0x2318C6860](v76, -1, -1);
                }

                v79 = v187;
                (*(v177 + 24))(v187 + v180, v182, v178);
                v80 = v173;
                sub_22CEFEA98(v79, v173, type metadata accessor for Activity);
                (*(v185 + 56))(v80, 0, 1, v75);
                swift_beginAccess();

                sub_22CF0BC5C(v80, a1, v47);
                swift_endAccess();
                isa = v184[1].isa;
                v82 = v79;
                v83 = v188;
                sub_22CEFEA98(v82, v188, type metadata accessor for Activity);
                v84 = v174;
                *(v83 + *(v174 + 20)) = 3;
                v85 = (v83 + v84[6]);
                *v85 = v68;
                v85[1] = isa;
                v86 = (v83 + v84[7]);
                v87 = v176;
                *v86 = v175;
                v86[1] = v87;
                *(v83 + v84[8]) = a9 & 1;
                type metadata accessor for ActivityManager.QueueActivityManager();
                v88 = swift_allocObject();
                *(v88 + 16) = v10;
                v89 = v183;
                v90 = v183[2];
                if (v90)
                {

                  swift_unknownObjectRetain();
                  v91 = v89 + 5;
                  do
                  {
                    if (*(v91 - 1) != v68)
                    {
                      v92 = *(v91 - 1);
                      ObjectType = swift_getObjectType();
                      v94 = *v91;
                      v95 = *(*v91 + 16);
                      swift_unknownObjectRetain();

                      v95(v188, v88, &off_28402C298, ObjectType, v94);
                      swift_unknownObjectRelease();
                    }

                    v91 += 2;
                    --v90;
                  }

                  while (v90);
                }

                else
                {

                  swift_unknownObjectRetain();
                }

                sub_22CF0A5FC(v188, type metadata accessor for ActivityManagerEvent);
                sub_22CF0A5FC(v187, type metadata accessor for Activity);
                return;
              }

              v129 = v178;
              if (qword_28143FB58 != -1)
              {
                swift_once();
              }

              v130 = sub_22D01637C();
              __swift_project_value_buffer(v130, qword_281444498);
              v131 = v177;
              v132 = v172;
              (*(v177 + 16))(v172, v182, v129);

              v133 = sub_22D01636C();
              v134 = v47;
              v135 = sub_22D0168EC();

              if (os_log_type_enabled(v133, v135))
              {
                v136 = a1;
                v137 = swift_slowAlloc();
                v188 = swift_slowAlloc();
                v189 = v188;
                *v137 = 136446722;
                *(v137 + 4) = sub_22CEEE31C(v136, v134, &v189);
                *(v137 + 12) = 2080;
                sub_22D01469C();
                sub_22CEF88D4(&unk_281443A20, MEMORY[0x277CC9578]);
                LODWORD(v185) = v135;
                v138 = v179;
                v139 = sub_22D016DEC();
                v141 = v140;
                v184 = v133;
                v69(v30, v138);
                (*(v131 + 8))(v132, v178);
                v142 = sub_22CEEE31C(v139, v141, &v189);

                *(v137 + 14) = v142;
                *(v137 + 22) = 2080;
                v143 = v187;
                swift_beginAccess();
                v144 = v143 + *(v186 + 56);
                sub_22D01469C();
                swift_endAccess();
                v145 = sub_22D016DEC();
                v147 = v146;
                v69(v30, v138);
                v148 = sub_22CEEE31C(v145, v147, &v189);

                *(v137 + 24) = v148;
                v149 = v184;
                _os_log_impl(&dword_22CEE1000, v184, v185, "Received an obsolete payload: %{public}s. Payload timestamp is %s. Activity timestamp is %s", v137, 0x20u);
                v150 = v188;
                swift_arrayDestroy();
                MEMORY[0x2318C6860](v150, -1, -1);
                MEMORY[0x2318C6860](v137, -1, -1);
              }

              else
              {

                (*(v131 + 8))(v132, v129);
                v143 = v187;
              }

              v151 = sub_22D014C3C();
              sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
              v107 = swift_allocError();
              (*(*(v151 - 8) + 104))(v152, *MEMORY[0x277CB95D0], v151);
              swift_willThrow();
              v128 = v143;
              goto LABEL_52;
            }

            if (qword_28143FB58 != -1)
            {
              swift_once();
            }

            v116 = sub_22D01637C();
            __swift_project_value_buffer(v116, qword_281444498);

            v117 = sub_22D01636C();
            v118 = sub_22D0168EC();

            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v190[0] = v120;
              *v119 = 136446210;
              *(v119 + 4) = sub_22CEEE31C(a1, v47, v190);
              _os_log_impl(&dword_22CEE1000, v117, v118, "Received an update from a content source that cannot contribute to the activity: %{public}s", v119, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v120);
              MEMORY[0x2318C6860](v120, -1, -1);
              MEMORY[0x2318C6860](v119, -1, -1);
            }

            v121 = a1;
            v122 = sub_22D014C3C();
            sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
            v107 = swift_allocError();
            v124 = v123;
            v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2338, &unk_22D018960);
            v126 = *(v125 + 48);
            v127 = (v124 + *(v125 + 64));
            *v124 = 0x657461647055;
            v124[1] = 0xE600000000000000;
            sub_22D01480C();
            *v127 = v121;
            v127[1] = v47;
            (*(*(v122 - 8) + 104))(v124, *MEMORY[0x277CB95D8], v122);
            swift_willThrow();
          }

          v128 = v187;
LABEL_52:
          sub_22CF0A5FC(v128, type metadata accessor for Activity);
LABEL_53:
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v153 = sub_22D01637C();
          __swift_project_value_buffer(v153, qword_281444498);
          v154 = sub_22D01415C();
          v155 = [v154 localizedDescription];
          v156 = sub_22D01667C();
          v158 = v157;

          v159 = v154;

          v160 = sub_22D01636C();
          v161 = sub_22D0168EC();

          if (os_log_type_enabled(v160, v161))
          {
            v188 = v156;
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v190[0] = v163;
            *v162 = 136446978;
            *(v162 + 4) = sub_22CEEE31C(0xD00000000000001ELL, 0x800000022D0215E0, v190);
            *(v162 + 12) = 2082;
            v164 = [v159 domain];
            v165 = sub_22D01667C();
            v167 = v166;

            v168 = sub_22CEEE31C(v165, v167, v190);

            *(v162 + 14) = v168;
            *(v162 + 22) = 2048;
            v169 = [v159 code];

            *(v162 + 24) = v169;
            *(v162 + 32) = 2082;
            v170 = sub_22CEEE31C(v188, v158, v190);

            *(v162 + 34) = v170;
            _os_log_impl(&dword_22CEE1000, v160, v161, "%{public}s: %{public}s (%ld) %{public}s", v162, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x2318C6860](v163, -1, -1);
            MEMORY[0x2318C6860](v162, -1, -1);
          }

          else
          {
          }

          return;
        }
      }

      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v101 = sub_22D01637C();
      __swift_project_value_buffer(v101, qword_281444498);

      v102 = sub_22D01636C();
      v103 = sub_22D0168EC();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v190[0] = v105;
        *v104 = 136446210;
        *(v104 + 4) = sub_22CEEE31C(a1, v47, v190);
        _os_log_impl(&dword_22CEE1000, v102, v103, "Received an update for an activity that does not exist: %{public}s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x2318C6860](v105, -1, -1);
        MEMORY[0x2318C6860](v104, -1, -1);
      }

      v106 = sub_22D014C3C();
      sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
      v107 = swift_allocError();
      (*(*(v106 - 8) + 104))(v108, *MEMORY[0x277CB95D0], v106);
      swift_willThrow();
      goto LABEL_53;
    }
  }

  if (qword_28143FB58 != -1)
  {
    goto LABEL_59;
  }

LABEL_23:
  v96 = sub_22D01637C();
  __swift_project_value_buffer(v96, qword_281444498);

  v97 = sub_22D01636C();
  v98 = sub_22D0168EC();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v191 = v100;
    *v99 = 136446210;
    *(v99 + 4) = sub_22CEEE31C(a1, v47, &v191);
    _os_log_impl(&dword_22CEE1000, v97, v98, "Received an update for an activity with no subscribers: %{public}s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x2318C6860](v100, -1, -1);
    MEMORY[0x2318C6860](v99, -1, -1);
  }
}

uint64_t sub_22CF2D7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_22CF2D87C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(v3 + 32) + 16);
  os_unfair_lock_lock(v7);
  v8 = *(v3 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_22CEEC698(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v16 = type metadata accessor for Activity();
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for Activity();
  v15 = *(v14 - 8);
  sub_22CF0F9C8(v13 + *(v15 + 72) * v12, a3);

  (*(v15 + 56))(a3, 0, 1, v14);
LABEL_6:
  os_unfair_lock_unlock(v7);
}

uint64_t sub_22CF2D9F0(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v35 - v13;
  v16 = *a2;
  v15 = a2[1];
  v17 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_7;
  }

  v19 = *(a1 + v17);

  v20 = sub_22CEEC698(v16, v15);
  if (v21)
  {
    v22 = v20;
    v23 = *(v18 + 56);
    v35 = a3;
    v36 = v23;
    v24 = type metadata accessor for Activity();
    v37 = v16;
    v25 = v24;
    v26 = *(v24 - 8);
    sub_22CF1C294(v36 + *(v26 + 72) * v22, v14, type metadata accessor for Activity);

    v27 = *(v26 + 56);
    v27(v14, 0, 1, v25);
    sub_22CEEC3D8(v14, &qword_27D9F3810, &unk_22D018FA0);
    sub_22CF1C294(a2, v11, type metadata accessor for Activity);
    v27(v11, 0, 1, v25);
    swift_beginAccess();

    sub_22CF0BC5C(v11, v37, v15);
    swift_endAccess();
    v28 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
    swift_beginAccess();
    v29 = *(a1 + v28);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = sub_22CF1C2FC(*(v29 + 16), 0);
      a3 = sub_22CF102C0(v38, v31 + 4, v30, v29);
      v14 = v38[2];

      sub_22CEE57FC();
      if (a3 != v30)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    a3 = v35;
    goto LABEL_10;
  }

LABEL_6:

LABEL_7:
  v32 = type metadata accessor for Activity();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  sub_22CEEC3D8(v14, &qword_27D9F3810, &unk_22D018FA0);
  v31 = MEMORY[0x277D84F90];
LABEL_10:
  v33 = *a3;
  *a3 = v31;
}

void sub_22CF2DD2C(uint64_t *a1)
{
  v3 = type metadata accessor for Activity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v98 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014CBC();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = *(v96 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v95 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v91 = &v86 - v14;
  v15 = sub_22D014A1C();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = *(v93 + 8);
  MEMORY[0x28223BE20](v15, v17);
  v92 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D014C4C();
  v90 = *(v19 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D014C8C();
  v25 = *(v24 - 8);
  v100 = v24;
  v101 = v25;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v88 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v86 - v31;
  v33 = sub_22D01461C();
  v34 = *(v33 - 1);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v86 - v41;
  v102 = a1;
  if (sub_22CF16990(a1))
  {
    v43 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasOutsizedPayloadsEntitlement);
    v44 = sub_22D01464C();
    if (v43 == 1)
    {
      if (v44 + 0x4000000000000000 < 0)
      {
        __break(1u);
        goto LABEL_43;
      }

      v44 *= 2;
    }

    v89 = v44;
    v99 = v1;
    v86 = *(v3 + 56);
    sub_22D01467C();
    v45 = sub_22D0145FC();
    v47 = v46;
    v49 = *(v34 + 8);
    v48 = v34 + 8;
    v87 = v49;
    v49(v42, v33);
    v50 = v47;
    v51 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      if (v51 != 2)
      {
        sub_22CEE7524(v45, v47);
        v45 = v99;
        if (v89 < 0)
        {
LABEL_14:
          if (qword_28143FB60 == -1)
          {
LABEL_15:
            v55 = sub_22D01637C();
            __swift_project_value_buffer(v55, qword_2814444B0);
            v19 = v98;
            sub_22CF1C294(v102, v98, type metadata accessor for Activity);
            v56 = sub_22D01636C();
            v32 = sub_22D0168EC();
            if (!os_log_type_enabled(v56, v32))
            {
              sub_22CF0C71C(v19);
LABEL_40:

              return;
            }

            v23 = swift_slowAlloc();
            *v23 = 134349312;
            v57 = v19 + *(v3 + 56);
            sub_22D01467C();
            v58 = sub_22D0145FC();
            v60 = v59;
            v87(v39, v33);
            v61 = v60;
            v62 = v60 >> 62;
            if ((v60 >> 62) <= 1)
            {
              if (v62)
              {
                sub_22CEE7524(v58, v60);
                if (__OFSUB__(HIDWORD(v58), v58))
                {
                  __break(1u);

                  os_unfair_lock_unlock(HIDWORD(v58));
                  __break(1u);
                  return;
                }

                v63 = HIDWORD(v58) - v58;
              }

              else
              {
                sub_22CEE7524(v58, v60);
                v63 = BYTE6(v60);
              }

              goto LABEL_39;
            }

            if (v62 != 2)
            {
              sub_22CEE7524(v58, v60);
              v63 = 0;
LABEL_39:
              sub_22CF0C71C(v19);
              *(v23 + 4) = v63;
              *(v23 + 6) = 2050;
              *(v23 + 14) = v89;
              _os_log_impl(&dword_22CEE1000, v56, v32, "Content state size %{public}ld exceeds maximum size %{public}ld", v23, 0x16u);
              MEMORY[0x2318C6860](v23, -1, -1);
              goto LABEL_40;
            }

            v78 = *(v58 + 16);
            v77 = *(v58 + 24);
            sub_22CEE7524(v58, v61);
            v54 = __OFSUB__(v77, v78);
            v63 = v77 - v78;
            if (!v54)
            {
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_33;
          }

LABEL_43:
          swift_once();
          goto LABEL_15;
        }

LABEL_20:
        v64 = *(*(v45 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
        os_unfair_lock_lock(v64);
        sub_22CF2E784(v45, v102, v103);
        os_unfair_lock_unlock(v64);
        if ((v103[0] & 1) == 0)
        {
          return;
        }

        v65 = sub_22CF0B5E0();
        v66 = v90;
        (*(v90 + 104))(v23, **(&unk_2787486F8 + v65), v19);
        (*(v66 + 32))(v32, v23, v19);
        v67 = *(v101 + 104);
        v67(v32, *MEMORY[0x277CB9630], v100);
        v33 = sub_22CF0D6DC(0, 1, 1, MEMORY[0x277D84F90]);
        v69 = v33[2];
        v68 = v33[3];
        if (v69 >= v68 >> 1)
        {
          v33 = sub_22CF0D6DC(v68 > 1, v69 + 1, 1, v33);
        }

        v19 = v92;
        v33[2] = v69 + 1;
        v47 = *(v101 + 32);
        v3 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v48 = *(v101 + 72);
        v101 += 32;
        (v47)(v33 + v3 + v48 * v69, v32, v100);
        v70 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
        v71 = v99;
        swift_beginAccess();
        v72 = v71 + v70;
        v73 = v91;
        sub_22CEEB6DC(v72, v91, &qword_27D9F3820, &qword_22D01BD08);
        v23 = v93;
        v32 = v94;
        if ((*(v93 + 6))(v73, 1, v94) == 1)
        {
          sub_22CEEC3D8(v73, &qword_27D9F3820, &qword_22D01BD08);
LABEL_34:
          v76 = v97;
          goto LABEL_35;
        }

        (*(v23 + 4))(v19, v73, v32);
        if ((sub_22D014A0C() & 1) == 0)
        {
LABEL_33:
          (*(v23 + 1))(v19, v32);
          goto LABEL_34;
        }

        v74 = sub_22D0146BC();
        v75 = v88;
        (*(*(v74 - 8) + 16))(v88, v102 + v86, v74);
        v67(v75, *MEMORY[0x277CB9638], v100);
        v53 = v33[2];
        v52 = v33[3];
        v45 = v53 + 1;
        if (v53 < v52 >> 1)
        {
LABEL_28:
          v76 = v97;
          (*(v23 + 1))(v19, v32);
          v33[2] = v45;
          (v47)(v33 + v3 + v53 * v48, v88, v100);
LABEL_35:
          v79 = *v102;
          v80 = v102[1];

          v81 = v95;
          sub_22D014C9C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20E8, &qword_22D018910);
          v82 = v96;
          v83 = *(v96 + 72);
          v84 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_22D0187A0;
          (*(v82 + 16))(v85 + v84, v81, v76);
          sub_22CF1C384(v85);

          (*(v82 + 8))(v81, v76);
          return;
        }

LABEL_46:
        v33 = sub_22CF0D6DC(v52 > 1, v45, 1, v33);
        goto LABEL_28;
      }

      v47 = *(v45 + 16);
      v53 = *(v45 + 24);
      sub_22CEE7524(v45, v50);
      v52 = v53 - v47;
      if (!__OFSUB__(v53, v47))
      {
        v45 = v99;
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (!v51)
      {
        sub_22CEE7524(v45, v47);
        v52 = BYTE6(v47);
        v45 = v99;
        goto LABEL_13;
      }

      v53 = HIDWORD(v45);
      sub_22CEE7524(v45, v47);
      v54 = __OFSUB__(HIDWORD(v45), v45);
      v52 = (HIDWORD(v45) - v45);
      v45 = v99;
      if (!v54)
      {
        v52 = v52;
LABEL_13:
        if (v89 < v52)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_46;
  }
}

uint64_t sub_22CF2E784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v99 - v11;
  v13 = sub_22D014A1C();
  v114 = *(v13 - 8);
  v115 = v13;
  v14 = *(v114 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v108 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22D014C4C();
  v112 = *(v113 - 8);
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v18);
  v111 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D014C8C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v126 = &v99 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v125 = &v99 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  result = MEMORY[0x28223BE20](v32, v33);
  v38 = &v99 - v37;
  if (*(a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck))
  {
    v109 = v36;
    v101 = v12;
    v99 = v35;
    v39 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges;
    swift_beginAccess();
    v110 = a1;
    v106 = v39;
    v40 = MEMORY[0x277D84F98];
    if (*(a1 + v39))
    {
      v40 = *(a1 + v39);
    }

    v42 = *a2;
    v41 = a2[1];
    v107 = a2;
    v43 = v40;
    v44 = *(v40 + 16);

    v105 = v41;
    v104 = v42;
    if (v44 && (v45 = sub_22CEEC698(v42, v41), (v46 & 1) != 0))
    {
      v47 = *(*(v43 + 56) + 8 * v45);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v50 = v21;
    v102 = a3;
    v103 = v4;
    v51 = *(v48 + 16);
    v117 = v20;
    v124 = v51;
    v100 = v43;
    if (v51)
    {
      v52 = 0;
      v121 = v21 + 88;
      v122 = v21 + 16;
      v53 = *MEMORY[0x277CB9630];
      v119 = *MEMORY[0x277CB9628];
      v120 = v53;
      v54 = v21 + 8;
      v118 = (v50 + 32);
      v55 = MEMORY[0x277D84F90];
      v116 = v50;
      v123 = v48;
      while (v52 < *(v48 + 16))
      {
        v128 = ((*(v50 + 80) + 32) & ~*(v50 + 80));
        v127 = *(v50 + 72);
        v56 = *(v50 + 16);
        v56(v38, &v128[v48 + v127 * v52], v20);
        v57 = v54;
        v58 = v125;
        v56(v125, v38, v20);
        v59 = (*(v50 + 88))(v58, v20);
        v4 = *(v50 + 8);
        v60 = v58;
        v54 = v57;
        (v4)(v60, v20);
        if (v59 != v120 && v59 == v119)
        {
          v62 = *v118;
          (*v118)(v126, v38, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22CF443F0(0, *(v55 + 16) + 1, 1);
            v55 = v129;
          }

          v65 = *(v55 + 16);
          v64 = *(v55 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_22CF443F0(v64 > 1, v65 + 1, 1);
            v55 = v129;
          }

          *(v55 + 16) = v65 + 1;
          v66 = &v128[v55 + v65 * v127];
          v20 = v117;
          v62(v66, v126, v117);
          v50 = v116;
          v54 = v57;
        }

        else
        {
          (v4)(v38, v20);
        }

        ++v52;
        v48 = v123;
        if (v124 == v52)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
LABEL_24:

      v67 = sub_22CF0B5E0();
      v4 = v55;
      v68 = v112;
      v69 = v111;
      v70 = v113;
      (*(v112 + 104))(v111, **(&unk_2787486F8 + v67), v113);
      v71 = v109;
      (*(v68 + 32))(v109, v69, v70);
      v72 = *(v50 + 104);
      (v72)(v71, *MEMORY[0x277CB9630], v20);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v72;
      if (v73)
      {
LABEL_25:
        v75 = *(v4 + 16);
        v74 = *(v4 + 24);
        v76 = v4;
        if (v75 >= v74 >> 1)
        {
          v76 = sub_22CF0D6DC(v74 > 1, v75 + 1, 1, v4);
        }

        *(v76 + 2) = v75 + 1;
        v77 = *(v50 + 32);
        v78 = v50 + 32;
        v79 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v80 = *(v78 + 40);
        v77(&v76[v79 + v80 * v75], v109, v117);
        v81 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
        v82 = v110;
        swift_beginAccess();
        v83 = v101;
        sub_22CEEB6DC(v82 + v81, v101, &qword_27D9F3820, &qword_22D01BD08);
        v85 = v114;
        v84 = v115;
        if ((*(v114 + 48))(v83, 1, v115) == 1)
        {
          sub_22CEEC3D8(v83, &qword_27D9F3820, &qword_22D01BD08);
        }

        else
        {
          v116 = v78;
          v86 = v108;
          (*(v85 + 32))(v108, v83, v84);
          if (sub_22D014A0C())
          {
            v87 = *(type metadata accessor for Activity() + 56);
            v88 = sub_22D0146BC();
            v89 = v107 + v87;
            v90 = v99;
            (*(*(v88 - 8) + 16))(v99, v89, v88);
            (v128)(v90, *MEMORY[0x277CB9638], v117);
            v92 = *(v76 + 2);
            v91 = *(v76 + 3);
            v128 = (v92 + 1);
            if (v92 >= v91 >> 1)
            {
              v76 = sub_22CF0D6DC(v91 > 1, v92 + 1, 1, v76);
            }

            v93 = v106;
            v94 = v105;
            v95 = v104;
            (*(v114 + 8))(v108, v115);
            *(v76 + 2) = v128;
            v77(&v76[v79 + v92 * v80], v99, v117);
            goto LABEL_35;
          }

          (*(v85 + 8))(v86, v84);
        }

        v93 = v106;
        v94 = v105;
        v95 = v104;
LABEL_35:

        v96 = v100;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v130 = v96;
        sub_22CFC00E0(v76, v95, v94, v97);

        v98 = *(v110 + v93);
        *(v110 + v93) = v130;

        v49 = 0;
        a3 = v102;
        goto LABEL_36;
      }
    }

    v4 = sub_22CF0D6DC(0, *(v4 + 16) + 1, 1, v4);
    goto LABEL_25;
  }

  v49 = 1;
  *(a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 1;
LABEL_36:
  *a3 = v49;
  return result;
}

uint64_t sub_22CF2F0BC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v51 = a5;
  v9 = sub_22D01457C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_info = _TtC11SessionCore16KnownClientStore.info;
  v52 = a4;
  if (a1)
  {
    v50 = a3;
    v16 = a1;
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v17 = sub_22D01637C();
    __swift_project_value_buffer(v17, qword_2814444B0);
    v18 = a1;
    v19 = a2;
    v20 = sub_22D01636C();
    v21 = sub_22D01690C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v49 = v10;
      v23 = v22;
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_22CEEE31C(*&v19[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v19[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], aBlock);
      *(v23 + 12) = 2082;
      v53 = a1;
      v25 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v26 = sub_22D01669C();
      v28 = sub_22CEEE31C(v26, v27, aBlock);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_22CEE1000, v20, v21, "Did not provide extra runtime to process for activity change delivery: %{public}s: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      v29 = v24;
      p_info = (_TtC11SessionCore16KnownClientStore + 32);
      MEMORY[0x2318C6860](v29, -1, -1);
      v30 = v23;
      v10 = v49;
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    else
    {
    }
  }

  if (p_info[364] != -1)
  {
    swift_once();
  }

  v31 = sub_22D01637C();
  __swift_project_value_buffer(v31, qword_2814444B0);
  v32 = a2;
  v33 = sub_22D01636C();
  v34 = sub_22D01690C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_22CEEE31C(*&v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], aBlock);
    _os_log_impl(&dword_22CEE1000, v33, v34, "Delivering activity changes for %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x2318C6860](v36, -1, -1);
    MEMORY[0x2318C6860](v35, -1, -1);
  }

  sub_22D01456C();
  sub_22CEE74DC(&unk_281443A00, MEMORY[0x277CB9208]);
  v37 = sub_22D01517C();
  v38 = sub_22D0141EC();
  v40 = v39;

  v41 = sub_22D0141DC();
  v42 = swift_allocObject();
  v43 = v9;
  v44 = v51;
  *(v42 + 16) = v32;
  *(v42 + 24) = v44;
  aBlock[4] = sub_22CF2184C;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CF217E0;
  aBlock[3] = &block_descriptor_25;
  v45 = _Block_copy(aBlock);
  v46 = v32;

  [v52 activitiesChanged:v41 completion:v45];
  sub_22CEE7524(v38, v40);
  _Block_release(v45);

  return (*(v10 + 8))(v14, v43);
}

uint64_t sub_22CF2F5B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF2F7D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF2F820(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock) + 16);
    os_unfair_lock_lock(v10);
    v11 = sub_22D0149FC();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, a1, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_predicate;
    swift_beginAccess();
    sub_22CF2F9DC(v7, v1 + v13);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    v14 = *(*(v9 + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock) + 16);
    os_unfair_lock_lock(v14);
    v15 = *(v9 + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers);

    os_unfair_lock_unlock(v14);
    sub_22CF2FA4C(v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22CF2F9DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF2FA4C(uint64_t a1)
{
  v3 = sub_22D01637C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01473C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  aBlock = v38;
  v34 = v39;
  if (*(&v39 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2950, qword_22D0192A8);
    if (swift_dynamicCast())
    {
      v15 = v37;
      *&v38 = 0;
      v16 = *(*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock) + 16);
      os_unfair_lock_lock(v16);
      sub_22CF2FEF4(v1, a1, &v38);
      os_unfair_lock_unlock(v16);
      if (!v38)
      {
        return swift_unknownObjectRelease();
      }

      sub_22D01472C();
      sub_22CF2F7D8(&qword_28143F6D8, MEMORY[0x277CB9300]);
      v32 = v15;
      v17 = v1;
      v18 = sub_22D01517C();
      v31 = sub_22D0141EC();
      v20 = v19;

      sub_22D01566C();
      v21 = sub_22D01563C();
      v22 = sub_22D0141DC();
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      *(v23 + 24) = v21;
      v35 = sub_22CF3034C;
      v36 = v23;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v34 = sub_22CF217E0;
      *(&v34 + 1) = &block_descriptor_3;
      v24 = v10;
      v25 = _Block_copy(&aBlock);
      v26 = v17;

      [v32 activityProminenceDidChange:v22 completion:v25];
      sub_22CEE7524(v31, v20);
      _Block_release(v25);

      swift_unknownObjectRelease();

      (*(v24 + 8))(v14, v9);
    }
  }

  else
  {
    sub_22CEEC3D8(&aBlock, &qword_27D9F2B10, &unk_22D01B930);
  }

  sub_22D01635C();
  v28 = sub_22D01636C();
  v29 = sub_22D0168EC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22CEE1000, v28, v29, "Client does not implement expected interface", v30, 2u);
    MEMORY[0x2318C6860](v30, -1, -1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_22CF2FEB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF2FEF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v25 - v9;
  v11 = sub_22D0149FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_predicate;
  swift_beginAccess();
  sub_22CF30164(a1 + v17, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22CEEC3D8(v10, &unk_27D9F28E0, qword_22D019290);
  }

  (*(v12 + 32))(v16, v10, v11);
  if (*(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck))
  {
    v19 = *(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate);
    *(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate) = a2;
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck) = 1;
    if (sub_22D0149DC())
    {

      MEMORY[0x28223BE20](v20, v21);
      *(&v25 - 2) = v16;

      v22 = sub_22CF301D4(sub_22CF66B6C, (&v25 - 4), a2);
      v23 = *a3;
      *a3 = v22;
    }

    else
    {
      v24 = *a3;
      *a3 = a2;
    }
  }

  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_22CF30164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}