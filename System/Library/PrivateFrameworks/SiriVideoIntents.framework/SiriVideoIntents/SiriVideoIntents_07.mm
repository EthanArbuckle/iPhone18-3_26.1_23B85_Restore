void sub_269729B30()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 176);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(v4 + v3, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2696CB05C(*(v0 + 288), &qword_280323AF8, &unk_26985C1D0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_17_8();
    v6 = v4[25];
    v5 = v4 + 25;
    v7 = *(v5 - 1);
    __swift_project_value_buffer(*(v5 - 2), qword_28033D910);
    v8 = OUTLINED_FUNCTION_2_8();
    v9(v8);
    v10 = sub_2698548B4();
    v11 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v11))
    {
      v12 = "LaunchAppWrapperFlow.execute Input is nil. Error executing request";
LABEL_6:
      v13 = *v5;
      v14 = OUTLINED_FUNCTION_16_2();
      *v14 = 0;
      _os_log_impl(&dword_269684000, v10, v7, v12, v14, 2u);
      OUTLINED_FUNCTION_10();
    }

    else
    {
      v13 = *v5;
    }
  }

  else
  {
    v15 = *(v0 + 176);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 288), *(v0 + 296));
    v16 = *(v15 + 576);
    switch(v16)
    {
      case 3uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        OUTLINED_FUNCTION_17_8();
        v17 = v4[27];
        v5 = v4 + 27;
        v7 = *(v5 - 3);
        __swift_project_value_buffer(*(v5 - 4), qword_28033D910);
        v18 = OUTLINED_FUNCTION_2_8();
        v19(v18);
        v10 = sub_2698548B4();
        v20 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v20))
        {
          v12 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
          goto LABEL_6;
        }

        v13 = *v5;
        break;
      case 4uLL:
        v38 = *(v0 + 176);
        v110 = v38[71];
        v39 = __swift_project_boxed_opaque_existential_1(v38 + 67, v38[70]);
        sub_269852C74();
        if (qword_280322470 != -1)
        {
          swift_once();
        }

        v40 = *(v0 + 312);
        v41 = *(v0 + 280);
        v43 = *(v0 + 256);
        v42 = *(v0 + 264);

        sub_269852C64();
        sub_269852BC4();

        sub_269853844();
        v44 = (*(v42 + 88))(v41, v43);
        if (v44 == *MEMORY[0x277D5C128] || v44 == *MEMORY[0x277D5C140] || v44 == *MEMORY[0x277D5C148])
        {
          v47 = *(v0 + 312);
          v48 = *(v0 + 272);
          v49 = *(v0 + 176);
          v50 = *(*(v0 + 264) + 8);
          (v50)(*(v0 + 280), *(v0 + 256));
          sub_269853844();
          LOBYTE(v47) = sub_269793450(v48, (v49 + 16));
          v51 = OUTLINED_FUNCTION_22_3();
          v50(v51);
          if (v47)
          {
            v52 = *(v0 + 304);
            v53 = *(v0 + 296);
            v54 = *(v0 + 176);
            sub_26972B180(*(v0 + 312), *(v0 + 168));
            v55 = *(v52 + 8);
            v56 = OUTLINED_FUNCTION_22_3();
            v57(v56);
LABEL_47:
            OUTLINED_FUNCTION_11_18();

            OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_7_8();

            __asm { BRAA            X1, X16 }
          }

          v32 = swift_task_alloc();
          *(v0 + 320) = v32;
          *v32 = v0;
          v33 = sub_26972A578;
LABEL_20:
          v32[1] = v33;
          v34 = *(v0 + 312);
          v35 = *(v0 + 168);
          v36 = *(v0 + 176);
          OUTLINED_FUNCTION_7_8();

          sub_26972A828();
          return;
        }

        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        OUTLINED_FUNCTION_17_8();
        v105 = v39[31];
        v5 = v39 + 31;
        v7 = *(v5 - 7);
        __swift_project_value_buffer(*(v5 - 8), qword_28033D910);
        v106 = OUTLINED_FUNCTION_2_8();
        v107(v106);
        v10 = sub_2698548B4();
        v108 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v108))
        {
          v12 = "Unexpected parse type in input";
          goto LABEL_6;
        }

        v13 = *v5;
        break;
      case 5uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v5 = (v0 + 208);
        v28 = *(v0 + 208);
        v7 = *(v0 + 184);
        v29 = *(v0 + 192);
        v30 = __swift_project_value_buffer(v7, qword_28033D910);
        (*(v29 + 16))(v28, v30, v7);
        v10 = sub_2698548B4();
        v31 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v31))
        {
          v12 = "Unexpected state in execute()";
          goto LABEL_6;
        }

        v13 = *v5;
        break;
      case 6uLL:
        v32 = swift_task_alloc();
        *(v0 + 328) = v32;
        *v32 = v0;
        v33 = sub_26972A744;
        goto LABEL_20;
      case 7uLL:
        v25 = *(v0 + 304);
        v24 = *(v0 + 312);
        v26 = *(v0 + 296);
        v27 = *(v0 + 168);
        sub_269853164();
        (*(v25 + 8))(v24, v26);
        goto LABEL_47;
      case 8uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v58 = *(v0 + 224);
        v59 = *(v0 + 192);
        __swift_project_value_buffer(*(v0 + 184), qword_28033D910);
        v60 = OUTLINED_FUNCTION_2_8();
        v61(v60);
        v62 = sub_2698548B4();
        v63 = sub_269854F24();
        if (os_log_type_enabled(v62, v63))
        {
          *OUTLINED_FUNCTION_16_2() = 0;
          OUTLINED_FUNCTION_18_8();
          _os_log_impl(v64, v65, v66, v67, v68, 2u);
          OUTLINED_FUNCTION_10();
        }

        v70 = *(v0 + 304);
        v69 = *(v0 + 312);
        v71 = *(v0 + 296);
        v72 = *(v0 + 224);
        v73 = *(v0 + 184);
        v74 = *(v0 + 192);
        v75 = *(v0 + 168);
        v76 = *(v0 + 176);

        (*(v74 + 8))(v72, v73);
        sub_26979609C(v76 + 56, v76 + 136, v76 + 16);
        sub_269728BA0(8uLL);
        v77 = *(v70 + 8);
        v78 = OUTLINED_FUNCTION_22_3();
        v79(v78);
        goto LABEL_47;
      default:
        sub_2697017E4(*(v15 + 576));
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v80 = *(v0 + 240);
        v81 = *(v0 + 184);
        v82 = *(v0 + 192);
        v83 = __swift_project_value_buffer(v81, qword_28033D910);
        v111 = *(v82 + 16);
        v111(v80, v83, v81);
        v84 = sub_2698548B4();
        v85 = sub_269854F04();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = OUTLINED_FUNCTION_16_2();
          *v86 = 0;
          _os_log_impl(&dword_269684000, v84, v85, "PlayVideoWrapperFlow.execute() in .unableToSelectExecutionDevice state", v86, 2u);
          OUTLINED_FUNCTION_10();
        }

        v88 = *(v0 + 232);
        v87 = *(v0 + 240);
        v89 = *(v0 + 184);
        v90 = *(v0 + 192);
        v91 = *(v0 + 176);

        v109 = *(v90 + 8);
        v109(v87, v89);
        v111(v88, v83, v89);
        v92 = sub_2698548B4();
        v93 = sub_269854F14();
        if (OUTLINED_FUNCTION_39_1(v93))
        {
          v94 = OUTLINED_FUNCTION_16_2();
          *v94 = 0;
          _os_log_impl(&dword_269684000, v92, v83, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v94, 2u);
          OUTLINED_FUNCTION_10();
        }

        v95 = *(v0 + 304);
        v112 = *(v0 + 312);
        v96 = *(v0 + 296);
        v97 = *(v0 + 232);
        v99 = *(v0 + 184);
        v98 = *(v0 + 192);
        v100 = *(v0 + 168);

        v109(v97, v99);
        sub_26970EF58(v91 + 56, v0 + 16);
        sub_2696F3E90(v91 + 136, v0 + 56);
        sub_26970EF58(v91 + 496, v0 + 96);
        v101 = swift_allocObject();
        *(v101 + 16) = v16;
        *(v101 + 24) = *(v0 + 56);
        *(v101 + 40) = *(v0 + 72);
        *(v101 + 56) = *(v0 + 88);
        sub_26968E5D4((v0 + 96), v101 + 64);
        v102 = sub_269852774();
        OUTLINED_FUNCTION_68_0(v102);
        sub_269728D1C(v16);
        *(v0 + 160) = sub_269852764();
        sub_269853144();
        sub_269728BA0(v16);
        (*(v95 + 8))(v112, v96);

        goto LABEL_47;
    }
  }

  v23 = v0 + 184;
  v22 = *(v0 + 184);
  v21 = *(v23 + 8);

  (*(v21 + 8))(v13, v22);
  sub_269855354();
  OUTLINED_FUNCTION_7_8();
}

uint64_t sub_26972A578()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26972A65C()
{
  (*(v0[38] + 8))(v0[39], v0[37]);
  OUTLINED_FUNCTION_11_18();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26972A744()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26972A828()
{
  OUTLINED_FUNCTION_2_7();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = sub_2698538B4();
  v1[40] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[41] = v5;
  v7 = *(v6 + 64);
  v1[42] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698548D4();
  v1[43] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[44] = v9;
  v11 = *(v10 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26972A930()
{
  v64 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 312);
  v5 = __swift_project_value_buffer(v2, qword_28033D910);
  *(v0 + 376) = v5;
  v6 = *(v3 + 16);
  *(v0 + 384) = v6;
  *(v0 + 392) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_2698548B4();
  LOBYTE(v2) = sub_269854F04();

  if (os_log_type_enabled(v7, v2))
  {
    v8 = *(v0 + 312);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v63 = v10;
    *v9 = 136315138;
    v11 = *(v8 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice);
    if (v11)
    {
      v12 = [v11 description];
      v13 = sub_269854A94();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = sub_26974F520(v13, v15, &v63);

    *(v9 + 4) = v25;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v24 + 8))(v22, v23);
  }

  else
  {
    v16 = *(v0 + 368);
    v17 = *(v0 + 344);
    v18 = *(v0 + 352);

    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_22_3();
    v21(v20);
  }

  v31 = *(v0 + 312);
  v61 = *(v0 + 304);
  v62 = *(v0 + 336);
  sub_26970EF58(v31 + 16, v0 + 16);
  v32 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice;
  *(v0 + 400) = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice;
  v60 = *(v31 + v32);
  sub_26970EF58(v31 + 296, v0 + 56);
  sub_26970EF58(v31 + 336, v0 + 96);
  sub_26970EF58(v31 + 416, v0 + 136);
  v33 = *(v0 + 160);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v33);
  OUTLINED_FUNCTION_3_20();
  v36 = v35;
  v38 = *(v37 + 64);
  v39 = OUTLINED_FUNCTION_4_7();
  (*(v36 + 16))(v39, v34, v33);
  *(v0 + 200) = &type metadata for ContentResolver;
  *(v0 + 208) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v40 = swift_allocObject();
  *(v0 + 176) = v40;
  v41 = *(v39 + 32);
  v42 = *(v39 + 16);
  *(v40 + 16) = *v39;
  *(v40 + 32) = v42;
  *(v40 + 48) = v41;
  *(v0 + 240) = &type metadata for AccountProvider;
  *(v0 + 248) = &off_287A41348;
  type metadata accessor for PlayVideoFlowStrategy();
  v43 = swift_allocObject();
  *(v0 + 408) = v43;
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  v46 = v45;
  v48 = *(v47 + 64);
  v49 = OUTLINED_FUNCTION_4_7();
  (*(v46 + 16))(v49, v44, &type metadata for ContentResolver);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, &type metadata for AccountProvider);
  *(v0 + 280) = &type metadata for ContentResolver;
  *(v0 + 288) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v50 = swift_allocObject();
  *(v0 + 256) = v50;
  v51 = *(v49 + 32);
  v52 = *(v49 + 16);
  *(v50 + 16) = *v49;
  *(v50 + 32) = v52;
  *(v50 + 48) = v51;
  v43[31] = &type metadata for AccountProvider;
  v43[32] = &off_287A41348;
  sub_26968E5D4((v0 + 16), (v43 + 3));
  v43[2] = v60;
  sub_26970EF58(v0 + 96, (v43 + 8));
  sub_26968E5D4((v0 + 56), (v43 + 13));
  sub_26968E5D4((v0 + 96), (v43 + 18));
  sub_26968E5D4((v0 + 256), (v43 + 23));
  v53 = v60;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  sub_269853844();
  v54 = swift_task_alloc();
  *(v0 + 416) = v54;
  *v54 = v0;
  v54[1] = sub_26972ADE8;
  v55 = *(v0 + 336);
  OUTLINED_FUNCTION_7_8();

  return sub_269762324(v56, v57);
}

uint64_t sub_26972ADE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v7 = v4[52];
  *v6 = *v2;
  v5[53] = v1;

  v8 = v4[42];
  v9 = v4[41];
  v10 = v4[40];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_26972B048;
  }

  else
  {
    v5[54] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_26972AF68;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26972AF68()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[39];
  v5 = v0[37];
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  v6 = *(v4 + v3);
  sub_26979A778();

  sub_269853154();

  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[42];

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_26972B048()
{
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v5 = v0[45];
  v6 = v0[43];

  v3(v5, v4, v6);
  v7 = sub_2698548B4();
  v8 = sub_269854F24();
  if (os_log_type_enabled(v7, v8))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_10();
  }

  v14 = v0[53];
  v16 = v0[44];
  v15 = v0[45];
  v17 = v0[43];
  v18 = v0[37];

  (*(v16 + 8))(v15, v17);
  sub_269853164();

  v20 = v0[45];
  v19 = v0[46];
  v21 = v0[42];

  OUTLINED_FUNCTION_7_7();

  return v22();
}

void sub_26972B180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v137 = a1;
  v138 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v142 = (v126 - v8);
  v143 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v140 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v141 = v14 - v13;
  v15 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v24 = __swift_project_value_buffer(v15, qword_28033D910);
  (*(v17 + 16))(v23, v24, v15);
  v25 = sub_2698548B4();
  v26 = sub_269854F44();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_16_2();
    *v27 = 0;
    _os_log_impl(&dword_269684000, v25, v26, "Target device resolution is required, pushing device resolution flow", v27, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v17 + 8))(v23, v15);
  v28 = *(v3 + 576);
  *(v3 + 576) = 5;
  sub_269728BA0(v28);
  sub_26970EF58(v3 + 16, v187);
  sub_26970EF58(v3 + 256, v185);
  sub_26970EF58(v3 + 216, v184);
  sub_26970EF58(v3 + 376, v183);
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v29 = sub_2697B9550();
  __swift_mutable_project_boxed_opaque_existential_1(v185, v186);
  OUTLINED_FUNCTION_8_19();
  v136 = v30;
  OUTLINED_FUNCTION_3_20();
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v35 = OUTLINED_FUNCTION_10_14(v34);
  v36(v35);
  __swift_mutable_project_boxed_opaque_existential_1(v183, v183[3]);
  isa = v25->isa;
  v38 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v182 = &off_287A3E7C8;
  v181 = v38;
  v180[0] = isa;
  v178 = &type metadata for CoreAnalyticsService;
  v179 = &xmmword_287A41610;
  v139 = type metadata accessor for PlayVideoDeviceResolutionStrategy();
  v39 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v180, v38);
  OUTLINED_FUNCTION_3_20();
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_1();
  v44 = OUTLINED_FUNCTION_10_14(v43);
  v45(v44);
  __swift_mutable_project_boxed_opaque_existential_1(v177, v178);
  v46.isa = v25->isa;
  v39[10] = v38;
  v39[11] = &off_287A3E7C8;
  v129 = v38;
  v39[7] = v46.isa;
  v175 = &type metadata for CoreAnalyticsService;
  v176 = &xmmword_287A41610;
  v39[24] = 3;
  sub_26968E5D4(v187, (v39 + 2));
  sub_26968E5D4(v184, (v39 + 12));
  v39[22] = v29;
  v39[23] = &off_287A41E38;
  sub_26968E5D4(&v174, (v39 + 17));
  __swift_destroy_boxed_opaque_existential_0(v177);
  __swift_destroy_boxed_opaque_existential_0(v180);
  __swift_destroy_boxed_opaque_existential_0(v183);
  __swift_destroy_boxed_opaque_existential_0(v185);
  v47 = v141;
  v48 = (v140 + 16);
  v49 = *(v140 + 16);
  v49(v141, v137, v143);
  sub_26970EF58(v3 + 16, v187);
  sub_26970EF58(v3 + 96, v185);
  sub_26970EF58(v3 + 56, v184);
  sub_26970EF58(v3 + 216, v183);
  sub_26970EF58(v3 + 256, v180);
  sub_26970EF58(v3 + 376, v177);
  sub_26970EF58(v3 + 456, &v174);
  sub_26970EF58(v3 + 496, v173);
  __swift_mutable_project_boxed_opaque_existential_1(v185, v186);
  OUTLINED_FUNCTION_8_19();
  v137 = v50;
  OUTLINED_FUNCTION_3_20();
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v55 = OUTLINED_FUNCTION_22_7(v54);
  v56(v55);
  __swift_mutable_project_boxed_opaque_existential_1(v180, v181);
  OUTLINED_FUNCTION_8_19();
  v136 = v57;
  OUTLINED_FUNCTION_3_20();
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_1();
  v62 = OUTLINED_FUNCTION_12_16(v61);
  v63(v62);
  __swift_mutable_project_boxed_opaque_existential_1(v177, v178);
  __swift_mutable_project_boxed_opaque_existential_1(&v174, v175);
  v64 = *v29;
  v65 = xmmword_287A41610;
  v172[4] = &off_287A3F338;
  v172[3] = v139;
  v172[0] = v39;
  v127 = type metadata accessor for BaseDialogProvider();
  v171[4] = &off_287A3DBA0;
  v171[3] = v127;
  v171[0] = v64;
  v170[4] = &off_287A3E7C8;
  v170[3] = v38;
  v170[0] = v65;
  v169[3] = &type metadata for CoreAnalyticsService;
  v169[4] = &xmmword_287A41610;
  v168[3] = &type metadata for FeatureFlagServiceImpl;
  v168[4] = &off_287A41BD8;
  sub_26970EF58(v172, v166);
  v66 = v142;
  v49(v142, v47, v143);
  OUTLINED_FUNCTION_29_5();
  sub_26970EF58(v187, v165);
  sub_26970EF58(v171, v164);
  sub_26970EF58(v184, v163);
  sub_26970EF58(v183, v162);
  sub_26970EF58(v170, v160);
  sub_26970EF58(v169, v159);
  sub_26970EF58(v168, v158);
  sub_26970EF58(v173, v157);
  v67 = v167;
  __swift_mutable_project_boxed_opaque_existential_1(v166, v167);
  OUTLINED_FUNCTION_8_19();
  v135 = v68;
  OUTLINED_FUNCTION_3_20();
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_3_1();
  v73 = OUTLINED_FUNCTION_22_7(v72);
  v74(v73);
  __swift_mutable_project_boxed_opaque_existential_1(v164, v164[3]);
  OUTLINED_FUNCTION_8_19();
  v134 = v75;
  OUTLINED_FUNCTION_3_20();
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3_1();
  v80 = OUTLINED_FUNCTION_10_14(v79);
  v81(v80);
  v82 = v161;
  __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
  OUTLINED_FUNCTION_8_19();
  v132 = v83;
  OUTLINED_FUNCTION_3_20();
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_3_1();
  v88 = OUTLINED_FUNCTION_11_17(v87);
  v89(v88);
  __swift_mutable_project_boxed_opaque_existential_1(v159, v159[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v158, v158[3]);
  v90 = *v66;
  v91 = *v67;
  v92 = *v48;
  v93 = v139;
  v156[3] = v139;
  v156[4] = &off_287A3F338;
  v156[0] = v90;
  v94 = v127;
  v154 = v127;
  v155 = &off_287A3DBA0;
  v153[0] = v91;
  v131 = v3;
  v95 = v129;
  v151 = v129;
  v152 = &off_287A3E7C8;
  v150[0] = v92;
  v148 = &type metadata for CoreAnalyticsService;
  v149 = &xmmword_287A41610;
  v145 = &type metadata for FeatureFlagServiceImpl;
  v146 = &off_287A41BD8;
  v133 = type metadata accessor for ExecutionDeviceResolutionFlow();
  v96 = OUTLINED_FUNCTION_68_0(v133);
  __swift_mutable_project_boxed_opaque_existential_1(v156, v93);
  OUTLINED_FUNCTION_8_19();
  v130 = v97;
  OUTLINED_FUNCTION_3_20();
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_3_1();
  v102 = OUTLINED_FUNCTION_11_17(v101);
  v103(v102);
  __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
  OUTLINED_FUNCTION_8_19();
  v128 = v104;
  OUTLINED_FUNCTION_3_20();
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_3_1();
  v109 = OUTLINED_FUNCTION_12_16(v108);
  v110(v109);
  __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
  OUTLINED_FUNCTION_8_19();
  v126[1] = v111;
  OUTLINED_FUNCTION_3_20();
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_3_1();
  v116 = OUTLINED_FUNCTION_27_5(v115);
  v117(v116);
  __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
  __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
  v118 = *v48;
  v119 = *v82;
  v120 = *v49;
  v96[5] = v93;
  v96[6] = &off_287A3F338;
  v96[2] = v118;
  v96[15] = v94;
  v96[16] = &off_287A3DBA0;
  v96[12] = v119;
  v96[30] = v95;
  v96[31] = &off_287A3E7C8;
  v96[27] = v120;
  v96[35] = &type metadata for CoreAnalyticsService;
  v96[36] = &xmmword_287A41610;
  v96[40] = &type metadata for FeatureFlagServiceImpl;
  v96[41] = &off_287A41BD8;

  __swift_destroy_boxed_opaque_existential_0(v173);
  __swift_destroy_boxed_opaque_existential_0(v183);
  __swift_destroy_boxed_opaque_existential_0(v184);
  __swift_destroy_boxed_opaque_existential_0(v187);
  v121 = v143;
  (*(v140 + 8))(v141, v143);
  __swift_destroy_boxed_opaque_existential_0(v168);
  __swift_destroy_boxed_opaque_existential_0(v169);
  __swift_destroy_boxed_opaque_existential_0(v170);
  __swift_destroy_boxed_opaque_existential_0(v171);
  __swift_destroy_boxed_opaque_existential_0(v172);
  v122 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v96 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input, 1, 1, v121);
  swift_beginAccess();
  sub_269702838(v142, v96 + v122);
  swift_endAccess();
  sub_26968E5D4(v165, (v96 + 7));
  sub_26968E5D4(v163, (v96 + 17));
  sub_26968E5D4(v162, (v96 + 22));
  v123 = v96 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  *v123 = 0;
  v123[8] = 3;
  sub_26968E5D4(v157, (v96 + 42));
  __swift_destroy_boxed_opaque_existential_0(v144);
  __swift_destroy_boxed_opaque_existential_0(v147);
  __swift_destroy_boxed_opaque_existential_0(v150);
  __swift_destroy_boxed_opaque_existential_0(v153);
  __swift_destroy_boxed_opaque_existential_0(v156);
  __swift_destroy_boxed_opaque_existential_0(v158);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v160);
  __swift_destroy_boxed_opaque_existential_0(v164);
  __swift_destroy_boxed_opaque_existential_0(v166);
  __swift_destroy_boxed_opaque_existential_0(&v174);
  __swift_destroy_boxed_opaque_existential_0(v177);
  __swift_destroy_boxed_opaque_existential_0(v180);
  __swift_destroy_boxed_opaque_existential_0(v185);
  *&v187[0] = v96;
  v124 = swift_allocObject();
  v125 = v131;
  *(v124 + 16) = sub_26972CC1C;
  *(v124 + 24) = v125;
  sub_26972CCD0(&qword_280323B20, type metadata accessor for ExecutionDeviceResolutionFlow);

  sub_269853124();

  OUTLINED_FUNCTION_21_0();
}

