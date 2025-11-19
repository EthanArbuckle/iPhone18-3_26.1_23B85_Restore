uint64_t sub_268A7E8AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_268A7E914(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_2688E19F8, v6);
}

uint64_t sub_268A7E9A8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[21];
  __swift_project_boxed_opaque_existential_1(a3 + 17, a3[20]);
  return sub_268B36D24();
}

uint64_t sub_268A7EA00(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C18, &qword_268B49768);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_268B35494();
  v4 = off_28795B008[a1];
  sub_268B36764();
  return sub_268B35214();
}

uint64_t sub_268A7EAB4(uint64_t a1, unint64_t a2)
{
  v5 = sub_268B37A54();
  v177 = OUTLINED_FUNCTION_1(v5);
  v178 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_3();
  v167 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v168 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v170 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v166 = &v165 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C10, &qword_268B49760);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_3();
  v175 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v173 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v176 = &v165 - v22;
  v174 = type metadata accessor for QuickStopContext.FiringItem(0);
  v23 = OUTLINED_FUNCTION_1(v174);
  v182 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v169 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for QuickStopContext(0);
  v29 = OUTLINED_FUNCTION_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v181 = v34;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v179 = v36;
  OUTLINED_FUNCTION_8();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v165 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v165 - v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v180 = v44;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  v183 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  v171 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  v51 = &v165 - v50;
  v52 = 0;
  v53 = *(a1 + 16);
  v184 = a1;
  v185 = v53;
  v54 = MEMORY[0x277D84F90];
  v172 = a2;
  while (2)
  {
    if (v185 != v52)
    {
      OUTLINED_FUNCTION_18_16();
      v2 = *(v31 + 72);
      OUTLINED_FUNCTION_0_42();
      sub_268A7FA0C(v55, v51, v56);
      if (a2 < 5)
      {
        switch(*&v51[v28[5]])
        {
          case 0:
            goto LABEL_12;
          case 1:
            if (!a2)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          case 2:
            if (a2 < 2)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          case 3:
            if (a2 >= 3)
            {
              goto LABEL_12;
            }

            goto LABEL_14;
          case 4:
            if (a2 != 4)
            {
              goto LABEL_14;
            }

LABEL_12:
            if ((v51[v28[6]] & 1) != 0 || v51[v28[7]] == 1)
            {
              OUTLINED_FUNCTION_0_42();
              sub_268A7F958(v51, v180, v58);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v187[0] = v54;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v60 = *(v54 + 16);
                OUTLINED_FUNCTION_20_18();
                a2 = v172;
                v54 = v187[0];
              }

              v62 = *(v54 + 16);
              v61 = *(v54 + 24);
              v63 = v62 + 1;
              if (v62 >= v61 >> 1)
              {
                OUTLINED_FUNCTION_13_17(v61);
                v67 = v66;
                v165 = v68;
                sub_2689448AC();
                v63 = v67;
                a2 = v172;
                v54 = v187[0];
              }

              ++v52;
              *(v54 + 16) = v63;
              OUTLINED_FUNCTION_0_42();
              sub_268A7F958(v180, v64, v65);
            }

            else
            {
LABEL_14:
              OUTLINED_FUNCTION_2_32();
              sub_268A7F9B4(v51, v57);
              ++v52;
            }

            continue;
          default:
            v186 = *&v51[v28[5]];
            goto LABEL_102;
        }
      }

      v186 = a2;
      goto LABEL_102;
    }

    break;
  }

  v69 = *(v54 + 16);
  if (v69)
  {
    OUTLINED_FUNCTION_18_16();
    v72 = v54 + (v71 & ~v70);
    OUTLINED_FUNCTION_0_42();
    sub_268A7FA0C(v72, v183, v73);
    v74 = 1;
    v2 = v183;
    while (2)
    {
      if (v69 != v74)
      {
        if (v74 < *(v54 + 16))
        {
          v75 = *(v31 + 72);
          OUTLINED_FUNCTION_0_42();
          sub_268A7FA0C(v76, v43, v77);
          v78 = v28[5];
          v79 = *&v43[v78];
          if (v79 < 5)
          {
            switch(*(v183 + v78))
            {
              case 0:
                goto LABEL_27;
              case 1:
                if (v79)
                {
                  goto LABEL_27;
                }

                goto LABEL_29;
              case 2:
                if (v79 < 2)
                {
                  goto LABEL_29;
                }

                goto LABEL_27;
              case 3:
                if (v79 < 3)
                {
                  goto LABEL_29;
                }

                goto LABEL_27;
              case 4:
                if (v79 == 4)
                {
LABEL_27:
                  OUTLINED_FUNCTION_2_32();
                  sub_268A7F9B4(v43, v80);
                }

                else
                {
LABEL_29:
                  sub_268A7F9B4(v2, type metadata accessor for QuickStopContext);
                  sub_268A7F958(v43, v2, type metadata accessor for QuickStopContext);
                }

                ++v74;
                continue;
              default:
                v187[0] = *(v183 + v78);
                goto LABEL_102;
            }
          }

          v187[0] = *&v43[v78];
          goto LABEL_102;
        }

LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      break;
    }

    v81 = v171;
    sub_268A7F958(v183, v171, type metadata accessor for QuickStopContext);
    v82 = *(v81 + v28[5]);
    sub_268A7F9B4(v81, type metadata accessor for QuickStopContext);
  }

  else
  {
    v82 = 0;
  }

  v43 = 0;
  v83 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v69 != v43)
    {
      if (v43 < *(v54 + 16))
      {
        OUTLINED_FUNCTION_18_16();
        v2 = v85 & ~v84;
        v86 = *(v31 + 72);
        OUTLINED_FUNCTION_0_42();
        sub_268A7FA0C(v87, v40, v88);
        v89 = *&v40[v28[5]];
        if (v89 < 5)
        {
          switch(v82)
          {
            case 0uLL:
              if (!v89)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 1uLL:
              if (v89 == 1)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 2uLL:
              if (v89 == 2)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 3uLL:
              if (v89 == 3)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            case 4uLL:
              if (v89 == 4)
              {
LABEL_47:
                OUTLINED_FUNCTION_0_42();
                sub_268A7F958(v40, v179, v91);
                v92 = swift_isUniquelyReferenced_nonNull_native();
                v187[0] = v83;
                if ((v92 & 1) == 0)
                {
                  v93 = *(v83 + 16);
                  OUTLINED_FUNCTION_20_18();
                  v83 = v187[0];
                }

                v95 = *(v83 + 16);
                v94 = *(v83 + 24);
                v96 = v95 + 1;
                if (v95 >= v94 >> 1)
                {
                  OUTLINED_FUNCTION_13_17(v94);
                  v184 = v99;
                  v185 = v100;
                  sub_2689448AC();
                  v96 = v185;
                  v83 = v187[0];
                }

                ++v43;
                *(v83 + 16) = v96;
                OUTLINED_FUNCTION_0_42();
                sub_268A7F958(v179, v97, v98);
              }

              else
              {
LABEL_45:
                OUTLINED_FUNCTION_2_32();
                sub_268A7F9B4(v40, v90);
                ++v43;
              }

              continue;
            default:
              v186 = v82;
              goto LABEL_102;
          }
        }

        v186 = *&v40[v28[5]];
LABEL_102:
        sub_268B38474();
        __break(1u);
        JUMPOUT(0x268A7F884);
      }

      __break(1u);
      goto LABEL_93;
    }

    break;
  }

  v101 = *(v83 + 16);
  if (v101)
  {
    v187[0] = MEMORY[0x277D84F90];
    sub_26894488C();
    v102 = v187[0];
    OUTLINED_FUNCTION_18_16();
    v185 = v83;
    v105 = v83 + (v104 & ~v103);
    v106 = *(v31 + 72);
    v108 = v176;
    v107 = v177;
    v109 = v169;
    do
    {
      v110 = v181;
      sub_268A7FA0C(v105, v181, type metadata accessor for QuickStopContext);
      sub_26897B01C(v109);
      sub_268A7F9B4(v110, type metadata accessor for QuickStopContext);
      v187[0] = v102;
      v112 = *(v102 + 16);
      v111 = *(v102 + 24);
      if (v112 >= v111 >> 1)
      {
        OUTLINED_FUNCTION_13_17(v111);
        sub_26894488C();
        v102 = v187[0];
      }

      *(v102 + 16) = v112 + 1;
      sub_268A7F958(v109, v102 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v112, type metadata accessor for QuickStopContext.FiringItem);
      v105 += v106;
      --v101;
    }

    while (v101);

    v40 = v108;
    v69 = v107;
    v2 = v178;
  }

  else
  {

    v102 = MEMORY[0x277D84F90];
    v69 = v177;
    v2 = v178;
    v40 = v176;
  }

  v114 = v174;
  v113 = v175;
  v115 = v173;
  if (!*(v102 + 16))
  {

    if (qword_2802A4F30 != -1)
    {
      v117 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_7_28(v117, qword_2802CDA10);
    v118 = v167;
    v119(v167);
    v120 = sub_268B37A34();
    v121 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_17_23(v121))
    {
      swift_slowAlloc();
      v187[0] = OUTLINED_FUNCTION_143_0();
      *v118 = 136315138;
      v122 = DeviceProximity.description.getter(v172);
      v124 = sub_26892CDB8(v122, v123, v187);

      *(v118 + 4) = v124;
      OUTLINED_FUNCTION_169(&dword_2688BB000, v125, v126, "QuickStopUtil#mostRelevantFiringItemDomain No firing alarms/timers found within %s proximity");
      OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_12();
    }

    v127 = OUTLINED_FUNCTION_12_21();
    v128(v127);
    return 4;
  }

  sub_268A7C324(v102, v40);

  sub_26890C964(v40, v115, &qword_2802A7C10, &qword_268B49760);
  if (__swift_getEnumTagSinglePayload(v115, 1, v114) == 1)
  {
    sub_2688C058C(v115, &qword_2802A7C10, &qword_268B49760);
    v116 = v170;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v116 = v170;
    if (!EnumCaseMultiPayload)
    {
      v151 = sub_268B34614();
      OUTLINED_FUNCTION_4(v151);
      v153 = (*(v152 + 8))(v115);
      if (qword_2802A4F30 != -1)
      {
        v153 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_7_28(v153, qword_2802CDA10);
      v154 = v166;
      v155(v166);
      v156 = sub_268B37A34();
      v157 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_17_23(v157))
      {
        swift_slowAlloc();
        v187[0] = OUTLINED_FUNCTION_143_0();
        *v154 = 136315138;
        v158 = DeviceProximity.description.getter(v172);
        v160 = sub_26892CDB8(v158, v159, v187);

        *(v154 + 4) = v160;
        OUTLINED_FUNCTION_169(&dword_2688BB000, v161, v162, "QuickStopUtil#mostRelevantFiringItemDomain Most recently firing item is alarm within %s proximity");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_12();
      }

      v163 = OUTLINED_FUNCTION_12_21();
      v164(v163);
      sub_2688C058C(v40, &qword_2802A7C10, &qword_268B49760);
      return 0;
    }

    OUTLINED_FUNCTION_5_25();
    sub_268A7F9B4(v115, v130);
  }

  sub_26890C964(v40, v113, &qword_2802A7C10, &qword_268B49760);
  if (__swift_getEnumTagSinglePayload(v113, 1, v114) == 1)
  {
    v131 = sub_2688C058C(v113, &qword_2802A7C10, &qword_268B49760);
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_123();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_5_25();
    v131 = sub_268A7F9B4(v113, v146);
LABEL_82:
    v43 = v168;
    if (qword_2802A4F30 == -1)
    {
LABEL_83:
      OUTLINED_FUNCTION_7_28(v131, qword_2802CDA10);
      v147(v43);
      v148 = sub_268B37A34();
      v149 = sub_268B37EC4();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_2688BB000, v148, v149, "ControlsFlowProvider#mostRelevantFiringItemDomain Most recent firing item should not be empty, returning nil", v150, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v2 + 8))(v43, v69);
      sub_2688C058C(v40, &qword_2802A7C10, &qword_268B49760);
      return 4;
    }

LABEL_94:
    v131 = OUTLINED_FUNCTION_0_0();
    goto LABEL_83;
  }

  v132 = sub_268B34614();
  OUTLINED_FUNCTION_4(v132);
  v134 = (*(v133 + 8))(v113);
  if (qword_2802A4F30 != -1)
  {
    v134 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_7_28(v134, qword_2802CDA10);
  v135(v116);
  v136 = sub_268B37A34();
  v137 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_17_23(v137))
  {
    swift_slowAlloc();
    v187[0] = OUTLINED_FUNCTION_143_0();
    *v116 = 136315138;
    v138 = DeviceProximity.description.getter(v172);
    v140 = sub_26892CDB8(v138, v139, v187);

    *(v116 + 4) = v140;
    OUTLINED_FUNCTION_169(&dword_2688BB000, v141, v142, "QuickStopUtil#mostRelevantFiringItemDomain Most recently firing item is timer within %s proximity");
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_12();
  }

  v143 = OUTLINED_FUNCTION_12_21();
  v144(v143);
  sub_2688C058C(v40, &qword_2802A7C10, &qword_268B49760);
  return 1;
}

uint64_t *sub_268A7F8C0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  return v0;
}

uint64_t sub_268A7F900()
{
  sub_268A7F8C0();

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

uint64_t sub_268A7F958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_123();
  v8(v7);
  return a2;
}

uint64_t sub_268A7F9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268A7FA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_123();
  v8(v7);
  return a2;
}

uint64_t sub_268A7FA68()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268A7FAA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_268A7FAF0()
{
  result = qword_2802A5C98;
  if (!qword_2802A5C98)
  {
    sub_268B36FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5C98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_28(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v3, a2);
  v5 = *(v2 + 16);
  return result;
}

BOOL OUTLINED_FUNCTION_17_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_20_18()
{

  sub_2689448AC();
}

Swift::String_optional __swiftcall UsoTask_hide_common_MediaItem.verb()()
{
  v0 = 1701079400;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A7FC7C(uint64_t a1)
{
  result = sub_268A7FD28(&qword_2802A7C28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A7FD28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36004();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A7FD90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A7FDE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A7FE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A7FE8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A7FEE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A7FF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A7FF88()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A7FFDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A80040()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A80094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A800F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A8015C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A801C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t getEnumTagSinglePayload for ControlsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x3A)
  {
    if (a2 + 198 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 198) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 199;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC7;
  v5 = v6 - 199;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 198 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 198) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x39)
  {
    v6 = ((a2 - 58) >> 8) + 1;
    *result = a2 - 58;
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
        JUMPOUT(0x268A80378);
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
          *result = a2 - 58;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268A803B4()
{
  result = qword_2802A7C40;
  if (!qword_2802A7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7C40);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_restart_uso_NoEntity.verb()()
{
  v0 = 0x74726174736572;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_restart_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void UsoTask_restart_uso_NoEntity.shouldHandle(requestContext:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v3 = sub_268B37A54();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_2688EFD0C(v7);
  v9 = 0;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D625BD0](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = [v10 nowPlayingState];

    ++v9;
    if (v12 == 1)
    {
      v18 = 0;
      goto LABEL_14;
    }
  }

  if (qword_2802A4F30 == -1)
  {
    goto LABEL_11;
  }

LABEL_17:
  swift_once();
LABEL_11:
  v13 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v14 = v19;
  (*(v19 + 16))(v6, v13, v3);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "User asked to restart but no devices in the home are playing. Retuning nil flow for Settings domain to handle the request instead", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v14 + 8))(v6, v3);
  v18 = 3;
LABEL_14:
  *v20 = v18;
}

uint64_t sub_268A807A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A807FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A80850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A808A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A808F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A8094C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A809A0()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A809F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A80A58()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A80AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A80B10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A80B74()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A80BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A80C3C(uint64_t a1)
{
  result = sub_268A80CE8(&qword_2802A7C48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A80CE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A80D2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v78 = a8;
  v75 = a5;
  v76 = a7;
  v79 = a6;
  v80 = a2;
  v81 = a4;
  v74 = a1;
  v9 = sub_268B367A4();
  v10 = OUTLINED_FUNCTION_1(v9);
  v68 = v11;
  v69 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v27 = *(v18 + 16);
  v27(v25, v26, v15);
  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v73 = v15;
    v31 = v26;
    v32 = v27;
    v33 = v18;
    v34 = a3;
    v35 = v23;
    v36 = v30;
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput()", v30, 2u);
    v37 = v36;
    v23 = v35;
    a3 = v34;
    v18 = v33;
    v27 = v32;
    v26 = v31;
    v15 = v73;
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  v38 = *(v18 + 8);
  v38(v25, v15);
  v73 = a3;
  v71 = sub_2688E1B9C(5, 3, a3, v81, v80, 0x6E776F6E6B6E75, 0xE700000000000000, v79);
  v72 = v39;
  sub_268B36754();
  v40 = sub_268B36734();
  if (!v40)
  {
    v40 = sub_268B36744();
  }

  v41 = v40;
  v27(v23, v26, v15);

  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v66 = v38;
    v45 = v44;
    v46 = swift_slowAlloc();
    v65 = v23;
    v47 = v46;
    v82 = v46;
    *v45 = 136315138;
    sub_268B36714();
    v48 = v67;
    sub_268B36B14();

    v49 = sub_268B36784();
    v51 = v50;
    (*(v68 + 8))(v48, v69);
    v52 = sub_26892CDB8(v49, v51, &v82);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_2688BB000, v42, v43, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x26D6266E0](v47, -1, -1);
    MEMORY[0x26D6266E0](v45, -1, -1);

    v66(v65, v15);
  }

  else
  {

    v38(v23, v15);
  }

  v53 = swift_allocObject();
  v55 = v76;
  v54 = v77;
  v53[2] = v41;
  v53[3] = v54;
  v56 = v74;
  v57 = v80;
  v53[4] = v74;
  v53[5] = v57;
  v70 = v41;
  v58 = v71;
  v59 = v72;
  v53[6] = v71;
  v53[7] = v59;
  v60 = v78;
  v53[8] = v55;
  v53[9] = v60;
  swift_retain_n();
  swift_retain_n();

  v61 = v81;

  v62 = v79;

  v63 = v57;

  sub_2689FC038(v56, v63, v58, v59, v75, v62, v54, v55, v60, v73, v61, v62, v54, sub_268A82084, v53);
}

uint64_t sub_268A81320(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v100 = a7;
  v101 = a8;
  v88 = a5;
  v89 = a6;
  v97 = a4;
  v87 = a3;
  v86 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v79 - v10;
  v11 = sub_268B37A54();
  v98 = *(v11 - 8);
  v99 = v11;
  v12 = *(v98 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v85 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v84 = &v79 - v23;
  v24 = sub_268B34E24();
  v94 = *(v24 - 8);
  v25 = *(v94 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v90 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v79 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v79 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v79 - v39;
  sub_268935590(v93, &v79 - v39, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v40, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v99;
    v42 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v43 = v98;
    (*(v98 + 16))(v96, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v46, 2u);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    (*(v43 + 8))(v96, v41);
    sub_2688C2ECC();
    v47 = swift_allocError();
    *v48 = -84;
    v102[0] = v47;
    v103 = 1;
    v100(v102);
    return sub_2688EF38C(v102, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v40, v36);
    v50 = v86;
    v51 = __swift_project_boxed_opaque_existential_1(v86 + 13, v86[16]);
    v52 = *MEMORY[0x277D5BBE0];
    v53 = *(v94 + 104);
    v81 = v27;
    v82 = v24;
    v53(v27, v52, v24);
    sub_268935590(v36, v34, &unk_2802A56E0, &unk_268B3CDF0);
    v96 = v28;

    v54 = sub_268B350F4();
    v55 = *(v54 - 8);
    v56 = v84;
    (*(v55 + 32))(v84, v34, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    v57 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v57);
    v58 = *v51;
    v59 = v85;
    sub_268935590(v56, v85, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v54);
    v80 = v36;
    v83 = v54;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v59, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v55 + 8))(v59, v54);
    }

    v93 = v55;
    v61 = v81;
    v62 = v95;
    sub_2688E3A78();

    sub_2688EF38C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v61, v82);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v63 = v99;
    v64 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v65 = v98;
    v66 = v91;
    (*(v98 + 16))(v91, v64, v63);
    v67 = sub_268B37A34();
    v68 = sub_268B37ED4();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v83;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "SetAudioLanguageUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    (*(v65 + 8))(v66, v63);
    v72 = v50[21];
    v73 = v50[22];
    __swift_project_boxed_opaque_existential_1(v50 + 18, v72);
    v74 = v80;
    v75 = v90;
    sub_268935590(v80, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v76 = *(v75 + *(v96 + 12));
    v77 = v92;
    sub_268A82B50(v97, v92);
    v78 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
    (*(v73 + 40))(v75, v76, v77, v100, v101, v72, v73);

    sub_2688EF38C(v77, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v74, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v93 + 8))(v75, v70);
  }
}

