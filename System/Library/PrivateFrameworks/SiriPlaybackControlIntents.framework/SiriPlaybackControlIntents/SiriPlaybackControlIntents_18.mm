void sub_268A65CAC()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_30(v12, v193);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58_0();
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_1(v15, v16, v17, v18, v19, v20, v21, v22, v194);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80_1();
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_16(v28, v29, v30, v31, v32, v33, v34, v35, v195);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_0(v37, v38, v39, v40, v41, v42, v43, v44, v196);
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21_15(v46, v47, v48, v49, v50, v51, v52, v53, v197);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v55 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v56 = OUTLINED_FUNCTION_5_20(v55);
  v57(v56);
  v58 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v60);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v61, v62, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v63 = OUTLINED_FUNCTION_16_26();
  v64(v63);
  sub_268A66710();
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v65)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v156)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v66 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v67 = OUTLINED_FUNCTION_201_0();
    v4 = v67;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v199;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v70 = OUTLINED_FUNCTION_0_38();
    v71(v70);
    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v73))
    {
      v74 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v74);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v75, v76, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v77 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v155 ^ v156 | v68))
      {
        v78 = OUTLINED_FUNCTION_18_14();
        v79(v78);
        v80 = sub_268B37A34();
        v81 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v81))
        {
          v82 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v82);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v83, v84, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v85 = OUTLINED_FUNCTION_54_4();
        v86(v85);
        OUTLINED_FUNCTION_4_33();
        v87 = sub_268AB22D8();
        OUTLINED_FUNCTION_7_25(v87, v88);
        if (!v68)
        {
          OUTLINED_FUNCTION_78_5(v89, v90);
        }

        v91 = OUTLINED_FUNCTION_29_13();
        v92(v91);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v93 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v93);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v65)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v156)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v109 = OUTLINED_FUNCTION_8_24();
          v110(v109);
          v1 = sub_268B37A34();
          v111 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v111))
          {
            v112 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v112);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v113, v114, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v115 = OUTLINED_FUNCTION_52_9();
          v116(v115);
          OUTLINED_FUNCTION_4_33();
          v117 = sub_268AB22D8();
          OUTLINED_FUNCTION_7_25(v117, v118);
          if (!v68)
          {
            OUTLINED_FUNCTION_80_5(v119, v120);
          }

          v121 = OUTLINED_FUNCTION_29_13();
          v122(v121);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v68)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_28794F570;
LABEL_61:
      while (v6 != v58)
      {
        if (v3)
        {
          v125 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v125);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v65)
          {
            goto LABEL_133;
          }

          v123 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v156)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v124 = 0;
        while (v124 != 24)
        {
          OUTLINED_FUNCTION_31_14(v124);
          if (v68)
          {

            goto LABEL_61;
          }
        }

        v1 = v199;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v126)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v127 = v58[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v127);
        OUTLINED_FUNCTION_55_6();
        if (!v65)
        {
          OUTLINED_FUNCTION_3_39();
          v129();
          v1 = sub_268B37A34();
          v130 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v130))
          {
            v131 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v131);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v132, v133, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v134();
          OUTLINED_FUNCTION_4_33();
          v135 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v135, v136);
          if (!v68)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v154 = OUTLINED_FUNCTION_24_15();
            (v1)(v154);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v128 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v137();
          v1 = sub_268B37A34();
          v138 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v138))
          {
            v139 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v139);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v140, v141, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v142();
          OUTLINED_FUNCTION_4_33();
          v143 = sub_268AB22D8();
          OUTLINED_FUNCTION_25_15(v143, v144);
          if (!v68)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v145 = OUTLINED_FUNCTION_29_13();
          (v1)(v145);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v146();
        v147 = sub_268B37A34();
        v148 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v148))
        {
          v149 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v149);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v150, v151, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v152();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v68)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v155 == v156)
      {
        __break(1u);
        return;
      }

      v159 = *(v157 + 8 * v158);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v65)
      {
        v161 = OUTLINED_FUNCTION_1_48();
        v162(v161);
        v163 = sub_268B37A34();
        v164 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v164))
        {
          v165 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v165);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v166, v167, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v168 = OUTLINED_FUNCTION_17_21();
        v169(v168);
        OUTLINED_FUNCTION_23_17();
        v170 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v170, v171);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v160 == 3)
      {
        v172 = OUTLINED_FUNCTION_1_48();
        v173(v172);
        v174 = sub_268B37A34();
        v175 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v175))
        {
          v176 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v176);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v177, v178, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v179 = OUTLINED_FUNCTION_17_21();
        v180(v179);
        OUTLINED_FUNCTION_23_17();
        v181 = sub_268AB22D8();
        OUTLINED_FUNCTION_26_14(v181, v182);
        if (!v68)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v192 = OUTLINED_FUNCTION_24_15();
          (v0)(v192);
          goto LABEL_128;
        }

LABEL_117:
        v183 = OUTLINED_FUNCTION_29_13();
        (v0)(v183);
LABEL_128:

        goto LABEL_129;
      }

      v184 = OUTLINED_FUNCTION_1_48();
      v185(v184);
      v186 = sub_268B37A34();
      v187 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v187))
      {
        v188 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v188);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v189, v190, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v77 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v198(v77);
      goto LABEL_129;
    }

    if (v3)
    {
      v69 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v69);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v65)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v156)
    {
      __break(1u);
LABEL_131:
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
      OUTLINED_FUNCTION_0_0();
      goto LABEL_2;
    }

    v58 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v68);

  v94 = OUTLINED_FUNCTION_0_38();
  v95(v94);
  v96 = sub_268B37A34();
  v97 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v97))
  {
    v99 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v99);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v100, v101, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v102 = OUTLINED_FUNCTION_278();
  v198(v102);
  OUTLINED_FUNCTION_4_33();
  v103 = sub_268AB22D8();
  OUTLINED_FUNCTION_7_25(v103, v104);
  if (!v68)
  {
    OUTLINED_FUNCTION_79_5(v105, v106);
  }

  v107 = OUTLINED_FUNCTION_29_13();
  v108(v107);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A66710()
{
  sub_268B0DEEC();
  v1 = v0;
  v2 = sub_2688EFD0C(v0);
  if (!v2)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_12:
    sub_26893E750(v5);
    v14 = *(v13 + 16);

    return;
  }

  v3 = v2;
  v15 = MEMORY[0x277D84F90];
  sub_26894478C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D625BD0](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = sub_268988568(v6);
      v10 = v9;

      v11 = *(v15 + 16);
      if (v11 >= *(v15 + 24) >> 1)
      {
        sub_26894478C();
      }

      ++v4;
      *(v15 + 16) = v11 + 1;
      v12 = v15 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
    }

    while (v3 != v4);

    goto LABEL_12;
  }

  __break(1u);
}

void sub_268A66850()
{
  OUTLINED_FUNCTION_26();
  v68 = v1;
  v69 = v0;
  v70 = v2;
  v71 = v3;
  v63 = v5;
  v64 = v4;
  v66 = v6;
  v67 = v7;
  v65 = v8;
  v9 = sub_268B367A4();
  v10 = OUTLINED_FUNCTION_1(v9);
  v61 = v11;
  v62 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v72 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v24 = *(v18 + 16);
  v24(v0, v23, v15);
  v25 = sub_268B37A34();
  v26 = sub_268B37ED4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v27, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v18 + 8);
  v28(v0, v15);
  sub_268B36754();
  v29 = sub_268B36734();
  if (!v29)
  {
    v29 = sub_268B36744();
  }

  v30 = v29;
  v31 = v72;
  v24(v72, v23, v15);

  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v59 = v28;
    v35 = v34;
    v36 = swift_slowAlloc();
    v73 = v36;
    *v35 = 136315138;
    sub_268B36714();
    v37 = v60;
    sub_268B36B14();

    sub_268B36784();
    (*(v61 + 8))(v37, v62);
    v38 = OUTLINED_FUNCTION_138();
    v41 = sub_26892CDB8(v38, v39, v40);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_2688BB000, v32, v33, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    v59(v72, v15);
  }

  else
  {

    v28(v31, v15);
  }

  v42 = swift_allocObject();
  v44 = v65;
  v43 = v66;
  v42[2] = v30;
  v42[3] = v43;
  v46 = v69;
  v45 = v70;
  v47 = v63;
  v48 = v64;
  v42[4] = v70;
  v42[5] = v48;
  v42[6] = v47;
  v42[7] = v46;
  v49 = v68;
  v42[8] = v44;
  v42[9] = v49;
  v50 = v71;
  v42[10] = v71;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v51 = v47;
  swift_retain_n();
  v52 = v48;
  v53 = v51;
  v54 = v52;

  v55 = v54;
  v56 = v53;

  sub_2689FABD8(v57, v55, v43, v45, v67, v56, v46, v49, v50, v43, v45, v56, v46, sub_268A67F00, v42, v55);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A66DA4(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v102 = a8;
  v89 = a7;
  v97 = a6;
  v87 = a5;
  v98 = a4;
  v86 = a3;
  v84 = a2;
  v93 = a1;
  v101 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v80 - v11;
  v12 = sub_268B37A54();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = &v80 - v24;
  v25 = sub_268B34E24();
  v94 = *(v25 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v90 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v80 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v80 - v40;
  sub_268935590(v93, &v80 - v40, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v41, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = v100;
    v43 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v44 = v99;
    (*(v99 + 16))(v96, v43, v42);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v96, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -87;
    v103[0] = v48;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    v82 = sub_2688E1BE4(9, 3, v84, v86, v98, 0x6E776F6E6B6E75, 0xE700000000000000, v87);
    v83 = v51;
    v52 = __swift_project_boxed_opaque_existential_1(v97 + 13, v97[16]);
    v53 = *MEMORY[0x277D5BBE0];
    v54 = *(v94 + 104);
    v86 = v28;
    v87 = v25;
    v54(v28, v53, v25);
    sub_268935590(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v96 = v29;

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    v57 = v85;
    (*(v56 + 32))(v85, v35, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v58 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v58);
    v59 = *v52;
    v60 = v88;
    sub_268935590(v57, v88, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v55);
    v84 = v37;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v60, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v56 + 8))(v60, v55);
    }

    v81 = v56;
    v93 = v55;
    v62 = v86;
    v63 = v95;
    sub_2688E3180();

    sub_2688EF38C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v62, v87);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = v100;
    v65 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v66 = v99;
    v67 = v91;
    (*(v99 + 16))(v91, v65, v64);
    v68 = sub_268B37A34();
    v69 = sub_268B37ED4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v97;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v68, v69, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    (*(v66 + 8))(v67, v64);
    v73 = v71[21];
    v74 = v71[22];
    __swift_project_boxed_opaque_existential_1(v71 + 18, v73);
    v75 = v84;
    v76 = v90;
    sub_268935590(v84, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v77 = *(v76 + *(v96 + 12));
    v78 = v92;
    sub_268A82B50(v98, v92);
    v79 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
    (*(v74 + 40))(v76, v77, v78, v102, v101, v73, v74);

    sub_2688EF38C(v78, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v75, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v81 + 8))(v76, v93);
  }
}

uint64_t sub_268A67768(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_268935590(a1, v51, &unk_2802A57C0, &qword_268B3BE00);
  v16 = LOBYTE(v51[5]);
  sub_2688EF38C(v51, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 != 1)
  {
    return a2(a1);
  }

  v17 = a4 == 0x656372756F73 && a5 == 0xE600000000000000;
  if (v17 || (sub_268B38444() & 1) != 0)
  {
    v18 = AddSpeakerSourceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if (v19)
    {
LABEL_8:
      sub_2688C2ECC();
      v20 = swift_allocError();
      v22 = 20;
LABEL_9:
      *v21 = v22;
      v51[0] = v20;
      LOBYTE(v51[5]) = 1;
      a2(v51);
      return sub_2688EF38C(v51, &unk_2802A57C0, &qword_268B3BE00);
    }

    if (v18 == 1)
    {
      v39 = *(a7 + 56);
      v25 = "ioMentionedInIntent";
      v26 = v39[5];
      v27 = v39[6];
      __swift_project_boxed_opaque_existential_1(v39 + 2, v26);
      v28 = 0xD000000000000025;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v47, a9, v26, v27);
    }

    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    v32.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    *(&__src[8] + 3) = v32;
    OUTLINED_FUNCTION_0_23(v32);
    BYTE1(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v33, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59310;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v36 | 3;
LABEL_25:
    v34[6] = v37;
    v34[7] = v35;
    sub_268B37B84();
    v38 = *(a7 + 56);
    memcpy(v51, __src, 0x53uLL);
    sub_268AB2B1C();

    memcpy(v48, __src, 0x53uLL);
    return sub_26891864C(v48);
  }

  v29 = a4 == 0x74616E6974736564 && a5 == 0xEC000000736E6F69;
  if (!v29 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 22;
    goto LABEL_9;
  }

  v30 = AddSpeakerDestinationsUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
  if (v31)
  {
LABEL_21:
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 21;
    goto LABEL_9;
  }

  if (v30 == 1)
  {
    v42.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_0_23(v42);
    *(&__src[8] + 2) = v43;
    BYTE2(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v44, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59280;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v45 | 9;
    goto LABEL_25;
  }

  if (v30 != 3)
  {
    if (v30 == 2)
    {
LABEL_14:
      v24 = *(a7 + 56);
      v25 = "noDestinationSpeakerFound";
      v26 = v24[5];
      v27 = v24[6];
      __swift_project_boxed_opaque_existential_1(v24 + 2, v26);
      v28 = 0xD000000000000033;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v47, a9, v26, v27);
    }

    goto LABEL_21;
  }

  sub_26890C900(a7 + 16, v51);
  sub_26890C900(v51, __src);
  v40 = sub_268ABE424(__src);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  v41 = *(a7 + 56);
  return sub_268ABEFDC(v40, v47, a9);
}

