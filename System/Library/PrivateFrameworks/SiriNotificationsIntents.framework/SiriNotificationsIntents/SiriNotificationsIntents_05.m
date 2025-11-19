uint64_t sub_268530A58()
{
  v1 = v0[16];
  v2 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_9_1();
  v4 = v0[18];

  return v3();
}

uint64_t sub_268530AF0(uint64_t a1, unint64_t a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_268567CD0();
  sub_268509368(a2, v11);
  (*(v4 + 8))(v7, v3);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

uint64_t sub_268530C44()
{
  OUTLINED_FUNCTION_5();
  v1[110] = v0;
  v1[109] = v2;
  v1[108] = v3;
  v4 = sub_2685679B0();
  v1[111] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[112] = v5;
  v7 = *(v6 + 64);
  v1[113] = OUTLINED_FUNCTION_39();
  v8 = sub_268567B60();
  v1[114] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[115] = v9;
  v11 = *(v10 + 64);
  v1[116] = OUTLINED_FUNCTION_39();
  v12 = sub_2685689F0();
  v1[117] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[118] = v13;
  v15 = *(v14 + 64);
  v1[119] = OUTLINED_FUNCTION_39();
  v16 = sub_2685688F0();
  v1[120] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v1[121] = v17;
  v19 = *(v18 + 64);
  v1[122] = OUTLINED_FUNCTION_39();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64) + 15;
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_268530E14()
{
  v139 = (v0 + 856);
  v132 = *(v0 + 880);
  v2 = *(v132 + 104);
  v3 = sub_2684DEAF0(v2);

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D61C170](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
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
      goto LABEL_111;
    }

    v1 = v138;
    v9 = *(v138 + 992);
    sub_2684D4298(v7 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v9);
    v10 = sub_268568810();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    v12 = *(v138 + 992);
    if (EnumTagSinglePayload == 1)
    {

      sub_2684D199C(v12, &qword_280282AF0, &qword_26856A1E0);
      ++v5;
    }

    else
    {
      v13 = sub_268568800();
      v1 = v14;

      v15 = *(*(v10 - 8) + 8);
      v16 = OUTLINED_FUNCTION_23_7();
      v17(v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v6 + 16);
        sub_26854BB3C();
        v6 = v21;
      }

      v18 = *(v6 + 16);
      if (v18 >= *(v6 + 24) >> 1)
      {
        sub_26854BB3C();
        v6 = v22;
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v1;
      v5 = v8;
    }
  }

  v23 = v138;
  v24 = *(v138 + 880);

  v25 = *(v24 + 16);
  *(v138 + 1000) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283798, &unk_26856EF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856E8F0;
  *(inited + 32) = 0x73656D614E707061;
  *(inited + 40) = 0xE800000000000000;
  v131 = inited;
  v3 = v132;
  v27 = sub_2684DEAF0(*(v132 + 104));
  v129 = v25;
  if (v27 > 4)
  {
    sub_26853DC20(3, v6);
    OUTLINED_FUNCTION_25_4();
    if ((v2 & 1) == 0)
    {
      goto LABEL_23;
    }

    v3 = sub_2685691E0();
    swift_unknownObjectRetain_n();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    v30 = (v2 >> 1) - v138;
    if (!__OFSUB__(v2 >> 1, v138))
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  sub_26853DC20(4, v6);
  OUTLINED_FUNCTION_25_4();
  if ((v2 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2685691E0();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x277D84F90];
  }

  v29 = *(v35 + 16);

  v30 = (v2 >> 1) - v138;
  if (__OFSUB__(v2 >> 1, v138))
  {
LABEL_116:
    __break(1u);
    return MEMORY[0x2821B7E60](v36, v37, v38, v39, v40, v41, v42);
  }

LABEL_27:
  if (v29 != v30)
  {
    goto LABEL_114;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v34)
  {
    v34 = MEMORY[0x277D84F90];
    v3 = v132;
    goto LABEL_31;
  }

  v3 = v132;
  while (1)
  {
    v43 = *(v138 + 872);
    v44 = *(v138 + 864);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    v2 = v131;
    *(v131 + 48) = v34;
    *(v131 + 72) = v45;
    strcpy((v131 + 80), "isConclusion");
    *(v131 + 93) = 0;
    *(v131 + 94) = -5120;
    v46 = sub_268567FA0();
    v47 = MEMORY[0x277D839B0];
    *(v131 + 96) = v46 & 1;
    *(v131 + 120) = v47;
    strcpy((v131 + 128), "isFirstWindow");
    *(v131 + 142) = -4864;
    *(v131 + 144) = sub_268567FC0() & 1;
    *(v131 + 168) = v47;
    strcpy((v131 + 176), "isLastWindow");
    *(v131 + 189) = 0;
    *(v131 + 190) = -5120;
    *(v131 + 192) = sub_268567FB0() & 1;
    *(v131 + 216) = v47;
    *(v131 + 224) = 0xD000000000000016;
    *(v131 + 232) = 0x8000000268572CE0;
    *(v131 + 240) = sub_268567F70() & 1;
    *(v131 + 264) = v47;
    *(v131 + 272) = 0x736D657469;
    *(v131 + 280) = 0xE500000000000000;
    v48 = sub_2684DEAF0(v43);
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      break;
    }

    v23 = v48;
    v143 = MEMORY[0x277D84F90];
    sub_2684DD058(0, v48 & ~(v48 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v50 = 0;
      v51 = *(v138 + 872);
      v49 = v143;
      v52 = v51 & 0xC000000000000001;
      v141 = v51 + 32;
      do
      {
        if (v52)
        {
          v53 = MEMORY[0x26D61C170](v50, *(v138 + 872));
        }

        else
        {
          v53 = *(v141 + 8 * v50);
        }

        *v139 = v53;
        type metadata accessor for NotificationsApp(0);
        sub_2685329F8(&qword_2802837A0, 255, type metadata accessor for NotificationsApp);
        v54 = sub_2685688B0();

        v56 = *(v143 + 16);
        v55 = *(v143 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_2684DD058((v55 > 1), v56 + 1, 1);
        }

        ++v50;
        *(v143 + 16) = v56 + 1;
        *(v143 + 8 * v56 + 32) = v54;
      }

      while (v23 != v50);
      v3 = v132;
      break;
    }

    __break(1u);
LABEL_114:
    swift_unknownObjectRelease();
    v3 = v132;
LABEL_23:
    v31 = OUTLINED_FUNCTION_23_7();
    sub_26853D830(v31, v32, v23, v2);
    v34 = v33;
LABEL_31:
    swift_unknownObjectRelease();
  }

  v57 = *(v138 + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837A8, &unk_26856EFA0);
  *(v131 + 288) = v49;
  OUTLINED_FUNCTION_8_15();
  *(v60 + 312) = v58;
  *(v60 + 320) = v59;
  *(v60 + 328) = v61;
  *(v60 + 336) = (*(v57 + 312) & 1) == 0;
  *(v60 + 360) = MEMORY[0x277D839B0];
  *(v60 + 368) = 0x6574496C61746F74;
  *(v60 + 376) = 0xEA0000000000736DLL;
  v62 = *(v3 + 104);
  v63 = sub_2684DEAF0(v62);
  v64 = v62 & 0xC000000000000001;
  v135 = v62 + 32;
  v136 = v62 & 0xFFFFFFFFFFFFFF8;
  v130 = v62;

  v65 = 0;
  v1 = MEMORY[0x277D84F90];
  v133 = v62 & 0xC000000000000001;
  v134 = v63;
  while (v65 != v63)
  {
    if (v64)
    {
      v66 = MEMORY[0x26D61C170](v65, v130);
    }

    else
    {
      if (v65 >= *(v136 + 16))
      {
        goto LABEL_103;
      }

      v66 = *(v135 + 8 * v65);
    }

    v67 = __OFADD__(v65, 1);
    v68 = v65 + 1;
    if (v67)
    {
      goto LABEL_102;
    }

    v69 = *(v66 + 24);

    if (v69 >> 62)
    {
      v3 = sub_2685690A0();
    }

    else
    {
      v3 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v1 >> 62;
    v142 = v68;
    if (v1 >> 62)
    {
      v71 = sub_2685690A0();
    }

    else
    {
      v71 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v71 + v3;
    if (__OFADD__(v71, v3))
    {
      goto LABEL_104;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v70)
      {
LABEL_60:
        sub_2685690A0();
      }

      else
      {
        v73 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_59:
        v75 = *(v73 + 16);
      }

      v1 = sub_268569000();
      v73 = v1 & 0xFFFFFFFFFFFFFF8;
      v74 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_62;
    }

    if (v70)
    {
      goto LABEL_60;
    }

    v73 = v1 & 0xFFFFFFFFFFFFFF8;
    v74 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v74 < v72)
    {
      goto LABEL_59;
    }

LABEL_62:
    v140 = v1;
    v76 = *(v73 + 16);
    v77 = v74 - v76;
    v78 = v73 + 8 * v76;
    v137 = v73;
    if (v69 >> 62)
    {
      v80 = sub_2685690A0();
      if (!v80)
      {
        goto LABEL_76;
      }

      v1 = v80;
      v81 = sub_2685690A0();
      if (v77 < v81)
      {
        goto LABEL_108;
      }

      if (v1 < 1)
      {
        goto LABEL_109;
      }

      v79 = v81;
      OUTLINED_FUNCTION_2_20();
      sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320);
      for (i = 0; i != v1; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v83 = sub_2684DEA8C(v6, i, v69);
        v85 = *v84;

        v83(v6, 0);
        *(v78 + 32 + 8 * i) = v85;
      }

      v64 = v133;
      v63 = v134;
LABEL_72:

      v1 = v140;
      v65 = v142;
      if (v79 < v3)
      {
        goto LABEL_105;
      }

      if (v79 > 0)
      {
        v86 = *(v137 + 16);
        v67 = __OFADD__(v86, v79);
        v87 = v86 + v79;
        if (v67)
        {
          goto LABEL_106;
        }

        *(v137 + 16) = v87;
      }
    }

    else
    {
      v79 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v79)
      {
        if (v77 < v79)
        {
          goto LABEL_107;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_72;
      }

LABEL_76:

      v65 = v142;
      if (v3 > 0)
      {
        goto LABEL_105;
      }
    }
  }

  v88 = *(v138 + 880);

  v89 = sub_2684DEAF0(v1);

  v6 = MEMORY[0x277D83B88];
  v3 = v131;
  *(v131 + 384) = v89;
  OUTLINED_FUNCTION_8_15();
  *(v131 + 408) = v6;
  *(v131 + 416) = v90 + 3;
  *(v131 + 424) = v91;
  *(v131 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837B8, &unk_26856EFB0);
  v92 = *(v88 + 304);
  v93 = v92 + 1;
  if (__OFADD__(v92, 1))
  {
    goto LABEL_110;
  }

  v1 = v132;
  v94 = *(v132 + 104);

  v95 = OUTLINED_FUNCTION_23_7();
  sub_26855D244(v95, v96);
  OUTLINED_FUNCTION_31_5();

  if (v93)
  {
    v97 = *(v93 + 24);

    v98 = sub_2684DEAF0(v97);
  }

  else
  {
    v98 = 0;
  }

  *(v131 + 432) = v98;
  *(v131 + 440) = v93 == 0;
  *(v131 + 464) = 0x4E7070417478656ELL;
  *(v131 + 472) = 0xEB00000000656D61;
  *(v131 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  v99 = *(v88 + 304);
  v100 = v99 + 1;
  if (__OFADD__(v99, 1))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v101 = *(v132 + 104);

  v102 = OUTLINED_FUNCTION_23_7();
  sub_26855D244(v102, v103);
  OUTLINED_FUNCTION_31_5();

  if (!v100)
  {
    goto LABEL_89;
  }

  v104 = *(v138 + 984);
  sub_2684D4298(v100 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v104);

  v105 = sub_268568810();
  if (__swift_getEnumTagSinglePayload(v104, 1, v105) == 1)
  {
    sub_2684D199C(*(v138 + 984), &qword_280282AF0, &qword_26856A1E0);
LABEL_89:
    *(v131 + 480) = 0;
    *(v131 + 488) = 0;
  }

  else
  {
    v106 = sub_268568800();
    v108 = v107;
    v109 = *(*(v105 - 8) + 8);
    v110 = OUTLINED_FUNCTION_23_7();
    v111(v110);
    *(v131 + 480) = v106;
    *(v131 + 488) = v108;
  }

  v112 = *(v138 + 872);
  *(v131 + 512) = 0x6953776F646E6977;
  *(v131 + 520) = 0xEA0000000000657ALL;
  v113 = v112 & 0xC000000000000001;
  sub_2684DEAFC(0, (v112 & 0xC000000000000001) == 0, v112);
  v4 = *(v138 + 872);
  if (!v113)
  {
    v114 = *(v4 + 32);

    goto LABEL_93;
  }

LABEL_112:
  v114 = MEMORY[0x26D61C170](0, v4);
LABEL_93:
  v115 = *(v114 + 24);

  sub_2684DEAF0(v115);
  OUTLINED_FUNCTION_31_5();

  *(v3 + 552) = v6;
  *(v3 + 528) = v114;
  OUTLINED_FUNCTION_8_15();
  v117 = v116 + 5;
  *(v3 + 560) = v116 + 5;
  *(v3 + 568) = v118;
  if (sub_2684DEAF0(*(v1 + 104)) < 5)
  {
    v119 = 0;
    goto LABEL_97;
  }

  v36 = sub_2684DEAF0(*(v1 + 104));
  if (__OFSUB__(v36, 4))
  {
    __break(1u);
    goto LABEL_116;
  }

  v119 = v36 - 3;
LABEL_97:
  v120 = *(v138 + 976);
  v121 = *(v138 + 880);
  sub_2685687E0();
  *(v3 + 600) = v6;
  *(v3 + 576) = v119;
  *(v3 + 608) = v117;
  *(v3 + 616) = 0x80000002685735C0;
  v122 = *(v121 + 320) % 3;
  *(v3 + 648) = v6;
  *(v3 + 624) = v122;
  *(v3 + 656) = 0xD000000000000010;
  *(v3 + 664) = 0x8000000268571A90;
  LOBYTE(v122) = *(v121 + 296);
  *(v3 + 696) = MEMORY[0x277D839B0];
  *(v3 + 672) = v122;
  v123 = sub_268568AD0();
  *(v138 + 1008) = v123;
  sub_2685686F0();
  sub_2685685F0();
  v124 = sub_2685685D0();
  v125 = sub_268516318(v121 + 184, v124);
  *(v138 + 1016) = v125;

  *(v138 + 752) = 0;
  *(v138 + 720) = 0u;
  *(v138 + 736) = 0u;
  sub_2685688E0();
  v126 = *(MEMORY[0x277D55C30] + 4);
  v127 = swift_task_alloc();
  *(v138 + 1024) = v127;
  *v127 = v138;
  v127[1] = sub_268531BC8;
  v42 = *(v138 + 976);
  v37 = 0xD000000000000033;
  v38 = 0x8000000268573580;
  v41 = v138 + 720;
  v36 = v129;
  v39 = v123;
  v40 = v125;

  return MEMORY[0x2821B7E60](v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_268531BC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[104] = v1;
  v2[105] = v4;
  v2[106] = v0;
  v5 = v2[128];
  v6 = v2[127];
  v7 = v2[126];
  v8 = v2[125];
  v9 = v2[122];
  v10 = v2[121];
  v11 = v2[120];
  v12 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v13 = v12;
  v3[129] = v0;

  (*(v10 + 8))(v9, v11);
  sub_2684D199C((v3 + 90), &qword_280282DB0, &unk_26856B440);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_268531D9C()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[119];
  v2 = v0[118];
  __swift_project_value_buffer(v0[117], qword_28028B348);
  v3 = OUTLINED_FUNCTION_12_2();
  v4(v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v7);
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationsFromMultipleAppsPatternFlowProvider executePatternForWindow | pattern successfully executed", v2, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v8 = v0[119];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[108];

  (*(v9 + 8))(v8, v10);
  result = sub_268567FB0();
  if (result)
  {
    v13 = v0[116];
    v14 = v0[115];
    v15 = v0[114];
    v16 = v0[113];
    v17 = v0[112];
    v18 = v0[111];
    sub_268567990();
    v32 = v0[99];
    __swift_project_boxed_opaque_existential_1(v0 + 95, v0[98]);
    sub_268567A20();
    (*(v14 + 104))(v13, *MEMORY[0x277D5BC10], v15);
    (*(v17 + 104))(v16, *MEMORY[0x277D5B958], v18);
    sub_2684EBB74(1, 3, v13, v16, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    result = __swift_destroy_boxed_opaque_existential_0(v0 + 95);
  }

  v19 = v0[110];
  v20 = *(v19 + 304);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v0[105];
    v24 = v0[124];
    v25 = v0[123];
    v26 = v0[122];
    v27 = v0[119];
    v28 = v0[116];
    v29 = v0[113];
    *(v19 + 304) = v22;

    v30 = OUTLINED_FUNCTION_3_18();

    return v31(v30);
  }

  return result;
}

uint64_t sub_268532028()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[119];
  v5 = v0[116];
  v6 = v0[113];

  OUTLINED_FUNCTION_9_1();
  v8 = v0[129];

  return v7();
}

void sub_2685320D4()
{
  v1 = *(v0 + 320);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 320) = v3;
  }
}

uint64_t sub_2685320EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  sub_2684CC8D4(v0 + 144);
  v4 = *(v0 + 280);

  return v0;
}

uint64_t sub_26853214C()
{
  sub_2685320EC();

  return MEMORY[0x2821FE8D8](v0, 328, 7);
}

uint64_t sub_2685321BC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 280);

  return v1;
}

uint64_t sub_2685321F0()
{
  v1 = sub_2685678D0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_268532250()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26852EA90();
}

uint64_t sub_2685322E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26852ECF4();
}

uint64_t sub_268532370()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26852EF80();
}

uint64_t sub_268532400()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return sub_26852F1E4();
}

uint64_t sub_2685324AC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_26853013C();
}

uint64_t sub_268532554(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_26852F6DC();
}

uint64_t sub_268532644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685326BC()
{
  v1 = sub_268567FF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_268532794()
{
  v2 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_268532894;

  return sub_26852FFA0();
}

uint64_t sub_268532894()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_268532988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D0, &unk_26856EB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685329F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_268567850();
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return sub_268567ED0();
}