uint64_t sub_268A81C6C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  sub_268935590(a1, v29, &unk_2802A57C0, &qword_268B3BE00);
  v15 = v30;
  sub_2688EF38C(v29, &unk_2802A57C0, &qword_268B3BE00);
  if (v15 == 1)
  {
    v16 = a4 == 0x65676175676E616CLL && a5 == 0xE800000000000000;
    if (v16 || (sub_268B38444() & 1) != 0)
    {
      v17 = SetAudioLanguageLanguageUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
      if (v18)
      {
LABEL_8:
        sub_2688C2ECC();
        v19 = OUTLINED_FUNCTION_28_5();
        v21 = 65;
LABEL_9:
        *v20 = v21;
        v29[0] = v19;
        v30 = 1;
        a2(v29);
        return sub_2688EF38C(v29, &unk_2802A57C0, &qword_268B3BE00);
      }

      if (v17 == 4)
      {
        return sub_268A365F4(0, 0, a8, a9);
      }

      if (v17 == 2)
      {
        v26 = a7[26];
        v27 = a7[27];
        __swift_project_boxed_opaque_existential_1(a7 + 23, v26);
        return sub_2689CE88C(0xD000000000000028, 0x8000000268B587A0, a8, a9, v26, v27);
      }

      if (v17 != 1)
      {
        goto LABEL_8;
      }

      sub_268B37B84();
      sub_268A374BC();
    }

    v23 = a4 == 0x656369766564 && a5 == 0xE600000000000000;
    if (!v23 && (sub_268B38444() & 1) == 0)
    {
      sub_2688C2ECC();
      v19 = OUTLINED_FUNCTION_28_5();
      v21 = 68;
      goto LABEL_9;
    }

    v24 = SetAudioLanguageDeviceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if ((v25 & 1) == 0)
    {
      if ((v24 - 2) < 2)
      {
        sub_268B37B84();
        sub_268A367E4();
      }

      if (v24 == 1)
      {
        sub_2688C2ECC();
        v19 = OUTLINED_FUNCTION_28_5();
        v21 = 66;
        goto LABEL_9;
      }
    }

    sub_2688C2ECC();
    v19 = OUTLINED_FUNCTION_28_5();
    v21 = 67;
    goto LABEL_9;
  }

  return a2(a1);
}

uint64_t type metadata accessor for SetAudioLanguageUnsupportedValueStrategy()
{
  result = qword_2802A7C60;
  if (!qword_2802A7C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A82024()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A82084()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_268A81268();
}

uint64_t sub_268A820E0(void *a1, void (*a2)(uint64_t, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34CB4())
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D47818]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6510, &unk_268B3F610);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBC0;
    v12 = *MEMORY[0x277D48950];
    v13 = sub_268B37BF4();
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    sub_268A823BC(v11, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_268B3BBA0;
    *(v15 + 32) = v10;
    v16 = v10;
    a2(v15, 0);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v18, v4);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "VolumeControlsViewProvider#makeAceViewsForHandle Not macOS, skip rendering volume snippet", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (a2)(MEMORY[0x277D84F90], 0);
  }
}

void sub_268A823BC(uint64_t a1, void *a2)
{
  v3 = sub_268B37CE4();

  [a2 setSettingKeys_];
}

void sub_268A8242C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  sub_268A82724(a1);
  type metadata accessor for VolumeLevel();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_26893A824(0, 0);
  v13 = type metadata accessor for SettingsIntent();
  [v12 setVolumeSettingState_];
  v14 = *(a1 + v13[8]);
  if (v14 == 2)
  {
    [v12 setVolumeSettingQualifier_];
  }

  else
  {
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    [v12 setVolumeSettingQualifier_];
  }

  v16 = v13[6];
  sub_268A82A20(a1 + v16, v10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
  {
    sub_268A82A90(v10);
LABEL_10:
    v19 = 0;
    goto LABEL_12;
  }

  sub_268B36634();
  v18 = v22[15];
  (*(*(v17 - 8) + 8))(v10, v17);
  if (v18)
  {
    goto LABEL_10;
  }

  v19 = 1;
LABEL_12:
  [v12 setVolumeSettingUnit_];
  sub_268A82A20(a1 + v16, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
  {
    sub_268A82A90(v8);
  }

  else
  {
    sub_268B36654();
    v20 = v22[24];
    (*(*(v17 - 8) + 8))(v8, v17);
    if ((v20 & 1) == 0)
    {
      v21 = sub_268B37DD4();
      [v12 setVolumeSettingValue_];
    }
  }

  [v2 setSettingAttribute_];
  [v2 setVolumeLevel_];
}

void sub_268A82724(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26897EC08(a1, v10);
  sub_268A82AF8();
  v11 = sub_268B37854();
  sub_26891E5F8(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BC18;
    v17 = type metadata accessor for SetVolumeLevelIntent();
    v16(v15, v17, &off_28795BC08);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_268A82A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A82A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A82AF8()
{
  result = qword_2802A6678;
  if (!qword_2802A6678)
  {
    type metadata accessor for SettingsIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6678);
  }

  return result;
}

uint64_t sub_268A82B50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C70, qword_268B49C28);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v97 - v8;
  v10 = sub_268B37A94();
  v11 = OUTLINED_FUNCTION_1(v10);
  v112 = v12;
  v113 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v100 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v102 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v97 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v97 - v29;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v31 = __swift_project_value_buffer(v16, qword_2802CDA10);
    v32 = *(v19 + 16);
    v106 = v31;
    v107 = v19 + 16;
    v105 = v32;
    v32(v30);
    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    v35 = os_log_type_enabled(v33, v34);
    v108 = a1;
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_14();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "HandleNLContextUpdateProvider#makeHandledContext making handled context", v36, 2u);
      a1 = v108;
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    v37 = *(v19 + 8);
    v19 += 8;
    v110 = v19;
    v104 = v37;
    v37(v30, v16);
    sub_268B35034();
    v38 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    swift_getObjectType();
    v39 = dynamic_cast_existential_1_conditional(a1);
    v103 = v16;
    if (v39)
    {
      v41 = v39;
      v42 = v40;
      OUTLINED_FUNCTION_0_43();
      v43();
      v99 = a1;
      v44 = sub_268B37A34();
      v45 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v45))
      {
        v16 = OUTLINED_FUNCTION_14();
        *v16 = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v46, v47, "HandleNLContextUpdateProvider#makeHandledContext Making handled context using device queries");
        OUTLINED_FUNCTION_4_37();
      }

      v104(v28, v16);
      ObjectType = swift_getObjectType();
      v30 = v41;
      v49 = (*(v42 + 8))(ObjectType, v42);
      a1 = v113;
      if (v49)
      {
        v28 = v49;
        v50 = sub_2688EFD0C(v49);
        v51 = 0;
        v33 = (v28 & 0xC000000000000001);
        v16 = (v28 & 0xFFFFFFFFFFFFFF8);
        v98 = (v112 + 32);
        v111 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v50 == v51)
          {

            v16 = v103;
            goto LABEL_25;
          }

          if (v33)
          {
            v52 = MEMORY[0x26D625BD0](v51, v28);
          }

          else
          {
            if (v51 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v52 = *(v28 + 8 * v51 + 32);
          }

          v30 = v52;
          v19 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          sub_268AC8384(v7);

          sub_268A83434(v7, v9);
          if (__swift_getEnumTagSinglePayload(v9, 1, a1) == 1)
          {
            sub_268A834A4(v9);
            ++v51;
          }

          else
          {
            v53 = *v98;
            (*v98)(v100, v9, a1);
            v54 = v111;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v97 = v53;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v60 = *(v54 + 16);
              sub_268987774();
              v54 = v61;
            }

            v57 = *(v54 + 16);
            v56 = *(v54 + 24);
            v111 = v54;
            v30 = (v57 + 1);
            if (v57 >= v56 >> 1)
            {
              sub_268987774();
              v111 = v62;
            }

            v59 = v111;
            v58 = v112;
            *(v111 + 16) = v30;
            v97((v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57), v100, a1);
            v51 = v19;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v111 = MEMORY[0x277D84F90];
    }

    else
    {
      v111 = v38;
    }

LABEL_25:
    v63 = v108;
    swift_getObjectType();
    v64 = dynamic_cast_existential_1_conditional(v63);
    v66 = v101;
    if (!v64)
    {
      goto LABEL_48;
    }

    v67 = v65;
    OUTLINED_FUNCTION_0_43();
    v68();
    v69 = v63;
    v70 = sub_268B37A34();
    v71 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v71))
    {
      v16 = OUTLINED_FUNCTION_14();
      *v16 = 0;
      OUTLINED_FUNCTION_7(&dword_2688BB000, v72, v73, "HandleNLContextUpdateProvider#makeHandledContext Making handled context using devices");
      OUTLINED_FUNCTION_4_37();
    }

    v104(v66, v16);
    v74 = swift_getObjectType();
    v75 = (*(v67 + 24))(v74, v67);
    if (!v75)
    {

LABEL_48:
      v7 = MEMORY[0x277D84F90];
      goto LABEL_51;
    }

    v28 = v75;
    v101 = v69;
    result = sub_2688EFD0C(v75);
    if (!result)
    {
      break;
    }

    v77 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v16 = (v28 & 0xC000000000000001);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v78 = v16 ? MEMORY[0x26D625BD0](v9, v28) : *(v28 + 8 * v9 + 32);
      v30 = v78;
      sub_2689841C4();
      isa = v79[2].isa;
      v19 = *(v7 + 2);
      a1 = isa + v19;
      if (__OFADD__(v19, isa))
      {
        break;
      }

      v33 = v79;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v81 = *(v7 + 3) >> 1, v81 < a1))
      {
        sub_268987774();
        v7 = v82;
        v81 = *(v82 + 3) >> 1;
      }

      if (v33[2].isa)
      {
        if (v81 - *(v7 + 2) < isa)
        {
          goto LABEL_60;
        }

        v83 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v84 = *(v112 + 72);
        swift_arrayInitWithCopy();

        if (isa)
        {
          v85 = *(v7 + 2);
          v86 = __OFADD__(v85, isa);
          v87 = isa + v85;
          if (v86)
          {
            goto LABEL_61;
          }

          *(v7 + 2) = v87;
        }
      }

      else
      {

        if (isa)
        {
          goto LABEL_59;
        }
      }

      ++v9;

      if (v77 == v9)
      {

        goto LABEL_50;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_50:
  v63 = v108;
LABEL_51:
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v63))
  {
    v89 = v88;
    OUTLINED_FUNCTION_0_43();
    v90();
    v91 = v63;
    v92 = sub_268B37A34();
    v93 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v93))
    {
      v94 = OUTLINED_FUNCTION_14();
      *v94 = 0;
      _os_log_impl(&dword_2688BB000, v92, v33, "HandleNLContextUpdateProvider#makeHandledContext Making handled context from intent", v94, 2u);
      MEMORY[0x26D6266E0](v94, -1, -1);
    }

    v104(v102, v103);
    v95 = swift_getObjectType();
    v96 = (*(v89 + 8))(v95, v89);
    sub_268984768(v96);
  }

  v114 = v111;
  sub_268984768(v7);
  sub_268984768(v115);
  return sub_268B34F94();
}

uint64_t sub_268A83434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C70, qword_268B49C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A834A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C70, qword_268B49C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_43()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 176);
}

void OUTLINED_FUNCTION_4_37()
{
  v2 = *(v0 - 192);

  JUMPOUT(0x26D6266E0);
}

void sub_268A83648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v56 = v25;
  v54 = v26;
  v55 = v27;
  v53 = v28;
  v51 = v29;
  v52 = v30;
  v32 = v31;
  v34 = v33;
  v50 = a21;
  v49 = a22;
  v48 = a23;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v36 = v35 - 8;
  v37 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = OUTLINED_FUNCTION_69_6();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v24, v34, v41);
  *(v24 + *(v36 + 56)) = v32;
  sub_2688C053C(v24, v40, &unk_2802A56E0, &unk_268B3CDF0);
  v43 = *&v40[*(v36 + 56)];
  v44 = *(a24 + 64);
  v45 = v32;
  v46 = v50;
  v44(v40, v43, v51, v52, v53, v54, v55, v56, v46, 0, v49, *(&v49 + 1), v48, a24);

  sub_2689A7CD8(v24, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v42 + 8))(v40, v41);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8381C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_268B35174();
    sub_268B35144();
    sub_268B35154();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_268B35164();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

void sub_268A838A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v136 = v24;
  v125 = v25;
  v27 = v26;
  v135 = v28;
  v133 = v29;
  v129 = v30;
  v128 = v31;
  v33 = v32;
  v35 = v34;
  v126 = type metadata accessor for SnippetModelContext();
  v36 = OUTLINED_FUNCTION_4(v126);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v39);
  v134 = sub_268B35044();
  v40 = OUTLINED_FUNCTION_1(v134);
  v137 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = &v117 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_97_3(&v147);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v47);
  v48 = sub_268B37A54();
  v49 = OUTLINED_FUNCTION_1(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  v123 = v54;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_15();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v57 = v56 - 8;
  v130 = *(v56 - 8);
  v58 = *(v130 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v61);
  MEMORY[0x28223BE20](v62);
  v64 = &v117 - v63;
  v65 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v65);
  (*(v66 + 16))(v64, v35);
  *&v64[*(v57 + 56)] = v33;
  v67 = qword_2802A4F30;
  v68 = v33;
  if (v67 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v142 = v45;
  v140 = a24;
  v139 = a23;
  v138 = a21;
  v69 = __swift_project_value_buffer(v48, qword_2802CDA10);
  v70 = *(v51 + 16);
  v120 = v69;
  v121 = v51 + 16;
  v119 = v70;
  (v70)(v24);
  v71 = sub_268B37A34();
  v72 = sub_268B37ED4();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v51;
  v75 = v137;
  if (v73)
  {
    v76 = OUTLINED_FUNCTION_14();
    *v76 = 0;
    _os_log_impl(&dword_2688BB000, v71, v72, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput...", v76, 2u);
    OUTLINED_FUNCTION_12();
  }

  v118 = v48;

  v77 = *(v74 + 8);
  v124 = v74 + 8;
  v122 = v77;
  v77(v24, v48);
  v78 = *(v75 + 2);
  v79 = v132;
  v80 = v134;
  v78(v132, v27, v134);
  v137 = v64;
  v81 = v131;
  sub_2688C053C(v64, v131, &unk_2802A56E0, &unk_268B3CDF0);
  v78(v142, v79, v80);
  sub_2688C053C(v81, v141, &unk_2802A56E0, &unk_268B3CDF0);
  v82 = (v75[80] + 24) & ~v75[80];
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_74_5();
  v84 = &v75[v83 + 25] & ~v83;
  v85 = swift_allocObject();
  v86 = v136;
  *(v85 + 16) = v136;
  v87 = v85 + v82;
  v88 = v80;
  (*(v75 + 4))(v87, v79, v80);
  v89 = &v75[v85 + 16];
  v90 = v135;
  *v89 = v135;
  *(v89 + 8) = v138 & 1;
  sub_268954254(v81, v85 + v84, &unk_2802A56E0, &unk_268B3CDF0);
  v91 = (v85 + ((v58 + v84 + 7) & 0xFFFFFFFFFFFFFFF8));
  v92 = v140;
  *v91 = v139;
  v91[1] = v92;
  if ((v133 & 1) == 0)
  {

    sub_2689A7CD8(v141, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v75 + 1))(v142, v88);
    sub_2688E4594(v86 + 56, v146);
    sub_2688E4594(v125, v145);
    sub_2688E4594(v146, v144);
    sub_2688E4594(v145, v143);
    v109 = swift_allocObject();
    v110 = v128;
    v111 = v129;
    v109[2] = v128;
    v109[3] = v111;
    sub_2688E6514(v146, (v109 + 4));
    v109[9] = sub_268A8F8A0;
    v109[10] = v85;
    sub_2688E6514(v145, (v109 + 11));
    sub_268B36C54();

    if (sub_268B36C24() == v110 && v112 == v111)
    {

      v115 = v137;
    }

    else
    {
      v114 = sub_268B38444();

      v115 = v137;
      if ((v114 & 1) == 0)
      {
        sub_2689AE8D8(0, 0xE000000000000000, v110, v111, v144, sub_268A8F8A0, v85, v143);

        __swift_destroy_boxed_opaque_existential_0Tm(v143);
        __swift_destroy_boxed_opaque_existential_0Tm(v144);
LABEL_17:
        v108 = v115;
        goto LABEL_18;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v143);
    __swift_destroy_boxed_opaque_existential_0Tm(v144);
    sub_268B36C44();
    v116 = swift_allocObject();
    v116[2] = 0;
    v116[3] = 0xE000000000000000;
    v116[4] = sub_268A8FA0C;
    v116[5] = v109;

    sub_268B36C34();

    goto LABEL_17;
  }

  v93 = v123;
  v94 = v118;
  v119(v123, v120, v118);

  v95 = sub_268B37A34();
  v96 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v96))
  {
    v97 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v97);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v98, v99, "MediaControlsViewProvider.mediaPlayerSnippetModel Not rendering the controls platter due to enabled suppressSnippets");
    OUTLINED_FUNCTION_83_0();
  }

  v122(v93, v94);
  v100 = sub_268B36A54();
  v101 = v127;
  OUTLINED_FUNCTION_4_7(v127, v102, v103, v100);
  v104 = (v101 + *(v126 + 20));
  *v104 = 0;
  v104[1] = 0;
  v105 = v142;
  v106 = v90;
  v107 = v141;
  sub_268A841E0(v101, v86, v142, v106, v138 & 1, v141, v139, v140);

  sub_2689B0974(v101);
  sub_2689A7CD8(v107, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v75 + 1))(v105, v88);
  v108 = v137;
LABEL_18:
  sub_2689A7CD8(v108, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A841E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a7;
  v102 = a8;
  v97 = a6;
  v84 = a5;
  v92 = a4;
  v91 = a3;
  v103 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v93 = *(v12 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v78 - v13;
  v14 = type metadata accessor for SnippetModelContext();
  v88 = *(v14 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = v16;
  v90 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B34DA4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B35374();
  v98 = *(v20 - 8);
  v99 = v20;
  v21 = *(v98 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v23;
  MEMORY[0x28223BE20](v22);
  v96 = &v78 - v24;
  v81 = sub_268B367A4();
  v80 = *(v81 - 8);
  v25 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v78 - v29;
  v31 = sub_268B37A54();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v78 - v37;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v31, qword_2802CDA10);
  v82 = v32[2];
  v82(v38, v39, v31);
  v40 = sub_268B37A34();
  v41 = sub_268B37ED4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v83 = v31;
    v43 = v39;
    v44 = v36;
    v45 = a1;
    v46 = v42;
    *v42 = 0;
    _os_log_impl(&dword_2688BB000, v40, v41, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput creating output with a mediaPlayerSnippetModelContext.", v42, 2u);
    v47 = v46;
    a1 = v45;
    v36 = v44;
    v39 = v43;
    v31 = v83;
    MEMORY[0x26D6266E0](v47, -1, -1);
  }

  v83 = v32[1];
  v83(v38, v31);
  sub_2688E4594(v103 + 96, v106);
  v48 = __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  sub_2688C053C(a1, v30, &qword_2802A6AE0, qword_268B416B8);
  v49 = sub_268B36A54();
  if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
  {
    sub_2689A7CD8(v30, &qword_2802A6AE0, qword_268B416B8);
    v104 = 0u;
    v105 = 0u;
  }

  else
  {
    *(&v105 + 1) = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
    (*(*(v49 - 8) + 32))(boxed_opaque_existential_1, v30, v49);
  }

  v51 = *v48;
  sub_268948494(&v104);
  sub_2689A7CD8(&v104, &byte_2802A6450, &byte_268B3BE10);
  __swift_destroy_boxed_opaque_existential_0Tm(v106);
  v82(v36, v39, v31);
  v52 = sub_268B37A34();
  v53 = sub_268B37EC4();
  if (os_log_type_enabled(v52, v53))
  {
    v82 = a1;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v106[0] = v55;
    *v54 = 136315138;
    sub_268B36754();
    if (sub_268B36734())
    {
      sub_268B36714();

      v56 = v79;
      sub_268B36B14();

      v57 = sub_268B36784();
      v59 = v58;
      (*(v80 + 8))(v56, v81);
    }

    else
    {
      v59 = 0xE300000000000000;
      v57 = 4271950;
    }

    v60 = sub_26892CDB8(v57, v59, v106);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_2688BB000, v52, v53, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput with responseMode = %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x26D6266E0](v55, -1, -1);
    MEMORY[0x26D6266E0](v54, -1, -1);

    v83(v36, v31);
    a1 = v82;
  }

  else
  {

    v83(v36, v31);
  }

  v61 = sub_268B34D44();
  MEMORY[0x28223BE20](v61);
  *(&v78 - 6) = v91;
  *(&v78 - 5) = a1;
  v62 = v103;
  *(&v78 - 4) = v92;
  *(&v78 - 3) = v62;
  *(&v78 - 16) = v84 & 1;
  v64 = v96;
  v63 = v97;
  *(&v78 - 1) = v97;
  sub_268B352C4();
  v65 = v90;
  sub_268A8FA80(a1, v90);
  v66 = v95;
  sub_2688C053C(v63, v95, &unk_2802A56E0, &unk_268B3CDF0);
  v68 = v98;
  v67 = v99;
  v69 = v87;
  (*(v98 + 16))(v87, v64, v99);
  v70 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v71 = (v89 + *(v93 + 80) + v70) & ~*(v93 + 80);
  v72 = (v94 + *(v68 + 80) + v71) & ~*(v68 + 80);
  v73 = swift_allocObject();
  sub_268A8FD24(v65, v73 + v70);
  sub_268954254(v66, v73 + v71, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v68 + 32))(v73 + v72, v69, v67);
  v74 = sub_268B37DB4();
  __swift_storeEnumTagSinglePayload(v100, 1, 1, v74);
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = &unk_268B49DF8;
  v75[5] = v73;
  v76 = v102;
  v75[6] = v101;
  v75[7] = v76;

  sub_2688DB634();

  return (*(v68 + 8))(v64, v67);
}