uint64_t type metadata accessor for AddSpeakerUnsupportedValueStrategy()
{
  result = qword_2802A7A00;
  if (!qword_2802A7A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A67CAC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_268A67FA8(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_268A67F38(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268A67D44(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_2688EFD0C(a2);
  v5 = sub_268A67FA8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_268A67FF4(v7, a2);
  result = sub_268A67FF4(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for DeviceGroup();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_268B381D4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_268B382B4();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268A67E98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268A67F00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  return sub_268A66CE8();
}

unint64_t sub_268A67F38(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_268A67FA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_268A67FF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_268B382A4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38()
{
  result = v0;
  v3 = *(v1 - 168);
  v4 = *(v1 - 160);
  v5 = *(v1 - 128);
  v6 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_48()
{
  result = v0;
  v3 = *(v1 - 168);
  v4 = *(v1 - 160);
  v5 = *(v1 - 152);
  return result;
}

void OUTLINED_FUNCTION_3_39()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_4_33()
{
  result = v0 - 120;
  v2 = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_20(uint64_t a1)
{
  v5 = *(v2 + 16);
  result = v1;
  *(v3 - 168) = a1;
  *(v3 - 160) = v5;
  *(v3 - 152) = v2 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_24()
{
  result = *(v0 - 216);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
  v4 = *(v0 - 128);
  v5 = *(v0 - 152);
  return result;
}

void OUTLINED_FUNCTION_9_20()
{
  *(v5 - 216) = v4;
  *(v5 - 248) = v3;
  *(v5 - 264) = v2;
  *(v5 - 240) = v1;
  *(v5 - 256) = v0;
}

void OUTLINED_FUNCTION_12_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_13_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_26()
{
  v4 = *(v2 + 8);
  result = v0;
  *(v3 - 136) = v2 + 8;
  *(v3 - 128) = v1;
  *(v3 - 144) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_21()
{
  result = v0;
  v4 = *(v1 - 144);
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_14()
{
  result = *(v0 - 192);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
  v4 = *(v0 - 128);
  v5 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_17()
{
  result = v0 - 120;
  v2 = *(v0 - 176);
  return result;
}

id OUTLINED_FUNCTION_42_9()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_46_9()
{

  return [v0 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_48_8()
{
  v2 = *(*(v0 - 120) + 16);

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_2688EFD10(0, (v0 & 0xC000000000000001) == 0, v0);
}

void OUTLINED_FUNCTION_50_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_52_9()
{
  result = v0;
  v4 = *(v1 - 144);
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_4()
{
  result = *(v0 - 192);
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  v4 = *(v0 - 144);
  return result;
}

id OUTLINED_FUNCTION_61_4()
{
  v3 = *(v1 + 88);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_62_4()
{
  *(v1 - 176) = v0;

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_63_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;

  return sub_2688EFD0C(v1);
}

id OUTLINED_FUNCTION_64_6()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void OUTLINED_FUNCTION_65_6()
{
}

void OUTLINED_FUNCTION_66_5()
{
}

uint64_t OUTLINED_FUNCTION_85_4()
{
  result = *(v0 + 32);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_3()
{
  result = *(v0 + 64);
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_4()
{
  result = *(v1 + 16);
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_4()
{
  result = *(v1 + 48);
  *(v1 + 40) = v0;
  *(v1 + 48) = v2;
  return result;
}

id OUTLINED_FUNCTION_92_4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  v2 = *(v0 - 120);

  return sub_2688EFD0C(v2);
}

void OUTLINED_FUNCTION_94_4()
{

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_95_4()
{

  return swift_unknownObjectRelease();
}

id OUTLINED_FUNCTION_96_3()
{
  v3 = *(v1 + 88);

  return [v0 v3];
}

id OUTLINED_FUNCTION_97_2()
{
  v3 = *(v1 + 88);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_98_1()
{
  v2 = *(v0 - 120);

  return sub_2688EFD0C(v2);
}

void OUTLINED_FUNCTION_99_3()
{

  JUMPOUT(0x26D625BD0);
}

id OUTLINED_FUNCTION_100_2(void *a1)
{
  v3 = *(v1 + 88);

  return [a1 v3];
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_268A67D44(1, v0);
}

uint64_t OUTLINED_FUNCTION_102_3()
{

  return sub_268B38074();
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return sub_268B38254();
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_268B38254();
}

unint64_t OUTLINED_FUNCTION_106_1()
{

  return sub_2688C063C();
}

id OUTLINED_FUNCTION_107_2()
{

  return [v0 (v1 + 1129)];
}

uint64_t sub_268A68684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
LABEL_28:
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "SetSubtitleStateDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v10 = a3;
  a3 = sub_268B35254();
  v6 = sub_2688EFD0C(a3);
  v15 = 0;
  v7 = a3 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v15)
    {

      v21 = v33[31];
      v22 = v33[32];
      __swift_project_boxed_opaque_existential_1(v33 + 28, v21);
      return sub_2689CE88C(0xD000000000000024, 0x8000000268B5BBB0, v34, v35, v21, v22);
    }

    if (v7)
    {
      v16 = MEMORY[0x26D625BD0](v15, a3);
    }

    else
    {
      if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v16 = *(a3 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v18 = [v16 isDeviceSelectedUsingContext];
    v10 = sub_2688C063C();
    v19 = sub_268B38054();
    v20 = v19;
    if (v18)
    {
      break;
    }

LABEL_14:
    ++v15;
  }

  v10 = sub_268B38074();

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_268AE2278(a3);
  v25 = v24;
  v26 = v32;
  v27 = [v32 enable];
  sub_268AE23DC(a3);
  v29 = v28;

  if ([v26 type] == 2)
  {
    v30 = 256;
  }

  else
  {
    v30 = ([v26 type] == 3) << 8;
  }

  if (v29)
  {
    v31 = 0x10000;
  }

  else
  {
    v31 = 0;
  }

  if (v27 == 2)
  {
    ++v31;
  }

  sub_268A39B7C(v25, v31 | v30, v34, v35);
}

void sub_268A68A34()
{
  type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A68B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A68BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A68C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A68D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A68DD4()
{
  type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A68E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268A68F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268A69138(uint64_t a1, uint64_t a2)
{
  result = sub_268A69190(&qword_2802A7A18, a2, type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A69190(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_268A691D8()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_6_31();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_3_40();
  v6(v5);

  v7 = sub_268B37A34();
  v8 = sub_268B37F04();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_26();
    *(v0 + 4) = OUTLINED_FUNCTION_8_25(4.8149e-34);
    OUTLINED_FUNCTION_9_21(&dword_2688BB000, v9, v10, "DirectInvocationHelper#deviceOfChoiceCommand for %s");
    OUTLINED_FUNCTION_11_25();
    OUTLINED_FUNCTION_5_21();
  }

  v11 = OUTLINED_FUNCTION_10_22();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_268B3BBA0;
  v14 = OUTLINED_FUNCTION_4_34();
  *(v13 + 32) = sub_268A69860(v14, v15, v16);
  OUTLINED_FUNCTION_23();
}

void sub_268A693C4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v10 + 16))(v0, v13, v7);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, v4, v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v10 + 8))(v0, v7);
  sub_268A69AD0(v2, v6);
  OUTLINED_FUNCTION_23();
}

void sub_268A69540()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_6_31();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_3_40();
  v6(v5);

  v7 = sub_268B37A34();
  v8 = sub_268B37F04();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_26();
    *(v0 + 4) = OUTLINED_FUNCTION_8_25(4.8149e-34);
    OUTLINED_FUNCTION_9_21(&dword_2688BB000, v9, v10, "DirectInvocationHelper#languageChoiceCommand for %s");
    OUTLINED_FUNCTION_11_25();
    OUTLINED_FUNCTION_5_21();
  }

  v11 = OUTLINED_FUNCTION_10_22();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_268B3BBA0;
  v14 = OUTLINED_FUNCTION_4_34();
  *(v13 + 32) = sub_268A69860(v14, v15, v16);
  OUTLINED_FUNCTION_23();
}

void sub_268A696EC()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_6_31();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_3_40();
  v6(v5);

  v7 = sub_268B37A34();
  v8 = sub_268B37F04();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_26();
    *(v0 + 4) = OUTLINED_FUNCTION_8_25(4.8149e-34);
    OUTLINED_FUNCTION_9_21(&dword_2688BB000, v9, v10, "DirectInvocationHelper#buttonPressed for %s");
    OUTLINED_FUNCTION_11_25();
    OUTLINED_FUNCTION_5_21();
  }

  v11 = OUTLINED_FUNCTION_10_22();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_34();
  sub_268A69860(v13, v14, v15);
  OUTLINED_FUNCTION_23();
}

id sub_268A69860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268A6A1E8();

  v6 = sub_268A69A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A28, &unk_268B48A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  v8 = inited;
  v9 = MEMORY[0x277D837D0];
  sub_268B38164();
  v8[12] = v9;
  v8[9] = a1;
  v8[10] = a2;

  v10 = sub_268B37B84();
  sub_268A6A22C(v10, v6);
  v11 = objc_opt_self();
  v12 = [v11 runSiriKitExecutorCommandWithContext:a3 payload:v6];
  v13 = [v11 wrapCommandInStartLocalRequest_];

  return v13;
}

id sub_268A69A5C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268B37BC4();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_268A69AD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_268B35474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_268B35464();
  if (!v16)
  {
    v42 = 0u;
    v43 = 0u;
LABEL_10:
    sub_26891F498(&v42);
    goto LABEL_11;
  }

  v39 = v15;
  sub_26892E0F4(v16, &v42);

  if (!*(&v43 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v17 = v40;
    v18 = v41;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v20 = v39;
    (*(v9 + 16))(v39, v19, v8);

    v21 = sub_268B37A34();
    v22 = sub_268B37F04();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v8;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v42 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_26892CDB8(v17, v18, &v42);
      _os_log_impl(&dword_2688BB000, v21, v22, "DirectInvocationHelper destinationID: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26D6266E0](v25, -1, -1);
      MEMORY[0x26D6266E0](v24, -1, -1);

      (*(v9 + 8))(v20, v23);
    }

    else
    {

      (*(v9 + 8))(v20, v8);
    }

    return v17;
  }

LABEL_11:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v13, v26, v8);
  (*(v4 + 16))(v7, a2, v3);
  v27 = sub_268B37A34();
  v28 = sub_268B37EE4();
  if (os_log_type_enabled(v27, v28))
  {
    v37 = v3;
    v38 = v9;
    v39 = v8;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v42 = v30;
    *v29 = 136315138;
    if (sub_268B35464())
    {
      v31 = sub_268B37B74();
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    (*(v4 + 8))(v7, v37);
    v34 = sub_26892CDB8(v31, v33, &v42);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_2688BB000, v27, v28, "DirectInvocationHelper invalid user data: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x26D6266E0](v30, -1, -1);
    MEMORY[0x26D6266E0](v29, -1, -1);

    (*(v38 + 8))(v13, v39);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v8);
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationIdentifier(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x268A6A174);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268A6A1E8()
{
  result = qword_2802A7A20;
  if (!qword_2802A7A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7A20);
  }

  return result;
}

void sub_268A6A22C(uint64_t a1, void *a2)
{
  v3 = sub_268B37B54();

  [a2 setUserData_];
}

void OUTLINED_FUNCTION_5_21()
{
  v2 = *(v0 - 96);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_7_26()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_25(float a1)
{
  *v3 = a1;

  return sub_26892CDB8(v2, v1, (v4 - 88));
}

void OUTLINED_FUNCTION_9_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_11_25()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

uint64_t sub_268A6A3CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A30, &qword_268B48A70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_268B36054();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36044();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_268A6A594(v3);
    return 26;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    if (qword_2802A4F50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = sub_26892E0A8(v8, qword_2802CDA50);
    swift_endAccess();
    (*(v5 + 8))(v8, v4);
  }

  return v9;
}

uint64_t sub_268A6A594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A30, &qword_268B48A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268A6A5FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A38, &qword_268B48A78);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A40, &qword_268B48A80) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_268B48A60;
  v3 = v36 + v2;
  v4 = v0[14];
  v5 = *MEMORY[0x277D5EDA0];
  v6 = sub_268B36054();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 20;
  v8 = v0[14];
  v7(v3 + v1, *MEMORY[0x277D5EDB8], v6);
  *(v3 + v1 + v8) = 6;
  v9 = v0[14];
  v7(v3 + 2 * v1, *MEMORY[0x277D5EE18], v6);
  *(v3 + 2 * v1 + v9) = 2;
  v10 = v0[14];
  v7(v3 + 3 * v1, *MEMORY[0x277D5EE10], v6);
  *(v3 + 3 * v1 + v10) = 15;
  v11 = v0[14];
  v7(v3 + 4 * v1, *MEMORY[0x277D5ED30], v6);
  *(v3 + 4 * v1 + v11) = 12;
  v12 = v0[14];
  v7(v3 + 5 * v1, *MEMORY[0x277D5ED90], v6);
  *(v3 + 5 * v1 + v12) = 4;
  v13 = v0[14];
  v7(v3 + 6 * v1, *MEMORY[0x277D5EDF8], v6);
  *(v3 + 6 * v1 + v13) = 7;
  v14 = v0[14];
  v7(v3 + 7 * v1, *MEMORY[0x277D5EE08], v6);
  *(v3 + 7 * v1 + v14) = 1;
  v15 = v0[14];
  v7(v3 + 8 * v1, *MEMORY[0x277D5ED38], v6);
  *(v3 + 8 * v1 + v15) = 3;
  v16 = v0[14];
  v7(v3 + 9 * v1, *MEMORY[0x277D5EDB0], v6);
  *(v3 + 9 * v1 + v16) = 0;
  v17 = v0[14];
  v7(v3 + 10 * v1, *MEMORY[0x277D5ED80], v6);
  *(v3 + 10 * v1 + v17) = 21;
  v18 = v0[14];
  v7(v3 + 11 * v1, *MEMORY[0x277D5EDD8], v6);
  *(v3 + 11 * v1 + v18) = 10;
  v19 = v0[14];
  v7(v3 + 12 * v1, *MEMORY[0x277D5ED98], v6);
  *(v3 + 12 * v1 + v19) = 9;
  v20 = v0[14];
  v7(v3 + 13 * v1, *MEMORY[0x277D5EE20], v6);
  *(v3 + 13 * v1 + v20) = 22;
  v21 = v0[14];
  v7(v3 + 14 * v1, *MEMORY[0x277D5ED78], v6);
  *(v3 + 14 * v1 + v21) = 18;
  v22 = v0[14];
  v7(v3 + 15 * v1, *MEMORY[0x277D5ED88], v6);
  *(v3 + 15 * v1 + v22) = 11;
  v23 = v0[14];
  v7(v3 + 16 * v1, *MEMORY[0x277D5ED48], v6);
  *(v3 + 16 * v1 + v23) = 12;
  v24 = v0[14];
  v7(v3 + 17 * v1, *MEMORY[0x277D5ED70], v6);
  *(v3 + 17 * v1 + v24) = 17;
  v25 = v0[14];
  v7(v3 + 18 * v1, *MEMORY[0x277D5EDC8], v6);
  *(v3 + 18 * v1 + v25) = 19;
  v26 = v0[14];
  v7(v3 + 19 * v1, *MEMORY[0x277D5EDF0], v6);
  *(v3 + 19 * v1 + v26) = 16;
  v27 = v0[14];
  v7(v3 + 20 * v1, *MEMORY[0x277D5ED58], v6);
  *(v3 + 20 * v1 + v27) = 13;
  v28 = v0[14];
  v7(v3 + 21 * v1, *MEMORY[0x277D5EDD0], v6);
  *(v3 + 21 * v1 + v28) = 23;
  v29 = v0[14];
  v7(v3 + 22 * v1, *MEMORY[0x277D5ED40], v6);
  *(v3 + 22 * v1 + v29) = 8;
  v30 = v0[14];
  v7(v3 + 23 * v1, *MEMORY[0x277D5EDA8], v6);
  *(v3 + 23 * v1 + v30) = 24;
  v31 = v0[14];
  v7(v3 + 24 * v1, *MEMORY[0x277D5ED28], v6);
  *(v3 + 24 * v1 + v31) = 5;
  v32 = v0[14];
  v7(v3 + 25 * v1, *MEMORY[0x277D5ED50], v6);
  *(v3 + 25 * v1 + v32) = 14;
  v33 = v3 + 26 * v1;
  v34 = v0[14];
  v7(v33, *MEMORY[0x277D5EE00], v6);
  *(v33 + v34) = 25;
  sub_268A6AC78();
  result = sub_268B37B84();
  qword_2802CDA50 = result;
  return result;
}

unint64_t sub_268A6AC78()
{
  result = qword_2802A7A48;
  if (!qword_2802A7A48)
  {
    sub_268B36054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7A48);
  }

  return result;
}

id SetSubtitleStateIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetSubtitleStateIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v33 = sub_268B36C44();
  sub_268B37204();
  v32 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v40);
  sub_268AD33CC(v39);
  sub_268B36754();
  v31 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v37 = v0;
  v38 = MEMORY[0x277D5F680];
  *&v36 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v35[4] = &off_28795F5E0;
  v35[3] = v13;
  v35[0] = v12;
  v34[4] = &off_287960608;
  v34[3] = v2;
  v34[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v39, (v14 + 7));
  v14[12] = v31;
  sub_2688E6514(&v36, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  sub_268B34C64();
  sub_268A6F578(v33, v32, &v41, v14, v40);
  OUTLINED_FUNCTION_129();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268A6B0E4()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  OUTLINED_FUNCTION_0_3();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v1;
  v14 = qword_2802A5028;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v15 = OUTLINED_FUNCTION_4_13();
  v16(v15);
  OUTLINED_FUNCTION_5_5();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_20(v17, 21);
  v19(v18);
  *(v17 + v0) = 1;
  v20 = v17 + v14;
  *(v20 + 8) = sub_268958724;
  *(v20 + 16) = v13;

  sub_268B38004();
  sub_268B37A04();

  sub_268A6B2CC(v21[0], v21[1], sub_268A6F8C0, v17);

  (*(v7 + 8))(v12, v4);
  OUTLINED_FUNCTION_23();
}

void sub_268A6B2CC(void *a1, char *a2, void (*a3)(id *), uint64_t a4)
{
  v8 = sub_268B37144();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_268B37A54();
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v83);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v73 - v19;
  v20 = swift_allocObject();
  v84 = a3;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268958D98;
  *(v21 + 24) = v20;

  v22 = [a1 device];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  v24 = sub_2689EEF44(*&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_aceServiceHelper], 0);
  if (!v25)
  {

LABEL_14:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v49 = v83;
    v50 = __swift_project_value_buffer(v83, qword_2802CDA10);
    (*(v11 + 16))(v15, v50, v49);
    v51 = sub_268B37A34();
    v52 = sub_268B37EE4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2688BB000, v51, v52, "No device found in intent, returning failure", v53, 2u);
      MEMORY[0x26D6266E0](v53, -1, -1);
    }

    (*(v11 + 8))(v15, v49);
    v54 = sub_268B36EA4();
    v55 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
    v56 = v54;
    v57 = SetSubtitleStateIntentResponse.init(code:userActivity:)(5, v54);
    v85 = v57;
    v84(&v85);

    goto LABEL_29;
  }

  v76 = v24;
  v77 = v25;
  v75 = v11;
  v78 = a4;
  v26 = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_analyticsService], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_analyticsService + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBA0;
  *(inited + 32) = v23;
  v28 = *v26;
  v29 = v23;
  sub_268920C54();
  sub_268949478(0xD000000000000010, 0x8000000268B5B900, v30, inited);

  swift_setDeallocating();
  sub_268ACE718();
  if ([a1 enable] != 2)
  {
    sub_268A6BD28();

    return;
  }

  v74 = v29;
  v31 = [a1 language];
  v32 = v75;
  if (!v31)
  {
    goto LABEL_21;
  }

  v33 = v31;
  sub_2689EF3E4(v31);
  if (!v34)
  {

LABEL_21:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v58 = v83;
    v59 = __swift_project_value_buffer(v83, qword_2802CDA10);
    (*(v32 + 16))(v18, v59, v58);
    v60 = sub_268B37A34();
    v61 = sub_268B37EE4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2688BB000, v60, v61, "No language resolved and user requested to enable subtitles, returning failure", v62, 2u);
      MEMORY[0x26D6266E0](v62, -1, -1);
    }

    (*(v32 + 8))(v18, v58);
    v63 = sub_268B36EA4();
    v64 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
    v65 = v63;
    v66 = SetSubtitleStateIntentResponse.init(code:userActivity:)(5, v63);
    v85 = v66;
    v84(&v85);

    goto LABEL_28;
  }

  v73 = v33;
  v35 = [v33 isActive];
  sub_2688C063C();
  v36 = sub_268B38054();
  v37 = v36;
  if (v35)
  {
    v38 = sub_268B38074();

    if (v38)
    {

      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v39 = v83;
      v40 = __swift_project_value_buffer(v83, qword_2802CDA10);
      v41 = v79;
      (*(v32 + 16))(v79, v40, v39);
      v42 = sub_268B37A34();
      v43 = sub_268B37F04();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v74;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2688BB000, v42, v43, "The requested language was already enabled", v46, 2u);
        MEMORY[0x26D6266E0](v46, -1, -1);
      }

      (*(v32 + 8))(v41, v39);
      v47 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
      v48 = SetSubtitleStateIntentResponse.init(code:userActivity:)(100, 0);
      v85 = v48;
      v84(&v85);

      goto LABEL_28;
    }
  }

  else
  {
  }

  v67 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24];
  v83 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
  v84 = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], v67);
  v68 = v81;
  v69 = v82;
  v70 = v80;
  (*(v81 + 104))(v80, *MEMORY[0x277D5F7D8], v82);
  v71 = swift_allocObject();
  v71[2] = sub_2688E19F8;
  v71[3] = v21;
  v71[4] = a2;
  v72 = a2;
  sub_268B36D34();

  (*(v68 + 8))(v70, v69);
LABEL_28:

LABEL_29:
}

void sub_268A6BC2C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B36ED4();
  v5 = sub_268A6E290(a1);
  v6 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v7 = v4;
  v8 = SetSubtitleStateIntentResponse.init(code:userActivity:)(v5, v4);
  a2();
}

uint64_t sub_268A6BD28()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24]);
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v8;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v2;
  v11 = v0;

  sub_268B36DA4();
  OUTLINED_FUNCTION_23();
}

void sub_268A6BDFC(char a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24]);
    v16 = swift_allocObject();
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = a2;

    v17 = a2;
    sub_268B36D14();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v14, v18, v10);
    v19 = sub_268B37A34();
    v20 = sub_268B37F04();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "The requested language was already disabled", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v22 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
    v23 = SetSubtitleStateIntentResponse.init(code:userActivity:)(102, 0);
    a5();
  }
}