void OUTLINED_FUNCTION_14_6()
{
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[2];
  v9 = v1[3];
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return sub_2685690A0();
}

void OUTLINED_FUNCTION_35_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_268532BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 26))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268532C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for UnsupportedNotificationsCATs()
{
  result = qword_280283800;
  if (!qword_280283800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268532D40(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268532D58()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x80000002685713E0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  v4 = v3[1];
  v9 = (v3 + *v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_26856A540;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_268532E88;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return v9(v6, 0xD000000000000024, 0x8000000268573180, v2);
}

uint64_t sub_268532E88()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26850FEB4, 0, 0);
  }

  else
  {
    v8 = *(v2 + 32);

    OUTLINED_FUNCTION_9_1();

    return v9();
  }
}

uint64_t sub_268532FB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268532FCC()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_26856A540;
  *(v2 + 32) = 0x656D614E707061;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2685687A0();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v9 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26853311C;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, 0xD000000000000031, 0x8000000268573620, v2);
}

uint64_t sub_26853311C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26850D9D4, 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    OUTLINED_FUNCTION_9_1();

    return v9();
  }
}

uint64_t sub_268533248(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26853329C(a1, a2);
}

uint64_t sub_26853329C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2685688F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_268568700();
  (*(v5 + 8))(a2, v4);
  sub_2684F3DF0(a1);
  return v12;
}

uint64_t sub_268533410@<X0>(uint64_t a1@<X8>)
{
  v20[2] = a1;
  v2 = sub_2685679B0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268567B60();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567990();
  v20[1] = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_268567A20();
  (*(v13 + 104))(v17, *MEMORY[0x277D5BC10], v10);
  (*(v5 + 104))(v9, *MEMORY[0x277D5B950], v2);
  if (*(v1 + 33))
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  sub_2684EBB74(2, 9, v17, v9, 8, 0, 0, 0, 0, v18 | *(v1 + 32));
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v21);
  return sub_268567D20();
}

uint64_t sub_268533628(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 56) = a3;
  memcpy((v7 + 64), __src, 0x80uLL);
  *(v7 + 32) = a5 & 1;
  *(v7 + 33) = HIBYTE(a5) & 1;
  return v7;
}

uint64_t sub_268533678()
{
  type metadata accessor for RNReadHighlightWindowFlow();
  sub_2685347A8();
  return sub_268567900();
}

uint64_t sub_2685336D4()
{
  OUTLINED_FUNCTION_5();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(sub_268567B10() - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = sub_268567F20();
  v1[20] = v4;
  v5 = *(v4 - 8);
  v1[21] = v5;
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = sub_2685689F0();
  v1[23] = v7;
  v8 = *(v7 - 8);
  v1[24] = v8;
  v9 = *(v8 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26853382C()
{
  OUTLINED_FUNCTION_19_3();
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[28] = v4;
  v5 = *(v3 + 16);
  v0[29] = v5;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "CompletingFlow#execute", v8, 2u);
    OUTLINED_FUNCTION_2();
  }

  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[18];

  v0[31] = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_34();
  v14(v13);
  v15 = *(v12 + 48);
  v19 = (*(v12 + 40) + **(v12 + 40));
  v16 = *(*(v12 + 40) + 4);
  v17 = swift_task_alloc();
  v0[32] = v17;
  *v17 = v0;
  v17[1] = sub_268533A1C;

  return v19();
}

uint64_t sub_268533A1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 256);
  *v3 = *v1;
  *(v2 + 264) = v6;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268533B1C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  sub_268567AE0();
  sub_268567ED0();
  v4 = sub_268567D00();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[35] = sub_268567CF0();
  v7 = *(MEMORY[0x277D5BD48] + 4);
  v12 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_268533C2C;
  v9 = v0[33];
  v10 = v0[22];

  return v12(v0 + 2, v9, v10);
}

uint64_t sub_268533C2C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 296) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268533D40()
{
  v27 = v0;
  v1 = *(v0 + 240);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 224), *(v0 + 184));
  sub_2684D57FC(v0 + 16, v0 + 56);
  v2 = sub_2685689E0();
  v3 = sub_268568DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v25 = *(v0 + 248);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = OUTLINED_FUNCTION_4();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    sub_2684D57FC(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283810, &qword_26856ECF8);
    v9 = sub_268568B70();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v12 = sub_2684EABEC(v9, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2684CA000, v2, v3, "CompletingFlow#execute output=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6_19();

    v13 = OUTLINED_FUNCTION_34();
    v25(v13);
  }

  else
  {
    v14 = *(v0 + 248);
    v15 = *(v0 + 208);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v18 = OUTLINED_FUNCTION_34();
    v14(v18);
  }

  v19 = *(v0 + 144);
  v20 = v19[21];
  v21 = v19[22];
  __swift_project_boxed_opaque_existential_1(v19 + 18, v20);
  v22 = *(MEMORY[0x277D5BF40] + 4);
  v23 = swift_task_alloc();
  *(v0 + 304) = v23;
  *v23 = v0;
  v23[1] = sub_268533F74;

  return MEMORY[0x2821BB5D0](v0 + 16, v20, v21);
}

uint64_t sub_268533F74()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26853406C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[33];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[18];
  v6 = *(v5 + 24);
  (*(v5 + 16))();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_34();
  v9(v8);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_9_1();

  return v10();
}

uint64_t sub_268534134()
{
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 272);
  v3 = OUTLINED_FUNCTION_1_18();
  v4(v3);
  v5 = v2;
  v6 = sub_2685689E0();
  v7 = sub_268568DE0();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_4();
    v8 = OUTLINED_FUNCTION_12_15();
    *v1 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_4_20(&dword_2684CA000, v11, v12, "CompletingFlow#execute error=%@");
    sub_2684CECB8(v8);
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_3_19();
  v14(v13);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_9_1();

  return v15();
}

uint64_t sub_268534280()
{
  OUTLINED_FUNCTION_19_3();
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 296);
  v6 = OUTLINED_FUNCTION_1_18();
  v7(v6);
  v8 = v5;
  v9 = sub_2685689E0();
  LOBYTE(v3) = sub_268568DE0();

  if (os_log_type_enabled(v9, v3))
  {
    OUTLINED_FUNCTION_4();
    v10 = OUTLINED_FUNCTION_12_15();
    *v1 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_4_20(&dword_2684CA000, v13, v14, "CompletingFlow#execute error=%@");
    sub_2684CECB8(v10);
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v15 = OUTLINED_FUNCTION_3_19();
  v16(v15);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_9_1();

  return v17();
}

uint64_t sub_2685343F4()
{
  OUTLINED_FUNCTION_19_3();
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 312);
  v6 = OUTLINED_FUNCTION_1_18();
  v7(v6);
  v8 = v5;
  v9 = sub_2685689E0();
  LOBYTE(v3) = sub_268568DE0();

  if (os_log_type_enabled(v9, v3))
  {
    OUTLINED_FUNCTION_4();
    v10 = OUTLINED_FUNCTION_12_15();
    *v1 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_4_20(&dword_2684CA000, v13, v14, "CompletingFlow#execute error=%@");
    sub_2684CECB8(v10);
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v15 = OUTLINED_FUNCTION_3_19();
  v16(v15);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_9_1();

  return v17();
}

uint64_t sub_268534570(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_268567F10();
  sub_268516DA4(0, 0xE000000000000000, *(a2 + 56), v6);
  v7 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_268567EF0();
}

void *sub_26853462C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  sub_2684CC8D4((v0 + 8));
  return v0;
}

uint64_t sub_268534664()
{
  sub_26853462C();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_2685346E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return sub_2685336D4();
}

unint64_t sub_2685347A8()
{
  result = qword_280283818;
  if (!qword_280283818)
  {
    type metadata accessor for RNReadHighlightWindowFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283818);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20()
{
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[17];

  return sub_268567C40();
}

uint64_t OUTLINED_FUNCTION_1_18()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[23];
  return v0[25];
}

uint64_t OUTLINED_FUNCTION_3_19()
{
  v1 = v0[31];
  result = v0[25];
  v3 = v0[23];
  v4 = v0[24] + 8;
  return result;
}

void OUTLINED_FUNCTION_4_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_19()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return swift_slowAlloc();
}

uint64_t sub_2685348A4()
{
  OUTLINED_FUNCTION_5();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_268534934;

  return sub_268534B0C();
}

uint64_t sub_268534934()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v8 = v7;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;

  return MEMORY[0x2822009F8](sub_268534A40, v6, 0);
}

uint64_t sub_268534A40()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_268534AB0, 0, 0);
}

uint64_t sub_268534AB0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  sub_268568E40();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_268534B0C()
{
  v1[13] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = sub_2685689F0();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v6 = sub_268567BB0();
  v1[25] = v6;
  v7 = *(v6 - 8);
  v1[26] = v7;
  v8 = *(v7 + 64) + 15;
  v1[27] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283820, &qword_26856ED88) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = sub_268567D90();
  v1[30] = v10;
  v11 = *(v10 - 8);
  v1[31] = v11;
  v12 = *(v11 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v14 = sub_268567520();
  v1[35] = v14;
  v15 = *(v14 - 8);
  v1[36] = v15;
  v16 = *(v15 + 64) + 15;
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268534DF4, 0, 0);
}