void sub_26972BF28(void *a1, char a2)
{
  v123 = a1;
  v3 = sub_2698538B4();
  OUTLINED_FUNCTION_3_20();
  v120 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v119 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v113 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v113 - v29;
  v118 = sub_2698525E4();
  OUTLINED_FUNCTION_3_20();
  v116 = v31;
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v34);
  v115 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v113 - v38;
  MEMORY[0x28223BE20](v37);
  v117 = &v113 - v40;
  sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v121 = v42;
  v122 = v41;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v41);
  v47 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v48);
  v51 = &v113 - v50;
  if (!a2)
  {
    v57 = qword_2803226E0;
    v58 = v123;
    v59 = v123;
    if (v57 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v60 = v122;
    v61 = __swift_project_value_buffer(v122, qword_28033D910);
    v62 = v121;
    (*(v121 + 16))(v51, v61, v60);
    v63 = v59;
    v64 = sub_2698548B4();
    v65 = sub_269854F14();
    sub_269728BB4(v58, 0);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v58;
      v68 = v63;
      _os_log_impl(&dword_269684000, v64, v65, "ExecutionDeviceResolutionFlow selected device: %@", v66, 0xCu);
      sub_2696CB05C(v67, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v62 + 8))(v51, v60);
    v69 = v124;
    v70 = *(v124 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice);
    *(v124 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice) = v58;

    v71 = v69[72];
    v69[72] = 6;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v114 = v49;
    v52 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
    v53 = v124;
    swift_beginAccess();
    sub_26970897C(v52 + v53, v24);
    if (__swift_getEnumTagSinglePayload(v24, 1, v11))
    {
      v54 = &qword_280323AF8;
      v55 = &unk_26985C1D0;
      v56 = v24;
    }

    else
    {
      v79 = v119;
      (*(v119 + 16))(v18, v24, v11);
      sub_2696CB05C(v24, &qword_280323AF8, &unk_26985C1D0);
      sub_269853844();
      (*(v79 + 8))(v18, v11);
      sub_2696CB644(v30);
      (*(v120 + 8))(v10, v3);
      v80 = sub_269852474();
      if (__swift_getEnumTagSinglePayload(v30, 1, v80) != 1)
      {
        sub_269852414();
        OUTLINED_FUNCTION_3_14(v80);
        v87 = *(v86 + 8);
        v88 = OUTLINED_FUNCTION_22_3();
        v89(v88);
        v91 = v116;
        v90 = v117;
        v92 = v118;
        (*(v116 + 32))(v117, v39, v118);
        sub_2696D5CEC();
        v81 = v123;
        if (v93)
        {
          v94 = v53[5];
          v95 = v53[6];
          __swift_project_boxed_opaque_existential_1(v53 + 2, v94);
          if (sub_2696CB5D4(v94, v95))
          {
            if (qword_280322700 != -1)
            {
              swift_once();
            }

            v96 = v122;
            v97 = __swift_project_value_buffer(v122, qword_281571B38);
            v98 = v121;
            v99 = v114;
            (*(v121 + 16))(v114, v97, v96);
            v100 = v115;
            (*(v91 + 16))(v115, v90, v92);
            v101 = sub_2698548B4();
            v102 = v90;
            v103 = sub_269854F04();
            if (os_log_type_enabled(v101, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v125 = v105;
              *v104 = 136315138;
              v106 = sub_2696D5F00();
              v107 = v100;
              v109 = v108;
              v110 = *(v91 + 8);
              v110(v107, v118);
              v111 = sub_26974F520(v106, v109, &v125);

              *(v104 + 4) = v111;
              _os_log_impl(&dword_269684000, v101, v103, "PlayVideoWrapperFlow.processDeviceResolutionResult found no devices, but it's possible the user was referring to the local TV app with targetDevice description: %s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v105);
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_10();

              (*(v98 + 8))(v114, v122);
              v110(v117, v118);
            }

            else
            {

              v112 = *(v91 + 8);
              v112(v100, v92);
              (*(v98 + 8))(v99, v96);
              v112(v102, v92);
            }

            v71 = v53[72];
            v53[72] = 6;
            goto LABEL_20;
          }
        }

        (*(v91 + 8))(v90, v92);
LABEL_19:
        v82 = v53[72];
        v53[72] = v81;
        sub_2697017E4(v81);
        v71 = v82;
LABEL_20:
        sub_269728BA0(v71);
        OUTLINED_FUNCTION_21_0();
        return;
      }

      v54 = &qword_280323360;
      v55 = &unk_26985AB80;
      v56 = v30;
    }

    sub_2696CB05C(v56, v54, v55);
    v81 = v123;
    goto LABEL_19;
  }

  v72 = v124;
  v74 = v121;
  v73 = v122;
  if (v123)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v75 = __swift_project_value_buffer(v73, qword_28033D910);
    (*(v74 + 16))(v47, v75, v73);
    v76 = sub_2698548B4();
    v77 = sub_269854F24();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_16_2();
      *v78 = 0;
      _os_log_impl(&dword_269684000, v76, v77, "DeviceResolutionResult resulted in failure", v78, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v74 + 8))(v47, v73);
    v71 = v72[72];
    v72[72] = 8;
    goto LABEL_20;
  }

  v83 = v124[72];
  v124[72] = 7;
  OUTLINED_FUNCTION_21_0();

  sub_269728BA0(v84);
}

uint64_t sub_26972C894()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_2696D1E70(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  sub_269728BA0(*(v0 + 576));
  sub_2696CB05C(OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input + v0, &qword_280323AF8, &unk_26985C1D0);

  return v0;
}

uint64_t sub_26972C954()
{
  sub_26972C894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PlayVideoWrapperFlow()
{
  result = qword_280323E80;
  if (!qword_280323E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26972CA00()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents04PlayB11WrapperFlowC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26972CB44()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_269729964();
}

uint64_t sub_26972CBE0()
{
  type metadata accessor for PlayVideoWrapperFlow();

  return sub_269852B84();
}

uint64_t sub_26972CC20()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_2697975C4();
}

uint64_t sub_26972CCD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_18()
{
  result = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void *sub_26972CD80()
{
  sub_269853524();
  v0 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v0);
  v1 = sub_269853254();
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v2 = swift_allocObject();
  sub_26968E5D4(v43, v2 + 16);
  sub_2698538C4();
  v3 = type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  v5 = sub_2698546A4();
  v6 = sub_269854684();
  v7 = type metadata accessor for GlobalsImpl();
  inited = swift_initStaticObject();
  sub_269852BB4();
  v40 = v0;
  v41 = MEMORY[0x277D5BD58];
  *&v39 = v1;
  v38[3] = v3;
  v38[4] = &off_287A3DBA0;
  v38[0] = v4;
  v36 = v5;
  v37 = MEMORY[0x277D61F10];
  *&v35 = v6;
  v34[3] = v7;
  v34[4] = &off_287A41CD0;
  v34[0] = inited;
  v33[3] = &type metadata for LSApplicationRecordProvider;
  v33[4] = &xmmword_287A41430;
  v9 = type metadata accessor for SearchVideoFlow();
  v10 = OUTLINED_FUNCTION_68_0(v9);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v3);
  OUTLINED_FUNCTION_3_20();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v7);
  OUTLINED_FUNCTION_3_20();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  __swift_mutable_project_boxed_opaque_existential_1(v33, &type metadata for LSApplicationRecordProvider);
  v25 = *v16;
  v26 = *v23;
  v10[21] = v3;
  v10[22] = &off_287A3DBA0;
  v10[18] = v25;
  v10[31] = v7;
  v10[32] = &off_287A41CD0;
  v10[28] = v26;
  v27 = v10 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider;
  *(v27 + 3) = &type metadata for LSApplicationRecordProvider;
  *(v27 + 4) = &xmmword_287A41430;
  sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_26968E5D4(v44, (v10 + 2));
  sub_26968E5D4(&v39, (v10 + 7));
  v10[12] = v2;
  sub_26968E5D4(v43, (v10 + 13));
  sub_26968E5D4(&v35, (v10 + 23));
  sub_26968E5D4(&v42, v10 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v10;
}

uint64_t sub_26972D0B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v19 = __swift_project_value_buffer(v10, qword_28033D910);
  (*(v12 + 16))(v18, v19, v10);
  v20 = sub_2698548B4();
  v21 = sub_269854F14();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_269684000, v20, v21, "SearchVideoFlow.on() called", v22, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v12 + 8))(v18, v10);
  v23 = sub_269853854();
  OUTLINED_FUNCTION_4_3(v23);
  (*(v24 + 16))(v9, a1, v23);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  v28 = OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_input;
  swift_beginAccess();
  sub_269720B24(v9, v2 + v28, &qword_280323AF8, &unk_26985C1D0);
  swift_endAccess();
  return 1;
}

uint64_t sub_26972D304()
{
  type metadata accessor for SearchVideoFlow();
  sub_2697339D4(&qword_280323EB0, type metadata accessor for SearchVideoFlow);
  OUTLINED_FUNCTION_2_6();
  return sub_269852B54();
}

uint64_t sub_26972D390()
{
  OUTLINED_FUNCTION_2_7();
  v1[41] = v2;
  v1[42] = v0;
  v3 = type metadata accessor for VideoDataModels(0);
  v1[43] = v3;
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[44] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269851F64();
  v1[45] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[46] = v7;
  v9 = *(v8 + 64);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1[48] = v10;
  OUTLINED_FUNCTION_8_9(v10);
  v12 = *(v11 + 64);
  v1[49] = OUTLINED_FUNCTION_37_0();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323EC0, &unk_26985D910);
  OUTLINED_FUNCTION_8_9(v13);
  v15 = *(v14 + 64);
  v1[52] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269852104();
  v1[53] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[54] = v17;
  v19 = *(v18 + 64);
  v1[55] = OUTLINED_FUNCTION_4_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  v1[56] = v20;
  OUTLINED_FUNCTION_8_9(v20);
  v22 = *(v21 + 64);
  v1[57] = OUTLINED_FUNCTION_37_0();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v23 = type metadata accessor for VideoDataModels.VideoResult(0);
  OUTLINED_FUNCTION_5_12(v23);
  v1[62] = v24;
  v26 = *(v25 + 64);
  v1[63] = OUTLINED_FUNCTION_4_7();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v1[64] = v27;
  OUTLINED_FUNCTION_8_9(v27);
  v29 = *(v28 + 64);
  v1[65] = OUTLINED_FUNCTION_37_0();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v30 = sub_269853234();
  v1[70] = v30;
  OUTLINED_FUNCTION_5_12(v30);
  v1[71] = v31;
  v33 = *(v32 + 64);
  v1[72] = OUTLINED_FUNCTION_4_7();
  v34 = sub_269852084();
  v1[73] = v34;
  OUTLINED_FUNCTION_5_12(v34);
  v1[74] = v35;
  v37 = *(v36 + 64);
  v1[75] = OUTLINED_FUNCTION_37_0();
  v1[76] = swift_task_alloc();
  v38 = sub_269851F04();
  v1[77] = v38;
  OUTLINED_FUNCTION_5_12(v38);
  v1[78] = v39;
  v41 = *(v40 + 64);
  v1[79] = OUTLINED_FUNCTION_37_0();
  v1[80] = swift_task_alloc();
  v42 = sub_2698523C4();
  v1[81] = v42;
  OUTLINED_FUNCTION_5_12(v42);
  v1[82] = v43;
  v45 = *(v44 + 64);
  v1[83] = OUTLINED_FUNCTION_4_7();
  v46 = sub_269852474();
  v1[84] = v46;
  OUTLINED_FUNCTION_5_12(v46);
  v1[85] = v47;
  v49 = *(v48 + 64);
  v1[86] = OUTLINED_FUNCTION_4_7();
  v50 = sub_2698548D4();
  v1[87] = v50;
  OUTLINED_FUNCTION_5_12(v50);
  v1[88] = v51;
  v53 = *(v52 + 64);
  v1[89] = OUTLINED_FUNCTION_37_0();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v54 = sub_269851EF4();
  v1[92] = v54;
  OUTLINED_FUNCTION_5_12(v54);
  v1[93] = v55;
  v57 = *(v56 + 64);
  v1[94] = OUTLINED_FUNCTION_4_7();
  v58 = sub_269853874();
  v1[95] = v58;
  OUTLINED_FUNCTION_5_12(v58);
  v1[96] = v59;
  v61 = *(v60 + 64);
  v1[97] = OUTLINED_FUNCTION_4_7();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v62);
  v64 = *(v63 + 64);
  v1[98] = OUTLINED_FUNCTION_37_0();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v65 = sub_269853854();
  v1[101] = v65;
  OUTLINED_FUNCTION_5_12(v65);
  v1[102] = v66;
  v68 = *(v67 + 64);
  v1[103] = OUTLINED_FUNCTION_4_7();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v69);
  v71 = *(v70 + 64);
  v1[104] = OUTLINED_FUNCTION_4_7();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_8_9(v72);
  v74 = *(v73 + 64);
  v1[105] = OUTLINED_FUNCTION_37_0();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v75 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v75, v76, v77);
}

uint64_t sub_26972D9B0()
{
  v318 = v0;
  v1 = v0;
  v2 = v0[104];
  v3 = v0[101];
  v4 = v0[42];
  sub_269734044();
  v5 = OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_input;
  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  sub_2697208E8(v4 + v5, v2, &qword_280323AF8, &unk_26985C1D0);
  v6 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v6, v7, v3))
  {
    sub_26969B0C0(v1[104], &qword_280323AF8, &unk_26985C1D0);
    v8 = 1;
  }

  else
  {
    v9 = v1[107];
    v10 = v1[104];
    v11 = v1[103];
    v12 = v1[102];
    v13 = v1[101];
    v14 = *(v12 + 16);
    v15 = OUTLINED_FUNCTION_2_6();
    v16(v15);
    sub_26969B0C0(v10, &qword_280323AF8, &unk_26985C1D0);
    sub_269853844();
    v17 = *(v12 + 8);
    v18 = OUTLINED_FUNCTION_34_0();
    v19(v18);
    v8 = 0;
  }

  v20 = v1[107];
  v21 = v1[106];
  v22 = sub_2698538B4();
  __swift_storeEnumTagSinglePayload(v20, v8, 1, v22);
  v23 = OUTLINED_FUNCTION_34_0();
  sub_2697208E8(v23, v24, v25, v26);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    goto LABEL_5;
  }

  sub_2697208E8(v1[106], v1[105], &qword_280323E08, &unk_26985D090);
  v43 = *(v22 - 8);
  v44 = v43[11];
  v45 = OUTLINED_FUNCTION_50_0();
  v47 = v46(v45);
  v315 = v1;
  if (v47 == *MEMORY[0x277D5C140])
  {
    v48 = v1[105];
    v49 = v1[100];
    v50 = v1[97];
    v51 = v1[96];
    v52 = v315[95];
    v53 = v315[94];
    v54 = v315[93];
    v55 = v315[92];
    v56 = v43[12];
    v57 = OUTLINED_FUNCTION_50_0();
    v58(v57);
    (*(v51 + 32))(v50, v48, v52);
    sub_269853864();
    sub_2696D3C74();
    (*(v54 + 8))(v53, v55);
    v59 = *(v51 + 8);
    v60 = OUTLINED_FUNCTION_44_0();
    v61(v60);
    v1 = v315;
  }

  else
  {
    v8 = v1[105];
    if (v47 != *MEMORY[0x277D5C148])
    {
      v70 = v43[1];
      v71 = OUTLINED_FUNCTION_50_0();
      v72(v71);
LABEL_5:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v27 = v1[91];
      OUTLINED_FUNCTION_65_0();
      __swift_project_value_buffer(v8, qword_28033D910);
      v28 = OUTLINED_FUNCTION_21_8();
      v29(v28);
      v30 = sub_2698548B4();
      v31 = sub_269854F14();
      if (os_log_type_enabled(v30, v31))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v32, v33, "Received unexpected parse. Returning error");
        OUTLINED_FUNCTION_10();
      }

      v34 = v1[91];
      v35 = v1[88];
      v36 = v1[87];

      v37 = *(v35 + 8);
      v38 = OUTLINED_FUNCTION_22_3();
      v39(v38);
      swift_task_alloc();
      OUTLINED_FUNCTION_48_2();
      v1[108] = v40;
      *v40 = v41;
      v42 = sub_26972EE2C;
LABEL_35:
      v40[1] = v42;
      v129 = v1[41];
      v130 = v1[42];
      OUTLINED_FUNCTION_25_4();

      return sub_26973085C();
    }

    v62 = v43[12];
    v63 = OUTLINED_FUNCTION_50_0();
    v64(v63);
    v65 = *v8;
    sub_2696D6C54();
    if (v66)
    {
      v67 = v66;
      v68 = v1[99];
      sub_269854544();

      v69 = 0;
    }

    else
    {
      v69 = 1;
    }

    v73 = v1[100];
    v74 = v1[99];
    v75 = v1[84];

    __swift_storeEnumTagSinglePayload(v74, v69, 1, v75);
    v76 = OUTLINED_FUNCTION_31_3();
    sub_269733ADC(v76, v77, v78, v79);
  }

  v80 = v1[100];
  v81 = v1[98];
  v82 = v1[84];
  sub_26969B0C0(v1[106], &qword_280323E08, &unk_26985D090);
  v83 = OUTLINED_FUNCTION_7_16();
  sub_2697208E8(v83, v84, v85, v86);
  v87 = OUTLINED_FUNCTION_94();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, v88, v82);
  v90 = v1[98];
  if (EnumTagSinglePayload == 1)
  {
    sub_26969B0C0(v1[98], &qword_280323360, &unk_26985AB80);
LABEL_30:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v115 = v1[89];
    OUTLINED_FUNCTION_65_0();
    __swift_project_value_buffer(v81, qword_28033D910);
    v116 = OUTLINED_FUNCTION_21_8();
    v117(v116);
    v118 = sub_2698548B4();
    v119 = sub_269854F14();
    if (os_log_type_enabled(v118, v119))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v120, v121, "Received unexpected video verb. Returning error");
      OUTLINED_FUNCTION_10();
    }

    v122 = v1[89];
    v123 = v1[88];
    v124 = v1[87];

    v125 = *(v123 + 8);
    v126 = OUTLINED_FUNCTION_22_3();
    v127(v126);
    swift_task_alloc();
    OUTLINED_FUNCTION_48_2();
    v1[121] = v40;
    *v40 = v128;
    v42 = sub_2697305B0;
    goto LABEL_35;
  }

  v91 = v1[83];
  v92 = v1[82];
  v93 = v1[81];
  v81 = v1[80];
  v94 = v1[79];
  v95 = v1[78];
  v96 = v1[77];
  (*(v1[85] + 32))(v1[86], v1[98], v1[84]);
  sub_269852424();
  sub_2698523A4();
  (*(v92 + 8))(v91, v93);
  (*(v95 + 104))(v94, *MEMORY[0x277D39208], v96);
  sub_2697339D4(&qword_280323EC8, MEMORY[0x277D39210]);
  OUTLINED_FUNCTION_102();
  sub_269854C44();
  OUTLINED_FUNCTION_102();
  sub_269854C44();
  v97 = *(v95 + 8);
  v98 = OUTLINED_FUNCTION_31_3();
  v97(v98);
  v99 = OUTLINED_FUNCTION_22_3();
  v97(v99);
  if (v1[38] != v1[39])
  {
    (*(v1[85] + 8))(v1[86], v1[84]);
    goto LABEL_30;
  }

  v100 = v1[86];
  v101 = sub_269852464();
  v102 = MEMORY[0x277D84F90];
  v317 = MEMORY[0x277D84F90];
  v103 = *(v101 + 16);
  if (v103)
  {
    v104 = v1[74];
    type metadata accessor for Content();
    v107 = *(v104 + 16);
    v105 = v104 + 16;
    v106 = v107;
    v108 = v101 + ((*(v105 + 64) + 32) & ~*(v105 + 64));
    v311 = *(v105 + 56);
    v109 = MEMORY[0x277D84F90];
    do
    {
      v110 = v1[76];
      v111 = v1[75];
      v112 = v1[73];
      v106(v110, v108, v112);
      v106(v111, v110, v112);
      v113 = sub_2696CF2E8(v111);
      v114 = (*(v105 - 8))(v110, v112);
      if (v113)
      {
        MEMORY[0x26D645B90](v114);
        if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v317 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v109 = v317;
      }

      v108 += v311;
      --v103;
      v1 = v315;
    }

    while (v103);

    v102 = MEMORY[0x277D84F90];
  }

  else
  {

    v109 = MEMORY[0x277D84F90];
  }

  v1[109] = v109;
  v133 = v1[86];
  v134 = v1[72];
  sub_2698359E4();
  sub_2696D4FC8();
  v1[110] = v135;
  if (sub_26975004C(v109) == 1 && sub_26975004C(v109))
  {
    v136 = OUTLINED_FUNCTION_70_0();
    sub_269750050(v136);
    if (!v133)
    {
      v137 = *(v109 + 32);
LABEL_43:
      v1[111] = v137;

      swift_task_alloc();
      OUTLINED_FUNCTION_48_2();
      v1[112] = v138;
      *v138 = v139;
      v138[1] = sub_26972F0D4;
      v140 = v1[72];
      v141 = v1[41];
      v142 = v1[42];
      OUTLINED_FUNCTION_25_4();

      return sub_26973146C();
    }

LABEL_74:
    v137 = MEMORY[0x26D646120](0, v109);
    goto LABEL_43;
  }

  v144 = sub_26975004C(v109);
  v1[113] = v144;
  if (v144)
  {
    if (v144 < 1)
    {
      __break(1u);
      goto LABEL_74;
    }

    v1[115] = v102;
    v1[114] = 0;
    v145 = v1[109];
    if ((v145 & 0xC000000000000001) != 0)
    {
      v146 = MEMORY[0x26D646120](0);
    }

    else
    {
      v146 = *(v145 + 32);
    }

    v1[116] = v146;
    swift_task_alloc();
    OUTLINED_FUNCTION_48_2();
    v1[117] = v158;
    *v158 = v159;
    OUTLINED_FUNCTION_13_13(v158);
    v160 = v1[69];
    v161 = v1[42];
    OUTLINED_FUNCTION_25_4();

    return sub_269732188();
  }

  else
  {
    v147 = v1[109];
    v148 = v1[86];
    v149 = v1[61];
    v151 = v1[52];
    v150 = v1[53];

    v152 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v152);
    sub_2696D58DC();
    v314 = v152;
    if (__swift_getEnumTagSinglePayload(v151, 1, v150) == 1)
    {
      sub_26969B0C0(v1[52], &qword_280323EC0, &unk_26985D910);
      v156 = "videoFilteredSearchResultList";
      v157 = 0xD00000000000001CLL;
    }

    else
    {
      v163 = v1[68];
      (*(v1[54] + 32))(v1[55], v1[52], v1[53]);
      v164 = sub_269852624();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v164);
      sub_2698520D4();

      OUTLINED_FUNCTION_39_0();
      if (v168)
      {
        v169 = v1[68];
        v170 = v1[67];
        v171 = v1[55];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
        v172 = OUTLINED_FUNCTION_57_1();
        v173 = OUTLINED_FUNCTION_61(v172, xmmword_269857710);
        v174 = MEMORY[0x277D63778];
        v172[3].n128_u64[1] = v173;
        v172[4].n128_u64[0] = v174;
        __swift_allocate_boxed_opaque_existential_1(&v172[2]);
        v175 = sub_2698520D4();
        OUTLINED_FUNCTION_33_3(v175, v176);
        v177 = *MEMORY[0x277D63730];
        OUTLINED_FUNCTION_3_14(v173);
        v179 = *(v178 + 104);
        v180 = OUTLINED_FUNCTION_41_2();
        v181(v180);
        sub_269852634();
        v182 = OUTLINED_FUNCTION_50_0();
        sub_26969B0C0(v182, v183, &unk_26985D8B0);
        OUTLINED_FUNCTION_24_4();
        __swift_storeEnumTagSinglePayload(v184, v185, v186, v164);
        v187 = OUTLINED_FUNCTION_2_6();
        sub_269733ADC(v187, v188, &qword_2803239E0, &unk_26985D8B0);
      }

      v189 = v1[67];
      v301 = v189;
      v302 = v1[68];
      v294 = v1[66];
      v297 = v1[65];
      v300 = v1[64];
      v190 = v1[60];
      v307 = v1[61];
      v309 = v1[54];
      v312 = v1[53];
      v191 = v1[50];
      v292 = v164;
      v293 = v1[51];
      v289 = v1[49];
      v290 = v1[48];
      v193 = v1[46];
      v192 = v1[47];
      v194 = v1[45];
      v304 = v1[55];
      v195 = sub_269851F24();
      v295 = v196;
      v296 = v195;
      v197 = sub_269851FD4();
      v298 = v198;
      v299 = v197;
      sub_2698520F4();
      sub_269851F24();
      (*(v193 + 8))(v192, v194);
      sub_269851C64();

      v199 = OUTLINED_FUNCTION_44_0();
      v201 = v200;
      v203 = v202;
      sub_2697208E8(v199, v204, v200, v202);
      v288 = v314[6];
      sub_269851C74();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
      sub_2697208E8(v191, v289, &qword_280323030, &qword_26985BAE0);
      sub_269852674();
      sub_26969B0C0(v191, &qword_280323030, &qword_26985BAE0);
      v291 = v314[7];
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v209, v210, v211, v292);
      sub_2697208E8(v294, v297, v201, v203);
      sub_269852674();
      sub_26969B0C0(v294, v201, v203);
      v315[26] = v296;
      v315[27] = v295;
      sub_269852674();
      v212 = v314[5];
      v315[28] = v299;
      v315[29] = v298;
      sub_269852674();
      v213 = OUTLINED_FUNCTION_49_3();
      sub_2697208E8(v213, v214, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v191, v289, &qword_280323030, &qword_26985BAE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
      v152 = v314;
      sub_2698526A4();
      sub_26969B0C0(v191, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v301, v294, &qword_2803239E0, &unk_26985D8B0);
      sub_2697208E8(v294, v297, &qword_2803239E0, &unk_26985D8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
      sub_2698526A4();
      sub_26969B0C0(v294, &qword_2803239E0, &unk_26985D8B0);
      sub_26969B0C0(v301, &qword_2803239E0, &unk_26985D8B0);
      v215 = OUTLINED_FUNCTION_49_3();
      sub_26969B0C0(v215, v216, &qword_26985BAE0);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v217, v218, v219, v314);
      sub_269720B24(v190, v307, &qword_2803239D8, &unk_26985BAD0);
      v1 = v315;
      sub_26969B0C0(v302, &qword_2803239E0, &unk_26985D8B0);
      (*(v309 + 8))(v304, v312);
      v156 = "videoGenericSearchResultList";
      v157 = 0xD00000000000001FLL;
    }

    v220 = v156 | 0x8000000000000000;
    v221 = &qword_2803239D8;
    sub_2697208E8(v1[61], v1[59], &qword_2803239D8, &unk_26985BAD0);
    v222 = OUTLINED_FUNCTION_27_6();
    v224 = __swift_getEnumTagSinglePayload(v222, v223, v152);
    v225 = OUTLINED_FUNCTION_7_16();
    sub_26969B0C0(v225, v226, &unk_26985BAD0);
    if (v224 == 1 && (v227 = v1[86], sub_269852454(), v221 = v228, , OUTLINED_FUNCTION_39_0(), v229))
    {
      v230 = v1[86];

      v231 = sub_269852454();
      v233 = v232;
      v220 = 0x800000026987AEA0;
      v157 = 0xD00000000000001DLL;
    }

    else
    {
      v231 = 0;
      v233 = 0;
    }

    v1[119] = v220;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v234 = v1[90];
    OUTLINED_FUNCTION_65_0();
    __swift_project_value_buffer(v221, qword_28033D910);
    v235 = OUTLINED_FUNCTION_21_8();
    v236(v235);

    v237 = MEMORY[0x277D84F90];

    v238 = sub_2698548B4();
    v239 = sub_269854F14();

    v313 = v220;

    v316 = v157;
    v310 = v231;
    v308 = v233;
    if (os_log_type_enabled(v238, v239))
    {
      v240 = v1[61];
      v241 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      *v241 = 134218754;
      *(v241 + 4) = *(v237 + 16);
      *(v241 + 12) = 2080;
      swift_beginAccess();
      v242 = OUTLINED_FUNCTION_27_6();
      v244 = 0;
      v245 = 0;
      if (!__swift_getEnumTagSinglePayload(v242, v243, v152))
      {
        v246 = v1[61];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
        sub_269852694();
        v244 = v1[24];
        v245 = v1[25];
      }

      v247 = v1[88];
      v303 = v1[87];
      v305 = v1[90];
      swift_endAccess();
      v1[20] = v244;
      v1[21] = v245;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v248 = sub_269854AE4();
      v250 = sub_26974F520(v248, v249, &v317);

      *(v241 + 14) = v250;
      *(v241 + 22) = 2080;
      v1[22] = v231;
      v1[23] = v233;

      v251 = sub_269854AE4();
      v253 = sub_26974F520(v251, v252, &v317);

      *(v241 + 24) = v253;
      *(v241 + 32) = 2080;
      *(v241 + 34) = sub_26974F520(v316, v313, &v317);

      _os_log_impl(&dword_269684000, v238, v239, "SearchVideoFlow using ResultsListModel with %ld results, person=%s, header=%s, and responseViewID=%s", v241, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v247 + 8))(v305, v303);
    }

    else
    {
      v254 = v1[90];
      OUTLINED_FUNCTION_65_0();

      v255 = *(v237 + 8);
      v256 = OUTLINED_FUNCTION_7_16();
      v257(v256);
    }

    v259 = v1[60];
    v258 = v1[61];
    v260 = v1[57];
    v261 = v1[58];
    v262 = v1[56];
    v263 = v1[44];
    v306 = v1[43];
    OUTLINED_FUNCTION_0_15();
    swift_beginAccess();
    v264 = OUTLINED_FUNCTION_25_2();
    sub_2697208E8(v264, v265, &qword_2803239D8, &unk_26985BAD0);
    v266 = type metadata accessor for VideoDataModels.ResultsListModel(0);
    v267 = *(v266 + 20);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v268, v269, v270, v314);
    OUTLINED_FUNCTION_75_0();
    sub_269852674();
    v271 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v271, v272, &unk_26985BAD0);
    v273 = *(v266 + 24);
    v1[17] = 0;
    v1[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    v1[40] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    v274 = OUTLINED_FUNCTION_102();
    sub_2697208E8(v274, v275, &qword_2803239D8, &unk_26985BAD0);
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    v276 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v276, v277, &unk_26985BAD0);
    v1[18] = v310;
    v1[19] = v308;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    sub_26969B0C0(v259, &qword_2803239D8, &unk_26985BAD0);
    swift_storeEnumTagMultiPayload();
    v1[5] = v306;
    OUTLINED_FUNCTION_16_12();
    v1[6] = sub_2697339D4(v278, v279);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
    sub_269733A1C(v263, boxed_opaque_existential_1);
    swift_task_alloc();
    OUTLINED_FUNCTION_48_2();
    v1[120] = v281;
    *v281 = v282;
    OUTLINED_FUNCTION_14_9(v281);
    v283 = v1[110];
    v284 = v1[72];
    v285 = v1[41];
    v286 = v1[42];
    OUTLINED_FUNCTION_25_4();

    return sub_269730E7C();
  }
}