void sub_268A6C08C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B36ED4();
  v5 = sub_268A6E290(a1);
  v6 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v7 = v4;
  v8 = SetSubtitleStateIntentResponse.init(code:userActivity:)(v5, v4);
  a2();
}

void sub_268A6C154(void *a1, uint64_t a2, void (**a3)(uint64_t, id))
{
  v78 = a2;
  v5 = sub_268B371E4();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B36C04();
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v79 = swift_allocObject();
  v80 = a3;
  *(v79 + 16) = a3;
  _Block_copy(a3);
  v77 = a1;
  v21 = [a1 device];
  if (v21)
  {
    v22 = v21;
    v23 = sub_26892D418(v21);
    if (v24)
    {
      v25 = v24;
      v26 = v23;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v13, qword_2802CDA10);
      v28 = v14;
      (*(v14 + 16))(v20, v27, v13);

      v29 = sub_268B37A34();
      v30 = sub_268B37F04();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v81[0] = v32;
        *v31 = 136315138;
        v33 = sub_26892CDB8(v26, v25, v81);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_2688BB000, v29, v30, "Disambiguated Intent with destinationDeviceId: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x26D6266E0](v32, -1, -1);
        MEMORY[0x26D6266E0](v31, -1, -1);
      }

      else
      {
      }

      (*(v28 + 8))(v20, v13);
      v48 = sub_268B1CCB0();
      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v49);

      type metadata accessor for SetSubtitleStateDeviceResolutionResult();
      v46 = sub_268B2CC98(v22);
      v47 = v80;
      v80[2](v80, v46);

LABEL_23:
      v50 = v47;
      goto LABEL_24;
    }
  }

  v34 = (v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState);
  v35 = *(v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState), *(v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState + 24));
  if (!sub_2688C328C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v13, qword_2802CDA10);
    v41 = v14;
    (*(v14 + 16))(v18, v40, v13);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2688BB000, v42, v43, "Media controls are unsupported on this platform", v44, 2u);
      v45 = v44;
      v41 = v14;
      MEMORY[0x26D6266E0](v45, -1, -1);
    }

    (*(v41 + 8))(v18, v13);
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v46 = sub_268B17B04(4);
    v47 = v80;
    v80[2](v80, v46);

    goto LABEL_23;
  }

  v36 = v77;
  v37 = sub_268B1CCB0();
  if (v37)
  {
    if (sub_2688EFD0C(v37))
    {
      v38 = [v36 device];
      if (!v38)
      {
        v69 = *(v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceSelector);
        v70 = v74;
        (*(v74 + 104))(v12, *MEMORY[0x277D5F640], v9);
        v71 = swift_allocObject();
        v72 = v79;
        *(v71 + 16) = sub_26892DC18;
        *(v71 + 24) = v72;

        sub_268B37164();
        sub_2688F4CD4();

        (*(v75 + 8))(v8, v76);
        (*(v70 + 8))(v12, v9);

        v50 = v80;
        goto LABEL_24;
      }

      v39 = v38;
    }

    else
    {
    }
  }

  v51 = [v36 device];
  if (v51)
  {
    v52 = v51;
    sub_268988574(v51);
    if (v53)
    {
    }

    else
    {
      sub_2689E1C9C(0x76745F656C707061, 0xE800000000000000, v52);
    }

    v57 = *(v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceSelector);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_268B3BBA0;
    *(v58 + 32) = v52;
    v59 = swift_allocObject();
    v60 = v79;
    v59[2] = sub_26892DC18;
    v59[3] = v60;
    v59[4] = v36;

    v61 = v52;
    v62 = v36;
    sub_2688F6BEC();

    v50 = v80;
  }

  else
  {
    v54 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    if (sub_268B34D24())
    {
      type metadata accessor for SetSubtitleStateDeviceResolutionResult();
      v55 = sub_268B17B04(3);
      v56 = v80;
      v80[2](v80, v55);

      v50 = v56;
    }

    else
    {
      type metadata accessor for Device();
      sub_268B36C54();
      v63 = sub_268B36C24();
      LOBYTE(v73) = 0;
      sub_268983F14(v63, v64, 0, 0, 0, 0, 0, 0, 0, v73, v74, v75, v76, v77, v78, v79, v80, v81[0], v81[1], v81[2], v81[3]);
      v66 = v65;
      type metadata accessor for SetSubtitleStateDeviceResolutionResult();
      v67 = sub_268B2CC98(v66);
      v68 = v80;
      v80[2](v80, v67);

      v50 = v68;
    }
  }

LABEL_24:
  _Block_release(v50);
}

void sub_268A6D1D4(unint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v4 = 1;
LABEL_9:
    v8 = sub_268B17B04(v4);
    goto LABEL_10;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v4 = 3;
    goto LABEL_9;
  }

  if (sub_2688EFD0C(a1) == 1)
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v9 = sub_268B2CC98(v7);
    a3();

    goto LABEL_11;
  }

  type metadata accessor for SetSubtitleStateDeviceResolutionResult();
  v8 = sub_268B2CCFC(a1);
LABEL_10:
  v9 = v8;
  a3();
LABEL_11:
}

void sub_268A6D2EC(unint64_t a1, __int16 a2, void (*a3)(void))
{
  if ((a2 & 0x100) != 0)
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v9 = 1;
LABEL_12:
    v10 = sub_268B17B04(v9);
    goto LABEL_13;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v9 = 2;
    goto LABEL_12;
  }

  if (sub_2688EFD0C(a1) == 1)
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = v5;
    v7 = sub_268B1CCB0();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    sub_268983D74(v8);

    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v11 = sub_268B2CC98(v6);
    a3();

    goto LABEL_14;
  }

  type metadata accessor for SetSubtitleStateDeviceResolutionResult();
  v10 = sub_268B2CCFC(a1);
LABEL_13:
  v11 = v10;
  a3();
LABEL_14:
}

void sub_268A6D450()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  OUTLINED_FUNCTION_0_3();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v1;
  v14 = qword_2802A5028;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v15 = OUTLINED_FUNCTION_4_13();
  v16(v15);
  OUTLINED_FUNCTION_5_5();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_20(v17, 41);
  v19(v18);
  *(v17 + v0) = 0;
  v20 = v17 + v14;
  *(v20 + 8) = sub_2689969C0;
  *(v20 + 16) = v13;

  sub_268B38004();
  sub_268B37A04();

  sub_268A6D634(v21[0], v21[1], sub_268A6F8C0, v17);

  (*(v7 + 8))(v12, v4);
  OUTLINED_FUNCTION_23();
}

void sub_268A6D634(void *a1, char *a2, void (*a3)(id *), uint64_t a4)
{
  v84 = a2;
  v95 = a1;
  v6 = sub_268B37144();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v86 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v83 - v11;
  v12 = sub_268B37A54();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v90 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v83 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - v22;
  v24 = swift_allocObject();
  v91 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268958D98;
  *(v25 + 24) = v24;
  v92 = v25;
  v26 = qword_2802A4F30;
  v94 = a4;

  v93 = v24;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v28 = v13[2];
  v28(v23, v27, v12);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "Resolving language for set subtitle state", v31, 2u);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v32 = v13[1];
  v32(v23, v12);
  v33 = v95;
  v34 = [v95 language];
  if (v34)
  {
    v35 = v34;
    sub_2689EF3E4(v34);
    if (v36)
    {

      v28(v21, v27, v12);
      v37 = sub_268B37A34();
      v38 = sub_268B37F04();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2688BB000, v37, v38, "Language already found in intent, returning it", v39, 2u);
        MEMORY[0x26D6266E0](v39, -1, -1);
      }

      v32(v21, v12);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v40 = sub_268B2F5B4(v35);
      v96 = v40;
      v91(&v96);

      goto LABEL_27;
    }

    v33 = v95;
  }

  if ([v33 enable] == 2)
  {
    v41 = [v33 device];
    v42 = v90;
    if (v41)
    {
      v43 = v41;
      v95 = sub_26892D418(v41);
      if (v44)
      {
        v90 = v44;
        v91 = v43;
        v45 = [v33 type];
        v46 = v85;
        sub_268A7517C(v45, v85);
        v47 = [v33 language];
        if (v47 && (sub_268A6F50C(v47, &selRef_languageIdentifier), v48))
        {

          v49 = [v33 language];
          if (!v49)
          {
            goto LABEL_25;
          }

          v50 = &selRef_languageIdentifier;
        }

        else
        {
          v49 = [v33 language];
          if (!v49)
          {
            goto LABEL_25;
          }

          v50 = &selRef_languageTag;
        }

        v56 = sub_268A6F50C(v49, v50);
        v58 = v57;
        if (v57)
        {
          v59 = v84;
          v89 = v56;
          v61 = *&v84[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24];
          v60 = *&v84[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
          __swift_project_boxed_opaque_existential_1(&v84[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], v61);
          v62 = v46;
          v64 = v86;
          v63 = v87;
          v65 = v88;
          (*(v87 + 104))(v86, *MEMORY[0x277D5F7D8], v88);
          v66 = swift_allocObject();
          v67 = v92;
          v66[2] = sub_268958EA4;
          v66[3] = v67;
          v66[4] = v59;
          v68 = v59;
          sub_2689722C8(v89, v58, v64, v95, v90, v62, sub_268A6FBD0, v66, v61, v60);

          (*(v63 + 8))(v64, v65);
          v69 = v62;
LABEL_26:
          sub_2688C058C(v69, &unk_2802A7360, &qword_268B3F860);

LABEL_27:

          return;
        }

LABEL_25:
        v70 = v84;
        v71 = *&v84[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24];
        v72 = *&v84[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v84[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], v71);
        v74 = v86;
        v73 = v87;
        v75 = v88;
        (*(v87 + 104))(v86, *MEMORY[0x277D5F7D8], v88);
        v76 = swift_allocObject();
        v77 = v92;
        v76[2] = sub_268958EA4;
        v76[3] = v77;
        v76[4] = v70;
        v78 = v70;
        sub_268973E68(v74, v95, v90, v46, sub_268A6FBC4, v76, v71, v72);

        (*(v73 + 8))(v74, v75);
        v69 = v46;
        goto LABEL_26;
      }
    }

    v28(v42, v27, v12);
    v79 = sub_268B37A34();
    v80 = sub_268B37EE4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_2688BB000, v79, v80, "No device found in intent, returning failure", v81, 2u);
      MEMORY[0x26D6266E0](v81, -1, -1);
    }

    v32(v42, v12);
    type metadata accessor for SetSubtitleStateLanguageResolutionResult();
    v55 = sub_268B1CD38(3);
  }

  else
  {

    v51 = v89;
    v28(v89, v27, v12);
    v52 = sub_268B37A34();
    v53 = sub_268B37EC4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "Did not request to enable subtitles", v54, 2u);
      MEMORY[0x26D6266E0](v54, -1, -1);
    }

    v32(v51, v12);
    type metadata accessor for SetSubtitleStateLanguageResolutionResult();
    v55 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v82 = v55;
  v96 = v55;
  v91(&v96);
}

void sub_268A6DF88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_268A6E420();
  v5 = v4;
  a3();
}

void sub_268A6DFDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_268A6E420();
  v5 = v4;
  a3();
}

uint64_t sub_268A6E064(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_268A6E10C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v5 = SetSubtitleStateIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268A6E178(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v4 = SetSubtitleStateIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268A6E204(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_268A6E290(uint64_t a1)
{
  v2 = sub_268B36F24();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_26893B66C(a1, &v22 - v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 4;
  }

  (*(v5 + 32))(v13, v19, v2);
  sub_268B36EC4();
  v20 = *(v5 + 8);
  v20(v10, v2);
  v20(v13, v2);
  return 5;
}

void sub_268A6E420()
{
  OUTLINED_FUNCTION_26();
  LODWORD(v189) = v1;
  v3 = v2;
  v196 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_20_0();
  v193 = (v7 - v8);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v192 = (&v183 - v10);
  v11 = sub_268B372A4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v195 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v186 = (v16 - v17);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v188 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v190 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v194 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v191 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  v187 = &v183 - v27;
  v28 = sub_268B37A54();
  v29 = OUTLINED_FUNCTION_1(v28);
  v197 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v183 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v183 - v40);
  MEMORY[0x28223BE20](v39);
  v43 = MEMORY[0x28223BE20](&v183 - v42);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v183 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v183 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v56 = &v183 - v55;
  switch(v3)
  {
    case 1:
      v192 = v51;
      v90 = v53;
      v185 = v52;
      if (qword_2802A4F30 != -1)
      {
        v50 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_6_32(v50, qword_2802CDA10);
      v187 = v91;
      v191 = v92;
      v189 = v93;
      v93(v38);
      v94 = v196;

      v95 = sub_268B37A34();
      v96 = sub_268B37F04();
      if (OUTLINED_FUNCTION_35_11(v96))
      {
        v97 = OUTLINED_FUNCTION_172_0();
        v98 = OUTLINED_FUNCTION_173_0();
        v198 = v98;
        *v97 = 136315138;
        v99 = OUTLINED_FUNCTION_31_15();
        v100 = MEMORY[0x26D6256F0](v99);
        v102 = sub_26892CDB8(v100, v101, &v198);

        *(v97 + 4) = v102;
        v94 = v196;
        _os_log_impl(&dword_2688BB000, v95, v0, "Received .matched response with languages: %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v98);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v69 = *(v197 + 8);
      v69(v38, v28);
      v103 = v193;
      v104 = *(v94 + 16);
      if (v104 != 1)
      {
        v105 = v90;
        if (!v104)
        {
          OUTLINED_FUNCTION_9_22();
          v106();
          v107 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_39_1();
          if (os_log_type_enabled(v107, v108))
          {
            *OUTLINED_FUNCTION_14() = 0;
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v109, v110, "No languages matched");
            OUTLINED_FUNCTION_12();
          }

          OUTLINED_FUNCTION_10_23();
          v79 = v192;
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      sub_2689A9A74(v94, v193);
      if (__swift_getEnumTagSinglePayload(v103, 1, v11) == 1)
      {
        sub_2688C058C(v103, &qword_2802A6550, &qword_268B3F880);
        v105 = v90;
LABEL_36:
        v111 = v105;
        OUTLINED_FUNCTION_9_22();
        v112();

        v113 = sub_268B37A34();
        v114 = sub_268B37F04();
        v115 = OUTLINED_FUNCTION_35_11(v114);
        v184 = v11;
        if (v115)
        {
          v38 = OUTLINED_FUNCTION_172_0();
          v116 = OUTLINED_FUNCTION_173_0();
          v198 = v116;
          *v38 = 136315138;
          v117 = MEMORY[0x26D6256F0](v196, v11);
          v11 = v69;
          v119 = sub_26892CDB8(v117, v118, &v198);

          *(v38 + 4) = v119;
          OUTLINED_FUNCTION_34_10(&dword_2688BB000, v120, v121, "Disambiguating languages: %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v116);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        v122 = OUTLINED_FUNCTION_8_26();
        v69(v122, v28);
        v198 = MEMORY[0x277D84F90];
        sub_268B38234();
        v139 = type metadata accessor for LanguageOption();
        v140 = v194;
        OUTLINED_FUNCTION_5_22(v139);
        v141 = v190;
        do
        {
          v142 = v196;
          (v196)(v140, v38, v111);
          v142(v141, v140, v111);
          sub_2689EEFA0(v141);
          (*v11)(v140, v111);
          sub_268B38214();
          v143 = v198[2];
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          v38 += v195;
          --v104;
        }

        while (v104);
        goto LABEL_46;
      }

      v196 = v69;
      v157 = v195;
      v158 = v188;
      (*(v195 + 32))(v188, v103, v11);
      v159 = v185;
      OUTLINED_FUNCTION_9_22();
      v160();
      v161 = v186;
      v193 = *(v157 + 16);
      (v193)(v186, v158, v11);
      v162 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = OUTLINED_FUNCTION_172_0();
        v192 = OUTLINED_FUNCTION_173_0();
        v198 = v192;
        *v164 = 136315138;
        sub_268A6FAB4();
        LODWORD(v191) = v159;
        v165 = sub_268B38404();
        v166 = v161;
        v168 = v167;
        v169 = *(v157 + 8);
        (v169)(v166, v11);
        v170 = v169;
        v171 = sub_26892CDB8(v165, v168, &v198);

        *(v164 + 4) = v171;
        OUTLINED_FUNCTION_33_15(&dword_2688BB000, "Resolving successfully with: %s", v191);
        __swift_destroy_boxed_opaque_existential_0Tm(v192);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_10_23();
        v172 = v185;
      }

      else
      {

        v178 = *(v157 + 8);
        v179 = OUTLINED_FUNCTION_31_15();
        v178(v179);
        v170 = v178;
        v172 = OUTLINED_FUNCTION_8_26();
      }

      v196(v172, v28);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      type metadata accessor for LanguageOption();
      v180 = v194;
      v181 = v188;
      (v193)(v194, v188, v11);
      v182 = sub_2689EEFA0(v180);
      sub_268B2F5B4(v182);

      (v170)(v181, v11);
      goto LABEL_47;
    case 2:
      if (qword_2802A4F30 != -1)
      {
        v50 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_6_32(v50, qword_2802CDA10);
      v80(v56);
      v81 = sub_268B37A34();
      v82 = sub_268B37EE4();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = OUTLINED_FUNCTION_14();
        *v83 = 0;
        _os_log_impl(&dword_2688BB000, v81, v82, "Received failure response when resolving language", v83, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v197 + 8))(v56, v28);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v84 = 2;
      goto LABEL_33;
    case 3:
      if (qword_2802A4F30 != -1)
      {
        v50 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_6_32(v50, qword_2802CDA10);
      v85(v49);
      v86 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v86, v87))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v88, v89, "Returning .alreadyEnabled response code");
        OUTLINED_FUNCTION_12();
      }

      (*(v197 + 8))(v49, v28);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v84 = 4;
      goto LABEL_33;
    default:
      v193 = v50;
      v183 = v54;
      if (qword_2802A4F30 != -1)
      {
        v50 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_6_32(v50, qword_2802CDA10);
      v185 = v57;
      v186 = v58;
      v188 = v59;
      v58(v46);
      v60 = v196;

      v61 = sub_268B37A34();
      v62 = sub_268B37F04();
      sub_268A23950(v60, 0);
      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_172_0();
        v64 = OUTLINED_FUNCTION_173_0();
        v198 = v64;
        *v63 = 136315138;
        v65 = OUTLINED_FUNCTION_31_15();
        v66 = MEMORY[0x26D6256F0](v65);
        v68 = sub_26892CDB8(v66, v67, &v198);

        *(v63 + 4) = v68;
        v60 = v196;
        _os_log_impl(&dword_2688BB000, v61, v62, "Received .allAvailable response with languages: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v69 = *(v197 + 8);
      v69(v46, v28);
      v71 = v191;
      v70 = v192;
      v72 = *(v60 + 2);
      v73 = v193;
      if (!v72)
      {
        goto LABEL_10;
      }

      if (v72 == 1)
      {
        sub_2689A9A74(v60, v192);
        if (__swift_getEnumTagSinglePayload(v70, 1, v11) != 1)
        {
          v144 = v195;
          v145 = v187;
          (*(v195 + 32))(v187, v70, v11);
          v146 = v183;
          OUTLINED_FUNCTION_18_15();
          v147();
          v196 = *(v144 + 16);
          (v196)(v71, v145, v11);
          v148 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_39_1();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = OUTLINED_FUNCTION_172_0();
            v193 = OUTLINED_FUNCTION_173_0();
            v198 = v193;
            *v150 = 136315138;
            sub_268A6FAB4();
            LODWORD(v192) = v146;
            v151 = sub_268B38404();
            v153 = v152;
            v154 = OUTLINED_FUNCTION_17_22();
            v155(v154);
            v156 = sub_26892CDB8(v151, v153, &v198);
            v145 = v187;

            *(v150 + 4) = v156;
            OUTLINED_FUNCTION_33_15(&dword_2688BB000, "Resolving successfully with: %s", v192);
            __swift_destroy_boxed_opaque_existential_0Tm(v193);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          else
          {

            v173 = OUTLINED_FUNCTION_17_22();
            v174(v173);
          }

          OUTLINED_FUNCTION_10_23();
          v69(v183, v28);
          type metadata accessor for SetSubtitleStateLanguageResolutionResult();
          type metadata accessor for LanguageOption();
          v175 = v194;
          (v196)(v194, v145, v11);
          v176 = sub_2689EEFA0(v175);
          sub_268B2F5B4(v176);

          v177 = OUTLINED_FUNCTION_31_15();
          (v195)(v177);
          goto LABEL_47;
        }

        sub_2688C058C(v70, &qword_2802A6550, &qword_268B3F880);
        v73 = v193;
        if ((v189 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_39:
        v193 = v69;
        OUTLINED_FUNCTION_18_15();
        v123();

        v124 = sub_268B37A34();
        v125 = sub_268B37F04();
        sub_268A23950(v60, 0);
        v126 = os_log_type_enabled(v124, v125);
        v184 = v11;
        if (v126)
        {
          v71 = OUTLINED_FUNCTION_172_0();
          v127 = OUTLINED_FUNCTION_173_0();
          v198 = v127;
          *v71 = 136315138;
          v128 = MEMORY[0x26D6256F0](v196, v11);
          v130 = sub_26892CDB8(v128, v129, &v198);

          *(v71 + 4) = v130;
          OUTLINED_FUNCTION_34_10(&dword_2688BB000, v131, v132, "Disambiguating languages: %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v127);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        v133 = OUTLINED_FUNCTION_8_26();
        (v193)(v133, v28);
        v198 = MEMORY[0x277D84F90];
        sub_268B38234();
        v134 = type metadata accessor for LanguageOption();
        OUTLINED_FUNCTION_5_22(v134);
        v135 = v194;
        v136 = v190;
        do
        {
          v137 = v196;
          (v196)(v135, v71, v73);
          v137(v136, v135, v73);
          sub_2689EEFA0(v136);
          (*v11)(v135, v73);
          sub_268B38214();
          v138 = v198[2];
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          v71 += v195;
          --v72;
        }

        while (v72);
LABEL_46:
        type metadata accessor for SetSubtitleStateLanguageResolutionResult();
        sub_268B2F618(v198);
        OUTLINED_FUNCTION_129();

        goto LABEL_47;
      }

      if (v189)
      {
        goto LABEL_39;
      }

LABEL_10:
      OUTLINED_FUNCTION_18_15();
      v74();
      v75 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v75, v76))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v77, v78, "No languages matched");
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_10_23();
      v79 = v41;
LABEL_32:
      v69(v79, v28);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v84 = 1;
LABEL_33:
      sub_268B1CD38(v84);
LABEL_47:
      OUTLINED_FUNCTION_23();
      return;
  }
}

id SetSubtitleStateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSubtitleStateIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268A6F50C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_268B37BF4();

  return v4;
}

id sub_268A6F578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v37[3] = sub_268B36C54();
  v37[4] = MEMORY[0x277D5F680];
  v37[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v36[3] = v10;
  v36[4] = &off_2879539D0;
  v36[0] = a4;
  v11 = type metadata accessor for SetSubtitleStateIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v36, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v35[3] = v10;
  v35[4] = &off_2879539D0;
  v35[0] = v18;
  sub_26890C900(v37, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController]);
  sub_26890C900(a3, v34);
  sub_26890C900(v35, &v32);
  sub_26890C900(a5, v31);
  sub_268B376A4();
  v19 = sub_268B37694();
  v20 = v33;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = sub_26892D53C(a2, v34, *v24, v31, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceSelector] = v26;
  sub_26890C900(v35, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_analyticsService]);
  sub_26890C900(a3, v34);
  sub_26890C900(a5, &v32);
  type metadata accessor for AceServiceHelper();
  v27 = swift_allocObject();
  sub_2688E6514(v34, v27 + 16);
  sub_2688E6514(&v32, v27 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_aceServiceHelper] = v27;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState]);
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return v28;
}

uint64_t sub_268A6F88C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268A6F8EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

unint64_t sub_268A6FAB4()
{
  result = qword_2802A7370;
  if (!qword_2802A7370)
  {
    sub_268B372A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7370);
  }

  return result;
}

uint64_t sub_268A6FB0C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_268A6FB68(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_268A6C08C(a1, *(v1 + 16));
}

uint64_t sub_268A6FB74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_268A6FBAC(unint64_t a1, __int16 a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_268A6D2EC(a1, a2 & 0x1FF, *(v2 + 16));
}

void sub_268A6FBC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_268A6DFDC(a1, a2, *(v2 + 16));
}