uint64_t sub_268535838()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  *(v2 + 400) = v0;

  if (v0)
  {
    v8 = *(v2 + 328);

    v9 = sub_268536F40;
  }

  else
  {
    v9 = sub_268535948;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2685363A4()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v7 = v6;
  v2[52] = v0;

  if (v0)
  {
    v8 = v2[41];
    sub_2684D199C(v2[14], &qword_280282AF0, &qword_26856A1E0);

    v9 = sub_268537204;
  }

  else
  {
    sub_2684D199C(v2[14], &qword_280282AF0, &qword_26856A1E0);
    v9 = sub_2685364E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268536F40()
{
  v63 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[18];
  v3 = v0[16];
  __swift_project_value_buffer(v0[15], qword_28028B348);
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[50];
  v11 = v0[44];
  v12 = v0[45];
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[36];
  v61 = v0[18];
  v16 = v0[16];
  v59 = v0[38];
  v60 = v0[15];
  if (v9)
  {
    v56 = v0[45];
    v17 = OUTLINED_FUNCTION_4();
    v58 = v11;
    v18 = OUTLINED_FUNCTION_51();
    v62 = v18;
    *v17 = 136315138;
    v0[12] = v10;
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v20 = sub_268568B70();
    v51 = v14;
    v22 = sub_2684EABEC(v20, v21, &v62);

    *(v17 + 4) = v22;
    OUTLINED_FUNCTION_61_0(&dword_2684CA000, v23, v24, "URLFormatter replaceText | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v33 = OUTLINED_FUNCTION_42_3(v25, v26, v27, v28, v29, v30, v31, v32, v49, v51, v13, v56, v58, v59, v60, v61);
    v34(v33);
    (*(v15 + 8))(v54, v52);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_42_3(v35, v36, v37, v38, v39, v40, v41, v42, v49, v50, v53, v55, v57, v59, v60, v61);
    v44(v43);
    v45 = OUTLINED_FUNCTION_6_20();
    v46(v45);
  }

  OUTLINED_FUNCTION_9_17();

  OUTLINED_FUNCTION_29_5();

  return v47(0, 0);
}

uint64_t sub_268537204()
{
  v63 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[52];
  v3 = v0[16];
  v2 = v0[17];
  __swift_project_value_buffer(v0[15], qword_28028B348);
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[52];
  v11 = v0[44];
  v12 = v0[45];
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[36];
  v16 = v0[16];
  v61 = v0[17];
  v59 = v0[38];
  v60 = v0[15];
  if (v9)
  {
    v56 = v0[45];
    v17 = OUTLINED_FUNCTION_4();
    v58 = v11;
    v18 = OUTLINED_FUNCTION_51();
    v62 = v18;
    *v17 = 136315138;
    v0[11] = v10;
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v20 = sub_268568B70();
    v51 = v14;
    v22 = sub_2684EABEC(v20, v21, &v62);

    *(v17 + 4) = v22;
    OUTLINED_FUNCTION_61_0(&dword_2684CA000, v23, v24, "URLFormatter replaceText | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v33 = OUTLINED_FUNCTION_42_3(v25, v26, v27, v28, v29, v30, v31, v32, v49, v51, v13, v56, v58, v59, v60, v61);
    v34(v33);
    (*(v15 + 8))(v54, v52);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_42_3(v35, v36, v37, v38, v39, v40, v41, v42, v49, v50, v53, v55, v57, v59, v60, v61);
    v44(v43);
    v45 = OUTLINED_FUNCTION_6_20();
    v46(v45);
  }

  OUTLINED_FUNCTION_9_17();

  OUTLINED_FUNCTION_29_5();

  return v47(0, 0);
}

uint64_t sub_2685374C8()
{
  v0 = sub_2685689F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2685674F0();
  v6 = [v5 _lp_simplifiedDisplayString];

  v7 = sub_268568B20();
  v9 = v8;

  v26 = v7;
  v27 = v9;
  v25[0] = 46;
  v25[1] = 0xE100000000000000;
  sub_2684D166C();
  v10 = sub_268568EE0();
  if (*(v10 + 16) < 2uLL)
  {

    return v7;
  }

  v11 = sub_2685377E4(1, v10);
  if (*(v11 + 16))
  {
    v10 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_268524298(v10);
  v10 = v24;
LABEL_5:
  v12 = *(v10 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12 - 1;
  v14 = v10 + 16 * v13;
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  *(v10 + 16) = v13;

  v26 = v15;
  v27 = v16;
  v7 = sub_268568EF0();
  v9 = v17;

  if (qword_280282960 != -1)
  {
LABEL_14:
    swift_once();
  }

  v18 = __swift_project_value_buffer(v0, qword_28028B348);
  (*(v1 + 16))(v4, v18, v0);

  v19 = sub_2685689E0();
  v20 = sub_268568DC0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2684EABEC(v7, v9, &v26);
    _os_log_impl(&dword_2684CA000, v19, v20, "URLFormatter getDomain | domain: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D61CB30](v22, -1, -1);
    MEMORY[0x26D61CB30](v21, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_2685377E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return a2;
    }

    v27 = 0;
    v4 = 0;
    v29 = *(a2 + 16);
    v5 = a2 + 40;
    v6 = MEMORY[0x277D84F90];
    v28 = MEMORY[0x277D84F90];
    for (i = a2 + 40; ; v5 = i)
    {
      for (j = (v5 + 16 * v4); ; j += 2)
      {
        if (v29 == v4)
        {

          return v28;
        }

        if (v4 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 1);
        v8 = *j;
        v10 = *(v6 + 16);
        if (v10 >= v3)
        {
          break;
        }

        v11 = *j;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2684DCF68(0, v10 + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2684DCF68(v12 > 1, v13 + 1, 1);
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v8;
        ++v4;
      }

      if (v27 >= v10)
      {
        goto LABEL_29;
      }

      v15 = v6 + 16 * v27;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);

      v18 = v28;
      v25 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2684DCF68(0, *(v28 + 16) + 1, 1);
        v18 = v28;
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2684DCF68(v19 > 1, v20 + 1, 1);
        v18 = v28;
      }

      *(v18 + 16) = v20 + 1;
      v28 = v18;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v25;
      *(v21 + 40) = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_268537BA8(v6);
        v6 = result;
      }

      if (v27 >= *(v6 + 16))
      {
        break;
      }

      v22 = v6 + 16 * v27;
      v23 = *(v22 + 40);
      ++v4;
      *(v22 + 32) = v9;
      *(v22 + 40) = v8;

      if ((v27 + 1) < v3)
      {
        v24 = v27 + 1;
      }

      else
      {
        v24 = 0;
      }

      v27 = v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268537A1C()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_268537AA0()
{
  result = qword_280282AA0;
  if (!qword_280282AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282AA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{
  *(a1 + 8) = sub_2685363A4;
  result = *(v1 + 256);
  v3 = *(v1 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  result = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  return result;
}

id OUTLINED_FUNCTION_7_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *v13 = a11;
  *(v13 + 4) = v12;
  *v11 = v12;
  *(v13 + 12) = 2080;

  return v12;
}

uint64_t OUTLINED_FUNCTION_9_17()
{
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[14];
}

void OUTLINED_FUNCTION_11_12()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_15_8()
{
  v2 = v0[22];
  v4 = v0[21];
  v5 = v0[20];
  v6 = v0[19];
  v7 = v0[18];
  v8 = v0[17];
  v9 = v0[14];
}

uint64_t OUTLINED_FUNCTION_19_8()
{
  v4 = v0[39];
  v5 = v0[40];
  v2 = v0[15];
  v6 = v0[20];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  result = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v4 = *(v0[36] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = v22 + 16 * *(v21 + 376);
  v25 = *(v24 + 40);
  *(v24 + 32) = a20;
  *(v24 + 40) = v20;
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  v1 = v0[40];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[13];
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  *(v17 + 14) = v16;
  *(v17 + 22) = 2080;

  return sub_2684EABEC(a15, a16, (v18 - 80));
}

BOOL OUTLINED_FUNCTION_36_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_268568AF0();
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return sub_2685691C0();
}

void OUTLINED_FUNCTION_47_1()
{
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
}

void OUTLINED_FUNCTION_52_1()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[22];
  v6 = v0[15];
  v5 = v0[16];
}

uint64_t OUTLINED_FUNCTION_54_1()
{
  v3 = *(v1 + 16);
  *(v0 + 16) = *(v1 + 24);
}

void OUTLINED_FUNCTION_55_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_57_0(float a1)
{
  *v3 = a1;

  return sub_2684EABEC(v2, v1, (v4 - 80));
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v3 = *(v0 + 304);
  *(v0 + 80) = v1;
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_268568DA0();
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_62_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2685380D4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v12 = sub_2685690B0();

    return v12;
  }

  v4 = sub_2684DEAF0(a2);
  v5 = sub_26853D9B8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_2684F7A04(0, a2);
  v8 = OUTLINED_FUNCTION_17_9();
  sub_2684F7A04(v8, v9);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_2684DB414();

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_268568FE0();
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_26853820C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_26853D9B8(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_2685382A4(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2685382A4(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_268538310@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = *a1;
  v15 = type metadata accessor for NotificationsApp.Builder(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_268518184();
  v18 = sub_2684DEAF0(v14);
  v55 = v2;
  v52 = v11;
  v53 = a2;
  if (v18)
  {
    v19 = v18;
    v54 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v21 = 0;
    v22 = v14 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        MEMORY[0x26D61C170](v21, v14);
      }

      else
      {
        v23 = *(v14 + 8 * v21 + 32);
      }

      ++v21;
      sub_268555B38();

      sub_268569020();
      v24 = *(v54 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v19 != v21);
    v25 = v54;
  }

  else
  {
    v22 = v14 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
  }

  v26 = sub_268518208(v25);

  v27 = OUTLINED_FUNCTION_33_3();
  sub_2684DEAFC(v27, v28, v14);
  if (v22)
  {
    v43 = OUTLINED_FUNCTION_38_2();
    v44 = MEMORY[0x26D61C170](v43);
    v46 = *(v44 + 16);
    v45 = *(v44 + 24);

    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_38_2();
    v48 = MEMORY[0x26D61C170](v47);
    v49 = *(v48 + 16);
    v50 = *(v48 + 24);
  }

  else
  {
    v29 = *(v14 + 32);
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
  }

  sub_2685687F0();
  sub_268568810();
  OUTLINED_FUNCTION_47_2();
  v32 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v13, v26 + v32);
  swift_endAccess();
  sub_26853D95C(v13, &qword_280282AF0, &qword_26856A1E0);
  if (v22)
  {
    v33 = OUTLINED_FUNCTION_38_2();
    v34 = MEMORY[0x26D61C170](v33);
  }

  else
  {
    v34 = *(v14 + 32);
  }

  v36 = v52;
  v35 = v53;
  v37 = *(v34 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
  v38 = *(v34 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type + 8);

  sub_268568BB0();

  OUTLINED_FUNCTION_47_2();
  v39 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v36, v26 + v39);
  swift_endAccess();
  sub_26853D95C(v36, &qword_280282AF0, &qword_26856A1E0);
  v40 = type metadata accessor for NotificationsApp(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  result = sub_2685182C0(v26);
  *v35 = result;
  return result;
}

uint64_t sub_268538678()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[9] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v9 = sub_2685679B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v13 = sub_268567B60();
  v1[15] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v17 = sub_2685689F0();
  v1[18] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_268538A04()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[9] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v9 = sub_2685679B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v13 = sub_268567B60();
  v1[15] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v17 = sub_2685689F0();
  v1[18] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_268538D90()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[9] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v9 = sub_2685679B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v13 = sub_268567B60();
  v1[15] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v17 = sub_2685689F0();
  v1[18] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26853911C()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D8, &unk_26856EFD0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v11 = sub_268567A60();
  v1[10] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[11] = v12;
  v14 = *(v13 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_268539250()
{
  v46 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  sub_268567A30();
  LOBYTE(v4) = sub_268567A40();
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_17_9();
  v5(v6);
  if (v4)
  {
    v0[2] = v0[5];
    v7 = v0[9];
    v8 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837F0, &unk_26856EFE0);
    type metadata accessor for RNReadNotificationHighlightsFlowProvider();
    sub_26853DBD8(&qword_280283830, v9, type metadata accessor for RNReadNotificationHighlightsFlowProvider);
    sub_268567810();
    sub_268567EC0();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v11 = v8;
    v12 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    v19 = v0[4];
    v20 = __swift_project_value_buffer(v18, qword_28028B348);
    (*(v17 + 16))(v16, v20, v18);
    (*(v14 + 16))(v13, v19, v15);
    v21 = sub_2685689E0();
    v22 = sub_268568DE0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[12];
    v25 = v0[10];
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];
    if (v23)
    {
      v44 = v0[6];
      v29 = OUTLINED_FUNCTION_4();
      v43 = OUTLINED_FUNCTION_51();
      v45 = v43;
      *v29 = 136315138;
      sub_26853DBD8(&qword_2802837E8, 255, MEMORY[0x277D5B9D0]);
      v41 = v22;
      v30 = sub_2685691A0();
      v42 = v26;
      v32 = v31;
      (v5)(v24, v25);
      v33 = sub_2684EABEC(v30, v32, &v45);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2684CA000, v21, v41, "Unsupported promptType '%s'. Will not support windowing.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v27 + 8))(v42, v44);
    }

    else
    {

      (v5)(v24, v25);
      (*(v27 + 8))(v26, v28);
    }

    v34 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v11 = OUTLINED_FUNCTION_35_5();
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  v36 = v0[12];
  v35 = v0[13];
  v38 = v0[8];
  v37 = v0[9];

  OUTLINED_FUNCTION_9_1();

  return v39();
}

uint64_t sub_268539600()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = sub_268567FF0();
  v1[26] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[27] = v5;
  v1[28] = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[30] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2685396FC()
{
  v81 = v0;
  v1 = v0;
  if (qword_280282960 != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v1 + 144;
  v4 = *(v1 + 248);
  v3 = *(v1 + 256);
  v5 = *(v1 + 240);
  v6 = *(v1 + 192);
  v7 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v7, v5);

  v8 = sub_2685689E0();
  v9 = sub_268568DD0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 248);
  v11 = *(v1 + 256);
  v13 = *(v1 + 240);
  if (v10)
  {
    v77 = *(v1 + 256);
    v14 = *(v1 + 192);
    v15 = OUTLINED_FUNCTION_4();
    v16 = OUTLINED_FUNCTION_51();
    v80 = v16;
    *v15 = 136315138;
    v17 = type metadata accessor for NotificationsApp(0);
    v18 = MEMORY[0x26D61BE70](v14, v17);
    v20 = sub_2684EABEC(v18, v19, &v80);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2684CA000, v8, v9, "RNReadNotificationHighlightsFlowProvider makeWindowFlow | windowContent: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v12 + 8))(v77, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v68 = v1;
  v21 = *(v1 + 192);
  v22 = sub_2684DEAF0(v21);
  v23 = 0;
  v73 = v21 & 0xFFFFFFFFFFFFFF8;
  v75 = v21 & 0xC000000000000001;
  v24 = MEMORY[0x277D84F90];
  v72 = v21 + 32;
  v69 = v22;
  while (v23 != v22)
  {
    if (v75)
    {
      v25 = MEMORY[0x26D61C170](v23, v68[24]);
    }

    else
    {
      if (v23 >= *(v73 + 16))
      {
        goto LABEL_57;
      }

      v25 = *(v72 + 8 * v23);
    }

    v26 = __OFADD__(v23, 1);
    v27 = v23 + 1;
    if (v26)
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
      goto LABEL_64;
    }

    v28 = *(v25 + 24);

    if (v28 >> 62)
    {
      v29 = sub_2685690A0();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v24 >> 62;
    if (v24 >> 62)
    {
      v31 = sub_2685690A0();
    }

    else
    {
      v31 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v31 + v29;
    if (__OFADD__(v31, v29))
    {
      goto LABEL_58;
    }

    v78 = v27;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v30)
      {
LABEL_23:
        sub_2685690A0();
      }

      else
      {
        v33 = v24 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v35 = *(v33 + 16);
      }

      v24 = sub_268569000();
      v33 = v24 & 0xFFFFFFFFFFFFFF8;
      v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_25;
    }

    if (v30)
    {
      goto LABEL_23;
    }

    v33 = v24 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v34 < v32)
    {
      goto LABEL_22;
    }

LABEL_25:
    v36 = *(v33 + 16);
    v37 = v34 - v36;
    v1 = v33 + 8 * v36;
    if (v28 >> 62)
    {
      v39 = OUTLINED_FUNCTION_46_2();
      if (!v39)
      {
        goto LABEL_39;
      }

      v40 = v39;
      v41 = sub_2685690A0();
      if (v37 < v41)
      {
        goto LABEL_62;
      }

      if (v40 < 1)
      {
        goto LABEL_63;
      }

      v70 = v41;
      v71 = v24;
      v42 = v1 + 32;
      sub_26853D8F8();
      for (i = 0; i != v40; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v1 = sub_2684DEA8C(v2, i, v28);
        v45 = *v44;

        (v1)(v2, 0);
        *(v42 + 8 * i) = v45;
      }

      v24 = v71;
      v22 = v69;
      v38 = v70;
LABEL_35:

      v23 = v78;
      if (v38 < v29)
      {
        goto LABEL_59;
      }

      if (v38 > 0)
      {
        v46 = *(v33 + 16);
        v26 = __OFADD__(v46, v38);
        v47 = v46 + v38;
        if (v26)
        {
          goto LABEL_60;
        }

        *(v33 + 16) = v47;
      }
    }

    else
    {
      v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        if (v37 < v38)
        {
          goto LABEL_61;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_35;
      }

LABEL_39:

      v23 = v78;
      if (v29 > 0)
      {
        goto LABEL_59;
      }
    }
  }

  v48 = sub_2684DEAF0(v24);
  if (v48)
  {
    v49 = v48;
    v80 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if ((v49 & 0x8000000000000000) == 0)
    {
      sub_2684DB414();
      OUTLINED_FUNCTION_31_8();
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x26D61C170](v1, v24);
        }

        else
        {
          v52 = *(v24 + 8 * v1 + 32);
        }

        ++v1;
        sub_2685646B8(v51);
        sub_268569020();
        v53 = v80[2];
        OUTLINED_FUNCTION_27_6();
        sub_268569050();
        OUTLINED_FUNCTION_27_6();
        sub_268569060();
        sub_268569030();
      }

      while (v49 != v1);

      v54 = v80;
      goto LABEL_53;
    }

    __break(1u);
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
LABEL_53:
    v76 = v54;
    v79 = v68[32];
    v56 = v68[28];
    v55 = v68[29];
    v57 = v68[26];
    v58 = v68[27];
    v59 = v68[24];
    v60 = v68[25];
    v61 = v68[23];
    sub_2684CC878(v60 + 144, (v68 + 2));

    v62 = sub_26853CE24();
    v63 = v62;
    v74 = v62 > 0xFFu;
    (*(v58 + 16))(v55, v61, v57);
    v64 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v60;
    (*(v58 + 32))(v65 + v64, v55, v57);
    *(v65 + ((v56 + v64 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    type metadata accessor for RNReadHighlightWindowFlow();
    swift_allocObject();
    v68[22] = sub_268533628(sub_268532A40, v60, v76, v68 + 2, v63 & 1u | (v74 << 8), &unk_26856EFC8, v65);
    sub_26853DBD8(&qword_280283818, 255, type metadata accessor for RNReadHighlightWindowFlow);

    sub_2685678F0();

    v66 = OUTLINED_FUNCTION_3_18();

    return v67(v66);
  }

  return result;
}

uint64_t sub_268539DF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26853004C;

  return sub_26853A8E8();
}

uint64_t sub_268539EA0()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_268567B10();
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_39();
  v7 = sub_268567F20();
  v1[11] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[14] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_39();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_268539FB4()
{
  v69 = v0;
  if (qword_280282960 != -1)
  {
LABEL_65:
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0;
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 64);
  __swift_project_value_buffer(*(v0 + 112), qword_28028B348);
  v6 = OUTLINED_FUNCTION_12_17();
  v7(v6);

  v8 = sub_2685689E0();
  v9 = sub_268568DD0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 112);
  if (v10)
  {
    v14 = *(v0 + 64);
    v1 = OUTLINED_FUNCTION_4();
    v15 = OUTLINED_FUNCTION_51();
    v68 = v15;
    *v1 = 136315138;
    v16 = type metadata accessor for NotificationsApp(0);
    v17 = MEMORY[0x26D61BE70](v14, v16);
    v19 = sub_2684EABEC(v17, v18, &v68);

    *(v1 + 4) = v19;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v20, v21, "RNReadNotificationHighlightsFlowProvider makeFinalWindowFlow | windowContent: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v12 + 8))(v11, v13);
  v60 = v2;
  if (*(v2[9] + 312))
  {
LABEL_53:
    v53 = MEMORY[0x277D84F90];
LABEL_54:
    v54 = v60[13];
    v55 = v60[10];
    sub_268567AE0();
    *(swift_task_alloc() + 16) = v53;
    sub_268567ED0();

    v56 = swift_task_alloc();
    v60[17] = v56;
    *v56 = v60;
    v56[1] = sub_26853A580;
    v57 = v60[8];
    v58 = v60[9];
    v59 = v60[7];

    return sub_26853A8E8();
  }

  v22 = (v2 + 2);
  v0 = v2[8];
  v23 = sub_2684DEAF0(v0);
  v24 = 0;
  v65 = v0 & 0xFFFFFFFFFFFFFF8;
  v66 = v0 & 0xC000000000000001;
  v25 = MEMORY[0x277D84F90];
  v64 = v0 + 32;
  v61 = v23;
  while (v24 != v23)
  {
    if (v66)
    {
      v0 = MEMORY[0x26D61C170](v24, v60[8]);
    }

    else
    {
      if (v24 >= *(v65 + 16))
      {
        goto LABEL_58;
      }

      v0 = *(v64 + 8 * v24);
    }

    v26 = __OFADD__(v24, 1);
    v27 = v24 + 1;
    if (v26)
    {
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
      goto LABEL_65;
    }

    v28 = *(v0 + 24);

    v0 = v28 >> 62;
    if (v28 >> 62)
    {
      v29 = sub_2685690A0();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v25 >> 62;
    if (v25 >> 62)
    {
      v31 = sub_2685690A0();
    }

    else
    {
      v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v31 + v29;
    if (__OFADD__(v31, v29))
    {
      goto LABEL_59;
    }

    v67 = v27;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v30)
      {
LABEL_23:
        sub_2685690A0();
      }

      else
      {
        v33 = v25 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v35 = *(v33 + 16);
      }

      v25 = sub_268569000();
      v33 = v25 & 0xFFFFFFFFFFFFFF8;
      v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_25;
    }

    if (v30)
    {
      goto LABEL_23;
    }

    v33 = v25 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v34 < v32)
    {
      goto LABEL_22;
    }

LABEL_25:
    v36 = *(v33 + 16);
    v37 = v34 - v36;
    v1 = v33 + 8 * v36;
    if (v0)
    {
      v39 = OUTLINED_FUNCTION_46_2();
      if (!v39)
      {
        goto LABEL_39;
      }

      v40 = v39;
      v63 = sub_2685690A0();
      if (v37 < v63)
      {
        goto LABEL_63;
      }

      if (v40 < 1)
      {
        goto LABEL_64;
      }

      v62 = v25;
      v41 = v1 + 32;
      v0 = sub_26853D8F8();
      for (i = 0; i != v40; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v1 = sub_2684DEA8C(v22, i, v28);
        v44 = *v43;

        (v1)(v22, 0);
        *(v41 + 8 * i) = v44;
      }

      v25 = v62;
      v23 = v61;
      v38 = v63;
LABEL_35:

      v24 = v67;
      if (v38 < v29)
      {
        goto LABEL_60;
      }

      if (v38 > 0)
      {
        v45 = *(v33 + 16);
        v26 = __OFADD__(v45, v38);
        v46 = v45 + v38;
        if (v26)
        {
          goto LABEL_61;
        }

        *(v33 + 16) = v46;
      }
    }

    else
    {
      v0 = v28 & 0xFFFFFFFFFFFFFF8;
      v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        if (v37 < v38)
        {
          goto LABEL_62;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_35;
      }

LABEL_39:

      v24 = v67;
      if (v29 > 0)
      {
        goto LABEL_60;
      }
    }
  }

  v47 = sub_2684DEAF0(v25);
  if (!v47)
  {

    goto LABEL_53;
  }

  v48 = v47;
  v68 = MEMORY[0x277D84F90];
  result = sub_268569040();
  if ((v48 & 0x8000000000000000) == 0)
  {
    sub_2684DB414();
    OUTLINED_FUNCTION_31_8();
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x26D61C170](v1, v25);
      }

      else
      {
        v51 = *(v25 + 8 * v1 + 32);
      }

      ++v1;
      sub_2685646B8(v50);
      sub_268569020();
      v52 = v68[2];
      OUTLINED_FUNCTION_27_6();
      sub_268569050();
      OUTLINED_FUNCTION_27_6();
      sub_268569060();
      sub_268569030();
    }

    while (v48 != v1);

    v53 = v68;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_26853A580(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *(v4 + 136);
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v5 + 144) = v1;

  if (v1)
  {
    v9 = sub_268530A58;
  }

  else
  {
    *(v5 + 152) = a1;
    v9 = sub_26853A69C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26853A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[19];
  v14 = v12[16];
  v16 = v12[12];
  v15 = v12[13];
  v17 = v12[10];
  v18 = v12[11];
  v19 = v12[9];
  v20 = v19[12];
  __swift_project_boxed_opaque_existential_1(v19 + 8, v19[11]);
  v12[6] = sub_268567850();
  sub_268567790();
  sub_2685678E0();

  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_26853A794(uint64_t a1, unint64_t a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_268567CD0();
  sub_268509368(a2, v11);
  (*(v4 + 8))(v7, v3);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

uint64_t sub_26853A8E8()
{
  OUTLINED_FUNCTION_5();
  v1[110] = v0;
  v1[109] = v2;
  v1[108] = v3;
  v4 = sub_2685688F0();
  v1[111] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[112] = v5;
  v7 = *(v6 + 64);
  v1[113] = OUTLINED_FUNCTION_39();
  v8 = sub_2685679B0();
  v1[114] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[115] = v9;
  v11 = *(v10 + 64);
  v1[116] = OUTLINED_FUNCTION_39();
  v12 = sub_268567B60();
  v1[117] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[118] = v13;
  v15 = *(v14 + 64);
  v1[119] = OUTLINED_FUNCTION_39();
  v16 = sub_2685689F0();
  v1[120] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v1[121] = v17;
  v19 = *(v18 + 64) + 15;
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64) + 15;
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_26853AAE4()
{
  v217 = v0;
  i = v0;
  v197 = v0 + 800;
  v201 = (v0 + 856);
  v192 = *(v0 + 880);
  v3 = *(v192 + 104);
  v206 = v3 & 0xC000000000000001;
  v209 = sub_2684DEAF0(v3);
  v202 = v3 + 32;
  v212 = v3;

  v4 = 0;
  v5 = 0;
  v200 = MEMORY[0x277D84F90];
  v204 = i;
  while (v5 != v209)
  {
    sub_2684DEAFC(v5, v206 == 0, v212);
    if (v206)
    {
      v6 = MEMORY[0x26D61C170](v5, v212);
    }

    else
    {
      v6 = *(v202 + 8 * v5);
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v9 = *(v6 + 24);
    v10 = sub_2684DEAF0(v9);
    v11 = 0;
    v1 = v9 & 0xC000000000000001;
    v12 = v9 & 0xFFFFFFFFFFFFFF8;
    while (v10 != v11)
    {
      if (v1)
      {
        v13 = MEMORY[0x26D61C170](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v56 = sub_268568800();
        v188 = v57;
        v189 = v56;
LABEL_58:
        OUTLINED_FUNCTION_34_6(v12);
        v62 = *(v61 + 8);
        v63 = OUTLINED_FUNCTION_17_9();
        v64(v63);
        goto LABEL_59;
      }

      v216[0] = v13;
      i = sub_26853C208(v216, v6);

      ++v11;
      if ((i & 1) == 0)
      {
        i = v204;
        sub_2684D4298(v6 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v204[127]);
        v23 = sub_268568810();
        v24 = OUTLINED_FUNCTION_35_5();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v25, v23);
        v27 = v204[127];
        if (EnumTagSinglePayload == 1)
        {

          v22 = v27;
          goto LABEL_22;
        }

        v28 = v204[127];
        v198 = sub_268568800();
        v30 = v29;

        OUTLINED_FUNCTION_34_6(v23);
        (*(v31 + 8))(v27, v23);
        goto LABEL_26;
      }
    }

    v14 = *(v6 + 24);
    if (!sub_2684DEAF0(v14))
    {

      i = v204;
      continue;
    }

    v15 = OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC(v15, v16, v14);
    i = v204;
    v17 = v204[126];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x26D61C170](0, v14);
      sub_2684D4298(v37 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_2684D4298(*(v14 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v204[126]);
    }

    v18 = sub_268568810();
    v19 = OUTLINED_FUNCTION_35_5();
    if (__swift_getEnumTagSinglePayload(v19, v20, v18) == 1)
    {
      v21 = v204[126];

      v22 = v21;
LABEL_22:
      sub_26853D95C(v22, &qword_280282AF0, &qword_26856A1E0);
      continue;
    }

    v32 = v204[126];
    v198 = sub_268568800();
    v30 = v33;

    sub_268568810();
    OUTLINED_FUNCTION_34_6(v18);
    (*(v34 + 8))(v32, v18);
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = *(v200 + 16);
      sub_26854BB3C();
      v200 = v39;
    }

    v35 = *(v200 + 16);
    if (v35 >= *(v200 + 24) >> 1)
    {
      sub_26854BB3C();
      v200 = v40;
    }

    *(v200 + 16) = v35 + 1;
    v36 = v200 + 16 * v35;
    *(v36 + 32) = v198;
    *(v36 + 40) = v30;
  }

  v41 = *(i + 880);

  v190 = v41;
  if (__OFADD__(*(v41 + 304), 1))
  {
    goto LABEL_156;
  }

  v42 = *(v192 + 104);

  v43 = OUTLINED_FUNCTION_17_9();
  v45 = sub_26855D244(v43, v44);
  *(i + 1024) = v45;

  if (!v45)
  {
    goto LABEL_52;
  }

  v46 = *(v45 + 24);
  v1 = sub_2684DEAF0(v46);

  for (i = 0; v1 != i; ++i)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x26D61C170](i, v46);
    }

    else
    {
      if (i >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_152;
      }

      v47 = *(v46 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_151;
    }

    v216[0] = v47;
    v48 = sub_26853C810(v216, v45);

    if ((v48 & 1) == 0)
    {
      i = v204;
      v55 = v204[124];

      sub_2684D4298(v45 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v55);
      v12 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v55, 1, v12) == 1)
      {
        v54 = v204[124];
        goto LABEL_51;
      }

      goto LABEL_55;
    }
  }

  v1 = *(v45 + 24);
  if (sub_2684DEAF0(v1))
  {
    v49 = OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC(v49, v50, v1);
    i = v204;
    v51 = v204[125];
    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_163;
    }

    sub_2684D4298(*(v1 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v204[125]);
    goto LABEL_47;
  }

  v188 = 0;
  v189 = 0;
  i = v204;
  while (1)
  {
LABEL_59:
    v51 = 0xEA0000000000657ALL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283798, &unk_26856EF90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26856E8F0;
    *(inited + 32) = 0x6D614E70756F7267;
    *(inited + 40) = 0xEA00000000007365;
    v193 = inited;
    if (sub_2684DEAF0(*(v192 + 104)) <= 4)
    {
      goto LABEL_66;
    }

    sub_26853820C(3, v200);
    OUTLINED_FUNCTION_40_4();
    if ((i & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_2685691E0();
    swift_unknownObjectRetain_n();
    v66 = swift_dynamicCastClass();
    if (!v66)
    {
      swift_unknownObjectRelease();
      v66 = MEMORY[0x277D84F90];
    }

    v67 = *(v66 + 16);

    v68 = (i >> 1) - v1;
    if (!__OFSUB__(i >> 1, v1))
    {
      break;
    }

    __break(1u);
LABEL_66:
    sub_26853820C(4, v200);
    OUTLINED_FUNCTION_40_4();
    if ((i & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_2685691E0();
    swift_unknownObjectRetain_n();
    v71 = swift_dynamicCastClass();
    if (!v71)
    {
      swift_unknownObjectRelease();
      v71 = MEMORY[0x277D84F90];
    }

    v67 = *(v71 + 16);

    v68 = (i >> 1) - v1;
    if (!__OFSUB__(i >> 1, v1))
    {
      break;
    }

LABEL_162:
    __break(1u);
LABEL_163:

    v183 = OUTLINED_FUNCTION_38_2();
    v184 = MEMORY[0x26D61C170](v183);

    sub_2684D4298(v184 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v51);
    swift_unknownObjectRelease();
LABEL_47:
    v12 = sub_268568810();
    v52 = OUTLINED_FUNCTION_35_5();
    if (__swift_getEnumTagSinglePayload(v52, v53, v12) != 1)
    {
      v58 = *(i + 1000);
      v59 = sub_268568800();
      v188 = v60;
      v189 = v59;
      sub_268568810();
      goto LABEL_58;
    }

    v54 = *(i + 1000);
LABEL_51:
    sub_26853D95C(v54, &qword_280282AF0, &qword_26856A1E0);
LABEL_52:
    v188 = 0;
    v189 = 0;
  }

  if (v67 != v68)
  {
    goto LABEL_160;
  }

  v70 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v70)
  {
    v70 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  i = v204;
  while (1)
  {
    v5 = *(i + 872);
    v72 = *(i + 864);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    *(v193 + 48) = v70;
    *(v193 + 72) = v73;
    strcpy((v193 + 80), "isConclusion");
    *(v193 + 93) = 0;
    *(v193 + 94) = -5120;
    v74 = sub_268567FA0();
    v75 = MEMORY[0x277D839B0];
    *(v193 + 96) = v74 & 1;
    *(v193 + 120) = v75;
    strcpy((v193 + 128), "isFirstWindow");
    *(v193 + 142) = -4864;
    *(v193 + 144) = sub_268567FC0() & 1;
    *(v193 + 168) = v75;
    strcpy((v193 + 176), "isLastWindow");
    *(v193 + 189) = 0;
    *(v193 + 190) = -5120;
    *(v193 + 192) = sub_268567FB0() & 1;
    *(v193 + 216) = v75;
    *(v193 + 224) = 0xD000000000000016;
    *(v193 + 232) = 0x8000000268572CE0;
    *(v193 + 240) = sub_268567F70() & 1;
    *(v193 + 264) = v75;
    *(v193 + 272) = 0x736D657469;
    *(v193 + 280) = 0xE500000000000000;
    v76 = sub_2684DEAF0(v5);
    v77 = MEMORY[0x277D84F90];
    if (!v76)
    {
      break;
    }

    v1 = v76;
    v216[0] = MEMORY[0x277D84F90];
    v51 = v216;
    sub_2684DD058(0, v76 & ~(v76 >> 63), 0);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v78 = i;
      v79 = 0;
      v80 = *(v78 + 872);
      v77 = v216[0];
      v81 = v80 & 0xC000000000000001;
      v213 = v80 + 32;
      do
      {
        if (v81)
        {
          v82 = MEMORY[0x26D61C170](v79, v204[109]);
        }

        else
        {
          v82 = *(v213 + 8 * v79);
        }

        *v201 = v82;
        type metadata accessor for NotificationsApp(0);
        sub_26853DBD8(&qword_2802837A0, 255, type metadata accessor for NotificationsApp);
        v83 = sub_2685688B0();

        v216[0] = v77;
        v85 = *(v77 + 16);
        v84 = *(v77 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_2684DD058((v84 > 1), v85 + 1, 1);
          v77 = v216[0];
        }

        ++v79;
        *(v77 + 16) = v85 + 1;
        *(v77 + 8 * v85 + 32) = v83;
      }

      while (v1 != v79);
      i = v204;
      break;
    }

    __break(1u);
LABEL_160:
    swift_unknownObjectRelease();
LABEL_67:
    sub_26853D830(v51, v5, v1, i);
    v70 = v69;
LABEL_75:
    i = v204;
    swift_unknownObjectRelease();
  }

  v86 = *(i + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837A8, &unk_26856EFA0);
  *(v193 + 288) = v77;
  OUTLINED_FUNCTION_8_15();
  *(v89 + 312) = v87;
  *(v89 + 320) = v88;
  *(v89 + 328) = v90;
  *(v89 + 336) = (*(v86 + 312) & 1) == 0;
  *(v89 + 360) = MEMORY[0x277D839B0];
  *(v89 + 368) = 0x6574496C61746F74;
  *(v89 + 376) = 0xEA0000000000736DLL;
  v91 = *(v192 + 104);
  v92 = sub_2684DEAF0(v91);
  v93 = v91 & 0xC000000000000001;
  v94 = v91 & 0xFFFFFFFFFFFFFF8;
  v201 = (v91 + 32);
  v191 = v91;

  v95 = 0;
  v1 = MEMORY[0x277D84F90];
  v195 = v91 & 0xC000000000000001;
  v196 = v92;
  v194 = v91 & 0xFFFFFFFFFFFFFF8;
  while (v95 != v92)
  {
    if (v93)
    {
      v96 = MEMORY[0x26D61C170](v95, v191);
    }

    else
    {
      if (v95 >= *(v94 + 16))
      {
        goto LABEL_147;
      }

      v96 = v201[v95];
    }

    v8 = __OFADD__(v95, 1);
    v97 = v95 + 1;
    if (v8)
    {
      goto LABEL_146;
    }

    v210 = v4;
    v4 = *(v96 + 24);

    if (v4 >> 62)
    {
      v98 = sub_2685690A0();
    }

    else
    {
      v98 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v99 = v1 >> 62;
    v214 = v97;
    if (v1 >> 62)
    {
      v100 = sub_2685690A0();
    }

    else
    {
      v100 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v101 = v100 + v98;
    if (__OFADD__(v100, v98))
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v99)
      {
        goto LABEL_104;
      }

      v102 = v1 & 0xFFFFFFFFFFFFFF8;
      v103 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v103 >= v101)
      {
        v207 = v1;
        goto LABEL_106;
      }
    }

    else
    {
      if (v99)
      {
LABEL_104:
        sub_2685690A0();
        goto LABEL_105;
      }

      v102 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v104 = *(v102 + 16);
LABEL_105:
    v207 = sub_268569000();
    v102 = v207 & 0xFFFFFFFFFFFFFF8;
    v103 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_106:
    v105 = *(v102 + 16);
    v1 = v103 - v105;
    v106 = v102 + 8 * v105;
    v203 = v102;
    if (v4 >> 62)
    {
      v108 = sub_2685690A0();
      if (v108)
      {
        v109 = v108;
        v110 = sub_2685690A0();
        if (v1 < v110)
        {
          goto LABEL_154;
        }

        if (v109 < 1)
        {
          goto LABEL_155;
        }

        v199 = v110;
        v200 = v98;
        v111 = v106 + 32;
        sub_26853D8F8();
        for (j = 0; j != v109; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
          v113 = sub_2684DEA8C(v197, j, v4);
          v115 = *v114;

          v113(v197, 0);
          *(v111 + 8 * j) = v115;
        }

        i = v204;
        v93 = v195;
        v92 = v196;
        v94 = v194;
        v107 = v199;
        goto LABEL_116;
      }
    }

    else
    {
      v107 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v107)
      {
        if (v1 < v107)
        {
          goto LABEL_153;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
LABEL_116:

        v1 = v207;
        v4 = v210;
        v95 = v214;
        if (v107 < v98)
        {
          goto LABEL_149;
        }

        if (v107 > 0)
        {
          v116 = *(v203 + 16);
          v8 = __OFADD__(v116, v107);
          v117 = v116 + v107;
          if (v8)
          {
            goto LABEL_150;
          }

          *(v203 + 16) = v117;
        }

        continue;
      }
    }

    v1 = v207;
    v4 = v210;
    v95 = v214;
    if (v98 > 0)
    {
      goto LABEL_149;
    }
  }

  v118 = sub_2684DEAF0(v1);

  v4 = MEMORY[0x277D83B88];
  *(v193 + 384) = v118;
  OUTLINED_FUNCTION_8_15();
  *(v193 + 408) = v4;
  *(v193 + 416) = v119 + 3;
  *(v193 + 424) = v120;
  *(v193 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837B8, &unk_26856EFB0);
  v121 = *(v190 + 304);
  v122 = v121 + 1;
  if (__OFADD__(v121, 1))
  {
    goto LABEL_157;
  }

  v123 = *(v192 + 104);

  v124 = sub_26855D244(v122, v123);

  if (v124)
  {
    v125 = *(v124 + 24);

    v126 = sub_2684DEAF0(v125);
  }

  else
  {
    v126 = 0;
  }

  v127 = v124 == 0;
  v128 = *(i + 872);
  v129 = v127;
  *(v193 + 432) = v126;
  *(v193 + 440) = v129;
  strcpy((v193 + 464), "nextGroupName");
  *(v193 + 478) = -4864;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  *(v193 + 480) = v189;
  *(v193 + 488) = v188;
  *(v193 + 504) = v130;
  *(v193 + 512) = 0x6953776F646E6977;
  *(v193 + 520) = 0xEA0000000000657ALL;
  sub_2684DEAFC(0, (v128 & 0xC000000000000001) == 0, v128);
  v7 = *(i + 872);
  if ((v128 & 0xC000000000000001) == 0)
  {
    v131 = *(v7 + 32);

    goto LABEL_134;
  }

LABEL_158:
  v131 = MEMORY[0x26D61C170](0, v7);
LABEL_134:
  v5 = *(v131 + 24);

  v132 = sub_2684DEAF0(v5);

  *(v193 + 552) = v4;
  *(v193 + 528) = v132;
  OUTLINED_FUNCTION_8_15();
  *(v134 + 560) = v133 + 7;
  *(v134 + 568) = v135;
  v51 = v192;
  if (sub_2684DEAF0(*(v192 + 104)) < 5)
  {
    v137 = 0;
  }

  else
  {
    v136 = sub_2684DEAF0(*(v192 + 104));
    if (__OFSUB__(v136, 4))
    {
      __break(1u);
      goto LABEL_162;
    }

    v137 = v136 - 3;
  }

  v138 = *(i + 880);
  *(v193 + 600) = v4;
  *(v193 + 576) = v137;
  *(v193 + 608) = 0xD000000000000015;
  *(v193 + 616) = 0x80000002685735C0;
  v139 = *(v138 + 320) % 3;
  *(v193 + 648) = v4;
  *(v193 + 624) = v139;
  *(v193 + 656) = 0xD00000000000001CLL;
  *(v193 + 664) = 0x8000000268573770;
  LOBYTE(v139) = *(v138 + 296);
  *(v193 + 696) = MEMORY[0x277D839B0];
  *(v193 + 672) = v139;
  v140 = sub_268568AD0();
  *(i + 1032) = v140;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v141 = *(i + 984);
  v142 = *(i + 968);
  v143 = *(i + 960);
  v144 = __swift_project_value_buffer(v143, qword_28028B348);
  *(i + 1040) = v144;
  v145 = *(v142 + 16);
  *(i + 1048) = v145;
  *(i + 1056) = (v142 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145(v141, v144, v143);

  v146 = sub_2685689E0();
  v147 = sub_268568DD0();

  v148 = os_log_type_enabled(v146, v147);
  v149 = *(i + 984);
  v150 = *(i + 968);
  v151 = *(i + 960);
  v215 = v140;
  if (v148)
  {
    v152 = OUTLINED_FUNCTION_4();
    v153 = OUTLINED_FUNCTION_51();
    v216[0] = v153;
    *v152 = 136315138;
    v154 = sub_268568AC0();
    v156 = sub_2684EABEC(v154, v155, v216);

    *(v152 + 4) = v156;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v157, v158, "RNReadNotificationHighlightsFlowProvider executePatternForWindow | executing pattern with parameters: %s");
    __swift_destroy_boxed_opaque_existential_0(v153);
    i = v204;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v150 + 8))(v149, v151);
  v159 = (i + 760);
  v160 = *(i + 952);
  v161 = *(i + 944);
  v162 = *(i + 936);
  v163 = *(i + 928);
  v164 = i;
  v165 = *(i + 920);
  v166 = v164[114];
  v208 = v164[113];
  v211 = v159;
  v167 = v164[110];
  sub_268567990();
  v205 = v164[94];
  __swift_project_boxed_opaque_existential_1(v164 + 90, v164[93]);
  sub_268567A20();
  (*(v161 + 104))(v160, *MEMORY[0x277D5BB40], v162);
  (*(v165 + 104))(v163, *MEMORY[0x277D5B950], v166);
  sub_26853CE24();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v168, v169, v170, v171, v172, v173, v174, v175, v186, v187);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v164 + 90);
  sub_2685687E0();
  v176 = *(v167 + 16);
  v164[133] = v176;
  sub_2685686F0();
  sub_2685685F0();
  v177 = v176;
  v178 = sub_2685685D0();
  v179 = sub_268516318(v167 + 184, v178);
  v164[134] = v179;

  v164[99] = 0;
  *v211 = 0u;
  v211[1] = 0u;
  sub_2685688E0();
  v180 = *(MEMORY[0x277D55C30] + 4);
  v181 = swift_task_alloc();
  v164[135] = v181;
  *v181 = v164;
  v181[1] = sub_26853BE18;
  v182 = v164[113];

  return MEMORY[0x2821B7E60](v177, 0xD00000000000002CLL, 0x80000002685737B0, v215, v179, v211, v182);
}

uint64_t sub_26853BE18()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[104] = v1;
  v3[105] = v5;
  v3[106] = v0;
  v6 = v2[135];
  *v4 = *v1;
  v3[136] = v0;

  v7 = v2[133];
  v8 = v2[129];
  v9 = v2[113];
  v10 = v2[112];
  v11 = v2[111];

  (*(v10 + 8))(v9, v11);
  sub_26853D95C((v3 + 95), &qword_280282DB0, &unk_26856B440);
  if (v0)
  {
    v12 = sub_26853C150;
  }

  else
  {
    v12 = sub_26853C000;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_26853C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = *(v12 + 1056);
  (*(v12 + 1048))(*(v12 + 976), *(v12 + 1040), *(v12 + 960));
  v14 = sub_2685689E0();
  v15 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v15))
  {
    v16 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v16);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v17, v18, "RNReadNotificationHighlightsFlowProvider executePatternForWindow | pattern successfully executed");
    OUTLINED_FUNCTION_2();
  }

  v19 = *(v12 + 1024);
  v20 = *(v12 + 976);
  v21 = *(v12 + 968);
  v22 = *(v12 + 960);
  v23 = *(v12 + 880);

  result = (*(v21 + 8))(v20, v22);
  if (__OFADD__(*(v23 + 304), 1))
  {
    __break(1u);
  }

  else
  {
    v25 = *(v12 + 840);
    v26 = *(v12 + 1016);
    OUTLINED_FUNCTION_17_10();
    *(*(v12 + 880) + 304) = v27;

    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_33();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_26853C150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[128];
  v14 = v12[127];
  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_9_1();
  v15 = v12[136];
  OUTLINED_FUNCTION_33();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_26853C208(uint64_t *a1, uint64_t a2)
{
  v5 = sub_268568810();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  v23 = *a1;
  v24 = *(a2 + 24);
  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_27:
    v30 = 0;
    return v30 & 1;
  }

  v38 = v20;
  v39 = sub_2685690A0();
  v20 = v38;
  if (!v39)
  {
    goto LABEL_27;
  }

LABEL_3:
  v42 = v20;
  v46 = v2;
  v25 = v24 & 0xC000000000000001;
  sub_2684DEAFC(0, (v24 & 0xC000000000000001) == 0, v24);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v41 = *(MEMORY[0x26D61C170](0, v24) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
    swift_unknownObjectRelease();
    if (v41 != 1)
    {
      goto LABEL_13;
    }

LABEL_5:
    if (sub_2684DEAF0(v24))
    {
      sub_2684DEAFC(0, v25 == 0, v24);
      if (v25)
      {
        v26 = MEMORY[0x26D61C170](0, v24);
        sub_2684D4298(v26 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_2684D4298(*(v24 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v22);
      }

      if (__swift_getEnumTagSinglePayload(v22, 1, v5) != 1)
      {
        sub_26853D95C(v22, &qword_280282AF0, &qword_26856A1E0);
        sub_2684D4298(v23 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v19);
        if (sub_2684DEAF0(v24))
        {
          sub_2684DEAFC(0, v25 == 0, v24);
          v31 = v45;
          if (v25)
          {
            v32 = MEMORY[0x26D61C170](0, v24);
            sub_2684D4298(v32 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v16);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2684D4298(*(v24 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v16);
          }
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v16, 1, 1, v5);
          v31 = v45;
        }

        v33 = *(v8 + 48);
        sub_2684D4298(v19, v31);
        sub_2684D4298(v16, v31 + v33);
        if (__swift_getEnumTagSinglePayload(v31, 1, v5) == 1)
        {
          sub_26853D95C(v16, &qword_280282AF0, &qword_26856A1E0);
          sub_26853D95C(v19, &qword_280282AF0, &qword_26856A1E0);
          if (__swift_getEnumTagSinglePayload(v31 + v33, 1, v5) == 1)
          {
            sub_26853D95C(v31, &qword_280282AF0, &qword_26856A1E0);
            v30 = 1;
            return v30 & 1;
          }
        }

        else
        {
          v34 = v42;
          sub_2684D4298(v31, v42);
          if (__swift_getEnumTagSinglePayload(v31 + v33, 1, v5) != 1)
          {
            v35 = v43;
            v36 = v44;
            (*(v44 + 32))(v43, v31 + v33, v5);
            sub_26853DBD8(&qword_280282FA0, 255, MEMORY[0x277D55C48]);
            v30 = sub_268568B00();
            v37 = *(v36 + 8);
            v37(v35, v5);
            sub_26853D95C(v16, &qword_280282AF0, &qword_26856A1E0);
            sub_26853D95C(v19, &qword_280282AF0, &qword_26856A1E0);
            v37(v34, v5);
            sub_26853D95C(v31, &qword_280282AF0, &qword_26856A1E0);
            return v30 & 1;
          }

          sub_26853D95C(v16, &qword_280282AF0, &qword_26856A1E0);
          sub_26853D95C(v19, &qword_280282AF0, &qword_26856A1E0);
          (*(v44 + 8))(v34, v5);
        }

        v27 = &qword_280282F98;
        v28 = qword_26856C420;
        v29 = v31;
        goto LABEL_12;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v5);
    }

    v27 = &qword_280282AF0;
    v28 = &qword_26856A1E0;
    v29 = v22;
LABEL_12:
    sub_26853D95C(v29, v27, v28);
    goto LABEL_13;
  }

  if (*(*(v24 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary))
  {
    goto LABEL_5;
  }

LABEL_13:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_26853C810(uint64_t *a1, uint64_t a2)
{
  v49 = sub_268568810();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  if (a2)
  {
    v24 = *a1;
    v25 = *(a2 + 24);
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v39 = *(a2 + 24);
      }

      v45 = v24;
      v40 = sub_2685690A0();
      v24 = v45;
      if (!v40)
      {
        goto LABEL_16;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v45 = v24;
    v46 = v2;
    sub_2684DEAFC(0, (v25 & 0xC000000000000001) == 0, v25);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v41 = *(MEMORY[0x26D61C170](0, v25) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
      swift_unknownObjectRelease();
      if (v41 != 1)
      {
        goto LABEL_16;
      }

LABEL_6:
      v26 = *(a2 + 24);
      if (sub_2684DEAF0(v26))
      {
        v44 = v7;
        sub_2684DEAFC(0, (v26 & 0xC000000000000001) == 0, v26);
        v43 = v26 & 0xC000000000000001;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x26D61C170](0, v26);
          sub_2684D4298(v42 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v23);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_2684D4298(*(v26 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v23);
        }

        if (__swift_getEnumTagSinglePayload(v23, 1, v49) != 1)
        {
          sub_26853D95C(v23, &qword_280282AF0, &qword_26856A1E0);
          sub_2684D4298(v45 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v21);
          if (sub_2684DEAF0(v26))
          {
            v27 = v43;
            sub_2684DEAFC(0, v43 == 0, v26);
            v28 = v49;
            if (v27)
            {
              v29 = MEMORY[0x26D61C170](0, v26);
              sub_2684D4298(v29 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v18);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_2684D4298(*(v26 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v18);
            }
          }

          else
          {
            v28 = v49;
            __swift_storeEnumTagSinglePayload(v18, 1, 1, v49);
          }

          v34 = *(v8 + 48);
          a2 = v48;
          sub_2684D4298(v21, v48);
          sub_2684D4298(v18, a2 + v34);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v28);
          v36 = v44;
          if (EnumTagSinglePayload == 1)
          {
            sub_26853D95C(v18, &qword_280282AF0, &qword_26856A1E0);
            a2 = v48;
            sub_26853D95C(v21, &qword_280282AF0, &qword_26856A1E0);
            if (__swift_getEnumTagSinglePayload(a2 + v34, 1, v28) == 1)
            {
              sub_26853D95C(a2, &qword_280282AF0, &qword_26856A1E0);
              LOBYTE(a2) = 1;
              return a2 & 1;
            }
          }

          else
          {
            sub_2684D4298(a2, v15);
            if (__swift_getEnumTagSinglePayload(a2 + v34, 1, v28) != 1)
            {
              v37 = v47;
              (*(v47 + 32))(v36, a2 + v34, v28);
              sub_26853DBD8(&qword_280282FA0, 255, MEMORY[0x277D55C48]);
              LOBYTE(a2) = sub_268568B00();
              v38 = *(v37 + 8);
              v38(v36, v28);
              sub_26853D95C(v18, &qword_280282AF0, &qword_26856A1E0);
              sub_26853D95C(v21, &qword_280282AF0, &qword_26856A1E0);
              v38(v15, v28);
              sub_26853D95C(v48, &qword_280282AF0, &qword_26856A1E0);
              return a2 & 1;
            }

            sub_26853D95C(v18, &qword_280282AF0, &qword_26856A1E0);
            a2 = v48;
            sub_26853D95C(v21, &qword_280282AF0, &qword_26856A1E0);
            (*(v47 + 8))(v15, v28);
          }

          v30 = &qword_280282F98;
          v31 = qword_26856C420;
          v32 = a2;
          goto LABEL_15;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v23, 1, 1, v49);
      }

      v30 = &qword_280282AF0;
      v31 = &qword_26856A1E0;
      v32 = v23;
LABEL_15:
      sub_26853D95C(v32, v30, v31);
      goto LABEL_16;
    }

    if (*(*(v25 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary))
    {
      goto LABEL_6;
    }

LABEL_16:
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

uint64_t sub_26853CE24()
{
  v1 = sub_2685689F0();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 104);
  v10 = *(v0 + 304);

  v11 = sub_26855D244(v10, v9);

  if (!v11)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v21 = __swift_project_value_buffer(v1, qword_28028B348);
    (*(v4 + 16))(v8, v21, v1);
    v22 = sub_2685689E0();
    v23 = sub_268568DE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_16_0();
      *v24 = 0;
      _os_log_impl(&dword_2684CA000, v22, v23, "RNReadNotificationHighlightsFlowProvider: Invalid notifications", v24, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v4 + 8))(v8, v1);
    LODWORD(v15) = 0;
    v20 = 0;
    return v20 | v15;
  }

  v12 = v11[3];
  v13 = sub_2684DEAF0(v12);
  v14 = MEMORY[0x277D84F90];
  v15 = &OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary;
  if (v13)
  {
    v16 = OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC(v16, v17, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_48:
      v18 = MEMORY[0x26D61C170](0, v12);
    }

    else
    {
      v18 = *(v12 + 32);
    }

    v19 = *(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight);
    if (*(v18 + *v15) == 1)
    {
      if (*(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight))
      {

        v20 = 256;
        LODWORD(v15) = 1;
        return v20 | v15;
      }

      v36 = v18;
      v15 = 1;
      goto LABEL_31;
    }

    HIDWORD(v34) = *(v18 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight);
    v36 = v18;
  }

  else
  {
    HIDWORD(v34) = 0;
    v36 = 0;
  }

  v35 = v11;
  v25 = v11[3];
  v37 = v14;
  sub_2684DEAF0(v25);
  OUTLINED_FUNCTION_31_8();
  v14 = v25 & 0xC000000000000001;
  v11 = &OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary;
  while (v8 != v4)
  {
    if (v14)
    {
      v26 = MEMORY[0x26D61C170](v4, v25);
    }

    else
    {
      if (v4 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v26 = *(v25 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (*(v26 + *v15) & 1) != 0 || (*(v26 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary))
    {
      v12 = &v37;
      sub_268569020();
      v27 = v37[2];
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v4;
  }

  v12 = v37;
  v28 = sub_2684DEAF0(v37);

  v15 = v28 > 0;
  if ((v34 & 0x100000000) != 0)
  {

    v20 = 256;
    return v20 | v15;
  }

  v11 = v35;
  v14 = MEMORY[0x277D84F90];
LABEL_31:
  v29 = v11[3];
  v37 = v14;
  sub_2684DEAF0(v29);
  OUTLINED_FUNCTION_31_8();
  v14 = v29 & 0xFFFFFFFFFFFFFF8;
  while (v8 != v4)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x26D61C170](v4, v29);
    }

    else
    {
      if (v4 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v30 = *(v29 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_46;
    }

    if (*(v30 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight))
    {
      v12 = &v37;
      sub_268569020();
      v31 = v37[2];
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v4;
  }

  v32 = sub_2684DEAF0(v37) > 0;

  v20 = v32 << 8;
  return v20 | v15;
}

uint64_t sub_26853D2AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_268538678();
}

uint64_t sub_26853D33C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_268538A04();
}

uint64_t sub_26853D3CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_268538D90();
}

uint64_t sub_26853D45C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return sub_26853911C();
}

uint64_t sub_26853D508(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_268539EA0();
}

uint64_t sub_26853D5B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_268539600();
}

void sub_26853D6A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_23_9();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = (2 * ((v10 - 32) / 8)) | 1;
    }

    if (v5 != v4)
    {
      sub_2684DB414();
      OUTLINED_FUNCTION_48_2();
      return;
    }

    goto LABEL_9;
  }
}

