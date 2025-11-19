uint64_t sub_266C9107C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CAD68);
  v1 = __swift_project_value_buffer(v0, qword_2800CAD68);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C91144()
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

uint64_t sub_266C9118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266C911B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  sub_266DA80FC();
  *(v0 + 48) = sub_266DA80BC();
  *(v0 + 56) = sub_266DA80CC();
  *(v0 + 64) = sub_266DA80DC();
  *(v0 + 72) = (*(*(v2 + 32) + 16))();
  *(v0 + 80) = v4;
  *(v0 + 104) = v5;
  if (v5 == -1)
  {
    if (qword_2800C9238 != -1)
    {
      swift_once();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CAD68);
    v13 = sub_266DA948C();
    v14 = sub_266DAAAFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266C08000, v13, v14, "Unsupported reason transformer failed to provide a value", v15, 2u);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    sub_266C99578();
    swift_allocError();
    swift_willThrow();
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);

    OUTLINED_FUNCTION_28();

    return v19();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 88) = v6;
    *v6 = v7;
    v6[1] = sub_266C9141C;
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 16);

    return sub_266C91614();
  }
}

uint64_t sub_266C9141C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C91518()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_266C995CC(*(v0 + 72), *(v0 + 80), *(v0 + 104));

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266C91598()
{
  OUTLINED_FUNCTION_34();
  sub_266C995CC(*(v0 + 72), *(v0 + 80), *(v0 + 104));
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266C91614()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 696) = v0;
  *(v1 + 688) = v2;
  *(v1 + 1708) = v3;
  *(v1 + 680) = v4;
  *(v1 + 672) = v5;
  *(v1 + 664) = v6;
  *(v1 + 656) = v7;
  v8 = type metadata accessor for Snippets();
  *(v1 + 704) = v8;
  OUTLINED_FUNCTION_4_3(v8);
  v10 = *(v9 + 64);
  *(v1 + 712) = OUTLINED_FUNCTION_64();
  *(v1 + 720) = swift_task_alloc();
  *(v1 + 728) = swift_task_alloc();
  *(v1 + 736) = swift_task_alloc();
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  *(v1 + 760) = swift_task_alloc();
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  *(v1 + 816) = swift_task_alloc();
  *(v1 + 824) = swift_task_alloc();
  *(v1 + 832) = swift_task_alloc();
  v11 = sub_266DA80AC();
  *(v1 + 840) = v11;
  OUTLINED_FUNCTION_11_3(v11);
  *(v1 + 848) = v12;
  v14 = *(v13 + 64);
  *(v1 + 856) = OUTLINED_FUNCTION_64();
  *(v1 + 864) = swift_task_alloc();
  *(v1 + 872) = swift_task_alloc();
  *(v1 + 880) = swift_task_alloc();
  v15 = sub_266DA7C0C();
  *(v1 + 888) = v15;
  OUTLINED_FUNCTION_11_3(v15);
  *(v1 + 896) = v16;
  v18 = *(v17 + 64);
  *(v1 + 904) = OUTLINED_FUNCTION_64();
  *(v1 + 912) = swift_task_alloc();
  *(v1 + 920) = swift_task_alloc();
  *(v1 + 928) = swift_task_alloc();
  *(v1 + 936) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v19);
  v21 = *(v20 + 64);
  *(v1 + 944) = OUTLINED_FUNCTION_64();
  *(v1 + 952) = swift_task_alloc();
  *(v1 + 960) = swift_task_alloc();
  *(v1 + 968) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v22);
  *(v1 + 976) = v23;
  *(v1 + 984) = *(v24 + 64);
  *(v1 + 992) = OUTLINED_FUNCTION_64();
  *(v1 + 1000) = swift_task_alloc();
  *(v1 + 1008) = swift_task_alloc();
  *(v1 + 1016) = swift_task_alloc();
  *(v1 + 1024) = swift_task_alloc();
  *(v1 + 1032) = swift_task_alloc();
  *(v1 + 1040) = swift_task_alloc();
  *(v1 + 1048) = swift_task_alloc();
  *(v1 + 1056) = swift_task_alloc();
  *(v1 + 1064) = swift_task_alloc();
  *(v1 + 1072) = swift_task_alloc();
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  *(v1 + 1104) = swift_task_alloc();
  *(v1 + 1112) = swift_task_alloc();
  *(v1 + 1120) = swift_task_alloc();
  *(v1 + 1128) = swift_task_alloc();
  *(v1 + 1136) = swift_task_alloc();
  *(v1 + 1144) = swift_task_alloc();
  *(v1 + 1152) = swift_task_alloc();
  *(v1 + 1160) = swift_task_alloc();
  *(v1 + 1168) = swift_task_alloc();
  *(v1 + 1176) = swift_task_alloc();
  *(v1 + 1184) = swift_task_alloc();
  *(v1 + 1192) = swift_task_alloc();
  v25 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v25);
  v27 = *(v26 + 64) + 15;
  *(v1 + 1200) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v28);
  v30 = *(v29 + 64);
  *(v1 + 1208) = OUTLINED_FUNCTION_64();
  *(v1 + 1216) = swift_task_alloc();
  *(v1 + 1224) = swift_task_alloc();
  *(v1 + 1232) = swift_task_alloc();
  *(v1 + 1240) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v31);
  v33 = *(v32 + 64) + 15;
  *(v1 + 1248) = swift_task_alloc();
  v34 = sub_266DA737C();
  *(v1 + 1256) = v34;
  OUTLINED_FUNCTION_11_3(v34);
  *(v1 + 1264) = v35;
  v37 = *(v36 + 64);
  *(v1 + 1272) = OUTLINED_FUNCTION_64();
  *(v1 + 1280) = swift_task_alloc();
  *(v1 + 1288) = swift_task_alloc();
  v38 = sub_266DA7E5C();
  *(v1 + 1296) = v38;
  OUTLINED_FUNCTION_11_3(v38);
  *(v1 + 1304) = v39;
  v41 = *(v40 + 64) + 15;
  *(v1 + 1312) = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_266C91B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v13 = *(v12 + 696);
  v14 = *(v12 + 688);
  v15 = *(v12 + 1708);
  sub_266C98A90(*(v12 + 672), *(v12 + 680), *(v12 + 1708), *(v12 + 1312));
  switch(v15)
  {
    case 1:
      v54 = *(v12 + 1200);
      v55 = *(v12 + 696);
      v56 = *(v12 + 672);
      v57 = *(v12 + 664);
      v58 = v55[5];
      sub_266DA914C();

      *(v12 + 1320) = sub_266C556E8(v59);
      sub_266DA900C();
      [v56 person];
      v60 = v55[4];
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      sub_266DA7AFC();
      *(v12 + 1328) = sub_266DA8FBC();
      v61 = swift_task_alloc();
      *(v12 + 1336) = v61;
      *v61 = v12;
      OUTLINED_FUNCTION_58_0(v61);
      OUTLINED_FUNCTION_26_4();

      result = sub_266CB2B78(v62, v63);
      break;
    case 2:
      v29 = *(v12 + 1200);
      v30 = *(v12 + 696);
      v31 = *(v12 + 688);
      v32 = *(v12 + 672);
      v33 = *(v12 + 664);
      v172 = *(v12 + 680);
      v174 = v30[5];
      sub_266DA914C();

      *(v12 + 1360) = sub_266C556E8(v34);
      sub_266DA900C();
      [v32 person];
      v35 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      sub_266DA7AFC();
      *(v12 + 1368) = sub_266DA8FBC();
      v36 = swift_task_alloc();
      *(v36 + 16) = *(v31 + 16);
      *(v36 + 32) = *(v31 + 32);
      *(v36 + 40) = v30;
      sub_266C24340(sub_266C9965C, v36, v172);
      *(v12 + 1376) = v37;

      v38 = swift_task_alloc();
      *(v12 + 1384) = v38;
      *v38 = v12;
      v38[1] = sub_266C92824;
      OUTLINED_FUNCTION_26_4();

      result = sub_266CB4404(v39, v40, v41);
      break;
    case 3:
      v43 = *(v12 + 1200);
      v44 = *(v12 + 696);
      v45 = *(v12 + 672);
      v46 = *(v12 + 664);
      v47 = v44[5];
      sub_266DA900C();
      [v45 person];
      v48 = v44[4];
      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      sub_266DA7AFC();
      *(v12 + 1408) = sub_266DA8FBC();
      sub_266DA914C();

      *(v12 + 1416) = sub_266C556E8(v49);
      v50 = swift_task_alloc();
      *(v12 + 1424) = v50;
      *v50 = v12;
      OUTLINED_FUNCTION_58_0(v50);
      OUTLINED_FUNCTION_26_4();

      result = sub_266CB34E4(v51, v52);
      break;
    case 4:
      v22 = *(v12 + 664);
      v23 = *(*(v12 + 696) + 40);
      sub_266DA914C();

      *(v12 + 1560) = sub_266C556E8(v24);
      v25 = swift_task_alloc();
      *(v12 + 1568) = v25;
      *v25 = v12;
      v25[1] = sub_266C954A4;
      OUTLINED_FUNCTION_26_4();

      result = sub_266CB4308(v26);
      break;
    default:
      v16 = *(v12 + 672);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v17 = OUTLINED_FUNCTION_101();
      *(v17 + 16) = xmmword_266DAE3B0;
      if (v16 && (v18 = [v16 identifier]) != 0)
      {
        v19 = v18;
        sub_266DAA70C();
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if (qword_2800C94A0 != -1)
      {
        swift_once();
      }

      v65 = *(v12 + 1280);
      v66 = *(v12 + 1272);
      v67 = *(v12 + 1264);
      v68 = *(v12 + 1256);
      v69 = __swift_project_value_buffer(v68, qword_2800E6560);
      v70 = *(v67 + 16);
      v70(v65, v69, v68);
      v70(v66, v65, v68);
      if (v21)
      {
        v71 = *(v12 + 1272);
        v72 = *(v12 + 1248);

        sub_266DA733C();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      v74 = *(v12 + 1272);
      v75 = *(v12 + 1264);
      v76 = *(v12 + 1256);
      __swift_storeEnumTagSinglePayload(*(v12 + 1248), v73, 1, v76);
      v77 = *(v75 + 8);
      v77(v74, v76);
      v78 = OUTLINED_FUNCTION_78();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, v79, v76);
      v81 = *(v12 + 1288);
      v82 = *(v12 + 1280);
      v83 = *(v12 + 1264);
      v84 = *(v12 + 1256);
      v85 = *(v12 + 1248);
      v175 = v17;
      v170 = v77;
      if (EnumTagSinglePayload == 1)
      {
        (*(v83 + 32))(v81, v82, v84);
        v86 = OUTLINED_FUNCTION_78();
        if (__swift_getEnumTagSinglePayload(v86, v87, v84) != 1)
        {
          sub_266C47654(*(v12 + 1248), &qword_2800C9C48, &unk_266DAEBA0);
        }
      }

      else
      {
        v77(v82, v84);
        (*(v83 + 32))(v81, v85, v84);
      }

      v168 = *(v12 + 1312);
      v88 = *(v12 + 1304);
      v89 = *(v12 + 1296);
      v90 = *(v12 + 1288);
      v91 = *(v12 + 1256);
      v92 = *(v12 + 1240);
      v93 = *(v12 + 656);
      v94 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
      v95 = sub_266DA732C();
      [v94 setPunchOutUri_];

      v170(v90, v91);

      *(v175 + 32) = v94;
      (*(v88 + 16))(v92, v168, v89);
      OUTLINED_FUNCTION_19_7();
      v96 = sub_266DA820C();
      v97 = MEMORY[0x277D5C1D8];
      v93[3] = v96;
      v93[4] = v97;
      __swift_allocate_boxed_opaque_existential_1(v93);
      sub_266DA81EC();
      (*(v88 + 8))(v168, v89);
      v98 = *(v12 + 1312);
      v99 = *(v12 + 1288);
      v100 = *(v12 + 1280);
      v101 = *(v12 + 1272);
      v102 = *(v12 + 1248);
      v103 = *(v12 + 1240);
      v104 = *(v12 + 1232);
      v105 = *(v12 + 1224);
      v106 = *(v12 + 1216);
      v107 = *(v12 + 1208);
      v116 = *(v12 + 1200);
      v117 = *(v12 + 1192);
      v118 = *(v12 + 1184);
      v119 = *(v12 + 1176);
      v120 = *(v12 + 1168);
      v121 = *(v12 + 1160);
      v122 = *(v12 + 1152);
      v123 = *(v12 + 1144);
      v124 = *(v12 + 1136);
      v125 = *(v12 + 1128);
      v126 = *(v12 + 1120);
      v127 = *(v12 + 1112);
      v128 = *(v12 + 1104);
      v129 = *(v12 + 1096);
      v130 = *(v12 + 1088);
      v131 = *(v12 + 1080);
      v132 = *(v12 + 1072);
      v133 = *(v12 + 1064);
      v134 = *(v12 + 1056);
      v135 = *(v12 + 1048);
      v136 = *(v12 + 1040);
      v137 = *(v12 + 1032);
      v138 = *(v12 + 1024);
      v139 = *(v12 + 1016);
      v140 = *(v12 + 1008);
      v141 = *(v12 + 1000);
      v142 = *(v12 + 992);
      v143 = *(v12 + 968);
      v144 = *(v12 + 960);
      v145 = *(v12 + 952);
      v146 = *(v12 + 944);
      v147 = *(v12 + 936);
      v148 = *(v12 + 928);
      v149 = *(v12 + 920);
      v150 = *(v12 + 912);
      v151 = *(v12 + 904);
      v152 = *(v12 + 880);
      v153 = *(v12 + 872);
      v154 = *(v12 + 864);
      v155 = *(v12 + 856);
      v156 = *(v12 + 832);
      v157 = *(v12 + 824);
      v158 = *(v12 + 816);
      v159 = *(v12 + 808);
      v160 = *(v12 + 800);
      v161 = *(v12 + 792);
      v162 = *(v12 + 784);
      v163 = *(v12 + 776);
      v164 = *(v12 + 768);
      v165 = *(v12 + 760);
      v166 = *(v12 + 752);
      v167 = *(v12 + 744);
      v169 = *(v12 + 736);
      v171 = *(v12 + 728);
      v173 = *(v12 + 720);
      v176 = *(v12 + 712);

      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_26_4();

      result = v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12);
      break;
  }

  return result;
}