uint64_t sub_26972EE2C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 248) = v3;
  *(v1 + 240) = v0;
  OUTLINED_FUNCTION_66_0();
  v5 = *(v4 + 864);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26972EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v43 = *(v42 + 848);
  sub_26969B0C0(*(v42 + 856), &qword_280323E08, &unk_26985D090);
  v44 = OUTLINED_FUNCTION_7_16();
  sub_26969B0C0(v44, v45, &unk_26985D090);
  OUTLINED_FUNCTION_0_27();
  HIDWORD(a38) = *(v42 + 248);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_26972F0D4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 264) = v3;
  *(v1 + 256) = v0;
  OUTLINED_FUNCTION_66_0();
  v5 = *(v4 + 896);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26972F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v43 = *(v42 + 888);
  v44 = *(v42 + 856);
  v45 = *(v42 + 800);
  v46 = *(v42 + 688);
  v47 = *(v42 + 680);
  v48 = *(v42 + 672);
  v49 = *(v42 + 576);
  v50 = *(v42 + 568);
  v51 = *(v42 + 560);

  (*(v50 + 8))(v49, v51);
  v52 = *(v47 + 8);
  v53 = OUTLINED_FUNCTION_34_0();
  v54(v53);
  sub_26969B0C0(v45, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v44, &qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_0_27();
  HIDWORD(a38) = *(v42 + 264);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_26972F3D8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  v4 = v1[117];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[118] = v6;
  *v6 = v5;
  v6[1] = sub_26972F54C;
  v7 = v1[116];
  v8 = v1[69];
  v9 = v1[63];
  v10 = v1[42];

  return sub_269732A38();
}

uint64_t sub_26972F54C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 944);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26972F630()
{
  v185 = v0;
  v1 = *(v0 + 920);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 920);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v154 = *(v3 + 16);
    v155 = *(v0 + 920);
    sub_26977C82C();
    v3 = v156;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_26977C82C();
    v3 = v157;
  }

  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 552);
  v9 = *(v0 + 496);
  v8 = *(v0 + 504);

  sub_26969B0C0(v7, &qword_2803239E0, &unk_26985D8B0);
  *(v3 + 16) = v4 + 1;
  sub_2696F3EEC(v8, v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v4);
  if (v5 + 1 == v6)
  {
    v10 = *(v0 + 872);
    v11 = *(v0 + 688);
    v12 = *(v0 + 488);
    v14 = *(v0 + 416);
    v13 = *(v0 + 424);

    v15 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    sub_2696D58DC();
    v182 = v15;
    v183 = v3;
    if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
    {
      sub_26969B0C0(*(v0 + 416), &qword_280323EC0, &unk_26985D910);
      v19 = "videoFilteredSearchResultList";
      v20 = 0xD00000000000001CLL;
    }

    else
    {
      v24 = *(v0 + 544);
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 416), *(v0 + 424));
      v25 = sub_269852624();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      sub_2698520D4();
      OUTLINED_FUNCTION_68_1();

      OUTLINED_FUNCTION_62_0();
      if (v29)
      {
        v30 = *(v0 + 544);
        v31 = *(v0 + 536);
        v32 = *(v0 + 440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
        v33 = OUTLINED_FUNCTION_57_1();
        v34 = OUTLINED_FUNCTION_61(v33, xmmword_269857710);
        v35 = MEMORY[0x277D63778];
        v33[3].n128_u64[1] = v34;
        v33[4].n128_u64[0] = v35;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33[2]);
        v37 = sub_2698520D4();
        OUTLINED_FUNCTION_33_3(v37, v38);
        v39 = *MEMORY[0x277D63730];
        OUTLINED_FUNCTION_3_14(v34);
        (*(v40 + 104))(boxed_opaque_existential_1);
        sub_269852634();
        sub_26969B0C0(v30, &qword_2803239E0, &unk_26985D8B0);
        OUTLINED_FUNCTION_24_4();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v25);
        v44 = OUTLINED_FUNCTION_31_3();
        sub_269733ADC(v44, v45, &qword_2803239E0, &unk_26985D8B0);
      }

      v46 = *(v0 + 536);
      v168 = *(v0 + 544);
      v162 = *(v0 + 528);
      v180 = *(v0 + 520);
      v167 = *(v0 + 512);
      v47 = *(v0 + 480);
      v48 = *(v0 + 440);
      v169 = v48;
      v171 = *(v0 + 488);
      v174 = *(v0 + 432);
      v176 = *(v0 + 424);
      v49 = *(v0 + 400);
      v178 = *(v0 + 408);
      v158 = *(v0 + 392);
      v160 = *(v0 + 384);
      v50 = *(v0 + 368);
      v51 = *(v0 + 376);
      v52 = *(v0 + 360);
      v53 = sub_269851F24();
      v163 = v54;
      v164 = v53;
      v55 = sub_269851FD4();
      v165 = v56;
      v166 = v55;
      sub_2698520F4();
      sub_269851F24();
      (*(v50 + 8))(v51, v52);
      sub_269851C64();

      v57 = OUTLINED_FUNCTION_44_0();
      v59 = v58;
      v61 = v60;
      sub_2697208E8(v57, v62, v58, v60);
      v159 = v182[6];
      sub_269851C74();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
      sub_2697208E8(v49, v158, &qword_280323030, &qword_26985BAE0);
      sub_269852674();
      sub_26969B0C0(v49, &qword_280323030, &qword_26985BAE0);
      v161 = v182[7];
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
      sub_2697208E8(v162, v180, v59, v61);
      sub_269852674();
      sub_26969B0C0(v162, v59, v61);
      *(v0 + 208) = v164;
      *(v0 + 216) = v163;
      sub_269852674();
      v71 = v182[5];
      *(v0 + 224) = v166;
      *(v0 + 232) = v165;
      sub_269852674();
      sub_2697208E8(v178, v49, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v49, v158, &qword_280323030, &qword_26985BAE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
      sub_2698526A4();
      v72 = v49;
      v15 = v182;
      sub_26969B0C0(v72, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v46, v162, &qword_2803239E0, &unk_26985D8B0);
      sub_2697208E8(v162, v180, &qword_2803239E0, &unk_26985D8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
      sub_2698526A4();
      v73 = OUTLINED_FUNCTION_51_2();
      sub_26969B0C0(v73, v74, &unk_26985D8B0);
      sub_26969B0C0(v46, &qword_2803239E0, &unk_26985D8B0);
      sub_26969B0C0(v178, &qword_280323030, &qword_26985BAE0);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v182);
      sub_269720B24(v47, v171, &qword_2803239D8, &unk_26985BAD0);
      sub_26969B0C0(v168, &qword_2803239E0, &unk_26985D8B0);
      (*(v174 + 8))(v169, v176);
      v19 = "videoGenericSearchResultList";
      v20 = 0xD00000000000001FLL;
    }

    v78 = v19 | 0x8000000000000000;
    sub_2697208E8(*(v0 + 488), *(v0 + 472), &qword_2803239D8, &unk_26985BAD0);
    v79 = OUTLINED_FUNCTION_27_6();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, v80, v15);
    v82 = OUTLINED_FUNCTION_25_2();
    sub_26969B0C0(v82, v83, &unk_26985BAD0);
    if (EnumTagSinglePayload == 1 && (v84 = *(v0 + 688), sub_269852454(), OUTLINED_FUNCTION_68_1(), , OUTLINED_FUNCTION_62_0(), v85))
    {
      v86 = *(v0 + 688);

      v87 = sub_269852454();
      v89 = v88;
      v78 = 0x800000026987AEA0;
      v20 = 0xD00000000000001DLL;
    }

    else
    {
      v87 = 0;
      v89 = 0;
    }

    v179 = v87;
    v181 = v20;
    *(v0 + 952) = v78;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v90 = *(v0 + 720);
    v91 = *(v0 + 704);
    v92 = *(v0 + 696);
    v93 = __swift_project_value_buffer(v92, qword_28033D910);
    (*(v91 + 16))(v90, v93, v92);

    v94 = v78;
    v95 = sub_2698548B4();
    v96 = sub_269854F14();

    v177 = v94;

    v175 = v89;
    if (os_log_type_enabled(v95, v96))
    {
      v97 = *(v0 + 488);
      v98 = v3;
      v99 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *v99 = 134218754;
      *(v99 + 4) = *(v98 + 16);
      *(v99 + 12) = 2080;
      swift_beginAccess();
      v100 = OUTLINED_FUNCTION_27_6();
      v102 = 0;
      v103 = 0;
      if (!__swift_getEnumTagSinglePayload(v100, v101, v15))
      {
        v104 = *(v0 + 488);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
        sub_269852694();
        v102 = *(v0 + 192);
        v103 = *(v0 + 200);
      }

      v105 = *(v0 + 704);
      v170 = *(v0 + 696);
      v172 = *(v0 + 720);
      swift_endAccess();
      *(v0 + 160) = v102;
      *(v0 + 168) = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v106 = sub_269854AE4();
      v108 = sub_26974F520(v106, v107, &v184);

      *(v99 + 14) = v108;
      *(v99 + 22) = 2080;
      *(v0 + 176) = v179;
      *(v0 + 184) = v89;

      v109 = sub_269854AE4();
      v111 = sub_26974F520(v109, v110, &v184);

      *(v99 + 24) = v111;
      *(v99 + 32) = 2080;
      *(v99 + 34) = sub_26974F520(v181, v177, &v184);

      _os_log_impl(&dword_269684000, v95, v96, "SearchVideoFlow using ResultsListModel with %ld results, person=%s, header=%s, and responseViewID=%s", v99, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v105 + 8))(v172, v170);
    }

    else
    {
      v112 = *(v0 + 720);
      v113 = *(v0 + 704);
      v114 = *(v0 + 696);

      v115 = *(v113 + 8);
      v116 = OUTLINED_FUNCTION_25_2();
      v117(v116);
    }

    v119 = *(v0 + 480);
    v118 = *(v0 + 488);
    v121 = *(v0 + 456);
    v120 = *(v0 + 464);
    v122 = *(v0 + 448);
    v123 = *(v0 + 352);
    v173 = *(v0 + 344);
    OUTLINED_FUNCTION_0_15();
    swift_beginAccess();
    sub_2697208E8(v118, v119, &qword_2803239D8, &unk_26985BAD0);
    v124 = type metadata accessor for VideoDataModels.ResultsListModel(0);
    v125 = *(v124 + 20);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v182);
    sub_2697208E8(v120, v121, &qword_2803239D8, &unk_26985BAD0);
    sub_269852674();
    v129 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v129, v130, &unk_26985BAD0);
    v131 = *(v124 + 24);
    *(v0 + 136) = 0;
    *(v0 + 128) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    *(v0 + 320) = v183;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    v132 = OUTLINED_FUNCTION_44_0();
    sub_2697208E8(v132, v133, &qword_2803239D8, &unk_26985BAD0);
    sub_2697208E8(v120, v121, &qword_2803239D8, &unk_26985BAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    v134 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v134, v135, &unk_26985BAD0);
    *(v0 + 144) = v179;
    *(v0 + 152) = v175;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    v136 = OUTLINED_FUNCTION_49_3();
    sub_26969B0C0(v136, v137, &unk_26985BAD0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 40) = v173;
    OUTLINED_FUNCTION_16_12();
    *(v0 + 48) = sub_2697339D4(v138, v139);
    v140 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_269733A1C(v123, v140);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 960) = v141;
    *v141 = v142;
    OUTLINED_FUNCTION_14_9(v141);
    v143 = *(v0 + 880);
    v144 = *(v0 + 576);
    v145 = *(v0 + 328);
    v146 = *(v0 + 336);
    OUTLINED_FUNCTION_25_4();

    return sub_269730E7C();
  }

  else
  {
    v21 = *(v0 + 912) + 1;
    *(v0 + 920) = v3;
    *(v0 + 912) = v21;
    v22 = *(v0 + 872);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x26D646120]();
    }

    else
    {
      v23 = *(v22 + 8 * v21 + 32);
    }

    *(v0 + 928) = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 936) = v149;
    *v149 = v150;
    OUTLINED_FUNCTION_13_13();
    v151 = *(v0 + 552);
    v152 = *(v0 + 336);
    OUTLINED_FUNCTION_25_4();

    return sub_269732188();
  }
}

uint64_t sub_269730264()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *(v2 + 280) = v4;
  *(v2 + 272) = v0;
  OUTLINED_FUNCTION_66_0();
  v6 = *(v5 + 960);
  v8 = *(v7 + 952);
  v9 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26973036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v64 = *(v42 + 856);
  v43 = *(v42 + 800);
  v44 = *(v42 + 688);
  v45 = *(v42 + 680);
  v46 = *(v42 + 672);
  v47 = *(v42 + 576);
  v48 = *(v42 + 568);
  v49 = *(v42 + 560);
  v50 = *(v42 + 488);
  v51 = *(v42 + 352);

  sub_269733A80(v51);
  (*(v48 + 8))(v47, v49);
  v52 = *(v45 + 8);
  v53 = OUTLINED_FUNCTION_34_0();
  v54(v53);
  sub_26969B0C0(v43, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v64, &qword_280323E08, &unk_26985D090);
  sub_26969B0C0(v50, &qword_2803239D8, &unk_26985BAD0);
  OUTLINED_FUNCTION_0_27();
  LODWORD(v64) = *(v42 + 280);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v64, a39, a40, a41, a42);
}

uint64_t sub_2697305B0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 296) = v3;
  *(v1 + 288) = v0;
  OUTLINED_FUNCTION_66_0();
  v5 = *(v4 + 968);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269730694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v43 = *(v42 + 856);
  sub_26969B0C0(*(v42 + 800), &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v43, &qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_0_27();
  HIDWORD(a38) = *(v42 + 296);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_26973085C()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698538F4();
  v1[16] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[17] = v7;
  v1[18] = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v9 = sub_2698532A4();
  v1[21] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_4_7();
  v1[23] = v13;
  v14 = *(MEMORY[0x277D5BCD0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[24] = v15;
  *v15 = v16;
  v15[1] = sub_2697309CC;

  return MEMORY[0x2821BAED8](v13);
}

uint64_t sub_2697309CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_269730D34;
  }

  else
  {
    v6 = sub_269730AD4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269730AD4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v18 = *(v0 + 152);
  v19 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v20 = *(v0 + 104);
  v7 = v6[17];
  __swift_project_boxed_opaque_existential_1(v6 + 13, v6[16]);
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_26970EF58((v6 + 2), v0 + 56);
  (*(v3 + 16))(v18, v2, v4);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v18, v4);
  v14 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v14);
  v15 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_46_0(v15);
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v21 + 8))(v1, v22);

  OUTLINED_FUNCTION_28_2();

  return v16(2);
}

uint64_t sub_269730DB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269730DD0, 0, 0);
}

uint64_t sub_269730DD0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_2698538F4();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_3_14(v3);
  (*(v5 + 16))();
  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_269730E7C()
{
  OUTLINED_FUNCTION_2_7();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v1[18] = v7;
  v8 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269853634();
  v1[26] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[27] = v12;
  v14 = *(v13 + 64);
  v1[28] = OUTLINED_FUNCTION_4_7();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_269730F4C()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v17 = *(v0 + 176);
  sub_269852E64();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v17;
  sub_2698535C4();

  v7 = v3[10];
  v8 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v9 = OUTLINED_FUNCTION_35_0();
  *(v0 + 232) = v9;
  *(v9 + 16) = xmmword_2698590C0;
  *(v9 + 32) = v5;
  v10 = *(MEMORY[0x277D5BE38] + 4);
  v11 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 240) = v12;
  *v12 = v13;
  v12[1] = sub_2697310BC;
  v14 = *(v0 + 224);
  v15 = *(v0 + 160);

  return MEMORY[0x2821BB468](v0 + 16, v15, v9, v14, v7, v8);
}

uint64_t sub_2697310BC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697311BC()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 144);
  sub_26970EF58(*(v0 + 192) + 16, v0 + 56);
  sub_26970EF58(v0 + 16, v0 + 96);
  v6 = swift_allocObject();
  sub_26968E5D4((v0 + 96), v6 + 16);
  v7 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v7);
  *(v0 + 136) = OUTLINED_FUNCTION_17_9();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_34_0();
  v10(v9);

  OUTLINED_FUNCTION_28_2();

  return v11(0);
}

uint64_t sub_2697312F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;

  sub_2698535E4();
  v9 = sub_269853234();
  (*(*(v9 - 8) + 16))(v8, a4, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  return sub_269853604();
}

uint64_t sub_2697313F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269731410, 0, 0);
}