void sub_26853D764(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_23_9();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 8);
    }

    if (v5 != v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
      OUTLINED_FUNCTION_48_2();
      return;
    }

    goto LABEL_9;
  }
}

void sub_26853D830(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_23_9();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 16);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t sub_26853D8F8()
{
  result = qword_2802837B0;
  if (!qword_2802837B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280283440, &qword_26856D320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802837B0);
  }

  return result;
}

uint64_t sub_26853D95C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_34_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26853D9B8(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_26853DA0C()
{
  v1 = sub_268567FF0();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_26853DAD8()
{
  v2 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_268532894;

  return sub_268539DF4();
}

uint64_t sub_26853DBD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void OUTLINED_FUNCTION_4_22()
{
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[17];
  v7 = v1[18];
  v9 = v1[15];
  v8 = v1[16];
  v10 = v1[13];
  v12 = v1[14];
  v13 = v1[12];
  v15 = v1[11];
  v16 = v1[10];
  *(v2 - 80) = v1[9];
  v11 = v1[7];
  v14 = v1[8];
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(a20 + 8);
  result = v20;
  v24 = *(v21 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_268567ED0();
}

void *OUTLINED_FUNCTION_14_7()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = v1[12];
  return __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_268567A20();
}

void OUTLINED_FUNCTION_17_10()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[119];
  v7 = v0[116];
  v8 = v0[113];
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_268567850();
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return sub_268567B00();
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_2685690A0();
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_26853DEAC(uint64_t a1, const void *a2, char a3)
{
  *(v3 + 16) = a1;
  memcpy((v3 + 24), a2, 0x80uLL);
  *(v3 + 152) = a3;
  return v3;
}

uint64_t sub_26853DEE4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v76 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v76 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v76 - v19;
  v21 = *(v3 + 16);
  v22 = *(v21 + 48);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_33:
    v18 = OUTLINED_FUNCTION_0_0();
LABEL_10:
    OUTLINED_FUNCTION_1_21(v18, qword_28028B348);
    v31(v14);
    v32 = sub_2685689E0();
    v33 = sub_268568DC0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_16_0();
      *v34 = 0;
      _os_log_impl(&dword_2684CA000, v32, v33, "RNPromptReturnGroup getNextGroupTransition | repeat", v34, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v7 + 8))(v14, v6);
    *(v21 + 64) = 1;
    goto LABEL_13;
  }

  *(v21 + 48) = v24;
  *(v21 + 32) = 0;
  switch(a1)
  {
    case 0:
      if (qword_280282960 != -1)
      {
        v18 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_21(v18, qword_28028B348);
      v25(v20);
      v26 = sub_2685689E0();
      v27 = sub_268568DC0();
      if (os_log_type_enabled(v26, v27))
      {
        v17 = OUTLINED_FUNCTION_16_0();
        *v17 = 0;
        _os_log_impl(&dword_2684CA000, v26, v27, "RNPromptReturnGroup getNextGroupTransition | accept", v17, 2u);
        OUTLINED_FUNCTION_2();
      }

      v28 = *(v7 + 8);
      v7 += 8;
      v28(v20, v6);
      v29 = *(v21 + 40);
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (!v23)
      {
        *(v21 + 40) = v30;
LABEL_13:
        *(v21 + 56) = 0;
        OUTLINED_FUNCTION_2_22();
        v35 = *(v3 + 152);
        type metadata accessor for RNReadAppNotificationsActionGroup();
        swift_allocObject();

        v37 = sub_26850CF38(v36, __src, v35);
        v38 = &qword_280282A38;
        v39 = type metadata accessor for RNReadAppNotificationsActionGroup;
LABEL_30:
        v73 = sub_26853E7F0(v38, 255, v39);
        *a2 = v37;
        a2[1] = v73;
        v59 = MEMORY[0x277D5BF58];
        goto LABEL_31;
      }

      __break(1u);
LABEL_35:
      v18 = OUTLINED_FUNCTION_0_0();
LABEL_15:
      OUTLINED_FUNCTION_1_21(v18, qword_28028B348);
      v40(v17);
      v11 = sub_2685689E0();
      v41 = sub_268568DC0();
      if (os_log_type_enabled(v11, v41))
      {
        v42 = OUTLINED_FUNCTION_16_0();
        *v42 = 0;
        _os_log_impl(&dword_2684CA000, v11, v41, "RNPromptReturnGroup getNextGroupTransition | decline", v42, 2u);
        OUTLINED_FUNCTION_2();
      }

      v43 = *(v7 + 8);
      v7 += 8;
      v43(v17, v6);
      v44 = *(v21 + 40);
      v6 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_37:
        v18 = OUTLINED_FUNCTION_0_0();
LABEL_23:
        OUTLINED_FUNCTION_1_21(v18, qword_28028B348);
        v60(v11);
        v61 = sub_2685689E0();
        v62 = sub_268568DC0();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = OUTLINED_FUNCTION_16_0();
          *v63 = 0;
          _os_log_impl(&dword_2684CA000, v61, v62, "RNPromptReturnGroup getNextGroupTransition | reply", v63, 2u);
          OUTLINED_FUNCTION_2();
        }

        (*(v7 + 8))(v11, v6);
        OUTLINED_FUNCTION_2_22();
        v64 = *(v3 + 152);
        v65 = type metadata accessor for RNReplyFollowupActionGroup();
        v66 = *(v65 + 48);
        v67 = *(v65 + 52);
        swift_allocObject();
        v37 = sub_2684F7E80(__src, v64);
        v38 = &unk_280283838;
        v39 = type metadata accessor for RNReplyFollowupActionGroup;
        goto LABEL_30;
      }

      v45 = *(sub_2684F4060() + 16);

      if (v6 >= v45 - 1)
      {
        OUTLINED_FUNCTION_2_22();
        v70 = type metadata accessor for RNReadConclusionActionGroup();
        v71 = *(v70 + 48);
        v72 = *(v70 + 52);
        swift_allocObject();
        v37 = sub_2684DBAF0(__src);
        v38 = &qword_2802833E8;
        v39 = type metadata accessor for RNReadConclusionActionGroup;
        goto LABEL_30;
      }

      v46 = *(v21 + 40);
      v23 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v23)
      {
        __break(1u);
        goto LABEL_39;
      }

      *(v21 + 40) = v47;
      v48 = *(v21 + 56);
      v23 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v23)
      {
LABEL_39:
        __break(1u);
        JUMPOUT(0x26853E704);
      }

      *(v21 + 56) = v49;
      OUTLINED_FUNCTION_2_22();
      type metadata accessor for RNPromptFlow();
      swift_allocObject();
      v50 = sub_26854A0A8(v21, __src);
      OUTLINED_FUNCTION_2_22();
      v51 = *(v3 + 152);
      type metadata accessor for RNPromptReturnGroup();
      v52 = swift_allocObject();
      *(v52 + 16) = v21;
      memcpy((v52 + 24), __src, 0x80uLL);
      *(v52 + 152) = v51;
      v76[1] = v52;
      __src[0] = v50;
      v53 = sub_2685677B0();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      sub_26853E7F0(&qword_2802833F0, 255, type metadata accessor for RNPromptFlow);
      sub_26853E7F0(&qword_2802833F8, v56, type metadata accessor for RNPromptReturnGroup);
      swift_retain_n();
      *a2 = sub_2685677A0();
      v57 = *MEMORY[0x277D5B898];
      v58 = sub_268567960();
      (*(*(v58 - 8) + 104))(a2, v57, v58);
      v59 = MEMORY[0x277D5BF50];