uint64_t sub_266C926E0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = v4[167];
  v6 = v4[166];
  v7 = v4[165];
  v8 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;
  *(v11 + 1344) = v10;
  *(v11 + 1352) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266C92824()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = v4[173];
  v6 = v4[172];
  v7 = v4[171];
  v8 = v4[170];
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  *(v12 + 1392) = v11;
  *(v12 + 1400) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266C92984()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = v4[178];
  v6 = v4[177];
  v7 = v4[176];
  v8 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;
  *(v11 + 1432) = v10;
  *(v11 + 1440) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266C92FA4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1472);
  v6 = *(v4 + 1456);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 616));
  __swift_destroy_boxed_opaque_existential_0((v2 + 576));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C930AC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_77_1();
  v2 = v0[104];
  v3 = v0[103];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = v0[168];
  OUTLINED_FUNCTION_5_15();
  v5 = OUTLINED_FUNCTION_7_12();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v3, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C933C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1480);
  v6 = *(v4 + 1456);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 536));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C934C0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_77_1();
  v3 = *(v1 + 816);

  sub_266C477B4(v3);
  v4 = *(v1 + 1344);
  OUTLINED_FUNCTION_5_15();
  v5 = OUTLINED_FUNCTION_7_12();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C937C8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1488);
  v6 = *(v4 + 1456);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 496));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C938C8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_77_1();
  v3 = *(v1 + 808);

  sub_266C477B4(v3);
  v4 = *(v1 + 1344);
  OUTLINED_FUNCTION_5_15();
  v5 = OUTLINED_FUNCTION_7_12();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C93BD0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1496);
  v3 = *(v1 + 1456);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C93CD0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_77_1();

  v3 = *(v1 + 1344);
  OUTLINED_FUNCTION_5_15();
  v4 = OUTLINED_FUNCTION_7_12();
  v5(v4);
  v6 = OUTLINED_FUNCTION_20_6();
  v7(v6);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  v8 = OUTLINED_FUNCTION_38_2();
  v9(v8);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C9449C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1528);
  v6 = *(v4 + 1512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 456));
  __swift_destroy_boxed_opaque_existential_0((v2 + 416));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C945A4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_70_0();
  v3 = *(v1 + 800);
  v4 = *(v1 + 792);

  sub_266C477B4(v4);
  sub_266C477B4(v3);
  v5 = OUTLINED_FUNCTION_2_23();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v4, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C948B0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1536);
  v6 = *(v4 + 1512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 376));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C949B0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_70_0();
  v4 = *(v2 + 784);

  sub_266C477B4(v4);
  v5 = OUTLINED_FUNCTION_2_23();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C94CB0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1544);
  v6 = *(v4 + 1512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 336));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C94DB0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_70_0();
  v4 = *(v2 + 776);

  sub_266C477B4(v4);
  v5 = OUTLINED_FUNCTION_2_23();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C950B0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1552);
  v3 = *(v1 + 1512);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C951B0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_70_0();

  v3 = OUTLINED_FUNCTION_2_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_20_6();
  v6(v5);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  v7 = OUTLINED_FUNCTION_38_2();
  v8(v7);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C954A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 1568);
  v6 = *(v4 + 1560);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v10 + 1576) = v9;
  *(v10 + 1584) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C95A94()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1616);
  v6 = *(v4 + 1600);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C95B9C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_79_0();
  v2 = v0[96];
  v3 = v0[95];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = v0[197];
  OUTLINED_FUNCTION_5_15();
  v5 = OUTLINED_FUNCTION_8_4();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v1, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v3, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C95EB0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1624);
  v6 = *(v4 + 1600);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C95FB0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_79_0();
  v3 = *(v1 + 752);

  sub_266C477B4(v3);
  v4 = *(v1 + 1576);
  OUTLINED_FUNCTION_5_15();
  v5 = OUTLINED_FUNCTION_8_4();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C962B8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1632);
  v6 = *(v4 + 1600);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C963B8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_79_0();
  v3 = *(v1 + 744);

  sub_266C477B4(v3);
  v4 = *(v1 + 1576);
  OUTLINED_FUNCTION_5_15();
  v5 = OUTLINED_FUNCTION_8_4();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C966C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1640);
  v3 = *(v1 + 1600);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C967C0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_79_0();

  v3 = *(v1 + 1576);
  OUTLINED_FUNCTION_5_15();
  v4 = OUTLINED_FUNCTION_8_4();
  v5(v4);
  v6 = OUTLINED_FUNCTION_20_6();
  v7(v6);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);

  v8 = OUTLINED_FUNCTION_38_2();
  v9(v8);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C96F8C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1672);
  v6 = *(v4 + 1656);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C97094()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_75_0();
  v3 = *(v1 + 736);
  v4 = *(v1 + 728);

  sub_266C477B4(v4);
  sub_266C477B4(v3);
  v5 = OUTLINED_FUNCTION_3_20();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v4, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C973A0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1680);
  v6 = *(v4 + 1656);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C974A0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_75_0();
  v4 = *(v2 + 720);

  sub_266C477B4(v4);
  v5 = OUTLINED_FUNCTION_3_20();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C977A0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1688);
  v6 = *(v4 + 1656);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266C978A0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_75_0();
  v4 = *(v2 + 712);

  sub_266C477B4(v4);
  v5 = OUTLINED_FUNCTION_3_20();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_6();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  v9 = OUTLINED_FUNCTION_38_2();
  v10(v9);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C97BA0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 1696);
  v3 = *(v1 + 1656);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_266C97CA0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_75_0();

  v3 = OUTLINED_FUNCTION_3_20();
  v4(v3);
  v5 = OUTLINED_FUNCTION_20_6();
  v6(v5);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_33_1();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  v7 = OUTLINED_FUNCTION_38_2();
  v8(v7);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C97F94()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = OUTLINED_FUNCTION_1_23(*(v0 + 1352));
  v2(v1);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C98218()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = OUTLINED_FUNCTION_1_23(*(v0 + 1400));
  v2(v1);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C9849C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = OUTLINED_FUNCTION_1_23(*(v0 + 1584));
  v2(v1);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266C98720()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = OUTLINED_FUNCTION_1_23(*(v0 + 1440));
  v2(v1);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266C989A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266C989CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  sub_266DA80FC();
  v4 = sub_266DA80CC();
  (*(*(*(v2 + 32) + 8) + 16))(0, v3);

  v5 = sub_266DA80CC();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_266C98A90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 1:
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE08, &qword_266DB30E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE4A0;
      v8 = [a1 person];
      goto LABEL_11;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE08, &qword_266DB30E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE4A0;
      if (sub_266C3A14C(a2, v16, v17) == 1)
      {
        if (sub_266C3A14C(a2, v18, v19))
        {
          sub_266CB9F54(0, (a2 & 0xC000000000000001) == 0, a2);
          if ((a2 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x26D5F1780](0, a2);
          }

          else
          {
            v20 = *(a2 + 32);
          }

          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v23 = [v21 person];
      }

      else
      {
        v23 = [a1 person];
      }

      *(inited + 32) = v23;
      goto LABEL_18;
    case 4:
      v9 = __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];

      sub_266DA7E4C();
      sub_266DA7DCC();
      return sub_266DA7E1C();
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE08, &qword_266DB30E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266DAE4A0;
      if (a1)
      {
        v8 = [a1 person];
LABEL_11:
        v22 = v8;
      }

      else
      {
        v22 = 0;
      }

      *(inited + 32) = v22;
LABEL_18:
      sub_266C98E04(inited, a4);
      swift_setDeallocating();
      return sub_266C6F528();
  }
}

uint64_t sub_266C98D0C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266DA750C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  sub_266DA900C();
  v9 = [v8 person];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_266DA7AFC();
  result = sub_266DA8FBC();
  *a3 = result;
  return result;
}

uint64_t sub_266C98E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F70, &qword_266DAF970);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = &v53 - v15;
  v66 = sub_266DA957C();
  v16 = *(v66 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v66);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v53 - v20;
  v21 = __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  v22 = *v21;
  v23 = v21[1];
  v25 = v21[2];
  v24 = v21[3];

  sub_266DA7E4C();
  sub_266DA7DCC();
  v26 = v12;
  v60 = a2;
  sub_266DA7E1C();
  v27 = 0;
  v28 = *(a1 + 16);
  v67 = (v13 + 8);
  v62 = "notificationTitle";
  v57 = v16;
  v58 = (v16 + 32);
  v29 = a1 + 32;
  v61 = MEMORY[0x277D84F90];
  v63 = v26;
  v64 = v11;
  v54 = a1 + 32;
  v55 = v28;
  while (1)
  {
    v30 = (v29 + 8 * v27);
    v31 = v28 - v27;
    v32 = v27 + 1;
    v34 = v67;
    v33 = v68;
    if (!v31)
    {
      return sub_266DA7DAC();
    }

    while (1)
    {
      v35 = *v30;
      if (*v30)
      {
        break;
      }

LABEL_6:
      ++v32;
      ++v30;
      if (!--v31)
      {
        return sub_266DA7DAC();
      }
    }

    v69 = v32;
    v36 = v35;
    sub_266DA8E0C();
    v37 = sub_266DA8E1C();
    (*v34)(v33, v26);
    v70[0] = v36;
    v37(&v71, v70);

    v70[0] = sub_266C39CB4(v36);
    v70[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    sub_266DAA72C();

    sub_266DA853C();

    v39 = sub_266DA94FC();
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v39);
    sub_266C9A2C4();
    sub_266DA952C();

    v40 = v64;
    v41 = v66;
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v66);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v41);
    v26 = v63;
    v34 = v67;
    v33 = v68;
    if (EnumTagSinglePayload)
    {
      sub_266C47654(v40, &qword_2800CA8B8, &qword_266DB30F0);
      v32 = v69;
      goto LABEL_6;
    }

    v43 = *v58;
    v44 = v56;
    v45 = v66;
    (*v58)(v56, v40, v66);
    v43(v59, v44, v45);
    v46 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v46 + 16);
      sub_266CF9D4C();
      v46 = v50;
    }

    v29 = v54;
    v28 = v55;
    v47 = *(v46 + 16);
    if (v47 >= *(v46 + 24) >> 1)
    {
      sub_266CF9D4C();
      v46 = v51;
    }

    *(v46 + 16) = v47 + 1;
    v48 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v61 = v46;
    v43((v46 + v48 + *(v57 + 72) * v47), v59, v66);
    v27 = v69;
  }
}

uint64_t sub_266C99368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C4716C;

  return sub_266C9118C(a1, a2, a3);
}

uint64_t sub_266C99418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C781A4;

  return sub_266C989A4(a1, a2);
}

uint64_t sub_266C994B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

unint64_t sub_266C99578()
{
  result = qword_2800CAE00;
  if (!qword_2800CAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CAE00);
  }

  return result;
}

void sub_266C995CC(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_266C995E0(a1, a2, a3);
  }
}

void sub_266C995E0(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    v3 = a3;
    if (a3 > 3uLL)
    {
      v3 = 0;
    }

    ((&loc_266C99604 + funcs_266C9960C[v3]))(a1);
  }
}

void sub_266C99610(id a1)
{
}

uint64_t sub_266C99620(void *a1)
{
}

uint64_t sub_266C9965C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_266C98D0C(a1, *(v2 + 40), a2);
}

uint64_t objectdestroyTm_7()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v76 = v12 + v28;
        v1 = type metadata accessor for Location();
        v77 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v77, v78, v1))
        {
          v79 = v1[7];
          v80 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v80);
          (*(v81 + 8))(&v76[v79]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v76[v1[11]];
          v82 = type metadata accessor for Address();
          v83 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v83, v84, v82))
          {
            sub_266DA919C();
            v85 = OUTLINED_FUNCTION_109();
            v235 = v86;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, v87, v86);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v89, v90, v91, v92, v93, v94, v95, v232, v235);
              (*(v96 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v82[5]);
            OUTLINED_FUNCTION_70(v82[6]);
            v97 = OUTLINED_FUNCTION_70(v82[7]);
            v105 = OUTLINED_FUNCTION_115(v97, v98, v99, v100, v101, v102, v103, v104, v232, v235);
            if (!v105)
            {
              OUTLINED_FUNCTION_20_2(v105, v106, v107, v108, v109, v110, v111, v112, v232, v236);
              (*(v113 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v82[9]);
            OUTLINED_FUNCTION_70(v82[10]);
            OUTLINED_FUNCTION_70(v82[11]);
            v114 = *&v2[v82[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            v61 = OUTLINED_FUNCTION_78();
            if (!__swift_getEnumTagSinglePayload(v61, v62, v3))
            {
              sub_266DA919C();
              v63 = OUTLINED_FUNCTION_78();
              v234 = v64;
              v66 = __swift_getEnumTagSinglePayload(v63, v65, v64);
              if (!v66)
              {
                OUTLINED_FUNCTION_20_2(v66, v67, v68, v69, v70, v71, v72, v73, v232, v234);
                (*(v74 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v232 = v3[8];
              if (!__swift_getEnumTagSinglePayload(&v60[v232], 1, v234))
              {
                (*(*(v234 - 8) + 8))(&v60[v232]);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v75 = *&v60[v3[12]];
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v115 = v12[1];

        v116 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v117);
        }

        v118 = v12[8];

        v119 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v120 = v12[1];

        v121 = v12[3];

        v122 = type metadata accessor for Snippets.Contact();
        v123 = OUTLINED_FUNCTION_98(v122);
        OUTLINED_FUNCTION_8_0(v123);
        (*(v124 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v125 = (v0 + v10);
  v126 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v126, v127, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v150 = *(v125 + 1);

        v151 = *(v125 + 3);

        v152 = type metadata accessor for Snippets.Contact();
        v153 = OUTLINED_FUNCTION_96(v152);
        OUTLINED_FUNCTION_8_0(v153);
        (*(v154 + 8))(v1 + v125);
        v149 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v128 = *v125;
        goto LABEL_73;
      case 4u:
        v135 = *(v125 + 1);

        v136 = *(v125 + 3);

        v137 = *(v125 + 5);

        v138 = *(v125 + 6);

        v139 = &v125[*(type metadata accessor for Friend() + 40)];
        v140 = type metadata accessor for FriendLocation();
        if (OUTLINED_FUNCTION_34_1())
        {
          break;
        }

        v141 = *(v139 + 1);

        v142 = &v139[*(v140 + 32)];
LABEL_59:
        v208 = type metadata accessor for Location();
        if (OUTLINED_FUNCTION_34_1())
        {
          break;
        }

        v209 = v208[7];
        v210 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v210);
        (*(v211 + 8))(&v142[v209]);
        v212 = *&v142[v208[8] + 8];

        v213 = &v142[v208[11]];
        v214 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v214))
        {
          v215 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v213, 1, v215))
          {
            (*(*(v215 - 8) + 8))(v213, v215);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v216 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v213 + v216, 1, v215))
          {
            (*(*(v215 - 8) + 8))(v213 + v216, v215);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v217 = *(v213 + *(v2 + 12));
        }

        v218 = &v142[v208[12]];
LABEL_72:
        v230 = *(v218 + 1);
LABEL_73:

        break;
      case 5u:
        v161 = *(v125 + 1);

        v162 = *(v125 + 3);

        v163 = *(v125 + 5);

        v164 = *(v125 + 6);

        v165 = &v125[*(type metadata accessor for Friend() + 40)];
        v166 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_82_0(v166))
        {
          v167 = *(v165 + 1);

          v168 = &v165[v1[8]];
          v169 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_82_0(v169))
          {
            v170 = v1[7];
            v171 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v171);
            (*(v172 + 8))(&v168[v170]);
            v173 = *&v168[v1[8] + 8];

            v2 = &v168[v1[11]];
            v174 = type metadata accessor for Address();
            v175 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v175, v176, v174))
            {
              sub_266DA919C();
              v177 = OUTLINED_FUNCTION_109();
              v237 = v178;
              v180 = __swift_getEnumTagSinglePayload(v177, v179, v178);
              if (!v180)
              {
                OUTLINED_FUNCTION_20_2(v180, v181, v182, v183, v184, v185, v186, v187, v232, v237);
                (*(v188 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v174[5]);
              OUTLINED_FUNCTION_70(v174[6]);
              v189 = OUTLINED_FUNCTION_70(v174[7]);
              v197 = OUTLINED_FUNCTION_115(v189, v190, v191, v192, v193, v194, v195, v196, v232, v237);
              if (!v197)
              {
                OUTLINED_FUNCTION_20_2(v197, v198, v199, v200, v201, v202, v203, v204, v233, v238);
                (*(v205 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v174[9]);
              OUTLINED_FUNCTION_70(v174[10]);
              OUTLINED_FUNCTION_70(v174[11]);
              v206 = *&v2[v174[12]];
            }

            v207 = *&v168[v1[12] + 8];
          }
        }

        v142 = &v125[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v219 = *(v125 + 1);

        v220 = *(v125 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v125 + 5), v221);
        }

        v222 = *(v125 + 8);

        v223 = *(v125 + 10);
        goto LABEL_73;
      case 7u:
        v155 = *(v125 + 1);

        v156 = *(v125 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v125 + 5), v157);
        }

        v158 = *(v125 + 8);

        v159 = *(v125 + 10);

        v160 = *(v125 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v125 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v143 = *(v125 + 1);

        v144 = *(v125 + 3);

        v145 = type metadata accessor for Snippets.Contact();
        v146 = OUTLINED_FUNCTION_96(v145);
        OUTLINED_FUNCTION_8_0(v146);
        (*(v147 + 8))(v1 + v125);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v148 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v148 + 20));

        v149 = *(v148 + 24);
        goto LABEL_71;
      case 0xAu:
        v224 = *(v125 + 1);

        v225 = *(v125 + 3);

        v226 = type metadata accessor for Snippets.Contact();
        v227 = OUTLINED_FUNCTION_96(v226);
        OUTLINED_FUNCTION_8_0(v227);
        (*(v228 + 8))(v1 + v125);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v229 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v229 + 28));

        v149 = *(v229 + 32);