uint64_t sub_269731410()
{
  OUTLINED_FUNCTION_2_7();
  sub_26970EF58(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26973146C()
{
  OUTLINED_FUNCTION_2_7();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698538F4();
  v1[19] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[20] = v10;
  v1[21] = *(v11 + 64);
  v1[22] = OUTLINED_FUNCTION_37_0();
  v1[23] = swift_task_alloc();
  v12 = sub_269853464();
  v1[24] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[25] = v13;
  v15 = *(v14 + 64);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323498, &qword_26985A8E0);
  OUTLINED_FUNCTION_8_9(v16);
  v18 = *(v17 + 64);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v19 = sub_269853094();
  v1[28] = v19;
  OUTLINED_FUNCTION_8_9(v19);
  v21 = *(v20 + 64);
  v1[29] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698532A4();
  v1[30] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[31] = v23;
  v25 = *(v24 + 64);
  v1[32] = OUTLINED_FUNCTION_4_7();
  v26 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_269731640()
{
  v2 = v0[17];
  v3 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  OUTLINED_FUNCTION_22_3();
  if (sub_269852CF4())
  {
    v4 = v0[14];
    sub_26969329C(0, &qword_280323EB8, 0x277D47B88);
    v5 = sub_2696CDACC(v4);
    v6 = v0[15];
    v7 = OUTLINED_FUNCTION_72(v5);
    sub_269854A94();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A0, &unk_26985D8D0);
    v8 = sub_269853324();
    OUTLINED_FUNCTION_5_12(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_43_0();
    v12 = OUTLINED_FUNCTION_73(v11, xmmword_269857710);
    sub_269854A94();
    v110 = v13;

    v14 = [v6 dialog];
    sub_26969329C(0, &qword_2803233D8, 0x277D052B0);
    OUTLINED_FUNCTION_7_16();
    v15 = sub_269854CB4();

    if (sub_26975004C(v15))
    {
      sub_269750050(0);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D646120](0, v15);
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      v18 = [v17 fullSpeak];

      sub_269854A94();
      OUTLINED_FUNCTION_68_1();
    }

    else
    {

      v15 = 0xE000000000000000;
    }

    v29 = v0[29];
    v30 = v0[15];
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_0_15();
    sub_269853074();
    v31 = [v30 dialog];
    v32 = sub_269854CB4();

    if (sub_26975004C(v32))
    {
      sub_269750050(0);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x26D646120](0, v32);
      }

      else
      {
        v33 = *(v32 + 32);
      }

      v34 = v33;

      v32 = [v34 fullPrint];

      sub_269854A94();
      v36 = v35;
    }

    else
    {

      v36 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_24_4();
    v40 = __swift_storeEnumTagSinglePayload(v37, v38, v39, v15);
    OUTLINED_FUNCTION_36_3(v40, v41, v42, v43, v44, v45, v46, v47, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v102, v103, v104, v105, v106, v108, v110);
    v48 = *MEMORY[0x277D5BF60];
    v49 = v30[13];
    v50 = OUTLINED_FUNCTION_41_2();
    v51(v50);
    OUTLINED_FUNCTION_56_2();
    v52 = *(v32 + 136);
    __swift_project_boxed_opaque_existential_1((v32 + 104), *(v32 + 128));
    OUTLINED_FUNCTION_102();
    sub_269852CA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v53 = OUTLINED_FUNCTION_35_0();
    v54 = OUTLINED_FUNCTION_76_1(v53, xmmword_2698590C0);
    OUTLINED_FUNCTION_4_3(v54);
    v56 = *(v55 + 16);
    v57 = OUTLINED_FUNCTION_41_2();
    v58(v57);
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v54);
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_22_8();

    sub_26969B0C0((v30 + 13), &qword_280323028, qword_26985AD20);
    sub_26969B0C0(v92, &qword_280323010, &unk_26985B640);
    v62 = sub_26970EF58(v32 + 16, (v0 + 7));
    v70 = OUTLINED_FUNCTION_23_10(v62, v63, v64, v65, v66, v67, v68, v69, v84, v86, v88, v90, v92, v94, v96, v98, v100);
    v71(v70);
    v72 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v73 = swift_allocObject();
    v74 = OUTLINED_FUNCTION_29_6(v73);
    v75(v74);
    v76 = sub_269852774();
    OUTLINED_FUNCTION_68_0(v76);
    v77 = OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_46_0(v77);
    sub_269853144();

    v78 = *(v1 + 8);
    v79 = OUTLINED_FUNCTION_49_3();
    v80(v79);
    (*(v107 + 8))(v54, v109);

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_71_1();

    __asm { BRAA            X2, X16 }
  }

  v19 = v0[17];
  sub_26969329C(0, &qword_2803239B0, 0x277D47140);
  v20 = *(v19 + 96);
  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_269731BD8;
  v22 = v0[14];
  OUTLINED_FUNCTION_71_1();

  return sub_2696CCC28(v23, v24, v25, v26);
}

uint64_t sub_269731BD8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_269731CC4()
{
  v2 = *(v0 + 120);
  v3 = OUTLINED_FUNCTION_72(*(v0 + 272));
  sub_269854A94();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A0, &unk_26985D8D0);
  v4 = sub_269853324();
  OUTLINED_FUNCTION_5_12(v4);
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_43_0();
  v8 = OUTLINED_FUNCTION_73(v7, xmmword_269857710);
  sub_269854A94();
  v97 = v9;

  v10 = [v2 dialog];
  sub_26969329C(0, &qword_2803233D8, 0x277D052B0);
  OUTLINED_FUNCTION_7_16();
  v11 = sub_269854CB4();

  if (sub_26975004C(v11))
  {
    sub_269750050(0);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D646120](0, v11);
    }

    else
    {
      v12 = *(v11 + 32);
    }

    v13 = v12;

    v14 = [v13 fullSpeak];

    sub_269854A94();
    OUTLINED_FUNCTION_68_1();
  }

  else
  {

    v11 = 0xE000000000000000;
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 120);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_0_15();
  sub_269853074();
  v17 = [v16 dialog];
  v18 = sub_269854CB4();

  if (sub_26975004C(v18))
  {
    v19 = OUTLINED_FUNCTION_70_0();
    sub_269750050(v19);
    if (v17)
    {
      v20 = MEMORY[0x26D646120](0, v18);
    }

    else
    {
      v20 = *(v18 + 4);
    }

    v21 = v20;

    v18 = [v21 fullPrint];

    sub_269854A94();
    v23 = v22;
  }

  else
  {

    v23 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_24_4();
  v27 = __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  OUTLINED_FUNCTION_36_3(v27, v28, v29, v30, v31, v32, v33, v34, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v89, v90, v91, v92, v93, v95, v97);
  v35 = *MEMORY[0x277D5BF60];
  v36 = v16[13];
  v37 = OUTLINED_FUNCTION_41_2();
  v38(v37);
  OUTLINED_FUNCTION_56_2();
  v39 = *(v18 + 17);
  __swift_project_boxed_opaque_existential_1(v18 + 13, *(v18 + 16));
  OUTLINED_FUNCTION_102();
  sub_269852CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v40 = OUTLINED_FUNCTION_35_0();
  v41 = OUTLINED_FUNCTION_76_1(v40, xmmword_2698590C0);
  OUTLINED_FUNCTION_4_3(v41);
  v43 = *(v42 + 16);
  v44 = OUTLINED_FUNCTION_41_2();
  v45(v44);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_22_8();

  sub_26969B0C0((v16 + 13), &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v79, &qword_280323010, &unk_26985B640);
  v49 = sub_26970EF58(v18 + 16, v0 + 56);
  v57 = OUTLINED_FUNCTION_23_10(v49, v50, v51, v52, v53, v54, v55, v56, v71, v73, v75, v77, v79, v81, v83, v85, v87);
  v58(v57);
  v59 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v60 = swift_allocObject();
  v61 = OUTLINED_FUNCTION_29_6(v60);
  v62(v61);
  v63 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v63);
  v64 = OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_46_0(v64);
  sub_269853144();

  v65 = *(v1 + 8);
  v66 = OUTLINED_FUNCTION_49_3();
  v67(v66);
  (*(v94 + 8))(v41, v96);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_71_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_269732168(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269733B28, 0, 0);
}

uint64_t sub_269732188()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_269851C74();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_4_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_37_0();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = sub_269851DA4();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2697322C0()
{
  v1 = *(v0 + 72);
  v2 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  OUTLINED_FUNCTION_22_3();
  if (sub_269852CF4())
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    sub_26969329C(0, &qword_280323EB8, 0x277D47B88);
    v8 = sub_2696CDACC(v7);
    v9 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v10 = OUTLINED_FUNCTION_35_0();
    *(v10 + 16) = xmmword_2698590C0;
    *(v10 + 32) = v8;
    v11 = v8;
    sub_26976FAD4(v10, v9);
    v12 = v9;
    sub_269851D94();
    v13 = sub_269851D54();
    v15 = v14;
    v16 = *(v4 + 8);
    v17 = OUTLINED_FUNCTION_44_0();
    v18(v17);
    sub_2697336C8(v13, v15, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
    v19 = OUTLINED_FUNCTION_57_1();
    v20 = OUTLINED_FUNCTION_61(v19, xmmword_269857710);
    v21 = MEMORY[0x277D63778];
    v19[3].n128_u64[1] = v20;
    v19[4].n128_u64[0] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19[2]);
    *boxed_opaque_existential_1 = v12;
    *(boxed_opaque_existential_1 + 8) = 1;
    v23 = *MEMORY[0x277D63720];
    OUTLINED_FUNCTION_3_14(v20);
    (*(v24 + 104))();
    v25 = v12;
    sub_269852634();

    v26 = sub_269852624();
    v27 = v6;
  }

  else
  {
    v28 = sub_2696CD564(*(v0 + 64));
    if (v29)
    {
      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v31 = *(v0 + 64);
        v32 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
        sub_26977E46C(v31);
        if (v33)
        {
          v34 = sub_269854A64();
        }

        else
        {
          v34 = 0;
        }

        v67 = *(v0 + 120);
        v68 = *(v0 + 80);
        [v32 setTitle_];

        sub_269851C64();

        if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
        {
          v69 = 0;
        }

        else
        {
          v70 = *(v0 + 120);
          v71 = *(v0 + 80);
          v72 = *(v0 + 88);
          v69 = sub_269851C24();
          v73 = *(v72 + 8);
          v74 = OUTLINED_FUNCTION_34_0();
          v75(v74);
        }

        v76 = *(v0 + 56);
        [v32 setUrlValue_];

        [v32 setSource_];
        [v32 setType_];
        sub_26969329C(0, &qword_2803233A0, 0x277D47200);
        OUTLINED_FUNCTION_94();
        v77 = sub_269854EE4();
        v78 = [objc_allocWithZone(MEMORY[0x277D471F8]) init];
        [v78 setCardSnippet_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
        v79 = OUTLINED_FUNCTION_57_1();
        v80 = OUTLINED_FUNCTION_61(v79, xmmword_269857710);
        v81 = MEMORY[0x277D63778];
        v79[3].n128_u64[1] = v80;
        v79[4].n128_u64[0] = v81;
        v82 = __swift_allocate_boxed_opaque_existential_1(&v79[2]);
        *v82 = v78;
        *(v82 + 8) = 1;
        v83 = *MEMORY[0x277D63720];
        OUTLINED_FUNCTION_3_14(v80);
        (*(v84 + 104))();
        v85 = v78;
        sub_269852634();

        v26 = sub_269852624();
        v27 = v76;
        goto LABEL_24;
      }
    }

    v35 = [*(v0 + 64) detailsUrl];
    if (v35)
    {
      v36 = v35;
      v37 = *(v0 + 104);
      sub_269851C44();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = *(v0 + 112);
    v40 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(*(v0 + 104), v38, 1, v40);
    v41 = OUTLINED_FUNCTION_50_0();
    sub_269733ADC(v41, v42, v43, v44);
    v45 = OUTLINED_FUNCTION_27_6();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v40);
    v48 = *(v0 + 112);
    if (EnumTagSinglePayload)
    {
      v49 = *(v0 + 56);
      sub_26969B0C0(*(v0 + 112), &qword_280323030, &qword_26985BAE0);
      sub_269852624();
      v27 = OUTLINED_FUNCTION_94();
      goto LABEL_25;
    }

    v51 = *(v0 + 88);
    v52 = *(v0 + 72);
    (*(v51 + 16))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
    sub_26969B0C0(v48, &qword_280323030, &qword_26985BAE0);
    sub_269851BF4();
    v53 = *(v51 + 8);
    v54 = OUTLINED_FUNCTION_44_0();
    v55(v54);
    __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider), *(v52 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider + 24));
    sub_2697ADE90(0x6C7070612E6D6F63, 0xEC00000076742E65, v0 + 16);
    v56 = *(v0 + 56);
    if (*(v0 + 40))
    {
      sub_26969B0C0(v0 + 16, &unk_2803263B0, &unk_26985D0B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
      v57 = OUTLINED_FUNCTION_57_1();
      v58 = OUTLINED_FUNCTION_61(v57, xmmword_269857710);
      v59 = MEMORY[0x277D63778];
      v57[3].n128_u64[1] = v58;
      v57[4].n128_u64[0] = v59;
      __swift_allocate_boxed_opaque_existential_1(&v57[2]);
      v60 = OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_33_3(v60, v61);
      v62 = *MEMORY[0x277D63730];
      OUTLINED_FUNCTION_3_14(v58);
      v64 = *(v63 + 104);
      v65 = OUTLINED_FUNCTION_41_2();
      v66(v65);
    }

    else
    {

      sub_26969B0C0(v0 + 16, &unk_2803263B0, &unk_26985D0B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
      v86 = OUTLINED_FUNCTION_57_1();
      *(v86 + 16) = xmmword_269857710;
      sub_269854A04();
      v87 = sub_269852664();
      v88 = MEMORY[0x277D63778];
      *(v86 + 56) = v87;
      *(v86 + 64) = v88;
      __swift_allocate_boxed_opaque_existential_1((v86 + 32));
      sub_269852654();
    }

    sub_269852634();
    v26 = sub_269852624();
    v27 = v56;
  }

LABEL_24:
  v50 = 0;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v27, v50, 1, v26);
  v89 = *(v0 + 144);
  v90 = *(v0 + 112);
  v91 = *(v0 + 120);
  v93 = *(v0 + 96);
  v92 = *(v0 + 104);

  OUTLINED_FUNCTION_7_7();

  return v94();
}

uint64_t sub_269732A38()
{
  OUTLINED_FUNCTION_2_7();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v1[39] = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v7 = *(v6 + 64);
  v1[40] = OUTLINED_FUNCTION_37_0();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1[43] = v8;
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v1[44] = OUTLINED_FUNCTION_37_0();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_269732B24()
{
  OUTLINED_FUNCTION_8_5();
  v1 = [*(v0 + 288) inTheaters];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];

    if (v3)
    {
      v4 = *(*(v0 + 304) + 96);
      sub_269830114();
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  *(v0 + 376) = v1;
  *(v0 + 384) = v5;
  v6 = *(v0 + 304);
  sub_2696F3E90(v6 + 144, v0 + 16);
  v7 = *(v6 + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 392) = v8;
  *v8 = v9;
  v8[1] = sub_269732C48;
  v10 = *(v0 + 288);

  return sub_2696CE508(v0 + 16, v7);
}

uint64_t sub_269732C48()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 392);
  *v3 = *v0;
  *(v2 + 400) = v6;
  *(v2 + 408) = v7;

  sub_26969B0C0(v2 + 16, &qword_280323398, &unk_26985BAF0);
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269732D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v44 = v42[50];
  v43 = v42[51];
  v107 = v42[48];
  v106 = v42[47];
  v45 = v42[45];
  v102 = v42[46];
  v115 = v42[44];
  v105 = v42[42];
  v91 = v42[43];
  v93 = v42[41];
  v114 = v42[40];
  v94 = v42[39];
  v46 = v42[36];
  v47 = v42[35];
  v48 = sub_26977E470(v46);
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v96 = v51;
  v97 = v50;
  v52 = sub_26977E46C(v46);
  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0;
  }

  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  v98 = v55;
  v99 = v54;
  if (v43)
  {
    v56 = v44;
  }

  else
  {
    v56 = 0;
  }

  if (v43)
  {
    v57 = v43;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  v103 = v57;
  v104 = v56;
  v58 = sub_269831FBC(v46);
  v110 = v59;
  v111 = v58;
  v60 = sub_269831FC8(v46);
  v112 = v61;
  v113 = v60;
  sub_2696CEF80();
  sub_269851C64();

  v62 = OUTLINED_FUNCTION_31_3();
  v64 = v63;
  sub_2697208E8(v62, v65, v63, v66);
  v67 = sub_2696CD570(v46);
  v108 = v68;
  v109 = v67;
  v42[8] = 0;
  v42[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v69 = type metadata accessor for VideoDataModels.VideoResult(0);
  v88 = v69[5];
  v42[10] = 0;
  v42[9] = 0;
  OUTLINED_FUNCTION_59_0();
  v89 = v69[6];
  v42[12] = 0;
  v42[11] = 0;
  OUTLINED_FUNCTION_59_0();
  v90 = v69[7];
  v42[14] = 0;
  v42[13] = 0;
  OUTLINED_FUNCTION_59_0();
  v100 = v69[8];
  v42[16] = 0;
  v42[15] = 0;
  OUTLINED_FUNCTION_59_0();
  v101 = v69[9];
  v42[18] = 0;
  v42[17] = 0;
  OUTLINED_FUNCTION_59_0();
  v87 = v69[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  sub_2697208E8(v45, v115, &qword_280323030, &qword_26985BAE0);
  sub_269852674();
  sub_26969B0C0(v45, &qword_280323030, &qword_26985BAE0);
  v92 = v69[11];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  sub_2697208E8(v93, v114, v64, &unk_26985D8B0);
  sub_269852674();
  sub_26969B0C0(v93, v64, &unk_26985D8B0);
  v95 = v69[12];
  v42[20] = 0;
  v42[19] = 0;
  OUTLINED_FUNCTION_59_0();
  v42[21] = v97;
  v42[22] = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v42[23] = v99;
  v42[24] = v98;
  OUTLINED_FUNCTION_90();
  v42[25] = v104;
  v42[26] = v103;
  OUTLINED_FUNCTION_90();
  v42[27] = v106;
  v42[28] = v107;
  OUTLINED_FUNCTION_90();
  sub_2697208E8(v102, v45, &qword_280323030, &qword_26985BAE0);
  sub_2697208E8(v45, v115, &qword_280323030, &qword_26985BAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  sub_26969B0C0(v45, &qword_280323030, &qword_26985BAE0);
  sub_2697208E8(v105, v93, &qword_2803239E0, &unk_26985D8B0);
  sub_2697208E8(v93, v114, &qword_2803239E0, &unk_26985D8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v93, &qword_2803239E0, &unk_26985D8B0);
  v42[29] = v111;
  v42[30] = v110;
  OUTLINED_FUNCTION_90();
  v42[31] = v113;
  v42[32] = v112;
  OUTLINED_FUNCTION_90();
  v42[33] = v109;
  v42[34] = v108;
  OUTLINED_FUNCTION_90();
  sub_26969B0C0(v105, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v102, &qword_280323030, &qword_26985BAE0);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_32_3();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, v45, v87, v88, v89, v90, v92, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, a39, a40, a41, a42);
}

uint64_t *sub_269733248()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  sub_2696D1E70((v0 + 18));
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_input, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider));
  return v0;
}

uint64_t sub_2697332D8()
{
  sub_269733248();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SearchVideoFlow()
{
  result = qword_280323EA0;
  if (!qword_280323EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269733384()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269733484()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708558;

  return sub_26972D390();
}

uint64_t sub_269733520(uint64_t a1)
{
  v2 = *v1;
  sub_26972D0B0(a1);
  return 1;
}

uint64_t sub_26973356C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2696DA938;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269733634()
{
  type metadata accessor for SearchVideoFlow();

  return sub_269852B84();
}

uint64_t sub_269733670(uint64_t a1)
{
  result = sub_2697339D4(&qword_280323EB0, type metadata accessor for SearchVideoFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_2697336C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setAceId_];
}

uint64_t sub_26973372C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_69_1(v4);

  return sub_269732168(v6, v7);
}

uint64_t sub_2697337FC()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DA938;

  return sub_2697313F0(v3, v0 + 16);
}

uint64_t objectdestroyTm()
{
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269733910()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_69_1(v4);

  return sub_269730DB0(v6, v7);
}

uint64_t sub_2697339D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269733A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269733A80(uint64_t a1)
{
  v2 = type metadata accessor for VideoDataModels(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269733ADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_27()
{
  result = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[100];
  v8 = v0[99];
  v9 = v0[98];
  v10 = v0[97];
  v11 = v0[94];
  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[86];
  v20 = v0[83];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[76];
  v24 = v0[75];
  v25 = v0[72];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[66];
  v30 = v0[65];
  v31 = v0[63];
  v32 = v0[61];
  v33 = v0[60];
  v34 = v0[59];
  v35 = v0[58];
  v12 = v0[55];
  *(v1 - 152) = v0[57];
  *(v1 - 144) = v12;
  v13 = v0[51];
  *(v1 - 136) = v0[52];
  *(v1 - 128) = v13;
  v14 = v0[49];
  *(v1 - 120) = v0[50];
  *(v1 - 112) = v14;
  v15 = v0[44];
  *(v1 - 104) = v0[47];
  *(v1 - 96) = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_20()
{
  v10 = v0[32];
  v2 = v0[29];
  v19 = v0[31];
  v20 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[24];
  v16 = v0[22];
  v17 = v0[21];
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[19];
  v8 = v0[17];
  v11 = v0[16];
  v12 = v0[18];
  v18 = v0[13];

  return sub_269853074();
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_2698530A4();
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821C9588](a1, a2, 0, 0xE000000000000000, 0, 0xE000000000000000);
}

double OUTLINED_FUNCTION_35_4()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(v27 - 104) + *(v27 - 112);
  v30 = *(v27 - 120);

  return MEMORY[0x2821BB3F0](v30, a25, v25, v26, 0);
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  *(v1 - 112) = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_269853284();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return sub_269852674();
}

uint64_t OUTLINED_FUNCTION_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_269852664();
}

id OUTLINED_FUNCTION_72(uint64_t a1)
{
  *(v2 - 80) = a1;

  return [v1 catId];
}

id OUTLINED_FUNCTION_73(__n128 *a1, __n128 a2)
{
  *(v4 - 104) = a1;
  a1[1] = a2;

  return [v2 (v3 + 1764)];
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return sub_2697208E8(v1, v0, v3, v2);
}

uint64_t OUTLINED_FUNCTION_76_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v2 - 80);

  return sub_269853234();
}

uint64_t sub_269734044()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender + 24);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender + 32);
  OUTLINED_FUNCTION_27_7((v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender));
  OUTLINED_FUNCTION_1_19();
  sub_269852C64();
  OUTLINED_FUNCTION_14_10();
  sub_269852BC4();
}

uint64_t sub_2697340D4()
{
  v1 = v0[51];
  v2 = v0[52];
  OUTLINED_FUNCTION_27_7(v0 + 48);
  OUTLINED_FUNCTION_1_19();
  sub_269852C64();
  OUTLINED_FUNCTION_14_10();
  sub_269852BC4();
}

uint64_t sub_269734158()
{
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_27_7(v0);
  OUTLINED_FUNCTION_1_19();
  sub_269852C64();
  OUTLINED_FUNCTION_14_10();
  sub_269852BC4();
}

uint64_t sub_2697341DC()
{
  v1 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  sub_269852C74();
  sub_269852C64();
  sub_269852BC4();
}

void *sub_2697342A0()
{
  sub_269853524();
  v0 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v0);
  v1 = sub_269853254();
  v2 = type metadata accessor for BaseDialogProvider();
  v3 = swift_allocObject();
  sub_2698538C4();
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v4 = swift_allocObject();
  sub_26968E5D4(v23, v4 + 16);
  sub_269852BB4();
  v21 = v0;
  v22 = MEMORY[0x277D5BD58];
  *&v20 = v1;
  v19[3] = v2;
  v19[4] = &off_287A3DBA0;
  v19[0] = v3;
  v5 = type metadata accessor for ServerNeedsDisambiguationFlow();
  v6 = OUTLINED_FUNCTION_68_0(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v19, v2);
  v8 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v6[15] = v2;
  v6[16] = &off_287A3DBA0;
  v6[12] = v12;
  sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_26968E5D4(&v25, (v6 + 2));
  sub_26968E5D4(&v20, (v6 + 7));
  sub_26968E5D4(&v24, (v6 + 17));
  v6[22] = v4;
  sub_26968E5D4(v23, (v6 + 23));
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v6;
}

uint64_t sub_26973448C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_2698548D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v15 = __swift_project_value_buffer(v10, qword_28033D910);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2698548B4();
  v17 = sub_269854F14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_269684000, v16, v17, "ServerNeedsDisambiguationFlow.on() called", v18, 2u);
    MEMORY[0x26D647170](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v19 = sub_269853854();
  OUTLINED_FUNCTION_4_3(v19);
  (*(v20 + 16))(v9, a1, v19);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  v21 = OBJC_IVAR____TtC16SiriVideoIntents29ServerNeedsDisambiguationFlow_input;
  swift_beginAccess();
  sub_269702838(v9, v2 + v21);
  swift_endAccess();
  return 1;
}

uint64_t sub_2697346EC()
{
  type metadata accessor for ServerNeedsDisambiguationFlow();
  sub_269738174(&qword_280323EF0, type metadata accessor for ServerNeedsDisambiguationFlow);
  return sub_269852B54();
}