LABEL_31:
      v74 = *v59;
      v75 = sub_268567E80();
      (*(*(v75 - 8) + 104))(a2, v74, v75);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v75);
    case 2:
      if (qword_280282960 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    case 3:
      if (qword_280282960 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    case 4:
      if (qword_280282960 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    default:
      v68 = sub_268567E80();

      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v68);
  }
}

uint64_t sub_26853E718()
{
  v1 = *(v0 + 16);

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_26853E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RNPromptReturnGroup();

  return MEMORY[0x2821BB570](a1, v5, a3);
}

uint64_t sub_26853E7F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return sub_2684CC878(v0 + 24, v1 - 208);
}

uint64_t sub_26853E874@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_2685679B0();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268567B60();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v29[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_268567A20();
  (*(v12 + 104))(v16, *MEMORY[0x277D5BC10], v9);
  (*(v4 + 104))(v8, *MEMORY[0x277D5B950], v1);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_268567D20();
}

uint64_t sub_26853EA60()
{
  type metadata accessor for RNConclusionFlow();
  sub_26853F688();
  return sub_268567900();
}

uint64_t sub_26853EABC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_2685679B0();
  v2[20] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v2[21] = v4;
  v6 = *(v5 + 64);
  v2[22] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v2[23] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v2[24] = v8;
  v10 = *(v9 + 64);
  v2[25] = OUTLINED_FUNCTION_39();
  v11 = *(*(sub_268567B10() - 8) + 64);
  v2[26] = OUTLINED_FUNCTION_39();
  v12 = sub_268567F20();
  v2[27] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v2[28] = v13;
  v15 = *(v14 + 64);
  v2[29] = OUTLINED_FUNCTION_39();
  v16 = sub_2685689F0();
  v2[30] = v16;
  OUTLINED_FUNCTION_2_4(v16);
  v2[31] = v17;
  v19 = *(v18 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26853EC88, 0, 0);
}