uint64_t sub_268A84C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v40 = a7;
  v41 = a5;
  v38 = a6;
  v37 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = sub_268B367A4();
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C78, &qword_268B49DE8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v36 - v25;
  v27 = sub_268B35044();
  (*(*(v27 - 8) + 16))(v26, a2, v27);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  sub_268B35314();
  v28 = (v37 + *(type metadata accessor for SnippetModelContext() + 20));
  v29 = *v28;
  v30 = v28[1];

  sub_268B35354();

  sub_268B35334();
  sub_268A8381C(v38, v22);
  sub_268B35324();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    (*(v36 + 32))(v18, v14, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      sub_2689A7CD8(v14, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v40, v10, &unk_2802A56E0, &unk_268B3CDF0);
  v31 = *&v10[*(v39 + 48)];
  v32 = [v31 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v33 = sub_268B350F4();
  (*(*(v33 - 8) + 8))(v10, v33);
  v34 = v41[11];
  __swift_project_boxed_opaque_existential_1(v41 + 7, v41[10]);
  result = sub_268B34C84();
  if (result)
  {
    return sub_268B35364();
  }

  return result;
}

uint64_t sub_268A85084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v7 = sub_268B37A54();
  v4[18] = v7;
  v8 = *(v7 - 8);
  v4[19] = v8;
  v9 = *(v8 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v11 = sub_268B36A54();
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v13 = *(v12 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A85224, 0, 0);
}

uint64_t sub_268A85224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  v11 = v10[22];
  v12 = v10[23];
  sub_2688C053C(v10[13], v11, &qword_2802A6AE0, qword_268B416B8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2689A7CD8(v10[22], &qword_2802A6AE0, qword_268B416B8);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = v10[21];
    v14 = v10[19];
    __swift_project_value_buffer(v10[18], qword_2802CDA10);
    v15 = OUTLINED_FUNCTION_11_27();
    v16(v15);
    v17 = sub_268B37A34();
    v18 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_139_0(v18))
    {
      v19 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v19);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v20, v21, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput returning output without snippet.");
      OUTLINED_FUNCTION_83_0();
    }

    v22 = v10[21];
    v23 = v10[18];
    v24 = v10[19];
    v26 = v10[16];
    v25 = v10[17];
    v27 = v10[14];

    v28 = *(v24 + 8);
    v29 = OUTLINED_FUNCTION_70_7();
    v30(v29);
    v31 = sub_268B35094();
    OUTLINED_FUNCTION_245(v31);
    v10[29] = sub_268B35084();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v32 = OUTLINED_FUNCTION_29_6();
    v10[30] = v32;
    *(v32 + 16) = xmmword_268B3BBA0;
    v33 = OUTLINED_FUNCTION_74_2();
    sub_2688C053C(v33, v34, v35, v36);
    v37 = OUTLINED_FUNCTION_30_15();
    OUTLINED_FUNCTION_11_13(v37);
    (*(v38 + 8))(v25);
    OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
    v77 = v39;
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v10[31] = v40;
    *v40 = v41;
    v40[1] = sub_268A85838;
    v42 = v10[15];
    v43 = v10[12];
    OUTLINED_FUNCTION_26_15();
    OUTLINED_FUNCTION_164();

    return v47(v44, v45, v46, v47, v48, v49, v50, v51, v77, a10);
  }

  else
  {
    v54 = v10[24];
    v53 = v10[25];
    v55 = v10[23];
    v57 = v10[16];
    v56 = v10[17];
    v58 = v10[14];
    (*(v54 + 32))(v53, v10[22], v55);
    v59 = sub_268B35094();
    OUTLINED_FUNCTION_245(v59);
    v10[26] = sub_268B35084();
    v10[10] = v55;
    v10[11] = sub_268A8F3C4();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 7);
    (*(v54 + 16))(boxed_opaque_existential_1, v53, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v61 = OUTLINED_FUNCTION_29_6();
    v10[27] = v61;
    *(v61 + 16) = xmmword_268B3BBA0;
    OUTLINED_FUNCTION_112_2(v61, v62, &unk_2802A56E0, &unk_268B3CDF0);
    v63 = OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_11_13(v63);
    (*(v64 + 8))(v56);
    OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD38]);
    v78 = v65;
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v10[28] = v66;
    *v66 = v67;
    v66[1] = sub_268A855A4;
    v68 = v10[15];
    OUTLINED_FUNCTION_164();

    return v73(v69, v70, v71, v72, v73, v74, v75, v76, v78, a10);
  }
}

uint64_t sub_268A855A4()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = *v0;
  OUTLINED_FUNCTION_89();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 7);
  v8 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268A856D0()
{
  OUTLINED_FUNCTION_125();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  __swift_project_value_buffer(*(v0 + 144), qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_11_27();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_139_0(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v7);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v8, v9, "SiriPlaybackControlsOutputProvider.mediaPlayerSnippetOutput returning output with media player snippet.");
    OUTLINED_FUNCTION_83_0();
  }

  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 184);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 144);
  v16 = *(v0 + 96);

  v17 = *(v14 + 8);
  v18 = OUTLINED_FUNCTION_70_1();
  v19(v18);
  (*(v11 + 8))(v10, v12);
  sub_2688E6514((v0 + 16), v16);
  v20 = *(v0 + 200);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);

  OUTLINED_FUNCTION_17_24();

  return v25();
}

uint64_t sub_268A85838()
{
  OUTLINED_FUNCTION_127();
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = v1[25];
  v8 = v1[22];
  v9 = v1[21];
  v10 = v1[20];
  v11 = v1[17];

  v12 = *(v5 + 8);

  return v12();
}

void sub_268A859F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v116 = v24;
  v117 = v25;
  v112 = v26;
  v114 = v27;
  v115 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v113 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v38);
  v108 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_21();
  v109 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_74();
  v111 = v44;
  OUTLINED_FUNCTION_9();
  v45 = sub_268B37A54();
  v46 = OUTLINED_FUNCTION_1(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v110 = v51;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v52);
  v54 = &v104 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v56 = v55 - 8;
  v106 = *(v55 - 8);
  v57 = *(v106 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v58);
  MEMORY[0x28223BE20](v59);
  v60 = OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_4(v60);
  (*(v61 + 16))(v20, v32);
  v62 = *(v56 + 56);
  v118 = v20;
  *(v20 + v62) = v30;
  v63 = qword_2802A4F30;
  v64 = v30;
  if (v63 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v119 = v21;
  v65 = __swift_project_value_buffer(v45, qword_2802CDA10);
  v66 = v48;
  v68 = *(v48 + 16);
  v67 = v48 + 16;
  v69 = OUTLINED_FUNCTION_74_2();
  v105 = v70;
  (v70)(v69);
  v71 = sub_268B37A34();
  v72 = sub_268B37F04();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_14();
    *v73 = 0;
    _os_log_impl(&dword_2688BB000, v71, v72, "SiriPlaybackControlsOutputProvider.completionViewOutput...", v73, 2u);
    OUTLINED_FUNCTION_12();
  }

  v74 = *(v66 + 8);
  v75 = v54;
  v76 = v66 + 8;
  v74(v75, v45);
  v77 = v119;
  v78 = v119[6];
  __swift_project_boxed_opaque_existential_1(v119 + 2, v119[5]);
  if (sub_268B36FA4())
  {
    v79 = v111;
    sub_2688C053C(v114, v111, &qword_2802A57F0, &qword_268B3DDB0);
    v80 = v107;
    sub_2688C053C(v118, v107, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_101_2(&a17);
    OUTLINED_FUNCTION_42_5();
    v81 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_74_5();
    v83 = (v82 + v81 + 9) & ~v82;
    v84 = swift_allocObject();
    sub_268954254(v79, v84 + v76, &qword_2802A57F0, &qword_268B3DDB0);
    *(v84 + v67) = v115;
    v85 = v84 + v81;
    *v85 = v77;
    *(v85 + 8) = v112 & 1;
    sub_268954254(v80, v84 + v83, &unk_2802A56E0, &unk_268B3CDF0);
    v86 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v113, v87, v88, v86);
    OUTLINED_FUNCTION_10_18();
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v89[4] = &unk_268B49DD8;
    v89[5] = v84;
    v90 = v117;
    v89[6] = v116;
    v89[7] = v90;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v91 = v118;
    v92 = &unk_2802A56E0;
    v93 = &unk_268B3CDF0;
  }

  else
  {
    v94 = v110;
    v105(v110, v65, v45);
    v95 = sub_268B37A34();
    v96 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v96))
    {
      v97 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v97);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v98, v99, "SiriPlaybackControlsOutputProvider#completionViewOutput creating completionViewOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v74(v94, v45);
    v100 = v119[10];
    v101 = v119[11];
    OUTLINED_FUNCTION_14_20(v119 + 7);
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v102, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_85_5();
    v103 = v118;
    sub_268B34F04();
    sub_2689A7CD8(&v120, &unk_2802A5800, &unk_268B3CE10);
    v121[40] = 0;
    v116(v121);
    sub_2689A7CD8(v103, &unk_2802A56E0, &unk_268B3CDF0);
    v92 = &unk_2802A57C0;
    v93 = &qword_268B3BE00;
    v91 = v121;
  }

  sub_2689A7CD8(v91, v92, v93);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A86014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 184) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v9 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v10 = sub_268B35374();
  *(v6 + 80) = v10;
  v11 = *(v10 - 8);
  *(v6 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v13 = sub_268B367A4();
  *(v6 + 104) = v13;
  v14 = *(v13 - 8);
  *(v6 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v16 = sub_268B37A54();
  *(v6 + 128) = v16;
  v17 = *(v16 - 8);
  *(v6 + 136) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8620C, 0, 0);
}

uint64_t sub_268A8620C()
{
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  __swift_project_value_buffer(*(v0 + 128), qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_78_6();
  v60 = v6;
  v59 = v7;
  (v7)(v5);
  v8 = sub_268B37A34();
  v9 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v9))
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_53_1();
    v10 = OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v12 = *(v0 + 112);
      v11 = *(v0 + 120);
      v13 = *(v0 + 104);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5();

      v10 = v11;
      sub_268B36784();
      v14 = OUTLINED_FUNCTION_13_18();
      v15(v14, v13);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    v19 = *(v0 + 152);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v22, v23, v24);
    OUTLINED_FUNCTION_48_9();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v25, v26, "SiriPlaybackControlsOutputProvider.completionViewOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v2 = *(v20 + 8);
    v27 = OUTLINED_FUNCTION_106_2();
    v2(v27);
  }

  else
  {
    v10 = *(v0 + 152);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);

    v18 = OUTLINED_FUNCTION_50_8();
    v2(v18);
  }

  OUTLINED_FUNCTION_96_4();
  v28 = *(v0 + 184);
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  v58 = *(v0 + 24);
  sub_268B34D44();
  v31 = swift_task_alloc();
  *(v31 + 16) = v58;
  *(v31 + 32) = v29;
  *(v31 + 40) = v28;
  *(v31 + 48) = v30;
  OUTLINED_FUNCTION_34_11();

  v59(v10, v60, v8);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v34);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v35, v36, "SiriPlaybackControlsOutputProvider.completionViewOutput returning completionViewOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v38 = *(v0 + 136);
  v37 = *(v0 + 144);
  v39 = *(v0 + 128);
  v41 = *(v0 + 56);
  v40 = *(v0 + 64);
  v42 = *(v0 + 48);

  v43 = OUTLINED_FUNCTION_70_7();
  v2(v43);
  v44 = sub_268B35094();
  OUTLINED_FUNCTION_245(v44);
  *(v0 + 160) = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v45 = OUTLINED_FUNCTION_29_6();
  *(v0 + 168) = v45;
  *(v45 + 16) = xmmword_268B3BBA0;
  v46 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v46, v47, v48, v49);
  v50 = OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13(v50);
  (*(v51 + 8))(v40);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v61 = v52;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v0 + 176) = v53;
  *v53 = v54;
  v53[1] = sub_268A86570;
  v55 = *(v0 + 96);
  v56 = *(v0 + 16);
  OUTLINED_FUNCTION_26_15();

  return v61();
}

uint64_t sub_268A86570()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A8668C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v33 = a6;
  v31 = a5;
  v35 = a4;
  v30 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v34 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = sub_268B367A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C78, &qword_268B49DE8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_2688C053C(v30, &v30 - v23, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();

  sub_268B35334();
  sub_268A8381C(v31, v20);
  sub_268B35324();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_2689A7CD8(v11, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  v24 = v34;
  sub_2688C053C(v33, v34, &unk_2802A56E0, &unk_268B3CDF0);
  v25 = *(v24 + *(v32 + 48));
  v26 = [v25 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v27 = sub_268B350F4();
  (*(*(v27 - 8) + 8))(v24, v27);
  v28 = v35[11];
  __swift_project_boxed_opaque_existential_1(v35 + 7, v35[10]);
  result = sub_268B34C84();
  if (result)
  {
    return sub_268B35364();
  }

  return result;
}

void sub_268A86A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v225 = v25;
  v226 = v20;
  v223 = v26;
  v224 = v27;
  v29 = v28;
  v31 = v30;
  v210 = sub_268B354F4();
  v32 = OUTLINED_FUNCTION_1(v210);
  v209 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v220 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v46);
  v219 = sub_268B36A54();
  v47 = OUTLINED_FUNCTION_1(v219);
  v214 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v51);
  OUTLINED_FUNCTION_97_3(&v232 + 8);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v53);
  v206 = sub_268B367A4();
  v54 = OUTLINED_FUNCTION_1(v206);
  v205 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v58);
  v59 = sub_268B34DA4();
  v60 = OUTLINED_FUNCTION_22(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  v63 = sub_268B35374();
  v64 = OUTLINED_FUNCTION_1(v63);
  v221 = v65;
  v222 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_52_10();
  v218 = v68;
  OUTLINED_FUNCTION_97_3(&a18);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_78();
  v230 = v70;
  OUTLINED_FUNCTION_9();
  v71 = sub_268B37A54();
  v72 = OUTLINED_FUNCTION_1(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3();
  v207 = v77;
  OUTLINED_FUNCTION_8();
  v79 = MEMORY[0x28223BE20](v78);
  v81 = v202 - v80;
  MEMORY[0x28223BE20](v79);
  v203 = v202 - v82;
  OUTLINED_FUNCTION_8();
  v84 = MEMORY[0x28223BE20](v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_15();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v86 = OUTLINED_FUNCTION_105_0(v85);
  v215 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_33_16(v202);
  OUTLINED_FUNCTION_97_3(&a16);
  MEMORY[0x28223BE20](v90);
  v91 = OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_4(v91);
  (*(v92 + 16))(v21, v31);
  v93 = *(v22 + 56);
  v231 = v21;
  *(v21 + v93) = v29;
  v94 = qword_2802A4F30;
  v95 = v29;
  if (v94 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v96 = __swift_project_value_buffer(v71, qword_2802CDA10);
  v97 = v74;
  v99 = *(v74 + 16);
  v98 = v74 + 16;
  v227 = v96;
  v228 = v99;
  v99(v20);
  v100 = sub_268B37A34();
  v101 = sub_268B37F04();
  if (OUTLINED_FUNCTION_183_0(v101))
  {
    v102 = OUTLINED_FUNCTION_14();
    *v102 = 0;
    _os_log_impl(&dword_2688BB000, v100, v101, "SiriPlaybackControlsOutputProvider.confirmationViewOutput...", v102, 2u);
    OUTLINED_FUNCTION_12();
  }

  v103 = *(v97 + 8);
  v229 = (v97 + 8);
  (v103)(v20, v71);
  v104 = v103;
  v105 = v226;
  v106 = v226[6];
  __swift_project_boxed_opaque_existential_1(v226 + 2, v226[5]);
  if (sub_268B36FA4())
  {
    v107 = sub_268B34D54();
    MEMORY[0x28223BE20](v107);
    sub_268B352C4();
    OUTLINED_FUNCTION_104_4();
    v108();
    v109 = sub_268B37A34();
    v110 = sub_268B37EC4();
    v111 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
    if (os_log_type_enabled(v109, v110))
    {
      v112 = OUTLINED_FUNCTION_172_0();
      v113 = OUTLINED_FUNCTION_173_0();
      *&v232 = v113;
      *v112 = 136315138;
      sub_268B36754();
      if (sub_268B36734())
      {
        sub_268B36714();

        v223 = v104;
        v114 = v204;
        sub_268B36B14();

        v115 = sub_268B36784();
        v111 = v116;
        v117 = v114;
        v104 = v223;
        (*(v205 + 8))(v117, v206);
      }

      else
      {
        v115 = 7104878;
        v111 = 0xE300000000000000;
      }

      v147 = sub_26892CDB8(v115, v111, &v232);

      *(v112 + 4) = v147;
      _os_log_impl(&dword_2688BB000, v109, v110, "SiriPlaybackControlsOutputProvider.confirmationViewOutput responseMode = %s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v148 = OUTLINED_FUNCTION_86_4();
      v104(v148);
      v105 = v226;
    }

    else
    {

      v137 = OUTLINED_FUNCTION_86_4();
      v103(v137);
    }

    v149 = v105[10];
    v150 = v105[11];
    OUTLINED_FUNCTION_14_20(v105 + 7);
    if (sub_268B34D24())
    {
      v143 = v231;
      OUTLINED_FUNCTION_82_3();
      sub_2688C053C(v151, v152, v153, &unk_268B3CDF0);
      v155 = v221;
      v154 = v222;
      v156 = v218;
      (*(v221 + 16))(v218, v230, v222);
      v157 = (*(v215 + 80) + 24) & ~*(v215 + 80);
      v158 = *(v155 + 80);
      OUTLINED_FUNCTION_99_4();
      v159 = swift_allocObject();
      *(v159 + 16) = v105;
      sub_268954254(v111, v159 + v157, &unk_2802A56E0, &unk_268B3CDF0);
      (*(v155 + 32))(v159 + v98, v156, v154);
      v160 = sub_268B37DB4();
      OUTLINED_FUNCTION_4_7(v220, v161, v162, v160);
      OUTLINED_FUNCTION_10_18();
      v163 = swift_allocObject();
      v163[2] = 0;
      v163[3] = 0;
      v163[4] = &unk_268B49DC0;
      v163[5] = v159;
      v164 = v225;
      v163[6] = v224;
      v163[7] = v164;

      OUTLINED_FUNCTION_12_22();
      sub_2688DB634();

      (*(v155 + 8))(v230, v154);
      goto LABEL_30;
    }

    v165 = sub_268B376A4();
    v166 = sub_268B37694();
    *(&v233 + 1) = v165;
    v234 = MEMORY[0x277D5F928];
    *&v232 = v166;
    v167 = v211;
    sub_268A60494();
    __swift_destroy_boxed_opaque_existential_0Tm(&v232);
    v168 = v219;
    if (__swift_getEnumTagSinglePayload(v167, 1, v219) != 1)
    {
      v179 = v214;
      v229 = *(v214 + 32);
      v180 = v213;
      v229(v213, v167, v168);
      v181 = v179;
      (*(v179 + 16))(v212, v180, v168);
      v143 = v231;
      v182 = v217;
      sub_2688C053C(v231, v217, &unk_2802A56E0, &unk_268B3CDF0);
      v183 = v221;
      v184 = v218;
      (*(v221 + 16))(v218, v230, v222);
      v185 = (*(v181 + 80) + 24) & ~*(v181 + 80);
      OUTLINED_FUNCTION_74_5();
      v187 = (v202[1] + v186 + v185) & ~v186;
      v188 = (v216 + *(v183 + 80) + v187) & ~*(v183 + 80);
      v189 = swift_allocObject();
      v190 = v168;
      v191 = v189;
      *(v189 + 16) = v105;
      v229(v189 + v185, v212, v190);
      sub_268954254(v182, v191 + v187, &unk_2802A56E0, &unk_268B3CDF0);
      v192 = v222;
      (*(v183 + 32))(v191 + v188, v184, v222);
      v193 = sub_268B37DB4();
      OUTLINED_FUNCTION_4_7(v220, v194, v195, v193);
      OUTLINED_FUNCTION_10_18();
      v196 = swift_allocObject();
      v196[2] = 0;
      v196[3] = 0;
      v196[4] = &unk_268B49DA8;
      v196[5] = v191;
      v197 = v225;
      v196[6] = v224;
      v196[7] = v197;

      OUTLINED_FUNCTION_12_22();
      sub_2688DB634();

      (*(v214 + 8))(v213, v219);
      (*(v183 + 8))(v230, v192);
      goto LABEL_30;
    }

    sub_2689A7CD8(v167, &qword_2802A6AE0, qword_268B416B8);
    v169 = v203;
    OUTLINED_FUNCTION_104_4();
    v170();
    v171 = sub_268B37A34();
    v172 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_183_0(v172))
    {
      v173 = OUTLINED_FUNCTION_172_0();
      v174 = OUTLINED_FUNCTION_173_0();
      *&v232 = v174;
      *v173 = 136315138;
      sub_268B36754();
      if (sub_268B36734())
      {
        sub_268B36714();

        v175 = v204;
        sub_268B36B14();

        v176 = sub_268B36784();
        v178 = v177;
        (*(v205 + 8))(v175, v206);
      }

      else
      {
        v176 = 7104878;
        v178 = 0xE300000000000000;
      }

      v198 = sub_26892CDB8(v176, v178, &v232);

      *(v173 + 4) = v198;
      OUTLINED_FUNCTION_93_6(&dword_2688BB000, v199, v172, "SiriPlaybackControlsOutputProvider.confirmationViewOutput Unable to generate RF confirmationSnippet for confirmation. (responseMode = %s)");
      __swift_destroy_boxed_opaque_existential_0Tm(v174);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_83_0();
    }

    (v104)(v169, v71);
    sub_2688C2ECC();
    v200 = swift_allocError();
    *v201 = -86;
    *&v232 = v200;
    v235 = 1;
    v224(&v232);
    sub_2689A7CD8(&v232, &unk_2802A57C0, &qword_268B3BE00);
    (*(v221 + 8))(v230, v222);
LABEL_29:
    v143 = v231;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_104_4();
  v118();
  v119 = sub_268B37A34();
  v120 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v120))
  {
    v121 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v121);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v122, v123, "SiriPlaybackControlsOutputProvider.confirmationViewOutput creating views for non-RF response");
    OUTLINED_FUNCTION_83_0();
  }

  (v104)(v81, v71);
  sub_268B376A4();
  v124 = sub_268B37694();
  v125 = sub_268A8E470(v105 + 7, v124);
  v127 = v126;

  if (v127)
  {
    sub_268A48FEC(v125, 1);
    OUTLINED_FUNCTION_104_4();
    v128();
    v129 = sub_268B37A34();
    v130 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v130))
    {
      v131 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v131);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v132, v133, "SiriPlaybackControlsOutputProvider.confirmationViewOutput Unable to generate views for confirmation");
      OUTLINED_FUNCTION_83_0();
    }

    v134 = OUTLINED_FUNCTION_86_4();
    v104(v134);
    sub_2688C2ECC();
    v135 = swift_allocError();
    *v136 = -68;
    *&v232 = v135;
    v235 = 1;
    v224(&v232);
    sub_2689A7CD8(&v232, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_29;
  }

  v138 = __swift_project_boxed_opaque_existential_1(v105 + 12, v105[15]);
  *(&v233 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  *&v232 = v125;
  v139 = *v138;

  sub_268948494(&v232);
  sub_2689A7CD8(&v232, &byte_2802A6450, &byte_268B3BE10);
  v140 = v105[10];
  v141 = v105[11];
  OUTLINED_FUNCTION_27_13(v105 + 7);
  sub_268B34CA4();
  v234 = 0;
  v232 = 0u;
  v233 = 0u;
  v142 = v208;
  v143 = v231;
  sub_268B34F24();
  sub_268A48FEC(v125, 0);
  sub_2689A7CD8(&v232, &unk_2802A5800, &unk_268B3CE10);
  v144 = v210;
  *(&v233 + 1) = v210;
  v234 = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v232);
  v146 = v209;
  (*(v209 + 16))(boxed_opaque_existential_1, v142, v144);
  v235 = 0;
  v224(&v232);
  (*(v146 + 8))(v142, v144);
  sub_2689A7CD8(&v232, &unk_2802A57C0, &qword_268B3BE00);