void sub_268A6FBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_268A6DF88(a1, a2, *(v2 + 16));
}

void sub_268A6FBDC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_268A6BC2C(a1, *(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t result)
{
  v5 = *(v1 + 16);
  v4 = v1 + 16;
  *(v3 - 104) = v5;
  *(v3 - 96) = result;
  v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  *(v3 - 112) = *(v4 + 56);
  v7 = *(v3 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_32(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(*(v3 - 96) + 16);
  return result;
}

void OUTLINED_FUNCTION_9_22()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 144);
  v3 = *(v0 - 160);
}

uint64_t OUTLINED_FUNCTION_17_22()
{
  result = v1;
  *(v2 - 112) = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_18_15()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 184);
  v3 = *(v0 - 168);
}

void OUTLINED_FUNCTION_33_15(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

void OUTLINED_FUNCTION_34_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_35_11(os_log_type_t a1)
{
  sub_268A23950(v2, 1u);

  return os_log_type_enabled(v1, a1);
}

id sub_268A6FD70()
{
  if (qword_2802A4E50 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD980;
  qword_2802CDA58 = qword_2802CD980;

  return v1;
}

void sub_268A6FDD4()
{
  OUTLINED_FUNCTION_26();
  v116 = v0;
  v117 = v1;
  v118 = v2;
  v114 = v4;
  v115 = v3;
  v123 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v121 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_78();
  v109 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v112 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v120 = &v105 - v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v108 = &v105 - v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_78();
  v111 = v23;
  OUTLINED_FUNCTION_9();
  v113 = sub_268B34E24();
  v24 = OUTLINED_FUNCTION_1(v113);
  v122 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v119 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_78();
  v110 = v30;
  OUTLINED_FUNCTION_9();
  v31 = sub_268B37A54();
  v32 = OUTLINED_FUNCTION_1(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v32);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v107 = &v105 - v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  v43 = &v105 - v42;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v44 = __swift_project_value_buffer(v31, qword_2802CDA10);
  v45 = *(v34 + 16);
  v45(v43, v44, v31);
  v46 = sub_268B37A34();
  v47 = sub_268B37ED4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_14();
    v106 = v31;
    *v48 = 0;
    _os_log_impl(&dword_2688BB000, v46, v47, "SetShuffleStateHandleIntentStrategy.makeIntentHandledResponse()", v48, 2u);
    v31 = v106;
    OUTLINED_FUNCTION_12();
  }

  v49 = *(v34 + 8);
  v49(v43, v31);
  v50 = sub_268B18100();
  if (!v50)
  {
    goto LABEL_11;
  }

  if (!sub_2688EFD0C(v50))
  {

LABEL_11:
    v45(v39, v44, v31);
    v53 = sub_268B37A34();
    v54 = sub_268B37EE4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_14();
      *v55 = 0;
      _os_log_impl(&dword_2688BB000, v53, v54, "Did not receive intent response for shuffle request or devices not populated!", v55, 2u);
      OUTLINED_FUNCTION_12();
    }

    v49(v39, v31);
    v56 = sub_268B36E84();
    v57 = v113;
    if (!v58)
    {
      sub_268947F08();
    }

    v114 = v56;
    OUTLINED_FUNCTION_9_23();
    (*(v122 + 104))(v119, *MEMORY[0x277D5BC00], v57);
    v59 = sub_268B350F4();
    v60 = v120;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v59);
    v61 = *MEMORY[0x277D5B908];
    v62 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v62);
    v64 = v121;
    (*(v63 + 104))(v121, v61, v62);
    OUTLINED_FUNCTION_15_21(v64);
    v65.isa = v53->isa;
    v66 = v60;
    v67 = v112;
    sub_2688F1FA4(v66, v112, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v67, 1, v59) == 1)
    {
      sub_2688C058C(v67, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v67, v59);
    }

    v68 = v119;
    v69 = v121;
    sub_2688E3F68();

    sub_2688C058C(v69, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v120, &unk_2802A57B0, &unk_268B3CE00);
    (*(v122 + 8))(v68, v57);
    OUTLINED_FUNCTION_9_23();
    sub_2688C2ECC();
    v70 = OUTLINED_FUNCTION_26_1();
    v72 = v70;
    goto LABEL_19;
  }

  v51 = [v123 shuffleState];
  if (v51 == 2)
  {
    v52 = 0;
    goto LABEL_21;
  }

  if (v51 != 1)
  {

    v87 = v107;
    v45(v107, v44, v31);
    v88 = sub_268B37A34();
    v89 = sub_268B37EE4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_14();
      *v90 = 0;
      _os_log_impl(&dword_2688BB000, v88, v89, "Unexpected shuffle state found", v90, 2u);
      OUTLINED_FUNCTION_12();
    }

    v49(v87, v31);
    sub_268B36E84();
    v91 = v113;
    v92 = v109;
    if (!v93)
    {
      sub_268947F08();
    }

    v94 = v116;
    v95 = __swift_project_boxed_opaque_existential_1(v116 + 13, v116[16]);
    (*(v122 + 104))(v110, *MEMORY[0x277D5BC00], v91);
    v96 = sub_268B350F4();
    v97 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v96);
    v98 = *MEMORY[0x277D5B908];
    v99 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v99);
    (*(v100 + 104))(v92, v98, v99);
    OUTLINED_FUNCTION_15_21(v92);
    v101 = *v95;
    v102 = v97;
    v103 = v108;
    sub_2688F1FA4(v102, v108, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v103, 1, v96) == 1)
    {
      sub_2688C058C(v103, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v96 - 8) + 8))(v103, v96);
    }

    v104 = v110;
    sub_2688E3F68();

    sub_2688C058C(v92, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v111, &unk_2802A57B0, &unk_268B3CE00);
    (*(v122 + 8))(v104, v113);
    __swift_project_boxed_opaque_existential_1(v94 + 13, v94[16]);
    sub_2688C2ECC();
    v70 = OUTLINED_FUNCTION_26_1();
    v72 = v70;
LABEL_19:
    OUTLINED_FUNCTION_7_27(v70, v71);

    v73 = OUTLINED_FUNCTION_26_1();
    v75 = OUTLINED_FUNCTION_13_16(v73, v74);
    v117(v75);
    sub_2688C058C(v127, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_25;
  }

  v52 = 1;
LABEL_21:
  v76 = v116;
  v77 = v116[6];
  __swift_project_boxed_opaque_existential_1(v116 + 2, v116[5]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_268B3BBA0;
    *(v78 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
  }

  LOWORD(v124[0]) = 0;
  BYTE2(v124[0]) = 0;
  v124[1] = 0;
  v124[2] = 0;
  v124[3] = 1;
  memset(&v124[4], 0, 60);
  BYTE4(v124[11]) = v52;
  memcpy(v125, &v124[1], 0x51uLL);
  sub_2688C058C(v125, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v124[1]) = 0;
  memset(&v124[2], 0, 72);
  LOBYTE(v124[11]) = 1;
  sub_268AE4144();

  v79 = v76[7];
  memcpy(v127, v124, 0x5DuLL);
  v80 = swift_allocObject();
  v81 = v123;
  v80[2] = v76;
  v80[3] = v81;
  v83 = v114;
  v82 = v115;
  v80[4] = v114;
  v80[5] = v82;
  v84 = v118;
  v80[6] = v117;
  v80[7] = v84;
  v80[8] = v78;

  v85 = v81;
  v86 = v83;

  sub_268AB6018(v127, sub_268A75048, v80);

  memcpy(v126, v124, 0x5DuLL);
  sub_268A7505C(v126);
LABEL_25:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A7092C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v63 = a6;
  v64 = a7;
  v62 = a5;
  v57 = a4;
  v65 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v55 - v18;
  v61 = sub_268B34E24();
  v59 = *(v61 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v55 - v30);
  sub_2688F1FA4(a1, &v55 - v30, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    v33 = sub_268B36E84();
    if (v34)
    {
      v57 = v33;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v57 = v41;
    }

    v42 = v56;
    v43 = __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    (*(v59 + 104))(v58, *MEMORY[0x277D5BC00], v61);
    v44 = sub_268B350F4();
    v45 = v60;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v44);
    v46 = *MEMORY[0x277D5B8E0];
    v47 = sub_268B34B94();
    (*(*(v47 - 8) + 104))(v42, v46, v47);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v47);
    v48 = *v43;
    sub_2688F1FA4(v45, v17, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v17, 1, v44) == 1)
    {
      sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v44 - 8) + 8))(v17, v44);
    }

    v49 = v58;
    sub_2688E3F68();

    sub_2688C058C(v42, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v60, &unk_2802A57B0, &unk_268B3CE00);
    (*(v59 + 8))(v49, v61);
    v50 = __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    sub_2688C2ECC();
    v51 = swift_allocError();
    *v52 = 89;
    v53 = *v50;
    sub_26894B450();

    v66[0] = v32;
    v67 = 1;
    v54 = v32;
    v63(v66);

    return sub_2688C058C(v66, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v35 = v57;
    sub_2689186C8(v31, v27);
    v36 = a2[22];
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v37 = sub_268B36FA4();
    sub_2688F1FA4(v27, v25, &unk_2802A56E0, &unk_268B3CDF0);
    v38 = *&v25[*(v21 + 48)];
    if (v37)
    {
      sub_268A70FAC();
    }

    else
    {
      sub_268A71C14(v25, *&v25[*(v21 + 48)], v65, v35, v62, v55, v63, v64);
    }

    sub_2688C058C(v27, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = sub_268B350F4();
    return (*(*(v39 - 8) + 8))(v25, v39);
  }
}