LABEL_71:
        v218 = &v125[v149];
        goto LABEL_72;
      case 0xBu:
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v129);
        (*(v130 + 8))(v0 + v10);
        v131 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v132 = *(v131 + 20);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v133);
        (*(v134 + 8))(&v125[v132]);
        if (*&v125[*(v131 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

unint64_t sub_266C9A2C4()
{
  result = qword_2800C9BD8;
  if (!qword_2800C9BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800C9BD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StrategyError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266C9A3B8()
{
  result = qword_2800CAE18[0];
  if (!qword_2800CAE18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CAE18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_32()
{
  v3 = v0[164];
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[159];
  v7 = v0[156];
  v8 = v0[155];
  v9 = v0[154];
  v10 = v0[153];
  v11 = v0[152];
  v12 = v0[151];
  v25 = v0[150];
  v26 = v0[149];
  v27 = v0[148];
  v28 = v0[147];
  v29 = v0[146];
  v30 = v0[145];
  v31 = v0[144];
  v32 = v0[143];
  v33 = v0[142];
  v34 = v0[141];
  v35 = v0[140];
  v36 = v0[139];
  v37 = v0[138];
  v38 = v0[137];
  v39 = v0[136];
  v40 = v0[135];
  v41 = v0[134];
  v42 = v0[133];
  v43 = v0[132];
  v44 = v0[131];
  v45 = v0[130];
  v46 = v0[129];
  v47 = v0[128];
  v48 = v0[127];
  v49 = v0[126];
  v50 = v0[125];
  v51 = v0[124];
  v52 = v0[121];
  v53 = v0[120];
  v54 = v0[119];
  v55 = v0[118];
  v56 = v0[117];
  v57 = v0[116];
  v58 = v0[115];
  v13 = v0[113];
  *(v1 - 256) = v0[114];
  *(v1 - 248) = v13;
  v14 = v0[109];
  *(v1 - 240) = v0[110];
  *(v1 - 232) = v14;
  v15 = v0[107];
  *(v1 - 224) = v0[108];
  *(v1 - 216) = v15;
  v16 = v0[103];
  *(v1 - 208) = v0[104];
  *(v1 - 200) = v16;
  v17 = v0[101];
  *(v1 - 192) = v0[102];
  *(v1 - 184) = v17;
  v18 = v0[99];
  *(v1 - 176) = v0[100];
  *(v1 - 168) = v18;
  v19 = v0[97];
  *(v1 - 160) = v0[98];
  *(v1 - 152) = v19;
  v20 = v0[95];
  *(v1 - 144) = v0[96];
  *(v1 - 136) = v20;
  v21 = v0[93];
  *(v1 - 128) = v0[94];
  *(v1 - 120) = v21;
  v22 = v0[91];
  *(v1 - 112) = v0[92];
  *(v1 - 104) = v22;
  v23 = v0[89];
  *(v1 - 96) = v0[90];
  *(v1 - 88) = v23;
}

uint64_t OUTLINED_FUNCTION_1_23@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v3 = v1[164];
  v4 = v1[163];
  v5 = v1[162];
  v6 = v1[161];
  v7 = v1[160];
  v8 = v1[159];
  v9 = v1[156];
  v10 = v1[155];
  v11 = v1[154];
  v12 = v1[153];
  v13 = v1[152];
  v26 = v1[151];
  v27 = v1[150];
  v28 = v1[149];
  v29 = v1[148];
  v30 = v1[147];
  v31 = v1[146];
  v32 = v1[145];
  v33 = v1[144];
  v34 = v1[143];
  v35 = v1[142];
  v36 = v1[141];
  v37 = v1[140];
  v38 = v1[139];
  v39 = v1[138];
  v40 = v1[137];
  v41 = v1[136];
  v42 = v1[135];
  v43 = v1[134];
  v44 = v1[133];
  v45 = v1[132];
  v46 = v1[131];
  v47 = v1[130];
  v48 = v1[129];
  v49 = v1[128];
  v50 = v1[127];
  v51 = v1[126];
  v52 = v1[125];
  v53 = v1[124];
  v54 = v1[121];
  v55 = v1[120];
  v56 = v1[119];
  v57 = v1[118];
  v58 = v1[117];
  v59 = v1[116];
  v60 = v1[115];
  v61 = v1[114];
  v14 = v1[110];
  *(v2 - 256) = v1[113];
  *(v2 - 248) = v14;
  v15 = v1[108];
  *(v2 - 240) = v1[109];
  *(v2 - 232) = v15;
  v16 = v1[104];
  *(v2 - 224) = v1[107];
  *(v2 - 216) = v16;
  v17 = v1[102];
  *(v2 - 208) = v1[103];
  *(v2 - 200) = v17;
  v18 = v1[100];
  *(v2 - 192) = v1[101];
  *(v2 - 184) = v18;
  v19 = v1[98];
  *(v2 - 176) = v1[99];
  *(v2 - 168) = v19;
  v20 = v1[96];
  *(v2 - 160) = v1[97];
  *(v2 - 152) = v20;
  v21 = v1[94];
  *(v2 - 144) = v1[95];
  *(v2 - 136) = v21;
  v22 = v1[92];
  *(v2 - 128) = v1[93];
  *(v2 - 120) = v22;
  v23 = v1[90];
  *(v2 - 112) = v1[91];
  *(v2 - 104) = v23;
  *(v2 - 96) = v1[89];
  v24 = *(v4 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v2 = v0[174];
  v3 = v0[164];
  v4 = v0[163];
  *(v1 - 96) = v0[162];
  *(v1 - 88) = v3;
  v5 = v0[153];
  v6 = v0[141];
  v7 = v0[140];
  v8 = v0[120];
  v9 = v0[115];
  v10 = v0[112];
  v11 = v0[111];
  result = v0[109];
  v13 = v0[105];
  v14 = *(v0[106] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_20()
{
  v2 = v0[179];
  v3 = v0[164];
  v4 = v0[163];
  *(v1 - 96) = v0[162];
  *(v1 - 88) = v3;
  v5 = v0[151];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[118];
  v9 = v0[113];
  v10 = v0[112];
  v11 = v0[111];
  result = v0[107];
  v13 = v0[105];
  v14 = *(v0[106] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_5_15()
{
  v2 = v0[164];
  v3 = v0[163];
  *(v1 - 96) = v0[162];
  *(v1 - 88) = v2;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
  v1 = v0[154];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[121];
  v5 = v0[117];
  v6 = v0[112];
  v7 = v0[111];
  result = v0[110];
  v9 = v0[105];
  v10 = *(v0[106] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  v1 = v0[152];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[119];
  v5 = v0[114];
  v6 = v0[112];
  v7 = v0[111];
  result = v0[108];
  v9 = v0[105];
  v10 = *(v0[106] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a14;
  *(result + 48) = a17;
  *(result + 56) = a11;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1)
{
  v4 = *(*(v2 + 696) + 168);
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, *(v2 + 704));
  *v1 = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  v5 = *(v4 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_36_3(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 96);
  return *(v1 - 88);
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{
  v5 = *(v2 + 704);

  return sub_266C4756C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_266CB9F54(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

id OUTLINED_FUNCTION_48_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return v1;
}

void OUTLINED_FUNCTION_49_3()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 88) = a10;
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return sub_266C4756C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_266C475DC(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_85_0()
{
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return sub_266C4756C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{
  v4 = *(v2 + 704);

  return sub_266C476A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1)
{
  v4 = *(v2 + 704);

  return sub_266C476A8(a1, v1);
}

void OUTLINED_FUNCTION_91_1()
{

  JUMPOUT(0x26D5F1780);
}

uint64_t sub_266C9ABA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266C9AC10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_266C9AD4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266C9AF88()
{
  v1 = *(v0 + 16);
  sub_266DA7D7C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_266C9AFE8()
{
  swift_getWitnessTable();

  return sub_266DA79AC();
}

uint64_t sub_266C9B058(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C29DCC;

  return sub_266C9AF68(a1);
}

id sub_266C9B124(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266DAA6FC();
  sub_266DA917C();
  v4 = sub_266DAA6FC();

  v5 = sub_266DA918C();
  v7 = sub_266C9B1F4(v3, v4, v5, v6, v2);

  v8 = sub_266DA919C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_266C9B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_266DAA6FC();

  v9 = [a5 initWithVocabularyIdentifier:a1 spokenPhrase:a2 pronunciationHint:v8];

  return v9;
}

uint64_t sub_266C9B280()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CAEA0);
  v1 = __swift_project_value_buffer(v0, qword_2800CAEA0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C9B348(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v4 = sub_266C9C76C(*v3, a1);
  sub_266C9B410(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAEC8, &qword_266DB5350);
  sub_266C230E8(&qword_2800CAED0, &qword_2800CAEC8, &qword_266DB5350);
  v5 = sub_266DA97EC();

  return v5;
}

uint64_t sub_266C9B410(uint64_t a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAED8, &qword_266DB32C0);
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D47240]) init];
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v20 = v1;
    v23 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    sub_266C29814(0, &qword_2800CAEE0, 0x277D47230);
    v10 = (a1 + 32);
    do
    {
      memcpy(v24, v10, 0x99uLL);
      sub_266C9CF60(v24, v22);
      sub_266CC796C(v24);
      sub_266DAAE6C();
      v11 = *(v23 + 16);
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
      v10 += 160;
      --v8;
    }

    while (v8);
    v9 = v23;
    v1 = v20;
  }

  sub_266C9C024(v9, v7);
  sub_266C9CFBC(v1, v22);
  v12 = swift_allocObject();
  memcpy((v12 + 16), v22, 0x50uLL);
  *(v12 + 96) = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAEE8, &unk_266DB32C8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v7;
  v22[0] = sub_266DA97AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
  sub_266C230E8(&qword_2800CAEF0, &qword_2800CAEE8, &unk_266DB32C8);
  sub_266DA984C();

  sub_266C230E8(&qword_2800CAEF8, &qword_2800CAED8, &qword_266DB32C0);
  v17 = v21;
  v18 = sub_266DA97EC();

  (*(v3 + 8))(v6, v17);
  return v18;
}

uint64_t sub_266C9B730@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = sub_266C9C0A8(*a1);
  v6 = MEMORY[0x277D84F90];
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_266C3A14C(v7, v4, v5);
  if (!v8)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_13:
    *a2 = v14;
    return result;
  }

  v9 = v8;
  result = sub_266DAAE8C();
  if ((v9 & 0x8000000000000000) == 0)
  {
    type metadata accessor for DeviceDetail();
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D5F1780](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      ++v11;
      sub_266CC7E38(v12);
      sub_266DAAE6C();
      v13 = *(v6 + 16);
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
    }

    while (v9 != v11);

    v14 = v6;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C9B858(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &__src[-v10];
  v12 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_266C9CFBC(a3, __src);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  memcpy(v13 + 4, __src, 0x50uLL);
  v13[14] = a4;
  v13[15] = a1;
  v13[16] = a2;
  v14 = a4;

  sub_266CD8C08();
}

uint64_t sub_266C9B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x2822009F8](sub_266C9B9A0, 0, 0);
}

uint64_t sub_266C9B9A0()
{
  v1 = v0[4];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x277D5BFB8] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_266C29814(0, &qword_2800CAF08, 0x277D47248);
  *v5 = v0;
  v5[1] = sub_266C9BA7C;
  v7 = v0[5];

  return MEMORY[0x2821BB6A0](v7, v3, v6, v2);
}

uint64_t sub_266C9BA7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_266C9BC38;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_266C9BBA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266C9BBA4()
{
  v8 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v6 = v0[10];
  v7 = 0;
  v3 = v6;
  v2(&v6);

  sub_266C9D0D4(v6, v7);
  v4 = v0[1];

  return v4();
}

uint64_t sub_266C9BC38()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  sub_266C29814(0, &qword_2800CAF10, 0x277D47208);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 72);
  if (v3)
  {

    v5 = *(v0 + 24);
    v6 = [v5 errorCode];
    if (*MEMORY[0x277D47CF8] != v6)
    {
      v10 = *MEMORY[0x277D47CD8];
    }

    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    OUTLINED_FUNCTION_4_16();
    v13();

    v9 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    OUTLINED_FUNCTION_4_16();
    v8();
    v9 = v4;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_266C9BD98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAEB8, &unk_266DB5320);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v11 - v3;
  if (qword_2800C9240 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800CAEA0);
  v6 = sub_266DA948C();
  v7 = sub_266DAAAEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266C08000, v6, v7, "deviceLocation is not supported by AceDeviceSearcher", v8, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v11[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
  sub_266DA977C();
  sub_266C230E8(&qword_2800CAEC0, &qword_2800CAEB8, &unk_266DB5320);
  v9 = sub_266DA97EC();
  (*(v1 + 8))(v4, v0);
  return v9;
}

void *sub_266C9BF9C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {

    sub_266D2D7C8(v4);
  }

  else
  {
    sub_266C9D234(v4);
  }

  return memcpy(a2, v4, 0xF2uLL);
}

void sub_266C9C024(uint64_t a1, void *a2)
{
  sub_266C29814(0, &qword_2800CAEE0, 0x277D47230);
  v3 = sub_266DAA91C();

  [a2 setDeviceSearchQueries_];
}

uint64_t sub_266C9C0A8(void *a1)
{
  v1 = [a1 resolvedDevices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266C29814(0, &qword_2800CAEE0, 0x277D47230);
  v3 = sub_266DAA93C();

  return v3;
}

void sub_266C9C118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DeviceMappingProvider();
  v113 = &off_287864E70;
  v112 = v7;
  v111[0] = a3;
  v110[3] = &type metadata for SupportedOSVersionChecker;
  v110[4] = &off_28785DA30;
  v8 = *__swift_project_boxed_opaque_existential_1(v111, v7);

  sub_266C9BF9C(a2, __src);
  v9 = __src[5];
  v10 = __src[6];
  v11 = __src[7];
  v12 = LOBYTE(__src[9]);
  sub_266D3CC7C(__src, v110, __dst);
  if (LOBYTE(__dst[0]) == 7)
  {
    v13 = sub_266C1CEB4(a4);
    v82 = v14;
    memcpy(__dst, __src, 0xF2uLL);
    v76 = v11;
    if (sub_266C9D0E0(__dst) == 1)
    {
      v78 = 0;
      v80 = 0;
      v10 = 0;
      v15 = 0;
    }

    else
    {
      v78 = v9;
      v80 = __dst[1];
      v15 = __dst[2];
    }

    v16 = sub_266CAB3DC(a4);
    v18 = v17;
    memcpy(v115, __src, 0xF2uLL);
    if (sub_266C9D0E0(v115) == 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
LABEL_10:
      LOBYTE(v109[0]) = v21 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
      v22 = OUTLINED_FUNCTION_6_17();
      *(v22 + 16) = xmmword_266DAE4A0;
      *(v22 + 32) = v13;
      *(v22 + 40) = v82;
      *(v22 + 48) = v80;
      *(v22 + 56) = v15;
      *(v22 + 64) = v78;
      *(v22 + 72) = v10;
      *(v22 + 80) = v16;
      *(v22 + 88) = v18;
      *(v22 + 96) = v19;
      *(v22 + 104) = v109[0];
      *(v22 + 112) = v20;
      *(v22 + 120) = xmmword_266DAFA10;
      OUTLINED_FUNCTION_2_24(v22, 0);
      goto LABEL_11;
    }

    v19 = v115[8];
    HIDWORD(v74) = v12;
    v21 = v115[9];

    sub_266C9D178(__src);
    *&v109[0] = v13;
    *(&v109[0] + 1) = v82;
    *&v109[1] = v80;
    *(&v109[1] + 1) = v15;
    *&v109[2] = v78;
    *(&v109[2] + 1) = v10;
    *&v109[3] = v16;
    *(&v109[3] + 1) = v18;
    *&v109[4] = v19;
    BYTE8(v109[4]) = v21 & 1;
    *&v109[5] = v11;
    *(&v109[5] + 8) = xmmword_266DAFA10;
    *(&v109[6] + 8) = 0u;
    *(&v109[7] + 8) = 0u;
    *(&v109[8] + 8) = 0u;
    BYTE8(v109[9]) = 0;
    if ((v74 & 0x100000000) != 0)
    {
      v20 = v11;
      goto LABEL_10;
    }

    v23 = MEMORY[0x277D84F90];
    v24 = sub_266CAB458(a4);
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    v26 = *__swift_project_boxed_opaque_existential_1(v111, v112);
    OUTLINED_FUNCTION_5_16(&off_287864E70, v7, v74, v76, v78, v80, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]);

    __swift_destroy_boxed_opaque_existential_0(&v83);
    v27 = 0;
    v28 = *(v25 + 16);
    v29 = v25 + 40;
LABEL_16:
    v30 = (v29 + 16 * v27);
    while (v28 != v27)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      ++v27;
      v31 = v30 + 2;
      v33 = *(v30 - 1);
      v32 = *v30;
      v34 = *__swift_project_boxed_opaque_existential_1(v103, v103[3]);

      sub_266D2E4C8();
      v36 = v35;
      LOBYTE(v33) = v37;

      v30 = v31;
      if ((v33 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = *(v23 + 16);
          sub_266CFA204();
          v23 = v41;
        }

        v39 = *(v23 + 16);
        v38 = *(v23 + 24);
        if (v39 >= v38 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v38);
          sub_266CFA204();
          v23 = v42;
        }

        *(v23 + 16) = v39 + 1;
        *(v23 + 8 * v39 + 32) = v36;
        v29 = v25 + 40;
        goto LABEL_16;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v103);
    v43 = *__swift_project_boxed_opaque_existential_1(v111, v112);
    OUTLINED_FUNCTION_5_16(&off_287864E70, v73, v75, v77, v79, v81, v25 + 40, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]);

    __swift_destroy_boxed_opaque_existential_0(&v83);
    v44 = 0;
    v45 = v25 + 40;
    v46 = MEMORY[0x277D84F90];
LABEL_26:
    v47 = (v45 + 16 * v44);
    while (v28 != v44)
    {
      if (v44 >= *(v25 + 16))
      {
        goto LABEL_47;
      }

      ++v44;
      v48 = v47 + 2;
      v50 = *(v47 - 1);
      v49 = *v47;
      v51 = *__swift_project_boxed_opaque_existential_1(v103, v103[3]);

      v52 = sub_266D2E5D8();
      LOBYTE(v50) = v53;

      v47 = v48;
      if ((v50 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = *(v46 + 16);
          sub_266CFA204();
          v46 = v57;
        }

        v55 = *(v46 + 16);
        v54 = *(v46 + 24);
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v54);
          sub_266CFA204();
          v46 = v58;
        }

        *(v46 + 16) = v55 + 1;
        *(v46 + 8 * v55 + 32) = v52;
        v45 = v25 + 40;
        goto LABEL_26;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v103);

    v83 = v23;
    sub_266C38244(v46);
    v59 = v83;
    v60 = *(v83 + 16);
    if (v60)
    {
      v108 = MEMORY[0x277D84F90];
      sub_266C38AA8(0, v60, 0);
      v61 = v108;
      v62 = v60 - 1;
      for (i = 32; ; i += 8)
      {
        v64 = *(v59 + i);
        v104 = v109[0];
        v105 = v109[1];
        v106 = v109[2];
        v107 = v109[3];
        memcpy(v103, &v109[4] + 9, sizeof(v103));
        LOBYTE(v83) = 0;
        sub_266C9CF60(v109, &v83);
        v108 = v61;
        v66 = *(v61 + 16);
        v65 = *(v61 + 24);
        if (v66 >= v65 >> 1)
        {
          v71 = OUTLINED_FUNCTION_3_21(v65);
          sub_266C38AA8(v71, v66 + 1, 1);
          v61 = v108;
        }

        *(v61 + 16) = v66 + 1;
        v67 = v61 + 160 * v66;
        v68 = v104;
        v69 = v105;
        v70 = v107;
        *(v67 + 64) = v106;
        *(v67 + 80) = v70;
        *(v67 + 32) = v68;
        *(v67 + 48) = v69;
        *(v67 + 96) = v64;
        *(v67 + 104) = 0;
        memcpy((v67 + 105), v103, 0x50uLL);
        if (!v62)
        {
          break;
        }

        --v62;
      }
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
    }

    if (*(v61 + 16))
    {
      sub_266C9D1E0(v109);
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
      v72 = OUTLINED_FUNCTION_6_17();
      *(v72 + 16) = xmmword_266DAE4A0;
      memcpy((v72 + 32), v109, 0x99uLL);
    }
  }

  else
  {
    sub_266C9D178(__src);
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v110);
}

uint64_t sub_266C9C76C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DeviceMappingProvider();
  v90 = &off_287864E70;
  v89 = v4;
  v88[0] = a1;
  v86 = &type metadata for SupportedOSVersionChecker;
  v87 = &off_28785DA30;

  v5 = sub_266C1CEB4(a2);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
    v9 = OUTLINED_FUNCTION_6_17();
    *(v9 + 16) = xmmword_266DAE4A0;
    LOBYTE(v92[0]) = 1;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0;
    *(v9 + 104) = 1;
    *(v9 + 112) = 0;
    *(v9 + 120) = 0;
    *(v9 + 128) = 1;
    OUTLINED_FUNCTION_2_24(v9, 0);
    goto LABEL_38;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v88, v4);
  sub_266CAB3D0(a2);
  v11 = *v10;
  sub_266C9BF9C(v12, v91);
  v70 = v91[0];
  v13 = v91[1];
  v74 = *&v91[8];
  v75 = *&v91[24];
  v72 = *&v91[40];
  v73 = *&v91[56];
  v14 = v91[72];
  v15 = v91[73];
  v16 = v91[74];
  v76 = *&v91[96];
  v71 = *&v91[80];
  v17 = a2;
  v18 = *&v91[112];
  memcpy(v84, &v91[120], 0x7AuLL);

  v77 = v17;
  sub_266D3CC7C(v91, v85, v92);
  LOBYTE(v19) = v92[0];
  if (LOBYTE(v92[0]) == 7)
  {
    memcpy(v92, v91, 0xF2uLL);
    if (sub_266C9D0E0(v92) == 1)
    {
      if (qword_2800C9418 != -1)
      {
        OUTLINED_FUNCTION_0_33();
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800CD388);
      v21 = v77;
      v22 = v77;
      v23 = sub_266DA948C();
      v24 = sub_266DAAB0C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v79[0] = v26;
        *v25 = 136315138;
        *v78 = sub_266CAB3D0(v22);
        *&v78[8] = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
        v28 = sub_266DAA72C();
        v30 = sub_266C22A3C(v28, v29, v79);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_266C08000, v23, v24, "toDeviceSearchQueries: no mapping info for deviceType: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      goto LABEL_17;
    }

    v44 = v84;
    v43 = v70;
  }

  else
  {
    if (qword_2800C9418 != -1)
    {
LABEL_40:
      OUTLINED_FUNCTION_0_33();
    }

    v31 = sub_266DA94AC();
    __swift_project_value_buffer(v31, qword_2800CD388);
    v21 = v77;
    v32 = v77;
    v33 = sub_266DA948C();
    v34 = sub_266DAAB0C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v78 = swift_slowAlloc();
      *v35 = 136315394;
      LOBYTE(v92[0]) = v19;
      v36 = sub_266DAA72C();
      v38 = sub_266C22A3C(v36, v37, v78);

      *(v35 + 4) = v38;
      v21 = v77;
      *(v35 + 12) = 2080;
      *&v92[0] = sub_266CAB3D0(v32);
      *(&v92[0] + 1) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      v40 = sub_266DAA72C();
      v42 = sub_266C22A3C(v40, v41, v78);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_266C08000, v33, v34, "toDeviceSearchQueries: got %s findability error for device type: %s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    memcpy(v92, v91, 0xF2uLL);
    if (sub_266C9D0E0(v92) == 1)
    {
      goto LABEL_17;
    }

    v43 = v92[0];
    v13 = BYTE1(v92[0]);
    v74 = *(v92 + 8);
    v75 = *(&v92[1] + 8);
    v72 = *(&v92[2] + 8);
    v73 = *(&v92[3] + 8);
    v15 = BYTE9(v92[4]);
    v16 = BYTE10(v92[4]);
    v76 = v92[6];
    v71 = v92[5];
    v18 = *&v92[7];
    v44 = &v92[7] + 8;
    v14 = BYTE8(v92[4]);
  }

  memcpy(v83, v44, sizeof(v83));
  v78[0] = v43;
  v78[1] = v13;
  *&v78[24] = v75;
  *&v78[8] = v74;
  *&v78[56] = v73;
  *&v78[40] = v72;
  v78[72] = v14 & 1;
  v78[73] = v15;
  v78[74] = v16;
  *&v78[80] = v71;
  *&v78[96] = v76;
  *&v78[112] = v18;
  memcpy(&v78[120], v83, 0x7AuLL);
  v45 = v76;

  v46 = sub_266C9D124(v78);
  v21 = v77;
  if (!v45)
  {
LABEL_17:

    v45 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v46);
  v69[2] = v21;
  v69[3] = v88;
  v69[4] = v85;
  sub_266D6A06C(sub_266C9D104, v69, v45);
  v48 = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
  v49 = OUTLINED_FUNCTION_6_17();
  *(v49 + 16) = xmmword_266DAE4A0;
  v50 = sub_266CAB4B0(v21);
  v82 = 1;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 80) = v50;
  *(v49 + 88) = v51;
  *(v49 + 96) = 0;
  *(v49 + 104) = 1;
  *(v49 + 112) = 0;
  *(v49 + 120) = 0;
  *(v49 + 128) = 1;
  *(v49 + 136) = 0u;
  *(v49 + 152) = 0u;
  *(v49 + 168) = 0u;
  *(v49 + 184) = 0;
  v52 = sub_266CAB3D0(v21);
  v54 = v53;
  v55 = __swift_project_boxed_opaque_existential_1(v88, v89);
  __swift_project_boxed_opaque_existential_1(v85, v86);
  sub_266C9C118(v52, v54, *v55, v21);
  v57 = v56;

  v81 = v57;
  sub_266C382FC(v48);
  sub_266C382FC(v49);
  v58 = 0;
  v59 = v81;
  v60 = *(v81 + 16);
  v19 = MEMORY[0x277D84F90];