LABEL_30:
  sub_2689A7CD8(v143, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A87AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_268B367A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_2688C053C(a2, &v23 - v18, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_2689A7CD8(v10, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v24, v6, &unk_2802A56E0, &unk_268B3CDF0);
  v19 = *&v6[*(v23 + 48)];
  v20 = [v19 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v21 = sub_268B350F4();
  (*(*(v21 - 8) + 8))(v6, v21);
  sub_268B35344();
  return sub_268B35304();
}

uint64_t sub_268A87E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_268B37A54();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A87F30, 0, 0);
}

uint64_t sub_268A87F30()
{
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[9];
  v1 = v0[10];
  __swift_project_value_buffer(v0[8], qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_11_27();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_139_0(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v7);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v8, v9, "SiriPlaybackControlsOutputProvider.confirmationViewOutput creating confirmationViewOutput without snippet using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];

  v17 = *(v11 + 8);
  v18 = OUTLINED_FUNCTION_70_1();
  v19(v18);
  v20 = *__swift_project_boxed_opaque_existential_1((v16 + 96), *(v16 + 120));
  sub_268948308(MEMORY[0x277D84F90]);
  v21 = sub_268B35094();
  OUTLINED_FUNCTION_245(v21);
  v0[11] = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v22 = OUTLINED_FUNCTION_29_6();
  v0[12] = v22;
  *(v22 + 16) = xmmword_268B3BBA0;
  OUTLINED_FUNCTION_112_2(v22, v23, &unk_2802A56E0, &unk_268B3CDF0);
  v24 = OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_11_13(v24);
  (*(v25 + 8))(v12);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v32 = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[13] = v27;
  *v27 = v28;
  v27[1] = sub_268A88134;
  v29 = v0[5];
  v30 = v0[2];

  return v32(v30, v22, v29);
}

uint64_t sub_268A88134()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_219();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[7];
  v7 = *v0;
  OUTLINED_FUNCTION_89();
  *v8 = v7;

  OUTLINED_FUNCTION_17_24();

  return v9();
}

uint64_t sub_268A8828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v8 = sub_268B367A4();
  v5[18] = v8;
  v9 = *(v8 - 8);
  v5[19] = v9;
  v10 = *(v9 + 64) + 15;
  v5[20] = swift_task_alloc();
  v11 = sub_268B37A54();
  v5[21] = v11;
  v12 = *(v11 - 8);
  v5[22] = v12;
  v13 = *(v12 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A883EC, 0, 0);
}

uint64_t sub_268A883EC()
{
  v49 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[22];
  v1 = v0[23];
  __swift_project_value_buffer(v0[21], qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_11_27();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_183_0(v6))
  {
    v7 = OUTLINED_FUNCTION_172_0();
    v8 = OUTLINED_FUNCTION_173_0();
    v48 = v8;
    *v7 = 136315138;
    sub_268B36754();
    if (sub_268B36734())
    {
      v10 = v0[19];
      v9 = v0[20];
      v11 = v0[18];
      sub_268B36714();
      OUTLINED_FUNCTION_98_2();

      sub_268B36B14();

      v12 = sub_268B36784();
      v14 = v13;
      v15 = OUTLINED_FUNCTION_51_6();
      v16(v15);
    }

    else
    {
      v14 = 0xE400000000000000;
      v12 = 1701736270;
    }

    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[21];
    sub_26892CDB8(v12, v14, &v48);
    OUTLINED_FUNCTION_98_2();

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_93_6(&dword_2688BB000, v23, v6, "SiriPlaybackControlsOutputProvider.confirmationViewOutput creating confirmationViewOutput using RF 2.0 with responseMode = %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_83_0();

    v24 = OUTLINED_FUNCTION_51_6();
    v25(v24);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v27 = v0[16];
  v26 = v0[17];
  v29 = v0[13];
  v28 = v0[14];
  v30 = __swift_project_boxed_opaque_existential_1((v0[12] + 96), *(v0[12] + 120));
  v31 = sub_268B36A54();
  v0[10] = v31;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_70(v31);
  v33 = *(v32 + 16);
  v33();
  v34 = *v30;
  sub_268948494((v0 + 7));
  sub_2689A7CD8((v0 + 7), &byte_2802A6450, &byte_268B3BE10);
  v35 = sub_268B35094();
  OUTLINED_FUNCTION_245(v35);
  v0[24] = sub_268B35084();
  v0[5] = v31;
  v0[6] = sub_268A8F3C4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (v33)(boxed_opaque_existential_1, v29, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v37 = OUTLINED_FUNCTION_29_6();
  v0[25] = v37;
  *(v37 + 16) = xmmword_268B3BBA0;
  OUTLINED_FUNCTION_112_2(v37, v38, &unk_2802A56E0, &unk_268B3CDF0);
  v39 = OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_11_13(v39);
  (*(v40 + 8))(v26);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD40]);
  v47 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[26] = v42;
  *v42 = v43;
  v42[1] = sub_268A88760;
  v44 = v0[15];
  v45 = v0[11];

  return v47(v45, v0 + 2, v37, v44);
}

uint64_t sub_268A88760()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v3 = v1[26];
  v4 = v1[25];
  v5 = v1[24];
  v6 = v1[23];
  v7 = v1[20];
  v8 = v1[17];
  v9 = *v0;
  OUTLINED_FUNCTION_89();
  *v10 = v9;

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_277();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_268A888DC()
{
  OUTLINED_FUNCTION_26();
  v95 = v2;
  v96 = v0;
  v94 = v3;
  v88 = v4;
  v89 = v5;
  v90 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v91 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v16);
  v85 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_21();
  v86 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_74();
  v92 = v22;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B37A54();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v87 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v32 = v31 - 8;
  v84 = *(v31 - 8);
  v33 = *(v84 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_33_16(&v83);
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_4(v35);
  (*(v36 + 16))(v1, v10);
  v37 = *(v32 + 56);
  v93 = v1;
  *(v1 + v37) = v8;
  v38 = qword_2802A4F30;
  v39 = v8;
  if (v38 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v41 = v26 + 16;
  v42 = *(v26 + 16);
  v42(v0, v40, v23);
  v43 = sub_268B37A34();
  v44 = sub_268B37F04();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v45);
    _os_log_impl(&dword_2688BB000, v43, v44, "SiriPlaybackControlsOutputProvider.clarificationViewOutput...", v38, 2u);
    OUTLINED_FUNCTION_83_0();
  }

  v46 = *(v26 + 8);
  v46(v0, v23);
  v47 = v96[5];
  v48 = v96[6];
  OUTLINED_FUNCTION_27_13(v96 + 2);
  if (sub_268B36FA4())
  {
    v49 = v92;
    sub_2688C053C(v88, v92, &qword_2802A57F0, &qword_268B3DDB0);
    v50 = v93;
    OUTLINED_FUNCTION_82_3();
    sub_2688C053C(v51, v52, &unk_2802A56E0, v53);
    OUTLINED_FUNCTION_83_5(v85);
    v54 = v41 + v86;
    OUTLINED_FUNCTION_74_5();
    v56 = (v55 + v54 + 2) & ~v55;
    v57 = swift_allocObject();
    sub_268954254(v49, v57 + v41, &qword_2802A57F0, &qword_268B3DDB0);
    v58 = (v57 + v54);
    *v58 = v89 & 1;
    v58[1] = v90 & 1;
    sub_268954254(v0, v57 + v56, &unk_2802A56E0, &unk_268B3CDF0);
    v59 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v91, v60, v61, v59);
    OUTLINED_FUNCTION_10_18();
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = &unk_268B49D88;
    v62[5] = v57;
    v63 = v95;
    v62[6] = v94;
    v62[7] = v63;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v64 = v50;
    v65 = &unk_2802A56E0;
    v66 = &unk_268B3CDF0;
  }

  else
  {
    v67 = v87;
    v42(v87, v40, v23);
    v68 = sub_268B37A34();
    v69 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v69))
    {
      v70 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v70);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v71, v72, "SiriPlaybackControlsOutputProvider.clarificationViewOutput creating clarificationViewOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v46(v67, v23);
    v73 = v96[10];
    v74 = v96[11];
    OUTLINED_FUNCTION_14_20(v96 + 7);
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    v75 = sub_268B35044();
    v76 = v92;
    OUTLINED_FUNCTION_4_7(v92, v77, v78, v75);
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v79, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_85_5();
    v80 = v93;
    sub_268B34F34();
    sub_2689A7CD8(&v97, &unk_2802A5800, &unk_268B3CE10);
    sub_2689A7CD8(v76, &qword_2802A57F0, &qword_268B3DDB0);
    v81 = OUTLINED_FUNCTION_36_10();
    v82(v81);
    sub_2689A7CD8(v80, &unk_2802A56E0, &unk_268B3CDF0);
    v65 = &unk_2802A57C0;
    v66 = &qword_268B3BE00;
    v64 = &v98;
  }

  sub_2689A7CD8(v64, v65, v66);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A88ECC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = a5;
  *(v5 + 169) = a4;
  *(v5 + 168) = a3;
  *(v5 + 16) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  *(v5 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v8 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = sub_268B35374();
  *(v5 + 64) = v9;
  v10 = *(v9 - 8);
  *(v5 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v12 = sub_268B367A4();
  *(v5 + 88) = v12;
  v13 = *(v12 - 8);
  *(v5 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v15 = sub_268B37A54();
  *(v5 + 112) = v15;
  v16 = *(v15 - 8);
  *(v5 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A890C4, 0, 0);
}

uint64_t sub_268A890C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_107_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = *(v16 + 136);
  v20 = *(v16 + 120);
  __swift_project_value_buffer(*(v16 + 112), qword_2802CDA10);
  v21 = OUTLINED_FUNCTION_78_6();
  v86 = v22;
  v85 = v23;
  (v23)(v21);
  v24 = sub_268B37A34();
  v25 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v25))
  {
    OUTLINED_FUNCTION_172_0();
    a13 = OUTLINED_FUNCTION_53_1();
    v26 = OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v28 = *(v16 + 96);
      v27 = *(v16 + 104);
      v29 = *(v16 + 88);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5();

      v26 = v27;
      sub_268B36784();
      v30 = OUTLINED_FUNCTION_13_18();
      v31(v30, v29);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    v34 = *(v16 + 136);
    v36 = *(v16 + 112);
    v35 = *(v16 + 120);
    v37 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v37, v38, v39);
    OUTLINED_FUNCTION_48_9();

    *(v17 + 4) = v18;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v40, v41, "SiriPlaybackControlsOutputProvider.clarificationViewOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v42 = *(v35 + 8);
    v43 = OUTLINED_FUNCTION_106_2();
    v84 = v44;
    (v44)(v43);
  }

  else
  {
    v26 = *(v16 + 136);
    v32 = *(v16 + 112);
    v33 = *(v16 + 120);

    v84 = *(v33 + 8);
    v84(v26, v32);
  }

  OUTLINED_FUNCTION_100_3();
  v45 = *(v16 + 169);
  v46 = *(v16 + 168);
  v48 = *(v16 + 24);
  v47 = *(v16 + 32);
  sub_268B34D64();
  v49 = swift_task_alloc();
  *(v49 + 16) = v48;
  *(v49 + 24) = v46;
  *(v49 + 25) = v45;
  *(v49 + 32) = v47;
  OUTLINED_FUNCTION_34_11();

  v85(v26, v86, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v51))
  {
    v52 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v52);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v53, v54, "SiriPlaybackControlsOutputProvider.clarificationViewOutput creating clarificationViewOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v56 = *(v16 + 120);
  v55 = *(v16 + 128);
  v57 = *(v16 + 112);
  v59 = *(v16 + 40);
  v58 = *(v16 + 48);
  v60 = *(v16 + 32);

  v61 = OUTLINED_FUNCTION_70_7();
  (v84)(v61);
  v62 = sub_268B35094();
  OUTLINED_FUNCTION_245(v62);
  *(v16 + 144) = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v63 = OUTLINED_FUNCTION_29_6();
  *(v16 + 152) = v63;
  *(v63 + 16) = xmmword_268B3BBA0;
  v64 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13(v68);
  (*(v69 + 8))(v58);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v87 = v70;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v16 + 160) = v71;
  *v71 = v72;
  v71[1] = sub_268A8941C;
  v73 = *(v16 + 80);
  v74 = *(v16 + 16);
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_108_2();

  return v78(v75, v76, v77, v78, v79, v80, v81, v82, v84, v85, v86, v87, a13, a14, a15, a16);
}

uint64_t sub_268A8941C()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A89538()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[7];
  v5 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_277();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_268A895E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v6 = sub_268B34E54();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v9 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_268B367A4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_2688C053C(a2, &v28 - v23, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    (*(v17 + 32))(v20, v15, v16);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_2689A7CD8(v15, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_268B35344();
  sub_268B35304();
  sub_2688C053C(v31, v11, &unk_2802A56E0, &unk_268B3CDF0);
  v24 = *&v11[*(v28 + 48)];
  v25 = [v24 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v26 = sub_268B350F4();
  (*(*(v26 - 8) + 8))(v11, v26);
  (*(v33 + 104))(v32, *MEMORY[0x277D5BC50], v34);
  return sub_268B352E4();
}

void sub_268A899F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v112 = v26;
  v113 = v27;
  v110 = v28;
  v111 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v109 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v37);
  v105[3] = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_21();
  v105[4] = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_74();
  v107 = v43;
  OUTLINED_FUNCTION_9();
  v44 = sub_268B37A54();
  v45 = OUTLINED_FUNCTION_1(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v106 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v53 = OUTLINED_FUNCTION_102_4(v52);
  v105[1] = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_33_16(v105);
  MEMORY[0x28223BE20](v57);
  v58 = OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_4(v58);
  v60 = *(v59 + 16);
  v61 = OUTLINED_FUNCTION_106_2();
  v62(v61);
  v63 = *(v22 + 56);
  v114 = v20;
  *(v20 + v63) = v31;
  v64 = qword_2802A4F30;
  v65 = v31;
  if (v64 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v66 = __swift_project_value_buffer(v44, qword_2802CDA10);
  v67 = v47;
  v69 = *(v47 + 16);
  v68 = v47 + 16;
  v105[0] = v69;
  v69(v21, v66, v44);
  v70 = sub_268B37A34();
  v71 = sub_268B37F04();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_14();
    *v72 = 0;
    _os_log_impl(&dword_2688BB000, v70, v71, "SiriPlaybackControlsOutputProvider.summaryViewOutput...", v72, 2u);
    v25 = v21;
    OUTLINED_FUNCTION_12();
  }

  v73 = *(v67 + 8);
  v108 = v67 + 8;
  v73(v21, v44);
  v74 = v25;
  v75 = v25[5];
  v76 = v25[6];
  OUTLINED_FUNCTION_27_13(v74 + 2);
  if (sub_268B36FA4())
  {
    v77 = v107;
    sub_2688C053C(v110, v107, &qword_2802A57F0, &qword_268B3DDB0);
    OUTLINED_FUNCTION_82_3();
    sub_2688C053C(v78, v79, v80, v81);
    OUTLINED_FUNCTION_101_2(&a18);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_74_5();
    v83 = (v82 + v68 + 8) & ~v82;
    v84 = swift_allocObject();
    sub_268954254(v77, v73 + v84, &qword_2802A57F0, &qword_268B3DDB0);
    *(v84 + v68) = v111;
    sub_268954254(v21, v84 + v83, &unk_2802A56E0, &unk_268B3CDF0);
    *(v84 + ((v56 + v83 + 7) & 0xFFFFFFFFFFFFFFF8)) = v74;
    v85 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v109, v86, v87, v85);
    OUTLINED_FUNCTION_10_18();
    v88 = swift_allocObject();
    v88[2] = 0;
    v88[3] = 0;
    v88[4] = &unk_268B49D70;
    v88[5] = v84;
    v89 = v113;
    v88[6] = v112;
    v88[7] = v89;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v90 = v114;
    v91 = &unk_2802A56E0;
    v92 = &unk_268B3CDF0;
  }

  else
  {
    v93 = v106;
    (v105[0])(v106, v66, v44);
    v94 = sub_268B37A34();
    v95 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v95))
    {
      v96 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v96);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v97, v98, "SiriPlaybackControlsOutputProvider.summaryViewOutput creating summaryViewOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v73(v93, v44);
    v99 = v74[10];
    v100 = v74[11];
    OUTLINED_FUNCTION_14_20(v74 + 7);
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v101, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    v102 = v114;
    sub_268B34EE4();
    sub_2689A7CD8(&v115, &unk_2802A5800, &unk_268B3CE10);
    v103 = OUTLINED_FUNCTION_36_10();
    v104(v103);
    sub_2689A7CD8(v102, &unk_2802A56E0, &unk_268B3CDF0);
    v91 = &unk_2802A57C0;
    v92 = &qword_268B3BE00;
    v90 = &v116;
  }

  sub_2689A7CD8(v90, v91, v92);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A89FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_268B35374();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = sub_268B367A4();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = sub_268B37A54();
  v5[16] = v15;
  v16 = *(v15 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8A1C4, 0, 0);
}