void sub_268A70FAC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v78 = v2;
  v79 = v3;
  v77 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B35044();
  v12 = OUTLINED_FUNCTION_1(v11);
  v81 = v13;
  v82 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v80 = v17 - v16;
  OUTLINED_FUNCTION_9();
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v28 = OUTLINED_FUNCTION_1(v27);
  *&v74 = v29;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  *(&v74 + 1) = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_78();
  v83 = v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  v37 = sub_268B350F4();
  v75 = *(v37 - 8);
  v76 = v37;
  (*(v75 + 16))(v36, v10);
  *&v36[*(v27 + 48)] = v8;
  v38 = qword_2802A4F30;
  v39 = v8;
  if (v38 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v18, qword_2802CDA10);
  (*(v21 + 16))(v26, v40, v18);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    v73 = v27;
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "SetShuffleStateHandleIntentStrategy#intentHandledResponse...", v43, 2u);
    v27 = v73;
    OUTLINED_FUNCTION_12();
  }

  (*(v21 + 8))(v26, v18);
  sub_26890C900((v1 + 33), v84);
  v70 = v86;
  v71 = v85;
  v73 = __swift_project_boxed_opaque_existential_1(v84, v85);
  v44 = v83;
  sub_2688F1FA4(v36, v83, &unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v44 + *(v27 + 48));
  if (sub_268B18100())
  {
    v45 = v1[38];
    sub_268921344();
    v47 = v46;

    if (v47[2])
    {
      v48 = v47[5];
      v68 = v47[4];
      v69 = v48;
    }

    else
    {
      OUTLINED_FUNCTION_16_27();
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_27();
  }

  v49 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  if (v49)
  {
    v50 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v67) = [v49 BOOLForKey_];
  }

  else
  {
    HIDWORD(v67) = 0;
  }

  v51 = v80;
  sub_268A82B50(v6, v80);
  v52 = sub_2689F0948();
  v53 = *(&v74 + 1);
  sub_2688F1FA4(v36, *(&v74 + 1), &unk_2802A56E0, &unk_268B3CDF0);
  v54 = (*(v74 + 80) + 40) & ~*(v74 + 80);
  v55 = v36;
  v56 = v6;
  v57 = (v31 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v58[2] = v56;
  v58[3] = v1;
  v58[4] = v78;
  sub_2689186C8(v53, v58 + v54);
  v59 = (v58 + v57);
  v60 = v79;
  *v59 = v77;
  v59[1] = v60;
  v61 = v56;

  LOBYTE(v65) = v52 & 1;
  v62 = (v1 + 23);
  v63 = v83;
  v64 = v72;
  sub_268A83648(v83, v72, v68, v69, HIDWORD(v67), MEMORY[0x277D84F90], v51, v62, v65, sub_268A74F34, v58, v71, v70, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);

  (*(v81 + 8))(v51, v82);
  sub_2688C058C(v55, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v75 + 8))(v63, v76);
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A71550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
    _os_log_impl(&dword_2688BB000, v32, v33, "SetShuffleStateHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
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
  sub_2688E3F68();

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
    _os_log_impl(&dword_2688BB000, v50, v51, "SetShuffleStateHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

uint64_t sub_268A720B8(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, unint64_t a9)
{
  v96 = a8;
  v97 = a7;
  v100 = a6;
  v95 = a5;
  v102 = a3;
  LODWORD(v92) = a2;
  v98 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v85 - v12;
  v91 = sub_268B35044();
  v89 = *(v91 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v94 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v86 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = &v85 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - v36;
  v38 = sub_268B34E24();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v85 - v44;
  v101 = a4;
  v99 = v39;
  if (v92)
  {
    v46 = v20;
    v93 = v38;
    v47 = v100;
    sub_268B36E84();
    if (!v48)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v69 = v99;
    v70 = v87;
    v71 = v86;
    v72 = __swift_project_boxed_opaque_existential_1(v101 + 13, v101[16]);
    (*(v69 + 104))(v43, *MEMORY[0x277D5BC00], v93);
    sub_2688F1FA4(v47, v24, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    (*(v74 + 32))(v70, v24, v73);
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v73);
    v75 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v75);
    v76 = *v72;
    sub_2688F1FA4(v70, v71, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v71, 1, v73) == 1)
    {
      sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v74 + 8))(v71, v73);
    }

    v77 = v94;
    sub_2688E3F68();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
    (*(v99 + 8))(v43, v93);
    v78 = __swift_project_boxed_opaque_existential_1(v101 + 13, v101[16]);
    sub_2688C2ECC();
    v79 = swift_allocError();
    *v80 = 88;
    v81 = *v78;
    sub_26894B450();

    v105[0] = v98;
    v108 = 1;
    v82 = v98;
  }

  else
  {
    v94 = a9;
    sub_268947F08();
    v87 = v49;
    v92 = v50;
    v51 = __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    (*(v39 + 104))(v45, *MEMORY[0x277D5BC10], v38);
    sub_2688F1FA4(v100, v26, &unk_2802A56E0, &unk_268B3CDF0);

    v52 = sub_268B350F4();
    v53 = *(v52 - 8);
    (*(v53 + 32))(v37, v26, v52);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v52);
    v54 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v54);
    v55 = *v51;
    sub_2688F1FA4(v37, v35, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v35, 1, v52) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v53 + 8))(v35, v52);
    }

    v56 = v102;
    v57 = v93;
    sub_2688E3F68();

    sub_2688C058C(v57, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    (*(v99 + 8))(v45, v38);
    v58 = v101;
    v59 = *__swift_project_boxed_opaque_existential_1(v101 + 13, v101[16]);
    sub_26894B450();
    v60 = __swift_project_boxed_opaque_existential_1(v58 + 13, v58[16]);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v105[0] = v98;
    v61 = *v60;

    sub_268948494(v105);
    sub_2688C058C(v105, &byte_2802A6450, &byte_268B3BE10);
    v62 = v88;
    sub_268A82B50(v56, v88);
    if (v94 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v84 = sub_268B38294();

      v94 = v84;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v106 = sub_268B354F4();
    v107 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v105);
    v63 = 0;
    if (sub_2689F0948())
    {
      v63 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v64 = sub_268B38064();
      [v63 setMinimumAutoDismissalTimeInMs_];

      [v63 setPremptivelyResumeMedia_];
    }

    v65 = v58[6];
    __swift_project_boxed_opaque_existential_1(v58 + 2, v58[5]);
    sub_268B34CA4();
    v66 = v89;
    v67 = v90;
    v68 = v91;
    (*(v89 + 16))(v90, v62, v91);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    sub_268B34EF4();

    sub_2688C058C(v103, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v67, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v66 + 8))(v62, v68);
    v108 = 0;
  }

  v97(v105);
  return sub_2688C058C(v105, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A72CF8()
{
  OUTLINED_FUNCTION_26();
  v122 = v0;
  v123 = v1;
  v124 = v3;
  v125 = v2;
  v126 = v4;
  v121 = v5;
  v6 = sub_268B367A4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v113 = v8;
  v114 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v112 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v110 = &v109 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v109 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_78();
  v117 = v24;
  OUTLINED_FUNCTION_9();
  v118 = sub_268B34E24();
  v25 = OUTLINED_FUNCTION_1(v118);
  v116 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v115 = v30 - v29;
  OUTLINED_FUNCTION_9();
  v31 = sub_268B37A54();
  v32 = OUTLINED_FUNCTION_1(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v120 = v37;
  OUTLINED_FUNCTION_8();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v109 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v109 - v42;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v44 = __swift_project_value_buffer(v31, qword_2802CDA10);
  v119 = *(v34 + 16);
  v119(v43, v44, v31);
  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_14();
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v45, v46, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse()", v47, 2u);
    OUTLINED_FUNCTION_12();
  }

  v50 = *(v34 + 8);
  v49 = v34 + 8;
  v48 = v50;
  v50(v43, v31);
  v51 = v125;
  v52 = [v125 shuffleState];
  if (v52 == 2)
  {
    v118 = v49;
    v54 = 0;
    v53 = v126;
    goto LABEL_9;
  }

  v53 = v126;
  if (v52 == 1)
  {
    v118 = v49;
    v54 = 1;
LABEL_9:
    v55 = sub_268B36E84();
    v111 = v48;
    if (v56)
    {
      v110 = v56;
      v115 = v55;
    }

    else
    {
      v71 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
      swift_beginAccess();
      v129[0] = *(v53 + v71);
      sub_268B38404();
      sub_268947F08();
      v115 = v72;
      v110 = v73;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000268B572E0;
    v75 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
    swift_beginAccess();
    v116 = v75;
    v129[0] = *(v53 + v75);
    sub_268B38404();
    v76 = sub_268B36E94();
    v78 = v77;

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v76;
    *(inited + 56) = v78;
    v117 = sub_268B37B84();
    sub_268AC65EC(v128, v54);
    v79 = sub_268B18100();
    v80 = v120;
    if (v79)
    {
      if (sub_2688EFD0C(v79))
      {
        memcpy(v129, &v128[1], 0x51uLL);
        sub_2688C058C(v129, &qword_2802A5C88, qword_268B418C0);
        LODWORD(v128[1]) = 0;
        memset(&v128[2], 0, 72);
        LOBYTE(v128[11]) = 1;
        sub_268AE416C();
      }
    }

    sub_268B36754();
    v81 = sub_268B36734();
    if (!v81)
    {
      v81 = sub_268B36744();
    }

    v82 = v81;
    v119(v80, v44, v31);

    v83 = sub_268B37A34();
    v84 = sub_268B37ED4();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v129[0] = v86;
      *v85 = 136315138;
      sub_268B36714();
      v87 = v112;
      sub_268B36B14();

      v88 = sub_268B36784();
      v90 = v89;
      (*(v113 + 8))(v87, v114);
      v91 = sub_26892CDB8(v88, v90, v129);
      v51 = v125;

      *(v85 + 4) = v91;
      _os_log_impl(&dword_2688BB000, v83, v84, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v92 = v120;
    }

    else
    {

      v92 = v80;
    }

    v111(v92, v31);
    v93 = v123;
    v94 = v124;
    v95 = v121;
    v96 = swift_allocObject();
    v97 = v122;
    v96[2] = v82;
    v96[3] = v97;
    v96[4] = v95;
    v96[5] = v51;
    v98 = v116;
    v99 = v110;
    v96[6] = v115;
    v96[7] = v99;
    v96[8] = v93;
    v96[9] = v94;
    v100 = *(v97 + 56);
    if (*(v126 + v98) == 100)
    {
      memcpy(v129, v128, 0x5EuLL);

      v101 = v51;

      OUTLINED_FUNCTION_6_33();
      sub_268AC6584();
    }

    else
    {
      memcpy(v129, v128, 0x5EuLL);

      v102 = v51;

      OUTLINED_FUNCTION_6_33();
      sub_268ABD570();
    }

    memcpy(v127, v128, 0x5EuLL);
    sub_268A74B94(v127);
    goto LABEL_33;
  }

  v119(v41, v44, v31);
  v57 = sub_268B37A34();
  v58 = sub_268B37EE4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_14();
    *v59 = 0;
    _os_log_impl(&dword_2688BB000, v57, v58, "Unexpected shuffle state found", v59, 2u);
    OUTLINED_FUNCTION_12();
  }

  v48(v41, v31);
  sub_268B36E84();
  v60 = v118;
  if (!v61)
  {
    sub_268947F08();
  }

  v62 = v110;
  OUTLINED_FUNCTION_9_23();
  (*(v116 + 104))(v115, *MEMORY[0x277D5BC00], v60);
  v63 = sub_268B350F4();
  v64 = v117;
  __swift_storeEnumTagSinglePayload(v117, 1, 1, v63);
  v65 = *MEMORY[0x277D5B908];
  v66 = sub_268B34B94();
  OUTLINED_FUNCTION_4(v66);
  (*(v67 + 104))(v62, v65, v66);
  OUTLINED_FUNCTION_15_21(v62);
  v68.isa = v57->isa;
  v69 = v64;
  v70 = v109;
  sub_2688F1FA4(v69, v109, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v70, 1, v63) == 1)
  {
    sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v63 - 8) + 8))(v70, v63);
  }

  v103 = v115;
  sub_2688E3F68();

  sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v117, &unk_2802A57B0, &unk_268B3CE00);
  (*(v116 + 8))(v103, v118);
  OUTLINED_FUNCTION_9_23();
  sub_2688C2ECC();
  v104 = OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_7_27(v104, v105);

  v106 = OUTLINED_FUNCTION_26_1();
  v108 = OUTLINED_FUNCTION_13_16(v106, v107);
  v123(v108);
  sub_2688C058C(v129, &unk_2802A57C0, &qword_268B3BE00);
LABEL_33:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A73890(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v125 = a8;
  v123 = a6;
  v124 = a7;
  v121 = a3;
  v122 = a5;
  v126 = a4;
  v128 = a2;
  v115 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v119 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v113 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v111 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v108 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v118 = &v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v105 - v32;
  v120 = sub_268B34E24();
  v127 = *(v120 - 8);
  v33 = *(v127 + 64);
  v34 = MEMORY[0x28223BE20](v120);
  v117 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v116 = &v105 - v36;
  v37 = sub_268B37A54();
  v131 = *(v37 - 8);
  v38 = *(v131 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v112 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v105 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v105 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v105 - v48);
  sub_2688F1FA4(v115, &v105 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v37, qword_2802CDA10);
    (*(v131 + 16))(v45, v51, v37);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v120;
    v56 = v109;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      MEMORY[0x26D6266E0](v57, -1, -1);
    }

    (*(v131 + 8))(v45, v37);
    v58 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    (*(v127 + 104))(v116, *MEMORY[0x277D5BC00], v55);
    v59 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v59);
    v60 = *MEMORY[0x277D5B8E0];
    v61 = sub_268B34B94();
    v62 = v110;
    (*(*(v61 - 8) + 104))(v110, v60, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    v63 = *v58;
    sub_2688F1FA4(v56, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v31, v59);
    }

    v81 = v116;
    sub_2688E3F68();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v81, v55);
    v82 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -67;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -67;
    v129[0] = v86;
    v130 = 1;
    v124(v129);

    return sub_2688C058C(v129, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v37, qword_2802CDA10);
    v65 = *(v131 + 16);
    v110 = v64;
    v109 = v65;
    (v65)(v43);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    v69 = *(v131 + 8);
    v131 += 8;
    v106 = v69;
    v69(v43, v37);
    v70 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    v71 = v120;
    (*(v127 + 104))(v117, *MEMORY[0x277D5BC00], v120);
    v116 = v17;
    v72 = v107;
    sub_2688F1FA4(v17, v107, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v118;
    (*(v74 + 32))(v118, v72, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    v77 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v76);
    v78 = *v70;
    v79 = v108;
    sub_2688F1FA4(v75, v108, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v73);
    v115 = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v107 = v78;
      sub_268B350B4();
      (*(v74 + 8))(v79, v73);
    }

    v89 = v117;
    sub_2688E3F68();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v89, v71);
    v90 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = 79;
    v93 = *v90;
    sub_26894B450();

    v94 = v112;
    (v109)(v112, v110, v37);
    v95 = sub_268B37A34();
    v96 = sub_268B37ED4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v97, 2u);
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v106(v94, v37);
    v98 = v128[36];
    v99 = v128[37];
    __swift_project_boxed_opaque_existential_1(v128 + 33, v98);
    v100 = v116;
    v101 = v113;
    sub_2688F1FA4(v116, v113, &unk_2802A56E0, &unk_268B3CDF0);
    v102 = *(v101 + *(v119 + 48));
    v103 = v114;
    sub_268A82B50(v126, v114);
    v104 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
    (*(v99 + 40))(v101, v102, v103, v124, v125, v98, v99);

    sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v100, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v115 + 8))(v101, v73);
  }
}

uint64_t sub_268A74660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A746DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A74758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A747F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A74874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A74914()
{
  if (qword_2802A4F58 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA58;

  return v1;
}

uint64_t sub_268A74970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A749C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A74A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A74A80(uint64_t a1)
{
  result = sub_268A74AA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A74AA8()
{
  result = qword_2802A7A78;
  if (!qword_2802A7A78)
  {
    type metadata accessor for SetShuffleStateHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7A78);
  }

  return result;
}

uint64_t sub_268A74B00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A74B60()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_268A737D8();
}

uint64_t sub_268A74C10()
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