LABEL_19:
  v61 = 160 * v58 + 32;
  while (v60 != v58)
  {
    if (v58 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    memcpy(v78, (v59 + v61), 0x99uLL);
    if (*&v78[80])
    {
      v62 = *(*&v78[80] + 16) == 0;
    }

    else
    {
      v62 = 1;
    }

    if (*&v78[8] || *&v78[24] || *&v78[56] || *&v78[40] || (v78[72] & v62 & 1) == 0 || *&v78[96] != 1)
    {
      sub_266C9CF60(v78, v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266C38AA8(0, *(v19 + 16) + 1, 1);
        v19 = v80;
      }

      v65 = *(v19 + 16);
      v64 = *(v19 + 24);
      if (v65 >= v64 >> 1)
      {
        v66 = OUTLINED_FUNCTION_3_21(v64);
        sub_266C38AA8(v66, v65 + 1, 1);
        v19 = v80;
      }

      ++v58;
      *(v19 + 16) = v65 + 1;
      memcpy((v19 + 160 * v65 + 32), v78, 0x99uLL);
      goto LABEL_19;
    }

    v61 += 160;
    ++v58;
  }

  sub_266D3CDE0(v19);
  v9 = v67;

LABEL_38:
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v85);
  return v9;
}

uint64_t sub_266C9D000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266C29DCC;

  return sub_266C9B97C(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

void sub_266C9D0D4(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_266C9D0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_266C9D178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CAF18, &qword_266DB8F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266C9D234(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
  bzero(a1 + 3, 0xDAuLL);
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t result, __n128 a2)
{
  *(result + 136) = a2;
  *(result + 152) = a2;
  *(result + 168) = a2;
  *(result + 184) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_16@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  a11 = v28;
  a12 = a1;
  a8 = v29;

  return sub_266C233D0(&a8, &a28);
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return swift_allocObject();
}

uint64_t sub_266C9D2D8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F200);
  v1 = __swift_project_value_buffer(v0, qword_28156F200);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C9D3A0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAFB0, &qword_266DB3338);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_subject;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CAFB8, &unk_266DB3340);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v0[v10] = sub_266DA96FC();
  v14 = OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_bluetoothManager;
  *&v1[v14] = [objc_allocWithZone(MEMORY[0x277CBDFF8]) init];
  v15 = OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_subscription;
  *&v1[OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_subscription] = 0;
  v29 = *&v1[v10];
  OUTLINED_FUNCTION_6_18();
  sub_266C230E8(v16, &unk_2800CAFB8, &unk_266DB3340);

  sub_266DA98AC();

  v17 = sub_266C9DEC4();
  (*(v4 + 8))(v9, v2);
  *&v1[OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_statePublisher] = v17;
  v29 = v17;

  OUTLINED_FUNCTION_19_8();
  sub_266C230E8(&qword_28156F0A0, &unk_2800CAFC8, &qword_266DB5410);
  v18 = sub_266DA994C();

  v19 = *&v1[v15];
  *&v1[v15] = v18;

  v20 = type metadata accessor for BluetoothStateProvider();
  v28.receiver = v1;
  v28.super_class = v20;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_bluetoothManager;
  v23 = *&v21[OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_bluetoothManager];
  v24 = v21;
  [v23 setDelegate_];
  v25 = *&v24[OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_subject];
  v26 = *&v21[v22];

  v29 = [v26 state];
  sub_266DA96DC();

  OUTLINED_FUNCTION_5();
}

void sub_266C9D670()
{
  OUTLINED_FUNCTION_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB0F0, &qword_266DB33F8);
  OUTLINED_FUNCTION_0_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB0F8, &qword_266DB3400);
  OUTLINED_FUNCTION_0_2(v15);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB100, &qword_266DB3408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB108, &qword_266DB3410);
  OUTLINED_FUNCTION_13_8(&qword_2800CB110);
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v7, &qword_2800CB0F0, &qword_266DB33F8);
  OUTLINED_FUNCTION_3_22(&qword_2800CB128);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_27_4();
  v8 = OUTLINED_FUNCTION_15_11();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB130, &qword_266DB3420);
  OUTLINED_FUNCTION_0_34();
  sub_266C230E8(v10, v11, &qword_266DB3420);
  OUTLINED_FUNCTION_23_5();

  OUTLINED_FUNCTION_19_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB148, &qword_266DB3430);
  OUTLINED_FUNCTION_4_17(&qword_2800CB150);
  OUTLINED_FUNCTION_11_8();

  OUTLINED_FUNCTION_1_24();
  sub_266C230E8(v12, &qword_2800CB0F8, &qword_266DB3400);
  OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_28_2();
  v14(v13);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_5();
}

void sub_266C9D920()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB080, &qword_266DB33B8);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB088, &qword_266DB33C0);
  OUTLINED_FUNCTION_0_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB090, &qword_266DB33C8);
  OUTLINED_FUNCTION_6_18();
  sub_266C230E8(v10, v11, v12);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v13, &qword_2800CB080, &qword_266DB33B8);
  OUTLINED_FUNCTION_3_22(&qword_2800CB0B8);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_26_5();
  v14 = OUTLINED_FUNCTION_14_12();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB0C0, &qword_266DB33E0);
  OUTLINED_FUNCTION_0_34();
  sub_266C230E8(v16, v17, &qword_266DB33E0);
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_19_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC240, &qword_266DB33F0);
  OUTLINED_FUNCTION_4_17(&qword_2800CB0E0);
  OUTLINED_FUNCTION_16_9();
  sub_266DA97FC();

  OUTLINED_FUNCTION_1_24();
  sub_266C230E8(v18, &qword_2800CB088, &qword_266DB33C0);
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_17_10();
  v20(v19);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_5();
}

void sub_266C9DBFC()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB018, &qword_266DB3380);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB020, &qword_266DB3388);
  OUTLINED_FUNCTION_0_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB028, &qword_266DB3390);
  OUTLINED_FUNCTION_6_18();
  sub_266C230E8(v10, v11, v12);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v13, &qword_2800CB018, &qword_266DB3380);
  OUTLINED_FUNCTION_3_22(&qword_2800CB050);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_26_5();
  v14 = OUTLINED_FUNCTION_14_12();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB058, &qword_266DB33A8);
  OUTLINED_FUNCTION_0_34();
  sub_266C230E8(v16, v17, &qword_266DB33A8);
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_17(&qword_2800CB070);
  OUTLINED_FUNCTION_16_9();
  sub_266DA97FC();

  OUTLINED_FUNCTION_1_24();
  sub_266C230E8(v18, &qword_2800CB020, &qword_266DB3388);
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_17_10();
  v20(v19);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C9DEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAFD8, &qword_266DB3350);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAFE0, &qword_266DB3358);
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAFB0, &qword_266DB3338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CAFE8, &qword_266DB3360);
  sub_266C230E8(&unk_28156F0F0, &qword_2800CAFB0, &qword_266DB3338);
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAFF8, &qword_266DB3368);
  sub_266C230E8(&qword_28156F120, &qword_2800CAFD8, &qword_266DB3350);
  sub_266C230E8(&qword_28156F038, &qword_2800CAFF8, &qword_266DB3368);
  v9 = sub_266DA990C();
  (*(v1 + 8))(v4, v0);
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CB000, &qword_266DB3370);
  sub_266C230E8(&unk_28156F0B8, &unk_2800CB000, &qword_266DB3370);
  v10 = sub_266DA974C();

  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB010, &qword_266DB3378);
  type metadata accessor for CBManagerState(0);
  sub_266C230E8(&unk_28156F148, &qword_2800CB010, &qword_266DB3378);
  sub_266DA97FC();

  sub_266C230E8(&unk_28156F180, &qword_2800CAFE0, &qword_266DB3358);
  v11 = v14;
  v12 = sub_266DA97EC();
  (*(v5 + 8))(v8, v11);
  return v12;
}

void sub_266C9E2B8()
{
  OUTLINED_FUNCTION_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB218, &qword_266DB34B0);
  OUTLINED_FUNCTION_0_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB220, &qword_266DB34B8);
  OUTLINED_FUNCTION_0_2(v15);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB228, &qword_266DB34C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1C0, &qword_266DB3488);
  OUTLINED_FUNCTION_13_8(&qword_28156F100);
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v7, &qword_2800CB218, &qword_266DB34B0);
  OUTLINED_FUNCTION_3_22(&qword_28156F060);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_27_4();
  v8 = OUTLINED_FUNCTION_15_11();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CB230, &qword_266DB34C8);
  OUTLINED_FUNCTION_0_34();
  sub_266C230E8(v10, v11, &qword_266DB34C8);
  OUTLINED_FUNCTION_23_5();

  OUTLINED_FUNCTION_19_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  OUTLINED_FUNCTION_4_17(&unk_28156F158);
  OUTLINED_FUNCTION_11_8();

  OUTLINED_FUNCTION_1_24();
  sub_266C230E8(v12, &qword_2800CB220, &qword_266DB34B8);
  OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_28_2();
  v14(v13);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_5();
}

void sub_266C9E568()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1A8, &qword_266DB3470);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1B0, &qword_266DB3478);
  v15 = OUTLINED_FUNCTION_0_2(v5);
  v16 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1B8, &qword_266DB3480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1C0, &qword_266DB3488);
  sub_266C230E8(&qword_2800CB1C8, &qword_2800CB1B8, &qword_266DB3480);
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_19_8();
  sub_266C230E8(&unk_2800CB1D8, &qword_2800CB1A8, &qword_266DB3470);
  OUTLINED_FUNCTION_3_22(&qword_28156F060);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_27_4();
  v10 = OUTLINED_FUNCTION_15_11();
  v11(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB1E8, &qword_266DB3498);
  OUTLINED_FUNCTION_0_34();
  sub_266C230E8(v12, v13, &qword_266DB3498);
  OUTLINED_FUNCTION_23_5();

  OUTLINED_FUNCTION_19_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  OUTLINED_FUNCTION_4_17(&qword_2800CB208);
  OUTLINED_FUNCTION_11_8();

  OUTLINED_FUNCTION_1_24();
  sub_266C230E8(v14, &qword_2800CB1B0, &qword_266DB3478);
  sub_266DA97EC();
  (*(v16 + 8))(v0, v15);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_5();
}

void sub_266C9E854()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB160, &qword_266DB3438);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB168, &qword_266DB3440);
  OUTLINED_FUNCTION_0_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CB170, &qword_266DB3448);
  OUTLINED_FUNCTION_6_18();
  sub_266C230E8(v10, v11, v12);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v13, &qword_2800CB160, &qword_266DB3438);
  OUTLINED_FUNCTION_3_22(&unk_28156F028);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_26_5();
  v14 = OUTLINED_FUNCTION_14_12();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CB190, &qword_266DB3460);
  OUTLINED_FUNCTION_0_34();
  sub_266C230E8(v16, v17, &qword_266DB3460);
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_4_17(&qword_28156F168);
  OUTLINED_FUNCTION_16_9();
  sub_266DA97FC();

  OUTLINED_FUNCTION_1_24();
  sub_266C230E8(v18, &qword_2800CB168, &qword_266DB3440);
  OUTLINED_FUNCTION_24_5();
  v19 = OUTLINED_FUNCTION_17_10();
  v20(v19);
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C9EB44(void *a1)
{
  v2 = v1;
  if (qword_2800C9248 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F200);
  v5 = a1;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = CBManagerState.description.getter([v5 state]);
    v12 = sub_266C22A3C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_266C08000, v6, v7, "Bluetooth state updated: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_subject);
  v15 = [v5 state];
  return sub_266DA96DC();
}

id sub_266C9ED44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BluetoothStateProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266C9EE08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1 & 1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
}