uint64_t sub_26973477C()
{
  OUTLINED_FUNCTION_2_7();
  v1[44] = v2;
  v1[45] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[46] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698532A4();
  v1[47] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[48] = v7;
  v9 = *(v8 + 64);
  v1[49] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698538F4();
  v1[50] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[51] = v11;
  v1[52] = *(v12 + 64);
  v1[53] = OUTLINED_FUNCTION_37_0();
  v1[54] = swift_task_alloc();
  v13 = type metadata accessor for VideoDataModels.VideoResult(0);
  OUTLINED_FUNCTION_5_12(v13);
  v1[55] = v14;
  v16 = *(v15 + 64);
  v1[56] = OUTLINED_FUNCTION_4_7();
  v17 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v17);
  v19 = *(v18 + 64);
  v1[57] = OUTLINED_FUNCTION_4_7();
  v20 = sub_269853634();
  v1[58] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[59] = v21;
  v23 = *(v22 + 64);
  v1[60] = OUTLINED_FUNCTION_4_7();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  v1[61] = v24;
  OUTLINED_FUNCTION_8_9(v24);
  v26 = *(v25 + 64);
  v1[62] = OUTLINED_FUNCTION_37_0();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v27 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v1[65] = v27;
  OUTLINED_FUNCTION_8_9(v27);
  v29 = *(v28 + 64);
  v1[66] = OUTLINED_FUNCTION_4_7();
  v30 = sub_269853234();
  v1[67] = v30;
  OUTLINED_FUNCTION_5_12(v30);
  v1[68] = v31;
  v33 = *(v32 + 64);
  v1[69] = OUTLINED_FUNCTION_4_7();
  v34 = sub_269852084();
  v1[70] = v34;
  OUTLINED_FUNCTION_5_12(v34);
  v1[71] = v35;
  v37 = *(v36 + 64);
  v1[72] = OUTLINED_FUNCTION_37_0();
  v1[73] = swift_task_alloc();
  v38 = sub_269851F04();
  v1[74] = v38;
  OUTLINED_FUNCTION_5_12(v38);
  v1[75] = v39;
  v41 = *(v40 + 64);
  v1[76] = OUTLINED_FUNCTION_37_0();
  v1[77] = swift_task_alloc();
  v42 = sub_2698523C4();
  v1[78] = v42;
  OUTLINED_FUNCTION_5_12(v42);
  v1[79] = v43;
  v45 = *(v44 + 64);
  v1[80] = OUTLINED_FUNCTION_4_7();
  v46 = sub_269852474();
  v1[81] = v46;
  OUTLINED_FUNCTION_5_12(v46);
  v1[82] = v47;
  v49 = *(v48 + 64);
  v1[83] = OUTLINED_FUNCTION_4_7();
  v50 = sub_2698548D4();
  v1[84] = v50;
  OUTLINED_FUNCTION_5_12(v50);
  v1[85] = v51;
  v53 = *(v52 + 64);
  v1[86] = OUTLINED_FUNCTION_37_0();
  v1[87] = swift_task_alloc();
  v54 = sub_269851EF4();
  v1[88] = v54;
  OUTLINED_FUNCTION_5_12(v54);
  v1[89] = v55;
  v57 = *(v56 + 64);
  v1[90] = OUTLINED_FUNCTION_4_7();
  v58 = sub_269853874();
  v1[91] = v58;
  OUTLINED_FUNCTION_5_12(v58);
  v1[92] = v59;
  v61 = *(v60 + 64);
  v1[93] = OUTLINED_FUNCTION_4_7();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v62);
  v64 = *(v63 + 64);
  v1[94] = OUTLINED_FUNCTION_37_0();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v65 = sub_269853854();
  v1[97] = v65;
  OUTLINED_FUNCTION_5_12(v65);
  v1[98] = v66;
  v68 = *(v67 + 64);
  v1[99] = OUTLINED_FUNCTION_4_7();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v69);
  v71 = *(v70 + 64);
  v1[100] = OUTLINED_FUNCTION_4_7();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_8_9(v72);
  v74 = *(v73 + 64);
  v1[101] = OUTLINED_FUNCTION_37_0();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v75 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v75, v76, v77);
}

uint64_t sub_269734D50()
{
  v1 = v0[100];
  v2 = v0[97];
  v3 = v0[45];
  sub_2697341DC();
  v4 = OBJC_IVAR____TtC16SiriVideoIntents29ServerNeedsDisambiguationFlow_input;
  swift_beginAccess();
  sub_2697208E8(v3 + v4, v1, &qword_280323AF8, &unk_26985C1D0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_26969B0C0(v0[100], &qword_280323AF8, &unk_26985C1D0);
    v5 = 1;
  }

  else
  {
    v6 = v0[103];
    v7 = v0[100];
    v8 = v0[99];
    v9 = v0[98];
    v10 = v0[97];
    (*(v9 + 16))(v8, v7, v10);
    sub_26969B0C0(v7, &qword_280323AF8, &unk_26985C1D0);
    sub_269853844();
    (*(v9 + 8))(v8, v10);
    v5 = 0;
  }

  v11 = v0[103];
  v12 = v0[102];
  v13 = sub_2698538B4();
  __swift_storeEnumTagSinglePayload(v11, v5, 1, v13);
  sub_2697208E8(v11, v12, &qword_280323E08, &unk_26985D090);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    goto LABEL_5;
  }

  sub_2697208E8(v0[102], v0[101], &qword_280323E08, &unk_26985D090);
  v32 = *(v13 - 8);
  v33 = v32[11];
  v34 = OUTLINED_FUNCTION_50_0();
  v36 = v35(v34);
  v177 = v0;
  if (v36 == *MEMORY[0x277D5C140])
  {
    v37 = v0[101];
    v38 = v0[96];
    v39 = v0[93];
    v40 = v0[92];
    v41 = v0[91];
    v42 = v0[90];
    v43 = v0[89];
    v44 = v0[88];
    v45 = v32[12];
    v46 = OUTLINED_FUNCTION_50_0();
    v47(v46);
    (*(v40 + 32))(v39, v37, v41);
    sub_269853864();
    sub_2696D3C74();
    (*(v43 + 8))(v42, v44);
    v0 = v177;
    (*(v40 + 8))(v39, v41);
  }

  else
  {
    v48 = v0[101];
    if (v36 != *MEMORY[0x277D5C148])
    {
      v57 = v32[1];
      v58 = OUTLINED_FUNCTION_50_0();
      v59(v58);
LABEL_5:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v14 = v0[87];
      v15 = v0[85];
      __swift_project_value_buffer(v0[84], qword_28033D910);
      v16 = OUTLINED_FUNCTION_2_8();
      v17(v16);
      v18 = sub_2698548B4();
      v19 = sub_269854F14();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v21, v22, "Received unexpected parse. Returning error");
        MEMORY[0x26D647170](v20, -1, -1);
      }

      v23 = v0[87];
      v24 = v0[85];
      v25 = v0[84];

      v26 = *(v24 + 8);
      v27 = OUTLINED_FUNCTION_22_3();
      v28(v27);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[104] = v29;
      *v29 = v30;
      v31 = sub_269735AF0;
LABEL_35:
      v29[1] = v31;
      v108 = v0[44];
      v109 = v0[45];
LABEL_36:
      OUTLINED_FUNCTION_84();

      return sub_2697375DC();
    }

    v49 = v32[12];
    v50 = OUTLINED_FUNCTION_50_0();
    v51(v50);
    v52 = *v48;
    sub_2696D6C54();
    if (v53)
    {
      v54 = v53;
      v55 = v0[95];
      sub_269854544();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v60 = v0[96];
    v61 = v0[95];
    v62 = v0[81];

    __swift_storeEnumTagSinglePayload(v61, v56, 1, v62);
    sub_269733ADC(v61, v60, &qword_280323360, &unk_26985AB80);
  }

  v63 = v0[96];
  v64 = v0[94];
  v65 = v0[81];
  sub_26969B0C0(v0[102], &qword_280323E08, &unk_26985D090);
  sub_2697208E8(v63, v64, &qword_280323360, &unk_26985AB80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v65);
  v67 = v0[94];
  if (EnumTagSinglePayload == 1)
  {
    sub_26969B0C0(v0[94], &qword_280323360, &unk_26985AB80);
LABEL_30:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v92 = v0[86];
    v93 = v0[85];
    __swift_project_value_buffer(v0[84], qword_28033D910);
    v94 = OUTLINED_FUNCTION_2_8();
    v95(v94);
    v96 = sub_2698548B4();
    v97 = sub_269854F14();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v99, v100, "Received unexpected video verb. Returning error");
      MEMORY[0x26D647170](v98, -1, -1);
    }

    v101 = v0[86];
    v102 = v0[85];
    v103 = v0[84];

    v104 = *(v102 + 8);
    v105 = OUTLINED_FUNCTION_22_3();
    v106(v105);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[111] = v29;
    *v29 = v107;
    v31 = sub_2697368F4;
    goto LABEL_35;
  }

  v68 = v0[80];
  v69 = v0[79];
  v70 = v0[78];
  v71 = v0[77];
  v72 = v0[76];
  v73 = v0[75];
  v74 = v0[74];
  (*(v0[82] + 32))(v0[83], v0[94], v0[81]);
  sub_269852424();
  sub_2698523A4();
  (*(v69 + 8))(v68, v70);
  (*(v73 + 104))(v72, *MEMORY[0x277D391F8], v74);
  sub_269738174(&qword_280323EC8, MEMORY[0x277D39210]);
  sub_269854C44();
  sub_269854C44();
  v75 = *(v73 + 8);
  v75(v72, v74);
  v76 = OUTLINED_FUNCTION_22_3();
  (v75)(v76);
  if (v0[39] != v0[40])
  {
    (*(v0[82] + 8))(v0[83], v0[81]);
    goto LABEL_30;
  }

  v77 = v0[83];
  v78 = sub_269852464();
  v79 = MEMORY[0x277D84F90];
  v178 = MEMORY[0x277D84F90];
  v80 = *(v78 + 16);
  if (v80)
  {
    v81 = v177[71];
    type metadata accessor for Content();
    v84 = *(v81 + 16);
    v82 = v81 + 16;
    v83 = v84;
    v85 = v78 + ((*(v82 + 64) + 32) & ~*(v82 + 64));
    v174 = *(v82 + 56);
    v86 = MEMORY[0x277D84F90];
    do
    {
      v87 = v177[73];
      v88 = v177[72];
      v89 = v177[70];
      v83(v87, v85, v89);
      v83(v88, v87, v89);
      v90 = sub_2696CF2E8(v88);
      v91 = (*(v82 - 8))(v87, v89);
      if (v90)
      {
        MEMORY[0x26D645B90](v91);
        if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v86 = v178;
      }

      v85 += v174;
      --v80;
    }

    while (v80);

    v79 = MEMORY[0x277D84F90];
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v112 = v177[69];
  sub_2698359E4();
  v113 = sub_26975004C(v86);
  if (v113 <= 1)
  {
    if (!sub_26975004C(v86))
    {

      v167 = swift_task_alloc();
      v177[110] = v167;
      *v167 = v177;
      v167[1] = sub_26973663C;
      v168 = v177[44];
      v169 = v177[45];
      goto LABEL_36;
    }

    sub_269750050(0);
    if ((v86 & 0xC000000000000001) != 0)
    {
      v125 = MEMORY[0x26D646120](0, v86);
    }

    else
    {
      v125 = *(v86 + 32);
    }

    v177[107] = v125;

    v126 = swift_task_alloc();
    v177[108] = v126;
    *v126 = v177;
    v126[1] = sub_269736108;
    v127 = v177[45];
    OUTLINED_FUNCTION_84();

    return sub_269737388(v128);
  }

  else
  {
    v114 = v113;
    v115 = v177[55];
    sub_26981525C(0, v113, 0);
    v116 = 0;
    v117 = v79;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x26D646120](v116, v86);
      }

      else
      {
        v118 = *(v86 + 8 * v116 + 32);
      }

      v119 = v118;
      v120 = v177[56];
      v121 = v177[45];
      sub_269736C7C(v118);

      v123 = *(v117 + 16);
      v122 = *(v117 + 24);
      if (v123 >= v122 >> 1)
      {
        sub_26981525C(v122 > 1, v123 + 1, 1);
      }

      v124 = v177[56];
      ++v116;
      *(v117 + 16) = v123 + 1;
      sub_2696F3EEC(v124, v117 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v123);
    }

    while (v114 != v116);
    v130 = v177[66];
    v131 = v177[65];
    v132 = v177[63];
    v133 = v177[62];
    v134 = v177[61];
    v172 = v177[60];
    v173 = v177[69];
    v170 = v177[64];
    v171 = v177[57];
    v175 = v177[45];
    v176 = v177[83];

    v135 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v135);
    v139 = *(v131 + 20);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v135);
    OUTLINED_FUNCTION_38_4();
    sub_269852674();
    OUTLINED_FUNCTION_14_10();
    sub_26969B0C0(v143, v144, v145);
    v146 = *(v131 + 24);
    v177[35] = 0;
    v177[36] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    v177[42] = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    sub_2697208E8(v170, v132, &qword_2803239D8, &unk_26985BAD0);
    OUTLINED_FUNCTION_38_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    OUTLINED_FUNCTION_14_10();
    sub_26969B0C0(v147, v148, v149);
    v177[37] = 0;
    v177[38] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    OUTLINED_FUNCTION_14_10();
    sub_26969B0C0(v150, v151, v152);
    sub_269852E64();
    *(swift_task_alloc() + 16) = v173;
    sub_2698535C4();

    v153 = v175[11];
    __swift_project_boxed_opaque_existential_1(v175 + 7, v175[10]);
    v177[20] = type metadata accessor for VideoDataModels(0);
    v177[21] = sub_269738174(&qword_280323A28, type metadata accessor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v177 + 17);
    sub_2697381BC(v130, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v155 = swift_allocObject();
    v177[105] = v155;
    *(v155 + 16) = xmmword_2698590C0;
    sub_2696D4FC8();
    *(v155 + 32) = v156;
    v157 = *(MEMORY[0x277D5BE38] + 4);
    v158 = swift_task_alloc();
    v177[106] = v158;
    *v158 = v177;
    v158[1] = sub_269735D5C;
    v159 = v177[60];
    OUTLINED_FUNCTION_84();

    return MEMORY[0x2821BB468](v160, v161, v162, v163, v164, v165);
  }
}

uint64_t sub_269735AF0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 832);
  *v2 = *v0;
  *(v1 + 896) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269735BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_24_8();
  v33 = *(v32 + 824);
  v34 = *(v32 + 816);
  OUTLINED_FUNCTION_14_10();
  sub_26969B0C0(v35, v36, v37);
  OUTLINED_FUNCTION_14_10();
  sub_26969B0C0(v38, v39, v40);
  OUTLINED_FUNCTION_0_28();
  HIDWORD(a29) = *(v32 + 896);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_25_4();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_269735D5C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *(v4 + 840);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269735E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_24_8();
  v53 = *(v32 + 768);
  v54 = *(v32 + 824);
  v52 = *(v32 + 664);
  v33 = *(v32 + 656);
  v51 = *(v32 + 648);
  v34 = *(v32 + 544);
  v55 = *(v32 + 536);
  v56 = *(v32 + 552);
  v35 = *(v32 + 528);
  v36 = *(v32 + 472);
  v37 = *(v32 + 480);
  v38 = *(v32 + 464);
  v39 = *(v32 + 352);
  sub_2696A73F8(*(v32 + 360) + 16, v32 + 176);
  sub_2696A73F8(v32 + 96, v32 + 216);
  v40 = swift_allocObject();
  sub_26968E5D4((v32 + 216), v40 + 16);
  v41 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v41);
  *(v32 + 344) = sub_269852764();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v32 + 96));
  (*(v36 + 8))(v37, v38);
  sub_2697382B4(v35);
  (*(v33 + 8))(v52, v51);
  sub_26969B0C0(v53, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v54, &qword_280323E08, &unk_26985D090);
  (*(v34 + 8))(v56, v55);
  OUTLINED_FUNCTION_6_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_25_4();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v51, v52, v53, v54, v55, v56, a30, a31, a32);
}

uint64_t sub_269736108()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 864);
  *v2 = *v0;
  *(v1 + 872) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697361F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_24_8();
  v57 = *(v32 + 872);
  v64 = *(v32 + 856);
  v67 = *(v32 + 768);
  v68 = *(v32 + 824);
  v63 = *(v32 + 664);
  v65 = *(v32 + 656);
  v66 = *(v32 + 648);
  v33 = *(v32 + 552);
  v34 = *(v32 + 544);
  v53 = *(v32 + 536);
  v54 = *(v32 + 432);
  v35 = *(v32 + 408);
  v60 = *(v32 + 424);
  v61 = *(v32 + 416);
  v36 = *(v32 + 392);
  v59 = *(v32 + 400);
  v55 = *(v32 + 384);
  v56 = *(v32 + 376);
  v38 = *(v32 + 360);
  v37 = *(v32 + 368);
  v62 = *(v32 + 352);
  sub_2696D53D0();
  v39 = v38[21];
  __swift_project_boxed_opaque_existential_1(v38 + 17, v38[20]);
  LODWORD(a13) = sub_269852CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2698590C0;
  *(v40 + 32) = v57;
  (*(v34 + 16))(v37, v33, v53);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v53);
  *(v32 + 48) = 0;
  *(v32 + 32) = 0u;
  *(v32 + 16) = 0u;
  v58 = v57;
  sub_2698530A4();

  sub_26969B0C0(v32 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v37, &qword_280323010, &unk_26985B640);
  (*(v55 + 8))(v36, v56);
  sub_2696A73F8((v38 + 2), v32 + 56);
  (*(v35 + 16))(v60, v54, v59);
  v41 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v42 = swift_allocObject();
  (*(v35 + 32))(v42 + v41, v60, v59);
  v43 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v43);
  *(v32 + 328) = OUTLINED_FUNCTION_17_9();
  sub_269853144();

  (*(v35 + 8))(v54, v59);
  (*(v65 + 8))(v63, v66);
  sub_26969B0C0(v67, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v68, &qword_280323E08, &unk_26985D090);

  (*(v34 + 8))(v33, v53);
  OUTLINED_FUNCTION_6_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_25_4();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, v32 + 16, a10, a11, a12, a13, v53, v54, v55, v56, v58, v59, v60, v61, v62, v33, v63, v64, v65, v66, v67, v68, a30, a31, a32);
}

uint64_t sub_26973663C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 880);
  *v2 = *v0;
  *(v1 + 897) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269736728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_24_8();
  v33 = *(v32 + 824);
  v34 = *(v32 + 768);
  v35 = *(v32 + 552);
  v36 = *(v32 + 544);
  v37 = *(v32 + 536);
  (*(*(v32 + 656) + 8))(*(v32 + 664), *(v32 + 648));
  sub_26969B0C0(v34, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v33, &qword_280323E08, &unk_26985D090);
  (*(v36 + 8))(v35, v37);
  OUTLINED_FUNCTION_0_28();
  HIDWORD(a29) = *(v32 + 897);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_25_4();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_2697368F4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 888);
  *v2 = *v0;
  *(v1 + 898) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697369E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_24_8();
  v33 = *(v32 + 824);
  sub_26969B0C0(*(v32 + 768), &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v33, &qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_0_28();
  HIDWORD(a29) = *(v32 + 898);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_25_4();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_269736B68(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_2698535E4();
  v7 = sub_269853234();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_269853604();
}

uint64_t sub_269736C5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269738310, 0, 0);
}

uint64_t sub_269736C7C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_3();
  v95 = v8;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v9);
  v93 = v75 - v10;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v11);
  v98 = v75 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v13 = OUTLINED_FUNCTION_4_3(v92);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_3();
  v96 = v16;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v17);
  v94 = v75 - v18;
  OUTLINED_FUNCTION_22_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v75 - v23;
  v97 = sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = sub_269738044(a1);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_269857710;
    v34 = sub_269852664();
    v35 = MEMORY[0x277D63778];
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
    *boxed_opaque_existential_1 = v31;
    boxed_opaque_existential_1[1] = v32;
    *(boxed_opaque_existential_1 + 16) = 0;
    v37 = *MEMORY[0x277D63758];
    (*(*(v34 - 8) + 104))();
    sub_269852634();
    sub_26969B0C0(v24, &qword_2803239E0, &unk_26985D8B0);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v97);
    sub_269733ADC(v22, v24, &qword_2803239E0, &unk_26985D8B0);
  }

  v38 = [a1 inTheaters];
  if (v38 && (v39 = v38, v40 = [v38 BOOLValue], v39, v40))
  {
    v41 = *(v2 + 176);
    sub_269830114();
    v85 = v43;
    v86 = v42;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  v44 = sub_26977E470(a1);
  if (v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  v78 = v46;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  v77 = v47;
  v48 = sub_26977E46C(a1);
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v83 = v51;
  v84 = v50;
  v52 = *(v2 + 176);
  v53 = sub_269830930(a1);
  if (v54)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0;
  }

  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  v81 = v56;
  v82 = v55;
  v57 = sub_269831FBC(a1);
  v88 = v58;
  v89 = v57;
  v59 = sub_269831FC8(a1);
  v90 = v60;
  v91 = v59;
  sub_2696CEF80();
  sub_269851C64();

  sub_2697208E8(v24, v22, &qword_2803239E0, &unk_26985D8B0);
  v99 = 0;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v61 = type metadata accessor for VideoDataModels.VideoResult(0);
  v75[5] = v61[5];
  OUTLINED_FUNCTION_7_22();
  v87 = v24;
  v75[4] = v61[6];
  OUTLINED_FUNCTION_7_22();
  v76 = v22;
  v75[3] = v61[7];
  OUTLINED_FUNCTION_7_22();
  v80 = v61[8];
  OUTLINED_FUNCTION_7_22();
  v79 = v61[9];
  OUTLINED_FUNCTION_7_22();
  v75[1] = v61[10];
  sub_269851C74();
  v62 = v93;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  v67 = v95;
  sub_2697208E8(v62, v95, &qword_280323030, &qword_26985BAE0);
  sub_269852674();
  sub_26969B0C0(v62, &qword_280323030, &qword_26985BAE0);
  v75[2] = v61[11];
  v68 = v94;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v97);
  v72 = v96;
  sub_2697208E8(v68, v96, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  sub_26969B0C0(v68, &qword_2803239E0, &unk_26985D8B0);
  v97 = v61[12];
  OUTLINED_FUNCTION_7_22();
  v99 = v78;
  v100 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v83);
  OUTLINED_FUNCTION_21_9(&v105);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v81);
  OUTLINED_FUNCTION_21_9(&v104);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v85);
  OUTLINED_FUNCTION_21_9(&v103);
  sub_2698526A4();
  sub_2697208E8(v98, v62, &qword_280323030, &qword_26985BAE0);
  sub_2697208E8(v62, v67, &qword_280323030, &qword_26985BAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_21_9(&v101);
  sub_2698526A4();
  sub_26969B0C0(v62, &qword_280323030, &qword_26985BAE0);
  v73 = v76;
  sub_2697208E8(v76, v68, &qword_2803239E0, &unk_26985D8B0);
  sub_2697208E8(v68, v72, &qword_2803239E0, &unk_26985D8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_21_9(&v102);
  sub_2698526A4();
  sub_26969B0C0(v68, &qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_23_11(v88);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v90);
  OUTLINED_FUNCTION_21_9(&v106);
  sub_2698526A4();
  v99 = 0;
  v100 = 0;
  sub_2698526A4();
  sub_26969B0C0(v73, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v98, &qword_280323030, &qword_26985BAE0);
  return sub_26969B0C0(v87, &qword_2803239E0, &unk_26985D8B0);
}

uint64_t sub_269737388(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2697373B0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[3];
  v2 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  OUTLINED_FUNCTION_22_3();
  if (sub_269852CF4())
  {
    v3 = v0[2];
    sub_26969329C(0, &qword_280323EB8, 0x277D47B88);
    sub_2696CDACC(v3);
    OUTLINED_FUNCTION_28_2();

    return v4();
  }

  else
  {
    v6 = v0[3];
    sub_26969329C(0, &qword_2803239B0, 0x277D47140);
    v7 = *(v6 + 176);
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_2697374F4;
    v9 = v0[2];

    return sub_2696CCC28(v9, v7, v6 + 96, (v1 + 17));
  }
}

uint64_t sub_2697374F4()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  OUTLINED_FUNCTION_28_2();

  return v7(v2);
}

uint64_t sub_2697375DC()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698538F4();
  v1[16] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[17] = v7;
  v1[18] = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v9 = sub_2698532A4();
  v1[21] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_4_7();
  v1[23] = v13;
  v14 = *(MEMORY[0x277D5BCD0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[24] = v15;
  *v15 = v16;
  v15[1] = sub_26973774C;

  return MEMORY[0x2821BAED8](v13);
}

uint64_t sub_26973774C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_269737ABC;
  }

  else
  {
    v6 = sub_269737854;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269737854()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);
  v17 = *(v0 + 152);
  v18 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v19 = *(v0 + 104);
  v7 = v6[21];
  __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]);
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_2696A73F8((v6 + 2), v0 + 56);
  (*(v3 + 16))(v17, v2, v4);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v17, v4);
  v14 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v14);
  *(v0 + 96) = OUTLINED_FUNCTION_17_9();
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v20 + 8))(v1, v21);

  OUTLINED_FUNCTION_28_2();

  return v15(2);
}

uint64_t *sub_269737B38()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_2696D1E70((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ServerNeedsDisambiguationFlow_input, &qword_280323AF8, &unk_26985C1D0);
  return v0;
}