uint64_t sub_26853EC88()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[34] = v4;
  v5 = *(v3 + 16);
  v0[35] = v5;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "RNConclusionFlow execute", v8, 2u);
    MEMORY[0x26D61CB30](v8, -1, -1);
  }

  v9 = v0[33];
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[29];
  v13 = v0[26];
  v14 = v0[19];

  v15 = *(v11 + 8);
  v0[37] = v15;
  v15(v9, v10);
  sub_268567AE0();
  sub_268567ED0();
  v16 = *(v14 + 24);
  v20 = (*(v14 + 16) + **(v14 + 16));
  v17 = *(*(v14 + 16) + 4);
  v18 = swift_task_alloc();
  v0[38] = v18;
  *v18 = v0;
  v18[1] = sub_26853EEC4;

  return v20();
}

uint64_t sub_26853EEC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v4 + 312) = v1;

  if (v1)
  {
    v8 = sub_26853F224;
  }

  else
  {
    *(v4 + 320) = a1;
    v8 = sub_26853EFE4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26853EFE4()
{
  v29 = v0[40];
  v30 = v0[29];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v28 = v0[19];
  v31 = v0[18];
  sub_268567990();
  v27 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v1 + 104))(v2, *MEMORY[0x277D5BC10], v3);
  (*(v6 + 104))(v4, *MEMORY[0x277D5B950], v5);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_2684D57FC(v28 + 112, (v0 + 12));
  v15 = sub_268567D00();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_268567CF0();
  v18 = sub_268567840();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[17] = sub_268567830();
  sub_268567890();

  sub_268567C30();

  v21 = OUTLINED_FUNCTION_2_23();
  v22(v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_26853F224()
{
  v1 = *(v0 + 288);
  (*(v0 + 280))(*(v0 + 256), *(v0 + 272), *(v0 + 240));
  v2 = sub_2685689E0();
  v3 = sub_268568DE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2684CA000, v2, v3, "RNConclusionFlow: Error while getting pattern result", v4, 2u);
    MEMORY[0x26D61CB30](v4, -1, -1);
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v10 = *(v0 + 192);
  v9 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 168);
  v28 = *(v0 + 184);
  v29 = *(v0 + 160);
  v30 = *(v0 + 144);
  v31 = *(v0 + 312);

  v5(v7, v8);
  sub_268567990();
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_268567A20();
  (*(v10 + 104))(v9, *MEMORY[0x277D5BC00], v28);
  (*(v12 + 104))(v11, *MEMORY[0x277D5B8D0], v29);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_268567C40();

  v22 = OUTLINED_FUNCTION_2_23();
  v23(v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26853F460()
{
  v1 = *(v0 + 24);

  sub_2684CC8D4(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_26853F4E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26853F584;

  return sub_26853EABC(a1);
}

uint64_t sub_26853F584()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_26853F688()
{
  result = qword_280283840;
  if (!qword_280283840)
  {
    type metadata accessor for RNConclusionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283840);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v7 = *(v0[28] + 8);
  return v0[29];
}

uint64_t sub_26853F714()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283858, &unk_26856F270);
  return sub_268568B70();
}

uint64_t sub_26853F778()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = sub_268567B60();
  v1[18] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[19] = v7;
  v9 = *(v8 + 64) + 15;
  v1[20] = swift_task_alloc();
  v10 = sub_2685689F0();
  v1[21] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[22] = v11;
  v13 = *(v12 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v14 = sub_268567D90();
  v1[25] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[26] = v15;
  v17 = *(v16 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26853F934, 0, 0);
}

uint64_t sub_26853F934()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[14];
  v2 = *(v1 + 120);
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_26853F9D4;
  v5 = v0[27];

  return sub_26850D7A0(v5, v3);
}

uint64_t sub_26853F9D4()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 224);
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *(v5 + 232) = v0;

  if (v0)
  {
    v6 = sub_26853FF54;
  }

  else
  {
    v6 = sub_26853FADC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26853FADC()
{
  v1 = v0[14];
  v2 = sub_26851C004(v0[27], v1 + 10);
  v0[30] = v2;
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[31] = v6;
  v7 = sub_2684E0120();
  *v6 = v0;
  v6[1] = sub_26853FBCC;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_26853FBCC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(*v1 + 248);
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v7 + 256) = v0;

  if (v0)
  {
    v8 = sub_2685401F8;
  }

  else
  {

    v8 = sub_26853FCDC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26853FCDC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DF0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNInformNoNewNotificationsAction run | informed user of no new notifications", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[26];
  v9 = v0[24];
  v25 = v0[30];
  v26 = v0[25];
  v10 = v0[22];
  v27 = v0[27];
  v28 = v0[23];
  v11 = v0[20];
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v22 = v0[17];
  v23 = v0[15];

  (*(v10 + 8))(v9, v12);
  sub_268567990();
  v24 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v13 + 104))(v11, *MEMORY[0x277D5BC10], v14);
  (*(v15 + 104))(v22, *MEMORY[0x277D5B950], v23);
  v16 = OUTLINED_FUNCTION_1_22();
  sub_2684EBB74(v16, v17, v11, v22, 8, 0, 0, 0, v20, v21);
  sub_2685679A0();

  (*(v8 + 8))(v27, v26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_26853FF54()
{
  v35 = v0;
  v4 = v0[29];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = v0[22];
  v5 = v0[23];
  __swift_project_value_buffer(v0[21], qword_28028B348);
  v7 = OUTLINED_FUNCTION_10_1();
  v8(v7);
  v9 = v4;
  v10 = sub_2685689E0();
  v11 = sub_268568DE0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  v33 = v0[23];
  v14 = v0[21];
  if (v12)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v34 = v2;
    *v1 = 136315138;
    v0[13] = v4;
    v15 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v3 = sub_2684EABEC(v16, v17, &v34);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v18, v19, "RNInformNoNewNotificationsAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v13 + 8))(v33, v14);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v11, *MEMORY[0x277D5BC10], v10);
  (*(v1 + 104))(v14, *MEMORY[0x277D5B950], v2);
  v0[12] = v4;
  v20 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v21 = OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_6_7(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v29();
}

uint64_t sub_2685401F8()
{
  v38 = v0;
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 256);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
  v10 = OUTLINED_FUNCTION_10_1();
  v11(v10);
  v12 = v7;
  v13 = sub_2685689E0();
  v14 = sub_268568DE0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 176);
  v36 = *(v0 + 184);
  v17 = *(v0 + 168);
  if (v15)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v37 = v2;
    *v1 = 136315138;
    *(v0 + 104) = v7;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v19 = sub_268568B70();
    v3 = sub_2684EABEC(v19, v20, &v37);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v21, v22, "RNInformNoNewNotificationsAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v16 + 8))(v36, v17);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v14, *MEMORY[0x277D5BC10], v13);
  (*(v1 + 104))(v17, *MEMORY[0x277D5B950], v2);
  *(v0 + 96) = v7;
  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v24 = OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_6_7(v24, v25, v26, v27, v28, v29, v30, v31, v34, v35);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v32();
}

uint64_t sub_2685404E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_26853F778();
}

uint64_t sub_268540600(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNInformNoNewNotificationsAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_20()
{
  v2 = v0[27];
  v10 = v0[24];
  v11 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];

  return sub_268567990();
}

uint64_t sub_268540688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

uint64_t sub_2685406BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for ReadingRecord();
    sub_2684E6980(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for ReadingRecord();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_26854079C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2684DEAFC(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v4 = *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D61C170](v3, a1);
  }

  result = sub_2685690A0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_268540830@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2685679B0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_14();
  v132 = v10;
  v130 = sub_268567B60();
  v11 = OUTLINED_FUNCTION_1(v130);
  v129 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_14();
  v131 = v15;
  v16 = sub_2685689F0();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v124 = &v119 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v123 = &v119 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v119 - v30;
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v16, qword_28028B348);
  v33 = *(v19 + 16);
  v126 = v32;
  v128 = v19 + 16;
  v127 = v33;
  v33(v31);
  v34 = sub_2685689E0();
  v125 = sub_268568DC0();
  v35 = os_log_type_enabled(v34, v125);
  v134 = a1;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v122 = a2;
    v37 = v36;
    v120 = v36;
    v121 = swift_slowAlloc();
    v136[0] = v121;
    *v37 = 136315138;
    v135 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283868, &unk_26856F300);
    v38 = sub_268568B70();
    v40 = v24;
    v41 = v19;
    v42 = v16;
    v43 = v7;
    v44 = v4;
    v45 = sub_2684EABEC(v38, v39, v136);

    v46 = v120;
    *(v120 + 4) = v45;
    v4 = v44;
    v7 = v43;
    v16 = v42;
    v19 = v41;
    v24 = v40;
    _os_log_impl(&dword_2684CA000, v34, v125, "NotificationFollowupReturnGroup getNextGroupTransition | exitValue: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v121);
    OUTLINED_FUNCTION_2();
    a2 = v122;
    OUTLINED_FUNCTION_2();
  }

  v47 = *(v19 + 8);
  v47(v31, v16);
  switch(v134)
  {
    case 1:
      v60 = *(v133 + 16);
      sub_268504C5C();
      OUTLINED_FUNCTION_0_22();
      v61();
      v62 = sub_2685689E0();
      v63 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v63))
      {
        v64 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_11_13(v64);
        OUTLINED_FUNCTION_8_11(&dword_2684CA000, v65, v66, "NotificationFollowupReturnGroup getNextGroupTransition | appending follow-up notification and transitioning to ReadNotificationsActionGroup to read the full notification");
        OUTLINED_FUNCTION_2();
      }

      goto LABEL_18;
    case 2:
      v60 = *(v133 + 16);
      sub_268504DEC();
      OUTLINED_FUNCTION_0_22();
      v92();
      v62 = sub_2685689E0();
      v93 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v93))
      {
        v94 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_11_13(v94);
        OUTLINED_FUNCTION_8_11(&dword_2684CA000, v95, v96, "NotificationFollowupReturnGroup getNextGroupTransition | appending follow-up notification and transitioning to ReadNotificationsActionGroup to repeat the previous notification");
        OUTLINED_FUNCTION_2();
      }

LABEL_18:

      v97 = OUTLINED_FUNCTION_7_22();
      (v47)(v97);
      sub_268567990();
      OUTLINED_FUNCTION_5_19();
      v98 = *MEMORY[0x277D5BBF8];
      v99 = OUTLINED_FUNCTION_1_23();
      v100(v99);
      v101 = *MEMORY[0x277D5B950];
      v102 = OUTLINED_FUNCTION_3_21();
      v103(v102);
      OUTLINED_FUNCTION_13_16();
      v104 = *(v60 + 40);

      v106 = sub_26854079C(v105);

      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_6_21();
      sub_2684EBB74(v107, v108, v109, v110, v111, v112, v113, v106, v119, v120);
      OUTLINED_FUNCTION_9_19();

      __swift_destroy_boxed_opaque_existential_0(v136);
      sub_2684CC878(v133 + 24, v136);
      type metadata accessor for ANReadNotificationsActionGroup();
      swift_allocObject();

      v89 = sub_2684D4E64(v114, v136);
      v90 = &qword_280282B70;
      v91 = type metadata accessor for ANReadNotificationsActionGroup;
      goto LABEL_19;
    case 3:
      v134 = v4;
      OUTLINED_FUNCTION_0_22();
      v67();
      v68 = sub_2685689E0();
      v69 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v69))
      {
        v70 = OUTLINED_FUNCTION_16_0();
        *v70 = 0;
        _os_log_impl(&dword_2684CA000, v68, v24, "NotificationFollowupReturnGroup getNextGroupTransition | transitioning to ReplyFollowupActionGroup to provide unsupported message for reply", v70, 2u);
        OUTLINED_FUNCTION_2();
      }

      v71 = OUTLINED_FUNCTION_7_22();
      (v47)(v71);
      sub_268567990();
      OUTLINED_FUNCTION_5_19();
      v72 = *MEMORY[0x277D5BBF8];
      v73 = OUTLINED_FUNCTION_1_23();
      v74(v73);
      v75 = *MEMORY[0x277D5B950];
      v76 = OUTLINED_FUNCTION_3_21();
      v77(v76);
      v78 = v133;
      v79 = *(v133 + 16);
      sub_268503BF8();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_6_21();
      sub_2684EBB74(v80, v81, v82, v83, v84, v85, v86, v87, v119, v120);
      OUTLINED_FUNCTION_9_19();

      __swift_destroy_boxed_opaque_existential_0(v136);
      sub_2684CC878(v78 + 24, v136);
      type metadata accessor for ANReplyFollowupActionGroup();
      swift_allocObject();

      v89 = sub_2684CC29C(v88, v136);
      v90 = &unk_280283860;
      v91 = type metadata accessor for ANReplyFollowupActionGroup;
LABEL_19:
      v115 = sub_268541300(v90, v91);
      *a2 = v89;
      a2[1] = v115;
      v116 = *MEMORY[0x277D5BF58];
      v117 = sub_268567E80();
      (*(*(v117 - 8) + 104))(a2, v116, v117);
      v58 = a2;
      v59 = 0;
      v57 = v117;
      return __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
    case 4:
    case 5:
      goto LABEL_9;
    default:
      v48 = v4;
      OUTLINED_FUNCTION_0_22();
      v49();
      v50 = sub_2685689E0();
      v51 = sub_268568DC0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_16_0();
        *v52 = 0;
        _os_log_impl(&dword_2684CA000, v50, v51, "NotificationFollowupReturnGroup getNextGroupTransition | cancelling request by returning nil", v52, 2u);
        OUTLINED_FUNCTION_2();
      }

      v47(v24, v16);
      sub_268567990();
      __swift_project_boxed_opaque_existential_1(v136, v136[3]);
      sub_268567A20();
      v53 = v131;
      (*(v129 + 104))(v131, *MEMORY[0x277D5BC08], v130);
      v54 = v132;
      (*(v7 + 104))(v132, *MEMORY[0x277D5B950], v48);
      v55 = *(v133 + 16);
      sub_268503BF8();
      OUTLINED_FUNCTION_2_15();
      sub_2684EBB74(8, 9, v53, v54, 8, 0, 0, v56, v119, v120);
      sub_2685679A0();

      __swift_destroy_boxed_opaque_existential_0(v136);