uint64_t sub_268A74D48(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268A720B8(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

uint64_t sub_268A74E24()
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

uint64_t sub_268A74F34(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A71550(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A74FE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_6_33()
{
  result = v1 - 184;
  v3 = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_7_27(uint64_t a1, _BYTE *a2)
{
  *a2 = v3;
  v5 = *v2;

  sub_26894B450();
}

uint64_t OUTLINED_FUNCTION_13_16(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;
  *(v3 - 184) = a1;
  *(v3 - 144) = 1;
  return v3 - 184;
}

uint64_t OUTLINED_FUNCTION_15_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t sub_268A7517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277D5F948];
      goto LABEL_6;
    case 2:
      v3 = MEMORY[0x277D5F938];
      goto LABEL_6;
    case 3:
      v3 = MEMORY[0x277D5F940];
      goto LABEL_6;
    case 4:
      v3 = MEMORY[0x277D5F930];
LABEL_6:
      v4 = *v3;
      v5 = sub_268B37704();
      (*(*(v5 - 8) + 104))(a2, v4, v5);
      v6 = a2;
      v7 = 0;
      v8 = v5;
      break;
    default:
      v8 = sub_268B37704();
      v6 = a2;
      v7 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
}

uint64_t sub_268A7528C(uint64_t a1, unint64_t a2)
{
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1_15(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B37B84();
  if (a2)
  {

    v14 = sub_26892E170(a1, a2, v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {

      return v14;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v8 + 16))(v12, v17, v2);

  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136446210;
    if (a2)
    {
      v22 = a1;
    }

    else
    {
      v22 = 7104878;
    }

    if (!a2)
    {
      a2 = 0xE300000000000000;
    }

    v23 = sub_26892CDB8(v22, a2, &v26);

    *(v20 + 4) = v23;
    _os_log_impl(&dword_2688BB000, v18, v19, "Cannot convert value %{public}s to NLMediaType", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x26D6266E0](v21, -1, -1);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v12, v2);
  return 0;
}

Swift::Bool __swiftcall NLMediaType.isAmbiguous()()
{
  if (qword_2802A4F60 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  if (*(qword_2802CDA60 + 16))
  {
    sub_268A75924();
    v1 = v0 ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

BOOL NLMediaType.matches(with:)(uint64_t a1)
{
  if (qword_2802A4F60 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v2 = qword_2802CDA60;
  if (*(qword_2802CDA60 + 16) && (v3 = sub_268A75924(), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3) == a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268A75610()
{
  sub_268A7597C();
  result = sub_268B37B84();
  qword_2802CDA60 = result;
  return result;
}

unint64_t NLMediaType.description.getter(uint64_t a1)
{
  sub_268A7597C();
  v2 = sub_268B37B84();
  v3 = sub_26892E2F8(a1, v2);
  v5 = v4;

  if (!v5)
  {
    sub_268B381C4();

    v6 = sub_268B38404();
    MEMORY[0x26D625650](v6);

    MEMORY[0x26D625650](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  return v3;
}

unint64_t sub_268A75754()
{
  OUTLINED_FUNCTION_5_23();
  sub_268B37C54();
  v2 = sub_268B38544();

  return sub_268A75D18(v1, v0, v2);
}

unint64_t sub_268A757B8()
{
  OUTLINED_FUNCTION_1_49();
  sub_268B36054();
  v0 = sub_268A76BBC(&qword_2802A7A48, MEMORY[0x277D5EE30]);
  v1 = OUTLINED_FUNCTION_4_35(v0);
  return OUTLINED_FUNCTION_3_41(v1, v1, MEMORY[0x277D5EE30], &qword_2802A7A98, v2, MEMORY[0x277D5EE40]);
}

unint64_t sub_268A75894(unsigned int a1)
{
  v3 = MEMORY[0x26D625EE0](*(v1 + 40), a1, 4);

  return sub_268A76098(a1, v3);
}

unint64_t sub_268A758DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_268B38144();

  return sub_268A760F8(a1, v5);
}

unint64_t sub_268A75924()
{
  OUTLINED_FUNCTION_6_34();
  MEMORY[0x26D625F10](v0);
  v1 = sub_268B38544();
  return sub_268A761BC(v0, v1);
}

unint64_t sub_268A7597C()
{
  result = qword_2802A7A88;
  if (!qword_2802A7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7A88);
  }

  return result;
}

unint64_t sub_268A759D0()
{
  OUTLINED_FUNCTION_5_23();
  sub_268B38534();
  if (v0)
  {
    sub_268B37C54();
  }

  v2 = sub_268B38544();

  return sub_268A7621C(v1, v0, v2);
}

unint64_t sub_268A75A50()
{
  OUTLINED_FUNCTION_1_49();
  sub_268B371E4();
  v0 = sub_268A76BBC(&qword_2802A7A90, MEMORY[0x277D5F7E0]);
  v1 = OUTLINED_FUNCTION_4_35(v0);
  return OUTLINED_FUNCTION_3_41(v1, v1, MEMORY[0x277D5F7E0], &qword_2802A5AF8, v2, MEMORY[0x277D5F7F0]);
}

unint64_t sub_268A75B00(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_268B38504();

  return sub_268A761BC(a1, v4);
}

unint64_t sub_268A75B44()
{
  OUTLINED_FUNCTION_6_34();
  MEMORY[0x26D625F10](v0);
  v1 = sub_268B38544();

  return sub_268A76470(v0, v1);
}

unint64_t sub_268A75BA0()
{
  OUTLINED_FUNCTION_1_49();
  sub_268B37564();
  v0 = sub_268A76BBC(&qword_2802A78F0, MEMORY[0x277D5F900]);
  v1 = OUTLINED_FUNCTION_4_35(v0);
  return OUTLINED_FUNCTION_3_41(v1, v1, MEMORY[0x277D5F900], &qword_2802A6FC8, v2, MEMORY[0x277D5F910]);
}

uint64_t sub_268A75C7C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_268B38514();
  a2(a1);
  sub_268B37C54();

  v7 = sub_268B38544();

  return a3(a1, v7);
}

unint64_t sub_268A75D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268B38444() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268A75DCC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001BLL;
      v8 = "com.apple.siri.SiriAudio";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000001DLL;
          v8 = "MRMediaRemoteMediaTypeMusic";
          break;
        case 2:
          v7 = 0xD00000000000001FLL;
          v8 = "MRMediaRemoteMediaTypePodcast";
          break;
        case 3:
          v7 = 0xD00000000000001DLL;
          v8 = "MRMediaRemoteMediaTypeAudioBook";
          break;
        case 4:
          v7 = 0xD000000000000022;
          v8 = "MRMediaRemoteMediaTypeITunesU";
          break;
        case 5:
          v7 = 0xD000000000000025;
          v8 = "diaTypeITunesRadio";
          break;
        case 6:
          v7 = 0xD000000000000025;
          v8 = "wPlayingInfoTypeAudio";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001BLL;
      v11 = "com.apple.siri.SiriAudio";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000001DLL;
          v11 = "MRMediaRemoteMediaTypeMusic";
          break;
        case 2:
          v10 = 0xD00000000000001FLL;
          v11 = "MRMediaRemoteMediaTypePodcast";
          break;
        case 3:
          v10 = 0xD00000000000001DLL;
          v11 = "MRMediaRemoteMediaTypeAudioBook";
          break;
        case 4:
          v10 = 0xD000000000000022;
          v11 = "MRMediaRemoteMediaTypeITunesU";
          break;
        case 5:
          v10 = 0xD000000000000025;
          v11 = "diaTypeITunesRadio";
          break;
        case 6:
          v10 = 0xD000000000000025;
          v11 = "wPlayingInfoTypeAudio";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_268B38444();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_268A76098(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_268A760F8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_268A76C04(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D625B40](v8, a1);
    sub_2688EF510(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268A761BC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_268A7621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_268B38444() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_268A762E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21 = a1;
  v9 = a3(0);
  v10 = OUTLINED_FUNCTION_1_15(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v21 - v15;
  v26 = v7 + 64;
  v22 = v7;
  v17 = ~(-1 << *(v7 + 32));
  for (i = a2 & v17; ((1 << i) & *(v26 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v17)
  {
    (*(v12 + 16))(v16, *(v22 + 48) + *(v12 + 72) * i, v6);
    sub_268A76BBC(v23, v24);
    v19 = sub_268B37BB4();
    (*(v12 + 8))(v16, v6);
    if (v19)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268A76470(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  while (2)
  {
    if (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
    {
      v6 = *(*(v2 + 48) + 8 * result);
      if (v6 < 5)
      {
        switch(a1)
        {
          case 0:
            if (!v6)
            {
              return result;
            }

            goto LABEL_14;
          case 1:
            if (v6 != 1)
            {
              goto LABEL_14;
            }

            return result;
          case 2:
            if (v6 == 2)
            {
              return result;
            }

            goto LABEL_14;
          case 3:
            if (v6 == 3)
            {
              return result;
            }

            goto LABEL_14;
          case 4:
            if (v6 == 4)
            {
              return result;
            }

LABEL_14:
            result = (result + 1) & v4;
            continue;
          default:
            goto LABEL_17;
        }
      }

      v7 = *(*(v2 + 48) + 8 * result);
LABEL_17:
      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268A76574);
    }

    return result;
  }
}

unint64_t sub_268A76588(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 2036427888;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x6573756170;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x656D75736572;
          break;
        case 3:
          v8 = 1886352499;
          break;
        case 4:
          v8 = 1885956979;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x73756F6976657270;
          break;
        case 6:
          v8 = 1801807219;
          break;
        case 7:
          v8 = 0x77726F4670696B73;
          v9 = 6582881;
          goto LABEL_15;
        case 8:
          v8 = 0x6B63614270696B73;
          v7 = 0xEC00000064726177;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x746165706572;
          break;
        case 0xA:
          v7 = 0xE700000000000000;
          v10 = 0x726174736572;
          goto LABEL_24;
        case 0xB:
          v7 = 0xE700000000000000;
          v8 = 0x656C6666756873;
          break;
        case 0xC:
          v8 = 0x6165705365766F6DLL;
          v9 = 7497067;
LABEL_15:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xD:
          v7 = 0xEA00000000007265;
          v8 = 0x6B61657053646461;
          break;
        case 0xE:
          v8 = 0x705365766F6D6572;
          v7 = 0xED000072656B6165;
          break;
        case 0xF:
          v7 = 0xE600000000000000;
          v8 = 0x627265566F6ELL;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x8000000268B56230;
          break;
        case 0x11:
          v7 = 0xE900000000000065;
          v8 = 0x736972616D6D7573;
          break;
        case 0x12:
          v7 = 0xE700000000000000;
          v10 = 0x736575716572;
LABEL_24:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 0x13:
          v8 = 0xD000000000000016;
          v7 = 0x8000000268B56260;
          break;
        case 0x14:
          v8 = 0xD000000000000016;
          v7 = 0x8000000268B56280;
          break;
        case 0x15:
          v8 = 0x6573616572636E69;
          v7 = 0xE800000000000000;
          break;
        case 0x16:
          v7 = 0xE800000000000000;
          v8 = 0x6573616572636564;
          break;
        case 0x17:
          v8 = 1701079400;
          break;
        default:
          break;
      }

      v11 = 0xE400000000000000;
      v12 = 2036427888;
      switch(a1)
      {
        case 1:
          v11 = 0xE500000000000000;
          v12 = 0x6573756170;
          break;
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x656D75736572;
          break;
        case 3:
          v12 = 1886352499;
          break;
        case 4:
          v12 = 1885956979;
          break;
        case 5:
          v11 = 0xE800000000000000;
          v12 = 0x73756F6976657270;
          break;
        case 6:
          v12 = 1801807219;
          break;
        case 7:
          v12 = 0x77726F4670696B73;
          v13 = 6582881;
          goto LABEL_41;
        case 8:
          v12 = 0x6B63614270696B73;
          v11 = 0xEC00000064726177;
          break;
        case 9:
          v11 = 0xE600000000000000;
          v12 = 0x746165706572;
          break;
        case 10:
          v11 = 0xE700000000000000;
          v14 = 0x726174736572;
          goto LABEL_50;
        case 11:
          v11 = 0xE700000000000000;
          v12 = 0x656C6666756873;
          break;
        case 12:
          v12 = 0x6165705365766F6DLL;
          v13 = 7497067;
LABEL_41:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 13:
          v11 = 0xEA00000000007265;
          v12 = 0x6B61657053646461;
          break;
        case 14:
          v12 = 0x705365766F6D6572;
          v11 = 0xED000072656B6165;
          break;
        case 15:
          v11 = 0xE600000000000000;
          v12 = 0x627265566F6ELL;
          break;
        case 16:
          v12 = 0xD000000000000017;
          v11 = 0x8000000268B56230;
          break;
        case 17:
          v11 = 0xE900000000000065;
          v12 = 0x736972616D6D7573;
          break;
        case 18:
          v11 = 0xE700000000000000;
          v14 = 0x736575716572;
LABEL_50:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 19:
          v12 = 0xD000000000000016;
          v11 = 0x8000000268B56260;
          break;
        case 20:
          v12 = 0xD000000000000016;
          v11 = 0x8000000268B56280;
          break;
        case 21:
          v12 = 0x6573616572636E69;
          v11 = 0xE800000000000000;
          break;
        case 22:
          v11 = 0xE800000000000000;
          v12 = 0x6573616572636564;
          break;
        case 23:
          v12 = 1701079400;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_268B38444();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_268A76BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_39()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t a5, uint64_t a6)
{

  return sub_268A762E8(v6, a2, a3, a4, v7, a6);
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1)
{

  return MEMORY[0x2821FBA08](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_5_23()
{
  v2 = *(v0 + 40);

  return sub_268B38514();
}

uint64_t OUTLINED_FUNCTION_6_34()
{
  v2 = *(v0 + 40);

  return sub_268B38514();
}

Swift::String_optional __swiftcall UsoTask_repeat_uso_NoEntity.verb()()
{
  v0 = 0x746165706572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_repeat_uso_NoEntity.referencedSetting()()
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

void UsoTask_repeat_uso_NoEntity.shouldHandle(requestContext:)(uint64_t *a1@<X0>, char *a2@<X8>)
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
    _os_log_impl(&dword_2688BB000, v15, v16, "User asked to repeat but no devices in the home are playing. Retuning nil flow for the reader domain to handle the request instead", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v14 + 8))(v6, v3);
  v18 = 3;
LABEL_14:
  *v20 = v18;
}

uint64_t sub_268A770A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A770F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A77148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A7719C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A771F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A77244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A77298()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A772EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A77350()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A773A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A77408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A7746C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A774D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A77534(uint64_t a1)
{
  result = sub_268A775E0(&qword_2802A7AA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A775E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A77624(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v6 = *(*(v57 - 1) + 64);
  MEMORY[0x28223BE20](v57);
  v8 = (&v55 - v7);
  v9 = sub_268B37A54();
  v10 = *(v9 - 1);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = (&v55 - v15);
  MEMORY[0x28223BE20](v14);
  inited = &v55 - v16;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v9, qword_2802CDA10);
    v19 = v10[2];
    v19(inited, v18, v9);
    v20 = sub_268B37A34();
    v21 = sub_268B37ED4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v55 = v9;
      *v22 = 0;
      _os_log_impl(&dword_2688BB000, v20, v21, "SetSubtitleStateConfirmIntentStrategy.makeDialogForConfirmation()", v22, 2u);
      v9 = v55;
      OUTLINED_FUNCTION_12();
    }

    v24 = v10[1];
    ++v10;
    v23 = v24;
    v24(inited, v9);
    v25 = [a2 device];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v57 = a2;
    v8 = v58;
    v19(v58, v18, v9);
    v27 = v26;
    v28 = sub_268B37A34();
    v29 = sub_268B37EC4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v23;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v27;
      *v32 = v26;
      v33 = v27;
      _os_log_impl(&dword_2688BB000, v28, v29, "Confirming device: %@", v31, 0xCu);
      sub_2688EF38C(v32, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      v23 = v30;
      OUTLINED_FUNCTION_12();
    }

    v23(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    *(inited + 32) = v27;
    a2 = (inited & 0xFFFFFFFFFFFFFF8);
    v9 = v27;
    v34 = MEMORY[0x277D84F90];
    if ((inited & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x26D625BD0](0, inited);
LABEL_10:
      v36 = v35;
      v37 = sub_268988580(v35);
      if (v38)
      {
        v39 = v37;
        v40 = v38;

        goto LABEL_13;
      }

      v39 = sub_268988568(v36);
      v40 = v41;

      if (v40)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v34 + 16);
          sub_2689876A4();
          v34 = v45;
        }

        v42 = *(v34 + 16);
        if (v42 >= *(v34 + 24) >> 1)
        {
          sub_2689876A4();
          v34 = v46;
        }

        *(v34 + 16) = v42 + 1;
        v43 = v34 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v40;
      }

      swift_setDeallocating();
      sub_268ACE718();
      v47 = [v57 enable] == 2;
      sub_268A3BA38(v34, v47, v59, v60);
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v49 = v56;
  v19(v56, v18, v9);
  v50 = sub_268B37A34();
  v51 = sub_268B37EE4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "Could not find any devices in the intent for confirmation", v52, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23(v49, v9);
  sub_2688C2ECC();
  v53 = swift_allocError();
  *v54 = 92;
  *v8 = v53;
  swift_storeEnumTagMultiPayload();
  v59(v8);
  return sub_2688EF38C(v8, &qword_2802A6300, &unk_268B3BD80);
}

void sub_268A77C50()
{
  type metadata accessor for SetSubtitleStateConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A77CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A77D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetSubtitleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A77E20(uint64_t a1)
{
  result = sub_268A77E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A77E48()
{
  result = qword_2802A7AB8;
  if (!qword_2802A7AB8)
  {
    type metadata accessor for SetSubtitleStateConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7AB8);
  }

  return result;
}

uint64_t AccessoryTypeSemantic.init(rawValue:)()
{
  OUTLINED_FUNCTION_8_27();
  v1 = sub_268B382F4();

  *v0 = v1 != 0;
  return result;
}

uint64_t HomeAutomationNLV3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268B366C4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t HomeAutomationNLV3Intent.intent.setter()
{
  OUTLINED_FUNCTION_142_0();
  v2 = sub_268B366C4();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t HomeAutomationNLV3Intent.domainOntologyNode.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeAutomationNLV3Intent() + 24));
}

uint64_t type metadata accessor for HomeAutomationNLV3Intent()
{
  result = qword_2802A7B68;
  if (!qword_2802A7B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeAutomationNLV3Intent.domainOntologyNode.setter()
{
  OUTLINED_FUNCTION_142_0();
  v2 = *(type metadata accessor for HomeAutomationNLV3Intent() + 24);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*HomeAutomationNLV3Intent.domainOntologyNode.modify())(void)
{
  OUTLINED_FUNCTION_142_0();
  v0 = *(type metadata accessor for HomeAutomationNLV3Intent() + 24);
  return nullsub_1;
}

uint64_t sub_268A780C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA68 = result;
  return result;
}

uint64_t sub_268A78130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B90, &unk_268B494A8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA70 = result;
  return result;
}

uint64_t sub_268A78198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AC0, &qword_268B48F00);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA78 = result;
  return result;
}

uint64_t sub_268A78200()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AD0, &qword_268B48F08);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA80 = result;
  return result;
}

uint64_t HomeAutomationNLV3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomeAutomationNLV3Intent();
  *(a2 + *(v4 + 20)) = MEMORY[0x277D84F90];
  v5 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_268B43BA0;
  if (qword_2802A4F68 != -1)
  {
    OUTLINED_FUNCTION_2_31();
    swift_once();
  }

  v7 = qword_2802CDA68;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v6 + 64) = OUTLINED_FUNCTION_0_40(&qword_2802A71F0);
  *(v6 + 32) = v7;
  v8 = qword_2802A4F78;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_4_36();
  }

  v9 = qword_2802CDA78;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AC0, &qword_268B48F00);
  *(v6 + 104) = OUTLINED_FUNCTION_0_40(&qword_2802A7AC8);
  *(v6 + 72) = v9;
  v10 = qword_2802A4F80;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_3_42();
  }

  v11 = qword_2802CDA80;
  *(v6 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AD0, &qword_268B48F08);
  *(v6 + 144) = OUTLINED_FUNCTION_0_40(&qword_2802A7AD8);
  *(v6 + 112) = v11;
  v12 = sub_268B35774();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_5_24();
  *(a2 + v5) = sub_268B35764();
  v15 = sub_268B366C4();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 32);

  return v18(a2, a1, v16);
}

void *sub_268A78490()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

uint64_t sub_268A784A8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 3)
  {
  }

  else
  {
    if (qword_2802A4F80 != -1)
    {
      OUTLINED_FUNCTION_3_42();
    }

    sub_268B35794();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AD0, &qword_268B48F08);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_268B35784();
    sub_268B35794();
    sub_268A78644();
  }

  return v1;
}

uint64_t HomeAutomationVerb.rawValue.getter()
{
  v1 = 0x746174735F746567;
  if (*v0 != 1)
  {
    v1 = 0x6174735F646C6F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746174735F746573;
  }
}

uint64_t sub_268A78644()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;

  sub_268B359D4();
  v6 = *MEMORY[0x277D5E5D8];
  v7 = sub_268B35A44();
  OUTLINED_FUNCTION_4(v7);
  (*(v8 + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  sub_268A78758();
  return sub_268A7A0F4(v5);
}

void sub_268A78758()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v50 = v5;
  v51 = v4;
  v52 = sub_268B35C14();
  v6 = OUTLINED_FUNCTION_1(v52);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6138, &qword_268B3E820);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B98, &qword_268B494B8);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v48 = sub_268B35B14();
  v30 = *(v48 - 8);
  v31 = v30;
  v32 = *(v30 + 64);
  MEMORY[0x28223BE20](v48);
  v34 = &v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689AB648(v3, v29);
  v35 = sub_268B35A94();
  OUTLINED_FUNCTION_4_7(v23, v36, v37, v35);
  v38 = sub_268B359C4();
  OUTLINED_FUNCTION_4_7(v17, v39, v40, v38);
  sub_268B35A54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7BA0, &unk_268B494C0);
  v41 = *(v30 + 72);
  v42 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_268B3BBC0;
  v44 = v48;
  (*(v31 + 16))(v43 + v42, v34, v48);

  v45 = v49;
  sub_268B35BF4();
  swift_beginAccess();
  sub_268A7A15C();
  v46 = *(*(v1 + 32) + 16);
  sub_268A7A1D4(v46);
  v47 = *(v1 + 32);
  *(v47 + 16) = v46 + 1;
  (*(v8 + 32))(v47 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v46, v45, v52);
  *(v1 + 32) = v47;
  swift_endAccess();
  (*(v31 + 8))(v34, v44);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A78ACC()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  for (i = (v0 + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    v5 = qword_2802A4F68;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_2_31();
      swift_once();
    }

    v6 = sub_268B35794();
    sub_268A78C6C(v6, v7, v4, v3);

    i += 2;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A78B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (qword_2802A4F70 != -1)
    {
      swift_once();
    }

    do
    {
      sub_268B35794();
      sub_268A78644();

      --v1;
    }

    while (v1);
  }
}