uint64_t sub_266C9EE20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB040, &qword_266DB33A0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_266DA973C();
}

uint64_t sub_266C9EEA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAFF8, &qword_266DB3368);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_266DA973C();
}

uint64_t sub_266C9EF04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB188, &qword_266DB3458);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_266DA973C();
}

uint64_t sub_266C9EF5C(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_266DA973C();
}

uint64_t sub_266C9EFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return sub_266C4DBA4(a1, a2, a3);
}

void sub_266C9EFE8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_266C9EFB0();
  *a2 = v5;
  *(a2 + 8) = v6 & 1;
}

uint64_t sub_266C9F024@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C9F050@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266C9EFB8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_22(unint64_t *a1)
{

  return sub_266C230E8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_17(unint64_t *a1)
{

  return sub_266C230E8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return sub_266DA97FC();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_266DA984C();
}

uint64_t OUTLINED_FUNCTION_13_8(unint64_t *a1)
{

  return sub_266C230E8(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_266DA984C();
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_266DA974C();
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return sub_266DA97EC();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_266DA974C();
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_266DA990C();
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_266DA990C();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  v2 = *(v0 - 96);

  return sub_266DA97EC();
}

SiriFindMy::LocalizedLabel_optional __swiftcall LocalizedLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LocalizedLabel.rawValue.getter()
{
  result = 0x4C45434E4143;
  switch(*v0)
  {
    case 1:
      result = 0x45554E49544E4F43;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x5050415F4E45504FLL;
      break;
    case 4:
      result = 0x4E49465F4E45504FLL;
      break;
    case 5:
      result = 0x5445535F4E45504FLL;
      break;
    case 6:
      result = 0x554F535F59414C50;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266C9F48C()
{
  result = qword_2800CB248;
  if (!qword_2800CB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB248);
  }

  return result;
}

unint64_t sub_266C9F504@<X0>(unint64_t *a1@<X8>)
{
  result = LocalizedLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizedLabel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C9F6C4()
{
  result = qword_2800CB250[0];
  if (!qword_2800CB250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CB250);
  }

  return result;
}

uint64_t Publisher.mapResult<A>(_:)()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  (*(v6 + 16))(v5 - v4, v0);
  OUTLINED_FUNCTION_2_25();
  Publishers.MapResult.init(upstream:map:)(v7, v8, v9, v10, v11);
}

uint64_t Publishers.MapResult.init(upstream:map:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Publishers.MapResult();
  v9 = (a5 + *(result + 44));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t Publisher.mapResult<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[0] = a2;
  v16[1] = a4;
  v16[2] = a3;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v7 = sub_266DA95DC();
  OUTLINED_FUNCTION_1_5();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  OUTLINED_FUNCTION_2_25();
  sub_266DA993C();
  swift_getWitnessTable();
  Publisher.mapResult<A>(_:)();
  return (*(v9 + 8))(v14, v7);
}

uint64_t Publisher<>.mapResult<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_1_5();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_6();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v23);
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = a7;
  v24[7] = a1;
  v24[8] = a2;
  Publishers.MapResult.init(upstream:map:)(v21, sub_266C9FC34, v24, a3, a8);
}

uint64_t sub_266C9FB14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_266DAB32C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  a2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  return sub_266CEF284(sub_266CA18E0, v5, a3);
}

uint64_t sub_266C9FC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  return sub_266C9FB14(a1, *(v2 + 56), a2);
}

uint64_t sub_266C9FC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_266DAB15C();
  if (v9)
  {
    v10 = v9;
    result = (*(v5 + 8))(v8, a2);
  }

  else
  {
    v10 = swift_allocError();
    result = (*(v5 + 32))(v12, v8, a2);
  }

  *a3 = v10;
  return result;
}

uint64_t Publishers.MapResult.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_1_5();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v15 = v14 - v13;
  v21 = *(v16 + 16);
  v22 = *(v16 + 32);
  _s9MapResultV5InnerCMa();
  (*(v9 + 16))(v15, a1, a3);
  v17 = (v4 + *(a2 + 44));
  v18 = *v17;
  v19 = v17[1];

  sub_266C9FEF0(v15, v18, v19);
  swift_getWitnessTable();
  sub_266DA97DC();
}

uint64_t *sub_266C9FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_266C9FF64(a1, a2, a3);
}

uint64_t sub_266C9FF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t *sub_266C9FF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_266DA95AC();
  v8 = *(*v3 + 144);
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v3 + v8) = v9;
  v10 = v3 + *(*v3 + 152);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  (*(*(*(v7 + 96) - 8) + 32))(v3 + *(*v3 + 128), a1);
  v11 = (v3 + *(*v3 + 136));
  *v11 = a2;
  v11[1] = a3;
  return v3;
}

uint64_t *sub_266CA0074()
{
  v1 = *v0;
  v2 = *v0;
  MEMORY[0x26D5F2480](*(v0 + *(*v0 + 144)), -1, -1);
  v3 = qword_2800CB2D8;
  v4 = sub_266DA95BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 128), *(v1 + 96));
  v5 = *(v0 + *(*v0 + 136) + 8);

  v6 = *(*v0 + 152);
  v9 = *(v2 + 80);
  v10 = *(v2 + 104);
  v7 = _s9MapResultV5InnerC18SubscriptionStatusOMa();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_266CA0210()
{
  v0 = sub_266CA0074();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266CA0264(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 144));
  os_unfair_lock_lock(v4);
  v5 = *(*v1 + 152);
  swift_beginAccess();
  v6 = v3[10];
  v7 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[14];
  v20 = v6;
  v21 = v7;
  v18 = v10;
  v19 = v8;
  v22 = v8;
  v23 = v9;
  WitnessTable = v10;
  v11 = _s9MapResultV5InnerC18SubscriptionStatusOMa();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v20, v1 + v5, v11);
  v13 = v23;
  (*(v12 + 8))(&v20, v11);
  if (v13)
  {
    os_unfair_lock_unlock(v4);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = *(v14 + 8);
    return sub_266DA963C();
  }

  else
  {
    sub_266C233D0(a1, &v20);
    swift_beginAccess();
    (*(v12 + 40))(v1 + v5, &v20, v11);
    swift_endAccess();
    os_unfair_lock_unlock(v4);
    v17 = *(*v1 + 128);
    v20 = v6;
    v21 = v7;
    v22 = v19;
    v23 = v9;
    WitnessTable = v18;
    v23 = _s9MapResultV5InnerCMa();
    WitnessTable = swift_getWitnessTable();
    v20 = v1;

    sub_266DA961C();
    return __swift_destroy_boxed_opaque_existential_0(&v20);
  }
}

uint64_t sub_266CA04DC(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v47 = sub_266DA964C();
  v46 = *(v47 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v44 = v41 - v9;
  v45 = *(AssociatedTypeWitness - 8);
  v10 = *(v45 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v43 = v41 - v12;
  v13 = v3[11];
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = v41 - v15;
  v17 = sub_266DAB32C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  memset(v52, 0, sizeof(v52));
  v53 = xmmword_266DAD420;
  sub_266CA0E30(v52, &v54);
  v21 = v3[12];
  *&v22 = v21;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v13;
  v24 = v3[14];
  v49 = v23;
  v50 = v22;
  v51 = v24;
  v25 = _s9MapResultV5InnerC18SubscriptionStatusOMa();
  v26 = sub_266DAAC1C();
  (*(*(v26 - 8) + 8))(v52, v26);
  if (v56)
  {
    v41[1] = v21;
    sub_266C0B0D8(&v54, v57);
    v27 = v2 + *(*v2 + 136);
    v28 = *(v27 + 8);
    (*v27)(v48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v45;
      v30 = v43;
      (*(v45 + 32))(v43, v20, AssociatedTypeWitness);
      v31 = *(v2 + *(*v2 + 144));
      os_unfair_lock_lock(v31);
      v54 = 0uLL;
      v55 = 0;
      v56 = xmmword_266DB3600;
      v32 = *(*v2 + 152);
      swift_beginAccess();
      (*(*(v25 - 8) + 40))(v2 + v32, &v54, v25);
      swift_endAccess();
      os_unfair_lock_unlock(v31);
      v33 = v57[4];
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v34 = *(v33 + 8);
      sub_266DA963C();
      v35 = *(*v2 + 128);
      v36 = v44;
      (*(v29 + 16))(v44, v30, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v36, 0, 1, AssociatedTypeWitness);
      sub_266DA960C();
      (*(v46 + 8))(v36, v47);
      v37 = sub_266DA965C();
      (*(v29 + 8))(v30, AssociatedTypeWitness);
    }

    else
    {
      v38 = v42;
      (*(v42 + 32))(v16, v20, v13);
      v39 = v2 + *(*v2 + 128);
      v37 = sub_266DA962C();
      (*(v38 + 8))(v16, v13);
    }

    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    sub_266CA1878(&v54);
    return sub_266DA965C();
  }

  return v37;
}

uint64_t sub_266CA0AB0()
{
  v1 = *v0;
  v2 = *v0;
  memset(v11, 0, sizeof(v11));
  v12 = xmmword_266DB3600;
  v3 = v2;
  sub_266CA0E30(v11, v13);
  v8 = *(v3 + 96);
  v9 = *(v3 + 80);
  v10 = *(v1 + 112);
  _s9MapResultV5InnerC18SubscriptionStatusOMa();
  v4 = sub_266DAAC1C();
  (*(*(v4 - 8) + 8))(v11, v4);
  v5 = v14;
  result = sub_266CA1878(v13);
  if (v5)
  {
    v7 = v0 + *(*v0 + 128);
    return sub_266DA960C();
  }

  return result;
}

uint64_t sub_266CA0BD4()
{
  v1 = *v0;
  v2 = *v0;
  memset(v9, 0, sizeof(v9));
  v10 = xmmword_266DAD420;
  v3 = v2;
  sub_266CA0E30(v9, v11);
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  v8 = *(v1 + 112);
  _s9MapResultV5InnerC18SubscriptionStatusOMa();
  v4 = sub_266DAAC1C();
  (*(*(v4 - 8) + 8))(v9, v4);
  if (!v12)
  {
    return sub_266CA1878(v11);
  }

  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_266DA967C();
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_266CA0CF8()
{
  v1 = *v0;
  v2 = *v0;
  memset(v11, 0, sizeof(v11));
  v12 = xmmword_266DB3600;
  v3 = v2;
  sub_266CA0E30(v11, v13);
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v10 = *(v1 + 112);
  _s9MapResultV5InnerC18SubscriptionStatusOMa();
  v4 = sub_266DAAC1C();
  (*(*(v4 - 8) + 8))(v11, v4);
  sub_266CA1808(v13, v11);
  if (v12)
  {
    v5 = *(&v12 + 1);
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v5 + 8);
    sub_266DA963C();
    sub_266CA1878(v13);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_266CA1878(v13);
    return sub_266CA1878(v11);
  }
}

void sub_266CA0E30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *&v2[*(*v2 + 144)];
  os_unfair_lock_lock(v7);
  v8 = *(*v2 + 152);
  swift_beginAccess();
  v9 = *(v5 + 112);
  v10 = *(v6 + 96);
  v17 = *(v6 + 80);
  v18 = v10;
  v19 = v9;
  v11 = _s9MapResultV5InnerC18SubscriptionStatusOMa();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v20, &v2[v8], v11);
  if (*(&v21 + 1) >= 2uLL)
  {
    sub_266C0B0D8(&v20, v23);
    v14 = sub_266DAAC1C();
    v15 = a1;
    v16 = *(v14 - 8);
    (*(v16 + 16))(&v17, v15, v14);
    if (*(&v18 + 1) == 2)
    {
      v13(&v20, &v2[v8], v11);
      if (*(&v18 + 1) != 2)
      {
        (*(v16 + 8))(&v17, v14);
      }
    }

    else
    {
      v20 = v17;
      v21 = v18;
      v22 = v19;
    }

    swift_beginAccess();
    (*(v12 + 40))(&v2[v8], &v20, v11);
    swift_endAccess();
    os_unfair_lock_unlock(v7);
    sub_266C0B0D8(v23, a2);
  }

  else
  {
    (*(v12 + 8))(&v20, v11);
    os_unfair_lock_unlock(v7);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_266CA1140@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2800CB2D8;
  v5 = sub_266DA95BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_266CA11F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_266C3412C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266CA127C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_266CA13B8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266CA1588(uint64_t a1)
{
  result = sub_266DA95BC();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 96);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266CA167C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7Combine10PublishersO10SiriFindMyE9MapResultV5Inner33_5EBAD5D2A47B66D5934862C2FB6BF173LLC18SubscriptionStatusOy_xq__qd___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266CA16D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_266CA1724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_266CA1788(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266CA17E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_266CA1808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB3E0, &qword_266DB3808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CA1878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB3E0, &qword_266DB3808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266CA18E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  return sub_266C9FC48(a1, v2[4], a2);
}

uint64_t sub_266CA1908(void *a1)
{
  type metadata accessor for PersonEntityRepresentation();
  v2 = a1;
  if (sub_266D1E43C(v2))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB3E8, &qword_266DB3810);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v6 = sub_266DA93CC();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_266CA19B0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB3F0);
  v1 = __swift_project_value_buffer(v0, qword_2800CB3F0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CA1A78@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v5 = sub_266DA958C();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v94 - v14;
  v16 = sub_266DA94DC();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v100 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v94 - v24;
  v26 = sub_266DA950C();
  v27 = OUTLINED_FUNCTION_0_2(v26);
  v104 = v28;
  v105 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = (&v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB408, &qword_266DB3818);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v106 = (&v94 - v36);
  if (a1)
  {
    v101 = v35;
    v103 = a2;
    v95 = v19;
    v96 = v13;
    v37 = qword_2800C9250;

    if (v37 != -1)
    {
      swift_once();
    }

    v97 = v25;
    v98 = v15;
    v99 = v16;
    v38 = sub_266DA94AC();
    v39 = __swift_project_value_buffer(v38, qword_2800CB3F0);

    v102 = v39;
    v40 = sub_266DA948C();
    v41 = sub_266DAAB0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_14_0();
      v94 = OUTLINED_FUNCTION_13_0();
      v108 = a1;
      v109 = v94;
      *v42 = 136315138;
      sub_266DA8C1C();

      v43 = sub_266DAA72C();
      v45 = sub_266C22A3C(v43, v44, &v109);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_266C08000, v40, v41, "SRRProvider resolveEntity attempting to resolve entity: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    v46 = v106;
    v47 = v103[4];
    __swift_project_boxed_opaque_existential_1(v103, v103[3]);
    *v32 = a1;
    v49 = v104;
    v48 = v105;
    (*(v104 + 104))(v32, *MEMORY[0x277D5FEA8], v105);

    sub_266DA943C();
    (*(v49 + 8))(v32, v48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = *v46;
      v51 = v50;
      v52 = sub_266DA948C();
      v53 = sub_266DAAAEC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_14_0();
        v55 = OUTLINED_FUNCTION_13_0();
        v108 = v50;
        v109 = v55;
        *v54 = 136315138;
        v56 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
        v57 = sub_266DAA72C();
        v59 = sub_266C22A3C(v57, v58, &v109);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_266C08000, v52, v53, "SRRProvider resolveEntity failed due to error: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {
      }
    }

    else
    {
      if ((*(v8 + 88))(v46, v5) == *MEMORY[0x277D5FEC0])
      {
        v106 = a1;
        (*(v8 + 96))(v46, v5);
        v63 = v95;
        v64 = v97;
        v65 = v99;
        (*(v95 + 32))(v97, v46, v99);
        v66 = v100;
        (*(v63 + 16))(v100, v64, v65);
        v67 = sub_266DA948C();
        v68 = sub_266DAAB0C();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = OUTLINED_FUNCTION_14_0();
          v70 = v66;
          v71 = OUTLINED_FUNCTION_13_0();
          v109 = v71;
          *v69 = 136315138;
          sub_266CA23A4(&qword_2800CB418, MEMORY[0x277D5FE08]);
          v72 = sub_266DAB13C();
          v74 = v73;
          v75 = *(v63 + 8);
          v75(v70, v99);
          v76 = sub_266C22A3C(v72, v74, &v109);
          v65 = v99;

          *(v69 + 4) = v76;
          _os_log_impl(&dword_266C08000, v67, v68, "SRRProvider resolveEntity succeeded with match: %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          OUTLINED_FUNCTION_6_1();
          v64 = v97;
          OUTLINED_FUNCTION_6_1();
        }

        else
        {

          v75 = *(v63 + 8);
          v75(v66, v65);
        }

        v89 = v107;
        sub_266DA94CC();

        v75(v64, v65);
        v90 = sub_266DA957C();
        v91 = v89;
        v92 = 0;
        return __swift_storeEnumTagSinglePayload(v91, v92, 1, v90);
      }

      v77 = v98;
      (*(v8 + 32))(v98, v46, v5);
      v78 = v96;
      (*(v8 + 16))(v96, v77, v5);
      v79 = sub_266DA948C();
      v80 = sub_266DAAAEC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_14_0();
        v106 = a1;
        v82 = v81;
        v83 = OUTLINED_FUNCTION_13_0();
        v109 = v83;
        *v82 = 136315138;
        sub_266CA23A4(&qword_2800CB410, MEMORY[0x277D5FEE8]);
        v84 = sub_266DAB13C();
        v86 = v85;
        v87 = *(v8 + 8);
        v87(v78, v5);
        v88 = sub_266C22A3C(v84, v86, &v109);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_266C08000, v79, v80, "SRRProvider resolveEntity succeeded, but did not find a match. Result: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();

        v87(v98, v5);
      }

      else
      {

        v93 = *(v8 + 8);
        v93(v78, v5);
        v93(v77, v5);
      }
    }

    v90 = sub_266DA957C();
    v91 = v107;
    v92 = 1;
    return __swift_storeEnumTagSinglePayload(v91, v92, 1, v90);
  }

  v60 = sub_266DA957C();
  v61 = v107;

  return __swift_storeEnumTagSinglePayload(v61, 1, 1, v60);
}