uint64_t sub_269737BA0()
{
  sub_269737B38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ServerNeedsDisambiguationFlow()
{
  result = qword_280323EE0;
  if (!qword_280323EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269737C4C()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269737D3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708558;

  return sub_26973477C();
}

uint64_t sub_269737DD8(uint64_t a1)
{
  v2 = *v1;
  sub_26973448C(a1);
  return 1;
}

uint64_t sub_269737E24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2696DA938;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269737EEC()
{
  type metadata accessor for ServerNeedsDisambiguationFlow();

  return sub_269852B84();
}

uint64_t sub_269737F28(uint64_t a1)
{
  result = sub_269738174(&qword_280323EF0, type metadata accessor for ServerNeedsDisambiguationFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269737F80()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_69_1(v4);

  return sub_26971C528(v6, v7);
}

uint64_t sub_269738044(void *a1)
{
  v1 = [a1 machineGeneratedUtterance];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_2697380A8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_69_1(v4);

  return sub_269736C5C(v6, v7);
}

uint64_t sub_269738174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2697381BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269738220()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DAF80;

  return sub_26971EDC4(v3, v0 + 16);
}

uint64_t sub_2697382B4(uint64_t a1)
{
  v2 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_28()
{
  result = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[90];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[83];
  v17 = v0[80];
  v18 = v0[77];
  v19 = v0[76];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[69];
  v23 = v0[66];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[60];
  v28 = v0[57];
  v29 = v0[56];
  v12 = v0[53];
  *(v1 - 112) = v0[54];
  *(v1 - 104) = v12;
  v13 = v0[46];
  *(v1 - 96) = v0[49];
  *(v1 - 88) = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_21()
{
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[94];
  v11 = v0[93];
  v12 = v0[90];
  v17 = v0[87];
  v18 = v0[86];
  v19 = v0[83];
  v20 = v0[80];
  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[73];
  v24 = v0[72];
  v25 = v0[69];
  v26 = v0[66];
  v27 = v0[64];
  v28 = v0[63];
  v29 = v0[62];
  v30 = v0[60];
  v31 = v0[57];
  v14 = v0[53];
  v13 = v0[54];
  *(v1 - 112) = v0[56];
  *(v1 - 104) = v13;
  v15 = v0[49];
  *(v1 - 96) = v14;
  *(v1 - 88) = v15;
  *(v1 - 80) = v0[46];
}

uint64_t OUTLINED_FUNCTION_7_22()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;

  return sub_269852674();
}

uint64_t OUTLINED_FUNCTION_23_11@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_27_7(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_269852C74();
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return sub_2697208E8(v2, v3, v0, v1);
}

uint64_t sub_269738544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a2;
  v8 = *(a3 + 32);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_269738678;

  return v12(a1, a2, a3);
}

uint64_t sub_269738678(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_269738778, 0, 0);
}

uint64_t sub_269738778()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  (*(v1 + 24))(v2, v1);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_26973885C(v3, v2, v1);
  sub_269852BC4();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26973885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269852C74();
  (*(a3 + 16))(a2, a3);
  return sub_269852C64();
}

void *sub_26973895C()
{
  sub_269852C84();
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_269853254();
  sub_269853524();
  sub_269852BB4();
  v19[3] = v0;
  v19[4] = &off_287A3DBA0;
  v19[0] = v1;
  v17 = v2;
  v18 = MEMORY[0x277D5BD58];
  *&v16 = v5;
  type metadata accessor for TvAppNotInstalledFlow();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v0);
  OUTLINED_FUNCTION_3_20();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  v14 = *v12;
  v6[10] = v0;
  v6[11] = &off_287A3DBA0;
  v6[7] = v14;
  sub_26968E5D4(&v22, (v6 + 2));
  sub_26968E5D4(&v16, (v6 + 12));
  sub_26968E5D4(&v21, (v6 + 17));
  sub_26968E5D4(&v20, (v6 + 22));
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v6;
}

uint64_t sub_269738AE8(uint64_t a1)
{
  v56 = a1;
  sub_2698538B4();
  OUTLINED_FUNCTION_3_20();
  v57 = v2;
  v58 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_2698538A4();
  OUTLINED_FUNCTION_3_20();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v53 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v52 = &v51 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v51 - v27;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v29 = __swift_project_value_buffer(v17, qword_28033D910);
  v30 = *(v19 + 16);
  v54 = v29;
  v55 = v30;
  (v30)(v28);
  v31 = sub_2698548B4();
  v32 = sub_269854F14();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_16_2();
    v51 = v16;
    *v33 = 0;
    _os_log_impl(&dword_269684000, v31, v32, "TvAppNotInstalledFlow on called", v33, 2u);
    v16 = v51;
    OUTLINED_FUNCTION_10();
  }

  v34 = *(v19 + 8);
  v34(v28, v17);
  sub_269853844();
  v36 = v57;
  v35 = v58;
  if ((*(v57 + 88))(v7, v58) != *MEMORY[0x277D5C150])
  {
    (*(v36 + 8))(v7, v35);
    goto LABEL_13;
  }

  (*(v36 + 96))(v7, v35);
  (*(v10 + 32))(v16, v7, v8);
  if (sub_269853884() == 0xD00000000000001CLL && 0x800000026987A100 == v37)
  {

    v40 = v52;
  }

  else
  {
    v39 = sub_269855584();

    v40 = v52;
    if ((v39 & 1) == 0)
    {
      (*(v10 + 8))(v16, v8);
LABEL_13:
      v41 = v53;
      v55(v53, v54, v17);
      v42 = sub_2698548B4();
      v43 = sub_269854F14();
      if (os_log_type_enabled(v42, v43))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_26_8(&dword_269684000, v44, v45, "TvAppNotInstalledFlow on, will not handle");
        OUTLINED_FUNCTION_10();
      }

      v34(v41, v17);
      return 0;
    }
  }

  v55(v40, v54, v17);
  v47 = sub_2698548B4();
  v48 = sub_269854F14();
  if (os_log_type_enabled(v47, v48))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_26_8(&dword_269684000, v49, v50, "TvAppNotInstalledFlow on, will handle");
    OUTLINED_FUNCTION_10();
  }

  v34(v40, v17);
  (*(v10 + 8))(v16, v8);
  return 1;
}

uint64_t sub_269739008()
{
  type metadata accessor for TvAppNotInstalledFlow();
  sub_269739BA0();
  return sub_269852B54();
}

uint64_t sub_269739064()
{
  OUTLINED_FUNCTION_2_7();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_2698548D4();
  v1[25] = v3;
  v4 = *(v3 - 8);
  v1[26] = v4;
  v5 = *(v4 + 64) + 15;
  v1[27] = swift_task_alloc();
  v6 = *(*(sub_269852EB4() - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v7 = sub_269853634();
  v1[29] = v7;
  v8 = *(v7 - 8);
  v1[30] = v8;
  v9 = *(v8 + 64) + 15;
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697391A8, 0, 0);
}

uint64_t sub_2697391A8()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 192);
  sub_2696A73F8(v1 + 96, v0 + 56);
  v2 = *(v0 + 80);
  *(v0 + 256) = v2;
  *(v0 + 272) = __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v3 = swift_allocObject();
  *(v0 + 280) = v3;
  *(v3 + 16) = xmmword_2698590C0;
  v4 = *__swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_2697392D0;

  return sub_26977F2C4(0x654E236F65646956, 0xEF70704156546465);
}

uint64_t sub_2697392D0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *(v4 + 288);
  v7 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 296) = v1;

  if (v1)
  {
    v9 = sub_269739768;
  }

  else
  {
    *(v5 + 304) = a1;
    v9 = sub_2697393EC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2697393EC()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[31];
  v2 = v0[28];
  *(v0[35] + 32) = v0[38];
  sub_269852E64();
  sub_2698535C4();
  v3 = *(MEMORY[0x277D5BE58] + 4);
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_2697394CC;
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];

  return MEMORY[0x2821BB488](v0 + 2, v5, v9, v7, v8);
}

uint64_t sub_2697394CC()
{
  OUTLINED_FUNCTION_14_6();
  v2 = v1[39];
  v3 = v1[35];
  v4 = v1[31];
  v5 = v1[30];
  v6 = v1[29];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_269739634, 0, 0);
}

uint64_t sub_269739634()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2696A73F8(v2 + 136, v0 + 96);
  sub_2696A73F8(v0 + 16, v0 + 136);
  v3 = swift_allocObject();
  sub_26968E5D4((v0 + 136), v3 + 16);
  v4 = sub_269852774();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_269852764();
  sub_269853144();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);

  OUTLINED_FUNCTION_28_2();

  return v10(0);
}

uint64_t sub_269739768()
{
  *(v0[35] + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "Received failure result from DialogEngine", v7, 2u);
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[37];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v12 = v0[23];

  (*(v10 + 8))(v9, v11);
  sub_269853164();

  v13 = v0[31];
  v14 = v0[27];
  v15 = v0[28];

  OUTLINED_FUNCTION_28_2();

  return v16(2);
}

uint64_t *sub_2697398E8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  return v0;
}

uint64_t sub_269739928()
{
  sub_2697398E8();

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

uint64_t sub_26973999C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708558;

  return sub_269739064();
}

uint64_t sub_269739A78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269739B40()
{
  type metadata accessor for TvAppNotInstalledFlow();

  return sub_269852B84();
}

unint64_t sub_269739B78(uint64_t a1)
{
  result = sub_269739BA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269739BA0()
{
  result = qword_280323EF8;
  if (!qword_280323EF8)
  {
    type metadata accessor for TvAppNotInstalledFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323EF8);
  }

  return result;
}

uint64_t sub_269739BF4()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269708804;

  return sub_269723380(v3, v0 + 16);
}

void sub_269739CC4()
{
  v0 = [objc_allocWithZone(type metadata accessor for WatchSportsEventIntent()) init];
  sub_2696D3780();
  v1 = [v0 typeName];
  v2 = sub_269854A94();
  v4 = v3;

  qword_28033D6C8 = v2;
  unk_28033D6D0 = v4;
}

uint64_t sub_269739D44(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    default:
      if (a2 - 3 < 6)
      {
        return 0;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          if (a2 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a2 != 2)
          {
            return 0;
          }
        }

        else if (a2 < 3 || (sub_26973CD58(a1, a2) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a2;
  }
}

void sub_269739E38()
{
  OUTLINED_FUNCTION_19_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v1 = OUTLINED_FUNCTION_8_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - v4;
  v39 = &v36 - v4;
  v38 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v38);
  sub_2698538C4();
  sub_269853524();
  v6 = type metadata accessor for BaseDialogProvider();
  v7 = swift_allocObject();
  v8 = sub_2698546A4();
  v9 = sub_269854684();
  v37 = v9;
  v10 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v11 = sub_2696C7734();
  v12 = sub_269854694();
  sub_269852C84();
  v13 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v13);
  v14 = sub_269853254();
  sub_269852BB4();
  v57[3] = v6;
  v57[4] = &off_287A3DBA0;
  v57[0] = v7;
  v53[4] = MEMORY[0x277D61F10];
  v55 = &type metadata for VideoFlowFactoryImpl;
  v56 = &off_287A40968;
  v53[3] = v8;
  v53[0] = v9;
  v51 = v10;
  v52 = &off_287A3E7C8;
  v50[0] = v11;
  v49[3] = sub_269854674();
  v49[4] = MEMORY[0x277D61F08];
  v49[0] = v12;
  v47 = &type metadata for FeatureFlagServiceImpl;
  v48 = &off_287A41BD8;
  v44 = v13;
  v45 = MEMORY[0x277D5BD58];
  *&v43 = v14;
  v15 = type metadata accessor for WatchSportsEventWrapperFlow();
  v16 = OUTLINED_FUNCTION_68_0(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v57, v6);
  OUTLINED_FUNCTION_3_20();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v21 = OUTLINED_FUNCTION_12_16(v20);
  v22(v21);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  OUTLINED_FUNCTION_3_20();
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v30 = *v7;
  v31 = *v28;
  v42[3] = v6;
  v42[4] = &off_287A3DBA0;
  v42[0] = v30;
  v41[3] = &type metadata for VideoFlowFactoryImpl;
  v41[4] = &off_287A40968;
  v40[3] = v10;
  v40[4] = &off_287A3E7C8;
  v40[0] = v31;
  v16[55] = &type metadata for FeatureFlagServiceImpl;
  v16[56] = &off_287A41BD8;
  v32 = OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(v16 + OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_input, 1, 1, v38);
  *(v16 + OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v33 = v37;

  v34 = v16 + v32;
  v35 = v39;
  sub_269728E28(v39, v34);
  swift_endAccess();
  sub_2696A73F8(v61, (v16 + 2));
  sub_2696A73F8(v60, (v16 + 7));
  sub_2696A73F8(v42, (v16 + 12));
  sub_2696A73F8(v42, (v16 + 17));
  sub_2696A73F8(v41, (v16 + 22));
  sub_2696A73F8(v53, (v16 + 27));
  sub_2696A73F8(v40, (v16 + 32));
  v16[67] = 3;
  sub_2696A73F8(v49, (v16 + 37));
  sub_2696A73F8(v59, (v16 + 42));
  v16[50] = &type metadata for CoreAnalyticsService;
  v16[51] = &xmmword_287A41610;

  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v61);
  sub_269698048(v35, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  sub_26968E5D4(&v43, (v16 + 57));
  sub_26968E5D4(&v58, (v16 + 62));
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  OUTLINED_FUNCTION_21_0();
}

BOOL sub_26973A330()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = *(v0 + 536);
  if (v7 == 3)
  {
    v8 = sub_269853854();
    v9 = *(*(v8 - 8) + 16);
    v10 = OUTLINED_FUNCTION_22_3();
    v11(v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v12 = OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v6, v0 + v12);
    swift_endAccess();
    v13 = *(v0 + 536);
    *(v0 + 536) = 4;
    sub_269728BA0(v13);
  }

  return v7 == 3;
}

uint64_t sub_26973A454()
{
  type metadata accessor for WatchSportsEventWrapperFlow();
  sub_26973ECF4(&qword_280323F20, type metadata accessor for WatchSportsEventWrapperFlow);
  return sub_269852B54();
}

uint64_t sub_26973A4E4()
{
  OUTLINED_FUNCTION_2_7();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_2698548D4();
  v1[28] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[29] = v4;
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v7 = sub_2698538B4();
  v1[37] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[38] = v8;
  v10 = *(v9 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64) + 15;
  v1[41] = swift_task_alloc();
  v14 = sub_269853854();
  v1[42] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[43] = v15;
  v17 = *(v16 + 64) + 15;
  v1[44] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_26973A6C0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 216);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_269698048(*(v0 + 328), &qword_280323AF8, &unk_26985C1D0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v6 = (v0 + 240);
    v5 = *(v0 + 240);
    v7 = *(v0 + 232);
    __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
    v8 = OUTLINED_FUNCTION_2_8();
    v9(v8);
    v10 = sub_2698548B4();
    v11 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v11))
    {
      v12 = "WatchSportsEventWrapperFlow.execute() Input is nil. Error executing request";
LABEL_6:
      v13 = *v6;
      v14 = OUTLINED_FUNCTION_16_2();
      *v14 = 0;
      _os_log_impl(&dword_269684000, v10, v7, v12, v14, 2u);
      OUTLINED_FUNCTION_10();
    }

    else
    {
      v13 = *v6;
    }
  }

  else
  {
    v15 = *(v0 + 216);
    v16 = (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 328), *(v0 + 336));
    v17 = *(v15 + 536);
    switch(v17)
    {
      case 3uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v6 = (v0 + 256);
        v18 = *(v0 + 256);
        v7 = *(v0 + 232);
        __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
        v19 = OUTLINED_FUNCTION_2_8();
        v20(v19);
        v10 = sub_2698548B4();
        v21 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v21))
        {
          v12 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
          goto LABEL_6;
        }

        v13 = *v6;
        break;
      case 4uLL:
        v34 = *(v0 + 216);
        v112 = v34[66];
        __swift_project_boxed_opaque_existential_1(v34 + 62, v34[65]);
        sub_269852C74();
        if (qword_280322478 != -1)
        {
          swift_once();
        }

        v35 = *(v0 + 352);
        v36 = *(v0 + 320);
        v38 = *(v0 + 296);
        v37 = *(v0 + 304);

        sub_269852C64();
        sub_269852BC4();

        sub_269853844();
        v39 = (*(v37 + 88))(v36, v38);
        if (v39 == *MEMORY[0x277D5C140] || v39 == *MEMORY[0x277D5C148])
        {
          v41 = *(*(v0 + 304) + 8);
          (v41)(*(v0 + 320), *(v0 + 296));
          *(v0 + 160) = &type metadata for SiriVideoFeatureKeys;
          *(v0 + 168) = sub_2696A2978();
          *(v0 + 136) = 1;
          v42 = sub_269853B34();
          __swift_destroy_boxed_opaque_existential_0((v0 + 136));
          if (v42)
          {
            v43 = *(v0 + 352);
            v44 = *(v0 + 312);
            v45 = *(v0 + 296);
            v46 = *(v0 + 216);
            sub_269853844();
            LOBYTE(v43) = sub_269793450(v44, (v46 + 16));
            v47 = OUTLINED_FUNCTION_22_3();
            v41(v47);
            if (v43)
            {
              v49 = *(v0 + 344);
              v48 = *(v0 + 352);
              v50 = *(v0 + 336);
              v51 = *(v0 + 208);
              v52 = *(v0 + 216);
              sub_26973B8EC();
              v53 = *(v49 + 8);
              v54 = OUTLINED_FUNCTION_22_3();
              v55(v54);
LABEL_42:
              OUTLINED_FUNCTION_16_11();

              OUTLINED_FUNCTION_7_7();
              OUTLINED_FUNCTION_7_8();

              __asm { BRAA            X1, X16 }
            }
          }

          v32 = swift_task_alloc();
          *(v0 + 360) = v32;
          *v32 = v0;
          v33 = sub_2697264C8;
LABEL_52:
          v32[1] = v33;
          v107 = *(v0 + 352);
          v108 = *(v0 + 208);
          v109 = *(v0 + 216);
          OUTLINED_FUNCTION_7_8();

          sub_26973B130();
          return;
        }

        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v6 = (v0 + 288);
        v103 = *(v0 + 288);
        v7 = *(v0 + 232);
        __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
        v104 = OUTLINED_FUNCTION_2_8();
        v105(v104);
        v10 = sub_2698548B4();
        v106 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v106))
        {
          v12 = "Unexpected parse type in input";
          goto LABEL_6;
        }

        v13 = *v6;
        break;
      case 5uLL:
        if (qword_2803226E0 != -1)
        {
          v16 = OUTLINED_FUNCTION_0_10();
        }

        v6 = (v0 + 248);
        v29 = *(v0 + 248);
        v7 = *(v0 + 224);
        v30 = *(v0 + 232);
        OUTLINED_FUNCTION_31_5(v16, qword_28033D910);
        (*(v30 + 16))(v29);
        v10 = sub_2698548B4();
        v31 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v31))
        {
          v12 = "Unexpected state in execute()";
          goto LABEL_6;
        }

        v13 = *v6;
        break;
      case 6uLL:
        v32 = swift_task_alloc();
        *(v0 + 368) = v32;
        *v32 = v0;
        v33 = sub_269726694;
        goto LABEL_52;
      case 7uLL:
        v26 = *(v0 + 344);
        v25 = *(v0 + 352);
        v27 = *(v0 + 336);
        v28 = *(v0 + 208);
        sub_269853164();
        (*(v26 + 8))(v25, v27);
        goto LABEL_42;
      case 8uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v56 = *(v0 + 264);
        v57 = *(v0 + 232);
        __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
        v58 = OUTLINED_FUNCTION_2_8();
        v59(v58);
        v60 = sub_2698548B4();
        v61 = sub_269854F24();
        if (OUTLINED_FUNCTION_19_4(v61))
        {
          *OUTLINED_FUNCTION_16_2() = 0;
          OUTLINED_FUNCTION_18_8();
          _os_log_impl(v62, v63, v64, v65, v66, 2u);
          OUTLINED_FUNCTION_10();
        }

        v68 = *(v0 + 344);
        v67 = *(v0 + 352);
        v69 = *(v0 + 336);
        v70 = *(v0 + 264);
        v71 = *(v0 + 224);
        v72 = *(v0 + 232);
        v73 = *(v0 + 208);
        v74 = *(v0 + 216);

        (*(v72 + 8))(v70, v71);
        sub_26979609C(v74 + 56, v74 + 136, v74 + 16);
        sub_269728BA0(8uLL);
        v75 = *(v68 + 8);
        v76 = OUTLINED_FUNCTION_22_3();
        v77(v76);
        goto LABEL_42;
      default:
        sub_2697017E4(*(v15 + 536));
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v78 = *(v0 + 280);
        v79 = *(v0 + 224);
        v80 = *(v0 + 232);
        v81 = __swift_project_value_buffer(v79, qword_28033D910);
        v113 = *(v80 + 16);
        v113(v78, v81, v79);
        v82 = sub_2698548B4();
        v83 = sub_269854F04();
        if (OUTLINED_FUNCTION_19_4(v83))
        {
          v84 = OUTLINED_FUNCTION_16_2();
          *v84 = 0;
          _os_log_impl(&dword_269684000, v82, v83, "WatchSportsEventWrapperFlow.execute() in .unableToSelectExecutionDevice state", v84, 2u);
          OUTLINED_FUNCTION_10();
        }

        v86 = *(v0 + 272);
        v85 = *(v0 + 280);
        v87 = *(v0 + 224);
        v88 = *(v0 + 232);
        v89 = *(v0 + 216);

        v111 = *(v88 + 8);
        v111(v85, v87);
        v113(v86, v81, v87);
        v90 = sub_2698548B4();
        v91 = sub_269854F14();
        if (OUTLINED_FUNCTION_39_1(v91))
        {
          v92 = OUTLINED_FUNCTION_16_2();
          *v92 = 0;
          _os_log_impl(&dword_269684000, v90, v81, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v92, 2u);
          OUTLINED_FUNCTION_10();
        }

        v93 = *(v0 + 344);
        v114 = *(v0 + 352);
        v94 = *(v0 + 336);
        v95 = *(v0 + 272);
        v97 = *(v0 + 224);
        v96 = *(v0 + 232);
        v98 = *(v0 + 208);

        v111(v95, v97);
        sub_2696A73F8(v89 + 56, v0 + 16);
        sub_2696F3E90(v89 + 136, v0 + 56);
        sub_2696A73F8(v89 + 456, v0 + 96);
        v99 = swift_allocObject();
        *(v99 + 16) = v17;
        *(v99 + 24) = *(v0 + 56);
        *(v99 + 40) = *(v0 + 72);
        *(v99 + 56) = *(v0 + 88);
        sub_26968E5D4((v0 + 96), v99 + 64);
        v100 = sub_269852774();
        OUTLINED_FUNCTION_68_0(v100);
        sub_269728D1C(v17);
        *(v0 + 200) = sub_269852764();
        sub_269853144();
        sub_269728BA0(v17);
        (*(v93 + 8))(v114, v94);

        goto LABEL_42;
    }
  }

  v24 = v0 + 224;
  v23 = *(v0 + 224);
  v22 = *(v24 + 8);

  (*(v22 + 8))(v13, v23);
  sub_269855354();
  OUTLINED_FUNCTION_7_8();
}

uint64_t sub_26973B130()
{
  OUTLINED_FUNCTION_2_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_2698538B4();
  v1[20] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[21] = v5;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = sub_2698548D4();
  v1[23] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[24] = v9;
  v11 = *(v10 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26973B240()
{
  v41 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = __swift_project_value_buffer(v2, qword_28033D910);
  *(v0 + 216) = v5;
  v6 = *(v3 + 16);
  *(v0 + 224) = v6;
  *(v0 + 232) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_2698548B4();
  LOBYTE(v2) = sub_269854F04();

  if (os_log_type_enabled(v7, v2))
  {
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315138;
    v11 = *(v8 + OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_executionDevice);
    if (v11)
    {
      v12 = [v11 description];
      v13 = sub_269854A94();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v21 = *(v0 + 208);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = sub_26974F520(v13, v15, &v40);

    *(v9 + 4) = v24;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v19 = *(v23 + 8);
    v19(v21, v22);
  }

  else
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);

    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_22_3();
    (v19)(v20);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 144);
  v32 = *(v0 + 152);
  v33 = OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_executionDevice;
  *(v0 + 240) = v19;
  *(v0 + 248) = v33;
  v34 = *(v32 + v33);
  sub_2696A73F8(v32 + 296, v0 + 16);
  sub_2696A73F8(v32 + 336, v0 + 56);
  *(v0 + 120) = &type metadata for AccountProvider;
  *(v0 + 128) = &off_287A41348;
  type metadata accessor for WatchSportsEventFlowStrategy();
  v35 = swift_allocObject();
  *(v0 + 256) = v35;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, &type metadata for AccountProvider);
  v35[16] = &type metadata for AccountProvider;
  v35[17] = &off_287A41348;
  v35[2] = v34;
  sub_26968E5D4((v0 + 56), (v35 + 3));
  sub_26968E5D4((v0 + 16), (v35 + 8));
  v36 = v34;
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_269853844();
  v37 = swift_task_alloc();
  *(v0 + 264) = v37;
  *v37 = v0;
  v37[1] = sub_26973B550;
  v38 = *(v0 + 176);

  return sub_2697872C4(v38, 0);
}