uint64_t sub_268A78C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - v10);
  *v11 = a3;
  v11[1] = a4;
  v12 = *MEMORY[0x277D5E5C8];
  v13 = sub_268B35A44();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 104))(v11, v12, v13);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);

  sub_268A78758();
  return sub_268A7A0F4(v11);
}

uint64_t sub_268A78D74()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    if (qword_2802A4F78 != -1)
    {
      OUTLINED_FUNCTION_4_36();
    }

    do
    {
      v3 = *v2++;
      sub_268B35794();
      sub_268A78644();

      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t HomeAutomationState.rawValue.getter()
{
  result = 28271;
  switch(*v0)
  {
    case 1:
      result = 0x646570706F7473;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x64656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A78F28()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B80, &qword_268B49490);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B88, &unk_268B49498);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = sub_268B35CB4();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  LOBYTE(v35[0]) = *v2;
  sub_268A784A8(v35);

  swift_beginAccess();
  v26 = *(v0 + 32);

  sub_268920EBC();

  OUTLINED_FUNCTION_5_24();
  sub_268B35CA4();
  sub_268B35C84();
  v35[3] = v15;
  v35[4] = MEMORY[0x277D5E728];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(v18 + 16))(boxed_opaque_existential_1, v23, v15);
  v28 = sub_268B36664();
  OUTLINED_FUNCTION_4_7(v14, v29, v30, v28);
  v31 = sub_268B35CD4();
  OUTLINED_FUNCTION_4_7(v8, v32, v33, v31);
  sub_268B366B4();
  v34 = *(v18 + 8);
  v34(v23, v15);
  v34(v25, v15);
  OUTLINED_FUNCTION_23();
}

void *sub_268A791C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_268A791F4()
{
  sub_268A791C4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_268A79230(uint64_t a1)
{
  v2 = sub_268A7A508(&qword_2802A7BF0);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268A79298(uint64_t a1)
{
  v2 = sub_268A7A508(&qword_2802A7BF0);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268A792F0(uint64_t a1)
{
  v2 = sub_268A7A508(&qword_2802A7BF0);

  return MEMORY[0x2821C0C70](a1, v2);
}

SiriPlaybackControlIntents::HomeAutomationVerb_optional __swiftcall HomeAutomationVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_27();
  v2 = sub_268B382F4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_268A793D8@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationVerb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPlaybackControlIntents::HomeAutomationState_optional __swiftcall HomeAutomationState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_27();
  v2 = sub_268B382F4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_268A794E0@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_268A795D0()
{
  result = qword_2802A7AF0;
  if (!qword_2802A7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7AF0);
  }

  return result;
}

unint64_t sub_268A79628()
{
  result = qword_2802A7AF8;
  if (!qword_2802A7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7AF8);
  }

  return result;
}

unint64_t sub_268A796C4()
{
  result = qword_2802A7B10;
  if (!qword_2802A7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B10);
  }

  return result;
}

unint64_t sub_268A7971C()
{
  result = qword_2802A7B18;
  if (!qword_2802A7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B18);
  }

  return result;
}

unint64_t sub_268A79774()
{
  result = qword_2802A7B20;
  if (!qword_2802A7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B20);
  }

  return result;
}

unint64_t sub_268A79810()
{
  result = qword_2802A7B38;
  if (!qword_2802A7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B38);
  }

  return result;
}

unint64_t sub_268A79868()
{
  result = qword_2802A7B40;
  if (!qword_2802A7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B40);
  }

  return result;
}

uint64_t sub_268A798C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return AccessoryTypeSemantic.init(rawValue:)();
}

unint64_t sub_268A798D4@<X0>(void *a1@<X8>)
{
  result = AccessoryTypeSemantic.rawValue.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

unint64_t sub_268A7995C()
{
  result = qword_2802A7B58;
  if (!qword_2802A7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B58);
  }

  return result;
}

unint64_t sub_268A79A64()
{
  result = qword_2802A7B60;
  if (!qword_2802A7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7B60);
  }

  return result;
}

uint64_t sub_268A79AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_268A79B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_142_0();
  v6 = sub_268B366C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_268A79C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268B366C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_268A79D00()
{
  sub_268B366C4();
  if (v0 <= 0x3F)
  {
    sub_268A79D9C();
    if (v1 <= 0x3F)
    {
      sub_268B35774();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268A79D9C()
{
  if (!qword_2802A7B78)
  {
    sub_268B35C14();
    v0 = sub_268B37D54();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A7B78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x268A79EE4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x268A79FE8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessoryTypeSemantic(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x268A7A0BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268A7A0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268A7A15C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_268987E28();
    *v0 = v4;
  }
}

uint64_t sub_268A7A1A8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_268B37D14();
  }

  return result;
}

void sub_268A7A1D4(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_268987E28();
    *v1 = v2;
  }
}

unint64_t sub_268A7A214()
{
  result = qword_2802A7BA8;
  if (!qword_2802A7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BA8);
  }

  return result;
}

unint64_t sub_268A7A268()
{
  result = qword_2802A7BB0;
  if (!qword_2802A7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BB0);
  }

  return result;
}

unint64_t sub_268A7A2BC()
{
  result = qword_2802A7BB8;
  if (!qword_2802A7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BB8);
  }

  return result;
}

unint64_t sub_268A7A310()
{
  result = qword_2802A7BC0;
  if (!qword_2802A7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BC0);
  }

  return result;
}

unint64_t sub_268A7A364()
{
  result = qword_2802A7BC8;
  if (!qword_2802A7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BC8);
  }

  return result;
}

unint64_t sub_268A7A3B8()
{
  result = qword_2802A7BD0;
  if (!qword_2802A7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BD0);
  }

  return result;
}

unint64_t sub_268A7A40C()
{
  result = qword_2802A7BD8;
  if (!qword_2802A7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BD8);
  }

  return result;
}

unint64_t sub_268A7A460()
{
  result = qword_2802A7BE0;
  if (!qword_2802A7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BE0);
  }

  return result;
}

unint64_t sub_268A7A4B4()
{
  result = qword_2802A7BE8;
  if (!qword_2802A7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7BE8);
  }

  return result;
}

uint64_t sub_268A7A508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAutomationNLV3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_40(unint64_t *a1)
{

  return sub_2688F4354(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return swift_once();
}

Swift::String_optional __swiftcall UsoTask_noVerb_uso_NoEntity.verb()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A7A63C(uint64_t a1)
{
  result = sub_268A7A6E8(&qword_2802A7BF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A7A6E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A7A750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A7A7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A7A7F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A7A84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A7A8A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A7A8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A7A948()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A7A99C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A7AA00()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A7AA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A7AAB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A7AB1C()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A7AB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

double sub_268A7ABE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7928, &qword_268B48288);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_268B35AA4();
  v6 = OUTLINED_FUNCTION_1_15(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B35AE4();
  v14 = 0.0;
  if ((v15 & 1) == 0)
  {
    v14 = *&v13;
    sub_268B35AC4();
    if (__swift_getEnumTagSinglePayload(v4, 1, v0) == 1)
    {
      sub_268A7AF54(v4);
    }

    else
    {
      (*(v8 + 32))(v12, v4, v0);
      v14 = sub_268A7AD60(v12, v14);
      (*(v8 + 8))(v12, v0);
    }
  }

  return v14;
}

double sub_268A7AD60(uint64_t a1, double a2)
{
  v5 = sub_268B35AA4();
  v6 = OUTLINED_FUNCTION_1_15(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v2);
  v13 = (*(v8 + 88))(v12, v2);
  if (v13 == *MEMORY[0x277D5E5E0])
  {
    return a2 / 1000.0;
  }

  if (v13 != *MEMORY[0x277D5E620])
  {
    if (v13 == *MEMORY[0x277D5E618])
    {
      return a2 * 60.0;
    }

    else if (v13 == *MEMORY[0x277D5E5F0])
    {
      return a2 * 60.0 * 60.0;
    }

    else
    {
      if (v13 == *MEMORY[0x277D5E5E8])
      {
        v14 = a2 * 24.0;
      }

      else
      {
        if (v13 == *MEMORY[0x277D5E5F8])
        {
          v15 = 7.0;
        }

        else
        {
          if (v13 != *MEMORY[0x277D5E630])
          {
            (*(v8 + 8))(v12, v2);
            return 0.0;
          }

          v15 = 14.0;
        }

        v14 = a2 * v15 * 24.0;
      }

      return v14 * 60.0 * 60.0;
    }
  }

  return a2;
}

uint64_t sub_268A7AF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7928, &qword_268B48288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_268A7AFBC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78B8, &qword_268B47A38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_268B35AF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268A7B4CC(a1);
  sub_268A7B808(a1);
  sub_268A7BBCC(a1);
  v17 = [v1 duration];
  if (!v17)
  {
    type metadata accessor for SignedDuration();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = sub_26893A824(0, 0);
    [v2 setDuration_];
  }

  v19 = type metadata accessor for MediaPlayerIntent();
  sub_268A532E4(&a1[*(v19 + 28)], v7);
  v20 = sub_268B35984();
  if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
  {
    sub_2688EF38C(v7, &qword_2802A5FA8, &unk_268B3DEF0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
LABEL_6:
    sub_2688EF38C(v11, &qword_2802A78B8, &qword_268B47A38);
    v21 = OUTLINED_FUNCTION_0_41();
    if (v21 && (v22 = v21, v23 = [v21 duration], v22, v23))
    {
    }

    else
    {
      v24 = OUTLINED_FUNCTION_0_41();
      if (v24)
      {
        v25 = v24;
        sub_2688C063C();
        v26 = sub_268B38064();
        [v25 setDuration_];
      }
    }

    goto LABEL_14;
  }

  sub_268B35974();
  (*(*(v20 - 8) + 8))(v7, v20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  (*(v13 + 32))(v16, v11, v12);
  v27 = OUTLINED_FUNCTION_0_41();
  if (v27)
  {
    v28 = v27;
    sub_268A7ABE8();
    v29 = sub_268B37DD4();
    [v28 setDuration_];
  }

  (*(v13 + 8))(v16, v12);
LABEL_14:
  v30 = *a1;
  if (v30 == 24)
  {
    goto LABEL_30;
  }

  if (sub_26893E3F8(*a1) == 0x77726F4670696B73 && v31 == 0xEB00000000647261)
  {

    goto LABEL_27;
  }

  v33 = sub_268B38444();

  if (v33)
  {
LABEL_27:
    v37 = OUTLINED_FUNCTION_0_41();
    if (!v37)
    {
      goto LABEL_30;
    }

    v38 = v37;
    [v37 setDirection_];
    goto LABEL_29;
  }

  if (sub_26893E3F8(v30) == 0x6B63614270696B73 && v34 == 0xEC00000064726177)
  {
  }

  else
  {
    v36 = sub_268B38444();

    if ((v36 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v43 = OUTLINED_FUNCTION_0_41();
  if (v43)
  {
    v38 = v43;
    [v43 setDirection_];
LABEL_29:
  }

LABEL_30:
  v39 = a1[*(v19 + 48)];
  if (v39 == 26)
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = sub_268942D54(v39);
  }

  return [v2 setMediaType_];
}

uint64_t sub_268A7B4CC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_2689A9870(&qword_2802A56B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0);
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
    v19 = off_287959F20;
    v20 = type metadata accessor for SkipTimeIntent();
    v19(v12, v20, &off_287959F00);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void sub_268A7B808(uint64_t a1)
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

  sub_2688C2F6C(v11);
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
    v29 = off_287959F20;
    v30 = type metadata accessor for SkipTimeIntent();
    v24 = v26;
    v29(v28, v30, &off_287959F00);
LABEL_13:
  }
}

void sub_268A7BBCC(uint64_t a1)
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
  sub_2689A9870(&qword_2802A58E0);
  v11 = sub_268B37854();
  sub_2688C2F6C(v10);
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
    v16 = off_28795BB38;
    v17 = type metadata accessor for SkipTimeIntent();
    v16(v15, v17, &off_28795BB28);
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

id OUTLINED_FUNCTION_0_41()
{

  return [v0 (v1 + 120)];
}

uint64_t sub_268A7C03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 80);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v4;
  return v3(v8);
}

unint64_t sub_268A7C0CC(char a1)
{
  result = 0x6D72616C61;
  switch(a1)
  {
    case 1:
      result = 0x72656D6974;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268A7C150(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = *(*(a1 + 48) + 8 * v7);

LABEL_10:
    v14 = v12;
    while (v8)
    {
LABEL_16:
      v12 = *(*(a1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v8)))));
      if (qword_2802A4D50 != -1)
      {
        result = swift_once();
      }

      v8 &= v8 - 1;
      v16 = qword_2802CD900;
      if (*(qword_2802CD900 + 16))
      {
        result = sub_268A76C60(v14);
        if (v17)
        {
          v18 = *(*(v16 + 56) + 8 * result);
        }

        else
        {
          v18 = -1;
        }

        if (*(v16 + 16) && (result = sub_268A76C60(v12), (v19 & 1) != 0))
        {
          if (v18 < *(*(v16 + 56) + 8 * result))
          {
            goto LABEL_10;
          }
        }

        else if (v18 < -1)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v9)
      {

        return v14;
      }

      v8 = *(v2 + 8 * v15);
      ++v6;
      if (v8)
      {
        v6 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (1)
    {
      v6 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        return 0;
      }

      v11 = *(a1 + 64 + 8 * v5);
      v10 += 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) + v10;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_268A7C324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268B34614();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = type metadata accessor for QuickStopContext.FiringItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v41 = *(a1 + 16);
  if (v41)
  {
    v23 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v37 = a2;
    v38 = v23;
    v42 = &v36 - v22;
    sub_268A7FA0C(v23, &v36 - v22, type metadata accessor for QuickStopContext.FiringItem);
    v24 = (v5 + 32);
    v25 = (v5 + 8);
    v26 = 1;
    v39 = v11;
    while (v41 != v26)
    {
      v27 = v12;
      sub_268A7FA0C(v38 + *(v12 + 72) * v26, v21, type metadata accessor for QuickStopContext.FiringItem);
      sub_268A7FA0C(v42, v18, type metadata accessor for QuickStopContext.FiringItem);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_268B34574();
      }

      else
      {
        (*v24)(v10, v18, v4);
      }

      sub_268A7FA0C(v21, v43, type metadata accessor for QuickStopContext.FiringItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v29 = v40;
        if (EnumCaseMultiPayload == 1)
        {
          (*v24)(v40, v43, v4);
        }

        else
        {
          sub_268B34574();
        }
      }

      else
      {
        v29 = v40;
        (*v24)(v40, v43, v4);
      }

      v30 = sub_268B345B4();
      v31 = v29;
      v32 = *v25;
      (*v25)(v31, v4);
      v32(v10, v4);
      if (v30)
      {
        v33 = v42;
        sub_268A7F9B4(v42, type metadata accessor for QuickStopContext.FiringItem);
        sub_268A7F958(v21, v33, type metadata accessor for QuickStopContext.FiringItem);
      }

      else
      {
        sub_268A7F9B4(v21, type metadata accessor for QuickStopContext.FiringItem);
      }

      v12 = v27;
      ++v26;
      v11 = v39;
    }

    v34 = v37;
    sub_268A7F958(v42, v37, type metadata accessor for QuickStopContext.FiringItem);
    return __swift_storeEnumTagSinglePayload(v34, 0, 1, v11);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v11);
  }
}

uint64_t sub_268A7C750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A24();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v12 = qword_2802CDB28;
  sub_268B37A14();
  sub_268B38004();
  OUTLINED_FUNCTION_11_26();
  sub_268B37A04();
  sub_268A7C8D0(a1, v2, &v15);
  sub_268B37FF4();
  OUTLINED_FUNCTION_11_26();
  sub_268B379F4();
  (*(v7 + 8))(v11, v4);
  return v15;
}

void sub_268A7C8D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v233 = a2;
  v219 = sub_268B36FD4();
  v217 = *(v219 - 8);
  v5 = *(v217 + 64);
  MEMORY[0x28223BE20](v219);
  v207 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C78, &unk_268B49770);
  v7 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v218 = &v202 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C80, &qword_268B3CE20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v212 = &v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v221 = &v202 - v14;
  MEMORY[0x28223BE20](v13);
  v220 = &v202 - v15;
  v16 = type metadata accessor for QuickStopContext(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v230 = &v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v232 = &v202 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v228 = &v202 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v227 = &v202 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v202 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v202 - v30;
  v234 = sub_268B37A54();
  v32 = *(v234 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v234);
  v36 = &v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v211 = &v202 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v210 = &v202 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v209 = &v202 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v208 = &v202 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v222 = &v202 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v225 = &v202 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v223 = &v202 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v214 = &v202 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v229 = &v202 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v224 = &v202 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v226 = &v202 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v231 = &v202 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  i = &v202 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v202 - v64;
  v215 = a1;
  if ((sub_268A409F0() & 1) == 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v87 = v234;
    v88 = __swift_project_value_buffer(v234, qword_2802CDA10);
    (*(v32 + 16))(v36, v88, v87);
    v89 = sub_268B37A34();
    v90 = sub_268B37F04();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = a3;
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2688BB000, v89, v90, "QuickStopUtil#quickStopResult Not a valid QuickStop parse, returning .unsupported", v92, 2u);
      v93 = v92;
      a3 = v91;
      MEMORY[0x26D6266E0](v93, -1, -1);
    }

    (*(v32 + 8))(v36, v87);
    v94 = 0x8000000000000000;
    goto LABEL_107;
  }

  v213 = a3;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_146;
  }