uint64_t sub_266CA23A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266CA23EC()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 472) = v3;
  *(v0 + 176) = v4;
  v5 = sub_266DA80AC();
  *(v0 + 200) = v5;
  OUTLINED_FUNCTION_11_3(v5);
  *(v0 + 208) = v6;
  v8 = *(v7 + 64) + 15;
  *(v0 + 216) = swift_task_alloc();
  v9 = sub_266DA7C0C();
  *(v0 + 224) = v9;
  OUTLINED_FUNCTION_11_3(v9);
  *(v0 + 232) = v10;
  v12 = *(v11 + 64) + 15;
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64) + 15;
  *(v0 + 256) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  *(v0 + 264) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v15);
  *(v0 + 272) = v16;
  *(v0 + 280) = *(v17 + 64);
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = swift_task_alloc();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  *(v0 + 344) = swift_task_alloc();
  v18 = type metadata accessor for Snippets();
  *(v0 + 352) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v0 + 360) = swift_task_alloc();
  *(v0 + 368) = swift_task_alloc();
  *(v0 + 376) = swift_task_alloc();
  *(v0 + 384) = swift_task_alloc();
  *(v0 + 392) = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_266CA2688()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  *v1 = 3;
  *(v1 + 8) = xmmword_266DAFA10;
  *(v1 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v2);
  sub_266C47750(v1, v4);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v7 = swift_allocObject();
  *(v0 + 400) = v7;
  *(v7 + 16) = xmmword_266DAE3B0;
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_266CA27BC;
  v9 = *(v0 + 184);
  v10 = *(v0 + 472);

  return sub_266D42C44(v10);
}

uint64_t sub_266CA27BC(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[52] = v1;

  if (v1)
  {
    v11 = v5[43];
    sub_266C47654(v5[42], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v11, &qword_2800CA050, &qword_266DB0080);
    v12 = sub_266CA3910;
  }

  else
  {
    v5[53] = a1;
    v12 = sub_266CA2900;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_266CA2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[50];
  v23 = v20[32];
  v22 = v20[33];
  v24 = v20[31];
  *(v21 + 32) = v20[53];
  sub_266DA7E5C();
  v25 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
  sub_266DA7C7C();
  v28 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);
  sub_266DA7BCC();
  if (sub_266C3A14C(v21, v31, v32))
  {
    v33 = v20[50];
    v34 = v33 & 0xC000000000000001;
    sub_266CB9F54(0, (v33 & 0xC000000000000001) == 0, v33);
    v35 = v20[50];
    if (v34)
    {
      v36 = MEMORY[0x26D5F1780](0, v35);
    }

    else
    {
      v36 = *(v35 + 32);
    }

    v37 = v36;
    v38 = [v36 catId];

    v135 = sub_266DAA70C();
    v137 = v39;
  }

  else
  {
    v135 = 0;
    v137 = 0;
  }

  v40 = v20[43];
  v138 = v20[44];
  v41 = v20[41];
  v42 = v20[40];
  v136 = v20[39];
  v44 = v20[34];
  v43 = v20[35];
  v131 = v20[33];
  v132 = v20[32];
  v45 = v20[30];
  v130 = v20[31];
  v47 = v20[28];
  v46 = v20[29];
  v133 = v20[27];
  v134 = v40;
  v48 = v20[24];
  sub_266C4756C(v20[42], v41);
  sub_266C4756C(v40, v42);
  v49 = *(v44 + 80);
  v50 = (v49 + 24) & ~v49;
  v51 = (v43 + v49 + v50) & ~v49;
  v52 = swift_allocObject();
  v20[54] = v52;
  *(v52 + 16) = v48;
  sub_266C475DC(v41, v52 + v50);
  sub_266C475DC(v42, v52 + v51);
  (*(v46 + 16))(v45, v130, v47);
  v53 = swift_task_alloc();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 40) = v135;
  *(v53 + 48) = v137;
  *(v53 + 56) = v131;
  *(v53 + 64) = 514;
  *(v53 + 72) = sub_266C4876C;
  *(v53 + 80) = v52;
  *(v53 + 88) = v132;

  sub_266DA800C();

  sub_266C4756C(v134, v136);
  if (__swift_getEnumTagSinglePayload(v136, 1, v138) == 1)
  {
    v54 = v20 + 39;
  }

  else
  {
    v55 = v20[44];
    v56 = v20[42];
    v57 = v20[38];
    sub_266C476A8(v20[39], v20[48]);
    v58 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v58, v59);
    v60 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v60, v61, v55) != 1)
    {
      v97 = v20[47];
      v98 = v20[48];
      v99 = v20[44];
      sub_266C476A8(v20[38], v97);
      v20[15] = v99;
      v100 = sub_266C4DB4C();
      v20[16] = v100;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 12);
      sub_266C47750(v98, boxed_opaque_existential_1);
      v20[20] = v99;
      v20[21] = v100;
      v102 = __swift_allocate_boxed_opaque_existential_1(v20 + 17);
      sub_266C47750(v97, v102);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v20[55] = v103;
      *v103 = v104;
      v103[1] = sub_266CA2E98;
      v105 = v20[50];
      v106 = v20[27];
      v107 = v20[24];
      v108 = v20[22];
      OUTLINED_FUNCTION_39();

      return v114(v109, v110, v111, v112, v113, v114, v115, v116, v130, v131, v132, v133, v134, v135, v136, v137, v138, a18, a19, a20);
    }

    v54 = v20 + 38;
    sub_266C477B4(v20[48]);
  }

  v62 = *v54;
  v63 = v20[43];
  v64 = v20[44];
  v65 = v20[37];
  sub_266C47654(v62, &qword_2800CA050, &qword_266DB0080);
  v66 = OUTLINED_FUNCTION_42();
  sub_266C4756C(v66, v67);
  v68 = OUTLINED_FUNCTION_55();
  if (__swift_getEnumTagSinglePayload(v68, v69, v64) == 1)
  {
    v70 = v20[44];
    v71 = v20[42];
    v72 = v20[36];
    sub_266C47654(v20[37], &qword_2800CA050, &qword_266DB0080);
    v73 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v73, v74);
    v75 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v75, v76, v70) == 1)
    {
      sub_266C47654(v20[36], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v20[58] = v77;
      *v77 = v78;
      v77[1] = sub_266CA3674;
      v79 = v20[50];
      v80 = v20[27];
      v81 = v20[24];
      v82 = v20[22];
      OUTLINED_FUNCTION_39();

      return v86(v83, v84, v85, v86, v87, v88, v89, v90, v130, v131, v132, v133, v134, v135, v136, v137, v138, a18, a19, a20);
    }

    v117 = v20[44];
    v118 = v20[45];
    sub_266C476A8(v20[36], v118);
    v20[5] = v117;
    v20[6] = sub_266C4DB4C();
    v119 = __swift_allocate_boxed_opaque_existential_1(v20 + 2);
    sub_266C47750(v118, v119);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v20[57] = v120;
    *v120 = v121;
    OUTLINED_FUNCTION_21_6(v120);
  }

  else
  {
    v92 = v20[46];
    v93 = v20[44];
    sub_266C476A8(v20[37], v92);
    v20[10] = v93;
    v20[11] = sub_266C4DB4C();
    v94 = __swift_allocate_boxed_opaque_existential_1(v20 + 7);
    sub_266C47750(v92, v94);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v20[56] = v95;
    *v95 = v96;
    OUTLINED_FUNCTION_21_6(v95);
  }

  OUTLINED_FUNCTION_39();

  return v126(v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, a18, a19, a20);
}

uint64_t sub_266CA2E98()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[54];
  v22 = v20[47];
  v23 = v20[48];
  v24 = v20[42];
  v40 = v20[43];
  v25 = v20[31];
  v26 = v20[28];
  v27 = v20[29];
  v28 = v20[26];
  v29 = v20[27];
  v30 = v20[25];

  sub_266C477B4(v22);
  sub_266C477B4(v23);
  (*(v28 + 8))(v29, v30);
  (*(v27 + 8))(v25, v26);
  sub_266C47654(v24, &qword_2800CA050, &qword_266DB0080);
  sub_266C47654(v40, &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(v28 + 8);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, v40, a18, a19, a20);
}

uint64_t sub_266CA315C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v29 = *(v22 + 432);
  v30 = *(v22 + 368);
  OUTLINED_FUNCTION_25_3();
  sub_266C477B4(v30);
  (*(v28 + 8))(v25, v26);
  (*(v27 + 8))(v23, v24);
  OUTLINED_FUNCTION_30_3(v21);
  OUTLINED_FUNCTION_30_3(v20);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(&qword_266DB0080, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(v21);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266CA33E8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v29 = *(v22 + 432);
  v30 = *(v22 + 360);
  OUTLINED_FUNCTION_25_3();
  sub_266C477B4(v30);
  (*(v28 + 8))(v25, v26);
  (*(v27 + 8))(v23, v24);
  OUTLINED_FUNCTION_30_3(v21);
  OUTLINED_FUNCTION_30_3(v20);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(&qword_266DB0080, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(v21);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266CA3674()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 464);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266CA3774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[54];
  v22 = v20[42];
  v23 = v20[43];
  v24 = v20[31];
  v25 = v20[28];
  v26 = v20[29];
  v28 = v20[26];
  v27 = v20[27];
  v29 = v20[25];

  (*(v28 + 8))(v27, v29);
  (*(v26 + 8))(v24, v25);
  v30 = OUTLINED_FUNCTION_42();
  sub_266C47654(v30, v31, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(&qword_266DB0080, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v27, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(&qword_2800CA050);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266CA3910()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[27];
  sub_266C477B4(v0[49]);
  *(v1 + 16) = 0;

  v9 = v0[1];
  v10 = v0[52];

  return v9();
}

void OUTLINED_FUNCTION_1_25()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v6 = v0[42];
  v7 = v0[43];
  v10 = v0[41];
  v11 = v0[40];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v8 = v0[32];
  v9 = v0[33];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[27];
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[50];
  v4 = v2[27];
  v5 = v2[24];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_25_3()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

uint64_t sub_266CA3B10()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB420);
  v1 = __swift_project_value_buffer(v0, qword_2800CB420);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SAFmfSnippet.init(modelData:withSash:)(uint64_t a1, char a2)
{
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  v5 = *(*(FriendSnippetData - 8) + 64);
  v6 = MEMORY[0x28223BE20](FriendSnippetData);
  MEMORY[0x28223BE20](v6);
  v7 = sub_266DA720C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_266DA71FC();
  sub_266CA3FB8();
  v11 = sub_266DA71EC();
  v13 = v12;
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_266CA40D0(v11, v13, v14);

  if (a2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
    v16 = sub_266DAA6FC();
    [v15 setApplicationBundleIdentifier_];

    v17 = v15;
    [v14 setSash_];
    sub_266C2BB04(v11, v13);

    sub_266CA4074(a1);
  }

  else
  {
    sub_266CA4074(a1);
    sub_266C2BB04(v11, v13);
  }

  return v14;
}

unint64_t sub_266CA3FB8()
{
  result = qword_2800CB438;
  if (!qword_2800CB438)
  {
    type metadata accessor for FindFriendSnippetData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB438);
  }

  return result;
}

uint64_t sub_266CA4010(uint64_t a1, uint64_t a2)
{
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  (*(*(FriendSnippetData - 8) + 16))(a2, a1, FriendSnippetData);
  return a2;
}

uint64_t sub_266CA4074(uint64_t a1)
{
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  (*(*(FriendSnippetData - 8) + 8))(a1, FriendSnippetData);
  return a1;
}

void sub_266CA40D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DA739C();
  [a3 setModelData_];
}

uint64_t sub_266CA4128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_266DAA22C();
  [v8 coordinate];
  v10 = v9;
  v12 = v11;
  v13 = 0;
  v14 = 0;
  v30 = sub_266DAA21C();
  if ((v30 & 1) == 0)
  {
    [v8 horizontalAccuracy];
    v13 = v15;
    [v8 verticalAccuracy];
    v14 = v16;
  }

  v17 = [v8 timestamp];
  v18 = type metadata accessor for Location();
  v19 = a2 + v18[7];
  sub_266DA744C();

  v20 = type metadata accessor for Address();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);

  v21 = sub_266DAA23C();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = v18[8];
  v23 = v18[9];
  *(a2 + v23) = 6;
  v24 = (a2 + v22);
  v25 = v18[10];
  *(a2 + v25) = 4;
  v26 = v18[11];
  __swift_storeEnumTagSinglePayload(a2 + v26, 1, 1, v20);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v30 & 1;
  *v24 = 0;
  v24[1] = 0;
  *(a2 + v23) = 6;
  *(a2 + v25) = 4;
  result = sub_266C60554(v7, a2 + v26);
  v28 = (a2 + v18[12]);
  *v28 = 1701736302;
  v28[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_266CA4348()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_266DA816C();
  v7 = sub_266C5DE2C(v5, *v6);
  (*(v2 + 8))(v5, v1);
  if (v7 < 2u)
  {
    return sub_266DA7CBC();
  }

  if (v7 == 2)
  {
    return sub_266DA7CAC();
  }

  return sub_266DA7CCC();
}