LABEL_9:
      v57 = sub_268567E80();
      v58 = a2;
      v59 = 1;
      return __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
  }
}

uint64_t sub_26854128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ANFollowupReturnGroup();

  return MEMORY[0x2821BB570](a1, v5, a3);
}

uint64_t sub_268541300(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_0_22()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 296);
  v3 = *(v0 - 304);
}

uint64_t OUTLINED_FUNCTION_1_23()
{
  v1 = *(*(v0 - 288) + 104);
  result = *(v0 - 272);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  v1 = *(v0 - 184);
  __swift_project_boxed_opaque_existential_1((v0 - 216), *(v0 - 192));

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return swift_beginAccess();
}

uint64_t sub_268541460()
{
  if (*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead))
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
  }
}

uint64_t sub_268541488()
{
  v1 = v0;
  v2 = sub_2685689F0();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v5 + 16))(v9, v10, v2);
  swift_retain_n();
  v11 = sub_2685689E0();
  v12 = sub_268568DD0();
  v13 = &unk_28028B000;
  v14 = &unk_28028B000;
  if (os_log_type_enabled(v11, v12))
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136315650;
    LOBYTE(v28) = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283890, &unk_26856F5D0);
    v16 = sub_268568B70();
    v18 = sub_2684EABEC(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 1024;
    v19 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);

    *(v15 + 14) = v19;

    *(v15 + 18) = 2080;
    v28 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform);
    type metadata accessor for AFSiriAnnouncementPlatform(0);
    v20 = sub_268568B70();
    v22 = sub_2684EABEC(v20, v21, &v29);
    v13 = &unk_28028B000;

    *(v15 + 20) = v22;
    _os_log_impl(&dword_2684CA000, v11, v12, "ReadNotification#shouldHardPrompt summaryType: %s, isFullContentReadRequired: %{BOOL}d, announcePlatform: %s", v15, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    v14 = &unk_28028B000;
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  (*(v5 + 8))(v9, v2);
  if ((*(v1 + v14[143]) & 1) != 0 || *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform) == 4)
  {
    v23 = 0;
  }

  else
  {
    v25 = v13[141];
    v26 = 1;
    v23 = 0;
    switch(*(v1 + v25))
    {
      case 2:
LABEL_16:

        v23 = v26;
        break;
      case 3:
        return v23 & 1;
      default:
        v27 = sub_2685691C0();

        if (v27)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0;
          switch(*(v1 + v25))
          {
            case 1:
            case 2:
              v26 = sub_2685691C0();
              goto LABEL_16;
            case 3:
              return v23 & 1;
            default:
              v26 = 1;
              goto LABEL_16;
          }
        }

        break;
    }
  }

  return v23 & 1;
}

char *sub_26854188C(uint64_t *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead] = 0;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized] = 0;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked] = 0;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType] = 3;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired] = 0;
  v4 = *a1;
  v5 = a1[1];
  *(v2 + 2) = *a1;
  *(v2 + 3) = v5;
  v6 = a1[3];
  *(v2 + 4) = a1[2];
  *(v2 + 5) = v6;
  v7 = type metadata accessor for ANDirectInvocation();
  v8 = v7[6];
  v9 = OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date;
  v10 = sub_2685675E0();
  (*(*(v10 - 8) + 16))(&v2[v9], a1 + v8, v10);
  v11 = (a1 + v7[10]);
  v12 = *v11;
  v13 = v11[1];
  v14 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier];
  *v14 = v12;
  *(v14 + 1) = v13;
  sub_2685687A0();

  swift_bridgeObjectRetain_n();

  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName] = sub_2684FF6C4(v4, v5);
  v15 = (a1 + v7[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = (a1 + v7[8]);
  v20 = *v19;
  v21 = v19[1];
  v22 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle];
  *v22 = v20;
  *(v22 + 1) = v21;
  v23 = (a1 + v7[9]);
  v24 = *v23;
  v25 = v23[1];
  v26 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body];
  *v26 = v24;
  *(v26 + 1) = v25;
  v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin] = 0;
  v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement] = *(a1 + v7[12]);
  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform] = *(a1 + v7[13]);
  v27 = *(a1 + v7[14]);
  v28 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType];
  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType] = v27;
  type metadata accessor for NotificationSelfContext();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = 0;
  *(v28 + 16) = 0;
  swift_allocObject();
  v29 = v27;

  v30 = sub_268512D7C();
  sub_268542E68(a1);
  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationSelfContext] = v30;
  return v2;
}

uint64_t sub_268541AD0(void *a1, int a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v75 = a3;
  LODWORD(v74) = a2;
  v6 = sub_2685689F0();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v73 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v69 - v14;
  v16 = sub_2685675E0();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) = 0;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 0;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked) = 0;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType) = 3;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) = 0;
  v24 = a1;
  v25 = sub_2685565F0(v24);
  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = v25;
  v28 = v26;
  v76 = v9;
  v71 = v23;
  v72 = v19;
  v29 = v24;
  v30 = sub_268565290(v29);
  if (!v31)
  {
LABEL_11:

LABEL_12:

    type metadata accessor for AnnounceNotification();
    v54 = *(*v4 + 48);
    v55 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v32 = v30;
  v33 = v31;
  v70 = v16;
  v34 = [v29 date];
  if (!v34)
  {

    goto LABEL_11;
  }

  v35 = v34;
  v36 = v71;
  sub_2685675C0();

  v4[2] = v27;
  v4[3] = v28;
  v4[4] = v32;
  v4[5] = v33;

  v37 = sub_268565300(v29);
  OUTLINED_FUNCTION_5_20(v37, v38, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v39 = sub_26856530C(v29);
  OUTLINED_FUNCTION_5_20(v39, v40, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v41 = sub_268565318(v29);
  OUTLINED_FUNCTION_5_20(v41, v42, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  (*(v72 + 16))(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date, v36, v70);
  v43 = sub_2685565FC(v29);
  OUTLINED_FUNCTION_5_20(v43, v44, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier);
  sub_2685687A0();

  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName) = sub_2684FF6C4(v27, v28);
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) = 2;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement) = v74 & 1;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform) = v75;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v45 = __swift_project_value_buffer(v6, qword_28028B348);
  v46 = *(v76 + 16);
  v74 = v45;
  v69[1] = v46;
  v46(v15);
  v47 = sub_2685689E0();
  v48 = sub_268568DC0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2684CA000, v47, v48, "ReadNotification init? attempting to unwrap SANotificationOnDeviceObject.request", v49, 2u);
    OUTLINED_FUNCTION_2();
  }

  v75 = *(v76 + 8);
  v76 += 8;
  v75(v15, v6);
  result = sub_268556608(v29);
  if (v51 >> 60 != 15)
  {
    v52 = result;
    v53 = v51;

    v56 = sub_2684E07D8(v52, v53);
    v58 = v57;
    sub_268542E54(v56, v57);
    v59 = v70;
    v60 = [v29 isHighlight];
    sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
    v61 = sub_268568E50();
    v62 = v61;
    if (v60)
    {
      v63 = sub_268568E70();

      v64 = v63 & 1;
    }

    else
    {

      v64 = 0;
    }

    v65 = sub_268527624(v29);
    v66 = v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType;
    *v66 = v64;
    *(v66 + 1) = v65;
    *(v66 + 2) = v67;
    *(v66 + 3) = v56;
    v66[32] = v58;
    v66[33] = 1;
    type metadata accessor for NotificationSelfContext();
    swift_allocObject();
    v68 = sub_268512D7C();
    sub_268542D78(v56, v58);

    (*(v72 + 8))(v71, v59);
    *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationSelfContext) = v68;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_26854215C(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_2685691C0() & 1) == 0)
  {
    goto LABEL_65;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_2685691C0() & 1) == 0 || (sub_2685675B0() & 1) == 0)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v8)
  {
    if (!v6)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v7);
    v11 = v4 && v9 == v10;
    if (!v11 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v6)
  {
    goto LABEL_65;
  }

  v12 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
  v13 = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_65;
    }

    sub_2685687A0();

    v14 = static SirikitApp.== infix(_:_:)(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v13)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v16);
    v20 = v4 && v18 == v19;
    if (!v20 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v15)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v23)
  {
    if (!v21)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v22);
    v26 = v4 && v24 == v25;
    if (!v26 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v21)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v29)
  {
    if (!v27)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v28);
    v32 = v4 && v30 == v31;
    if (!v32 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v27)
  {
    goto LABEL_65;
  }

  if ((*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) & 1) == 0)
  {
    v33 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
    if (*(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead))
    {
      if (v33)
      {
        goto LABEL_61;
      }
    }

    else if (v33 == *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized))
    {
      goto LABEL_61;
    }

LABEL_65:
    v36 = 0;
    return v36 & 1;
  }

  if ((*(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_61:
  if (*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) != *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) || *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) != *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) || *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform) != *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform))
  {
    goto LABEL_65;
  }

  v34 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16);
  v39[0] = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType);
  v39[1] = v34;
  v40 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32);
  v35 = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16);
  v41[0] = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType);
  v41[1] = v35;
  v42 = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32);
  sub_268542D10(v39, v38);
  sub_268542D10(v41, v38);
  v36 = sub_268542428(v39, v41);
  sub_268542D48(v41);
  sub_268542D48(v39);
  return v36 & 1;
}

uint64_t sub_268542428(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  if ((a1[33] & 1) == 0)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      v14 = (*(a1 + 1) << 8) | ((*(a1 + 5) | (a1[7] << 16)) << 40) | v5;
      v6 = (v14 | v4) == 0;
      if (v14 && v4)
      {
        sub_2684D16C0(0, &qword_280283198, 0x277D5C208);
        sub_268542D10(a2, v18);
        sub_268542D10(a1, v18);
        v6 = sub_268568E70();
        sub_268542D48(a1);
        sub_268542D48(a2);
      }

      return v6 & 1;
    }

    goto LABEL_13;
  }

  v6 = 0;
  if (*(a2 + 33) & 1) == 0 || ((v5 ^ v4))
  {
    return v6 & 1;
  }

  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = a1[32];
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v13 = *(a1 + 1) == *(a2 + 8) && v7 == v10;
  if (!v13 && (sub_2685691C0() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  v6 = (v9 & v12) == 255;
  if (v9 != 255 && v12 != 255)
  {
    v16 = v11;
    v17 = sub_2684E0B50(v8, v9 & 1, v11, v12 & 1);
    sub_268542D78(v11, v12);
    return v17 & 1;
  }

  return v6 & 1;
}

uint64_t sub_2685425EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date;
  v4 = sub_2685675E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier);
  v5 = *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);

  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  OUTLINED_FUNCTION_6_22(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  sub_268542DFC(*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 8), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 24), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 33));
  v6 = *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationSelfContext);

  return v0;
}

uint64_t sub_2685426CC()
{
  sub_2685425EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AnnounceNotification()
{
  result = qword_280283870;
  if (!qword_280283870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268542778()
{
  result = sub_2685675E0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceNotification.Origin(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268542940);
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

uint64_t get_enum_tag_for_layout_string_24SiriNotificationsIntents21RNNotificationContentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2685429AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 34))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2685429EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_268542A74()
{
  if (*(v0 + 33))
  {
    v1 = *(v0 + 32);
    if (v1 != 255)
    {
      v2 = *(v0 + 24);
      v3 = v2;
      if (v1)
      {
        if (sub_2684E0514())
        {
          v4 = sub_2684E0764();
LABEL_11:
          v9 = v4;
          sub_268542D78(v2, v1);
          return v9;
        }
      }

      else if (sub_2684E03C8())
      {
        v4 = sub_2684E12C4();
        goto LABEL_11;
      }

      sub_268542D78(v2, v1);
    }

    return 0;
  }

  if (!*v0)
  {
    return 0;
  }

  v5 = [*v0 notification];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 request];

  v8 = [v7 content];
  v9 = sub_2684E12C4();

  return v9;
}

uint64_t sub_268542B84()
{
  if (*(v0 + 33))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 16);

    return v1;
  }

  if (!*v0)
  {
    return 0;
  }

  v3 = sub_268542D8C(*v0);
  v1 = v3;
  if (!v3)
  {
    return v1;
  }

  if (!sub_2684DEAF0(v3))
  {

    return 0;
  }

  sub_2684DEAFC(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D61C170](0, v1);
  }

  else
  {
    v4 = *(v1 + 32);
  }

  v5 = v4;

  v6 = [v5 summary];

  v1 = sub_268568B20();
  return v1;
}

uint64_t sub_268542C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_268542428(v5, v7) & 1;
}

unint64_t sub_268542CBC()
{
  result = qword_280283880;
  if (!qword_280283880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283880);
  }

  return result;
}

void sub_268542D78(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_268542D8C(void *a1)
{
  v1 = [a1 summaries];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2684D16C0(0, &qword_280283888, 0x277CEF418);
  v3 = sub_268568CE0();

  return v3;
}

void sub_268542DFC(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  if (a6)
  {

    sub_268542D78(a4, a5);
  }

  else
  {
  }
}

id sub_268542E54(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_268542E68(uint64_t a1)
{
  v2 = type metadata accessor for ANDirectInvocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_22@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_268542F0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *__src)
{
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6 & 1;
  *(v7 + 57) = HIBYTE(a6) & 1;
  memcpy((v7 + 64), __src, 0x80uLL);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t sub_268542F6C()
{
  OUTLINED_FUNCTION_5();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2685689F0();
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268543024()
{
  v30 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_2685689E0();
  v6 = sub_268568DD0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v7)
  {
    v11 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 16);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    v16 = MEMORY[0x26D61BE70](v14, v15);
    v18 = sub_2684EABEC(v16, v17, &v29);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_2684CA000, v5, v6, "#RNReadNotificationHighlightsFlow notification highlights: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D61CB30](v13, -1, -1);
    MEMORY[0x26D61CB30](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  sub_2685685F0();
  sub_2685685E0();
  v0[16] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v20 = sub_268568AD0();
  v0[17] = v20;
  v21 = *(MEMORY[0x277D61E18] + 4);
  v22 = swift_task_alloc();
  v0[18] = v22;
  v23 = sub_268568950();
  v24 = sub_268567C50();
  v25 = sub_26854431C(&qword_280282BF8, MEMORY[0x277D55F70]);
  *v22 = v0;
  v22[1] = sub_268543374;
  v26 = v0[11];
  v27 = v0[12];

  return MEMORY[0x2821C8828](v26, v20, &unk_26856F718, v27, v23, v24, v25);
}

uint64_t sub_268543374()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[18];
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v11 = v3[16];
    v10 = v3[17];
    v12 = v3[15];

    OUTLINED_FUNCTION_9_1();

    return v13();
  }
}

uint64_t sub_2685434B0()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  OUTLINED_FUNCTION_9_1();
  v5 = v0[19];

  return v4();
}

uint64_t sub_268543520(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v3 = sub_2685689F0();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685435E0, 0, 0);
}

uint64_t sub_2685435E0()
{
  v1 = v0[29];
  sub_2684D57FC(v1 + 144, (v0 + 18));
  v2 = sub_268567D00();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_268567CF0();
  v5 = sub_268567840();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_268567830();
  v0[33] = v8;
  v0[26] = v8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 40);
  v27 = *(v1 + 32);
  v11 = *(v1 + 48);
  v26 = *(v1 + 56);
  v12 = *(v1 + 57);
  sub_2684CC878(v1 + 64, (v0 + 2));
  v13 = *(v1 + 24);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();

  v16 = sub_268567CF0();
  v17 = type metadata accessor for RNReadNotificationHighlightsFlowProvider();
  v18 = swift_allocObject();
  if (v12)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_268544030(v9, v27, v10, v11, v19 | v26, (v0 + 2), v16, v13, v18);
  v0[34] = v20;
  v0[27] = v20;
  v21 = *(MEMORY[0x277D5B810] + 4);
  v22 = swift_task_alloc();
  v0[35] = v22;
  v23 = sub_26854431C(&qword_280283898, type metadata accessor for RNReadNotificationHighlightsFlowProvider);
  *v22 = v0;
  v22[1] = sub_268543814;
  v24 = MEMORY[0x277D5B808];

  return MEMORY[0x2821BA370](v0 + 27, v5, v17, v24, v23);
}

uint64_t sub_268543814()
{
  OUTLINED_FUNCTION_9();
  v3[23] = v1;
  v3[24] = v2;
  v3[25] = v0;
  v4 = v3[35];
  v5 = v3[34];
  v6 = v3[33];
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 288) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268543960()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationHighlightsFlow execute | pattern provider successfully created", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[24];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  v12 = v0[28];

  (*(v10 + 8))(v9, v11);
  sub_268567C30();

  OUTLINED_FUNCTION_9_1();

  return v13();
}

uint64_t sub_268543ACC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856F6C0, v10);
}

uint64_t sub_268543BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_268543CC8;

  return sub_268542F6C();
}

uint64_t sub_268543CC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void *sub_268543DC8()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];

  sub_2684CC8D4((v0 + 8));
  return v0;
}

uint64_t sub_268543E08()
{
  sub_268543DC8();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_268543E84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268543ECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_268543BCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_268543F98()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_268543520(v3, v0);
}