uint64_t sub_268A8A1C4()
{
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  __swift_project_value_buffer(*(v0 + 128), qword_2802CDA10);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_54_5();
  v5(v6);
  v7 = sub_268B37A34();
  v8 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v8))
  {
    v54 = v5;
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v10 = *(v0 + 112);
      v9 = *(v0 + 120);
      v52 = *(v0 + 104);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5();

      sub_268B36784();
      v11 = OUTLINED_FUNCTION_13_18();
      v12(v11, v52);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    v53 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v19, v20, v21);
    OUTLINED_FUNCTION_48_9();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v22, v23, "SiriPlaybackControlsOutputProvider.summaryViewOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v2 = *(v17 + 8);
    v2(v53, v18);
    v5 = v54;
  }

  else
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);

    v16 = OUTLINED_FUNCTION_50_8();
    (v2)(v16);
  }

  OUTLINED_FUNCTION_96_4();
  v55 = *(v0 + 40);
  v56 = *(v0 + 24);
  sub_268B34D84();
  v24 = swift_task_alloc();
  *(v24 + 16) = v56;
  *(v24 + 32) = v55;
  OUTLINED_FUNCTION_34_11();

  v25 = OUTLINED_FUNCTION_54_5();
  v5(v25);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v28);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v29, v30, "SiriPlaybackControlsOutputProvider.summaryViewOutput creating summaryViewOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 128);
  v35 = *(v0 + 56);
  v34 = *(v0 + 64);
  v36 = *(v0 + 40);

  v37 = OUTLINED_FUNCTION_70_7();
  (v2)(v37);
  v38 = sub_268B35094();
  OUTLINED_FUNCTION_245(v38);
  *(v0 + 160) = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v39 = OUTLINED_FUNCTION_29_6();
  *(v0 + 168) = v39;
  *(v39 + 16) = xmmword_268B3BBA0;
  v40 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v40, v41, v42, v43);
  v44 = OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13(v44);
  (*(v45 + 8))(v34);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v57 = v46;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v0 + 176) = v47;
  *v47 = v48;
  v47[1] = sub_268A8A524;
  v49 = *(v0 + 96);
  v50 = *(v0 + 16);
  OUTLINED_FUNCTION_26_15();

  return v57();
}

uint64_t sub_268A8A524()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A8A640()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_277();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_268A8A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v6 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_268B367A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  sub_2688C053C(a2, &v26 - v20, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();

  sub_268B35334();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_2689A7CD8(v12, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v28, v8, &unk_2802A56E0, &unk_268B3CDF0);
  v21 = *&v8[*(v27 + 48)];
  v22 = [v21 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v23 = sub_268B350F4();
  (*(*(v23 - 8) + 8))(v8, v23);
  v24 = v29[11];
  __swift_project_boxed_opaque_existential_1(v29 + 7, v29[10]);
  result = sub_268B34C84();
  if (result)
  {
    return sub_268B35364();
  }

  return result;
}

void sub_268A8AA80()
{
  OUTLINED_FUNCTION_26();
  v76 = v3;
  v75 = v4;
  v73 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v72 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v15);
  v69 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  v71 = v20;
  OUTLINED_FUNCTION_9();
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v70 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = OUTLINED_FUNCTION_105_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_79(v33);
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_4(v35);
  (*(v36 + 16))(v1, v9);
  v74 = v1;
  *(v1 + *(v2 + 56)) = v7;
  v37 = qword_2802A4F30;
  v38 = v7;
  if (v37 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v39 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v40 = v24 + 16;
  v41 = *(v24 + 16);
  v41(v0, v39, v21);
  v42 = sub_268B37A34();
  v43 = sub_268B37F04();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v44);
    _os_log_impl(&dword_2688BB000, v42, v43, "SiriPlaybackControlsOutputProvider.errorOutput...", v37, 2u);
    OUTLINED_FUNCTION_83_0();
  }

  v47 = *(v24 + 8);
  v45 = v24 + 8;
  v46 = v47;
  v47(v0, v21);
  v48 = v0[5];
  v49 = v0[6];
  OUTLINED_FUNCTION_27_13(v0 + 2);
  if (sub_268B36FA4())
  {
    sub_2688C053C(v73, v71, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C053C(v74, v68, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_83_5(v69);
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_99_4();
    v50 = swift_allocObject();
    sub_268954254(v71, v50 + v45, &qword_2802A57F0, &qword_268B3DDB0);
    sub_268954254(v68, v50 + v40, &unk_2802A56E0, &unk_268B3CDF0);
    v51 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v72, v52, v53, v51);
    OUTLINED_FUNCTION_10_18();
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = &unk_268B49D58;
    v54[5] = v50;
    v54[6] = v75;
    v54[7] = v76;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v55 = OUTLINED_FUNCTION_13_13();
    v57 = &unk_268B3CDF0;
  }

  else
  {
    v41(v70, v39, v21);
    v58 = sub_268B37A34();
    v59 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v59))
    {
      v60 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v60);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v61, v62, "SiriPlaybackControlsOutputProvider.errorOutput creating errorOutput");
      OUTLINED_FUNCTION_83_0();
    }

    v46(v70, v21);
    v63 = v0[10];
    v64 = v0[11];
    OUTLINED_FUNCTION_14_20(v0 + 7);
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v65, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_85_5();
    sub_268B34F44();
    sub_2689A7CD8(&v77, &unk_2802A5800, &unk_268B3CE10);
    v66 = OUTLINED_FUNCTION_36_10();
    v67(v66);
    sub_2689A7CD8(v74, &unk_2802A56E0, &unk_268B3CDF0);
    v56 = &unk_2802A57C0;
    v57 = &qword_268B3BE00;
    v55 = &v78;
  }

  sub_2689A7CD8(v55, v56, v57);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_268B35374();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_268B367A4();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_268B37A54();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8B1E8, 0, 0);
}

uint64_t sub_268A8B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_107_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = *(v16 + 136);
  v20 = *(v16 + 120);
  __swift_project_value_buffer(*(v16 + 112), qword_2802CDA10);
  v21 = *(v20 + 16);
  v22 = OUTLINED_FUNCTION_54_5();
  v21(v22);
  v23 = sub_268B37A34();
  v24 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v24))
  {
    a10 = v21;
    OUTLINED_FUNCTION_172_0();
    a13 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v26 = *(v16 + 96);
      v25 = *(v16 + 104);
      v75 = *(v16 + 88);
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5();

      sub_268B36784();
      v27 = OUTLINED_FUNCTION_13_18();
      v28(v27, v75);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    a9 = *(v16 + 136);
    v34 = *(v16 + 112);
    v33 = *(v16 + 120);
    v35 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v35, v36, v37);
    OUTLINED_FUNCTION_48_9();

    *(v17 + 4) = v18;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v38, v39, "SiriPlaybackControlsOutputProvider.errorOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v18 = *(v33 + 8);
    v18(a9, v34);
    v21 = a10;
  }

  else
  {
    v29 = *(v16 + 136);
    v30 = *(v16 + 112);
    v31 = *(v16 + 120);

    v32 = OUTLINED_FUNCTION_50_8();
    (v18)(v32);
  }

  OUTLINED_FUNCTION_100_3();
  v76 = *(v16 + 24);
  sub_268B34D74();
  *(swift_task_alloc() + 16) = v76;
  OUTLINED_FUNCTION_34_11();

  v40 = OUTLINED_FUNCTION_54_5();
  v21(v40);
  v41 = sub_268B37A34();
  v42 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v43);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v44, v45, "SiriPlaybackControlsOutputProvider.errorOutput returning errorOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v47 = *(v16 + 120);
  v46 = *(v16 + 128);
  v48 = *(v16 + 112);
  v50 = *(v16 + 40);
  v49 = *(v16 + 48);
  v51 = *(v16 + 32);

  v52 = OUTLINED_FUNCTION_70_7();
  (v18)(v52);
  v53 = sub_268B35094();
  OUTLINED_FUNCTION_245(v53);
  *(v16 + 144) = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v54 = OUTLINED_FUNCTION_29_6();
  *(v16 + 152) = v54;
  *(v54 + 16) = xmmword_268B3BBA0;
  v55 = OUTLINED_FUNCTION_74_2();
  sub_2688C053C(v55, v56, v57, v58);
  v59 = OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_11_13(v59);
  (*(v60 + 8))(v49);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  *&v76 = v61;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  *(v16 + 160) = v62;
  *v62 = v63;
  v62[1] = sub_268A8B524;
  v64 = *(v16 + 80);
  v65 = *(v16 + 16);
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_108_2();

  return v69(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, v76, *(&v76 + 1), a13, a14, a15, a16);
}

uint64_t sub_268A8B524()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A8B640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_268B367A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_2688C053C(a2, &v23 - v18, &qword_2802A57F0, &qword_268B3DDB0);
  sub_268B35314();
  sub_268B35344();
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_2689A7CD8(v10, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(v24, v6, &unk_2802A56E0, &unk_268B3CDF0);
  v19 = *&v6[*(v23 + 48)];
  v20 = [v19 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v21 = sub_268B350F4();
  return (*(*(v21 - 8) + 8))(v6, v21);
}

void sub_268A8B990()
{
  OUTLINED_FUNCTION_26();
  v61 = v2;
  v60 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v59 = v12;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v58 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = v21 - 8;
  v56 = *(v21 - 8);
  v23 = *(v56 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52_10();
  v57 = v24;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_4(v26);
  (*(v27 + 16))(v1, v7);
  *(v1 + *(v22 + 56)) = v5;
  v28 = qword_2802A4F30;
  v29 = v5;
  if (v28 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v30 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v31 = *(v16 + 16);
  v31(v0, v30, v13);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_53_6(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v22, "SiriPlaybackControlsOutputProvider#errorOutput...", v34, 2u);
    OUTLINED_FUNCTION_12();
  }

  v35 = *(v16 + 8);
  v35(v0, v13);
  v36 = v0[5];
  v37 = v0[6];
  OUTLINED_FUNCTION_27_13(v0 + 2);
  if (sub_268B36FA4())
  {
    sub_2688C053C(v1, v57, &unk_2802A56E0, &unk_268B3CDF0);
    OUTLINED_FUNCTION_83_5(v56);
    v38 = swift_allocObject();
    sub_268954254(v57, v38 + v16 + 16, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v59, v40, v41, v39);
    OUTLINED_FUNCTION_10_18();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = &unk_268B49D40;
    v42[5] = v38;
    v42[6] = v60;
    v42[7] = v61;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();

    v43 = v1;
    v44 = &unk_2802A56E0;
    v45 = &unk_268B3CDF0;
  }

  else
  {
    v31(v58, v30, v13);
    v46 = sub_268B37A34();
    v47 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v47))
    {
      v48 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v48);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v49, v50, "SiriPlaybackControlsOutputProvider.cancelOutput creating cancel output");
      OUTLINED_FUNCTION_83_0();
    }

    v35(v58, v13);
    v51 = v0[10];
    v52 = v0[11];
    OUTLINED_FUNCTION_14_20(v0 + 7);
    sub_268B34CA4();
    OUTLINED_FUNCTION_142_0();
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v53, MEMORY[0x277D5C1D8]);
    sub_268B34F14();
    sub_2689A7CD8(&v62, &unk_2802A5800, &unk_268B3CE10);
    v54 = OUTLINED_FUNCTION_36_10();
    v55(v54);
    sub_2689A7CD8(v1, &unk_2802A56E0, &unk_268B3CDF0);
    v44 = &unk_2802A57C0;
    v45 = &qword_268B3BE00;
    v43 = &v63;
  }

  sub_2689A7CD8(v43, v44, v45);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8BE4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_268B35374();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_268B367A4();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_268B37A54();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8C02C, 0, 0);
}

uint64_t sub_268A8C02C()
{
  v44 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[14];
  v1 = v0[15];
  __swift_project_value_buffer(v0[13], qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_11_27();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_183_0(v6))
  {
    v7 = OUTLINED_FUNCTION_172_0();
    v8 = OUTLINED_FUNCTION_173_0();
    v43 = v8;
    *v7 = 136315138;
    sub_268B36754();
    if (sub_268B36734())
    {
      v10 = v0[11];
      v9 = v0[12];
      v11 = v0[10];
      sub_268B36714();
      OUTLINED_FUNCTION_98_2();

      sub_268B36B14();

      v12 = sub_268B36784();
      v14 = v13;
      v15 = OUTLINED_FUNCTION_51_6();
      v16(v15);
    }

    else
    {
      v14 = 0xE400000000000000;
      v12 = 1701736270;
    }

    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];
    sub_26892CDB8(v12, v14, &v43);
    OUTLINED_FUNCTION_98_2();

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_93_6(&dword_2688BB000, v23, v6, "SiriPlaybackControlsOutputProvider.cancelOutput with responseMode = %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_83_0();

    v24 = OUTLINED_FUNCTION_51_6();
    v25(v24);
  }

  else
  {
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];

    (*(v18 + 8))(v17, v19);
  }

  v26 = v0[9];
  v27 = v0[5];
  v28 = v0[6];
  v29 = v0[3];
  v30 = v0[4];
  sub_268B34D94();
  *(swift_task_alloc() + 16) = v29;
  sub_268B352C4();

  v31 = sub_268B35094();
  OUTLINED_FUNCTION_245(v31);
  v0[16] = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v32 = OUTLINED_FUNCTION_29_6();
  v0[17] = v32;
  *(v32 + 16) = xmmword_268B3BBA0;
  OUTLINED_FUNCTION_112_2(v32, v33, &unk_2802A56E0, &unk_268B3CDF0);
  v34 = OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_11_13(v34);
  (*(v35 + 8))(v27);
  OUTLINED_FUNCTION_10_24(MEMORY[0x277D5BD50]);
  v42 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[18] = v37;
  *v37 = v38;
  v37[1] = sub_268A8C340;
  v39 = v0[9];
  v40 = v0[2];

  return v42(v40, v32, v39);
}

uint64_t sub_268A8C340()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A8C45C()
{
  OUTLINED_FUNCTION_127();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[6];
  v4 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_17_24();

  return v5();
}

uint64_t sub_268A8C50C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_268B367A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_2689A7CD8(v10, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();
  sub_2688C053C(a2, v6, &unk_2802A56E0, &unk_268B3CDF0);
  v16 = *&v6[*(v3 + 48)];
  v17 = [v16 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v18 = sub_268B350F4();
  return (*(*(v18 - 8) + 8))(v6, v18);
}

void sub_268A8C7D4()
{
  OUTLINED_FUNCTION_26();
  v65 = v1;
  v66 = v0;
  v63 = v2;
  v64 = v3;
  v62 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v60 = v9;
  OUTLINED_FUNCTION_9();
  v61 = sub_268B350F4();
  v10 = OUTLINED_FUNCTION_1(v61);
  v59 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v58 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v57 = v19;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v29 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v30 = *(v23 + 16);
  v30(v0, v29, v20);
  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_14();
    *v33 = 0;
    _os_log_impl(&dword_2688BB000, v31, v32, "SiriPlaybackControlsOutputProvider.emptyOutput...", v33, 2u);
    OUTLINED_FUNCTION_12();
  }

  v34 = *(v23 + 8);
  (v34)(v0, v20);
  v35 = v66[6];
  __swift_project_boxed_opaque_existential_1(v66 + 2, v66[5]);
  OUTLINED_FUNCTION_70_1();
  if (sub_268B36FA4())
  {
    v36 = swift_allocObject();
    v37 = v63;
    *(v36 + 16) = v62;
    *(v36 + 24) = v37;
    v38 = sub_268B37DB4();
    OUTLINED_FUNCTION_4_7(v57, v39, v40, v38);
    OUTLINED_FUNCTION_10_18();
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = &unk_268B49D28;
    v41[5] = v36;
    v42 = v65;
    v41[6] = v64;
    v41[7] = v42;

    OUTLINED_FUNCTION_12_22();
    sub_2688DB634();
  }

  else
  {
    v30(v28, v29, v20);
    v43 = sub_268B37A34();
    v44 = sub_268B37F04();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_14();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SiriPlaybackControlsOutputProvider.emptyOutput creating errorOutput", v45, 2u);
      OUTLINED_FUNCTION_20_2();
    }

    v46 = OUTLINED_FUNCTION_106_2();
    v34(v46);

    v47 = v58;
    sub_268B350A4();
    v48 = v66[10];
    v49 = v66[11];
    OUTLINED_FUNCTION_27_13(v66 + 7);
    sub_268B34CA4();
    v50 = sub_268B35044();
    v51 = v60;
    OUTLINED_FUNCTION_4_7(v60, v52, v53, v50);
    sub_268B354F4();
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_92_5(v54, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_90_5();
    sub_268B34F44();
    sub_2689A7CD8(&v67, &unk_2802A5800, &unk_268B3CE10);
    sub_2689A7CD8(v51, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v59 + 8))(v47, v61);
    v55 = OUTLINED_FUNCTION_36_10();
    v56(v55);
    sub_2689A7CD8(&v68, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A8CCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_268B35374();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_268B367A4();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_268B37A54();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268A8CE60, 0, 0);
}

uint64_t sub_268A8CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_107_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = v16[15];
  v20 = v16[13];
  __swift_project_value_buffer(v16[12], qword_2802CDA10);
  v21 = OUTLINED_FUNCTION_78_6();
  v78 = v23;
  v79 = v22;
  (v23)(v21);
  v24 = sub_268B37A34();
  v25 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_53_6(v25))
  {
    OUTLINED_FUNCTION_172_0();
    a13 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_95_5(4.8149e-34);
    if (sub_268B36734())
    {
      v27 = v16[10];
      v26 = v16[11];
      v77 = v16[9];
      sub_268B36714();
      OUTLINED_FUNCTION_48_9();

      OUTLINED_FUNCTION_94_5();

      sub_268B36784();
      v28 = OUTLINED_FUNCTION_13_18();
      v29(v28, v77);
    }

    else
    {
      OUTLINED_FUNCTION_32_10();
    }

    a10 = v16[15];
    v35 = v16[12];
    v34 = v16[13];
    v36 = OUTLINED_FUNCTION_13_13();
    sub_26892CDB8(v36, v37, v38);
    OUTLINED_FUNCTION_48_9();

    *(v17 + 4) = v18;
    OUTLINED_FUNCTION_31_16(&dword_2688BB000, v39, v40, "SiriPlaybackControlsOutputProvider.emptyOutput with responseMode = %s");
    OUTLINED_FUNCTION_37_14();
    OUTLINED_FUNCTION_20_2();

    v18 = *(v34 + 8);
    v18(a10, v35);
  }

  else
  {
    v30 = v16[15];
    v31 = v16[12];
    v32 = v16[13];

    v33 = OUTLINED_FUNCTION_50_8();
    (v18)(v33);
  }

  v41 = v16[14];
  v42 = v16[12];
  v43 = v16[8];
  v45 = v16[4];
  v44 = v16[5];
  v46 = v16[3];
  sub_268B34D44();
  v47 = swift_task_alloc();
  *(v47 + 16) = v46;
  *(v47 + 24) = v45;
  OUTLINED_FUNCTION_34_11();

  v78(v41, v79, v42);
  v48 = sub_268B37A34();
  v49 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v49))
  {
    v50 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v50);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v51, v52, "SiriPlaybackControlsOutputProvider.emptyOutput returning errorOutput using RF 2.0");
    OUTLINED_FUNCTION_83_0();
  }

  v54 = v16[13];
  v53 = v16[14];
  v55 = v16[12];
  v57 = v16[3];
  v56 = v16[4];

  v18(v53, v55);
  v58 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v16[16] = v58;
  v59 = sub_268B37BC4();
  [v58 setCatId_];

  v60 = sub_268B35094();
  OUTLINED_FUNCTION_245(v60);
  v16[17] = sub_268B35084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v61 = OUTLINED_FUNCTION_29_6();
  v16[18] = v61;
  *(v61 + 16) = xmmword_268B3BBA0;
  *(v61 + 32) = v58;
  v62 = *(MEMORY[0x277D5BD50] + 4);
  v80 = *MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50];
  v63 = v58;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v16[19] = v64;
  *v64 = v65;
  v64[1] = sub_268A8D1BC;
  v66 = v16[8];
  v67 = v16[2];
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_108_2();

  return v71(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, v78, v80, a13, a14, a15, a16);
}