uint64_t sub_266CA4470()
{
  OUTLINED_FUNCTION_22_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB458, &unk_266DB4F10);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v8 = sub_266DA81AC();
  v1[7] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266CA4544()
{
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  v1 = sub_266DA94AC();
  v2 = __swift_project_value_buffer(v1, qword_2800E64C0);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "SetGeoFence parsing confirmation response", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v12 = sub_266DA7FCC();
  v13 = __swift_project_boxed_opaque_existential_1((v10 + 168), *(v10 + 192));
  sub_266DA816C();
  v14 = sub_266C5DE2C(v6, *v13);
  (*(v7 + 8))(v6, v8);
  v15 = sub_266DA948C();
  if (v14 != 3)
  {
    if (v14)
    {
      v26 = sub_266DAAB0C();
      v27 = OUTLINED_FUNCTION_95(v26);
      v18 = MEMORY[0x277D5BED0];
      if (v27)
      {
        v19 = "SetGeoFence user did NOT confirm task, returning ConfirmIntentAnswer with rejected confirmation response";
        goto LABEL_14;
      }
    }

    else
    {
      v16 = sub_266DAAB0C();
      v17 = OUTLINED_FUNCTION_95(v16);
      v18 = MEMORY[0x277D5BED8];
      if (v17)
      {
        v19 = "SetGeoFence user confirmed task, returning ConfirmIntentAnswer with confirmed confirmation response";
LABEL_14:
        v28 = OUTLINED_FUNCTION_11();
        *v28 = 0;
        _os_log_impl(&dword_266C08000, v15, v2, v19, v28, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }

    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[2];

    v32 = *v18;
    v33 = sub_266DA7F5C();
    OUTLINED_FUNCTION_0(v33);
    (*(v34 + 104))(v30, v32, v33);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
    type metadata accessor for SetGeoFenceIntent();
    sub_266DA7F1C();

    OUTLINED_FUNCTION_15_4();
    goto LABEL_16;
  }

  v20 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_95(v20))
  {
    v21 = OUTLINED_FUNCTION_11();
    *v21 = 0;
    _os_log_impl(&dword_266C08000, v15, v2, "SetGeoFence unable to make task from parse", v21, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v22 = v0[9];
  v23 = v0[6];

  sub_266C55488();
  swift_allocError();
  *v24 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_28();
LABEL_16:

  return v25();
}

uint64_t sub_266CA4870()
{
  OUTLINED_FUNCTION_22_0();
  v1[305] = v0;
  v1[299] = v2;
  v1[293] = v3;
  v4 = type metadata accessor for Snippets();
  v1[306] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[307] = OUTLINED_FUNCTION_64();
  v1[308] = swift_task_alloc();
  v1[309] = swift_task_alloc();
  v1[310] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[311] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[312] = v8;
  v10 = *(v9 + 64);
  v1[313] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[314] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[315] = v12;
  v14 = *(v13 + 64);
  v1[316] = OUTLINED_FUNCTION_64();
  v1[317] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[318] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[319] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[320] = v22;
  v1[321] = *(v23 + 64);
  v1[322] = OUTLINED_FUNCTION_64();
  v1[323] = swift_task_alloc();
  v1[324] = swift_task_alloc();
  v1[325] = swift_task_alloc();
  v1[326] = swift_task_alloc();
  v1[327] = swift_task_alloc();
  v1[328] = swift_task_alloc();
  v1[329] = swift_task_alloc();
  v24 = type metadata accessor for Snippets.Contact();
  v1[330] = v24;
  OUTLINED_FUNCTION_4_3(v24);
  v26 = *(v25 + 64);
  v1[331] = OUTLINED_FUNCTION_62();
  v27 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
  v1[332] = v27;
  OUTLINED_FUNCTION_4_3(v27);
  v29 = *(v28 + 64);
  v1[333] = OUTLINED_FUNCTION_62();
  v30 = sub_266DA7E5C();
  v1[334] = v30;
  OUTLINED_FUNCTION_11_3(v30);
  v1[335] = v31;
  v33 = *(v32 + 64);
  v1[336] = OUTLINED_FUNCTION_62();
  v34 = type metadata accessor for Address();
  v1[337] = v34;
  OUTLINED_FUNCTION_4_3(v34);
  v36 = *(v35 + 64);
  v1[338] = OUTLINED_FUNCTION_64();
  v1[339] = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v37);
  v39 = *(v38 + 64);
  v1[340] = OUTLINED_FUNCTION_64();
  v1[341] = swift_task_alloc();
  v40 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v40);
  v42 = *(v41 + 64);
  v1[342] = OUTLINED_FUNCTION_62();
  v43 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_266CA4BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  v29 = sub_266DA94AC();
  __swift_project_value_buffer(v29, qword_2800E64C0);
  v30 = sub_266DA948C();
  v31 = sub_266DAAB0C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_11();
    *v32 = 0;
    _os_log_impl(&dword_266C08000, v30, v31, "SetGeoFence making prompt for confirmation", v32, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v33 = *(v28 + 2392);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v34 = sub_266DA7FCC();
  *(v28 + 2744) = v34;
  v35 = [v34 notifyMe];
  if (v35)
  {
    v36 = v35;
    v126 = [v35 BOOLValue];
  }

  else
  {
    v126 = 0;
  }

  v37 = *(v28 + 2736);
  v38 = *(v28 + 2440);
  sub_266DA900C();
  v39 = [v34 friend];
  v40 = [v39 person];

  v41 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_266DA7AFC();
  v42 = sub_266DA8FBC();
  *(v28 + 2752) = v42;
  if ([v34 location])
  {
    v43 = *(v28 + 2728);
    sub_266D7FBD8();
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = *(v28 + 2728);
  v46 = *(v28 + 2720);
  v47 = *(v28 + 2696);
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v47);
  sub_266C67BE8(v45, v46, &qword_2800CC420, &unk_266DB0480);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v47);
  v49 = *(v28 + 2728);
  if (EnumTagSinglePayload == 1)
  {
    sub_266C47654(*(v28 + 2728), &qword_2800CC420, &unk_266DB0480);
    v50 = 0;
  }

  else
  {
    v51 = *(v28 + 2712);
    v52 = *(v28 + 2704);
    sub_266CA9C3C(*(v28 + 2720), v51, type metadata accessor for Address);
    sub_266DA8F2C();
    sub_266CA9C98(v51, v52, type metadata accessor for Address);
    v50 = sub_266D7F7B0(v52);
    sub_266CA9CF4(v51, type metadata accessor for Address);
    sub_266C47654(v49, &qword_2800CC420, &unk_266DB0480);
  }

  *(v28 + 2760) = v50;
  v53 = [v34 friend];
  if (v53 && (v54 = v53, v55 = [v53 person], *(v28 + 2768) = v55, v54, v55))
  {
    v56 = *(v28 + 2688);
    v124 = *(v28 + 2648);
    v122 = *(v28 + 2640);
    v57 = *(v28 + 2440);
    v120 = v55;
    v58 = __swift_project_boxed_opaque_existential_1((v57 + 48), *(v57 + 72));
    v59 = sub_266DA8BAC();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    sub_266DA8B9C();
    v62 = v58[3];
    v64 = *v58;
    v63 = v58[1];
    *(v28 + 1880) = v58[2];
    *(v28 + 1896) = v62;
    *(v28 + 1848) = v64;
    *(v28 + 1864) = v63;
    sub_266CC063C();

    sub_266CA8DF8(v57, v28 + 1592);
    v65 = swift_allocObject();
    *(v28 + 2776) = v65;
    memcpy((v65 + 16), (v28 + 1592), 0xD8uLL);
    *(v65 + 232) = v42;

    sub_266CA8EC8();
    swift_asyncLet_begin();
    sub_266CA8DF8(v57, v28 + 1336);
    v66 = swift_allocObject();
    *(v28 + 2784) = v66;
    memcpy((v66 + 16), (v28 + 1336), 0xD8uLL);
    *(v66 + 232) = v126;
    *(v66 + 240) = v42;
    *(v66 + 248) = v34;
    *(v66 + 256) = v50;

    v67 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB450, &unk_266DB3A00);
    swift_asyncLet_begin();
    v68 = *(v122 + 24);
    v69 = v120;
    sub_266DA749C();
    v70 = [v69 displayName];
    v71 = sub_266DAA70C();
    v73 = v72;

    *v124 = v71;
    v124[1] = v73;
    v74 = sub_266C39CB4(v69);
    v76 = v75;

    if (v76)
    {
      v77 = v74;
    }

    else
    {
      v77 = 0;
    }

    v78 = 0xE000000000000000;
    if (v76)
    {
      v78 = v76;
    }

    v124[2] = v77;
    v124[3] = v78;
    v79 = (v124 + *(v122 + 28));
    *v79 = 1701736302;
    v79[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_37_1();

    return MEMORY[0x282200930](v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_266C55488();
    v127 = swift_allocError();
    *v88 = 0;
    swift_willThrow();

    v89 = *(v28 + 2736);
    v90 = *(v28 + 2728);
    v91 = *(v28 + 2720);
    v92 = *(v28 + 2712);
    v93 = *(v28 + 2704);
    v94 = *(v28 + 2688);
    v95 = *(v28 + 2664);
    v96 = *(v28 + 2648);
    v97 = *(v28 + 2632);
    v98 = *(v28 + 2624);
    v108 = *(v28 + 2616);
    v109 = *(v28 + 2608);
    v110 = *(v28 + 2600);
    v111 = *(v28 + 2592);
    v112 = *(v28 + 2584);
    v113 = *(v28 + 2576);
    v114 = *(v28 + 2552);
    v115 = *(v28 + 2544);
    v116 = *(v28 + 2536);
    v117 = *(v28 + 2528);
    v118 = *(v28 + 2504);
    v119 = *(v28 + 2480);
    v121 = *(v28 + 2472);
    v123 = *(v28 + 2464);
    v125 = *(v28 + 2456);

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_37_1();

    return v100(v99, v100, v101, v102, v103, v104, v105, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v121, v123, v125, v127, a25, a26, a27, a28);
  }
}

uint64_t sub_266CA5308()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 2792) = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_27_5();
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266CA537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_22_0();
  v15 = *(v14 + 2248);
  *(v14 + 2888) = 1;

  v16 = sub_266DA91EC();
  v18 = v17;
  *(v14 + 2232) = v16;
  *(v14 + 2240) = v17;

  *(v14 + 2800) = v18;
  v19 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x282200930](v19, v20, v21, v14 + 2032, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266CA5408()
{
  OUTLINED_FUNCTION_22_0();
  v1[351] = v0;
  if (v0)
  {
    v2 = v1[350];
    OUTLINED_FUNCTION_27_5();
  }

  else
  {
    v1[352] = v1[279];
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266CA5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = *(v14 + 2800);
  v37 = *(v14 + 2816);
  v15 = *(v14 + 2664);
  v16 = *(v14 + 2656);
  v17 = *(v14 + 2648);
  v18 = *(v14 + 2632);
  v38 = *(v14 + 2624);
  v19 = *(v14 + 2448);
  v20 = *(v14 + 2440);
  v21 = *(v14 + 2248);
  *(v14 + 2889) = 0;

  v22 = sub_266DA91EC();
  v24 = v23;

  sub_266CA9C3C(v17, v15, type metadata accessor for Snippets.Contact);
  v25 = (v15 + *(v16 + 20));
  *v25 = v37;
  v25[1] = v36;
  v26 = (v15 + *(v16 + 24));
  *v26 = v22;
  v26[1] = v24;
  *(v14 + 2824) = *(v20 + 208);
  sub_266CA9C98(v15, v18, type metadata accessor for Snippets.SetGeoFenceConfirmation);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v19);
  OUTLINED_FUNCTION_56_1(v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v30 = swift_allocObject();
  *(v14 + 2832) = v30;
  *(v30 + 16) = xmmword_266DAE3B0;

  return MEMORY[0x282200930](v14 + 16, v14 + 2296, sub_266CA5624, v14 + 2192, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266CA5624()
{
  OUTLINED_FUNCTION_34();
  v1[355] = v0;
  if (v0)
  {
    v2 = v1[329];
    sub_266C47654(v1[328], &qword_2800CA050, &qword_266DB0080);
    v3 = OUTLINED_FUNCTION_32();
    sub_266C47654(v3, v4, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266CA5CC8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2856);
  v6 = *(v4 + 2832);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2152));
  __swift_destroy_boxed_opaque_existential_0((v2 + 2072));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA5DD0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v3 = v0[356];
  v4 = v0[310];
  v5 = v0[309];

  sub_266CA9CF4(v5, type metadata accessor for Snippets);
  sub_266CA9CF4(v4, type metadata accessor for Snippets);
  v6 = OUTLINED_FUNCTION_8_5();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v4, v10);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v11, v12, v13, v14);
}

uint64_t sub_266CA5F18()
{
  v1 = *(v0 + 2784);
  v2 = *(v0 + 2776);
  v3 = *(v0 + 2760);
  v4 = *(v0 + 2752);
  v5 = *(v0 + 2744);
  v6 = *(v0 + 2736);
  v12 = *(v0 + 2728);
  v13 = *(v0 + 2720);
  v14 = *(v0 + 2712);
  v15 = *(v0 + 2704);
  v7 = *(v0 + 2688);
  v8 = *(v0 + 2680);
  v9 = *(v0 + 2672);
  v16 = *(v0 + 2664);
  v17 = *(v0 + 2648);
  v18 = *(v0 + 2632);
  v19 = *(v0 + 2624);
  v20 = *(v0 + 2616);
  v21 = *(v0 + 2608);
  v22 = *(v0 + 2600);
  v23 = *(v0 + 2592);
  v24 = *(v0 + 2584);
  v25 = *(v0 + 2576);
  v26 = *(v0 + 2552);
  v27 = *(v0 + 2544);
  v28 = *(v0 + 2536);
  v29 = *(v0 + 2528);
  v30 = *(v0 + 2504);
  v31 = *(v0 + 2480);
  v32 = *(v0 + 2472);
  v33 = *(v0 + 2464);
  v34 = *(v0 + 2456);

  (*(v8 + 8))(v7, v9);

  OUTLINED_FUNCTION_15_4();

  return v10();
}

uint64_t sub_266CA6148()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2864);
  v6 = *(v4 + 2832);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1992));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA6248()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v3 = *(v0 + 2848);
  v4 = *(v0 + 2464);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v4, v5);
  v6 = OUTLINED_FUNCTION_8_5();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v4, v10);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v11, v12, v13, v14);
}

uint64_t sub_266CA6324()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 2872);
  v6 = *(v4 + 2832);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1912));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA6424()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v3 = *(v0 + 2848);
  v4 = *(v0 + 2456);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v4, v5);
  v6 = OUTLINED_FUNCTION_8_5();
  v7(v6);
  v8 = OUTLINED_FUNCTION_24_4();
  v9(v8);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v4, v10);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v11, v12, v13, v14);
}

uint64_t sub_266CA6500()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 2880);
  v3 = *(v1 + 2832);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266CA6600()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v4 = *(v1 + 2848);

  v5 = OUTLINED_FUNCTION_8_5();
  v6(v5);
  v7 = OUTLINED_FUNCTION_24_4();
  v8(v7);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v3, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v2, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v0, v9);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v10, v11, v12, v13);
}

uint64_t sub_266CA6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_18_8();

  v30 = OUTLINED_FUNCTION_48_3();
  v31(v30);

  OUTLINED_FUNCTION_9_9(*(v28 + 2792));

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_37_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_266CA68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_18_8();

  v30 = OUTLINED_FUNCTION_48_3();
  v31(v30);

  OUTLINED_FUNCTION_9_9(*(v28 + 2808));

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_37_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_266CA6A54()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 2832);
  v2 = *(v0 + 2664);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v3, v4);
  *(v1 + 16) = 0;

  v5 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x282200920](v5, v6, v7, v0 + 2256);
}

uint64_t sub_266CA6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_18_8();

  v30 = OUTLINED_FUNCTION_48_3();
  v31(v30);

  OUTLINED_FUNCTION_9_9(*(v28 + 2840));

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_37_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_266CA6C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266CA6C90, 0, 0);
}

uint64_t sub_266CA6C90()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0[3] + 40);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_266CA6D28;
  v3 = v0[4];

  return sub_266CB4A58(v3);
}

uint64_t sub_266CA6D28()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_266CA6E58()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_15_4();
  return v1();
}

uint64_t sub_266CA6E84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CA6F38, 0, 0);
}

uint64_t sub_266CA6F38()
{
  v29 = v0;
  v1 = *(*(v0 + 24) + 40);
  v2 = [*(v0 + 40) location];
  if (!v2 || (v3 = v2, sub_266D6CDF4(&v23), v3, v4 = v25, v25 == 255))
  {
    v11 = *(v0 + 64);
    v8 = sub_266DA919C();
    v9 = OUTLINED_FUNCTION_55();
  }

  else
  {
    v5 = *(v0 + 64);
    v7 = v23;
    v6 = v24;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_266D91274();
    sub_266C23130(v7, v6, v4);
    v8 = sub_266DA919C();
    v9 = v5;
    v10 = 0;
  }

  __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
  v12 = *(v0 + 56);
  GeoFenceTrigger.description.getter([*(v0 + 40) trigger]);
  sub_266DAA74C();

  sub_266DAA77C();

  sub_266DA919C();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_266CA70F8;
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v19 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = *(v0 + 96);

  return sub_266CB51A0();
}

uint64_t sub_266CA70F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v7 = v4[9];
  *v6 = *v2;
  v5[10] = v1;

  v8 = v4[8];
  v9 = v4[7];
  if (!v1)
  {
    v5[11] = a1;
  }

  OUTLINED_FUNCTION_76_1(v9);
  OUTLINED_FUNCTION_76_1(v8);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266CA7278()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_15_4();

  return v3();
}

uint64_t sub_266CA72E4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_28();
  v4 = v0[10];

  return v3();
}

uint64_t sub_266CA7348()
{
  OUTLINED_FUNCTION_22_0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippets();
  v1[24] = v3;
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_64();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = sub_266DA80AC();
  v1[29] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[30] = v7;
  v9 = *(v8 + 64);
  v1[31] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v10);
  v12 = *(v11 + 64);
  v1[32] = OUTLINED_FUNCTION_62();
  v13 = sub_266DA7C0C();
  v1[33] = v13;
  OUTLINED_FUNCTION_11_3(v13);
  v1[34] = v14;
  v16 = *(v15 + 64);
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v17);
  v19 = *(v18 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v20);
  v1[38] = v21;
  v1[39] = *(v22 + 64);
  v1[40] = OUTLINED_FUNCTION_64();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_266CA7594()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  *(v0 + 384) = *(v4 + 208);
  OUTLINED_FUNCTION_56_1(v1);
  OUTLINED_FUNCTION_56_1(v2);
  *(v0 + 472) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v8 = swift_allocObject();
  *(v0 + 400) = v8;
  *(v8 + 16) = xmmword_266DAE3B0;
  v9 = *(v4 + 40);
  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  v10[1] = sub_266CA76A8;

  return sub_266CB49B0();
}

uint64_t sub_266CA76A8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[52] = v0;

  if (v0)
  {
    v11 = v5[47];
    sub_266C47654(v5[46], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[53] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266CA7D88()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v26 = *(v22 + 216);
  v25 = *(v22 + 224);

  sub_266CA9CF4(v26, type metadata accessor for Snippets);
  v27 = OUTLINED_FUNCTION_4_4();
  sub_266CA9CF4(v27, v28);
  v29 = OUTLINED_FUNCTION_5_17();
  v30(v29);
  v31 = OUTLINED_FUNCTION_30_4();
  v32(v31);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA8014()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA8114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 208);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v25, v26);
  v27 = OUTLINED_FUNCTION_5_17();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA827C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CA837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 200);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v25, v26);
  v27 = OUTLINED_FUNCTION_5_17();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA84E4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 464);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266CA85E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();

  v24 = OUTLINED_FUNCTION_5_17();
  v25(v24);
  v26 = OUTLINED_FUNCTION_30_4();
  v27(v26);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA873C()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v10 = v0[40];
  v9 = v0[41];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];

  *(v2 + 16) = 0;

  OUTLINED_FUNCTION_28();
  v12 = v0[52];

  return v11();
}

uint64_t sub_266CA8888()
{
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_266C48BB4;

  return sub_266CA7348();
}

uint64_t sub_266CA891C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CA4470();
}

uint64_t sub_266CA89CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CA4870();
}

uint64_t sub_266CA8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B430] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D08](a1, a2, a3, a4);
}

uint64_t sub_266CA8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D10](a1, a2, a3, a4);
}

uint64_t sub_266CA8BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CA7348();
}

uint64_t sub_266CA8C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CA8888();
}

uint64_t sub_266CA8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D00](a1, a2, a3, a4, a5);
}

uint64_t sub_266CA8E30()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 232);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_62_1(v3);

  return sub_266CA6C6C(v5, v6, v2);
}

unint64_t sub_266CA8EC8()
{
  result = qword_2800CB448;
  if (!qword_2800CB448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CB448);
  }

  return result;
}

uint64_t sub_266CA8F0C()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_62_1(v6);

  return sub_266CA6E84(v8, v9, v2, v3, v4, v5);
}

uint64_t objectdestroyTm_8()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266CA9C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

uint64_t sub_266CA9C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