uint64_t sub_26973B550(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v7 = v4[33];
  *v6 = *v2;
  v5[34] = v1;

  v8 = v4[22];
  v9 = v4[21];
  v10 = v4[20];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_26973B7B0;
  }

  else
  {
    v5[35] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_26973B6D0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26973B6D0()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[19];
  v5 = v0[17];
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  v6 = *(v4 + v3);
  sub_26979BD18();

  sub_269853154();

  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_26973B7B0()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[23];

  v3(v5, v4, v6);
  v7 = sub_2698548B4();
  v8 = sub_269854F24();
  if (OUTLINED_FUNCTION_19_4(v8))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_10();
  }

  v14 = v0[34];
  v15 = v0[30];
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[23];
  v19 = v0[17];

  v15(v16, v18);
  sub_269853164();

  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[22];

  OUTLINED_FUNCTION_7_7();

  return v23();
}

void sub_26973B8EC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v139 = v2;
  v140 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v144 = (v128 - v8);
  v145 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v142 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v143 = v14 - v13;
  v15 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  if (qword_2803226E0 != -1)
  {
    v21 = OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_31_5(v21, qword_28033D910);
  (*(v17 + 16))(v24);
  v25 = sub_2698548B4();
  v26 = sub_269854F44();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_16_2();
    *v27 = 0;
    _os_log_impl(&dword_269684000, v25, v26, "Target device resolution is required, pushing device resolution flow", v27, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v17 + 8))(v24, v15);
  v28 = *(v1 + 536);
  *(v1 + 536) = 5;
  sub_269728BA0(v28);
  sub_2696A73F8(v1 + 16, v189);
  sub_2696A73F8(v1 + 256, v187);
  sub_2696A73F8(v1 + 216, v186);
  sub_2696A73F8(v1 + 376, v185);
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v29 = sub_2697B9550();
  __swift_mutable_project_boxed_opaque_existential_1(v187, v188);
  OUTLINED_FUNCTION_8_19();
  v138 = v30;
  OUTLINED_FUNCTION_3_20();
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v35 = OUTLINED_FUNCTION_10_14(v34);
  v36(v35);
  __swift_mutable_project_boxed_opaque_existential_1(v185, v185[3]);
  isa = v25->isa;
  v38 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v184 = &off_287A3E7C8;
  v183 = v38;
  v182[0] = isa;
  v180 = &type metadata for CoreAnalyticsService;
  v181 = &xmmword_287A41610;
  v141 = type metadata accessor for PlayVideoDeviceResolutionStrategy();
  v39 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v182, v38);
  OUTLINED_FUNCTION_3_20();
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_1();
  v44 = OUTLINED_FUNCTION_10_14(v43);
  v45(v44);
  __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
  v46.isa = v25->isa;
  v39[10] = v38;
  v39[11] = &off_287A3E7C8;
  v131 = v38;
  v39[7] = v46.isa;
  v177 = &type metadata for CoreAnalyticsService;
  v178 = &xmmword_287A41610;
  v39[24] = 3;
  sub_26968E5D4(v189, (v39 + 2));
  sub_26968E5D4(v186, (v39 + 12));
  v39[22] = v29;
  v39[23] = &off_287A41E38;
  sub_26968E5D4(&v176, (v39 + 17));
  __swift_destroy_boxed_opaque_existential_0(v179);
  __swift_destroy_boxed_opaque_existential_0(v182);
  __swift_destroy_boxed_opaque_existential_0(v185);
  __swift_destroy_boxed_opaque_existential_0(v187);
  v47 = v143;
  v48 = (v142 + 16);
  v49 = *(v142 + 16);
  v49(v143, v139, v145);
  sub_2696A73F8(v1 + 16, v189);
  sub_2696A73F8(v1 + 96, v187);
  sub_2696A73F8(v1 + 56, v186);
  sub_2696A73F8(v1 + 216, v185);
  sub_2696A73F8(v1 + 256, v182);
  sub_2696A73F8(v1 + 376, v179);
  sub_2696A73F8(v1 + 416, &v176);
  sub_2696A73F8(v1 + 456, v175);
  __swift_mutable_project_boxed_opaque_existential_1(v187, v188);
  OUTLINED_FUNCTION_8_19();
  v139 = v50;
  OUTLINED_FUNCTION_3_20();
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v55 = OUTLINED_FUNCTION_22_7(v54);
  v56(v55);
  __swift_mutable_project_boxed_opaque_existential_1(v182, v183);
  OUTLINED_FUNCTION_8_19();
  v138 = v57;
  OUTLINED_FUNCTION_3_20();
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_1();
  v62 = OUTLINED_FUNCTION_12_16(v61);
  v63(v62);
  __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
  __swift_mutable_project_boxed_opaque_existential_1(&v176, v177);
  v64 = *v29;
  v65 = xmmword_287A41610;
  v174[4] = &off_287A3F338;
  v174[3] = v141;
  v174[0] = v39;
  v129 = type metadata accessor for BaseDialogProvider();
  v173[4] = &off_287A3DBA0;
  v173[3] = v129;
  v173[0] = v64;
  v172[4] = &off_287A3E7C8;
  v172[3] = v38;
  v172[0] = v65;
  v171[3] = &type metadata for CoreAnalyticsService;
  v171[4] = &xmmword_287A41610;
  v170[3] = &type metadata for FeatureFlagServiceImpl;
  v170[4] = &off_287A41BD8;
  sub_2696A73F8(v174, v168);
  v66 = v144;
  v67 = v145;
  v49(v144, v47, v145);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
  sub_2696A73F8(v189, v167);
  sub_2696A73F8(v173, v166);
  sub_2696A73F8(v186, v165);
  sub_2696A73F8(v185, v164);
  sub_2696A73F8(v172, v162);
  sub_2696A73F8(v171, v161);
  sub_2696A73F8(v170, v160);
  sub_2696A73F8(v175, v159);
  v68 = v169;
  __swift_mutable_project_boxed_opaque_existential_1(v168, v169);
  OUTLINED_FUNCTION_8_19();
  v137 = v69;
  OUTLINED_FUNCTION_3_20();
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3_1();
  v74 = OUTLINED_FUNCTION_22_7(v73);
  v75(v74);
  __swift_mutable_project_boxed_opaque_existential_1(v166, v166[3]);
  OUTLINED_FUNCTION_8_19();
  v136 = v76;
  OUTLINED_FUNCTION_3_20();
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_1();
  v81 = OUTLINED_FUNCTION_10_14(v80);
  v82(v81);
  v83 = v163;
  __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
  OUTLINED_FUNCTION_8_19();
  v134 = v84;
  OUTLINED_FUNCTION_3_20();
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_3_1();
  v89 = OUTLINED_FUNCTION_11_17(v88);
  v90(v89);
  __swift_mutable_project_boxed_opaque_existential_1(v161, v161[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v160, v160[3]);
  v91 = *v66;
  v92 = *v68;
  v93 = *v48;
  v94 = v141;
  v158[3] = v141;
  v158[4] = &off_287A3F338;
  v158[0] = v91;
  v95 = v129;
  v156 = v129;
  v157 = &off_287A3DBA0;
  v155[0] = v92;
  v133 = v1;
  v96 = v131;
  v153 = v131;
  v154 = &off_287A3E7C8;
  v152[0] = v93;
  v150 = &type metadata for CoreAnalyticsService;
  v151 = &xmmword_287A41610;
  v147 = &type metadata for FeatureFlagServiceImpl;
  v148 = &off_287A41BD8;
  v135 = type metadata accessor for ExecutionDeviceResolutionFlow();
  v97 = OUTLINED_FUNCTION_68_0(v135);
  __swift_mutable_project_boxed_opaque_existential_1(v158, v94);
  OUTLINED_FUNCTION_8_19();
  v132 = v98;
  OUTLINED_FUNCTION_3_20();
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_3_1();
  v103 = OUTLINED_FUNCTION_11_17(v102);
  v104(v103);
  __swift_mutable_project_boxed_opaque_existential_1(v155, v156);
  OUTLINED_FUNCTION_8_19();
  v130 = v105;
  OUTLINED_FUNCTION_3_20();
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_3_1();
  v110 = OUTLINED_FUNCTION_12_16(v109);
  v111(v110);
  __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  OUTLINED_FUNCTION_8_19();
  v128[1] = v112;
  OUTLINED_FUNCTION_3_20();
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_3_1();
  v118 = (v117 - v116);
  (*(v119 + 16))(v117 - v116);
  __swift_mutable_project_boxed_opaque_existential_1(v149, v150);
  __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
  v120 = *v48;
  v121 = *v83;
  v122 = *v118;
  v97[5] = v94;
  v97[6] = &off_287A3F338;
  v97[2] = v120;
  v97[15] = v95;
  v97[16] = &off_287A3DBA0;
  v97[12] = v121;
  v97[30] = v96;
  v97[31] = &off_287A3E7C8;
  v97[27] = v122;
  v97[35] = &type metadata for CoreAnalyticsService;
  v97[36] = &xmmword_287A41610;
  v97[40] = &type metadata for FeatureFlagServiceImpl;
  v97[41] = &off_287A41BD8;

  __swift_destroy_boxed_opaque_existential_0(v175);
  __swift_destroy_boxed_opaque_existential_0(v185);
  __swift_destroy_boxed_opaque_existential_0(v186);
  __swift_destroy_boxed_opaque_existential_0(v189);
  v123 = v145;
  (*(v142 + 8))(v143, v145);
  __swift_destroy_boxed_opaque_existential_0(v170);
  __swift_destroy_boxed_opaque_existential_0(v171);
  __swift_destroy_boxed_opaque_existential_0(v172);
  __swift_destroy_boxed_opaque_existential_0(v173);
  __swift_destroy_boxed_opaque_existential_0(v174);
  v124 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v97 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input, 1, 1, v123);
  swift_beginAccess();
  sub_269702838(v144, v97 + v124);
  swift_endAccess();
  sub_26968E5D4(v167, (v97 + 7));
  sub_26968E5D4(v165, (v97 + 17));
  sub_26968E5D4(v164, (v97 + 22));
  v125 = v97 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  *v125 = 0;
  v125[8] = 3;
  sub_26968E5D4(v159, (v97 + 42));
  __swift_destroy_boxed_opaque_existential_0(v146);
  __swift_destroy_boxed_opaque_existential_0(v149);
  __swift_destroy_boxed_opaque_existential_0(v152);
  __swift_destroy_boxed_opaque_existential_0(v155);
  __swift_destroy_boxed_opaque_existential_0(v158);
  __swift_destroy_boxed_opaque_existential_0(v160);
  __swift_destroy_boxed_opaque_existential_0(v161);
  __swift_destroy_boxed_opaque_existential_0(v162);
  __swift_destroy_boxed_opaque_existential_0(v166);
  __swift_destroy_boxed_opaque_existential_0(v168);
  __swift_destroy_boxed_opaque_existential_0(&v176);
  __swift_destroy_boxed_opaque_existential_0(v179);
  __swift_destroy_boxed_opaque_existential_0(v182);
  __swift_destroy_boxed_opaque_existential_0(v187);
  *&v189[0] = v97;
  v126 = swift_allocObject();
  v127 = v133;
  *(v126 + 16) = sub_26973ECBC;
  *(v126 + 24) = v127;
  sub_26973ECF4(&qword_280323B20, type metadata accessor for ExecutionDeviceResolutionFlow);

  sub_269853124();

  OUTLINED_FUNCTION_21_0();
}

void sub_26973C6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_19_1();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v30 = v29;
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &a9 - v38;
  if (!v25)
  {
    v41 = qword_2803226E0;
    v42 = v27;
    v43 = v42;
    if (v41 != -1)
    {
      v42 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_31_5(v42, qword_28033D910);
    (*(v30 + 16))(v39);
    v44 = v43;
    v45 = sub_2698548B4();
    v46 = sub_269854F14();
    sub_269728BB4(v27, 0);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v27;
      v49 = v44;
      _os_log_impl(&dword_269684000, v45, v46, "ExecutionDeviceResolutionFlow selected device: %@", v47, 0xCu);
      sub_269698048(v48, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v30 + 8))(v39, v28);
    v50 = *(v23 + OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_executionDevice);
    *(v23 + OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_executionDevice) = v27;

    v51 = *(v23 + 536);
    v52 = 6;
    goto LABEL_15;
  }

  if (v25 != 1)
  {
    if (!v27)
    {
      v56 = *(v23 + 536);
      *(v23 + 536) = 7;
      goto LABEL_17;
    }

    if (qword_2803226E0 != -1)
    {
      v37 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_31_5(v37, qword_28033D910);
    (*(v30 + 16))(v36);
    v53 = sub_2698548B4();
    v54 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v54))
    {
      v55 = OUTLINED_FUNCTION_16_2();
      *v55 = 0;
      _os_log_impl(&dword_269684000, v53, v54, "DeviceResolutionResult resulted in failure", v55, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v30 + 8))(v36, v28);
    v51 = *(v23 + 536);
    v52 = 8;
LABEL_15:
    *(v23 + 536) = v52;
    sub_269728BA0(v51);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  v40 = *(v23 + 536);
  *(v23 + 536) = v27;
  sub_2697017E4(v27);
LABEL_17:
  OUTLINED_FUNCTION_21_0();

  sub_269728BA0(v57);
}

uint64_t sub_26973C9DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_2696D1E70(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  sub_269728BA0(*(v0 + 536));
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents27WatchSportsEventWrapperFlow_input, &qword_280323AF8, &unk_26985C1D0);

  return v0;
}

uint64_t sub_26973CA94()
{
  sub_26973C9DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WatchSportsEventWrapperFlow()
{
  result = qword_280323F08;
  if (!qword_280323F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26973CB40()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents27WatchSportsEventWrapperFlowC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26973CC80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26973A4E4();
}

uint64_t sub_26973CD1C()
{
  type metadata accessor for WatchSportsEventWrapperFlow();

  return sub_269852B84();
}

uint64_t sub_26973CD58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_26973CEF8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_269855584();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26973CEF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_22_9();
  v4 = sub_2698556C4();

  return sub_26973D588(a1, a2, v4);
}

void sub_26973CF5C()
{
  v1 = *(v0 + 40);
  sub_269854A94();
  sub_269855674();
  sub_269854B34();
  sub_2698556C4();

  sub_26973D63C();
}

unint64_t sub_26973CFEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_10();
  sub_269855694();
  if (a2)
  {
    OUTLINED_FUNCTION_22_9();
  }

  v4 = sub_2698556C4();

  return sub_26973D724(a1, a2, v4);
}

unint64_t sub_26973D098(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_21_10();
  MEMORY[0x26D646580](a1);
  v2 = sub_2698556C4();

  return sub_26973DAB4(a1, v2);
}

unint64_t sub_26973D0FC(uint64_t a1)
{
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F28, &unk_26985DDF8);
  v4 = sub_269854A24();
  return sub_26973DB14(a1, v4);
}

unint64_t sub_26973D178()
{
  v1 = *(v0 + 40);
  sub_269855054();
  v2 = OUTLINED_FUNCTION_86();

  return sub_26973DC58(v2, v3);
}

unint64_t sub_26973D1B8()
{
  v1 = *(v0 + 40);
  sub_269855194();
  v2 = OUTLINED_FUNCTION_86();

  return sub_26973DD18(v2, v3);
}

unint64_t sub_26973D224(char a1)
{
  OUTLINED_FUNCTION_21_10();
  sub_2697DF7FC();
  v2 = sub_2698556C4();

  return sub_26973DFA8(a1, v2);
}

unint64_t sub_26973D2B4(uint64_t a1)
{
  OUTLINED_FUNCTION_21_10();
  MEMORY[0x26D646580](a1);
  v2 = sub_2698556C4();
  return sub_26973DBF8(a1, v2);
}

unint64_t sub_26973D314(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = *(v2 + 40);
  sub_269855674();
  sub_269855694();
  if (v4 != 8)
  {
    MEMORY[0x26D646580](a1);
  }

  v6 = sub_2698556C4();

  return sub_26973E49C(a1, v6);
}

unint64_t sub_26973D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_10();
  sub_269854B34();
  OUTLINED_FUNCTION_22_9();
  v8 = sub_2698556C4();

  return sub_26973E520(a1, a2, a3, a4, v8);
}

unint64_t sub_26973D434()
{
  v1 = *(v0 + 40);
  sub_269851DA4();
  sub_26973ECF4(&qword_2803264B0, MEMORY[0x277CC95F0]);
  sub_269854A24();
  v2 = OUTLINED_FUNCTION_86();

  return sub_26973E61C(v2, v3);
}

uint64_t sub_26973D4F4(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_21_10();
  a2(a1);
  sub_269854B34();

  v5 = sub_2698556C4();

  return a3(a1, v5);
}

unint64_t sub_26973D588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269855584() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_26973D63C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = *(*(v0 + 48) + 8 * i);
    v5 = sub_269854A94();
    v7 = v6;
    if (v5 == sub_269854A94() && v7 == v8)
    {

      break;
    }

    v10 = sub_269855584();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_26973D724(uint64_t a1, uint64_t a2, uint64_t a3)
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
          if (v13 || (sub_269855584() & 1) != 0)
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

unint64_t sub_26973D7F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000747365;
      v8 = 0x42656D69546C6C41;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x57656D69546C6C41;
          v7 = 0xEC0000007473726FLL;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1953719650;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x7473726F77;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x72616C75706F70;
          break;
        case 5:
          v8 = 0x6E656D6D6F636572;
          v7 = 0xEB00000000646564;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v9 = 1702323566;
          goto LABEL_11;
        case 7:
          v7 = 0xE600000000000000;
          v9 = 1701080175;
LABEL_11:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x676E6973736F7267;
          break;
        default:
          break;
      }

      v10 = 0x42656D69546C6C41;
      v11 = 0xEB00000000747365;
      switch(a1)
      {
        case 1:
          v10 = 0x57656D69546C6C41;
          v11 = 0xEC0000007473726FLL;
          break;
        case 2:
          v11 = 0xE400000000000000;
          v10 = 1953719650;
          break;
        case 3:
          v11 = 0xE500000000000000;
          v10 = 0x7473726F77;
          break;
        case 4:
          v11 = 0xE700000000000000;
          v10 = 0x72616C75706F70;
          break;
        case 5:
          v10 = 0x6E656D6D6F636572;
          v11 = 0xEB00000000646564;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v12 = 1702323566;
          goto LABEL_21;
        case 7:
          v11 = 0xE600000000000000;
          v12 = 1701080175;
LABEL_21:
          v10 = v12 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
          break;
        case 8:
          v11 = 0xE800000000000000;
          v10 = 0x676E6973736F7267;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v11)
      {
        break;
      }

      v14 = sub_269855584();

      if ((v14 & 1) == 0)
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