uint64_t sub_268A8D1BC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[17];
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_16_28();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A8D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  v11 = *(v10 + 120);
  v12 = *(v10 + 112);
  v13 = *(v10 + 88);
  v15 = *(v10 + 56);
  v14 = *(v10 + 64);
  v17 = *(v10 + 40);
  v16 = *(v10 + 48);

  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_70_1();
  v20(v19);

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_164();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_268A8D384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_268B367A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    sub_268B36B14();

    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    (*(v5 + 32))(v8, v3, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    sub_268B36794();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      sub_2689A7CD8(v3, &qword_2802A6CE0, &qword_268B49D30);
    }
  }

  sub_268B352D4();

  return sub_268B352F4();
}

uint64_t *sub_268A8D570()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  return v0;
}

uint64_t sub_268A8D5A0()
{
  sub_268A8D570();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_268A8D730()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268A8D768()
{
  OUTLINED_FUNCTION_17_11();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33(v3);
  *v4 = v5;
  v4[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_26_15();

  return sub_268A8CCAC(v6, v7, v1);
}

uint64_t sub_268A8D804()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268A8D890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_268A8D384();
}

uint64_t sub_268A8D898()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v8);
  (*(v9 + 8))(v1 + v5);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_268A8D974()
{
  OUTLINED_FUNCTION_17_11();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33(v6);
  *v7 = v8;
  v7[1] = sub_268A8FF78;

  return sub_268A8BE4C(v2, v0 + v5);
}

uint64_t sub_268A8DA50()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268A8DADC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_268A8DBC8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_268B35044();
  if (!OUTLINED_FUNCTION_68_6(v12))
  {
    OUTLINED_FUNCTION_70(v1);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_89_5();
    v16(v15);
  }

  v17 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v17);
  (*(v18 + 8))(v0 + ((v4 + v6 + v9) & ~v9));
  OUTLINED_FUNCTION_113_1();
  v19 = OUTLINED_FUNCTION_79_6();

  return MEMORY[0x2821FE8E8](v19, v20, v21);
}

uint64_t sub_268A8DD34()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_66_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_44(v8);
  *v9 = v10;
  v9[1] = sub_268A8FF78;
  v11 = OUTLINED_FUNCTION_67_4();

  return sub_268A8AFF8(v11, v12, v13);
}

uint64_t sub_268A8DE70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_268B35044();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v12))
  {
    OUTLINED_FUNCTION_70(v12);
    (*(v13 + 8))(v0 + v4, v12);
  }

  v14 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v9 + 8) & ~v9;
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v14);

  v18 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v18);
  (*(v19 + 8))(v0 + v15);
  OUTLINED_FUNCTION_113_1();
  v20 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v3 | v9 | 7);
}

uint64_t sub_268A8E020()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v9 = *(v0 + v4);
  v10 = *(v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_44(v11);
  *v12 = v13;
  v12[1] = sub_268A8DADC;
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_277();

  return sub_268A89FD0(v14, v15, v16, v17, v18);
}

uint64_t sub_268A8E1A0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_268B35044();
  if (!OUTLINED_FUNCTION_68_6(v12))
  {
    OUTLINED_FUNCTION_70(v1);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_89_5();
    v16(v15);
  }

  v17 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v17);
  (*(v18 + 8))(v0 + ((v6 + v4 + v9 + 2) & ~v9));
  OUTLINED_FUNCTION_113_1();
  v19 = OUTLINED_FUNCTION_79_6();

  return MEMORY[0x2821FE8E8](v19, v20, v21);
}

uint64_t sub_268A8E310()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v4 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v5);
  v7 = (v4 + *(v6 + 80) + 2) & ~*(v6 + 80);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 1);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_44(v11);
  *v12 = v13;
  v12[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_277();

  return sub_268A88ECC(v14, v15, v16, v17, v18);
}

uint64_t sub_268A8E470(void *a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = v73 - v8;
  v89 = sub_268B34714();
  v87 = *(v89 - 8);
  v9 = v87[8];
  MEMORY[0x28223BE20](v89);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_268B37474();
  v90 = *(v88 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_268B37434();
  v15 = *(v91 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v91);
  v18 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268B376A4();
  v92[3] = v19;
  v92[4] = MEMORY[0x277D5F928];
  v92[0] = a2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  if (sub_268B34D24() & 1) != 0 || (v21 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_268B34CB4()))
  {
LABEL_3:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_4;
  }

  v81 = __swift_project_boxed_opaque_existential_1(v92, v19);
  v24 = *MEMORY[0x277D5F850];
  v78 = v15[13];
  v79 = (v15 + 13);
  v78(v18, v24, v91);
  v25 = v90;
  v26 = *(v90 + 104);
  v27 = v14;
  v76 = *MEMORY[0x277D5F8A8];
  v28 = v18;
  v29 = v14;
  v30 = v19;
  v31 = v88;
  v77 = v90 + 104;
  v75 = v26;
  v26(v27);
  v32 = a1[3];
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_268B34C94();
  v80 = v30;
  v73[1] = sub_268B376E4();
  v34 = v33;
  v35 = v87[1];
  v82 = v11;
  v74 = v35;
  v35(v11, v89);
  v36 = *(v25 + 8);
  v90 = v25 + 8;
  v36(v29, v31);
  v37 = v15[1];
  v87 = v15 + 1;
  v37(v28, v91);
  if (v34)
  {
    v73[0] = v34;
    v78(v28, *MEMORY[0x277D5F840], v91);
    v79 = v36;
    v38 = v88;
    v75(v29, v76, v88);
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v40 = v82;
    sub_268B34C94();
    sub_268B376E4();
    v41 = v37;
    v43 = v42;
    v74(v40, v89);
    v79(v29, v38);
    v41(v28, v91);
    if (v43)
    {
      type metadata accessor for DirectInvocationHelper();
      v44 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v45 = sub_268B34D34();
      sub_268A696EC();
      v47 = v46;

      v48 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v49 = sub_268B34D34();
      sub_268A696EC();
      v51 = v50;

      v52 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (sub_268B34CF4())
      {
        sub_268A60E20();
      }

      else
      {
        v62 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (sub_268B34D04())
        {
          sub_268A610D8();
        }

        else
        {
          v63 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          if ((sub_268B34CC4() & 1) == 0)
          {
            v64 = a1[4];
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            if ((sub_268B34CD4() & 1) == 0)
            {
              v65 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              if ((sub_268B34CE4() & 1) == 0)
              {

                if (qword_2802A4F30 != -1)
                {
                  swift_once();
                }

                v66 = v86;
                v67 = __swift_project_value_buffer(v86, qword_2802CDA10);
                v68 = v85;
                v69 = v83;
                (*(v85 + 16))(v83, v67, v66);
                v70 = sub_268B37A34();
                v71 = sub_268B37EE4();
                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  *v72 = 0;
                  _os_log_impl(&dword_2688BB000, v70, v71, "Unexpected device type, returning empty views", v72, 2u);
                  MEMORY[0x26D6266E0](v72, -1, -1);
                }

                (*(v68 + 8))(v69, v66);
                goto LABEL_3;
              }
            }
          }

          sub_268A61424();
        }
      }

      v22 = v53;

      goto LABEL_4;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v54 = v86;
  v55 = __swift_project_value_buffer(v86, qword_2802CDA10);
  v57 = v84;
  v56 = v85;
  (*(v85 + 16))(v84, v55, v54);
  v58 = sub_268B37A34();
  v59 = sub_268B37EE4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_2688BB000, v58, v59, "Failed to localize labels for confirmation dialog.", v60, 2u);
    MEMORY[0x26D6266E0](v60, -1, -1);
  }

  (*(v56 + 8))(v57, v54);
  sub_2688C2ECC();
  v22 = swift_allocError();
  *v61 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  return v22;
}

uint64_t sub_268A8EDD4()
{
  v2 = sub_268B36A54();
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = v6 + *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_102_4(v9);
  v11 = *(v10 + 80);
  v12 = (v8 + v11) & ~v11;
  v14 = *(v13 + 64);
  v27 = sub_268B35374();
  OUTLINED_FUNCTION_1(v27);
  v16 = v15;
  v18 = v17;
  v19 = *(v16 + 80);
  v20 = (v12 + v14 + v19) & ~v19;
  v26 = *(v18 + 64);
  v21 = v5 | v19 | v11;
  v22 = *(v0 + 16);

  (*(v4 + 8))(v0 + v6, v2);
  v23 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v23);
  (*(v24 + 8))(v0 + v12);

  (*(v16 + 8))(v0 + v20, v27);

  return MEMORY[0x2821FE8E8](v0, v20 + v26, v21 | 7);
}

uint64_t sub_268A8EFB8()
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v1 = sub_268B36A54();
  OUTLINED_FUNCTION_19_0(v1);
  v4 = ((*(v2 + 80) + 24) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_268B35374();
  OUTLINED_FUNCTION_22(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v0 + 16);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_44(v14);
  *v15 = v16;
  v15[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_26_15();
  OUTLINED_FUNCTION_277();

  return sub_268A8828C(v17, v18, v19, v20, v21);
}

uint64_t sub_268A8F13C()
{
  OUTLINED_FUNCTION_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_268B35374();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = *(v11 + 64);
  v14 = *(v1 + 16);

  v15 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v15);
  (*(v16 + 8))(v1 + v4);

  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_89_5();
  v19(v18);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v20, v21, v22);
}

uint64_t sub_268A8F28C()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_268B35374();
  OUTLINED_FUNCTION_22(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_44(v10);
  *v11 = v12;
  v11[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_26_15();

  return sub_268A87E30(v13, v14, v15, v16);
}

unint64_t sub_268A8F3C4()
{
  result = qword_2802A6470;
  if (!qword_2802A6470)
  {
    sub_268B36A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6470);
  }

  return result;
}

uint64_t sub_268A8F41C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_268B35044();
  if (!OUTLINED_FUNCTION_68_6(v12))
  {
    OUTLINED_FUNCTION_70(v1);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_89_5();
    v16(v15);
  }

  v17 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v17);

  v20 = *(v0 + v18);

  v21 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v21);
  (*(v22 + 8))(v0 + ((v18 + v9 + 9) & ~v9));
  OUTLINED_FUNCTION_113_1();
  v23 = OUTLINED_FUNCTION_79_6();

  return MEMORY[0x2821FE8E8](v23, v24, v25);
}

uint64_t sub_268A8F5AC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_66_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_19_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v0 + v4);
  v9 = (v5 + *(v7 + 80) + 9) & ~*(v7 + 80);
  v10 = v0 + v5;
  v11 = *(v0 + v5);
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_44(v13);
  *v14 = v15;
  v14[1] = sub_268A8FF78;
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_164();

  return sub_268A86014(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_268A8F724()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_268B35044();
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = (*(v5 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v7);
  v9 = (v6 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);

  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_89_5();
  v15(v14);
  v16 = *(v1 + v6);

  v17 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v17);
  (*(v18 + 8))(v1 + v9);

  v19 = *(v1 + v11 + 8);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v20, v21, v22);
}

uint64_t sub_268A8F8A0(uint64_t a1)
{
  v3 = sub_268B35044();
  OUTLINED_FUNCTION_19_0(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v7 + *(v10 + 80) + 9) & ~*(v10 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + v7);
  v16 = *(v1 + v7 + 8);
  v17 = (v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  v19 = v17[1];

  return sub_268A841E0(a1, v14, v1 + v5, v15, v16, v1 + v13, v18, v19);
}

uint64_t sub_268A8F9BC()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[10];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_268A8FA20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268A8FA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetModelContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A8FAE4()
{
  v1 = type metadata accessor for SnippetModelContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v25 = *(*(v1 - 8) + 64);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1(v27);
  v5 = *(v4 + 80);
  v24 = *(v6 + 64);
  v7 = sub_268B35374();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v26 = *(v11 + 64);
  v12 = sub_268B36A54();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v12))
  {
    OUTLINED_FUNCTION_70(v12);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_70_1();
    v16(v15);
  }

  v17 = v2 | v5 | v10;
  v18 = (v3 + v25 + v5) & ~v5;
  v19 = (v18 + v24 + v10) & ~v10;
  v20 = *(v0 + v3 + *(v1 + 20) + 8);

  v21 = sub_268B350F4();
  OUTLINED_FUNCTION_11_13(v21);
  (*(v22 + 8))(v0 + v18);

  (*(v9 + 8))(v0 + v19, v7);

  return MEMORY[0x2821FE8E8](v0, v19 + v26, v17 | 7);
}

uint64_t sub_268A8FD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetModelContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A8FD88()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_66_6();
  v0 = type metadata accessor for SnippetModelContext();
  OUTLINED_FUNCTION_19_0(v0);
  v3 = ((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v2 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v4);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = sub_268B35374();
  OUTLINED_FUNCTION_22(v9);
  v11 = (v6 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_44(v12);
  *v13 = v14;
  v13[1] = sub_268A8FF78;
  v15 = OUTLINED_FUNCTION_67_4();

  return sub_268A85084(v15, v16, v17, v18);
}

uint64_t objectdestroy_4Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_10_24@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

double OUTLINED_FUNCTION_23_18()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_15()
{
  *(v1 + 32) = *(v0 + *(v2 + 48));

  return sub_268B350F4();
}

void OUTLINED_FUNCTION_31_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return sub_268B352C4();
}

uint64_t OUTLINED_FUNCTION_36_10()
{
  *(v0 - 96) = 0;
  result = v0 - 136;
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  return result;
}

void OUTLINED_FUNCTION_37_14()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  *(v1 + 32) = *(v0 + *(v2 + 48));

  return sub_268B350F4();
}

BOOL OUTLINED_FUNCTION_53_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_69_6()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_86_4()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t *OUTLINED_FUNCTION_92_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 136));
}

void OUTLINED_FUNCTION_93_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_94_5()
{

  return sub_268B36B14();
}

uint64_t OUTLINED_FUNCTION_95_5(float a1)
{
  *v1 = a1;

  return sub_268B36754();
}

void OUTLINED_FUNCTION_96_4()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[9];
}

void OUTLINED_FUNCTION_100_3()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2688C053C(v5, v4, a3, a4);
}

void OUTLINED_FUNCTION_113_1()
{
  v3 = *(v1 + *(v0 + 48));
}

uint64_t sub_268A90410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37[1] = a3;
    v20 = a1;
    v21 = v6;
    v22 = a4;
    v23 = a5;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "SetShuffleStateDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v19, 2u);
    v25 = v24;
    a5 = v23;
    a4 = v22;
    v6 = v21;
    a1 = v20;
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v26 = sub_268B35244();
  sub_268AE2278(v26);
  v28 = v27;

  v29 = [a1 shuffleState];
  v30 = sub_268B35244();
  sub_268AE23DC(v30);
  v32 = v31;

  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v6 + 56);
  if (v29 == 1)
  {
    v35 = v33 + 1;
  }

  else
  {
    v35 = v33;
  }

  sub_268AB8B7C(v28, v35, a4, a5);
}