uint64_t sub_266CA9CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_17()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v12 = v0[44];
  v13 = v0[43];
  v14 = v0[42];
  v15 = v0[41];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[34];
  v16 = v0[40];
  v17 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[25];
  v10 = *(v0[30] + 8);
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_8_5()
{
  v1 = v0[333];
  v2 = v0[329];
  v3 = v0[328];
  v4 = v0[319];
  v5 = v0[318];
  v6 = v0[317];
  v7 = v0[315];
  v8 = v0[314];
  result = v0[313];
  v10 = v0[311];
  v11 = *(v0[312] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[342];
  v5 = v1[341];
  v6 = v1[340];
  v7 = v1[339];
  v8 = v1[338];
  v9 = v1[336];
  v10 = v1[333];
  v11 = v1[331];
  v12 = v1[329];
  v13 = v1[328];
  v16 = v1[327];
  v17 = v1[326];
  v18 = v1[325];
  v19 = v1[324];
  v20 = v1[323];
  v21 = v1[322];
  v22 = v1[319];
  v23 = v1[318];
  v24 = v1[317];
  v25 = v1[316];
  v26 = v1[313];
  v27 = v1[310];
  v28 = v1[309];
  v14 = v1[307];
  *(v2 - 96) = v1[308];
  *(v2 - 88) = v14;
}

uint64_t OUTLINED_FUNCTION_17_11@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_18_8()
{
  v2 = v0[348];
  v3 = v0[347];
  v4 = v0[346];
  v5 = v0[345];
  v6 = v0[344];
  v7 = v0[343];
  v8 = v0[336];
  v9 = v0[335];
  v10 = v0[334];
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  v2 = *(v0 + 2648);

  return sub_266CA9CF4(v2, type metadata accessor for Snippets.Contact);
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a16;
  *(result + 48) = a19;
  *(result + 56) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[354];
  v4 = v2[353];
  v5 = v2[313];
  return v2[293];
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  v1 = v0[28];
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_266C67BE8(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

id sub_266CAA15C()
{
  result = [v0 deviceQuery];
  if (result)
  {
    v2 = result;
    v3 = sub_266CAB114();

    return (v3 & 1);
  }

  return result;
}

void sub_266CAA1A8(uint64_t a1@<X8>)
{
  v3 = [v1 deviceQuery];
  if (v3)
  {
    v5 = v3;
    sub_266CAB098(a1);
  }

  else
  {
    v4 = sub_266DA919C();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

uint64_t FindDeviceAndPlaySoundDevicesUnsupportedReason.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x6C69614668747561;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000011;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6954686372616573;
      break;
    case 3:
      result = 0x646E756F46746F6ELL;
      break;
    case 4:
      result = 0x456E776F6E6B6E75;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53676E6968746F6ELL;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    default:
      result = sub_266DAB1DC();
      __break(1u);
      break;
  }

  return result;
}

unint64_t FindDeviceAndPlaySoundIntentResponseCode.description.getter(uint64_t a1)
{
  v3 = a1 - 100;
  if (!(!v2 & v1))
  {
    result = 0x6C69614668747561;
    switch(v3)
    {
      case 0:
        OUTLINED_FUNCTION_0_36();
        return v5 | 1;
      case 1:
        return result;
      case 2:
        return 0xD000000000000010;
      case 3:
        return 0x4464696C61766E69;
      case 4:
        return 0xD000000000000010;
      case 5:
        OUTLINED_FUNCTION_0_36();
        return v8 | 6;
      case 6:
        OUTLINED_FUNCTION_0_36();
        return v9 | 4;
      case 7:
        v7 = 5;
        goto LABEL_20;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 0:
      result = 0x6669636570736E75;
      break;
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x65756E69746E6F63;
      break;
    case 3:
      result = 0x6572676F72506E69;
      break;
    case 4:
      result = 0x73736563637573;
      break;
    case 5:
      result = 0x6572756C696166;
      break;
    case 6:
      v7 = 9;
LABEL_20:
      result = v7 | 0xD000000000000010;
      break;
    default:
      sub_266DAADFC();

      v6 = sub_266DAB13C();
      MEMORY[0x26D5F1170](v6);

      result = 0xD000000000000016;
      break;
  }

  return result;
}

id sub_266CAA660(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = *a1;
  v3 = *(&v18 + 1);
  v4 = v2;
  if (*(&v18 + 1))
  {
    sub_266CAA834(&v18, &v17);
    v3 = sub_266DAA6FC();
    v4 = sub_266CAA8A4(&v18);
  }

  OUTLINED_FUNCTION_0_37(v4, sel_setFirstName_);

  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    v8 = sub_266DAA6FC();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_0_37(v5, sel_setNickName_);

  if (*(a1 + 40))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);

    v12 = sub_266DAA6FC();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_0_37(v9, sel_setLastName_);

  v13 = *(a1 + 64);
  if (v13 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v15 = sub_266CAA7E0(a1);
  OUTLINED_FUNCTION_0_37(v15, sel_setMe_);

  return v2;
}

uint64_t sub_266CAA834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CAA8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_0_37(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_266CAA924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for DeviceQuery();
  v6 = [v3 displayString];
  sub_266DAA70C();

  objc_allocWithZone(swift_getObjCClassFromMetadata());

  v7 = sub_266CAB33C(a1, a2);
  v8 = [v3 deviceOwner];
  OUTLINED_FUNCTION_1_27(v8, sel_setDeviceOwner_);

  v9 = sub_266C39CC0(v3, &selRef_deviceType);
  if (v10)
  {
    v11 = sub_266DAA6FC();
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_1_27(v9, sel_setDeviceType_);

  v12 = sub_266C39CC0(v3, &selRef_deviceName);
  if (v13)
  {
    v14 = sub_266DAA6FC();
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_1_27(v12, sel_setDeviceName_);

  v15 = sub_266CAB458(v3);
  if (v15)
  {
    v16 = sub_266DAA91C();
  }

  else
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_1_27(v15, sel_setDeviceTypeCategories_);

  sub_266C39CC0(v3, &selRef_deviceTypeOriginalInput);
  if (v17)
  {
    v18 = sub_266DAA6FC();
  }

  else
  {
    v18 = 0;
  }

  [v7 setDeviceTypeOriginalInput_];

  return v7;
}

id sub_266CAAB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  if (a2)
  {
    v15 = sub_266DAA6FC();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(v11);
  v17 = sub_266DAA6FC();
  v18 = [v16 initWithIdentifier:v15 displayString:v17];

  v19 = v18;
  if (a4)
  {
    v20 = sub_266DAA6FC();
  }

  else
  {
    v20 = 0;
  }

  [v18 setDeviceType_];

  if (a6)
  {
    v21 = sub_266DAA6FC();
  }

  else
  {
    v21 = 0;
  }

  [v18 setDeviceTypeOriginalInput_];

  if (a8)
  {
    v22 = sub_266DAA6FC();
  }

  else
  {
    v22 = 0;
  }

  [v18 setDeviceName_];

  [v18 setDeviceOwner_];
  if (a10)
  {
    v23 = sub_266DAA91C();
  }

  else
  {
    v23 = 0;
  }

  [v18 setDeviceTypeCategories_];

  return v18;
}

uint64_t sub_266CAACE4(char a1, void *a2)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_266DA750C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  sub_266C39CC0(v3, &selRef_deviceName);
  v17 = v16;
  if ((a1 & 1) != 0 && !v16)
  {
    sub_266C39CC0(v3, &selRef_deviceTypeOriginalInput);
    v17 = v18;
  }

  v19 = type metadata accessor for FindmyDevice.Builder(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_266C62630();
  if (v17)
  {
    sub_266DAA77C();

    v23 = sub_266DA919C();
    v24 = 0;
  }

  else
  {
    v23 = sub_266DA919C();
    v24 = 1;
  }

  v25 = 1;
  __swift_storeEnumTagSinglePayload(v15, v24, 1, v23);
  v26 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v15, v22 + v26);
  swift_endAccess();
  sub_266C55ECC(v15);
  sub_266DA900C();
  v27 = [v3 deviceOwner];
  v28 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v29 = v3;
  sub_266DA7AFC();
  v30 = sub_266DA8FBC();
  v31 = sub_266C62788(v30);

  sub_266C39CC0(v29, &selRef_deviceType);
  if (v32)
  {
    sub_266DAA77C();

    v25 = 0;
  }

  v33 = v45;
  v34 = sub_266DA919C();
  v35 = 1;
  __swift_storeEnumTagSinglePayload(v13, v25, 1, v34);
  v36 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v13, v31 + v36);
  swift_endAccess();
  sub_266C55ECC(v13);
  sub_266C39CC0(v29, &selRef_deviceType);
  if (v37)
  {
    sub_266DAA77C();

    v35 = 0;
  }

  __swift_storeEnumTagSinglePayload(v33, v35, 1, v34);
  v38 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v33, v31 + v38);
  swift_endAccess();
  sub_266C55ECC(v33);
  *(v31 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem) = sub_266CAB1A8();
  v39 = type metadata accessor for FindmyDevice(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  return sub_266C628E8(v31);
}

uint64_t sub_266CAB098@<X0>(uint64_t a1@<X8>)
{
  sub_266C39CC0(v1, &selRef_deviceType);
  if (v3)
  {
    sub_266DAA77C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_266DA919C();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t sub_266CAB114()
{
  sub_266C39CC0(v0, &selRef_deviceType);
  if (v1)
  {
    sub_266C680F8();
    v2 = sub_266DAACBC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_266CAB1A8()
{
  v1 = sub_266CAB458(v0);
  if (v1)
  {
    v2 = v1;
    strcpy(v6, "IsB389Category");
    v6[15] = -18;
    MEMORY[0x28223BE20](v1);
    v5[2] = v6;
    v3 = sub_266D2D4E0(sub_266CAB4BC, v5, v2);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_266CAB270()
{
  sub_266C39CC0(v0, &selRef_deviceType);
  if (v1)
  {

    v2 = sub_266C39CC0(v0, &selRef_deviceType);
    if (!v3)
    {
      return 0;
    }

    if (v2 == 0x746375646F7270 && v3 == 0xE700000000000000)
    {
    }

    else
    {
      v5 = sub_266DAB17C();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_266C39CC0(v0, &selRef_deviceName);
  if (v6)
  {

    return 0;
  }

  return 1;
}

id sub_266CAB33C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t sub_266CAB3E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CAB458(void *a1)
{
  v1 = [a1 deviceTypeCategories];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_38()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_1_27(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t sub_266CAB510(char a1)
{
  sub_266DAADFC();

  if (qword_2800C9308 != -1)
  {
    swift_once();
  }

  v2 = sub_266CAB604(a1);
  v4 = v3;
  v5 = sub_266DA750C();
  v6 = __swift_project_value_buffer(v5, qword_2800E6350);
  v7 = String.firstLetterCapitalized(with:)(v6, v2, v4);
  v9 = v8;

  MEMORY[0x26D5F1170](v7, v9);

  return 0xD000000000000012;
}

unint64_t sub_266CAB604(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x49746361746E6F63;
      break;
    case 3:
      result = 0x75466E6F73726570;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266CAB6E0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB460);
  v1 = __swift_project_value_buffer(v0, qword_2800CB460);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CAB7A8()
{
  sub_266CAF9A4();

  return sub_266DA79AC();
}

uint64_t sub_266CAB7FC(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for Snippets();
  v2[44] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v2[53] = v5;
  v6 = *(v5 - 8);
  v2[54] = v6;
  v7 = *(v6 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v8 = sub_266DA7C0C();
  v2[57] = v8;
  v9 = *(v8 - 8);
  v2[58] = v9;
  v10 = *(v9 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v2[66] = v13;
  v2[67] = *(v13 + 64);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CABB50, 0, 0);
}

uint64_t sub_266CABB50()
{
  v1 = *(v0 + 344);
  v2 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  if (sub_266DA7B8C() & 1) != 0 || (v3 = v1[9], __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]), OUTLINED_FUNCTION_32(), (sub_266C6A310()))
  {
    v4 = *(v0 + 648);
    v5 = *(v0 + 640);
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    *(v0 + 656) = v7[11];
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
    *(v0 + 834) = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    *(v0 + 664) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v17 = swift_allocObject();
    *(v0 + 672) = v17;
    *(v17 + 16) = xmmword_266DAE3B0;
    v18 = v7[10];
    v19 = *__swift_project_boxed_opaque_existential_1(v7 + 17, v7[20]);
    v20 = swift_task_alloc();
    *(v0 + 680) = v20;
    *v20 = v0;
    v20[1] = sub_266CABE10;

    return sub_266D447B0(v19);
  }

  else
  {
    v22 = *(v0 + 584);
    v23 = *(v0 + 576);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    *(v0 + 744) = *(v25 + 88);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
    *v23 = 4;
    *(v23 + 8) = xmmword_266DB2290;
    *(v23 + 24) = 0;
    OUTLINED_FUNCTION_32();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
    *(v0 + 832) = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    *(v0 + 752) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v32 = swift_allocObject();
    *(v0 + 760) = v32;
    *(v32 + 16) = xmmword_266DAE3B0;
    v33 = *(v25 + 80);
    *(v0 + 833) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 768) = v34;
    *v34 = v35;
    v34[1] = sub_266CAD104;

    return sub_266D945C8((v0 + 833), 0);
  }
}

uint64_t sub_266CABE10(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 680);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[86] = v1;

  if (v1)
  {
    v11 = v5[81];
    sub_266C47654(v5[80], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
    v14 = sub_266CAE3E8;
  }

  else
  {
    v5[87] = a1;
    v14 = sub_266CABF50;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_266CABF50()
{
  v1 = v0[84];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[61];
  *(v1 + 32) = v0[87];
  sub_266DA7E5C();
  v5 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v12, v13))
  {
    v14 = v0[84];
    v15 = v14 & 0xC000000000000001;
    sub_266CB9F54(0, (v14 & 0xC000000000000001) == 0, v14);
    v16 = v0[84];
    if (v15)
    {
      v17 = MEMORY[0x26D5F1780](0, v16);
    }

    else
    {
      v17 = *(v16 + 32);
    }

    v18 = v17;
    v19 = [v17 catId];

    v107 = sub_266DAA70C();
    v112 = v20;
  }

  else
  {
    v107 = 0;
    v112 = 0;
  }

  v21 = v0[82];
  v22 = v0[81];
  v23 = v0[80];
  v24 = v0[79];
  OUTLINED_FUNCTION_39_1();
  v25 = v0[67];
  v26 = v0[66];
  v101 = v0[65];
  v102 = v0[63];
  v27 = v0[60];
  v100 = v0[61];
  v29 = v0[57];
  v28 = v0[58];
  v104 = v0[56];
  v105 = v22;
  v108 = v0[44];
  v110 = v30;
  sub_266C4756C(v31, v24);
  sub_266C4756C(v22, v4);
  OUTLINED_FUNCTION_38_1();
  v34 = v33 & ~v32;
  v35 = swift_allocObject();
  v0[88] = v35;
  *(v35 + 16) = v21;
  sub_266C475DC(v24, v35 + v26);
  sub_266C475DC(v4, v35 + v34);
  v36 = OUTLINED_FUNCTION_47_1();
  v37(v36);
  v38 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_21_7(v38, v39, v40, v41, v42, v43, v44, v45, v100, v101, v102, v104, v105, v107, v108, v110, v112);
  *(v46 + 64) = 513;
  *(v46 + 72) = sub_266C48BBC;
  *(v46 + 80) = v35;
  *(v46 + 88) = v103;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v106, v111);
  if (__swift_getEnumTagSinglePayload(v111, 1, v109) == 1)
  {
    v47 = v0 + 77;
  }

  else
  {
    v48 = v0[80];
    v49 = v0[76];
    v50 = v0[44];
    sub_266C476A8(v0[77], v0[52]);
    v51 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v51, v52);
    v53 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v53, v54, v50) != 1)
    {
      v81 = v0[52];
      v82 = v0[44];
      sub_266C476A8(v0[76], v0[51]);
      v0[35] = v82;
      v83 = sub_266C4DB4C();
      v0[36] = v83;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[40] = v82;
      v0[41] = v83;
      v85 = __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_86(v85);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[89] = v86;
      *v86 = v87;
      v86[1] = sub_266CAC4B0;
      v88 = v0[84];
      v89 = v0[82];
      v90 = v0[56];
      v91 = v0[42];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v47 = v0 + 76;
    sub_266C477B4(v0[52]);
  }

  v55 = *v47;
  v56 = v0[81];
  v57 = v0[75];
  v58 = v0[44];
  sub_266C47654(v55, &qword_2800CA050, &qword_266DB0080);
  v59 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v59, v60);
  v61 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, v62, v58);
  v64 = v0[75];
  v65 = v0[44];
  if (EnumTagSinglePayload == 1)
  {
    v66 = v0[80];
    v67 = v0[74];
    sub_266C47654(v64, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v66, v67);
    v68 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v68, v69, v65) == 1)
    {
      sub_266C47654(v0[74], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[92] = v70;
      *v70 = v71;
      v70[1] = sub_266CACDFC;
      v72 = v0[84];
      v73 = v0[82];
      v74 = v0[56];
      v75 = v0[42];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v94 = v0[44];
    sub_266C476A8(v0[74], v0[49]);
    v0[25] = v94;
    v0[26] = sub_266C4DB4C();
    v95 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_55_0(v95);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[91] = v96;
    *v96 = v97;
    OUTLINED_FUNCTION_37_2(v96);
  }

  else
  {
    sub_266C476A8(v64, v0[50]);
    v0[30] = v65;
    v0[31] = sub_266C4DB4C();
    v78 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_86(v78);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[90] = v79;
    *v79 = v80;
    OUTLINED_FUNCTION_37_2(v79);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}