uint64_t sub_268544030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = sub_268567D00();
  v16 = MEMORY[0x277D5BD58];
  v40[3] = v15;
  v40[4] = MEMORY[0x277D5BD58];
  v40[0] = a7;
  type metadata accessor for RNReadNotificationHighlightsFlowProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a9 + 16) = [objc_opt_self() bundleForClass_];
  *(a9 + 272) = 0xD00000000000002CLL;
  *(a9 + 280) = 0x80000002685737B0;
  *(a9 + 288) = 4;
  *(a9 + 320) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v31 = a4;
    v32 = a3;
    *&v36 = MEMORY[0x277D84F90];
    sub_268569040();
    v19 = 0;
    while (v19 < *(a1 + 16))
    {
      v39 = *(a1 + 8 * v19 + 32);

      sub_268538310(&v39, v35);

      ++v19;
      sub_268569020();
      v20 = *(v36 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
      if (v18 == v19)
      {

        v21 = v36;
        a3 = v32;
        a4 = v31;
        v16 = MEMORY[0x277D5BD58];
        goto LABEL_7;
      }
    }

    __break(1u);

    v30 = *(a9 + 280);

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
LABEL_7:
    *(a9 + 104) = v21;
    *(a9 + 112) = a2;
    *(a9 + 120) = a3;
    *(a9 + 128) = a4;
    *(a9 + 136) = a5 & 1;
    *(a9 + 137) = HIBYTE(a5) & 1;
    sub_2684CC878(a6, a9 + 144);
    sub_2684D57FC(v40, a9 + 24);
    *(a9 + 304) = 0;
    *(a9 + 312) = 0;
    *(a9 + 296) = a8 & 1;
    sub_2684D57FC(a6 + 80, &v36);
    v22 = *(v15 + 48);
    v23 = *(v15 + 52);
    swift_allocObject();

    v24 = sub_268567CF0();
    v35[3] = v15;
    v35[4] = v16;
    v35[0] = v24;
    v25 = sub_268567840();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_268567830();
    v37 = v25;
    v38 = MEMORY[0x277D5B808];

    *&v36 = v28;
    sub_2684CC8D4(a6);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_2684D8314(&v36, a9 + 64);
    return a9;
  }

  return result;
}

uint64_t sub_26854431C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268544364()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838A8, &unk_26856F830);
  return sub_268568B70();
}

uint64_t sub_2685443C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2685688F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_2684D57FC(a1, v1 + 32);
  sub_2684D57FC(a1 + 40, v1 + 72);
  type metadata accessor for ReadNotificationsCATs();
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(v1 + 72, v9);
  sub_2685685F0();
  v6 = sub_2685685D0();
  sub_268516318(v9, v6);

  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = sub_268568710();
  sub_2684CC8D4(a1);
  *(v2 + 112) = v7;
  return v2;
}

uint64_t sub_2685444F4()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = sub_268567B60();
  v1[18] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[19] = v7;
  v9 = *(v8 + 64) + 15;
  v1[20] = swift_task_alloc();
  v10 = sub_2685689F0();
  v1[21] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[22] = v11;
  v13 = *(v12 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v14 = sub_268567D90();
  v1[25] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[26] = v15;
  v17 = *(v16 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685446B0, 0, 0);
}

uint64_t sub_2685446B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[14] + 112);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_268544748;
  v3 = v0[27];

  return sub_26850E194();
}

uint64_t sub_268544748()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 224);
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *(v5 + 232) = v0;

  if (v0)
  {
    v6 = sub_268544CC8;
  }

  else
  {
    v6 = sub_268544850;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268544850()
{
  v1 = v0[14];
  v2 = sub_26851C004(v0[27], v1 + 9);
  v0[30] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[31] = v6;
  v7 = sub_2684E0120();
  *v6 = v0;
  v6[1] = sub_268544940;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_268544940()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(*v1 + 248);
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v7 + 256) = v0;

  if (v0)
  {
    v8 = sub_268544F6C;
  }

  else
  {

    v8 = sub_268544A50;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268544A50()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DF0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadConclusionAction run | read conclusion", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[26];
  v9 = v0[24];
  v25 = v0[30];
  v26 = v0[25];
  v10 = v0[22];
  v27 = v0[27];
  v28 = v0[23];
  v11 = v0[20];
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v22 = v0[17];
  v23 = v0[15];

  (*(v10 + 8))(v9, v12);
  sub_268567990();
  v24 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v13 + 104))(v11, *MEMORY[0x277D5BC10], v14);
  (*(v15 + 104))(v22, *MEMORY[0x277D5B958], v23);
  v16 = OUTLINED_FUNCTION_1_24();
  sub_2684EBB74(v16, v17, v11, v22, 8, 0, 0, 0, v20, v21);
  sub_2685679A0();

  (*(v8 + 8))(v27, v26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_268544CC8()
{
  v35 = v0;
  v4 = v0[29];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = v0[22];
  v5 = v0[23];
  __swift_project_value_buffer(v0[21], qword_28028B348);
  v7 = OUTLINED_FUNCTION_10_1();
  v8(v7);
  v9 = v4;
  v10 = sub_2685689E0();
  v11 = sub_268568DE0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  v33 = v0[23];
  v14 = v0[21];
  if (v12)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v34 = v2;
    *v1 = 136315138;
    v0[13] = v4;
    v15 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v16 = sub_268568B70();
    v3 = sub_2684EABEC(v16, v17, &v34);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v18, v19, "RNReadConclusionAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v13 + 8))(v33, v14);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v11, *MEMORY[0x277D5BC00], v10);
  (*(v1 + 104))(v14, *MEMORY[0x277D5B8D0], v2);
  v0[12] = v4;
  v20 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v21 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_6_7(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v29();
}

uint64_t sub_268544F6C()
{
  v38 = v0;
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 256);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
  v10 = OUTLINED_FUNCTION_10_1();
  v11(v10);
  v12 = v7;
  v13 = sub_2685689E0();
  v14 = sub_268568DE0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 176);
  v36 = *(v0 + 184);
  v17 = *(v0 + 168);
  if (v15)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v37 = v2;
    *v1 = 136315138;
    *(v0 + 104) = v7;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v19 = sub_268568B70();
    v3 = sub_2684EABEC(v19, v20, &v37);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v21, v22, "RNReadConclusionAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v16 + 8))(v36, v17);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v14, *MEMORY[0x277D5BC00], v13);
  (*(v1 + 104))(v17, *MEMORY[0x277D5B8D0], v2);
  *(v0 + 96) = v7;
  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v24 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_6_7(v24, v25, v26, v27, v28, v29, v30, v31, v34, v35);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v32();
}

uint64_t sub_268545238()
{
  sub_2684FCA7C();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_268545290()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_2685444F4();
}

uint64_t sub_2685453A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadConclusionAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268545400(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_268545420, 0, 0);
}

uint64_t sub_268545420()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = *(MEMORY[0x277D61E18] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_268568950();
  v6 = sub_268567C50();
  v7 = sub_26854653C(&qword_280282BF8, MEMORY[0x277D55F70]);
  *v4 = v0;
  v4[1] = sub_2685455F8;
  v8 = v0[11];
  v9 = v0[12];

  return MEMORY[0x2821C8828](v8, v2, &unk_26856F980, v9, v5, v6, v7);
}

uint64_t sub_2685455F8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[15];
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268545728, 0, 0);
  }

  else
  {
    v8 = v3[13];
    v7 = v3[14];

    OUTLINED_FUNCTION_9_10();

    return v9();
  }
}

uint64_t sub_268545728()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_268545790(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return MEMORY[0x2822009F8](sub_2685457B0, 0, 0);
}

uint64_t sub_2685457B0()
{
  v1 = v0[26];
  sub_2684D57FC(v1 + 136, (v0 + 18));
  v2 = sub_268567D00();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_268567CF0();
  v5 = sub_268567840();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_268567830();
  v0[27] = v8;
  v0[23] = v8;
  v9 = *(v1 + 16);
  v27 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v26 = *(v1 + 48);
  v12 = *(v1 + 49);
  sub_2684CC878(v1 + 56, (v0 + 2));
  v13 = *(v1 + 184);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();

  v16 = sub_268567CF0();
  v17 = type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider();
  v18 = swift_allocObject();
  if (v12)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_268546258(v9, v27, v10, v11, v19 | v26, (v0 + 2), v16, v13, v18);
  v0[28] = v20;
  v0[24] = v20;
  v21 = *(MEMORY[0x277D5B810] + 4);
  v22 = swift_task_alloc();
  v0[29] = v22;
  v23 = sub_26854653C(&qword_2802838B0, type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider);
  *v22 = v0;
  v22[1] = sub_2685459E0;
  v24 = MEMORY[0x277D5B808];

  return MEMORY[0x2821BA370](v0 + 24, v5, v17, v24, v23);
}

uint64_t sub_2685459E0(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = v4[29];
  v7 = v4[28];
  v8 = v4[27];
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v5[30] = v1;

  if (v1)
  {
    v11 = sub_268545BA4;
  }

  else
  {
    v5[31] = a1;
    v11 = sub_268545B3C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_268545B3C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  sub_268567C30();

  OUTLINED_FUNCTION_9_10();

  return v3();
}

uint64_t sub_268545BBC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2684DDBA0(0, 0, v8, &unk_26856F928, v10);
}

uint64_t sub_268545CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_268545DB8;

  return sub_268545400(v10);
}

uint64_t sub_268545DB8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_268545F50;
  }

  else
  {
    v7 = sub_268545EBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268545EBC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_9_10();

  return v5();
}

uint64_t sub_268545F50()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_268545FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2684D1820;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2685460AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2685460F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684D1F44;

  return sub_268545CBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2685461C0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684D1820;

  return sub_268545790(v3, v0);
}

uint64_t sub_268546258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = sub_268567D00();
  v16 = MEMORY[0x277D5BD58];
  v40[3] = v15;
  v40[4] = MEMORY[0x277D5BD58];
  v40[0] = a7;
  type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a9 + 16) = [objc_opt_self() bundleForClass_];
  *(a9 + 272) = 0xD000000000000033;
  *(a9 + 280) = 0x8000000268573580;
  *(a9 + 288) = 4;
  *(a9 + 320) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v31 = a3;
    v32 = a6;
    *&v36 = MEMORY[0x277D84F90];
    sub_268569040();
    v19 = 0;
    while (v19 < *(a1 + 16))
    {
      v39 = *(a1 + 8 * v19 + 32);

      sub_26852E700(&v39, v35);

      ++v19;
      sub_268569020();
      v20 = *(v36 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
      if (v18 == v19)
      {

        v21 = v36;
        a3 = v31;
        a6 = v32;
        v16 = MEMORY[0x277D5BD58];
        goto LABEL_7;
      }
    }

    __break(1u);

    v30 = *(a9 + 280);

    type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
LABEL_7:
    *(a9 + 104) = v21;
    *(a9 + 112) = a2;
    *(a9 + 120) = a3;
    *(a9 + 128) = a4;
    *(a9 + 136) = a5 & 1;
    *(a9 + 137) = HIBYTE(a5) & 1;
    sub_2684CC878(a6, a9 + 144);
    sub_2684D57FC(v40, a9 + 24);
    *(a9 + 304) = 0;
    *(a9 + 312) = 0;
    sub_2684D57FC(a6 + 80, &v36);
    v22 = *(v15 + 48);
    v23 = *(v15 + 52);
    swift_allocObject();

    v24 = sub_268567CF0();
    v35[3] = v15;
    v35[4] = v16;
    v35[0] = v24;
    v25 = sub_268567840();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_268567830();
    v37 = v25;
    v38 = MEMORY[0x277D5B808];

    *&v36 = v28;
    sub_2684CC8D4(a6);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_2684D8314(&v36, a9 + 64);
    *(a9 + 296) = a8 & 1;
    return a9;
  }

  return result;
}

uint64_t sub_26854653C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26854658C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2685465CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26854663C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v5);
  v6 = sub_268567F20();
  v1[4] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[5] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v10);
  v11 = sub_2685689F0();
  v1[7] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[8] = v12;
  v14 = *(v13 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_268546744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  if (qword_280282960 != -1)
  {
    v19 = OUTLINED_FUNCTION_0_0();
  }

  v21 = v12[8];
  v20 = v12[9];
  v22 = v12[7];
  v23 = OUTLINED_FUNCTION_2_24(v19, qword_28028B348);
  v24(v23);
  sub_2685689E0();
  v25 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v25))
  {
    v26 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v26);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v27, v28, "RNReadNotificationsFromOneAppPatternFlowProvider makeEmptyResultSetFlow | Empty result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  (*(v16 + 8))(v13, v15);
  v29 = v17[12];
  __swift_project_boxed_opaque_existential_1(v17 + 8, v17[11]);
  v30 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_16_11();
  sub_268567ED0();
  OUTLINED_FUNCTION_12_14();

  (*(v18 + 8))(v21, v14);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_2685468C0()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v5);
  v6 = sub_268567F20();
  v1[4] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[5] = v7;
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v10);
  v11 = sub_2685689F0();
  v1[7] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[8] = v12;
  v14 = *(v13 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2685469C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  if (qword_280282960 != -1)
  {
    v19 = OUTLINED_FUNCTION_0_0();
  }

  v21 = v12[8];
  v20 = v12[9];
  v22 = v12[7];
  v23 = OUTLINED_FUNCTION_2_24(v19, qword_28028B348);
  v24(v23);
  sub_2685689E0();
  v25 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v25))
  {
    v26 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v26);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v27, v28, "RNReadNotificationsFromOneAppPatternFlowProvider makeSingleItemFlow | Single result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  (*(v16 + 8))(v13, v15);
  v29 = v17[12];
  __swift_project_boxed_opaque_existential_1(v17 + 8, v17[11]);
  v30 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_16_11();
  sub_268567ED0();
  OUTLINED_FUNCTION_12_14();

  (*(v18 + 8))(v21, v14);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_268546B44()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v5);
  v6 = sub_268567F20();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[10] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_39();
  v14 = sub_268567FF0();
  v1[13] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_39();
  v18 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_268546C9C()
{
  OUTLINED_FUNCTION_20_2();
  v1 = v0[15];
  v2 = v0[5];
  sub_268567F80();
  v0[16] = *(v2 + 104);

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_268546D5C;
  v4 = v0[15];
  v5 = v0[5];

  return sub_268548208();
}

uint64_t sub_268546D5C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0;
  v4 = v3[17];
  v5 = v3[16];
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_26854703C;
  }

  else
  {
    v9 = sub_268546E84;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268546E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_10();
  if (qword_280282960 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  v19 = v16[11];
  v18 = v16[12];
  v20 = v16[10];
  v21 = OUTLINED_FUNCTION_2_24(v17, qword_28028B348);
  v22(v21);
  v23 = sub_2685689E0();
  v24 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v24))
  {
    v25 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v25);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v26, v27, "RNReadNotificationsFromOneAppPatternFlowProvider makeAllResultsFlow | pattern successfully executed");
    OUTLINED_FUNCTION_12_3();
  }

  v28 = v16[14];
  v29 = v16[12];
  v48 = v16[13];
  v49 = v16[15];
  v30 = v16[10];
  v31 = v16[11];
  v33 = v16[8];
  v32 = v16[9];
  v34 = v16[6];
  v46 = v16[3];
  v47 = v16[7];
  v35 = v16[5];

  (*(v31 + 8))(v29, v30);
  sub_268567AE0();
  OUTLINED_FUNCTION_16_11();
  sub_268567ED0();
  v36 = v35[12];
  __swift_project_boxed_opaque_existential_1(v35 + 8, v35[11]);
  sub_268567850();

  (*(v33 + 8))(v32, v47);
  (*(v28 + 8))(v49, v48);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_59();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_26854703C()
{
  OUTLINED_FUNCTION_20_2();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_9_1();
  v5 = v0[18];

  return v4();
}

uint64_t sub_2685470DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268567CE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = *(a2 + 104);
  v14 = sub_2684DEAF0(v13);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_9:
    sub_268567CD0();
    sub_268509368(v15, v12);

    (*(v5 + 8))(v8, v4);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
    sub_268567EF0();
    return sub_268567EE0();
  }

  v16 = v14;
  v25 = MEMORY[0x277D84F90];

  result = sub_268569040();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v22 = v5;
    v23 = v4;
    v24 = a1;
    sub_2684DB414();
    v18 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D61C170](v18, v13);
      }

      else
      {
        v20 = *(v13 + 8 * v18 + 32);
      }

      ++v18;
      sub_26856427C(v19);
      sub_268569020();
      v21 = *(v25 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v16 != v18);

    v15 = v25;
    v5 = v22;
    v4 = v23;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_268547314()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838C0, &qword_26856FC00);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v11 = sub_268567A60();
  v1[10] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[11] = v12;
  v14 = *(v13 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_268547444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_10();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[13];
  v28 = v24[10];
  v29 = v24[11];
  v30 = v24[4];
  sub_268567A30();
  LOBYTE(v30) = sub_268567A40();
  v31 = *(v29 + 8);
  v31(v27, v28);
  if (v30)
  {
    v24[2] = v24[5];
    v32 = v24[9];
    v33 = v24[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider();
    sub_2685491EC(&qword_2802838D0, v34, type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider);
    sub_268567810();
    sub_268567EC0();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838C8, &qword_26856FC08);
    v36 = v33;
    v37 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v39 = v24[11];
    v38 = v24[12];
    v40 = v24[10];
    v42 = v24[7];
    v41 = v24[8];
    v43 = v24[6];
    v44 = v24[4];
    v45 = __swift_project_value_buffer(v43, qword_28028B348);
    (*(v42 + 16))(v41, v45, v43);
    (*(v39 + 16))(v38, v44, v40);
    v46 = sub_2685689E0();
    v47 = sub_268568DE0();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v24[12];
    v50 = v24[10];
    v52 = v24[7];
    v51 = v24[8];
    v53 = v24[6];
    if (v48)
    {
      a12 = v24[6];
      v54 = swift_slowAlloc();
      a11 = swift_slowAlloc();
      a13 = a11;
      *v54 = 136315138;
      sub_2685491EC(&qword_2802837E8, 255, MEMORY[0x277D5B9D0]);
      HIDWORD(a9) = v47;
      v55 = sub_2685691A0();
      a10 = v51;
      v57 = v56;
      v31(v49, v50);
      v58 = sub_2684EABEC(v55, v57, &a13);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_2684CA000, v46, BYTE4(a9), "Unsupported promptType '%s'. Will not support windowing.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a11);
      MEMORY[0x26D61CB30](a11, -1, -1);
      MEMORY[0x26D61CB30](v54, -1, -1);

      (*(v52 + 8))(a10, a12);
    }

    else
    {

      v31(v49, v50);
      (*(v52 + 8))(v51, v53);
    }

    v59 = v24[3];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838C8, &qword_26856FC08);
    v36 = v59;
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  v61 = v24[12];
  v60 = v24[13];
  v63 = v24[8];
  v62 = v24[9];

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_59();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16);
}