void sub_268A906A8()
{
  type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A90794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A90844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A908F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A9098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A90A48()
{
  type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A90ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268A90BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268A90DAC(uint64_t a1, uint64_t a2)
{
  result = sub_268A90E04(&qword_2802A7C88, a2, type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A90E04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A90E50(uint64_t a1)
{
  v2 = sub_268B372B4();
  sub_26892E170(0xD00000000000002DLL, 0x8000000268B5C130, v2);
  v4 = v3;

  if (v4)
  {
    goto LABEL_6;
  }

  sub_268B36E84();
  if (!v5)
  {
    goto LABEL_6;
  }

  type metadata accessor for DeviceSelectingUtil();
  sub_268901DA4(a1);
  v7 = v6;
  OUTLINED_FUNCTION_0_44();
  v8 = sub_268B38404();
  MEMORY[0x26D625650](v8);

  MEMORY[0x26D625650](8236, 0xE200000000000000);

  OUTLINED_FUNCTION_0_44();
  sub_268B38404();

  v9 = OUTLINED_FUNCTION_0_44();
  MEMORY[0x26D625650](v9);

  MEMORY[0x26D625650](41, 0xE100000000000000);

  if ((v7 & 1) == 0)
  {

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  sub_26895EF2C();
  v10 = sub_268B380C4();

  return v10 & 1;
}

id sub_268A91044(unsigned __int8 *a1)
{
  sub_268A92380(a1);
  sub_268A926D8(a1);
  sub_268A92AB0(a1);
  v3 = a1[2];
  if (v3 != 2)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = sub_268B38444();

    if (v5)
    {
      goto LABEL_8;
    }
  }

  v4 = a1[1];
  switch(a1[1])
  {
    case 2u:
      goto LABEL_6;
    case 4u:
      goto LABEL_9;
    default:
      v6 = sub_268B38444();

      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v3 == 2)
      {
        break;
      }

      if (v3)
      {
LABEL_12:

LABEL_16:
        v7 = 3;
        goto LABEL_17;
      }

      v8 = sub_268B38444();

      if (v8)
      {
        goto LABEL_16;
      }

      break;
  }

  switch(v4)
  {
    case 3:
      goto LABEL_12;
    case 4:
      goto LABEL_24;
    default:
      v9 = sub_268B38444();

      if (v9)
      {
        goto LABEL_16;
      }

      if (!v4)
      {

        goto LABEL_34;
      }

      v16 = sub_268B38444();

      if (v16)
      {
LABEL_34:
        v7 = 4;
        goto LABEL_17;
      }

LABEL_24:
      v17 = a1[*(type metadata accessor for MediaPlayerIntent() + 48)];
      if (v17 == 26)
      {
        goto LABEL_25;
      }

      if (sub_268942D54(v17) == 1735290739 && v19 == 0xE400000000000000)
      {
      }

      else
      {
        v21 = sub_268B38444();

        if ((v21 & 1) == 0)
        {
LABEL_25:
          v18 = *a1;
          if (v18 == 24)
          {
LABEL_26:
            v7 = 0;
            goto LABEL_17;
          }

          if (sub_26893E3F8(v18) != 0x746165706572 || v22 != 0xE600000000000000)
          {
            OUTLINED_FUNCTION_4_38();
            v24 = sub_268B38444();

            if ((v24 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_8:
            v7 = 1;
            goto LABEL_17;
          }

LABEL_6:

          goto LABEL_8;
        }
      }

      v7 = 2;
LABEL_17:
      [v1 setRepeatState_];
      v10 = type metadata accessor for MediaPlayerIntent();
      v11 = 0;
      v12 = 0;
      v13 = a1[*(v10 + 48)];
      if (v13 != 26)
      {
        v11 = sub_268942D54(v13);
      }

      v14 = sub_268A7528C(v11, v12);

      return [v1 setMediaType_];
  }
}

void sub_268A9140C(uint64_t a1, void *a2)
{
  v3 = sub_268B37CE4();

  [a2 setZoneNames_];
}

id sub_268A91478(uint64_t a1)
{
  v6 = sub_268B378F4();
  v7 = OUTLINED_FUNCTION_1_15(v6);
  v124 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_22(v11, v116);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  v12 = OUTLINED_FUNCTION_4(v126);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v116 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v116 = v25 - v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v119 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v120 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v122 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_80_1();
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_16(v35, v36, v37, v38, v39, v40, v41, v42, v116);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = objc_allocWithZone(OUTLINED_FUNCTION_28_18());
  v48 = sub_268B37BC4();
  v49 = [v47 initWithIdentifier:0 displayString:v48];

  v50 = type metadata accessor for MediaPlayerIntent();
  OUTLINED_FUNCTION_14_21(*(v50 + 60));
  if (v52)
  {
    v53 = *(v51 + 32);
    v3 = *(v51 + 40);
    v54 = v49;

    v55 = sub_268B37BC4();
  }

  else
  {
    v56 = v49;
    v55 = 0;
  }

  v121 = v17;
  OUTLINED_FUNCTION_29_14(v56, sel_setRoomName_);

  v57 = *(a1 + *(v50 + 68));

  sub_268A9140C(v58, v49);

  OUTLINED_FUNCTION_14_21(*(v50 + 72));
  if (v60 || (OUTLINED_FUNCTION_14_21(*(v50 + 76)), v62))
  {
    v3 = *(v59 + 32);
    v63 = *(v59 + 40);

    v64 = OUTLINED_FUNCTION_31_17();
  }

  else
  {
    v64 = 0;
  }

  OUTLINED_FUNCTION_29_14(v61, sel_setName_);

  sub_2688F1FA4(a1 + *(v50 + 96), v2, &qword_2802A58F0, &unk_268B3BEC0);
  v65 = sub_268B37034();
  v66 = OUTLINED_FUNCTION_32_11(v65);
  if (v3 == 1)
  {
    sub_2688C058C(v2, &qword_2802A58F0, &unk_268B3BEC0);
    v67 = 0;
  }

  else
  {
    sub_268B37014();
    OUTLINED_FUNCTION_18_17();
    (*(v68 + 8))(v2, v64);
    v67 = OUTLINED_FUNCTION_31_17();
  }

  v69 = v125;
  [v66 setType_];
  v123 = v66;

  v117 = *(v50 + 100);
  OUTLINED_FUNCTION_13_19(a1 + v117, v69);
  v70 = *MEMORY[0x277D5F9A8];
  v71 = OUTLINED_FUNCTION_12_23();
  v72(v71);
  OUTLINED_FUNCTION_2_33(v4);
  OUTLINED_FUNCTION_13_19(v66, v20);
  OUTLINED_FUNCTION_13_19(v4, v69 + v20);
  OUTLINED_FUNCTION_124(v20);
  if (v74)
  {
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_124(v69 + v20);
    if (v74)
    {
      sub_2688C058C(v20, &qword_2802A5908, &qword_268B3D920);
LABEL_29:
      OUTLINED_FUNCTION_7_29();
      sub_2688C063C();
      v99 = OUTLINED_FUNCTION_201_0();
      v80 = v123;
      [v123 setCurrentRoom_];
LABEL_32:

      return v80;
    }

    goto LABEL_18;
  }

  v73 = v122;
  sub_2688F1FA4(v20, v122, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v69 + v20);
  if (v74)
  {
    v69 = v73;
    OUTLINED_FUNCTION_5_26();
    sub_2688C058C(v125, &qword_2802A5908, &qword_268B3D920);
    v75 = OUTLINED_FUNCTION_22_17();
    v76(v75);
LABEL_18:
    sub_2688C058C(v20, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_23_19();
  v85 = OUTLINED_FUNCTION_9_24();
  v86(v85);
  OUTLINED_FUNCTION_0_45();
  sub_268A92DF0(v87, v88);
  OUTLINED_FUNCTION_17_25();
  v89 = OUTLINED_FUNCTION_19_17();
  (v50)(v89);
  v69 = &qword_268B3D920;
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v90, v91, v92);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v93, v94, v95);
  (v50)(v122, v1);
  v50 = v124;
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v96, v97, v98);
  if (v66)
  {
    goto LABEL_29;
  }

LABEL_19:
  v77 = v120;
  OUTLINED_FUNCTION_13_19(a1 + v117, v120);
  OUTLINED_FUNCTION_7_29();
  v78 = v119;
  v118(v119, *MEMORY[0x277D5F9C0], v1);
  OUTLINED_FUNCTION_2_33(v78);
  v79 = v121;
  OUTLINED_FUNCTION_13_19(v77, v121);
  OUTLINED_FUNCTION_13_19(v78, v69 + v79);
  OUTLINED_FUNCTION_124(v79);
  if (v74)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_124(v69 + v79);
    if (v74)
    {
      sub_2688C058C(v79, &qword_2802A5908, &qword_268B3D920);
      v80 = v123;
LABEL_31:
      sub_2688C063C();
      v99 = OUTLINED_FUNCTION_201_0();
      [v80 setCurrentHome_];
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  sub_2688F1FA4(v79, v116, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v69 + v79);
  if (v81)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    v82 = *(v50 + 8);
    v83 = OUTLINED_FUNCTION_31_15();
    v84(v83);
LABEL_27:
    sub_2688C058C(v79, &qword_2802A5900, &unk_268B3BED0);
    return v123;
  }

  OUTLINED_FUNCTION_23_19();
  v100 = OUTLINED_FUNCTION_9_24();
  v101(v100);
  OUTLINED_FUNCTION_0_45();
  sub_268A92DF0(v102, v103);
  OUTLINED_FUNCTION_17_25();
  v104 = OUTLINED_FUNCTION_21_16();
  v20(v104);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v105, v106, v107);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v108, v109, v110);
  v111 = OUTLINED_FUNCTION_31_15();
  v20(v111);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v112, v113, v114);
  v80 = v123;
  if (&qword_2802A5908)
  {
    goto LABEL_31;
  }

  return v80;
}

id sub_268A91BFC(uint64_t a1)
{
  v6 = sub_268B378F4();
  v7 = OUTLINED_FUNCTION_1_15(v6);
  v124 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_22(v11, v116);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  v12 = OUTLINED_FUNCTION_4(v126);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v116 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v116 = v25 - v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v119 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v120 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v122 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_80_1();
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_16(v35, v36, v37, v38, v39, v40, v41, v42, v116);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = objc_allocWithZone(OUTLINED_FUNCTION_28_18());
  v48 = sub_268B37BC4();
  v49 = [v47 initWithIdentifier:0 displayString:v48];

  v50 = type metadata accessor for MediaIntent();
  OUTLINED_FUNCTION_14_21(*(v50 + 40));
  if (v52)
  {
    v53 = *(v51 + 32);
    v3 = *(v51 + 40);
    v54 = v49;

    v55 = sub_268B37BC4();
  }

  else
  {
    v56 = v49;
    v55 = 0;
  }

  v121 = v17;
  OUTLINED_FUNCTION_29_14(v56, sel_setRoomName_);

  v57 = *(a1 + *(v50 + 48));

  sub_268A9140C(v58, v49);

  OUTLINED_FUNCTION_14_21(*(v50 + 52));
  if (v60 || (OUTLINED_FUNCTION_14_21(*(v50 + 60)), v62))
  {
    v3 = *(v59 + 32);
    v63 = *(v59 + 40);

    v64 = OUTLINED_FUNCTION_31_17();
  }

  else
  {
    v64 = 0;
  }

  OUTLINED_FUNCTION_29_14(v61, sel_setName_);

  sub_2688F1FA4(a1 + *(v50 + 80), v2, &qword_2802A58F0, &unk_268B3BEC0);
  v65 = sub_268B37034();
  v66 = OUTLINED_FUNCTION_32_11(v65);
  if (v3 == 1)
  {
    sub_2688C058C(v2, &qword_2802A58F0, &unk_268B3BEC0);
    v67 = 0;
  }

  else
  {
    sub_268B37014();
    OUTLINED_FUNCTION_18_17();
    (*(v68 + 8))(v2, v64);
    v67 = OUTLINED_FUNCTION_31_17();
  }

  v69 = v125;
  [v66 setType_];
  v123 = v66;

  v117 = *(v50 + 84);
  OUTLINED_FUNCTION_13_19(a1 + v117, v69);
  v70 = *MEMORY[0x277D5F9A8];
  v71 = OUTLINED_FUNCTION_12_23();
  v72(v71);
  OUTLINED_FUNCTION_2_33(v4);
  OUTLINED_FUNCTION_13_19(v66, v20);
  OUTLINED_FUNCTION_13_19(v4, v69 + v20);
  OUTLINED_FUNCTION_124(v20);
  if (v74)
  {
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_124(v69 + v20);
    if (v74)
    {
      sub_2688C058C(v20, &qword_2802A5908, &qword_268B3D920);
LABEL_29:
      OUTLINED_FUNCTION_6_35();
      sub_2688C063C();
      v99 = OUTLINED_FUNCTION_201_0();
      v80 = v123;
      [v123 setCurrentRoom_];
LABEL_32:

      return v80;
    }

    goto LABEL_18;
  }

  v73 = v122;
  sub_2688F1FA4(v20, v122, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v69 + v20);
  if (v74)
  {
    v69 = v73;
    OUTLINED_FUNCTION_5_26();
    sub_2688C058C(v125, &qword_2802A5908, &qword_268B3D920);
    v75 = OUTLINED_FUNCTION_22_17();
    v76(v75);
LABEL_18:
    sub_2688C058C(v20, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_23_19();
  v85 = OUTLINED_FUNCTION_9_24();
  v86(v85);
  OUTLINED_FUNCTION_0_45();
  sub_268A92DF0(v87, v88);
  OUTLINED_FUNCTION_17_25();
  v89 = OUTLINED_FUNCTION_19_17();
  (v50)(v89);
  v69 = &qword_268B3D920;
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v90, v91, v92);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v93, v94, v95);
  (v50)(v122, v1);
  v50 = v124;
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v96, v97, v98);
  if (v66)
  {
    goto LABEL_29;
  }

LABEL_19:
  v77 = v120;
  OUTLINED_FUNCTION_13_19(a1 + v117, v120);
  OUTLINED_FUNCTION_6_35();
  v78 = v119;
  v118(v119, *MEMORY[0x277D5F9C0], v1);
  OUTLINED_FUNCTION_2_33(v78);
  v79 = v121;
  OUTLINED_FUNCTION_13_19(v77, v121);
  OUTLINED_FUNCTION_13_19(v78, v69 + v79);
  OUTLINED_FUNCTION_124(v79);
  if (v74)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    OUTLINED_FUNCTION_124(v69 + v79);
    if (v74)
    {
      sub_2688C058C(v79, &qword_2802A5908, &qword_268B3D920);
      v80 = v123;
LABEL_31:
      sub_2688C063C();
      v99 = OUTLINED_FUNCTION_201_0();
      [v80 setCurrentHome_];
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  sub_2688F1FA4(v79, v116, &qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_124(v69 + v79);
  if (v81)
  {
    OUTLINED_FUNCTION_8_28();
    OUTLINED_FUNCTION_5_26();
    v82 = *(v50 + 8);
    v83 = OUTLINED_FUNCTION_31_15();
    v84(v83);
LABEL_27:
    sub_2688C058C(v79, &qword_2802A5900, &unk_268B3BED0);
    return v123;
  }

  OUTLINED_FUNCTION_23_19();
  v100 = OUTLINED_FUNCTION_9_24();
  v101(v100);
  OUTLINED_FUNCTION_0_45();
  sub_268A92DF0(v102, v103);
  OUTLINED_FUNCTION_17_25();
  v104 = OUTLINED_FUNCTION_21_16();
  v20(v104);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v105, v106, v107);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v108, v109, v110);
  v111 = OUTLINED_FUNCTION_31_15();
  v20(v111);
  OUTLINED_FUNCTION_4_38();
  sub_2688C058C(v112, v113, v114);
  v80 = v123;
  if (&qword_2802A5908)
  {
    goto LABEL_31;
  }

  return v80;
}

uint64_t sub_268A92380(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_268A92DF0(&qword_2802A56B0, type metadata accessor for MediaPlayerIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_268A92DF0(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37F04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "Found home automation nodes, attempting to map them to SiriKit intent", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    v13 = v24;
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    *(v12 + 32) = sub_268A91478(v17);
    v19 = off_287959FD0;
    v20 = type metadata accessor for SetRepeatStateIntent();
    v19(v12, v20, &off_287959FB0);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void sub_268A926D8(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688E73C0(v11, type metadata accessor for MediaPlayerIntent);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = sub_268B18100();
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C(v19))
      {
        sub_2688EFD10(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959FD0;
    v30 = type metadata accessor for SetRepeatStateIntent();
    v24 = v26;
    v29(v28, v30, &off_287959FB0);
LABEL_13:
  }
}

void sub_268A92AB0(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_268A92DF0(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent);
  v11 = sub_268B37854();
  sub_2688E73C0(v10, type metadata accessor for MediaPlayerIntent);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BB78;
    v17 = type metadata accessor for SetRepeatStateIntent();
    v16(v15, v17, &off_28795BB68);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_268A92DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(*(v2 - 88) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return sub_2688C058C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return sub_2688E73C0(v0, type metadata accessor for MediaIntent);
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return sub_2688E73C0(v0, type metadata accessor for MediaPlayerIntent);
}

uint64_t OUTLINED_FUNCTION_8_28()
{

  return sub_2688C058C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  result = v0;
  *(v1 - 152) = *(*(v1 - 104) + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2)
{

  return sub_2688F1FA4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return type metadata accessor for Device();
}

id OUTLINED_FUNCTION_29_14(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_268B37BC4();
}

id OUTLINED_FUNCTION_32_11(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return v2;
}

id sub_268A93098()
{
  if (qword_2802A5018 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB18;
  qword_2802CDA88 = qword_2802CDB18;

  return v1;
}

void sub_268A930FC()
{
  OUTLINED_FUNCTION_26();
  v94 = v0;
  v95 = v1;
  v96 = v2;
  v85 = v3;
  v5 = v4;
  v91 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v90 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v84 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v88 = &v82 - v19;
  OUTLINED_FUNCTION_9();
  v89 = sub_268B34E24();
  v20 = OUTLINED_FUNCTION_1(v89);
  v87 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v86 = v25 - v24;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B37A54();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v34 = (v32 - v33);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v82 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v82 - v39;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v41 = __swift_project_value_buffer(v26, qword_2802CDA10);
  v42 = *(v29 + 16);
  v92 = v41;
  v93 = v42;
  (v42)(v40);
  v43 = sub_268B37A34();
  v44 = sub_268B37ED4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_14();
    v83 = v26;
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "SetRepeatStateHandleIntentStrategy.makeIntentHandledResponse()", v45, 2u);
    v26 = v83;
    OUTLINED_FUNCTION_12();
  }

  v46 = *(v29 + 8);
  v46(v40, v26);
  v47 = sub_268B18100();
  if (!v47)
  {
    goto LABEL_10;
  }

  if (!sub_2688EFD0C(v47))
  {

LABEL_10:
    v93(v34, v92, v26);
    v57 = sub_268B37A34();
    v58 = sub_268B37EE4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_14();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v57, v58, "Did not receive intent response for repeat request or devices not populated!", v59, 2u);
      OUTLINED_FUNCTION_12();
    }

    v46(v34, v26);
    OUTLINED_FUNCTION_59_0(v94 + 13, v94[16]);
    sub_2688C2ECC();
    v60 = OUTLINED_FUNCTION_26_1();
    v62 = v60;
    goto LABEL_21;
  }

  if ([v5 repeatState] - 1 >= 3)
  {

    v93(v38, v92, v26);
    v63 = sub_268B37A34();
    v64 = sub_268B37EE4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_14();
      *v65 = 0;
      _os_log_impl(&dword_2688BB000, v63, v64, "Unexpected repeat mode during handle dialog", v65, 2u);
      OUTLINED_FUNCTION_12();
    }

    v46(v38, v26);
    sub_268B36E84();
    v66 = v94;
    v82 = v5;
    if (!v67)
    {
      OUTLINED_FUNCTION_8_29();
      sub_268947F08();
    }

    OUTLINED_FUNCTION_59_0(v66 + 13, v66[16]);
    (*(v87 + 104))(v86, *MEMORY[0x277D5BC00], v89);
    v68 = sub_268B350F4();
    v69 = v88;
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v68);
    v70 = *MEMORY[0x277D5B908];
    v71 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v71);
    v73 = v90;
    (*(v72 + 104))(v90, v70, v71);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v71);
    v74.isa = v63->isa;
    v75 = v84;
    sub_2688F1FA4(v69, v84, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v75, 1, v68) == 1)
    {
      sub_2688C058C(v75, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      OUTLINED_FUNCTION_15_23();
      (*(v76 + 8))(v75, v68);
    }

    v77 = v90;
    v78 = v86;
    sub_2688E388C();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v88, &unk_2802A57B0, &unk_268B3CE00);
    (*(v87 + 8))(v78, v89);
    OUTLINED_FUNCTION_59_0(v66 + 13, v66[16]);
    sub_2688C2ECC();
    v60 = OUTLINED_FUNCTION_26_1();
    v62 = v60;
LABEL_21:
    OUTLINED_FUNCTION_7_30(v60, v61);

    v79 = OUTLINED_FUNCTION_26_1();
    v81 = OUTLINED_FUNCTION_13_16(v79, v80);
    v95(v81);
    sub_2688C058C(v100, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_22;
  }

  sub_268AADF00(v97);
  memcpy(v98, &v97[2], 0x51uLL);
  sub_2688C058C(v98, &qword_2802A5C88, qword_268B418C0);
  v97[2] = 0;
  memset(&v97[4], 0, 72);
  LOBYTE(v97[22]) = 1;
  sub_268AE4194();

  v48 = v94;
  v49 = v94[7];
  memcpy(v100, v97, 0x5DuLL);
  v50 = swift_allocObject();
  v50[2] = v48;
  v50[3] = v5;
  v51 = v85;
  v52 = v91;
  v50[4] = v85;
  v50[5] = v52;
  v53 = v5;
  v54 = v96;
  v50[6] = v95;
  v50[7] = v54;

  v55 = v53;
  v56 = v51;

  sub_268AB4D6C(v100, sub_268A9843C, v50);

  memcpy(v99, v97, 0x5DuLL);
  sub_268A9844C(v99);
LABEL_22:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A93914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v63 = a6;
  v64 = a7;
  v61 = a3;
  v62 = a5;
  v56 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - v17;
  v60 = sub_268B34E24();
  v58 = *(v60 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v54 - v29);
  sub_2688F1FA4(a1, &v54 - v29, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    v32 = sub_268B36E84();
    if (v33)
    {
      v56 = v32;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v56 = v41;
    }

    v34 = a2;
    v42 = __swift_project_boxed_opaque_existential_1(v34 + 13, v34[16]);
    (*(v58 + 104))(v57, *MEMORY[0x277D5BC00], v60);
    v43 = sub_268B350F4();
    v44 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v43);
    v45 = sub_268B34B94();
    v46 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v45);
    v47 = *v42;
    sub_2688F1FA4(v44, v16, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v16, 1, v43) == 1)
    {
      sub_2688C058C(v16, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v43 - 8) + 8))(v16, v43);
    }

    v48 = v57;
    sub_2688E388C();

    sub_2688C058C(v46, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v59, &unk_2802A57B0, &unk_268B3CE00);
    (*(v58 + 8))(v48, v60);
    v49 = __swift_project_boxed_opaque_existential_1(v34 + 13, v34[16]);
    sub_2688C2ECC();
    v50 = swift_allocError();
    *v51 = 77;
    v52 = *v49;
    sub_26894B450();

    v65[0] = v31;
    v66 = 1;
    v53 = v31;
    v63(v65);

    return sub_2688C058C(v65, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v35 = v56;
    sub_2689186C8(v30, v26);
    v36 = a2[22];
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v37 = sub_268B36FA4();
    sub_2688F1FA4(v26, v24, &unk_2802A56E0, &unk_268B3CDF0);
    v38 = *&v24[*(v20 + 48)];
    if (v37)
    {
      sub_268A93F54();
    }

    else
    {
      sub_268A94CC0(v24, *&v24[*(v20 + 48)], v61, v35, v62, v63, v64);
    }

    sub_2688C058C(v26, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = sub_268B350F4();
    return (*(*(v39 - 8) + 8))(v24, v39);
  }
}