unint64_t sub_26973DAB4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_26973DB14(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F28, &unk_26985DDF8);
    v6 = *(*(v2 + 48) + 8 * i);
    if (sub_269854A54())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26973DBF8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_26973DC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_269854664();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_269855064();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26973DD18(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2696B8A68(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D6460A0](v8, a1);
    sub_26973EC68(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26973DDDC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7105633;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x7473726966;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1953718636;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1954047342;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x73756F6976657270;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 7105633;
      switch(a1)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x7473726966;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1953718636;
          break;
        case 3:
          v9 = 0xE400000000000000;
          v10 = 1954047342;
          break;
        case 4:
          v9 = 0xE800000000000000;
          v10 = 0x73756F6976657270;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_269855584();

      if ((v12 & 1) == 0)
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

unint64_t sub_26973DFA8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7105633;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x7473726966;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1953718636;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x746E6572727563;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 7105633;
      switch(a1)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x7473726966;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1953718636;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x746E6572727563;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_269855584();

      if ((v12 & 1) == 0)
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

unint64_t sub_26973E154(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x736472617761;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x776F68735F7674;
          break;
        case 2:
          v8 = 0x6F736165735F7674;
          v7 = 0xE90000000000006ELL;
          break;
        case 3:
          v8 = 0x6F736970655F7674;
          v7 = 0xEA00000000006564;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x6569766F6DLL;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x6C656E6E616863;
          break;
        case 6:
          v7 = 0xE900000000000073;
          v8 = 0x656D6974776F6873;
          break;
        case 7:
          v8 = 0x73676E696874;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x72656C69617274;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x7374656B636974;
          break;
        case 0xA:
          v7 = 0xE800000000000000;
          v8 = 0x7372657461656874;
          break;
        case 0xB:
          v8 = 0x736F65646976;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x736472617761;
      switch(a1)
      {
        case 1:
          v9 = 0xE700000000000000;
          v10 = 0x776F68735F7674;
          break;
        case 2:
          v10 = 0x6F736165735F7674;
          v9 = 0xE90000000000006ELL;
          break;
        case 3:
          v10 = 0x6F736970655F7674;
          v9 = 0xEA00000000006564;
          break;
        case 4:
          v9 = 0xE500000000000000;
          v10 = 0x6569766F6DLL;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v10 = 0x6C656E6E616863;
          break;
        case 6:
          v9 = 0xE900000000000073;
          v10 = 0x656D6974776F6873;
          break;
        case 7:
          v10 = 0x73676E696874;
          break;
        case 8:
          v9 = 0xE700000000000000;
          v10 = 0x72656C69617274;
          break;
        case 9:
          v9 = 0xE700000000000000;
          v10 = 0x7374656B636974;
          break;
        case 10:
          v9 = 0xE800000000000000;
          v10 = 0x7372657461656874;
          break;
        case 11:
          v10 = 0x736F65646976;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_269855584();

      if ((v12 & 1) == 0)
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

unint64_t sub_26973E49C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 8)
      {
        if (a1 == 8)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26973E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_269855584() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_269855584() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_26973E61C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_269851DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_26973ECF4(&qword_280323F18, MEMORY[0x277CC95F0]);
    v10 = sub_269854A54();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26973E7D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE90000000000006ELL;
      v8 = 0x7572207473726966;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE200000000000000;
          v8 = 25704;
          break;
        case 2:
          v7 = 0xE200000000000000;
          v8 = 27444;
          break;
        case 3:
          v8 = 0x69762079626C6F64;
          v7 = 0xEC0000006E6F6973;
          break;
        case 4:
          v8 = 0x74612079626C6F64;
          v7 = 0xEB00000000736F6DLL;
          break;
        case 5:
          v7 = 0xE300000000000000;
          v8 = 7496808;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x800000026987A640;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x800000026987A660;
          break;
        case 8:
          v7 = 0xE600000000000000;
          v9 = 1650619748;
          goto LABEL_23;
        case 9:
          v8 = 0x656C746974627573;
          goto LABEL_16;
        case 0xA:
          v7 = 0xE200000000000000;
          v8 = 25651;
          break;
        case 0xB:
          v7 = 0xE400000000000000;
          v8 = 2019650921;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x65656E6974616DLL;
          break;
        case 0xD:
          v8 = 0xD000000000000010;
          v7 = 0x800000026987A6A0;
          break;
        case 0xE:
          v8 = 0x7720736472617761;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 0xF:
          v8 = 0xD000000000000012;
          v7 = 0x800000026987A6C0;
          break;
        case 0x10:
          v7 = 0xE400000000000000;
          v8 = 1701147238;
          break;
        case 0x11:
          v8 = 0x6573616863727570;
LABEL_16:
          v7 = 0xE900000000000064;
          break;
        case 0x12:
          v7 = 0xE600000000000000;
          v9 = 1953391986;
LABEL_23:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
          break;
        case 0x13:
          v7 = 0xE600000000000000;
          v8 = 0x656D75736572;
          break;
        default:
          break;
      }

      v10 = 0xE90000000000006ELL;
      v11 = 0x7572207473726966;
      switch(a1)
      {
        case 1:
          v10 = 0xE200000000000000;
          v11 = 25704;
          break;
        case 2:
          v10 = 0xE200000000000000;
          v11 = 27444;
          break;
        case 3:
          v11 = 0x69762079626C6F64;
          v10 = 0xEC0000006E6F6973;
          break;
        case 4:
          v11 = 0x74612079626C6F64;
          v10 = 0xEB00000000736F6DLL;
          break;
        case 5:
          v10 = 0xE300000000000000;
          v11 = 7496808;
          break;
        case 6:
          v11 = 0xD000000000000010;
          v10 = 0x800000026987A640;
          break;
        case 7:
          v11 = 0xD000000000000012;
          v10 = 0x800000026987A660;
          break;
        case 8:
          v10 = 0xE600000000000000;
          v12 = 1650619748;
          goto LABEL_45;
        case 9:
          v11 = 0x656C746974627573;
          goto LABEL_38;
        case 10:
          v10 = 0xE200000000000000;
          v11 = 25651;
          break;
        case 11:
          v10 = 0xE400000000000000;
          v11 = 2019650921;
          break;
        case 12:
          v10 = 0xE700000000000000;
          v11 = 0x65656E6974616DLL;
          break;
        case 13:
          v11 = 0xD000000000000010;
          v10 = 0x800000026987A6A0;
          break;
        case 14:
          v11 = 0x7720736472617761;
          v10 = 0xEA00000000006E6FLL;
          break;
        case 15:
          v11 = 0xD000000000000012;
          v10 = 0x800000026987A6C0;
          break;
        case 16:
          v10 = 0xE400000000000000;
          v11 = 1701147238;
          break;
        case 17:
          v11 = 0x6573616863727570;
LABEL_38:
          v10 = 0xE900000000000064;
          break;
        case 18:
          v10 = 0xE600000000000000;
          v12 = 1953391986;
LABEL_45:
          v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
          break;
        case 19:
          v10 = 0xE600000000000000;
          v11 = 0x656D75736572;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_269855584();

      if ((v14 & 1) == 0)
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

uint64_t sub_26973ECC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_26973ECF4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  v2 = *(v0 + 40);

  return sub_269855674();
}

uint64_t OUTLINED_FUNCTION_22_9()
{

  return sub_269854B34();
}

void sub_26973ED78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26975004C(a1);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v12;
    v31 = MEMORY[0x277D84F90];
    sub_2698150D0(0, v12 & ~(v12 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v26 = a2;
      v27 = a3;
      v28 = a4;
      v29 = a1;
      v15 = 0;
      v13 = v31;
      v16 = a1 & 0xC000000000000001;
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        sub_269750050(v15);
        if (v16)
        {
          v18 = MEMORY[0x26D646120](v15, a1);
        }

        else
        {
          v18 = *(a1 + 8 * v15 + 32);
        }

        v19 = v18;
        v33 = v18;
        sub_26973EFD0(&v33);

        v31 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2698150D0(v20 > 1, v21 + 1, 1);
          v13 = v31;
        }

        *(v13 + 16) = v21 + 1;
        sub_2696FD584(v11, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21);
        ++v15;
        a1 = v29;
        if (v17 == v14)
        {
          a3 = v27;
          a2 = v26;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v31 = a2;
    v32 = a3;

    sub_269852674();
    v22 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
    v23 = *(v22 + 20);
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A70, &unk_26985BEE0);
    sub_269852674();
    v24 = *(v22 + 24);
    LOBYTE(v31) = 0;
    sub_269852674();
  }
}

uint64_t sub_26973EFD0(void **a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v2 = *(*(v72 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v72);
  v74 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v73 = v61 - v6;
  MEMORY[0x28223BE20](v5);
  v77 = v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  v14 = *(*(v69 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v69);
  v71 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = v61 - v18;
  MEMORY[0x28223BE20](v17);
  v80 = v61 - v19;
  v20 = sub_269852624();
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
  v25 = swift_allocObject();
  v68 = xmmword_269857710;
  *(v25 + 16) = xmmword_269857710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = v68;
  v78 = 0x696669746E656469;
  v79 = 0xEA00000000007265;
  v27 = MEMORY[0x277D837D0];
  sub_2698551B4();
  v28 = sub_2696CD57C(v24, &selRef_liveServiceId);
  *(inited + 96) = v27;
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0xE000000000000000;
  if (v29)
  {
    v31 = v29;
  }

  *(inited + 72) = v30;
  *(inited + 80) = v31;
  sub_269854A04();
  v32 = sub_269852664();
  v33 = MEMORY[0x277D63778];
  *(v25 + 56) = v32;
  *(v25 + 64) = v33;
  __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  sub_269852654();

  sub_269852634();
  v34 = sub_2696CD57C(v24, &selRef_liveServiceId);
  v36 = v35;
  v66 = sub_2696CD57C(v24, &selRef_name);
  v65 = v37;
  *&v68 = sub_2696CD57C(v24, &selRef_appName);
  v67 = v38;
  v39 = [v24 appImage];
  if (!v39)
  {
    v44 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
    v45 = v80;
    goto LABEL_10;
  }

  v40 = v39;
  v41 = v80;
  sub_2696D261C(v13);

  v42 = v63;
  sub_26973F894(v13, v63);
  v43 = sub_269851C74();
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    v44 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
    v45 = v41;
LABEL_10:
    v46 = 1;
    goto LABEL_12;
  }

  (*(*(v43 - 8) + 32))(v41, v42, v43);
  v44 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v45 = v41;
  v46 = 0;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
  v47 = 0xE000000000000000;
  if (v36)
  {
    v47 = v36;
  }

  v63 = v47;
  if (v36)
  {
    v48 = v34;
  }

  else
  {
    v48 = 0;
  }

  v62 = v48;
  v49 = *(v75 + 16);
  v50 = v77;
  v64 = v23;
  v51 = v76;
  v49(v77, v23, v76);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
  v52 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v61[0] = v52[5];
  v78 = 0;
  v79 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v53 = v52[6];
  v78 = 0;
  v79 = 0;
  sub_269852674();
  v61[1] = v52[7];
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  v54 = v70;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v44);
  v55 = v71;
  sub_2696ADDE8(v54, v71, &qword_280323A78, &unk_26985BEF0);
  sub_269852674();
  sub_269698048(v54, &qword_280323A78, &unk_26985BEF0);
  v69 = v52[8];
  v56 = v73;
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v51);
  v57 = v74;
  sub_2696ADDE8(v56, v74, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  sub_269698048(v56, &qword_2803239E0, &unk_26985D8B0);
  v78 = v62;
  v79 = v63;
  sub_269852674();
  v78 = v66;
  v79 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v78 = v68;
  v79 = v67;
  sub_2698526A4();
  v58 = v80;
  sub_2696ADDE8(v80, v54, &qword_280323A78, &unk_26985BEF0);
  sub_2696ADDE8(v54, v55, &qword_280323A78, &unk_26985BEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  sub_2698526A4();
  sub_269698048(v54, &qword_280323A78, &unk_26985BEF0);
  v59 = v77;
  sub_2696ADDE8(v77, v56, &qword_2803239E0, &unk_26985D8B0);
  sub_2696ADDE8(v56, v57, &qword_2803239E0, &unk_26985D8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_269698048(v56, &qword_2803239E0, &unk_26985D8B0);
  sub_269698048(v59, &qword_2803239E0, &unk_26985D8B0);
  sub_269698048(v58, &qword_280323A78, &unk_26985BEF0);
  return (*(v75 + 8))(v64, v76);
}

uint64_t sub_26973F894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26973F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26975004C(a2);
  v79 = a3;
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_29();
    sub_2698151C4(v5, v6, v7);
    if (v4 < 0)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v8 = 0;
    v9 = v87;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D646120](v8, a2);
      }

      else
      {
        v10 = *(a2 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 artwork];
      if (v12)
      {
        v13 = v12;
        sub_26969329C(0, &qword_280323F30, 0x277D4C328);
        v14 = v13;
        v15 = sub_2696CDFA4(v14);
      }

      else
      {
        v15 = 0;
      }

      v87 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_2698151C4(v16 > 1, v17 + 1, 1);
      }

      ++v8;
      *(v9 + 16) = v18;
      v19 = v9 + 16 * v17;
      *(v19 + 32) = v11;
      *(v19 + 40) = v15;
    }

    while (v4 != v8);
  }

  else
  {
    v18 = *(MEMORY[0x277D84F90] + 16);
    v9 = MEMORY[0x277D84F90];
  }

  v83 = v18;
  v20 = v18 + 1;
  v21 = 40;
  do
  {
    if (!--v20)
    {
      break;
    }

    v22 = *(v9 + v21);
    v21 += 16;
  }

  while (!v22);
  swift_getKeyPath();
  if (v4)
  {
    v23 = OUTLINED_FUNCTION_0_29();
    sub_269815180(v23, v24, v25);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v87;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x26D646120](v26, a2);
        }

        else
        {
          v28 = *(a2 + 8 * v26 + 32);
        }

        v29 = v28;
        swift_getAtKeyPath();

        v31 = *(v87 + 16);
        v30 = *(v87 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_269815180(v30 > 1, v31 + 1, 1);
        }

        ++v26;
        *(v87 + 16) = v31 + 1;
        *(v87 + 8 * v31 + 32) = v86;
      }

      while (v4 != v26);

      goto LABEL_29;
    }

LABEL_65:
    __break(1u);
    return;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_29:
  v32 = *(sub_2697F2238(v27) + 16);

  v33 = 0;
  v81 = v32;
  v80 = v32 < 2;
  v34 = v9 + 40;
  v35 = MEMORY[0x277D84F90];
  v36 = v83;
LABEL_30:
  v37 = (v34 + 16 * v33);
  while (v36 != v33)
  {
    if (v33 >= *(v9 + 16))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v38 = *(v37 - 1);
    v39 = *v37;
    v40 = *v37;
    v41 = v38;
    sub_2696CD57C(v41, &selRef_title);
    if (v42)
    {

LABEL_37:
      v43 = sub_2696CD57C(v41, &selRef_title);
      v82 = v44;
      if (v20)
      {
        if (!v39)
        {
          v39 = [objc_allocWithZone(MEMORY[0x277D4C6B8]) init];
        }

        v45 = v40;
      }

      else
      {
        v39 = 0;
      }

      v85 = v35;
      if (v81 >= 2)
      {
        v46 = [v41 type];
      }

      else
      {
        v46 = 0;
      }

      sub_26969329C(0, &qword_280323F30, 0x277D4C328);

      v47 = sub_2696CDDBC(v43, v82, v39, v46, v80);
      v48 = sub_2698535A4();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      sub_269853594();
      sub_2696CD57C(v41, &selRef_identifier);
      sub_269853574();

      v51 = sub_269853584();
      v53 = v52;

      sub_26969329C(0, &qword_280323790, 0x277D477C0);
      v54 = sub_2696D6A0C(v51, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_2698590C0;
      v56 = v47;
      v57 = v54;
      v58 = sub_269852F44();

      *(v55 + 32) = v58;
      sub_2697400B8(v55, v56);

      v35 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v85 + 16);
        sub_26977C75C();
        v35 = v62;
      }

      v59 = *(v35 + 16);
      v36 = v83;
      if (v59 >= *(v35 + 24) >> 1)
      {
        sub_26977C75C();
        v36 = v83;
        v35 = v63;
      }

      ++v33;
      *(v35 + 16) = v59 + 1;
      v60 = (v35 + 24 * v59);
      v60[4] = v41;
      v60[5] = v56;
      v60[6] = v57;
      v34 = v9 + 40;
      goto LABEL_30;
    }

    if (v39)
    {
      goto LABEL_37;
    }

    v37 += 2;
    ++v33;
    v36 = v83;
  }

  v64 = *(v35 + 16);
  if (v64)
  {
    v88 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v65 = 0;
    v66 = (v35 + 40);
    while (v65 < *(v35 + 16))
    {
      ++v65;
      v67 = *v66;
      v66 += 3;
      v68 = v67;
      sub_269855284();
      v69 = *(v88 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      if (v64 == v65)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_63;
  }

LABEL_54:
  sub_2698543F4();
  v70 = MEMORY[0x277D84F90];
  if (v64)
  {
    v89 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v71 = v35;
    v72 = (v35 + 48);
    v73 = v64;
    do
    {
      v74 = *v72;
      v72 += 3;
      swift_unknownObjectRetain();
      sub_269855284();
      v75 = *(v89 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      --v73;
    }

    while (v73);
    v35 = v71;
    v70 = MEMORY[0x277D84F90];
  }

  sub_26969329C(0, &qword_2803233A0, 0x277D47200);
  sub_269854EF4();

  if (v64)
  {
    v90 = v70;
    sub_2698552A4();
    v76 = 32;
    do
    {
      v77 = *(v35 + v76);
      sub_269855284();
      v78 = *(v90 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v76 += 24;
      --v64;
    }

    while (v64);
  }

  sub_269836430();
}

void sub_2697400B8(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_280323F38, 0x277D4C1A0);
  v3 = sub_269854CA4();

  [a2 setCommands_];
}

id sub_269740154()
{
  result = [objc_allocWithZone(type metadata accessor for AddToWatchListIntentHandler()) init];
  qword_28033D6E0 = result;
  return result;
}

uint64_t sub_269740188(uint64_t a1)
{
  v141 = a1;
  v142 = sub_269852474();
  v1 = OUTLINED_FUNCTION_8(v142);
  v133 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v124 = v6 - v5;
  v7 = sub_269851F04();
  v8 = OUTLINED_FUNCTION_8(v7);
  v139 = v9;
  v140 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v125 = v13 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  v14 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_24_3();
  v129 = v15;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v16);
  v136 = &v124 - v17;
  v18 = sub_2698523C4();
  v19 = OUTLINED_FUNCTION_8(v18);
  v131 = v20;
  v132 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v130 = v24 - v23;
  v25 = sub_269851EF4();
  v26 = OUTLINED_FUNCTION_8(v25);
  v134 = v27;
  v135 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v124 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  OUTLINED_FUNCTION_24_3();
  v128 = v39;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v40);
  v126 = &v124 - v41;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v42);
  v127 = &v124 - v43;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v44);
  v137 = &v124 - v45;
  OUTLINED_FUNCTION_22_0();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v124 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v124 - v50;
  v52 = sub_269853874();
  v53 = OUTLINED_FUNCTION_8(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v60 = v59 - v58;
  v61 = sub_2698538B4();
  v62 = OUTLINED_FUNCTION_8(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3_1();
  v69 = (v68 - v67);
  (*(v64 + 16))(v68 - v67, v141, v61);
  v70 = *(v64 + 88);
  v71 = OUTLINED_FUNCTION_7_23();
  v73 = v72(v71);
  if (v73 != *MEMORY[0x277D5C140])
  {
    v80 = v142;
    if (v73 != *MEMORY[0x277D5C148])
    {
      v104 = *(v64 + 8);
      v105 = OUTLINED_FUNCTION_7_23();
      v106(v105);
LABEL_28:
      v112 = 0;
      return v112 & 1;
    }

    v81 = *(v64 + 96);
    v82 = OUTLINED_FUNCTION_7_23();
    v83(v82);
    v84 = *v69;
    sub_2696D6C54();
    if (v85)
    {
      v86 = v85;
      v87 = v124;
      sub_269854544();

      v88 = v130;
      sub_269852424();
      (*(v133 + 8))(v87, v80);
      v89 = v127;
      sub_2698523A4();
      (*(v131 + 8))(v88, v132);
      v90 = 0;
      v92 = v139;
      v91 = v140;
      v94 = v128;
      v93 = v129;
    }

    else
    {
      v90 = 1;
      v92 = v139;
      v91 = v140;
      v94 = v128;
      v93 = v129;
      v89 = v127;
    }

    v117 = v126;
    __swift_storeEnumTagSinglePayload(v89, v90, 1, v91);
    (*(v92 + 104))(v117, *MEMORY[0x277D391C0], v91);
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v91);
    v118 = *(v138 + 48);
    sub_269740BE4(v89, v93);
    sub_269740BE4(v117, v93 + v118);
    OUTLINED_FUNCTION_8_21(v93);
    if (v119)
    {

      OUTLINED_FUNCTION_3_23(v117);
      OUTLINED_FUNCTION_3_23(v89);
      OUTLINED_FUNCTION_8_21(v93 + v118);
      if (v119)
      {
        v103 = v93;
        goto LABEL_22;
      }
    }

    else
    {
      sub_269740BE4(v93, v94);
      OUTLINED_FUNCTION_8_21(v93 + v118);
      if (!v119)
      {
        v120 = v93 + v118;
        v121 = v125;
        (*(v92 + 32))(v125, v120, v91);
        sub_269740C54();
        v112 = sub_269854A54();

        v122 = *(v92 + 8);
        v122(v121, v91);
        OUTLINED_FUNCTION_5_22(v117);
        OUTLINED_FUNCTION_5_22(v89);
        v122(v94, v91);
        v116 = v93;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_3_23(v117);
      OUTLINED_FUNCTION_3_23(v89);
      (*(v92 + 8))(v94, v91);
    }

    v109 = v93;
    goto LABEL_27;
  }

  v74 = *(v64 + 96);
  v75 = OUTLINED_FUNCTION_7_23();
  v76(v75);
  v129 = v55;
  v77 = *(v55 + 32);
  v141 = v52;
  v77(v60, v69, v52);
  sub_269853864();
  sub_2696D3C74();
  (*(v134 + 8))(v32, v135);
  v78 = v142;
  if (__swift_getEnumTagSinglePayload(v36, 1, v142) == 1)
  {
    sub_269698048(v36, &qword_280323360, &unk_26985AB80);
    v79 = 1;
  }

  else
  {
    v95 = v130;
    sub_269852424();
    (*(v133 + 8))(v36, v78);
    sub_2698523A4();
    (*(v131 + 8))(v95, v132);
    v79 = 0;
  }

  v96 = v139;
  v97 = v140;
  v98 = v137;
  __swift_storeEnumTagSinglePayload(v51, v79, 1, v140);
  (*(v96 + 104))(v49, *MEMORY[0x277D391C0], v97);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v97);
  v99 = *(v138 + 48);
  v100 = v136;
  sub_269740BE4(v51, v136);
  sub_269740BE4(v49, v100 + v99);
  if (__swift_getEnumTagSinglePayload(v100, 1, v97) != 1)
  {
    sub_269740BE4(v100, v98);
    if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v97) == 1)
    {
      OUTLINED_FUNCTION_3_23(v49);
      OUTLINED_FUNCTION_3_23(v51);
      v107 = OUTLINED_FUNCTION_2_17();
      v108(v107);
      (*(v96 + 8))(v98, v97);
      goto LABEL_14;
    }

    v110 = v100 + v99;
    v111 = v125;
    (*(v96 + 32))(v125, v110, v97);
    sub_269740C54();
    v112 = sub_269854A54();
    v113 = *(v96 + 8);
    v113(v111, v97);
    OUTLINED_FUNCTION_5_22(v49);
    OUTLINED_FUNCTION_5_22(v51);
    v114 = OUTLINED_FUNCTION_2_17();
    v115(v114);
    v113(v137, v97);
    v116 = v100;
LABEL_29:
    OUTLINED_FUNCTION_5_22(v116);
    return v112 & 1;
  }

  OUTLINED_FUNCTION_3_23(v49);
  OUTLINED_FUNCTION_3_23(v51);
  v101 = OUTLINED_FUNCTION_2_17();
  v102(v101);
  if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v97) != 1)
  {
LABEL_14:
    v109 = v100;
LABEL_27:
    sub_269698048(v109, &qword_280323F40, &unk_26985DE30);
    goto LABEL_28;
  }

  v103 = v100;
LABEL_22:
  sub_269698048(v103, &qword_280323F48, qword_26985DE40);
  v112 = 1;
  return v112 & 1;
}

uint64_t sub_269740BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269740C54()
{
  result = qword_280323F50;
  if (!qword_280323F50)
  {
    sub_269851F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323F50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{
  v2 = *(*(v1 - 200) + 8);
  result = v0;
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_23(uint64_t a1)
{

  return sub_269698048(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1)
{

  return sub_269698048(a1, v1, v2);
}

uint64_t sub_269740DD8(uint64_t a1, void *a2, uint64_t *a3, void **a4, void (*a5)(void))
{
  v9 = sub_269852BE4();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  sub_269852C54();
  v18 = *a3;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = *a4;
  a5(0);
  v20 = v19;
  v21 = a2;
  sub_269852BD4();
  v22 = sub_269852C44();
  (*(v12 + 8))(v17, v9);
  return v22;
}

id sub_269740F2C()
{
  result = [objc_allocWithZone(type metadata accessor for AddToWatchListIntentHandler()) init];
  qword_28033D6E8 = result;
  return result;
}

uint64_t sub_269740F60()
{
  v0 = sub_2698538B4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_2698548D4();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v18 = __swift_project_value_buffer(v9, qword_28033D910);
  (*(v12 + 16))(v17, v18, v9);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "AddToWatchListFlowStrategy.actionForInput() called", v21, 2u);
    MEMORY[0x26D647170](v21, -1, -1);
  }

  (*(v12 + 8))(v17, v9);
  sub_269853844();
  v22 = sub_269740188(v8);
  (*(v3 + 8))(v8, v0);
  if (v22)
  {
    return sub_269853004();
  }

  else
  {
    return sub_269853014();
  }
}

uint64_t sub_2697411AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80) - 8) + 64);
  v2[4] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269852474();
  v2[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v2[6] = v5;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v8 = sub_269851ED4();
  v2[9] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v2[10] = v9;
  v11 = *(v10 + 64);
  v2[11] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269851EF4();
  v2[12] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v2[13] = v13;
  v15 = *(v14 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v16 = sub_269853874();
  v2[16] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v2[17] = v17;
  v19 = *(v18 + 64);
  v2[18] = OUTLINED_FUNCTION_4_7();
  v20 = sub_2698538B4();
  v2[19] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v2[20] = v21;
  v23 = *(v22 + 64);
  v2[21] = OUTLINED_FUNCTION_4_7();
  v24 = sub_2698548D4();
  v2[22] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v2[23] = v25;
  v27 = *(v26 + 64);
  v2[24] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_269741430, 0, 0);
}

uint64_t sub_269741430()
{
  v1 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v3 = v0[23];
  v2 = v1[24];
  v4 = v1[22];
  v5 = __swift_project_value_buffer(v4, qword_28033D910);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "AddToWatchListFlowStrategy.makeIntentFromParse() called", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  v10 = v1[23];
  v9 = v1[24];
  v11 = v1[22];
  v12 = v1[3];

  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    v13 = v1[3];
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for AddToWatchListIntent()) init];
  }

  v15 = v1[20];
  v14 = v1[21];
  v16 = v1[19];
  (*(v15 + 16))(v14, v1[2], v16);
  v17 = (*(v15 + 88))(v14, v16);
  if (v17 == *MEMORY[0x277D5C140])
  {
    v67 = v13;
    v18 = v1 + 18;
    v19 = v1[18];
    v20 = v1[21];
    v21 = v1[17];
    v22 = v1[15];
    v23 = v1[13];
    v61 = v1[16];
    v62 = v1[12];
    v25 = v1[10];
    v24 = v1[11];
    v65 = v1[14];
    v66 = v1[5];
    v26 = v1[3];
    v63 = v1[9];
    v64 = v1[4];
    (*(v1[20] + 96))(v20, v1[19]);
    (*(v21 + 32))(v19, v20, v61);
    v27 = v26;
    sub_269853864();
    sub_269851EE4();
    v28 = *(v23 + 8);
    v28(v22, v62);
    sub_269851EB4();
    (*(v25 + 8))(v24, v63);
    sub_269853864();
    sub_2696D3C74();
    v28(v65, v62);
    if (__swift_getEnumTagSinglePayload(v64, 1, v66) == 1)
    {
      v30 = v1[17];
      v29 = v1[18];
      v31 = v1[16];
      v32 = v1[4];

      sub_2696CC3F8(v32);
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v33, 11);

      (*(v30 + 8))(v29, v31);
LABEL_19:
      v58 = v1[24];
      OUTLINED_FUNCTION_4_19();

      v59 = v1[1];

      return v59();
    }

    v46 = v1[8];
    v47 = v1[5];
    v48 = v1[6];
    (*(v48 + 32))(v46, v1[4], v47);
    sub_2697A1B24();

    (*(v48 + 8))(v46, v47);
    v45 = v1 + 16;
    v44 = v1 + 17;
  }

  else
  {
    v34 = v1[20];
    v35 = v1[21];
    v36 = v1[19];
    v37 = v1[3];
    if (v17 != *MEMORY[0x277D5C148])
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v56, 13);
      v57 = v37;

      (*(v34 + 8))(v35, v36);
      goto LABEL_19;
    }

    (*(v34 + 96))(v1[21], v1[19]);
    v38 = *v35;
    v39 = v37;
    sub_2696D6C54();
    if (!v40)
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v60, 11);

      goto LABEL_19;
    }

    v41 = v40;
    v18 = v1 + 7;
    v42 = v1[7];
    sub_269854544();
    v43 = v41;
    sub_2698544E4();

    sub_2697A1B24();

    v44 = v1 + 6;
    v45 = v1 + 5;
    v67 = v13;
  }

  v49 = *v18;
  v50 = *v45;
  v51 = *v44;
  v52 = v1[24];
  OUTLINED_FUNCTION_4_19();
  (*(v53 + 8))();

  v54 = v1[1];

  return v54(v67);
}