LABEL_3:
  v66 = __swift_project_value_buffer(v234, qword_2802CDA10);
  v67 = *(v32 + 16);
  v202 = v66;
  v204 = v32 + 16;
  v203 = v67;
  (v67)(v65);
  v68 = sub_268B37A34();
  v69 = sub_268B37F04();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_2688BB000, v68, v69, "QuickStopUtil#quickStopResult Fetching context", v70, 2u);
    MEMORY[0x26D6266E0](v70, -1, -1);
  }

  v205 = *(v32 + 8);
  v71 = v65;
  v72 = v234;
  v206 = v32 + 8;
  v205(v71, v234);
  v73 = sub_2689AB6B8();
  sub_26890C900(v233 + 56, &v235);
  v74 = swift_allocObject();
  sub_2688EA320(&v235, v74 + 16);
  v75 = swift_allocObject();
  *(v75 + 16) = sub_268A7FAA0;
  *(v75 + 24) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7C20, &unk_268B49780);
  v32 = v73;
  v76 = v73;
  sub_268B38024();

  v77 = v236;
  if (!v236)
  {
    v203(i, v202, v72);
    v95 = sub_268B37A34();
    v96 = sub_268B37EE4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "QuickStopUtil#quickStopResult Unable to fetch quick time context. Returning nothing to stop", v97, 2u);
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v205(i, v72);
    v98 = *(v233 + 40);
    v99 = (v233 + 16);
    goto LABEL_26;
  }

  v78 = sub_268A7EAB4(v236, 0);
  if (v78 != 4)
  {
    LODWORD(v79) = v78;

    v100 = v231;
    v101 = v234;
    v203(v231, v202, v234);
    v102 = sub_268B37A34();
    v103 = sub_268B37F04();
    if (!os_log_type_enabled(v102, v103))
    {

      v127 = v100;
      v128 = v101;
      goto LABEL_105;
    }

    v17 = v205;
    v104 = 0x6D72616C61;
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v235 = v106;
    *v105 = 136315394;
    v107 = 0xE500000000000000;
    v108 = v106;
    v109 = 0x6D72616C61;
    switch(v79)
    {
      case 1:
        v109 = 0x72656D6974;
        break;
      case 2:
        v109 = 0xD000000000000010;
        v107 = 0x8000000268B58FF0;
        break;
      case 3:
        v109 = 0x656E6F6870;
        break;
      default:
        break;
    }

    v147 = sub_26892CDB8(v109, v107, &v235);

    *(v105 + 4) = v147;
    *(v105 + 12) = 2080;
    v148 = 0xE500000000000000;
    switch(v79)
    {
      case 0:
        break;
      case 1:
        v104 = 0x72656D6974;
        break;
      case 2:
        v104 = 0xD000000000000010;
        v148 = 0x8000000268B58FF0;
        break;
      case 3:
        v104 = 0x656E6F6870;
        break;
      default:
LABEL_150:
        JUMPOUT(0);
    }

    v149 = sub_26892CDB8(v104, v148, &v235);

    *(v105 + 14) = v149;
    _os_log_impl(&dword_2688BB000, v102, v103, "QuickStopUtil#quickStopResult Local device has firing %s. Reforming to %s domain", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v108, -1, -1);
    MEMORY[0x26D6266E0](v105, -1, -1);

    v150 = v231;
    v151 = v101;
LABEL_84:
    (v17)(v150, v151);
    goto LABEL_106;
  }

  v79 = 0;
  v65 = *(v77 + 16);
  while (v65 != v79)
  {
    if (v79 >= *(v77 + 16))
    {
      __break(1u);
LABEL_132:
      v161 = 0xD000000000000010;
      v160 = 0x8000000268B58FF0;
LABEL_134:
      v188 = sub_26892CDB8(v161, v160, &v235);

      *(v75 + 4) = v188;
      *(v75 + 12) = 2080;
      v189 = 0xE500000000000000;
      v190 = v234;
      switch(v79)
      {
        case 0:
          goto LABEL_138;
        case 1:
          v31 = 0x72656D6974;
          goto LABEL_138;
        case 2:
          v31 = 0xD000000000000010;
          v189 = 0x8000000268B58FF0;
          goto LABEL_138;
        case 3:
          v31 = 0x656E6F6870;
LABEL_138:
          v191 = sub_26892CDB8(v31, v189, &v235);

          *(v75 + 14) = v191;
          _os_log_impl(&dword_2688BB000, v76, v77, "QuickStopUtil#quickStopResult Far device has firing %s. Reforming to %s domain", v75, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6266E0](v65, -1, -1);
          MEMORY[0x26D6266E0](v75, -1, -1);

          v150 = v225;
          v151 = v190;
          goto LABEL_84;
        default:
          goto LABEL_150;
      }
    }

    sub_268A7FA0C(v77 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v79, v31, type metadata accessor for QuickStopContext);
    v80 = *(v31 + v16[5]);
    if (v80 - 1 >= 4)
    {
      if (v80)
      {
        goto LABEL_149;
      }

      v76 = *(v31 + v16[12]);
      sub_268A7F9B4(v31, type metadata accessor for QuickStopContext);
      if (v76)
      {

        v81 = v226;
        v82 = v234;
        v203(v226, v202, v234);
        v83 = sub_268B37A34();
        v84 = sub_268B37F04();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_2688BB000, v83, v84, "QuickStopUtil#quickStopResult Barged in over Siri. Dismiss with no action", v85, 2u);
          MEMORY[0x26D6266E0](v85, -1, -1);
        }

        v205(v81, v82);
        __swift_project_boxed_opaque_existential_1((v233 + 16), *(v233 + 40));
        v86 = sub_268B07EEC();
        goto LABEL_27;
      }
    }

    else
    {
      sub_268A7F9B4(v31, type metadata accessor for QuickStopContext);
    }

    ++v79;
  }

  v110 = 0;
  v31 = v233;
  while (v65 != v110)
  {
    if (v110 >= *(v77 + 16))
    {
      __break(1u);
LABEL_140:
      v192 = v17 + v75;
      v193 = v207;
      (*(v77 + 32))(v207, v192, v16);
      sub_268A7FAF0();
      v194 = sub_268B37BB4();
      v195 = *(v77 + 8);
      v195(v193, v16);
      sub_2688C058C(v221, &qword_2802A5C80, &qword_268B3CE20);
      v195(v110, v16);
      sub_2688C058C(v17, &qword_2802A5C80, &qword_268B3CE20);
      if (v194)
      {
LABEL_141:
        v196 = v209;
        v197 = v234;
        v203(v209, v202, v234);
        v198 = sub_268B37A34();
        v199 = sub_268B37F04();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          *v200 = 0;
          _os_log_impl(&dword_2688BB000, v198, v199, "QuickStopUtil#quickStopResult Watch treating as pause request", v200, 2u);
          MEMORY[0x26D6266E0](v200, -1, -1);
        }

        v205(v196, v197);
        __swift_project_boxed_opaque_existential_1((v31 + 16), *(v31 + 40));
        sub_268B0366C();
        v94 = v201;
        sub_2688C058C(v29, &qword_2802A5C80, &qword_268B3CE20);
        goto LABEL_28;
      }

LABEL_123:
      sub_2688C058C(v29, &qword_2802A5C80, &qword_268B3CE20);
LABEL_124:
      if (sub_268A4118C())
      {
        v178 = v210;
        v179 = v234;
        v203(v210, v202, v234);
        v180 = sub_268B37A34();
        v181 = sub_268B37F04();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          *v182 = 0;
          _os_log_impl(&dword_2688BB000, v180, v181, "QuickStopUtil#quickStopResult Didn't find anything to stop and parse is a Turn off, returning .unsupported for other domains to handle", v182, 2u);
          MEMORY[0x26D6266E0](v182, -1, -1);
        }

        v205(v178, v179);
        v94 = 0x8000000000000000;
        goto LABEL_28;
      }

      v183 = v211;
      v184 = v234;
      v203(v211, v202, v234);
      v185 = sub_268B37A34();
      v186 = sub_268B37F04();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *v187 = 0;
        _os_log_impl(&dword_2688BB000, v185, v186, "QuickStopUtil#quickStopResult Didn't find anything to stop. Returning QuickStopNothingToStop flow", v187, 2u);
        MEMORY[0x26D6266E0](v187, -1, -1);
      }

      v205(v183, v184);
      v98 = *(v31 + 40);
      v99 = (v31 + 16);
LABEL_26:
      __swift_project_boxed_opaque_existential_1(v99, v98);
      sub_268B08224();
      goto LABEL_27;
    }

    sub_268A7FA0C(v77 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v110, v29, type metadata accessor for QuickStopContext);
    v80 = *&v29[v16[5]];
    if (v80 - 1 >= 4)
    {
      if (v80)
      {
        goto LABEL_149;
      }

      v111 = v29[v16[13]];
      sub_268A7F9B4(v29, type metadata accessor for QuickStopContext);
      if (v111 == 1)
      {

        v112 = v224;
        v113 = v234;
        v203(v224, v202, v234);
        v114 = sub_268B37A34();
        v115 = sub_268B37F04();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_2688BB000, v114, v115, "QuickStopUtil#quickStopResult Barged in over Home Anouncement. Reforming to Home Communication to stop the announcement", v116, 2u);
          MEMORY[0x26D6266E0](v116, -1, -1);
        }

        v205(v112, v113);
        v94 = 0x4000000000000002;
        goto LABEL_28;
      }
    }

    else
    {
      sub_268A7F9B4(v29, type metadata accessor for QuickStopContext);
    }

    ++v110;
  }

  v117 = sub_268A7EAB4(v77, 2uLL);
  if (v117 != 4)
  {
    LODWORD(v79) = v117;

    v129 = v229;
    v130 = v234;
    v203(v229, v202, v234);
    v131 = sub_268B37A34();
    v132 = sub_268B37F04();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = v205;
      v134 = 0x6D72616C61;
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&v235 = v136;
      *v135 = 136315394;
      v137 = 0xE500000000000000;
      v138 = v136;
      v139 = 0x6D72616C61;
      switch(v79)
      {
        case 1:
          v139 = 0x72656D6974;
          break;
        case 2:
          v139 = 0xD000000000000010;
          v137 = 0x8000000268B58FF0;
          break;
        case 3:
          v139 = 0x656E6F6870;
          break;
        default:
          break;
      }

      v172 = sub_26892CDB8(v139, v137, &v235);

      *(v135 + 4) = v172;
      *(v135 + 12) = 2080;
      v173 = 0xE500000000000000;
      switch(v79)
      {
        case 0:
          goto LABEL_114;
        case 1:
          v134 = 0x72656D6974;
          goto LABEL_114;
        case 2:
          v134 = 0xD000000000000010;
          v173 = 0x8000000268B58FF0;
          goto LABEL_114;
        case 3:
          v134 = 0x656E6F6870;
LABEL_114:
          v174 = sub_26892CDB8(v134, v173, &v235);

          *(v135 + 14) = v174;
          _os_log_impl(&dword_2688BB000, v131, v132, "QuickStopUtil#quickStopResult Nearby device has firing %s. Reforming to %s domain", v135, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6266E0](v138, -1, -1);
          MEMORY[0x26D6266E0](v135, -1, -1);

          v133(v229, v130);
          goto LABEL_106;
        default:
          goto LABEL_150;
      }
    }

    v127 = v129;
    v128 = v130;
LABEL_105:
    v205(v127, v128);
LABEL_106:
    a3 = v213;
    v94 = v79 | 0x4000000000000000;
    goto LABEL_107;
  }

  v118 = *(v31 + 208);
  __swift_project_boxed_opaque_existential_1((v31 + 176), *(v31 + 200));
  v119 = sub_268B36F84();
  v29 = v227;
  v120 = v228;
  if (v119)
  {
    for (i = 0; v65 != i; ++i)
    {
      if (i >= *(v77 + 16))
      {
        goto LABEL_145;
      }

      sub_268A7FA0C(v77 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * i, v29, type metadata accessor for QuickStopContext);
      v80 = *&v29[v16[5]];
      if (v80 - 1 >= 4)
      {
        if (v80)
        {
          goto LABEL_149;
        }

        v121 = v29[v16[14]];
        sub_268A7F9B4(v29, type metadata accessor for QuickStopContext);
        if (v121 == 1)
        {

          v122 = v214;
          v123 = v234;
          v203(v214, v202, v234);
          v124 = sub_268B37A34();
          v125 = sub_268B37F04();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&dword_2688BB000, v124, v125, "QuickStopUtil#quickStopResult Local device has ongoing phone call. Reforming to phone domain", v126, 2u);
            MEMORY[0x26D6266E0](v126, -1, -1);
          }

          v205(v122, v123);
          v94 = 0x4000000000000003;
          goto LABEL_28;
        }
      }

      else
      {
        sub_268A7F9B4(v29, type metadata accessor for QuickStopContext);
      }
    }
  }

  for (i = 0; v65 != i; ++i)
  {
    if (i >= *(v77 + 16))
    {
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      swift_once();
      goto LABEL_3;
    }

    sub_268A7FA0C(v77 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * i, v120, type metadata accessor for QuickStopContext);
    v80 = *(v120 + v16[5]);
    if (v80 >= 3)
    {
      if (v80 - 3 > 1)
      {
        goto LABEL_149;
      }

      sub_268A7F9B4(v120, type metadata accessor for QuickStopContext);
    }

    else
    {
      v140 = *(v120 + v16[11]);
      sub_268A7F9B4(v120, type metadata accessor for QuickStopContext);
      if (v140 == 1)
      {

        v152 = v223;
        v153 = v234;
        v203(v223, v202, v234);
        v154 = sub_268B37A34();
        v155 = sub_268B37F04();
        if (os_log_type_enabled(v154, v155))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          v146 = "QuickStopUtil#quickStopResult Local or nearby device has playing media. Returning PauseMedia flow";
LABEL_87:
          _os_log_impl(&dword_2688BB000, v154, v155, v146, v145, 2u);
          MEMORY[0x26D6266E0](v145, -1, -1);
        }

        goto LABEL_88;
      }
    }
  }

  v141 = sub_268A7EAB4(v77, 4uLL);
  if (v141 != 4)
  {
    LODWORD(v79) = v141;

    v157 = v225;
    v158 = v234;
    v203(v225, v202, v234);
    v76 = sub_268B37A34();
    LOBYTE(v77) = sub_268B37F04();
    if (os_log_type_enabled(v76, v77))
    {
      v17 = v205;
      v31 = 0x6D72616C61;
      v75 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v235 = v159;
      *v75 = 136315394;
      v160 = 0xE500000000000000;
      v65 = v159;
      v161 = 0x6D72616C61;
      switch(v79)
      {
        case 1:
          v161 = 0x72656D6974;
          goto LABEL_134;
        case 2:
          goto LABEL_132;
        case 3:
          v161 = 0x656E6F6870;
          goto LABEL_134;
        default:
          goto LABEL_134;
      }
    }

    v127 = v157;
    v128 = v158;
    goto LABEL_105;
  }

  v142 = 0;
  v143 = v232;
  do
  {
    if (v65 == v142)
    {
      v162 = 0;
      a3 = v213;
      v163 = v230;
      while (v65 != v162)
      {
        v80 = *(v77 + 16);
        if (v162 >= v80)
        {
          goto LABEL_148;
        }

        sub_268A7FA0C(v77 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v162, v163, type metadata accessor for QuickStopContext);
        v80 = *(v163 + v16[5]);
        if (v80 - 1 >= 4)
        {
          if (v80)
          {
            goto LABEL_149;
          }

          v164 = *(v230 + v16[10]);
          sub_268A7F9B4(v230, type metadata accessor for QuickStopContext);
          v165 = v164 == 1;
          v163 = v230;
          if (v165)
          {

            v166 = v208;
            v167 = v234;
            v203(v208, v202, v234);
            v168 = sub_268B37A34();
            v169 = sub_268B37F04();
            if (os_log_type_enabled(v168, v169))
            {
              v170 = swift_slowAlloc();
              *v170 = 0;
              _os_log_impl(&dword_2688BB000, v168, v169, "QuickStopUtil#quickStopResult Local device has running timer. Reforming to timer domain", v170, 2u);
              v171 = v170;
              a3 = v213;
              MEMORY[0x26D6266E0](v171, -1, -1);
            }

            v94 = 0x4000000000000001;

            v205(v166, v167);
            goto LABEL_107;
          }
        }

        else
        {
          sub_268A7F9B4(v163, type metadata accessor for QuickStopContext);
        }

        ++v162;
      }

      v175 = *(v31 + 128);
      __swift_project_boxed_opaque_existential_1((v31 + 96), *(v31 + 120));
      if ((sub_268B34CF4() & 1) == 0)
      {
        v176 = *(v31 + 128);
        __swift_project_boxed_opaque_existential_1((v31 + 96), *(v31 + 120));
        if ((sub_268B34CB4() & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      v29 = v220;
      v16 = v219;
      sub_268B38024();

      v77 = v217;
      v177 = v221;
      (*(v217 + 104))(v221, *MEMORY[0x277D5F700], v16);
      __swift_storeEnumTagSinglePayload(v177, 0, 1, v16);
      v75 = *(v216 + 48);
      v17 = v218;
      sub_26890C964(v29, v218, &qword_2802A5C80, &qword_268B3CE20);
      sub_26890C964(v177, v17 + v75, &qword_2802A5C80, &qword_268B3CE20);
      if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
      {
        sub_2688C058C(v177, &qword_2802A5C80, &qword_268B3CE20);
        if (__swift_getEnumTagSinglePayload(v17 + v75, 1, v16) == 1)
        {
          sub_2688C058C(v17, &qword_2802A5C80, &qword_268B3CE20);
          goto LABEL_141;
        }
      }

      else
      {
        v110 = v212;
        sub_26890C964(v17, v212, &qword_2802A5C80, &qword_268B3CE20);
        if (__swift_getEnumTagSinglePayload(v17 + v75, 1, v16) != 1)
        {
          goto LABEL_140;
        }

        sub_2688C058C(v221, &qword_2802A5C80, &qword_268B3CE20);
        (*(v77 + 8))(v110, v16);
      }

      sub_2688C058C(v17, &qword_2802A5C78, &unk_268B49770);
      goto LABEL_123;
    }

    v80 = *(v77 + 16);
    if (v142 >= v80)
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      *&v235 = v80;
      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268A7E84CLL);
    }

    sub_268A7FA0C(v77 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v142++, v143, type metadata accessor for QuickStopContext);
    v144 = *(v143 + v16[11]);
    sub_268A7F9B4(v143, type metadata accessor for QuickStopContext);
  }

  while ((v144 & 1) == 0);

  v152 = v222;
  v153 = v234;
  v203(v222, v202, v234);
  v154 = sub_268B37A34();
  v155 = sub_268B37F04();
  if (os_log_type_enabled(v154, v155))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    v146 = "QuickStopUtil#quickStopResult Far device has playing media. Returning PauseMedia flow";
    goto LABEL_87;
  }

LABEL_88:

  v205(v152, v153);
  __swift_project_boxed_opaque_existential_1((v31 + 16), *(v31 + 40));
  sub_268B0366C();
LABEL_27:
  v94 = v86;
LABEL_28:
  a3 = v213;
LABEL_107:
  *a3 = v94;
}