void sub_268A93F54()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v83 = v2;
  v84 = v3;
  v82 = v4;
  v90 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B35044();
  v11 = OUTLINED_FUNCTION_1(v10);
  v86 = v12;
  v87 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v85 = v16 - v15;
  OUTLINED_FUNCTION_9();
  v17 = sub_268B37A54();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v27 = OUTLINED_FUNCTION_1(v26);
  v78 = v28;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v79 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v89 = &v70 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v70 - v34;
  v36 = sub_268B350F4();
  v80 = *(v36 - 8);
  v81 = v36;
  (*(v80 + 16))(v35, v9);
  v37 = *(v26 + 48);
  v88 = v35;
  *&v35[v37] = v7;
  v38 = qword_2802A4F30;
  v39 = v7;
  if (v38 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v17, qword_2802CDA10);
  (*(v20 + 16))(v25, v40, v17);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "SetRepeatStateHandleIntentStrategy#intentHandledResponse...", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v20 + 8))(v25, v17);
  v44 = v1[6];
  OUTLINED_FUNCTION_59_0(v1 + 2, v1[5]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_268B3BBA0;
    *(v45 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  sub_26890C900((v1 + 33), v91);
  v75 = v93;
  v76 = v92;
  *(&v77 + 1) = __swift_project_boxed_opaque_existential_1(v91, v92);
  v46 = v89;
  sub_2688F1FA4(v88, v89, &unk_2802A56E0, &unk_268B3CDF0);
  *&v77 = *(v46 + *(v26 + 48));
  if (sub_268B18100())
  {
    v47 = v1[38];
    sub_268921344();
    v49 = v48;

    if (v49[2])
    {
      v50 = v49[5];
      v73 = v49[4];
      v74 = v50;
    }

    else
    {
      OUTLINED_FUNCTION_16_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_3();
  }

  v51 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v72) = [v51 BOOLForKey_];
  }

  else
  {
    HIDWORD(v72) = 0;
  }

  if (v45 >> 62)
  {
    sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

    v71 = sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    v71 = v45;
  }

  v53 = v85;
  v54 = v90;
  sub_268A82B50(v90, v85);
  v55 = sub_2689F0948();
  v56 = v1;
  v57 = v88;
  v58 = v79;
  sub_2688F1FA4(v88, v79, &unk_2802A56E0, &unk_268B3CDF0);
  v59 = (*(v78 + 80) + 40) & ~*(v78 + 80);
  v60 = (v30 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v61[2] = v54;
  v61[3] = v56;
  v61[4] = v83;
  sub_2689186C8(v58, v61 + v59);
  v62 = (v61 + v60);
  v63 = v84;
  *v62 = v82;
  v62[1] = v63;
  v64 = v54;

  LOBYTE(v68) = v55 & 1;
  v65 = (v56 + 23);
  v66 = v89;
  v67 = v77;
  sub_268A83648(v89, v77, v73, v74, HIDWORD(v72), v71, v53, v65, v68, sub_268A98330, v61, v76, v75, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);

  (*(v86 + 8))(v53, v87);
  sub_2688C058C(v57, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v80 + 8))(v66, v81);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A945FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SetRepeatStateHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 104), *(v70 + 128));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E388C();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 104), *(v70 + 128));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "SetRepeatStateHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

uint64_t sub_268A951D4(uint64_t a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, unint64_t a9)
{
  v116 = a8;
  v117 = a7;
  v121 = a6;
  v112 = a5;
  v123 = a3;
  v110 = a2;
  v118 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v102 - v12;
  v109 = sub_268B35044();
  v107 = *(v109 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v113 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_268B37A54();
  v114 = *(v115 - 8);
  v15 = *(v114 + 64);
  v16 = MEMORY[0x28223BE20](v115);
  v106 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = &v102 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v111 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v102 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v102 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v103 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v104 = &v102 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v102 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v102 - v40;
  v42 = sub_268B34E24();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v102 - v49;
  v122 = a4;
  v120 = v48;
  v119 = v43;
  if (v110)
  {
    v51 = v121;
    sub_268B36E84();
    if (!v52)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v79 = v120;
    v80 = v47;
    v81 = __swift_project_boxed_opaque_existential_1(v122 + 13, v122[16]);
    (*(v119 + 104))(v47, *MEMORY[0x277D5BC00], v79);
    sub_2688F1FA4(v51, v28, &unk_2802A56E0, &unk_268B3CDF0);

    v82 = sub_268B350F4();
    v83 = *(v82 - 8);
    v84 = v104;
    (*(v83 + 32))(v104, v28, v82);
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v82);
    v85 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v85);
    v86 = *v81;
    v87 = v103;
    sub_2688F1FA4(v84, v103, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v87, 1, v82) == 1)
    {
      sub_2688C058C(v87, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v83 + 8))(v87, v82);
    }

    v88 = v114;
    v89 = v106;
    v90 = v111;
    sub_2688E388C();

    sub_2688C058C(v90, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v84, &unk_2802A57B0, &unk_268B3CE00);
    (*(v119 + 8))(v80, v120);
    v91 = __swift_project_boxed_opaque_existential_1(v122 + 13, v122[16]);
    sub_2688C2ECC();
    v92 = swift_allocError();
    *v93 = 76;
    v94 = *v91;
    sub_26894B450();

    v95 = v118;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v96 = v115;
    v97 = __swift_project_value_buffer(v115, qword_2802CDA10);
    (*(v88 + 16))(v89, v97, v96);
    v98 = sub_268B37A34();
    v99 = sub_268B37ED4();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_2688BB000, v98, v99, "SetRepeatStateHandleIntentStrategy#legacyHandledResponse returning failure output.", v100, 2u);
      MEMORY[0x26D6266E0](v100, -1, -1);
    }

    (*(v88 + 8))(v89, v96);
    v126[0] = v95;
    v129 = 1;
    sub_268A98214(v95, 1);
  }

  else
  {
    sub_268947F08();
    v111 = v53;
    v54 = __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    (*(v43 + 104))(v50, *MEMORY[0x277D5BC10], v42);
    sub_2688F1FA4(v121, v30, &unk_2802A56E0, &unk_268B3CDF0);

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    (*(v56 + 32))(v41, v30, v55);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v55);
    v57 = sub_268B34B94();
    v58 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v57);
    v59 = *v54;
    sub_2688F1FA4(v41, v39, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v39, 1, v55) == 1)
    {
      sub_2688C058C(v39, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v56 + 8))(v39, v55);
    }

    v60 = v114;
    v61 = v123;
    sub_2688E388C();

    sub_2688C058C(v58, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v41, &unk_2802A57B0, &unk_268B3CE00);
    (*(v119 + 8))(v50, v120);
    v62 = v122;
    v63 = *__swift_project_boxed_opaque_existential_1(v122 + 13, v122[16]);
    sub_26894B450();
    v64 = __swift_project_boxed_opaque_existential_1(v62 + 13, v62[16]);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v126[0] = v118;
    v65 = *v64;

    sub_268948494(v126);
    sub_2688C058C(v126, &byte_2802A6450, &byte_268B3BE10);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v66 = v115;
    v67 = __swift_project_value_buffer(v115, qword_2802CDA10);
    v68 = v105;
    (*(v60 + 16))(v105, v67, v66);
    v69 = sub_268B37A34();
    v70 = sub_268B37ED4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v69, v70, "SetRepeatStateHandleIntentStrategy#legacyHandledResponse returning output.", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    (*(v60 + 8))(v68, v66);
    sub_268A82B50(v61, v113);
    if (a9 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      sub_268B38294();
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v127 = sub_268B354F4();
    v128 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v126);
    v72 = 0;
    if (sub_2689F0948())
    {
      v72 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v73 = sub_268B38064();
      [v72 setMinimumAutoDismissalTimeInMs_];

      [v72 setPremptivelyResumeMedia_];
    }

    v74 = v62[6];
    __swift_project_boxed_opaque_existential_1(v62 + 2, v62[5]);
    sub_268B34CA4();
    v75 = v107;
    v76 = v108;
    v77 = v113;
    v78 = v109;
    (*(v107 + 16))(v108, v113, v109);
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v78);
    v125 = 0;
    memset(v124, 0, sizeof(v124));
    sub_268B34EF4();

    sub_2688C058C(v124, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v76, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v75 + 8))(v77, v78);
    v129 = 0;
  }

  v117(v126);
  return sub_2688C058C(v126, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A96098()
{
  OUTLINED_FUNCTION_26();
  v128 = v0;
  v129 = v1;
  v126 = v2;
  v127 = v3;
  v5 = v4;
  v130 = v6;
  v7 = sub_268B367A4();
  v8 = OUTLINED_FUNCTION_1(v7);
  v113 = v9;
  v114 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v112 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v124 = v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20_0();
  v117 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v122 = v111 - v26;
  OUTLINED_FUNCTION_9();
  v123 = sub_268B34E24();
  v27 = OUTLINED_FUNCTION_1(v123);
  v121 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v120 = v32 - v31;
  OUTLINED_FUNCTION_9();
  v33 = sub_268B37A54();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_0();
  v41 = v39 - v40;
  v43 = MEMORY[0x28223BE20](v42);
  v115 = v111 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = v111 - v45;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v47 = __swift_project_value_buffer(v33, qword_2802CDA10);
  v48 = *(v36 + 16);
  v118 = v47;
  v119 = v48;
  (v48)(v46);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_14();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse()", v51, 2u);
    OUTLINED_FUNCTION_12();
  }

  v54 = *(v36 + 8);
  v53 = v36 + 8;
  v52 = v54;
  (v54)(v46, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v56 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  swift_beginAccess();
  v116 = v56;
  v133[0] = *&v5[v56];
  sub_268B38404();
  v125 = v5;
  v57 = sub_268B36E94();
  v59 = v58;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v57;
  *(inited + 56) = v59;
  v60 = sub_268B37B84();
  v61 = v130;
  v62 = [v130 repeatState];
  if ((v62 - 1) >= 3)
  {

    v77 = v115;
    v119(v115, v118, v33);
    v78 = sub_268B37A34();
    v79 = sub_268B37EE4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = OUTLINED_FUNCTION_14();
      *v80 = 0;
      _os_log_impl(&dword_2688BB000, v78, v79, "Unexpected repeat mode found", v80, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v52)(v77, v33);
    v81 = sub_268B36E84();
    if (!v82)
    {
      OUTLINED_FUNCTION_8_29();
      sub_268947F08();
    }

    v125 = v81;
    v93 = v128;
    OUTLINED_FUNCTION_59_0((v128 + 104), *(v128 + 128));
    (*(v121 + 104))(v120, *MEMORY[0x277D5BC00], v123);
    v94 = sub_268B350F4();
    v95 = v122;
    __swift_storeEnumTagSinglePayload(v122, 1, 1, v94);
    v96 = *MEMORY[0x277D5B908];
    v97 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v97);
    v99 = v124;
    (*(v98 + 104))(v124, v96, v97);
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v97);
    v100.isa = v78->isa;
    v101 = v95;
    v102 = v117;
    sub_2688F1FA4(v101, v117, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v102, 1, v94) == 1)
    {
      sub_2688C058C(v102, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      OUTLINED_FUNCTION_15_23();
      (*(v103 + 8))(v102, v94);
    }

    v104 = v120;
    v105 = v124;
    sub_2688E388C();

    sub_2688C058C(v105, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v122, &unk_2802A57B0, &unk_268B3CE00);
    (*(v121 + 8))(v104, v123);
    OUTLINED_FUNCTION_59_0((v93 + 104), *(v93 + 128));
    sub_2688C2ECC();
    v106 = OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_7_30(v106, v107);

    v108 = OUTLINED_FUNCTION_26_1();
    v110 = OUTLINED_FUNCTION_13_16(v108, v109);
    v127(v110);
    sub_2688C058C(v133, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v123 = v60;
    v124 = v52;
    sub_268AADF20(v132, (3u >> ((v62 - 1) & 7)) & 1);
    v63 = sub_268B18100();
    if (v63)
    {
      if (sub_2688EFD0C(v63))
      {
        memcpy(v133, &v132[1], 0x51uLL);
        sub_2688C058C(v133, &qword_2802A5C88, qword_268B418C0);
        LODWORD(v132[1]) = 0;
        memset(&v132[2], 0, 72);
        LOBYTE(v132[11]) = 1;
        sub_268AE41BC();
      }
    }

    sub_268B36754();
    v64 = sub_268B36734();
    v111[1] = v53;
    if (!v64)
    {
      v64 = sub_268B36744();
    }

    v65 = v64;
    v119(v41, v118, v33);

    v66 = v41;
    v67 = sub_268B37A34();
    v68 = sub_268B37ED4();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v133[0] = v70;
      *v69 = 136315138;
      v122 = v66;
      sub_268B36714();
      v71 = v112;
      sub_268B36B14();

      v72 = sub_268B36784();
      v74 = v73;
      (*(v113 + 8))(v71, v114);
      v75 = sub_26892CDB8(v72, v74, v133);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_2688BB000, v67, v68, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      v61 = v130;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v76 = v122;
    }

    else
    {

      v76 = v66;
    }

    (v124)(v76, v33);
    v83 = v126;
    v84 = swift_allocObject();
    v85 = v125;
    v84[2] = v65;
    v84[3] = v85;
    v86 = v127;
    v87 = v128;
    v84[4] = v61;
    v84[5] = v87;
    v84[6] = v83;
    v84[7] = v86;
    v84[8] = v129;
    v88 = *(v87 + 56);
    if (*&v85[v116] == 100)
    {
      memcpy(v133, v132, 0x5EuLL);

      v89 = v85;
      v90 = v61;

      OUTLINED_FUNCTION_4_39();
      sub_268AC6434();
    }

    else
    {
      memcpy(v133, v132, 0x5EuLL);

      v91 = v85;
      v92 = v61;

      OUTLINED_FUNCTION_4_39();
      sub_268AB3F14();
    }

    memcpy(v131, v132, 0x5EuLL);
    sub_268A97F84(v131);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A96BB4(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v138 = a7;
  v136 = a5;
  v137 = a6;
  v139 = a4;
  v140 = a3;
  v133 = a2;
  v129 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = &v119 - v9;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = *(*(v135 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v135);
  v127 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v119 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v119 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v134 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v125 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v124 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v132 = &v119 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v121 = &v119 - v29;
  MEMORY[0x28223BE20](v28);
  v122 = (&v119 - v30);
  v31 = sub_268B34E24();
  v141 = *(v31 - 8);
  v142 = v31;
  v32 = *(v141 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v131 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v130 = &v119 - v35;
  v36 = sub_268B37A54();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v126 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v119 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v119 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v119 - v48);
  sub_2688F1FA4(v129, &v119 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v36, qword_2802CDA10);
    v52 = v37;
    (*(v37 + 16))(v45, v51, v36);
    v53 = sub_268B37A34();
    v54 = sub_268B37EE4();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v139;
    v57 = v122;
    if (v55)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v53, v54, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v58, 2u);
      v59 = v58;
      v52 = v37;
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    (*(v52 + 8))(v45, v36);
    v60 = sub_268B36E84();
    if (v61)
    {
      v62 = v61;
      v135 = v60;
    }

    else
    {
      sub_268947F08();
      v135 = v73;
      v62 = v74;
    }

    v75 = v125;
    v76 = __swift_project_boxed_opaque_existential_1(v56 + 13, v56[16]);
    (*(v141 + 104))(v130, *MEMORY[0x277D5BC00], v142);
    v77 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v77);
    v78 = *MEMORY[0x277D5B8E0];
    v79 = sub_268B34B94();
    (*(*(v79 - 8) + 104))(v75, v78, v79);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v79);
    v80 = *v76;
    v81 = v121;
    sub_2688F1FA4(v57, v121, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v81, 1, v77) == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v134 = v62;
      sub_268B350B4();
      (*(*(v77 - 8) + 8))(v81, v77);
    }

    v82 = v130;
    sub_2688E388C();

    sub_2688C058C(v75, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v141 + 8))(v82, v142);
    v83 = __swift_project_boxed_opaque_existential_1(v56 + 13, v56[16]);
    sub_2688C2ECC();
    v84 = swift_allocError();
    *v85 = -97;
    v86 = *v83;
    sub_26894B450();

    v87 = swift_allocError();
    *v88 = -97;
    v143[0] = v87;
    v144 = 1;
    v137(v143);

    return sub_2688C058C(v143, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v16);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(v36, qword_2802CDA10);
    v64 = v37;
    v65 = v36;
    v66 = *(v64 + 16);
    v129 = v63;
    v125 = v66;
    (v66)(v43);
    v67 = sub_268B37A34();
    v68 = sub_268B37ED4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v69, 2u);
      MEMORY[0x26D6266E0](v69, -1, -1);
    }

    v70 = *(v64 + 8);
    v130 = (v64 + 8);
    v122 = v70;
    v70(v43, v65);
    v71 = v133;
    sub_268B36E84();
    v119 = v65;
    if (!v72)
    {
      v90 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
      swift_beginAccess();
      v145 = *(v71 + v90);
      sub_268B38404();
      sub_268947F08();
    }

    v91 = __swift_project_boxed_opaque_existential_1(v139 + 13, v139[16]);
    (*(v141 + 104))(v131, *MEMORY[0x277D5BC00], v142);
    v92 = v123;
    sub_2688F1FA4(v16, v123, &unk_2802A56E0, &unk_268B3CDF0);

    v93 = sub_268B350F4();
    v94 = *(v93 - 8);
    v95 = v132;
    (*(v94 + 32))(v132, v92, v93);
    __swift_storeEnumTagSinglePayload(v95, 0, 1, v93);
    v96 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v96);
    v97 = *v91;
    v98 = v124;
    sub_2688F1FA4(v95, v124, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, 1, v93);
    v120 = v16;
    v133 = v94;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v98, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v94 + 8))(v98, v93);
    }

    v100 = v131;
    v101 = v134;
    sub_2688E388C();

    sub_2688C058C(v101, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v132, &unk_2802A57B0, &unk_268B3CE00);
    (*(v141 + 8))(v100, v142);
    v102 = v139;
    v103 = __swift_project_boxed_opaque_existential_1(v139 + 13, v139[16]);
    sub_2688C2ECC();
    v104 = swift_allocError();
    *v105 = 79;
    v106 = *v103;
    sub_26894B450();

    v107 = v126;
    v108 = v119;
    (v125)(v126, v129, v119);
    v109 = sub_268B37A34();
    v110 = sub_268B37ED4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_2688BB000, v109, v110, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v111, 2u);
      MEMORY[0x26D6266E0](v111, -1, -1);
    }

    v122(v107, v108);
    v112 = v102[36];
    v113 = v102[37];
    __swift_project_boxed_opaque_existential_1(v102 + 33, v112);
    v114 = v120;
    v115 = v127;
    sub_2688F1FA4(v120, v127, &unk_2802A56E0, &unk_268B3CDF0);
    v116 = *(v115 + *(v135 + 48));
    v117 = v128;
    sub_268A82B50(v140, v128);
    v118 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v118);
    (*(v113 + 40))(v115, v116, v117, v137, v138, v112, v113);

    sub_2688C058C(v117, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v114, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v133 + 8))(v115, v93);
  }
}

uint64_t sub_268A97A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A97D24()
{
  if (qword_2802A4F88 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA88;

  return v1;
}

uint64_t sub_268A97D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A97DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A97E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A97E90(uint64_t a1)
{
  result = sub_268A97EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A97EB8()
{
  result = qword_2802A7C90;
  if (!qword_2802A7C90)
  {
    type metadata accessor for SetRepeatStateHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7C90);
  }

  return result;
}

uint64_t sub_268A97F10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_268A97F70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_268A96B08();
}

uint64_t sub_268A98000()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_268A98138(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268A951D4(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

id sub_268A98214(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_268A98220()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268A98330(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A945FC(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A983E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t OUTLINED_FUNCTION_4_39()
{
  result = v1 - 184;
  v3 = *(v0 + 104);
  return result;
}

void OUTLINED_FUNCTION_7_30(uint64_t a1, _BYTE *a2)
{
  *a2 = v3;
  v5 = *v2;

  sub_26894B450();
}

Swift::String_optional __swiftcall UsoTask_update_common_MediaItem.verb()()
{
  sub_268B36154();
  sub_268A98E1C(&qword_2802A7C98);
  v0 = *(sub_268B373B4() + 16);

  if (v0)
  {
    v1 = 0x705365766F6D6572;
  }

  else
  {
    v1 = 0x6B61657053646461;
  }

  if (v0)
  {
    v2 = 0xED000072656B6165;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t UsoTask_update_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36224();
  result = v20;
  if (v20)
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v10, v4);

    v11 = sub_268B37A34();
    v12 = sub_268B37EE4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v2;
      v20 = v14;
      *v13 = 136315138;
      sub_268B36154();

      v15 = sub_268B37C24();
      v17 = sub_26892CDB8(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2688BB000, v11, v12, "Task: %s -- is an add to library task and not addSpeaker. This is not a controls task", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x26D6266E0](v14, -1, -1);
      MEMORY[0x26D6266E0](v13, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_268A988DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A98930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A98984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}