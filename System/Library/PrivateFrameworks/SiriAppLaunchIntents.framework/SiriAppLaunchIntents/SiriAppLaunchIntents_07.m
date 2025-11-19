uint64_t sub_2661515C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 152) = a4;
  *(v6 + 160) = v5;
  *(v6 + 384) = a5;
  *(v6 + 136) = a2;
  *(v6 + 144) = a3;
  *(v6 + 128) = a1;
  v7 = sub_26618C600();
  *(v6 + 168) = v7;
  OUTLINED_FUNCTION_0_4(v7);
  *(v6 + 176) = v8;
  v10 = *(v9 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v11 = sub_26618C630();
  *(v6 + 200) = v11;
  OUTLINED_FUNCTION_0_4(v11);
  *(v6 + 208) = v12;
  v14 = *(v13 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  v15 = sub_26618C6B0();
  *(v6 + 224) = v15;
  OUTLINED_FUNCTION_0_4(v15);
  *(v6 + 232) = v16;
  v18 = *(v17 + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266151784, 0, 0);
}

uint64_t sub_266151784()
{
  v96 = v0;
  if (qword_2814B2C48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = __swift_project_value_buffer(*(v0 + 224), qword_2814B4AB0);
  *(v0 + 296) = v5;
  v6 = *(v2 + 16);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v91 = v5;
  v92 = v6;
  (v6)(v1);

  v7 = sub_26618C690();
  v8 = sub_26618CAA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  if (v9)
  {
    v85 = *(v0 + 144);
    v86 = *(v0 + 152);
    v87 = *(v0 + 224);
    v88 = *(v0 + 288);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v89 = v4;
    v13 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v13 = 136315394;
    *(v0 + 96) = v12;
    *(v0 + 104) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    v14 = sub_26618C8D0();
    v16 = sub_266103A98(v14, v15, &v95);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v0 + 112) = v85;
    *(v0 + 120) = v86;

    v17 = sub_26618C8D0();
    v19 = sub_266103A98(v17, v18, &v95);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_2660B7000, v7, v8, "AppsSearcher.searchApps with appName: %s and appID: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    v4 = v89;
    OUTLINED_FUNCTION_7_2();

    v20 = *(v10 + 8);
    v20(v88, v87);
  }

  else
  {

    v20 = *(v10 + 8);
    v21 = OUTLINED_FUNCTION_12_1();
    v20(v21, v22);
  }

  v90 = v20;
  *(v0 + 320) = v20;
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 280);
  v24 = *(v0 + 224);
  v25 = *(v0 + 192);
  v26 = __swift_project_value_buffer(v24, qword_2814B4A80);
  v92(v23, v26, v24);
  sub_26618C610();
  sub_26618C5F0();
  v27 = sub_26618C620();
  v28 = sub_26618CB60();
  if (sub_26618CBB0())
  {
    v29 = *(v0 + 192);
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v27, v28, v31, "appsSearcherSearchApps", "", v30, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v34 = *(v0 + 168);
  v35 = *(v0 + 176);
  v36 = *(v0 + 160);

  (*(v35 + 16))(v33, v32, v34);
  v37 = sub_26618C670();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(v0 + 328) = sub_26618C660();
  v40 = *(v35 + 8);
  v41 = OUTLINED_FUNCTION_12_1();
  v42(v41);
  sub_266152B9C(v36 + 80, v0 + 56);
  v43 = *(v0 + 224);
  if (*(v0 + 80))
  {
    v44 = *(v0 + 272);
    sub_2660B9EB8((v0 + 56), v0 + 16);
    v92(v44, v91, v43);

    v45 = sub_26618C690();
    v46 = sub_26618CAA0();

    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 272);
    v49 = *(v0 + 224);
    v50 = *(v0 + 232);
    if (v47)
    {
      v51 = v4;
      v53 = *(v0 + 128);
      v52 = *(v0 + 136);
      v54 = OUTLINED_FUNCTION_49_0();
      v93 = v48;
      v95 = swift_slowAlloc();
      v55 = v95;
      *v54 = 136315138;
      v56 = v52 == 0;
      if (v52)
      {
        v57 = v53;
      }

      else
      {
        v57 = 0x3E6C696E3CLL;
      }

      if (v56)
      {
        v58 = 0xE500000000000000;
      }

      else
      {
        v58 = v51;
      }

      v59 = sub_266103A98(v57, v58, &v95);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2660B7000, v45, v46, "AppsSearcher.searchApps aceAppsResolver is available, performing on device app search based on %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      v60 = v93;
    }

    else
    {

      v60 = v48;
    }

    v90(v60, v49);
    v70 = *(v0 + 40);
    v71 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v70);
    OUTLINED_FUNCTION_2_19();
    v94 = (v77 + *v77);
    v79 = *(v78 + 4);
    v75 = swift_task_alloc();
    *(v0 + 336) = v75;
    *v75 = v0;
    v76 = sub_266151EFC;
  }

  else
  {
    v61 = *(v0 + 264);
    sub_2660C8040(v0 + 56, &qword_28005C930, qword_266193C48);
    v92(v61, v91, v43);
    v62 = sub_26618C690();
    v63 = sub_26618CAA0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2660B7000, v62, v63, "AppsSearcher.searchApps falling back to regexAppsResolver", v64, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v65 = *(v0 + 264);
    v66 = *(v0 + 224);
    v67 = *(v0 + 232);
    v68 = *(v0 + 160);

    v69 = OUTLINED_FUNCTION_12_1();
    (v90)(v69);
    v70 = v68[8];
    v71 = v68[9];
    __swift_project_boxed_opaque_existential_1(v68 + 5, v70);
    OUTLINED_FUNCTION_2_19();
    v94 = (v72 + *v72);
    v74 = *(v73 + 4);
    v75 = swift_task_alloc();
    *(v0 + 360) = v75;
    *v75 = v0;
    v76 = sub_26615212C;
  }

  v75[1] = v76;
  v80 = *(v0 + 144);
  v81 = *(v0 + 152);
  v83 = *(v0 + 128);
  v82 = *(v0 + 136);

  return v94(v83, v82, v80, v81, v70, v71);
}

uint64_t sub_266151EFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_26615278C;
  }

  else
  {
    *(v4 + 352) = a1;
    v7 = sub_266152024;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266152024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  __swift_destroy_boxed_opaque_existential_1(v16 + 2);
  v17 = v16[44];
  OUTLINED_FUNCTION_0_20();
  v19 = v16[26];
  v18 = v16[27];
  v20 = v16[25];
  v32 = v16[24];
  v33 = v16[23];
  v34 = v21;
  sub_266152954();

  (*(v19 + 8))(v18, v20);

  v22 = v16[1];
  OUTLINED_FUNCTION_36();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_26615212C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_266152874;
  }

  else
  {
    v5 = sub_266152240;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266152240()
{
  v85 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 312);
  (*(v0 + 304))(*(v0 + 256), *(v0 + 296), *(v0 + 224));

  v3 = sub_26618C690();
  v4 = sub_26618CAA0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 368);
    v82 = *(v0 + 320);
    v6 = *(v0 + 256);
    v7 = *(v0 + 224);
    v8 = *(v0 + 232);
    v9 = OUTLINED_FUNCTION_49_0();
    v10 = swift_slowAlloc();
    v84 = v10;
    *v9 = 136315138;
    v11 = type metadata accessor for Application();
    v12 = MEMORY[0x26677BD80](v5, v11);
    v14 = sub_266103A98(v12, v13, &v84);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_41_1(&dword_2660B7000, v15, v16, "AppsSearcher.searchApps via regex found apps: %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v17 = OUTLINED_FUNCTION_12_1();
    v82(v17);
  }

  else
  {
    v18 = *(v0 + 320);
    v19 = *(v0 + 256);
    v20 = *(v0 + 224);
    v21 = *(v0 + 232);

    v22 = OUTLINED_FUNCTION_12_1();
    v18(v22);
  }

  v23 = *(v0 + 152);
  v24 = sub_2661046B8(*(v0 + 368));
  if (!v24)
  {
    if (v23)
    {
      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 144);
      v28 = v25[3];
      v29 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v28);
      v30 = (*(v29 + 16))(v27, v26, v25[20], v28, v29);
      if (v30)
      {
        v31 = v30;
        v32 = *(v0 + 368);
        v34 = *(v0 + 304);
        v33 = *(v0 + 312);
        v35 = *(v0 + 296);
        v36 = *(v0 + 248);
        v37 = *(v0 + 224);

        v34(v36, v35, v37);
        v38 = v31;
        v39 = sub_26618C690();
        LOBYTE(v36) = sub_26618CAA0();

        if (os_log_type_enabled(v39, v36))
        {
          v40 = OUTLINED_FUNCTION_49_0();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          *(v40 + 4) = v38;
          *v41 = v31;
          v42 = v38;
          OUTLINED_FUNCTION_41_1(&dword_2660B7000, v43, v44, "AppsSearcher.searchApps via bundleId found app: %@");
          sub_2660C8040(v41, &qword_28005C1F8, &unk_266190550);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        v45 = *(v0 + 320);
        v46 = *(v0 + 248);
LABEL_15:
        v61 = *(v0 + 224);
        v62 = *(v0 + 232);

        v45(v46, v61);
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_26618F7E0;
        v83 = v63;
        *(v63 + 32) = v38;
        goto LABEL_18;
      }
    }
  }

  v47 = *(v0 + 368);
  if (*(v0 + 384) == 1)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 120), *(*(v0 + 160) + 144));
    v48 = sub_26615398C(v47);
    if (v48)
    {
      v49 = v48;
      v51 = *(v0 + 304);
      v50 = *(v0 + 312);
      v52 = *(v0 + 296);
      v53 = *(v0 + 240);
      v54 = *(v0 + 224);
      v55 = *(v0 + 368);

      v51(v53, v52, v54);
      v38 = v49;
      v39 = sub_26618C690();
      LOBYTE(v53) = sub_26618CAA0();

      if (os_log_type_enabled(v39, v53))
      {
        v56 = OUTLINED_FUNCTION_49_0();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v38;
        *v57 = v49;
        v58 = v38;
        OUTLINED_FUNCTION_41_1(&dword_2660B7000, v59, v60, "AppsSearcher.searchApps selected single app of: %@");
        sub_2660C8040(v57, &qword_28005C1F8, &unk_266190550);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v45 = *(v0 + 320);
      v46 = *(v0 + 240);
      goto LABEL_15;
    }

    if (v24)
    {
      v75 = *(v0 + 368) & 0xC000000000000001;
      sub_2661046C8(0);
      if (v75)
      {
        v38 = MEMORY[0x26677C150](0, *(v0 + 368));
        v77 = *(v0 + 368);
      }

      else
      {
        v38 = *(*(v0 + 368) + 32);
      }

      goto LABEL_16;
    }

    v76 = *(v0 + 368);

    v83 = MEMORY[0x277D84F90];
  }

  else
  {
    v83 = *(v0 + 368);
  }

LABEL_18:
  v64 = *(v0 + 328);
  v66 = *(v0 + 280);
  v65 = *(v0 + 288);
  v68 = *(v0 + 264);
  v67 = *(v0 + 272);
  v69 = *(v0 + 256);
  v78 = *(v0 + 248);
  v79 = *(v0 + 240);
  v71 = *(v0 + 208);
  v70 = *(v0 + 216);
  v72 = *(v0 + 200);
  v80 = *(v0 + 192);
  v81 = *(v0 + 184);
  sub_266152954();

  (*(v71 + 8))(v70, v72);

  v73 = *(v0 + 8);

  return v73(v83);
}

uint64_t sub_26615278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  __swift_destroy_boxed_opaque_existential_1(v17 + 2);
  v20 = v17[43];
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_4_18();

  (*(v18 + 8))(v19, v16);

  v21 = v17[1];
  OUTLINED_FUNCTION_36();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_266152874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  v20 = *(v17 + 376);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_4_18();

  (*(v18 + 8))(v19, v16);

  v21 = *(v17 + 8);
  OUTLINED_FUNCTION_36();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_266152954()
{
  v0 = sub_26618C640();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26618C600();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26618C620();
  sub_26618C650();
  v11 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v10, v11, v14, "appsSearcherSearchApps", v12, v13, 2u);
    MEMORY[0x26677CC30](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_266152B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C930, qword_266193C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_0_20()
{
  v1 = v0[41];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v7 = v0[30];
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_18()
{
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  v6 = v0[24];
  v7 = v0[23];

  return sub_266152954();
}

id sub_266152C70()
{
  sub_2660CD344(0, &qword_28005C938, 0x277D46F48);
  sub_2660CD344(0, &qword_28005C940, 0x277D46FA0);

  v0 = sub_266152D60();
  v1 = sub_266152DC4(v0);
  v4 = v1;
  if (v1)
  {
    v5 = [v1 currentState];
    if (v5)
    {
      v6 = v5;
      v2 = [v5 isRunning];

      return v2;
    }
  }

  return 0;
}

id sub_266152D60()
{
  v0 = sub_26618C8A0();

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingBundleIdentifier_];

  return v1;
}

id sub_266152DC4(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_26618A4C0();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_266152E98()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_1_16(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64) + 15;
  *(v0 + 32) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266152F40()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_2814B4A80);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "Shell not available, unable to hide scenes");
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  (*(v11 + 8))(v10, v12);
  sub_2660D3004();
  v13 = swift_allocError();
  OUTLINED_FUNCTION_4_19(v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_266153094()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_1_16(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64) + 15;
  *(v0 + 32) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26615313C()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_1_16(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64) + 15;
  *(v0 + 32) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2661531E4()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_2814B4A80);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "Shell not available, unable to close scene");
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  (*(v11 + 8))(v10, v12);
  sub_2660D3004();
  v13 = swift_allocError();
  OUTLINED_FUNCTION_4_19(v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

id sub_266153380(uint64_t a1, unint64_t a2)
{
  v5 = sub_26618C6B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v16 = InstalledAppProvider.getRecord(byBundleId:for:)(a1, a2, 0);
  if (!v16)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v5, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v29(v10);

    v30 = sub_26618C690();
    v31 = sub_26618CAB0();

    if (os_log_type_enabled(v30, v31))
    {
      swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_3_18();
      v41 = v32;
      *a1 = 136315138;
      *(a1 + 4) = sub_266103A98(a1, a2, &v41);
      _os_log_impl(&dword_2660B7000, v30, v31, "CarPlayUtil.hasCarPlaySupport ApplicationRecord for %s not found.", a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v17 = v16;
  v18 = [objc_opt_self() declarationForAppRecord_];
  if (!v18)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v5, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v33(v13);

    v34 = sub_26618C690();
    v35 = sub_26618CAB0();

    if (os_log_type_enabled(v34, v35))
    {
      swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_3_18();
      v41 = v36;
      *a1 = 136315138;
      *(a1 + 4) = sub_266103A98(a1, a2, &v41);
      _os_log_impl(&dword_2660B7000, v34, v35, "Unable to get CarPlayAppDeclaration for %s", a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    (*(v6 + 8))(v13, v5);
    return 0;
  }

  v19 = v18;
  v20 = [*(v2 + 16) effectivePolicyForAppDeclaration_];
  v21 = [v20 isCarPlaySupported];
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  __swift_project_value_buffer(v5, qword_2814B4A80);
  OUTLINED_FUNCTION_28_1();
  v22(v15);

  v23 = sub_26618C690();
  v24 = sub_26618CAA0();
  v40 = v5;
  v25 = v6;
  v26 = v24;

  if (os_log_type_enabled(v23, v26))
  {
    swift_slowAlloc();
    v38 = a1;
    v27 = OUTLINED_FUNCTION_3_18();
    v39 = v20;
    v28 = v27;
    v41 = v27;
    *a1 = 136315394;
    *(a1 + 4) = sub_266103A98(v38, a2, &v41);
    *(a1 + 12) = 1024;
    *(a1 + 14) = v21;
    _os_log_impl(&dword_2660B7000, v23, v26, "CarPlaySupportProvider support for %s = %{BOOL}d", a1, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {
  }

  (*(v25 + 8))(v15, v40);
  return v21;
}

uint64_t sub_2661538B4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_266153910()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF8A28]) init];
  [v1 setGeoSupported_];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return swift_slowAlloc();
}

id sub_26615398C(id *a1)
{
  v2 = sub_26618C6B0();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v185 = v4;
  v186 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v187 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v182 = &v178 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v178 - v11;
  v13 = sub_26618A5B0();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v189 = v15;
  *&v190 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  v21 = sub_26618A660();
  v22 = OUTLINED_FUNCTION_2_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v30 = sub_26618A670();
  v31 = OUTLINED_FUNCTION_2_2(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v178 - v41;
  if (sub_2661046B8(a1) == 1 && sub_2661046B8(a1))
  {
    sub_2661046C8(0);
    if ((a1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x26677C150](0, a1);
    }

    else
    {
      return a1[4];
    }
  }

  v191 = a1;
  v181 = v12;
  sub_2660CD344(0, &qword_28005C950, 0x277CFE1E8);
  v184 = sub_266154B28();
  sub_26618A650();
  (*(v24 + 104))(v29, *MEMORY[0x277CC9998], v21);
  sub_26618A5A0();
  sub_26618A640();
  v45 = *(v189 + 8);
  v46 = v20;
  v47 = v190;
  v45(v46, v190);
  (*(v24 + 8))(v29, v21);
  (*(v33 + 8))(v38, v30);
  v48 = 0;
  if (__swift_getEnumTagSinglePayload(v42, 1, v47) != 1)
  {
    v48 = sub_26618A550();
    v45(v42, v47);
  }

  isUniquelyReferenced_nonNull_native = objc_opt_self();
  v50 = [isUniquelyReferenced_nonNull_native predicateForEventsWithStartDateAfter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v51 = swift_allocObject();
  v190 = xmmword_26618F7E0;
  *(v51 + 16) = xmmword_26618F7E0;
  v52 = v184;
  *(v51 + 32) = v184;
  v53 = swift_allocObject();
  *(v53 + 16) = v190;
  v184 = v52;
  v54 = [isUniquelyReferenced_nonNull_native startDateSortDescriptorAscending_];
  v56 = v185;
  v55 = v186;
  if (!v54)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    sub_26618D030();
    __break(1u);
    goto LABEL_119;
  }

  v57 = v54;
  sub_2660CD344(0, &qword_28005C958, 0x277CFE1E0);
  *(v53 + 32) = v57;
  v183 = v50;
  v58 = sub_266154B8C(v50, v51, 0, 150, v53);
  sub_2660C5864(v188, v193);
  v59 = v194;
  v60 = v195;
  __swift_project_boxed_opaque_existential_1(v193, v194);
  v61 = *(v60 + 8);
  v62 = v58;
  v74 = v61(v58, v59, v60);
  v180 = 0;

  v75 = v74;
  __swift_destroy_boxed_opaque_existential_1(v193);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v77 = v182;
    goto LABEL_46;
  }

  v193[0] = 0;
  sub_2660CD344(0, &qword_28005C968, 0x277CFE1D8);
  sub_26618C9A0();

  v76 = v193[0];
  v77 = v182;
  if (!v193[0])
  {
LABEL_46:
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v99 = __swift_project_value_buffer(v55, qword_2814B4A80);
    (*(v56 + 16))(v77, v99, v55);
    v100 = v75;
    v101 = sub_26618C690();
    v102 = sub_26618CAB0();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v193[0] = v104;
      *v103 = 136315138;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C960, &qword_266193DC0);
      v105 = sub_26618C8D0();
      v107 = sub_266103A98(v105, v106, v193);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_2660B7000, v101, v102, "CoreDuetAppSelectionResolver#resolve could not convert core duet response to array of _DKEvent, actual class: %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      OUTLINED_FUNCTION_4_20();
      (*(v56 + 8))(v182, v55);
    }

    else
    {

      OUTLINED_FUNCTION_4_20();
      (*(v56 + 8))(v77, v55);
    }

    return 0;
  }

  v179 = v75;
  v182 = v62;
  v193[0] = MEMORY[0x277D84F90];
  v78 = sub_2661046B8(v76);
  v189 = v76;
  *&v190 = v78;
  v79 = 0;
  v187 = v76 + 32;
  v188 = v76 & 0xC000000000000001;
  isUniquelyReferenced_nonNull_native = v191;
  v80 = v191 & 0xC000000000000001;
  v81 = v191 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
  if (v79 == v190)
  {
    v79 = v193[0];
    *&v190 = sub_2661046B8(v193[0]);
    if (!v190)
    {

      OUTLINED_FUNCTION_4_20();
      return 0;
    }

    type metadata accessor for Application();
    v187 = sub_26618C850();
    v109 = sub_2661046B8(isUniquelyReferenced_nonNull_native);
    v86 = 0;
    v188 = v79;
    while (1)
    {
      while (1)
      {
        if (v109 == v86)
        {
          v135 = sub_26618C850();
          v136 = 0;
          v81 = 0;
          v137 = v79 & 0xC000000000000001;
          while (v190 != v136)
          {
            if (v137)
            {
              v138 = MEMORY[0x26677C150](v136, v79);
            }

            else
            {
              if (v136 >= *(v79 + 16))
              {
                goto LABEL_106;
              }

              v138 = *(v79 + 8 * v136 + 32);
            }

            v139 = v138;
            if (__OFADD__(v136, 1))
            {
              goto LABEL_105;
            }

            v140 = [v138 value];
            if (!v140)
            {
              goto LABEL_115;
            }

            v141 = sub_26615674C(v140);
            if (!v142)
            {
              goto LABEL_116;
            }

            v61 = v141;
            v143 = v142;
            sub_2661567BC(v81);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v193[0] = v135;
            v144 = OUTLINED_FUNCTION_3_19();
            v146 = sub_266129F20(v144, v145);
            if (__OFADD__(*(v135 + 16), (v147 & 1) == 0))
            {
              goto LABEL_107;
            }

            v81 = v146;
            v79 = v147;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C978, qword_266193DD0);
            v148 = sub_26618CE40();
            v135 = v193[0];
            if (v148)
            {
              v149 = OUTLINED_FUNCTION_3_19();
              v151 = sub_266129F20(v149, v150);
              if ((v79 & 1) != (v152 & 1))
              {
                goto LABEL_118;
              }

              v81 = v151;
            }

            if (v79)
            {
            }

            else
            {
              OUTLINED_FUNCTION_6_14(v135 + 8 * (v81 >> 6));
              v154 = (v153 + 16 * v81);
              *v154 = v61;
              v154[1] = v143;
              *(*(v135 + 56) + 8 * v81) = 0;
              v155 = *(v135 + 16);
              v85 = __OFADD__(v155, 1);
              v156 = v155 + 1;
              if (v85)
              {
                goto LABEL_109;
              }

              *(v135 + 16) = v156;
            }

            v157 = *(v135 + 56);
            v158 = *(v157 + 8 * v81);
            v85 = __OFADD__(v158, 1);
            v159 = v158 + 1;
            v79 = v188;
            if (v85)
            {
              goto LABEL_108;
            }

            *(v157 + 8 * v81) = v159;

            ++v136;
            v81 = sub_266154C94;
          }

          v193[0] = sub_2660DCF1C(v135);
          isUniquelyReferenced_nonNull_native = v180;
          sub_266155248(v193, v79);
          if (!isUniquelyReferenced_nonNull_native)
          {

            v86 = v193[0];
            i = v182;
            isUniquelyReferenced_nonNull_native = v179;
            if (!*(v193[0] + 16))
            {
              goto LABEL_99;
            }

            v61 = *(v193[0] + 32);
            v89 = *(v193[0] + 40);
            v160 = qword_2814B2C38;

            if (v160 != -1)
            {
LABEL_113:
              OUTLINED_FUNCTION_2_5();
            }

            v161 = v186;
            v162 = __swift_project_value_buffer(v186, qword_2814B4A80);
            v163 = v185;
            v164 = v181;
            (*(v185 + 16))(v181, v162, v161);

            v165 = sub_26618C690();
            v166 = sub_26618CAA0();

            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v191 = v89;
              v168 = v167;
              v169 = swift_slowAlloc();
              *&v190 = v61;
              v170 = v169;
              v193[0] = v169;
              *v168 = 136315138;
              v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C638, &unk_266192360);
              v172 = MEMORY[0x26677BD80](v86, v171);
              v174 = v173;

              v175 = sub_266103A98(v172, v174, v193);

              *(v168 + 4) = v175;
              _os_log_impl(&dword_2660B7000, v165, v166, "App values: %s", v168, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v170);
              OUTLINED_FUNCTION_7_2();
              OUTLINED_FUNCTION_7_2();

              (*(v163 + 8))(v164, v186);
            }

            else
            {

              (*(v163 + 8))(v164, v161);
            }

            v176 = OUTLINED_FUNCTION_3_19();
            v44 = sub_2661582D8(v176, v177, v187);

            OUTLINED_FUNCTION_4_20();
            sub_2661567BC(v81);
            return v44;
          }

LABEL_119:

          __break(1u);
          return result;
        }

        if (v80)
        {
          v110 = MEMORY[0x26677C150](v86, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v86 >= *(v81 + 16))
          {
            goto LABEL_104;
          }

          v110 = *(isUniquelyReferenced_nonNull_native + v86 + 4);
        }

        v111 = v110;
        v112 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_103;
        }

        v113 = sub_2660C9D30(v110);
        if (v114)
        {
          break;
        }

        ++v86;
      }

      v61 = v113;
      v89 = v114;
      v178 = v111;
      v115 = v187;
      swift_isUniquelyReferenced_nonNull_native();
      v193[0] = v115;
      v116 = OUTLINED_FUNCTION_3_19();
      v118 = sub_266129F20(v116, v117);
      v119 = *(v115 + 16);
      LODWORD(v187) = v120;
      if (__OFADD__(v119, (v120 & 1) == 0))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v121 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C970, &qword_266193DC8);
      if (sub_26618CE40())
      {
        v122 = OUTLINED_FUNCTION_3_19();
        v124 = sub_266129F20(v122, v123);
        isUniquelyReferenced_nonNull_native = v191;
        v79 = v188;
        if ((v187 & 1) != (v125 & 1))
        {
          goto LABEL_118;
        }

        v121 = v124;
        if (v187)
        {
LABEL_69:

          v187 = v193[0];
          v132 = *(v193[0] + 56);
          v133 = *(v132 + 8 * v121);
          v134 = v178;
          *(v132 + 8 * v121) = v178;

          goto LABEL_70;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v191;
        v79 = v188;
        if (v187)
        {
          goto LABEL_69;
        }
      }

      v126 = v193[0];
      OUTLINED_FUNCTION_6_14(v193[0] + 8 * (v121 >> 6));
      v128 = (v127 + 16 * v121);
      *v128 = v61;
      v128[1] = v89;
      v129 = v178;
      *(*(v126 + 56) + 8 * v121) = v178;

      v130 = *(v126 + 16);
      v85 = __OFADD__(v130, 1);
      v131 = v130 + 1;
      if (v85)
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v187 = v126;
      *(v126 + 16) = v131;
LABEL_70:
      v86 = v112;
    }
  }

  v82 = v188;
  sub_2661046C8(v79);
  if (v82)
  {
    v83 = MEMORY[0x26677C150](v79, v76);
  }

  else
  {
    v83 = *(v187 + 8 * v79);
  }

  v84 = v83;
  v85 = __OFADD__(v79++, 1);
  if (v85)
  {
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
    OUTLINED_FUNCTION_2_5();
    v63 = __swift_project_value_buffer(v79, qword_2814B4A80);
    v64 = v187;
    (*(v81 + 16))(v187, v63, v79);
    v65 = isUniquelyReferenced_nonNull_native;
    v66 = isUniquelyReferenced_nonNull_native;
    v67 = sub_26618C690();
    v68 = sub_26618CAB0();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v193[0] = v70;
      *v69 = 136315138;
      swift_getErrorValue();
      v71 = sub_26618D040();
      v73 = sub_266103A98(v71, v72, v193);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_2660B7000, v67, v68, "CoreDuetAppSelectionResolver#resolve error querying core duet - %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      OUTLINED_FUNCTION_4_20();
      (*(v81 + 8))(v187, v79);
    }

    else
    {

      OUTLINED_FUNCTION_4_20();
      (*(v81 + 8))(v64, v79);
    }

    return 0;
  }

  v86 = sub_2661046B8(isUniquelyReferenced_nonNull_native);
  for (i = 0; ; ++i)
  {
    if (v86 == i)
    {

      v76 = v189;
      goto LABEL_15;
    }

    if (v80)
    {
      v88 = MEMORY[0x26677C150](i, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (i >= *(v81 + 16))
      {
        goto LABEL_98;
      }

      v88 = *(isUniquelyReferenced_nonNull_native + i + 4);
    }

    v89 = v88;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v90 = sub_2660C9D30(v88);
    v61 = v91;
    v92 = [v84 value];
    if (!v92)
    {
      __break(1u);
      goto LABEL_112;
    }

    v93 = sub_26615674C(v92);
    v95 = v94;
    if (!v61)
    {

      if (!v95)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (!v94)
    {

LABEL_37:

      goto LABEL_38;
    }

    if (v90 == v93 && v61 == v94)
    {

LABEL_42:
      sub_26618CDE0();
      v98 = *(v193[0] + 16);
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
      isUniquelyReferenced_nonNull_native = v191;
      v76 = v189;
      goto LABEL_15;
    }

    v97 = sub_26618D000();

    if (v97)
    {
      goto LABEL_42;
    }

LABEL_38:
    isUniquelyReferenced_nonNull_native = v191;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  OUTLINED_FUNCTION_4_20();

  sub_2661567BC(v81);
  return 0;
}

id sub_266154B28()
{
  v0 = sub_26618C8A0();

  v1 = [swift_getObjCClassFromMetadata() eventStreamWithName_];

  return v1;
}

id sub_266154B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_2660CD344(0, &qword_28005C950, 0x277CFE1E8);
  v9 = sub_26618C990();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2660CD344(0, &qword_28005C980, 0x277CCAC98);
  v10 = sub_26618C990();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() eventQueryWithPredicate:a1 eventStreams:v9 offset:a3 limit:a4 sortDescriptors:v10];

  return v11;
}

void sub_266154C9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  v20 = sub_26618A5B0();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  if (a1[2] != a2[2])
  {
    return;
  }

  v72 = v25;
  v73 = v17;
  v75 = v3;
  v76 = v19;
  v68 = v26;
  v69 = v11;
  v70 = v14;
  v71 = &v67 - v24;
  v74 = v23;
  v28 = *a1;
  v27 = a1[1];
  v29 = *a2;
  v77 = a2[1];
  v78 = v29;
  v30 = sub_2661046B8(a3);
  v31 = 0;
  v79 = a3 & 0xC000000000000001;
  v32 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v30 == v31)
    {
      v33 = a3;
      v35 = 0;
      goto LABEL_20;
    }

    if (v79)
    {
      v33 = a3;
      v34 = MEMORY[0x26677C150](v31, a3);
    }

    else
    {
      if (v31 >= *(v32 + 16))
      {
        goto LABEL_56;
      }

      v33 = a3;
      v34 = *(a3 + 8 * v31 + 32);
    }

    v35 = v34;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v36 = [v34 value];
    if (!v36)
    {
      goto LABEL_59;
    }

    v37 = sub_26615674C(v36);
    if (v38)
    {
      break;
    }

LABEL_15:

    ++v31;
    a3 = v33;
  }

  if (v37 != v28 || v38 != v27)
  {
    v40 = sub_26618D000();

    if (v40)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_20:
  v41 = 0;
  v42 = v76;
  while (2)
  {
    if (v30 == v41)
    {
      v44 = 0;
      goto LABEL_37;
    }

    if (v79)
    {
      v43 = MEMORY[0x26677C150](v41, v33);
    }

    else
    {
      if (v41 >= *(v32 + 16))
      {
        goto LABEL_58;
      }

      v43 = *(v33 + 8 * v41 + 32);
    }

    v44 = v43;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_57;
    }

    v45 = [v43 value];
    if (!v45)
    {
      goto LABEL_60;
    }

    v46 = sub_26615674C(v45);
    if (!v47)
    {
LABEL_33:

      ++v41;
      continue;
    }

    break;
  }

  if (v46 != v78 || v47 != v77)
  {
    v49 = sub_26618D000();

    if (v49)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_37:
  v50 = v74;
  if (!v35)
  {

    __swift_storeEnumTagSinglePayload(v42, 1, 1, v50);
    goto LABEL_44;
  }

  v51 = [v35 startDate];
  if (v51)
  {
    v52 = v51;
    v53 = v73;
    sub_26618A590();

    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v73;
  }

  __swift_storeEnumTagSinglePayload(v53, v54, 1, v50);
  sub_266156834(v53, v42);
  if (__swift_getEnumTagSinglePayload(v42, 1, v50) != 1)
  {
    v57 = v71;
    v56 = v72;
    v58 = *(v72 + 32);
    v58(v71, v42, v50);
    if (v44)
    {
      v59 = [v44 startDate];
      if (v59)
      {
        v60 = v59;
        v61 = v69;
        sub_26618A590();

        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v69;
      }

      __swift_storeEnumTagSinglePayload(v61, v62, 1, v50);
      v63 = v70;
      sub_266156834(v61, v70);
      if (__swift_getEnumTagSinglePayload(v63, 1, v50) != 1)
      {
        v64 = v68;
        v58(v68, v63, v50);
        v65 = v71;
        sub_26618A560();

        v66 = *(v72 + 8);
        v66(v64, v50);
        v66(v65, v50);
        return;
      }

      (*(v72 + 8))(v71, v50);
    }

    else
    {
      (*(v56 + 8))(v57, v50);

      v63 = v70;
      __swift_storeEnumTagSinglePayload(v70, 1, 1, v50);
    }

    v55 = v63;
    goto LABEL_53;
  }

LABEL_44:
  v55 = v42;
LABEL_53:
  sub_2661567CC(v55);
}

uint64_t sub_266155248(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266138F94(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_2661552E4(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2661552E4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_26618CFC0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C638, &unk_266192360);
        v8 = sub_26618C9E0();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_266155584(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_26615542C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_26615542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 24 * a3 - 24);
    v10 = a1 - a3;
    while (2)
    {
      v11 = (v8 + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v23 = v10;
      v26 = v9;
      do
      {
        v25[0] = v12;
        v25[1] = v13;
        v25[2] = v14;
        v15 = v9[1];
        v16 = v9[2];
        v24[0] = *v9;
        v24[1] = v15;
        v24[2] = v16;

        sub_266154C9C(v25, v24, a5);
        if (v5)
        {
        }

        v18 = v17;

        if ((v18 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v13 = v9[4];
        v14 = v9[5];
        v20 = v9[2];
        v12 = v9[3];
        *(v9 + 3) = *v9;
        v9[5] = v20;
        *v9 = v12;
        v9[1] = v13;
        v9[2] = v14;
        v9 -= 3;
      }

      while (!__CFADD__(v10++, 1));
      ++v7;
      v9 = v26 + 3;
      v10 = v23 - 1;
      if (v7 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_266155584(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v186 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v192 = v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v201 = v183 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v193 = v183 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v183 - v16;
  v18 = sub_26618A5B0();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v189 = v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v200 = v183 - v23;
  v203 = a3;
  v24 = a3[1];
  v213 = a5;
  if (v24 < 1)
  {
    swift_bridgeObjectRetain_n();
    v27 = MEMORY[0x277D84F90];
LABEL_153:
    v205 = *v186;
    if (v205)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_155;
    }

    goto LABEL_205;
  }

  v185 = a4;
  v25 = a5 & 0xFFFFFFFFFFFFFF8;
  v206 = (a5 & 0xFFFFFFFFFFFFFF8);
  if (a5 < 0)
  {
    v25 = a5;
  }

  v183[1] = v25;
  v205 = (a5 & 0xC000000000000001);
  v198 = (v22 + 32);
  v188 = (v22 + 8);
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v191 = v17;
  v190 = v18;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v194 = v26;
    if (v26 + 1 >= v24)
    {
      v46 = v213;
      goto LABEL_26;
    }

    j = v27;
    v30 = *v203;
    v31 = (*v203 + 24 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    v210 = v32;
    v211 = v33;
    v212 = v34;
    v35 = (v30 + 24 * v28);
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    v207 = v36;
    v208 = v37;
    v209 = v38;

    v39 = v204;
    sub_266154C9C(&v210, &v207, v213);
    v204 = v39;
    if (v39)
    {
LABEL_163:
      swift_bridgeObjectRelease_n();

      goto LABEL_165;
    }

    v41 = v40;

    v42 = 24 * v28;
    v43 = v28;
    v44 = (v30 + 24 * v28 + 64);
    v45 = v43 + 2;
    v46 = v213;
    do
    {
      v47 = v45;
      if (v29 + 1 >= v24)
      {
        v29 = v24;
        if ((v41 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_12:
        v28 = v194;
        if (v29 >= v194)
        {
          v27 = j;
          if (v194 < v29)
          {
            if (v24 >= v47)
            {
              v56 = v47;
            }

            else
            {
              v56 = v24;
            }

            v57 = 24 * v56 - 8;
            v58 = v29;
            v59 = v194;
            do
            {
              if (v59 != --v58)
              {
                v60 = *v203;
                if (!*v203)
                {
                  goto LABEL_203;
                }

                v61 = (v60 + v42);
                v62 = (v60 + v57);
                v63 = *v61;
                v64 = *(v61 + 2);
                v65 = *v62;
                *v61 = *(v62 - 1);
                *(v61 + 2) = v65;
                *(v62 - 1) = v63;
                *v62 = v64;
              }

              ++v59;
              v57 -= 24;
              v42 += 24;
            }

            while (v59 < v58);
          }

          goto LABEL_26;
        }

        goto LABEL_197;
      }

      v49 = *(v44 - 1);
      v48 = *v44;
      v50 = *(v44 - 3);
      v210 = *(v44 - 2);
      v211 = v49;
      v212 = v48;
      v51 = *(v44 - 4);
      v207 = *(v44 - 5);
      v208 = v51;
      v209 = v50;

      v52 = v46;
      v53 = v204;
      sub_266154C9C(&v210, &v207, v52);
      v204 = v53;
      if (v53)
      {
        goto LABEL_163;
      }

      v55 = v54;

      v44 += 3;
      ++v29;
      v45 = v47 + 1;
      v46 = v213;
    }

    while (((v41 ^ v55) & 1) == 0);
    if (v41)
    {
      goto LABEL_12;
    }

LABEL_25:
    v27 = j;
    v28 = v194;
LABEL_26:
    v66 = v203[1];
    if (v29 < v66)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_193;
      }

      if (v29 - v28 < v185)
      {
        v67 = v28 + v185;
        if (__OFADD__(v28, v185))
        {
          __break(1u);
        }

        else
        {
          if (v67 >= v66)
          {
            v67 = v203[1];
          }

          if (v67 >= v28)
          {
            if (v29 == v67)
            {
              goto LABEL_34;
            }

            j = v27;
            v119 = *v203;
            v184 = v67;
            v187 = v119;
            while (1)
            {
              v120 = v119 + 24 * v29;
              v27 = *v120;
              v121 = *(v120 + 8);
              v122 = *(v120 + 16);
              v123 = v29;
              v197 = v29;
              while (1)
              {
                v124 = v119 + 24 * v123;
                v125 = v124 - 24;
                v126 = *(v124 - 24);
                v127 = *(v124 - 8);
                if (v122 != v127)
                {
                  break;
                }

                v195 = v119 + 24 * v123;
                v196 = v124 - 24;
                v199 = v123;
                v128 = *(v124 - 16);
                if (v46 >> 62)
                {
                  v164 = sub_26618CCD0();
                  v46 = v213;
                  v129 = v164;
                }

                else
                {
                  v129 = *(v206 + 2);
                }

                for (i = 0; ; ++i)
                {
                  if (v129 == i)
                  {
                    v132 = 0;
                    goto LABEL_111;
                  }

                  if (v205)
                  {
                    v131 = MEMORY[0x26677C150](i, v46);
                  }

                  else
                  {
                    if (i >= *(v206 + 2))
                    {
                      goto LABEL_170;
                    }

                    v131 = *(v46 + 8 * i + 32);
                  }

                  v132 = v131;
                  if (__OFADD__(i, 1))
                  {
                    __break(1u);
LABEL_170:
                    __break(1u);
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
LABEL_173:
                    __break(1u);
LABEL_174:
                    __break(1u);
LABEL_175:
                    __break(1u);
LABEL_176:
                    __break(1u);
LABEL_177:
                    __break(1u);
LABEL_178:
                    __break(1u);
LABEL_179:
                    __break(1u);
LABEL_180:
                    __break(1u);
LABEL_181:
                    __break(1u);
LABEL_182:
                    __break(1u);
LABEL_183:
                    __break(1u);
LABEL_184:
                    __break(1u);
LABEL_185:
                    __break(1u);
LABEL_186:
                    __break(1u);
LABEL_187:
                    __break(1u);
LABEL_188:
                    __break(1u);
LABEL_189:
                    __break(1u);
LABEL_190:
                    __break(1u);
LABEL_191:
                    __break(1u);
LABEL_192:
                    __break(1u);
LABEL_193:
                    __break(1u);
LABEL_194:
                    v27 = sub_266138DB8(v27);
LABEL_155:
                    v169 = v27 + 16;
                    v170 = *(v27 + 2);
                    for (j = v27; ; v27 = j)
                    {
                      if (v170 < 2)
                      {

                        return swift_bridgeObjectRelease_n();
                      }

                      v171 = *v203;
                      if (!*v203)
                      {
                        goto LABEL_202;
                      }

                      v172 = &v27[16 * v170];
                      v27 = *v172;
                      v173 = v169;
                      v174 = &v169[16 * v170];
                      v175 = *(v174 + 1);
                      v176 = (v171 + 24 * *v172);
                      v206 = (v171 + 24 * *v174);
                      v177 = v171 + 24 * v175;
                      v178 = v213;

                      v179 = v176;
                      v180 = v204;
                      sub_266156394(v179, v206, v177, v205, v178);
                      v204 = v180;
                      if (v180)
                      {
                        break;
                      }

                      if (v175 < v27)
                      {
                        goto LABEL_177;
                      }

                      if (v170 - 2 >= *v173)
                      {
                        goto LABEL_178;
                      }

                      v169 = v173;
                      *v172 = v27;
                      *(v172 + 1) = v175;
                      v181 = *v173 - v170;
                      if (*v173 < v170)
                      {
                        goto LABEL_179;
                      }

                      v170 = *v173 - 1;
                      sub_266138DCC(v174 + 16, v181, v174);
                      *v173 = v170;
                    }

                    swift_bridgeObjectRelease_n();
                  }

                  v133 = [v131 value];
                  if (!v133)
                  {
                    goto LABEL_198;
                  }

                  v134 = sub_26615674C(v133);
                  if (v135)
                  {
                    break;
                  }

LABEL_104:

                  v46 = v213;
                }

                if (v134 != v27 || v135 != v121)
                {
                  v137 = sub_26618D000();

                  if (v137)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_104;
                }

LABEL_110:
                v46 = v213;
LABEL_111:
                v138 = 0;
                while (2)
                {
                  if (v129 == v138)
                  {
                    v27 = 0;
                    goto LABEL_128;
                  }

                  if (v205)
                  {
                    v139 = MEMORY[0x26677C150](v138, v46);
                  }

                  else
                  {
                    if (v138 >= *(v206 + 2))
                    {
                      goto LABEL_172;
                    }

                    v139 = *(v46 + 8 * v138 + 32);
                  }

                  v27 = v139;
                  if (__OFADD__(v138, 1))
                  {
                    goto LABEL_171;
                  }

                  v140 = [v139 value];
                  if (!v140)
                  {
                    goto LABEL_199;
                  }

                  v141 = sub_26615674C(v140);
                  if (!v142)
                  {
LABEL_124:

                    ++v138;
                    v46 = v213;
                    continue;
                  }

                  break;
                }

                if (v141 != v126 || v142 != v128)
                {
                  v144 = sub_26618D000();

                  if (v144)
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_124;
                }

LABEL_128:
                v145 = v191;
                v146 = v190;
                if (!v132)
                {

                  __swift_storeEnumTagSinglePayload(v145, 1, 1, v146);
                  goto LABEL_145;
                }

                v147 = [v132 startDate];
                if (v147)
                {
                  v148 = v147;
                  v149 = v193;
                  sub_26618A590();

                  v150 = 0;
                }

                else
                {
                  v150 = 1;
                  v149 = v193;
                }

                __swift_storeEnumTagSinglePayload(v149, v150, 1, v146);
                sub_266156834(v149, v145);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v145, 1, v146);
                v152 = v201;
                if (EnumTagSinglePayload == 1)
                {

LABEL_145:
                  v165 = v145;
LABEL_149:
                  sub_2661567CC(v165);

                  v46 = v213;
                  v29 = v197;
                  v28 = v194;
                  v119 = v187;
                  goto LABEL_150;
                }

                v153 = *v198;
                (*v198)(v200, v145, v146);
                if (!v27)
                {
                  (*v188)(v200, v146);

                  __swift_storeEnumTagSinglePayload(v152, 1, 1, v146);
LABEL_148:
                  v165 = v152;
                  goto LABEL_149;
                }

                v154 = [v27 startDate];
                if (v154)
                {
                  v155 = v154;
                  v156 = v192;
                  sub_26618A590();

                  v157 = v156;
                  v158 = 0;
                }

                else
                {
                  v158 = 1;
                  v157 = v192;
                }

                __swift_storeEnumTagSinglePayload(v157, v158, 1, v146);
                v159 = v157;
                v152 = v201;
                sub_266156834(v159, v201);
                if (__swift_getEnumTagSinglePayload(v152, 1, v146) == 1)
                {
                  (*v188)(v200, v146);

                  goto LABEL_148;
                }

                v160 = v189;
                v153(v189, v152, v146);
                v161 = v200;
                v162 = sub_26618A560();

                v163 = *v188;
                (*v188)(v160, v146);
                v163(v161, v146);

                v46 = v213;
                v125 = v196;
                v29 = v197;
                v28 = v194;
                v124 = v195;
                v119 = v187;
                v123 = v199;
                if ((v162 & 1) == 0)
                {
                  goto LABEL_150;
                }

LABEL_139:
                if (!v119)
                {
                  goto LABEL_201;
                }

                --v123;
                v27 = *v124;
                v121 = *(v124 + 8);
                v122 = *(v124 + 16);
                *v124 = *v125;
                *(v124 + 16) = *(v125 + 16);
                *v125 = v27;
                *(v125 + 8) = v121;
                *(v125 + 16) = v122;
                if (v123 == v28)
                {
                  goto LABEL_150;
                }
              }

              if (v127 < v122)
              {
                goto LABEL_139;
              }

LABEL_150:
              if (++v29 == v184)
              {
                v29 = v184;
                v27 = j;
                goto LABEL_34;
              }
            }
          }
        }

        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_201:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_202:

        __break(1u);
LABEL_203:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_204:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_205:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }
    }

LABEL_34:
    if (v29 < v28)
    {
      goto LABEL_192;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v197 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v166 = *(v27 + 2);
      sub_2661299B0();
      v27 = v167;
    }

    v69 = *(v27 + 2);
    v70 = v69 + 1;
    if (v69 >= *(v27 + 3) >> 1)
    {
      sub_2661299B0();
      v27 = v168;
    }

    *(v27 + 2) = v70;
    v71 = v27 + 32;
    v72 = &v27[16 * v69 + 32];
    v73 = v197;
    *v72 = v28;
    *(v72 + 1) = v73;
    j = *v186;
    if (!j)
    {
      goto LABEL_204;
    }

    if (v69)
    {
      break;
    }

LABEL_84:
    v24 = v203[1];
    v26 = v197;
    if (v197 >= v24)
    {
      goto LABEL_153;
    }
  }

  v199 = v27 + 32;
  while (1)
  {
    v74 = v70 - 1;
    v75 = &v71[16 * v70 - 16];
    v76 = &v27[16 * v70];
    if (v70 >= 4)
    {
      v81 = &v71[16 * v70];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_180;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_181;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_183;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_186;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = *(v75 + 1);
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_191;
        }

        if (v79 < v105)
        {
          v74 = v70 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_55;
    }

    if (v70 == 3)
    {
      v77 = *(v27 + 4);
      v78 = *(v27 + 5);
      v87 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      v80 = v87;
LABEL_55:
      if (v80)
      {
        goto LABEL_182;
      }

      v92 = *v76;
      v91 = *(v76 + 1);
      v93 = __OFSUB__(v91, v92);
      v94 = v91 - v92;
      v95 = v93;
      if (v93)
      {
        goto LABEL_185;
      }

      v96 = *(v75 + 1);
      v97 = v96 - *v75;
      if (__OFSUB__(v96, *v75))
      {
        goto LABEL_188;
      }

      if (__OFADD__(v94, v97))
      {
        goto LABEL_190;
      }

      if (v94 + v97 >= v79)
      {
        if (v79 < v97)
        {
          v74 = v70 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    if (v70 < 2)
    {
      goto LABEL_184;
    }

    v99 = *v76;
    v98 = *(v76 + 1);
    v87 = __OFSUB__(v98, v99);
    v94 = v98 - v99;
    v95 = v87;
LABEL_70:
    if (v95)
    {
      goto LABEL_187;
    }

    v101 = *v75;
    v100 = *(v75 + 1);
    v87 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v87)
    {
      goto LABEL_189;
    }

    if (v102 < v94)
    {
      goto LABEL_84;
    }

LABEL_77:
    if (v74 - 1 >= v70)
    {
      goto LABEL_173;
    }

    v106 = *v203;
    if (!*v203)
    {
      goto LABEL_200;
    }

    v107 = v27;
    v108 = &v71[16 * v74 - 16];
    v109 = *v108;
    v110 = v74;
    v111 = &v71[16 * v74];
    v112 = *(v111 + 1);
    v113 = (v106 + 24 * *v108);
    v114 = (v106 + 24 * *v111);
    v115 = v106 + 24 * v112;
    v27 = v213;

    v116 = v113;
    v117 = v204;
    sub_266156394(v116, v114, v115, j, v27);
    v204 = v117;
    if (v117)
    {
      break;
    }

    if (v112 < v109)
    {
      goto LABEL_174;
    }

    v27 = v107;
    v118 = *(v107 + 2);
    if (v110 > v118)
    {
      goto LABEL_175;
    }

    *v108 = v109;
    *(v108 + 1) = v112;
    if (v110 >= v118)
    {
      goto LABEL_176;
    }

    v70 = v118 - 1;
    sub_266138DCC(v111 + 16, v118 - 1 - v110, v111);
    *(v107 + 2) = v118 - 1;
    v71 = v199;
    if (v118 <= 2)
    {
      goto LABEL_84;
    }
  }

  swift_bridgeObjectRelease_n();
LABEL_165:
}

uint64_t sub_266156394(char *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v11 = (a3 - a2) / 24;
  v61 = a5;
  if (v9 < v11)
  {
    sub_266129E30(a1, (a2 - a1) / 24, a4);
    v12 = &v6[3 * v9];
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v15 = v7[1];
      v16 = v7;
      v17 = v7[2];
      v58 = *v7;
      v59 = v15;
      v60 = v17;
      v18 = v6[1];
      v19 = v6[2];
      v55 = *v6;
      v56 = v18;
      v57 = v19;

      sub_266154C9C(&v58, &v55, v61);
      if (v5)
      {

        v45 = (v12 - v6) / 24;
        if (v8 < v6 || v8 >= &v6[3 * v45])
        {
          v43 = 24 * v45;
          v44 = v8;
          v47 = v6;
          goto LABEL_54;
        }

        if (v8 != v6)
        {
          v43 = 24 * v45;
          v44 = v8;
LABEL_51:
          v47 = v6;
LABEL_54:
          memmove(v44, v47, v43);
        }

        goto LABEL_55;
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v16;
      v7 = v16 + 3;
      v13 = a3;
      if (v8 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 24;
    }

    v22 = v6;
    v23 = v8 == v6;
    v6 += 3;
    v13 = a3;
    v7 = v16;
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_12:
    v24 = *v22;
    *(v8 + 16) = v22[2];
    *v8 = v24;
    goto LABEL_13;
  }

  sub_266129E30(a2, (a3 - a2) / 24, a4);
  v54 = &v6[3 * v11];
  v25 = a3;
  __src = v6;
LABEL_15:
  v26 = 0;
  v51 = v7 - 3;
  while (1)
  {
    v12 = &v54[v26 / 8];
    if (&v54[v26 / 8] <= v6 || v7 <= a1)
    {
LABEL_29:
      v41 = (v12 - v6) / 24;
      if (v7 < v6 || v7 >= &v6[3 * v41])
      {
        memmove(v7, v6, 24 * v41);
      }

      else if (v7 != v6)
      {
        v43 = 24 * v41;
        v44 = v7;
        goto LABEL_51;
      }

      goto LABEL_55;
    }

    v28 = v25;
    v30 = *(v12 - 2);
    v29 = v12 - 3;
    v31 = *(v12 - 1);
    v58 = *(v12 - 3);
    v59 = v30;
    v60 = v31;
    v32 = *(v7 - 2);
    v33 = v7;
    v34 = *(v7 - 1);
    v55 = *(v7 - 3);
    v56 = v32;
    v57 = v34;

    sub_266154C9C(&v58, &v55, v61);
    if (v5)
    {
      break;
    }

    v36 = v35;

    v37 = (v28 + v26);
    v38 = v28 + v26 - 24;
    if (v36)
    {
      v54 = (v54 + v26);
      v25 = v28 + v26 - 24;
      v6 = __src;
      v7 = v51;
      if (v37 != v33)
      {
        v40 = *v51;
        *(v38 + 16) = v51[2];
        *v38 = v40;
        v7 = v51;
        v25 = v38;
      }

      goto LABEL_15;
    }

    v25 = v28;
    if (&v54[v26 / 8] != (v28 + v26))
    {
      v39 = *v29;
      *(v28 + v26 - 8) = v29[2];
      *v38 = v39;
    }

    v26 -= 24;
    v6 = __src;
    v7 = v33;
  }

  v47 = __src;
  v48 = (v54 - __src + v26) / 24;
  if (v7 < __src || v7 >= &__src[3 * v48])
  {
    v43 = 24 * v48;
    v44 = v7;
    goto LABEL_54;
  }

  if (v7 != __src)
  {
    v43 = 24 * v48;
    v44 = v7;
    goto LABEL_54;
  }

LABEL_55:

  return 1;
}

uint64_t sub_26615674C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_2661567BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2661567CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266156834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_20()
{
  v2 = *(v0 - 264);
}

id sub_2661568EC(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CFE208]) init];
  v8[0] = 0;
  v3 = [v2 executeQuery:a1 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_26618A4C0();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2661569E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C998, &qword_266193EC0);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2661571A4(&unk_2877C9A20, 1, &v11 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  v9 = __swift_getEnumTagSinglePayload(v7, 1, v8) != 1;
  sub_2660C8040(v7, &qword_28005C998, &qword_266193EC0);
  return sub_266156ACC(a1, v9) & 0x101;
}

uint64_t sub_266156ACC(uint64_t a1, int a2)
{
  v3 = sub_26618C6B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v88 = v5;
  v89 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v87 = v9 - v8;
  OUTLINED_FUNCTION_18_2();
  v10 = sub_26618A660();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v96 = v12;
  v97 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v94 = v16 - v15;
  OUTLINED_FUNCTION_18_2();
  v95 = sub_26618A670();
  v17 = OUTLINED_FUNCTION_2_2(v95);
  v93 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v91 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v24 = OUTLINED_FUNCTION_3_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v92 = &v85 - v27;
  OUTLINED_FUNCTION_18_2();
  v90 = sub_26618A5B0();
  v28 = OUTLINED_FUNCTION_2_2(v90);
  v98 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v86 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v85 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C998, &qword_266193EC0);
  v38 = OUTLINED_FUNCTION_3_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v85 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  v51 = v49 - v50;
  v53 = MEMORY[0x28223BE20](v52);
  v85 = &v85 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v85 - v55;
  sub_2661571A4(&unk_2877C99C8, a2, v46);
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    sub_2660C8040(v46, &qword_28005C998, &qword_266193EC0);
    sub_2661571A4(&unk_2877C99F0, a2 & 1, v43);
    if (__swift_getEnumTagSinglePayload(v43, 1, v47) == 1)
    {
      sub_2660C8040(v43, &qword_28005C998, &qword_266193EC0);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      sub_266157674(v43, v51);
      v74 = *(v51 + *(v47 + 48));
      sub_2660C8040(v51, &qword_28005C990, &unk_266193EB0);
      v58 = 0;
      v57 = v74 > 2;
    }
  }

  else
  {
    sub_266157674(v46, v56);
    sub_26618A5A0();
    v59 = v91;
    sub_26618A650();
    v60 = v96;
    v61 = v97;
    v62 = v94;
    (*(v96 + 104))(v94, *MEMORY[0x277CC9968], v97);
    v63 = v92;
    sub_26618A640();
    (*(v60 + 8))(v62, v61);
    (*(v93 + 8))(v59, v95);
    v64 = v90;
    if (__swift_getEnumTagSinglePayload(v63, 1, v90) == 1)
    {
      v97 = v56;
      sub_2660C8040(v63, &qword_28005C948, &unk_266193DB0);
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v65 = v89;
      v66 = __swift_project_value_buffer(v89, qword_2814B4A98);
      v68 = v87;
      v67 = v88;
      (*(v88 + 16))(v87, v66, v65);
      v69 = sub_26618C690();
      v70 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_16_4(v70))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v71, v72, "SiriRemembersStoreProvider.getValidAggregateEntityUsage: Unable to create date range. We have to try to confirm");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v67 + 8))(v68, v65);
      (*(v98 + 8))(v36, v64);
      v73 = *&v97[*(v47 + 48)];
      sub_2660C8040(v97, &qword_28005C990, &unk_266193EB0);
      v58 = 256;
    }

    else
    {
      v75 = v98;
      v76 = v86;
      (*(v98 + 32))(v86, v63, v64);
      v77 = v85;
      sub_2661576E4(v56, v85);
      sub_26618A580();
      v79 = v78;
      v80 = *(v75 + 8);
      v80(v77, v64);
      sub_26618A580();
      v82 = v81 >= v79;
      v80(v76, v64);
      v80(v36, v64);
      v83 = *&v56[*(v47 + 48)];
      sub_2660C8040(v56, &qword_28005C990, &unk_266193EB0);
      v58 = v82 << 8;
    }

    v57 = 1;
  }

  return v58 | v57;
}

uint64_t sub_2661571A4@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v70 = a2;
  v69 = a1;
  v73 = a3;
  v4 = sub_26618C6B0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v71 = v6;
  v72 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v68 = &v66 - v13;
  OUTLINED_FUNCTION_18_2();
  v14 = sub_26618A5B0();
  v15 = OUTLINED_FUNCTION_2_2(v14);
  v66 = v16;
  v67 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C988, &qword_2661949F0);
  v23 = OUTLINED_FUNCTION_3_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  v28 = sub_26618C190();
  v29 = OUTLINED_FUNCTION_2_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_4();
  v36 = v35 - v34;
  v37 = sub_26618C4D0();
  if (!v38)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v50 = v72;
    v51 = __swift_project_value_buffer(v72, qword_2814B4A98);
    v52 = v71;
    (*(v71 + 16))(v11, v51, v50);
    v53 = sub_26618C690();
    v54 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v54))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v55, v56, "SiriRemembersStoreProvider.getEventData: Unable to search Siri Remembers for a nil roomName");
      OUTLINED_FUNCTION_28_3();
    }

    (*(v52 + 8))(v11, v50);
    goto LABEL_13;
  }

  v39 = v37;
  v40 = v38;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v41 = v70;
  sub_266164D78(v39, v40, v69, v27);

  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_2660C8040(v27, &qword_28005C988, &qword_2661949F0);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v42 = v72;
    v43 = __swift_project_value_buffer(v72, qword_2814B4A98);
    v44 = v71;
    v45 = v68;
    (*(v71 + 16))(v68, v43, v42);
    v46 = sub_26618C690();
    v47 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v47))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v48, v49, "SiriRemembersStoreProvider.getEventData: Did not find any previous interactions");
      OUTLINED_FUNCTION_28_3();
    }

    (*(v44 + 8))(v45, v42);
LABEL_13:
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
    v58 = v73;
    v59 = 1;
    return __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
  }

  (*(v31 + 32))(v36, v27, v28);
  sub_26618C180();
  if (v41)
  {
    v60 = sub_2660C93E8();
  }

  else
  {
    v60 = sub_2660C95D4();
  }

  v61 = v60;
  (*(v31 + 8))(v36, v28);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  v63 = *(v62 + 48);
  v64 = v73;
  (*(v66 + 32))(v73, v21, v67);
  *(v64 + v63) = v61;
  v58 = v64;
  v59 = 0;
  v57 = v62;
  return __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
}

uint64_t sub_266157674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661576E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriRemembersResult(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SiriRemembersResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_266157808(unsigned __int8 a1, char a2)
{
  v2 = 0x656369766544;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1836019538;
    }

    else
    {
      v4 = 0x797469746E45;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656369766544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1836019538;
    }

    else
    {
      v2 = 0x797469746E45;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15();
  }

  return v8 & 1;
}

uint64_t sub_2661578DC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 0x6D7269666E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6C65636E6163;
  }

  else
  {
    v5 = 0x6D7269666E6F63;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15();
  }

  return v8 & 1;
}

uint64_t sub_26615796C(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15();
  }

  return v8 & 1;
}

uint64_t sub_266157A38(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x69736976656C6574;
  }

  else
  {
    v3 = 0x76745F656C707061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v5 = 0x69736976656C6574;
  }

  else
  {
    v5 = 0x76745F656C707061;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15();
  }

  return v8 & 1;
}

uint64_t sub_266157AD0()
{
  OUTLINED_FUNCTION_8_14();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 6647407;
      v2 = 0xE300000000000000;
      break;
    case 2:
      v2 = 0xE300000000000000;
      v5 = 7105633;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v5 = 2037277037;
      break;
    case 4:
      v2 = 0xE300000000000000;
      v5 = 6645876;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v5 = 0x6573656874;
      break;
    case 6:
      v2 = 0xE200000000000000;
      v5 = 29801;
      break;
    case 7:
      v2 = 0xE400000000000000;
      v5 = 1936287860;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v1 = 6647407;
      v6 = 0xE300000000000000;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v1 = 7105633;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v1 = 2037277037;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v1 = 6645876;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v1 = 0x6573656874;
      break;
    case 6:
      v6 = 0xE200000000000000;
      v1 = 29801;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v1 = 1936287860;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15();
  }

  return v8 & 1;
}

uint64_t sub_266157C5C()
{
  OUTLINED_FUNCTION_23_7();
  v3 = 1852141679;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_25_10();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_19_10();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_18_11();
      break;
    case 4:
      v3 = OUTLINED_FUNCTION_22_8();
      v0 = 0xE90000000000006CLL;
      break;
    case 5:
      v3 = 2036427888;
      break;
    case 6:
      v0 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 7:
      v0 = 0xE600000000000000;
      v5 = 1633972341;
      goto LABEL_8;
    case 8:
      v3 = 0x537070416E65706FLL;
      v0 = 0xEF63696669636570;
      break;
    case 9:
      v0 = 0xE600000000000000;
      v5 = 1634038371;
LABEL_8:
      v3 = v5 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 10:
      v3 = 0x6170206863746566;
      v0 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_24_6();
      break;
    case 2:
      OUTLINED_FUNCTION_17_11();
      break;
    case 3:
      OUTLINED_FUNCTION_16_10();
      break;
    case 4:
      OUTLINED_FUNCTION_27_4();
      v6 = 0xE90000000000006CLL;
      break;
    case 5:
      v2 = 2036427888;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x686372616573;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v7 = 1633972341;
      goto LABEL_20;
    case 8:
      v2 = 0x537070416E65706FLL;
      v6 = 0xEF63696669636570;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v7 = 1634038371;
LABEL_20:
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 10:
      v2 = 0x6170206863746566;
      v6 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_15();
  }

  return v9 & 1;
}

uint64_t sub_266157E54()
{
  OUTLINED_FUNCTION_8_14();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE300000000000000;
      v5 = 7368801;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v5 = 0x7265646C6F66;
      break;
    case 3:
      v5 = 0x6E696874656D6F73;
      v2 = 0xE900000000000067;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE300000000000000;
      v1 = 7368801;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v1 = 0x7265646C6F66;
      break;
    case 3:
      v1 = 0x6E696874656D6F73;
      v6 = 0xE900000000000067;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15();
  }

  return v8 & 1;
}

uint64_t sub_266157F78()
{
  OUTLINED_FUNCTION_23_7();
  v3 = 1852141679;
  switch(v4)
  {
    case 1:
      v3 = 0x736972616D6D7573;
      v0 = 0xE900000000000065;
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_25_10();
      break;
    case 3:
      v3 = 1953068401;
      break;
    case 4:
      v0 = 0xE600000000000000;
      v3 = 0x627265566F6ELL;
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_18_11();
      break;
    case 6:
      v3 = OUTLINED_FUNCTION_19_10();
      break;
    case 7:
      v3 = OUTLINED_FUNCTION_22_8();
      v0 = 0xE90000000000006CLL;
      break;
    case 8:
      v0 = 0xE600000000000000;
      v3 = 0x6574656C6564;
      break;
    case 9:
      v0 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x736972616D6D7573;
      v5 = 0xE900000000000065;
      break;
    case 2:
      OUTLINED_FUNCTION_24_6();
      break;
    case 3:
      v2 = 1953068401;
      break;
    case 4:
      v5 = 0xE600000000000000;
      v2 = 0x627265566F6ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_16_10();
      break;
    case 6:
      OUTLINED_FUNCTION_17_11();
      break;
    case 7:
      OUTLINED_FUNCTION_27_4();
      v5 = 0xE90000000000006CLL;
      break;
    case 8:
      v5 = 0xE600000000000000;
      v2 = 0x6574656C6564;
      break;
    case 9:
      v5 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_14();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_6_15();
  }

  return v7 & 1;
}

uint64_t *InstalledAppProvider.shared.unsafeMutableAddressor()
{
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  return &static InstalledAppProvider.shared;
}

uint64_t sub_266158174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2661581C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266129F20(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_266158220@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266129F20(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2660CD384(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_266158284(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_266129FDC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 16 * v3;
  v6 = *v5;
  v7 = *(v5 + 8);
}

void *sub_2661582D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266129F20(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

BOOL sub_266158320(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_266158400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266158430(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266158438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266158468(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266158470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2661584A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2661584A4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2661584C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2661584FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2661584FC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_26615852C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26615855C(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_2661585D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2661585F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266158174(a1);
  *a2 = result;
  return result;
}

void *sub_26615861C()
{
  type metadata accessor for InstalledAppProvider();
  swift_allocObject();
  result = sub_2661588F4();
  static InstalledAppProvider.shared = result;
  return result;
}

uint64_t static InstalledAppProvider.shared.getter()
{
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }
}

id sub_2661586A4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_26615CEE8(0xD000000000000018, 0x8000000266197AF0);
  qword_28005C9A0 = result;
  return result;
}

uint64_t sub_2661586F4()
{
  v0 = sub_26618C850();
  swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(1, 0xD000000000000019, 0x80000002661979C0);
  swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(3, 0xD00000000000001BLL, 0x8000000266199F90);
  swift_isUniquelyReferenced_nonNull_native();
  result = sub_266139580(3, 0xD000000000000018, 0x8000000266198C10);
  qword_2814B47B0 = v0;
  return result;
}

uint64_t sub_2661587F4()
{
  v0 = sub_26618C850();
  swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(1, 0xD000000000000014, 0x8000000266199F30);
  swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(1, 0xD000000000000012, 0x8000000266199F50);
  swift_isUniquelyReferenced_nonNull_native();
  result = sub_266139580(1, 0xD000000000000016, 0x8000000266199F70);
  qword_28005C9A8 = v0;
  return result;
}

void *sub_2661588F4()
{
  v1 = v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_26615DCE4;
  *(v4 + 24) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9C8, qword_2661941B8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v1[14] = sub_26615E80C(&unk_2661941B0, v4, 120.0);
  return v1;
}

uint64_t sub_2661589E8()
{
  v141 = sub_26618A5B0();
  v134 = *(v141 - 8);
  v0 = *(v134 + 64);
  v1 = MEMORY[0x28223BE20](v141);
  v129 = &v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v133 = &v128 - v4;
  MEMORY[0x28223BE20](v3);
  v143 = &v128 - v5;
  v6 = sub_26618C6B0();
  v146 = *(v6 - 8);
  v7 = *(v146 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v139 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v148 = &v128 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v128 - v17;
  MEMORY[0x28223BE20](v16);
  v153 = &v128 - v18;
  v152 = sub_26618C600();
  v19 = *(v152 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v152);
  v23 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v128 - v24;
  v26 = sub_26618C630();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v26, qword_28005D100);
  (*(v27 + 16))(v30, v31, v26);
  sub_26618C5F0();
  v32 = sub_26618C620();
  v33 = sub_26618CB60();
  v34 = sub_26618CBB0();
  v140 = v6;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v32, v33, v36, "installedAppProviderInstalledApps", "enableTelemetry=YES", v35, 2u);
    v37 = v35;
    v6 = v140;
    MEMORY[0x26677CC30](v37, -1, -1);
  }

  v38 = v152;
  (*(v19 + 16))(v23, v25, v152);
  v39 = sub_26618C670();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v132 = sub_26618C660();
  (*(v19 + 8))(v25, v38);
  (*(v27 + 8))(v30, v26);
  if (qword_28005BC38 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v6, qword_28005D0E8);
  v43 = v146;
  v44 = *(v146 + 16);
  v45 = v153;
  v151 = v42;
  v152 = v146 + 16;
  v150 = v44;
  (v44)(v153);
  v46 = sub_26618C690();
  v47 = sub_26618CAA0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2660B7000, v46, v47, "InstalledAppProvider.lsRecordApps() starting", v48, 2u);
    MEMORY[0x26677CC30](v48, -1, -1);
  }

  v51 = *(v43 + 8);
  v50 = v43 + 8;
  v49 = v51;
  v51(v45, v6);
  sub_26618A5A0();
  v52 = swift_allocObject();
  v131 = v52;
  v53 = MEMORY[0x277D84F90];
  *(v52 + 16) = MEMORY[0x277D84F90];
  v54 = v52 + 16;
  v138 = swift_allocObject();
  *(v138 + 16) = v53;
  v55 = [objc_opt_self() enumeratorWithOptions_];
  v149 = "installedAppProviderWarm";
  v56 = &off_279BC8000;
  v57 = &off_279BC8000;
  *&v58 = 136315138;
  v144 = v58;
  v130 = v53;
  v137 = v53;
  v146 = v50;
  v147 = v51;
  v153 = v55;
  v136 = v54;
  while (1)
  {
    v59 = [v55 v56[383]];
    if (!v59)
    {
      break;
    }

    v60 = v59;
    v61 = v59;
    if ([v61 v57[375]])
    {
    }

    else
    {
      v62 = sub_2660C9CB4(v61);
      if (v63)
      {
        v64 = v62;
        v65 = v63;
        v66 = qword_28005BC98;

        if (v66 != -1)
        {
          swift_once();
        }

        v67 = qword_28005C9A0;
        if (qword_28005C9A0)
        {
          v68 = sub_26618C8A0();
          v69 = [v67 BOOLForKey_];

          if (v69)
          {
            v70 = v50;
            v71 = v145;
            v150(v145, v151, v6);

            v72 = sub_26618C690();
            v73 = sub_26618CAA0();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v154[0] = v75;
              *v74 = v144;
              *(v74 + 4) = sub_266103A98(v64, v65, v154);
              _os_log_impl(&dword_2660B7000, v72, v73, "Checking bundle: %s", v74, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v75);
              MEMORY[0x26677CC30](v75, -1, -1);
              v76 = v74;
              v6 = v140;
              v77 = v146;
              MEMORY[0x26677CC30](v76, -1, -1);

              v78 = v71;
              v50 = v77;
            }

            else
            {

              v78 = v71;
              v50 = v70;
            }

            v49 = v147;
            v147(v78, v6);
          }
        }

        if (qword_2814B4A70 != -1)
        {
          swift_once();
        }

        v84 = v61;
        v85 = InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(v64, v65, v60, 1);

        if (v85)
        {
          if (v67)
          {

            v96 = sub_26618C8A0();
            v97 = [v67 BOOLForKey_];

            if (v97)
            {
              v98 = v128;
              v150(v128, v151, v6);

              v99 = sub_26618C690();
              v100 = sub_26618CAA0();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                v154[0] = v102;
                *v101 = v144;
                *(v101 + 4) = sub_266103A98(v64, v65, v154);
                _os_log_impl(&dword_2660B7000, v99, v100, "Ignoring app: %s", v101, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v102);
                v103 = v102;
                v49 = v147;
                MEMORY[0x26677CC30](v103, -1, -1);
                MEMORY[0x26677CC30](v101, -1, -1);
              }

              v49(v98, v6);
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = *(v137 + 16);
            sub_266129600();
            v137 = v110;
          }

          v55 = v153;
          v104 = *(v137 + 16);
          if (v104 >= *(v137 + 24) >> 1)
          {
            sub_266129600();
            v137 = v111;
          }

          v105 = v137;
          *(v137 + 16) = v104 + 1;
          v106 = v105 + 16 * v104;
          *(v106 + 32) = v64;
          *(v106 + 40) = v65;
          v56 = &off_279BC8000;
          v57 = &off_279BC8000;
        }

        else
        {
          if (v67)
          {
            v86 = sub_26618C8A0();
            v87 = [v67 BOOLForKey_];

            if (v87)
            {
              v88 = v142;
              v150(v142, v151, v6);

              v89 = sub_26618C690();
              v90 = sub_26618CAA0();

              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v154[0] = v92;
                *v91 = v144;
                *(v91 + 4) = sub_266103A98(v64, v65, v154);
                _os_log_impl(&dword_2660B7000, v89, v90, "Allowing app: %s", v91, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v92);
                v93 = v92;
                v49 = v147;
                MEMORY[0x26677CC30](v93, -1, -1);
                MEMORY[0x26677CC30](v91, -1, -1);
              }

              v49(v88, v6);
            }
          }

          type metadata accessor for Application();
          v94 = v84;
          v95 = sub_2660C990C(v94);
          v56 = &off_279BC8000;
          v57 = &off_279BC8000;
          if (v95)
          {
            v107 = v95;
            v108 = v136;
            MEMORY[0x26677BD40]();
            if (*((*v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26618C9D0();
            }

            sub_26618C9F0();

            v130 = *v108;
            v55 = v153;
            v57 = &off_279BC8000;
          }

          else
          {

            v55 = v153;
          }
        }
      }

      else
      {
        v79 = v148;
        v150(v148, v151, v6);
        v80 = sub_26618C690();
        v81 = sub_26618CAB0();
        v56 = &off_279BC8000;
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_2660B7000, v80, v81, "InstalledAppProvider.lsRecordApps() error missing bundle identifier for LSApplicationRecord", v82, 2u);
          v83 = v82;
          v55 = v153;
          MEMORY[0x26677CC30](v83, -1, -1);
        }

        else
        {
        }

        v49(v79, v6);
        v57 = &off_279BC8000;
      }
    }
  }

  *(v138 + 16) = v137;
  v150(v139, v151, v6);
  v112 = v134;
  v113 = v133;
  v114 = v141;
  (*(v134 + 16))(v133, v143, v141);
  v115 = sub_26618C690();
  v116 = sub_26618CAA0();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 134218240;
    v118 = v129;
    sub_26618A5A0();
    sub_26618A530();
    v120 = v119;
    v121 = *(v112 + 8);
    v122 = v131;

    v121(v118, v141);
    v121(v113, v141);
    *(v117 + 4) = v120;
    *(v117 + 12) = 2048;
    *(v117 + 14) = sub_2661046B8(v130);

    _os_log_impl(&dword_2660B7000, v115, v116, "InstalledAppProvider.lsRecordApps() complete in %fms with %ld apps", v117, 0x16u);
    v123 = v117;
    v114 = v141;
    MEMORY[0x26677CC30](v123, -1, -1);

    v124 = v135;
  }

  else
  {

    v121 = *(v112 + 8);
    v121(v113, v114);
    v124 = v135;
    v122 = v131;
  }

  v147(v139, v6);

  v125 = v138;

  sub_26615A9AC(v124, v122, v125);

  v121(v143, v114);
  swift_beginAccess();
  v126 = *(v122 + 16);

  sub_26615A5B4();

  return v126;
}

uint64_t sub_2661599CC(void *a1, uint64_t (*a2)(void))
{
  *a1 = a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_266159A38()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  v2 = sub_26618C600();
  v1[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = sub_26618C6B0();
  v1[7] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v10 = sub_26618C630();
  v1[11] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[12] = v11;
  v13 = *(v12 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266159BAC, v0, 0);
}

uint64_t sub_266159BAC()
{
  if (qword_28005BC38 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v0[7], qword_28005D0E8);
  v33 = *(v3 + 16);
  v34 = v5;
  v33(v2);
  sub_26618C610();
  sub_26618C5F0();
  v6 = sub_26618C620();
  v7 = sub_26618CB60();
  if (sub_26618CBB0())
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v6, v7, v10, "installedAppProviderWarm", "enableTelemetry=YES", v9, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v11 = v0[12];
  v12 = v0[11];
  v13 = v0[9];
  v14 = v0[6];
  v31 = v0[13];
  v32 = v0[7];
  v16 = v0[4];
  v15 = v0[5];
  v17 = v0[3];

  (*(v16 + 16))(v15, v14, v17);
  v18 = sub_26618C670();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[14] = sub_26618C660();
  (*(v16 + 8))(v14, v17);
  (*(v11 + 8))(v31, v12);
  (v33)(v13, v34, v32);
  v21 = sub_26618C690();
  v22 = sub_26618CAD0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2660B7000, v21, v22, "InstalledAppProvider.warm() warming app search", v23, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[7];
  v27 = v0[2];

  (*(v25 + 8))(v24, v26);
  v28 = *(v27 + 112);
  v29 = swift_task_alloc();
  v0[15] = v29;
  *v29 = v0;
  v29[1] = sub_266159E94;

  return sub_26615C28C();
}

uint64_t sub_266159E94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 120);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_266159FA0, v3, 0);
}

uint64_t sub_266159FA0()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  sub_26615A04C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_26615A04C()
{
  v0 = sub_26618C640();
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26618C600();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26618C6B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26618C630();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC38 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_28005D0E8);
  (*(v9 + 16))(v12, v17, v8);
  sub_26618C610();
  v18 = sub_26618C620();
  sub_26618C650();
  v19 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    v20 = v26;
    if ((*(v26 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v3, v0);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v18, v19, v23, "installedAppProviderWarm", v21, v22, 2u);
    MEMORY[0x26677CC30](v22, -1, -1);
  }

  (*(v4 + 8))(v7, v28);
  return (*(v13 + 8))(v16, v27);
}

uint64_t sub_26615A42C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26615A4D0;

  return sub_26615C28C();
}

uint64_t sub_26615A4D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5_7();

  return v6(v5);
}

uint64_t sub_26615A5B4()
{
  v0 = sub_26618C640();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_26618C600();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26618C630();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_28005D100);
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_26618C620();
  sub_26618C650();
  v21 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    v15 = v22;
    if ((*(v22 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v15 + 8))(v3, v0);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v14, v21, v18, "installedAppProviderInstalledApps", v16, v17, 2u);
    MEMORY[0x26677CC30](v17, -1, -1);
  }

  (*(v4 + 8))(v7, v23);
  return (*(v9 + 8))(v12, v8);
}

void sub_26615A8F8()
{
  if (qword_28005BC98 != -1)
  {
    swift_once();
  }

  v0 = qword_28005C9A0;
  if (qword_28005C9A0)
  {
    v1 = sub_26618C8A0();
    v2 = [v0 BOOLForKey_];

    if (v2)
    {

      sub_26615BB34();
    }
  }
}

uint64_t sub_26615A9AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_28005BC98 != -1)
  {
    swift_once();
  }

  v5 = qword_28005C9A0;
  if (qword_28005C9A0)
  {
    v6 = sub_26618C8A0();
    v7 = [v5 BOOLForKey_];

    if (v7)
    {
      sub_26615AA7C(a2, a3);
    }
  }
}

uint64_t sub_26615AA7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26618C6B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC38 != -1)
  {
LABEL_21:
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_28005D0E8);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_26618C690();
  v11 = sub_26618CAA0();

  if (os_log_type_enabled(v10, v11))
  {
    v41 = v11;
    v42 = a2;
    v43 = v10;
    v44 = v8;
    v45 = v5;
    v46 = v4;
    v4 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49 = v39;
    v40 = v4;
    *v4 = 136315394;
    swift_beginAccess();
    v12 = *(a1 + 16);
    v13 = sub_2661046B8(v12);
    v8 = (v12 & 0xFFFFFFFFFFFFFF8);

    a2 = 0;
    v38 = 0;
    a1 = MEMORY[0x277D84F90];
    while (v13 != a2)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26677C150](a2, v12);
      }

      else
      {
        if (a2 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v14 = *(v12 + 8 * a2 + 32);
      }

      v4 = v14;
      v15 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v5 = sub_2660C9D30(v14);
      v17 = v16;

      ++a2;
      if (v17)
      {
        v18 = a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(a1 + 16);
          sub_266129600();
          v18 = v21;
        }

        v4 = *(v18 + 16);
        a1 = v18;
        if (v4 >= *(v18 + 24) >> 1)
        {
          sub_266129600();
          a1 = v22;
        }

        *(a1 + 16) = v4 + 1;
        v19 = a1 + 16 * v4;
        *(v19 + 32) = v5;
        *(v19 + 40) = v17;
        a2 = v15;
      }
    }

    v48[0] = a1;

    v24 = v38;
    sub_26615CFA0(v48);
    if (v24)
    {

      __break(1u);
    }

    else
    {

      v25 = sub_26610047C(v48[0]);
      v27 = v26;

      v28 = sub_266103A98(v25, v27, &v49);

      v29 = v40;
      *(v40 + 4) = v28;
      *(v29 + 12) = 2080;
      v30 = v42;
      swift_beginAccess();
      v47 = *(v30 + 16);
      swift_bridgeObjectRetain_n();
      sub_26615CFA0(&v47);
      v31 = v41;

      v32 = sub_26610047C(v47);
      v34 = v33;

      v35 = sub_266103A98(v32, v34, &v49);

      *(v29 + 14) = v35;
      v36 = v43;
      _os_log_impl(&dword_2660B7000, v43, v31, "Launchable apps: %s\nIgnored apps: %s", v29, 0x16u);
      v37 = v39;
      swift_arrayDestroy();
      MEMORY[0x26677CC30](v37, -1, -1);
      MEMORY[0x26677CC30](v29, -1, -1);

      return (*(v45 + 8))(v44, v46);
    }
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t InstalledAppProvider.getApp(byBundleId:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26615AF78(a1, a2, a3);
  if (v3 == 1)
  {
    return 0;
  }

  v5 = v3;

  return v5;
}

uint64_t InstalledAppProvider.getRecord(byBundleId:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26615AF78(a1, a2, a3);
  if (v3 == 1)
  {
    return 0;
  }

  v5 = v4;

  return v5;
}

uint64_t sub_26615AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26618C6B0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = sub_26615CE0C(a1, a2, 1);
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  v12 = v11;
  if (InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(a1, a2, v11, a3))
  {

    return 1;
  }

  else
  {
    type metadata accessor for Application();
    return sub_2660C990C(v12);
  }
}

Swift::String_optional __swiftcall InstalledAppProvider.getAdamId(byBundleId:for:)(Swift::String byBundleId, SiriAppLaunchIntents::Actions a2)
{
  object = byBundleId._object;
  countAndFlagsBits = byBundleId._countAndFlagsBits;
  v5 = sub_26618C6B0();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = sub_26615AF78(countAndFlagsBits, object, a2.rawValue);
  if (v14 != 1 && (v16 = v15, v14, v16) && (v17 = [v16 iTunesMetadata], v16, v18 = objc_msgSend(v17, sel_storeItemIdentifier), v17, v18))
  {
    v27 = v18;
    v19 = sub_26618CFD0();
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v5, qword_2814B4A80);
    (*(v8 + 16))(v13, v21, v5);

    v22 = sub_26618C690();
    v23 = sub_26618CA90();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_266103A98(countAndFlagsBits, object, &v27);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    (*(v8 + 8))(v13, v5);
    v19 = 0;
    v20 = 0;
  }

  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

Swift::Bool __swiftcall InstalledAppProvider.isHidden(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v3 = sub_26615CE0C(countAndFlagsBits, object, 1);
  v5 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 appProtectionHidden];

  return v4;
}

uint64_t InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_26618C6B0();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v23 = OUTLINED_FUNCTION_26_7();
    v14 = sub_26615CE0C(v23, v24, 1);
  }

  v15 = a3;
  v16 = [v14 appProtectionHidden];

  if (v16)
  {

    v43 = 1;
    return v43 & 1;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_26615CEE8(0xD000000000000018, 0x8000000266197AF0);
  if (v18)
  {
    v19 = v18;
    v20 = sub_26618C8A0();
    v21 = [v19 BOOLForKey_];

    if (v21)
    {
      sub_26615A8F8();

      v43 = 0;
      return v43 & 1;
    }
  }

  sub_26618C260();
  sub_26618C250();
  sub_26618C240();
  v25 = sub_26618C280();

  if (v25)
  {
    if (qword_28005BCA0 != -1)
    {
      swift_once();
    }

    v26 = OUTLINED_FUNCTION_26_7();
    v29 = sub_2661581C8(v26, v27, v28);
    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2814B47A8 != -1)
  {
    swift_once();
  }

  v31 = OUTLINED_FUNCTION_26_7();
  v29 = sub_2661581C8(v31, v32, v33);
  if ((v34 & 1) == 0)
  {
LABEL_18:
    v42 = v29;

    v43 = (a4 & ~v42) != 0;
    return v43 & 1;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CFA5E0]) init];
  v36 = [v35 isClarityBoardEnabled];

  if (v36)
  {
    sub_26615CF5C();
    v37 = [swift_getObjCClassFromMetadata() sharedInstance];
    v38 = [v37 applicationBundleIdentifiers];

    v39 = sub_26618C9B0();
    v49[0] = a1;
    v49[1] = a2;
    MEMORY[0x28223BE20](v40);
    *(&v48 - 2) = v49;
    v41 = sub_266158320(sub_26615DA50, (&v48 - 4), v39);

    v43 = !v41;
    return v43 & 1;
  }

  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v45 = result;
    OUTLINED_FUNCTION_26_7();
    v46 = sub_26618C8A0();
    v47 = [v45 containsObject_];

    v43 = v47 ^ 1;
    return v43 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26615BB34()
{
  v0 = sub_26618C6B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC38 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28005D0E8);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_26618C690();
  v7 = sub_26618CAA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2660B7000, v6, v7, "\tIgnoring hidden app check due to set user default", v8, 2u);
    MEMORY[0x26677CC30](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t InstalledAppProvider.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InstalledAppProvider.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26615BD48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660FF734;

  return InstalledAppProvider.installedApps()();
}

uint64_t sub_26615BE7C()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_26618A5B0();
  v1[7] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26615BF78()
{
  OUTLINED_FUNCTION_29_3();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_32_4();
  sub_26615DC04(v2 + v7, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_2661567CC(v3[6]);
LABEL_7:
    v15 = swift_task_alloc();
    v3[17] = v15;
    *v15 = v3;
    v16 = sub_26615DDC0;
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_28_9();
  v9(v8);
  v10 = *(v1 + 40);
  v3[12] = v10;
  v11 = v3[11];
  if (!v10)
  {
    (*(v3[8] + 8))(v3[11], v3[7]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_10();
  sub_26618A5A0();
  v12 = -*(v5 + 16);
  sub_26618A540();
  v13 = OUTLINED_FUNCTION_12_12();
  (v5)(v13);
  v14 = sub_26618A570();
  (v5)(v7, v4);
  if ((v14 & 1) == 0)
  {
    (v5)(v3[11], v3[7]);
    v21 = v3[10];
    v20 = v3[11];
    v22 = v3[9];
    v23 = v3[6];

    v24 = v3[1];
    OUTLINED_FUNCTION_29_0();

    __asm { BRAA            X2, X16 }
  }

  v15 = swift_task_alloc();
  v3[15] = v15;
  *v15 = v3;
  v16 = sub_26615C19C;
LABEL_8:
  v15[1] = v16;
  v17 = v3[5];
  OUTLINED_FUNCTION_29_0();

  return sub_26615C8C8();
}

uint64_t sub_26615C19C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 120);
  v9 = *v0;
  *(v2 + 128) = v4;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26615C28C()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_26618A5B0();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615C39C, 0, 0);
}

uint64_t sub_26615C39C()
{
  OUTLINED_FUNCTION_29_3();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_32_4();
  sub_26615DC04(v2 + v7, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_2661567CC(v3[6]);
LABEL_7:
    v15 = swift_task_alloc();
    v3[17] = v15;
    *v15 = v3;
    v16 = sub_26615C754;
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_28_9();
  v9(v8);
  v10 = *(v1 + 40);
  v3[12] = v10;
  v11 = v3[11];
  if (!v10)
  {
    (*(v3[8] + 8))(v3[11], v3[7]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_10();
  sub_26618A5A0();
  v12 = -*(v5 + 16);
  sub_26618A540();
  v13 = OUTLINED_FUNCTION_12_12();
  (v5)(v13);
  v14 = sub_26618A570();
  (v5)(v7, v4);
  if ((v14 & 1) == 0)
  {
    (v5)(v3[11], v3[7]);
    v21 = v3[10];
    v20 = v3[11];
    v22 = v3[9];
    v23 = v3[6];

    v24 = v3[1];
    OUTLINED_FUNCTION_29_0();

    __asm { BRAA            X2, X16 }
  }

  v15 = swift_task_alloc();
  v3[15] = v15;
  *v15 = v3;
  v16 = sub_26615C5C0;
LABEL_8:
  v15[1] = v16;
  v17 = v3[5];
  OUTLINED_FUNCTION_29_0();

  return sub_26615CAF8();
}

uint64_t sub_26615C5C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 120);
  v9 = *v0;
  *(v2 + 128) = v4;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26615C6B0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];

  v2(v4, v5);
  v6 = v0[16];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[6];

  v11 = OUTLINED_FUNCTION_5_7();

  return v12(v11);
}

uint64_t sub_26615C754(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = v3[11];
  v8 = v3[10];
  v9 = v3[9];
  v10 = v3[6];

  v11 = *(v5 + 8);

  return v11(a1);
}

uint64_t sub_26615C8C8()
{
  *(v1 + 48) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615C964, 0, 0);
}

uint64_t sub_26615C964()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_20();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_21_12(v3);

  return v5(v4);
}

uint64_t sub_26615CA14()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26615CAF8()
{
  *(v1 + 48) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615CB94, 0, 0);
}

uint64_t sub_26615CB94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_20();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_21_12(v3);

  return v5(v4);
}

uint64_t sub_26615CC44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26615CD28()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v2[5];
  v2[5] = v0[5];

  sub_26618A5A0();
  v4 = sub_26618A5B0();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  v5 = *(*v2 + 112);
  swift_beginAccess();
  sub_26615DC74(v1, v2 + v5);
  swift_endAccess();

  v6 = OUTLINED_FUNCTION_5_7();

  return v7(v6);
}

id sub_26615CE0C(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26618C8A0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_26618A4C0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_26615CEE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_26615CF4C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26615CF5C()
{
  result = qword_28005C9B0;
  if (!qword_28005C9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C9B0);
  }

  return result;
}

uint64_t sub_26615CFA0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266138FA8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26615D00C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_26615D00C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26618CFC0();
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
        v6 = sub_26618C9E0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26615D1FC(v7, v8, a1, v4);
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
    return sub_26615D100(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26615D100(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2660CCD6C();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
    while (2)
    {
      v9 = (v6 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      v19 = v7;
      v12 = v8;
      do
      {
        v17 = *(v12 - 2);
        v18 = *(v12 - 1);
        result = sub_26618CC10();
        if (result != -1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *v12;
        v14 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v14;
        *(v12 - 2) = v13;
        v12 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v8 += 2;
      v7 = v19 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26615D1FC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v105 = v7;
        v9 = (*a3 + 16 * v6);
        v11 = *v9;
        v10 = v9[1];
        v12 = (*a3 + 16 * v8);
        v13 = *v12;
        v14 = v12[1];
        v15 = 16 * v8;
        v112 = v11;
        v113 = v10;
        sub_2660CCD6C();
        v4 = &v112;
        v16 = OUTLINED_FUNCTION_20_13();
        v17 = v12 + 3;
        v106 = v8;
        v18 = v8 + 2;
        while (1)
        {
          v19 = v18;
          if (++v6 >= v5)
          {
            break;
          }

          v21 = v17 + 2;
          v20 = v17[2];
          v22 = *(v17 - 1);
          v24 = v17;
          v23 = *v17;
          v112 = v24[1];
          v113 = v20;
          v4 = &v112;
          v25 = (v16 == -1) ^ (OUTLINED_FUNCTION_20_13() != -1);
          v18 = v19 + 1;
          v17 = v21;
          if ((v25 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v16 == -1)
        {
          if (v6 < v106)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return;
          }

          if (v106 >= v6)
          {
            v7 = v105;
            v8 = v106;
          }

          else
          {
            if (v5 >= v19)
            {
              v26 = v19;
            }

            else
            {
              v26 = v5;
            }

            v27 = 16 * v26;
            v28 = v6;
            v29 = v106;
            v7 = v105;
            v8 = v106;
            do
            {
              if (v29 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v31 = (v30 + v15);
                v32 = v30 + v27;
                v33 = *v31;
                v34 = v31[1];
                *v31 = *(v32 - 16);
                *(v32 - 16) = v33;
                *(v32 - 8) = v34;
              }

              ++v29;
              v27 -= 16;
              v15 += 16;
            }

            while (v29 < v28);
          }
        }

        else
        {
          v7 = v105;
          v8 = v106;
        }
      }

      v35 = a3[1];
      if (v6 < v35)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_123;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_124;
          }

          if (v8 + a4 >= v35)
          {
            v36 = a3[1];
          }

          else
          {
            v36 = v8 + a4;
          }

          if (v36 < v8)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v6 != v36)
          {
            v37 = *a3;
            sub_2660CCD6C();
            v38 = (v37 + 16 * v6);
            v107 = v8;
            v39 = v8 - v6;
            v109 = v36;
            do
            {
              v40 = (v37 + 16 * v6);
              v41 = *v40;
              v42 = v40[1];
              v43 = v39;
              v44 = v38;
              do
              {
                v45 = *(v44 - 2);
                v46 = *(v44 - 1);
                v112 = v41;
                v113 = v42;
                v4 = &v112;
                if (OUTLINED_FUNCTION_20_13() != -1)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_128;
                }

                v41 = *v44;
                v42 = v44[1];
                *v44 = *(v44 - 1);
                *(v44 - 1) = v42;
                *(v44 - 2) = v41;
                v44 -= 2;
              }

              while (!__CFADD__(v43++, 1));
              ++v6;
              v38 += 2;
              --v39;
            }

            while (v6 != v109);
            v6 = v109;
            v8 = v107;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = *(v7 + 2);
        sub_2661299B0();
        v7 = v94;
      }

      v48 = *(v7 + 2);
      v49 = v48 + 1;
      if (v48 >= *(v7 + 3) >> 1)
      {
        sub_2661299B0();
        v7 = v95;
      }

      *(v7 + 2) = v49;
      v4 = v7 + 32;
      v50 = &v7[16 * v48 + 32];
      *v50 = v8;
      *(v50 + 1) = v6;
      v110 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v48)
      {
        while (1)
        {
          v51 = v49 - 1;
          v52 = &v4[16 * v49 - 16];
          v53 = &v7[16 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v54 = *(v7 + 4);
            v55 = *(v7 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_60:
            if (v57)
            {
              goto LABEL_109;
            }

            v69 = *v53;
            v68 = *(v53 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_112;
            }

            v73 = *(v52 + 1);
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_117;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v49 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v49 < 2)
          {
            goto LABEL_111;
          }

          v76 = *v53;
          v75 = *(v53 + 1);
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_75:
          if (v72)
          {
            goto LABEL_114;
          }

          v78 = *v52;
          v77 = *(v52 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (v79 < v71)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v51 - 1 >= v49)
          {
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
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v83 = v7;
          v84 = &v4[16 * v51 - 16];
          v85 = *v84;
          v86 = v51;
          v7 = &v4[16 * v51];
          v87 = *(v7 + 1);
          v88 = v114;
          sub_26615D814((*a3 + 16 * *v84), (*a3 + 16 * *v7), (*a3 + 16 * v87), v110);
          v114 = v88;
          if (v88)
          {
            goto LABEL_91;
          }

          if (v87 < v85)
          {
            goto LABEL_104;
          }

          v89 = v6;
          v90 = v4;
          v4 = *(v83 + 2);
          if (v86 > v4)
          {
            goto LABEL_105;
          }

          *v84 = v85;
          *(v84 + 1) = v87;
          if (v86 >= v4)
          {
            goto LABEL_106;
          }

          v91 = v86;
          v49 = (v4 - 1);
          sub_266138DCC(v7 + 16, &v4[-v91 - 1], v7);
          v7 = v83;
          *(v83 + 2) = v4 - 1;
          v92 = v4 > 2;
          v4 = v90;
          v6 = v89;
          if (!v92)
          {
            goto LABEL_89;
          }
        }

        v58 = &v4[16 * v49];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_107;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_108;
        }

        v65 = *(v53 + 1);
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_110;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = *(v52 + 1);
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_121;
          }

          if (v56 < v82)
          {
            v51 = v49 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_93;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_93:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v7 = sub_266138DB8(v7);
  }

  v96 = (v7 + 16);
  for (i = *(v7 + 2); i >= 2; *v96 = i)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v98 = &v7[16 * i];
    v99 = *v98;
    v100 = &v96[2 * i];
    v101 = *(v100 + 1);
    v102 = v114;
    sub_26615D814((*a3 + 16 * *v98), (*a3 + 16 * *v100), (*a3 + 16 * v101), v4);
    v114 = v102;
    if (v102)
    {
      break;
    }

    if (v101 < v99)
    {
      goto LABEL_118;
    }

    if (i - 2 >= *v96)
    {
      goto LABEL_119;
    }

    *v98 = v99;
    *(v98 + 1) = v101;
    v103 = *v96 - i;
    if (*v96 < i)
    {
      goto LABEL_120;
    }

    i = *v96 - 1;
    sub_266138DCC(v100 + 16, v103, v100);
  }

LABEL_91:
}

uint64_t sub_26615D814(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_266129DF0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v25 = *v6;
      v27 = *(v6 + 1);
      v21 = *v4;
      v23 = *(v4 + 1);
      sub_2660CCD6C();
      if (OUTLINED_FUNCTION_14_14() != -1)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v7 = *v12;
    goto LABEL_10;
  }

  sub_266129DF0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v26 = *(v10 - 2);
    v28 = *(v10 - 1);
    v22 = *(v6 - 2);
    v24 = *(v6 - 1);
    sub_2660CCD6C();
    v16 = OUTLINED_FUNCTION_14_14();
    v17 = v5 + 16;
    if (v16 == -1)
    {
      v13 = v17 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v17)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v18 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

uint64_t sub_26615D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26618D000() & 1;
  }
}

unint64_t sub_26615DA74()
{
  result = qword_28005C9B8;
  if (!qword_28005C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C9B8);
  }

  return result;
}

unint64_t sub_26615DACC()
{
  result = qword_28005C9C0;
  if (!qword_28005C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C9C0);
  }

  return result;
}

unint64_t sub_26615DB24()
{
  result = qword_2814B2D20;
  if (!qword_2814B2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2D20);
  }

  return result;
}

unint64_t sub_26615DB7C()
{
  result = qword_2814B2D18;
  if (!qword_2814B2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2D18);
  }

  return result;
}

uint64_t sub_26615DC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26615DC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26615DD08(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2660DF700;

  return sub_2661599CC(a1, v5);
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_20()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  v3 = *(v1 + 24) + **(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_26618D000();
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  *(v1 + 104) = *(v2 + 8);
  *(v1 + 112) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return sub_26618CC10();
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_26618CC10();
}

uint64_t OUTLINED_FUNCTION_28_9()
{
  result = v0[11];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v0[8] + 32);
  return result;
}

void OUTLINED_FUNCTION_29_3()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = **(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_beginAccess();
}

void *sub_26615E04C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9D0, &unk_2661942C0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v1[2] = sub_26615E810(&unk_2661942B8, v3, 120.0);
  return v1;
}

uint64_t sub_26615E108(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26615E19C;

  return sub_26615E2B4();
}

uint64_t sub_26615E19C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 32) = v4;

  return MEMORY[0x2822009F8](sub_26615E294, 0, 0);
}

uint64_t sub_26615E2B4()
{
  v1 = sub_26618C6B0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615E370, 0, 0);
}

uint64_t sub_26615E370()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "MarketplaceInfoDataProvider fetching distributors and caching...", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);
  v11 = *(MEMORY[0x277CD5038] + 4);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_26615E4F8;

  return MEMORY[0x2821237B8]();
}

uint64_t sub_26615E4F8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(v2);
}

uint64_t sub_26615E620()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26615E6C4;

  return sub_26615BE7C();
}

uint64_t sub_26615E6C4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_26615E7B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26615E810(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  *(v3 + 40) = 0;
  v11 = *(*v3 + 112);
  v12 = sub_26618A5B0();
  __swift_storeEnumTagSinglePayload(v3 + v11, 1, 1, v12);
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = *(*v3 + 112);
  swift_beginAccess();
  sub_26615DC74(v10, v3 + v13);
  swift_endAccess();
  return v3;
}

uint64_t sub_26615E93C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2660DF700;

  return sub_26615E108(v3);
}

uint64_t sub_26615E9D8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_26618C6B0();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615EA98, 0, 0);
}

uint64_t sub_26615EA98()
{
  v23 = v0;
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_26618C690();
  v6 = sub_26618CA90();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  if (v7)
  {
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x26677BD80](v11, MEMORY[0x277D837D0]);
    v16 = sub_266103A98(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2660B7000, v5, v6, "Encoding routeIds: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26677CC30](v13, -1, -1);
    MEMORY[0x26677CC30](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[19];
  v18 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v0[23] = v18;
  v19 = sub_26618C990();
  v0[24] = v19;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26615ED68;
  v20 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9D8, qword_266194338);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26615EEC8;
  v0[13] = &block_descriptor_1;
  v0[14] = v20;
  [v18 encodeHashedRouteUIDs:v19 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26615ED68()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26615EE48, 0, 0);
}

uint64_t sub_26615EE48()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26615EEC8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_26618C9B0();

  return sub_26615EF20(v1, v2);
}

uint64_t sub_26615EF7C()
{
  type metadata accessor for OffloadedAppInstallerImpl();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2814B4B88 = v0;
  return result;
}

uint64_t sub_26615EFB8(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_26618C6B0();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26615F0BC, v2, 0);
}

uint64_t sub_26615F0BC()
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = objc_opt_self();
  sub_26615F8E4();

  v4 = sub_26615F7F4();
  *(v0 + 144) = 0;
  v5 = [v3 existingCoordinatorForAppWithIdentity:v4 error:v0 + 144];
  *(v0 + 216) = v5;

  v6 = *(v0 + 144);
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = qword_2814B2C38;
  v8 = v6;
  v9 = v5;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = __swift_project_value_buffer(v11, qword_2814B4A80);
  (*(v12 + 16))(v10, v13, v11);
  v14 = sub_26618C690();
  v15 = sub_26618CAA0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2660B7000, v14, v15, "OffloadedAppInstaller.prioritizeInstall existing coordinator found", v16, 2u);
    MEMORY[0x26677CC30](v16, -1, -1);
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);

  (*(v19 + 8))(v17, v18);
  *(v0 + 152) = 0;
  v20 = [v9 prioritizeWithError_];

  v6 = *(v0 + 152);
  if (v20)
  {
    v21 = v6;

    v23 = *(v0 + 200);
    v22 = *(v0 + 208);

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x277D85DE8];

    return v24();
  }

  else
  {
LABEL_10:
    v27 = v6;
    v28 = sub_26618A4C0();

    swift_willThrow();
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v44 = v3;
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v31 = *(v0 + 184);
    v32 = __swift_project_value_buffer(v31, qword_2814B4A80);
    (*(v30 + 16))(v29, v32, v31);
    v33 = sub_26618C690();
    v34 = sub_26618CAA0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2660B7000, v33, v34, "OffloadedAppInstaller.prioritizeInstall no existing coordinator found, creating a new request", v35, 2u);
      MEMORY[0x26677CC30](v35, -1, -1);
    }

    v36 = *(v0 + 192);
    v37 = *(v0 + 200);
    v38 = *(v0 + 184);
    v40 = *(v0 + 160);
    v39 = *(v0 + 168);

    (*(v36 + 8))(v37, v38);

    v41 = sub_26615F7F4();
    *(v0 + 224) = v41;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26615F540;
    v42 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C268, qword_2661943E0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2660E9CD8;
    *(v0 + 104) = &block_descriptor_2;
    *(v0 + 112) = v42;
    [v44 prioritizeCoordinatorForAppWithIdentity:v41 completion:v0 + 80];
    v43 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_26615F540()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_26615F738;
  }

  else
  {
    v5 = sub_26615F68C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26615F68C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);

  if (v1)
  {
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26615F738()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  swift_willThrow();

  if (v3)
  {
  }

  v5 = *(v0 + 200);
  v4 = *(v0 + 208);

  v6 = *(v0 + 8);
  v7 = *(v0 + 232);
  v8 = *MEMORY[0x277D85DE8];

  return v6();
}

id sub_26615F7F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26618C8A0();

  v2 = [v0 initWithBundleID_];

  return v2;
}

uint64_t sub_26615F868()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26615F8E4()
{
  result = qword_28005C9E0;
  if (!qword_28005C9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C9E0);
  }

  return result;
}

void *sub_26615F964()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26618C6B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = sub_26618A500();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_266160E5C(0xD000000000000014, 0x800000026619A1A0, 0x7473696C70, 0xE500000000000000, v25);
  if (v26)
  {
    v27 = v26;
    sub_26618A4E0();

    v42 = v16;
    v43 = v13;
    (*(v16 + 32))(v23, v21, v13);
    v34 = sub_26618A510();
    v36 = v35;
    v37 = sub_26618A4B0();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_26618A4A0();
    sub_266160F30();
    sub_26618A490();
    (*(v42 + 8))(v23, v43);

    sub_2660C55C0(v34, v36);

    *(v1 + 1) = v45;
  }

  else
  {
    if (qword_2814B2C48 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v28 = __swift_project_value_buffer(v3, qword_2814B4AB0);
    (*(v6 + 16))(v12, v28, v3);
    v29 = sub_26618C690();
    v30 = sub_26618CAB0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v25;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2660B7000, v29, v30, "Quick action allow list not found", v32, 2u);
      v33 = v32;
      v25 = v31;
      MEMORY[0x26677CC30](v33, -1, -1);
    }

    (*(v6 + 8))(v12, v3);
    v1[2] = 0;
    v1[3] = 0;
  }

  return v1;
}

BOOL sub_26615FEEC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    sub_26618A610();
    v12 = 45;
    v13 = 0xE100000000000000;
    v10 = 95;
    v11 = 0xE100000000000000;
    v9 = sub_2660CCD6C();
    v8[0] = MEMORY[0x277D837D0];
    v8[1] = v9;
    v2 = sub_26618CC00();
    v4 = v3;

    v14[0] = v2;
    v14[1] = v4;
    MEMORY[0x28223BE20](v5);
    v8[2] = v14;
    v6 = sub_266158320(sub_26615DA50, v8, v1);
  }

  else
  {
    return 0;
  }

  return v6;
}

BOOL sub_26616000C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = (v3 + 56);
  v7 = *(v3 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v10 = *(v6 - 3);
    v11 = *(v6 - 2);
    if (sub_26618D000())
    {
      break;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v6 += 4;
  }

  while ((sub_26618D000() & 1) == 0);
  return v8;
}

uint64_t sub_2661600C8()
{
  v1 = *(v0 + 24);
  sub_266160EF0(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266160124(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_266160164(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2661601B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x416465776F6C6C61 && a2 == 0xEB00000000737070;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C6465776F6C6C61 && a2 == 0xEE0073656C61636FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266160284(char a1)
{
  if (a1)
  {
    return 0x4C6465776F6C6C61;
  }

  else
  {
    return 0x416465776F6C6C61;
  }
}

uint64_t sub_2661602D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9F8, &qword_266194580);
  OUTLINED_FUNCTION_2_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266160B84();
  sub_26618D0F0();
  v19 = a2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9F0, &unk_266194570);
  sub_266160C2C(&qword_28005CA00, sub_266160CA4);
  OUTLINED_FUNCTION_3_21();
  if (!v3)
  {
    v19 = a3;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
    sub_266160CF8(&qword_28005CA10);
    OUTLINED_FUNCTION_3_21();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_26616049C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9E8, &qword_266194568);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_0();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266160B84();
  OUTLINED_FUNCTION_6_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9F0, &unk_266194570);
  sub_266160C2C(&qword_2814B2C28, sub_266160BD8);
  OUTLINED_FUNCTION_2_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  sub_266160CF8(&qword_2814B2C18);
  OUTLINED_FUNCTION_2_20();
  (*(v5 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_266160694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26616075C(char a1)
{
  if (a1)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_266160794(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA28, &qword_266194730);
  OUTLINED_FUNCTION_2_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2661610AC();
  sub_26618D0F0();
  sub_26618CF70();
  if (!v1)
  {
    sub_26618CF70();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2661608F4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA20, &qword_266194728);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2661610AC();
  OUTLINED_FUNCTION_6_16();
  if (!v1)
  {
    v7 = sub_26618CF00();
    sub_26618CF00();
    v9 = OUTLINED_FUNCTION_5_1();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_266160A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2661601B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266160AC4(uint64_t a1)
{
  v2 = sub_266160B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266160B00(uint64_t a1)
{
  v2 = sub_266160B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266160B3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26616049C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_266160B84()
{
  result = qword_2814B2C70;
  if (!qword_2814B2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C70);
  }

  return result;
}

unint64_t sub_266160BD8()
{
  result = qword_2814B47B8;
  if (!qword_2814B47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47B8);
  }

  return result;
}

uint64_t sub_266160C2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C9F0, &unk_266194570);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266160CA4()
{
  result = qword_28005CA08;
  if (!qword_28005CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA08);
  }

  return result;
}

uint64_t sub_266160CF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005BD80, &qword_26618E528);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266160D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266160694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266160D94(uint64_t a1)
{
  v2 = sub_2661610AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266160DD0(uint64_t a1)
{
  v2 = sub_2661610AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266160E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2661608F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_266160E3C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_266160794(a1);
}

id sub_266160E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_26618C8A0();

  v7 = sub_26618C8A0();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_266160EF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_266160F30()
{
  result = qword_2814B2C58;
  if (!qword_2814B2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C58);
  }

  return result;
}

unint64_t sub_266160FA8()
{
  result = qword_28005CA18;
  if (!qword_28005CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA18);
  }

  return result;
}

unint64_t sub_266161000()
{
  result = qword_2814B2C60;
  if (!qword_2814B2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C60);
  }

  return result;
}

unint64_t sub_266161058()
{
  result = qword_2814B2C68;
  if (!qword_2814B2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C68);
  }

  return result;
}

unint64_t sub_2661610AC()
{
  result = qword_2814B47D0;
  if (!qword_2814B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47D0);
  }

  return result;
}

_BYTE *sub_266161100(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2661611E0()
{
  result = qword_28005CA30;
  if (!qword_28005CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA30);
  }

  return result;
}

unint64_t sub_266161238()
{
  result = qword_2814B47C0;
  if (!qword_2814B47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47C0);
  }

  return result;
}

unint64_t sub_266161290()
{
  result = qword_2814B47C8;
  if (!qword_2814B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_26618D0E0();
}

uint64_t sub_2661613B8()
{
  v175 = sub_26618C6D0();
  v1 = OUTLINED_FUNCTION_2_2(v175);
  v173 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v174 = (v6 - v5);
  OUTLINED_FUNCTION_18_2();
  v160 = sub_26618C7A0();
  v7 = OUTLINED_FUNCTION_2_2(v160);
  v165 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v159 = v12 - v11;
  OUTLINED_FUNCTION_18_2();
  v13 = sub_26618C6B0();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v170 = v15;
  v171 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  v168 = v18 - v19;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17_5();
  v156 = v21;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_5();
  v155 = v23;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_5();
  v158 = v25;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v26);
  v162 = &v151 - v27;
  OUTLINED_FUNCTION_18_2();
  v172 = sub_26618C6F0();
  v28 = OUTLINED_FUNCTION_2_2(v172);
  v167 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v164 = v32 - v33;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_5();
  v157 = v35;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_5();
  v161 = v37;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v38);
  v163 = &v151 - v39;
  OUTLINED_FUNCTION_18_2();
  v40 = sub_26618C7B0();
  v41 = OUTLINED_FUNCTION_2_2(v40);
  v169 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_1();
  v166 = (v45 - v46);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v47);
  v49 = &v151 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA38, &qword_2661948F8);
  v51 = OUTLINED_FUNCTION_16(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24_1();
  v56 = (v54 - v55);
  MEMORY[0x28223BE20](v57);
  v59 = &v151 - v58;
  v60 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v61 = sub_26618C710();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();

  sub_26618C700();
  (*(v60 + 8))();
  v64 = v59;

  sub_2660BF73C(v59, v56, &qword_28005CA38, &qword_2661948F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = *v56;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v66 = v171;
    v67 = __swift_project_value_buffer(v171, qword_2814B4A80);
    v68 = v170;
    v69 = v168;
    (*(v170 + 16))(v168, v67, v66);
    v70 = v65;
    v71 = sub_26618C690();
    v72 = sub_26618CAB0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = OUTLINED_FUNCTION_49_0();
      v74 = OUTLINED_FUNCTION_45_1();
      v176 = v65;
      v177[0] = v74;
      *v73 = 136315138;
      v75 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
      v76 = sub_26618C8D0();
      v78 = sub_266103A98(v76, v77, v177);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_2660B7000, v71, v72, "ReferenceResolver.resolve() from RRaSS was unsuccessful with %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v68 + 8))(v168, v66);
    }

    else
    {

      (*(v68 + 8))(v69, v66);
    }

    goto LABEL_13;
  }

  v79 = v169;
  (*(v169 + 32))(v49, v56, v40);
  v80 = v166;
  (*(v79 + 16))(v166, v49, v40);
  v81 = (*(v79 + 88))(v80, v40);
  v82 = v49;
  if (v81 != *MEMORY[0x277D5FEC0])
  {
    v101 = v170;
    v102 = v171;
    if (v81 == *MEMORY[0x277D5FED0])
    {
      v103 = v40;
      (*(v79 + 96))(v80, v40);
      v168 = *v80;
      if (qword_2814B2C38 != -1)
      {
LABEL_44:
        OUTLINED_FUNCTION_2_5();
      }

      __swift_project_value_buffer(v102, qword_2814B4A80);
      OUTLINED_FUNCTION_8_15();
      v104 = v158;
      v105(v158);
      v106 = sub_26618C690();
      v107 = sub_26618CAD0();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v101;
      v154 = v64;
      v153 = v103;
      v152 = v82;
      if (v108)
      {
        v110 = OUTLINED_FUNCTION_49_0();
        v111 = OUTLINED_FUNCTION_45_1();
        v177[0] = v111;
        *v110 = 136315138;
        v103 = v168;

        v113 = MEMORY[0x26677BD80](v112, v172);
        v101 = v114;

        v115 = sub_266103A98(v113, v101, v177);

        *(v110 + 4) = v115;
        _os_log_impl(&dword_2660B7000, v106, v107, "ReferenceResolver.resolve() returns needs Disambiguation and we are going to return the first notification result%s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();

        (*(v109 + 8))(v104, v102);
      }

      else
      {

        (*(v101 + 8))(v104, v102);
        v103 = v168;
      }

      v122 = *(v103 + 16);
      v123 = v167;
      v124 = (v167 + 16);
      v102 = (v165 + 8);
      LODWORD(v170) = *MEMORY[0x277D5FE80];
      LODWORD(v168) = *MEMORY[0x277D5FDF0];
      v125 = (v173 + 104);
      v64 = (v173 + 8);
      v171 = (v167 + 8);

      v126 = 0;
      v82 = &qword_28005CA40;
      v163 = v124;
      while (v126 != v122)
      {
        if (v126 >= *(v103 + 16))
        {
          __break(1u);
          goto LABEL_44;
        }

        v166 = (v126 + 1);
        (*(v123 + 16))(v164, v103 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v126, v172);
        v127 = v159;
        sub_26618C6E0();
        v128 = sub_26618C790();
        (*v102)(v127, v160);
        v129 = sub_26618C740();
        OUTLINED_FUNCTION_16(v129);
        v131 = v174;
        (*(v130 + 104))(v174, v170);
        (*v125)(v131, v168, v175);
        v132 = 0;
        v133 = *(v128 + 16);
        while (v133 != v132)
        {
          v101 = v132 + 1;
          v134 = v128 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v132;
          sub_266162AF8(&qword_28005CA40, MEMORY[0x277D5FDF8]);
          v135 = sub_26618C890();
          v132 = v101;
          if (v135)
          {

            (*v64)(v174, v175);

            v136 = v167 + 32;
            v137 = v157;
            v138 = v172;
            (*(v167 + 32))(v157, v164, v172);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C708, &qword_266192DB8);
            v100 = OUTLINED_FUNCTION_6_17();
            *(v100 + 16) = xmmword_26618E190;
            sub_26618C6E0();
            (*(v136 - 24))(v137, v138);
            v139 = OUTLINED_FUNCTION_5_15();
            v140(v139);
            sub_2660BF79C(v154, &qword_28005CA38, &qword_2661948F8);

            return v100;
          }
        }

        (*v64)(v174, v175);
        (*v171)(v164, v172);
        v126 = v166;
        v123 = v167;
      }

      v149 = OUTLINED_FUNCTION_5_15();
      v150(v149);
      sub_2660BF79C(v154, &qword_28005CA38, &qword_2661948F8);

      return MEMORY[0x277D84F90];
    }

    if (v81 != *MEMORY[0x277D5FEE0])
    {
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5();
      }

      __swift_project_value_buffer(v102, qword_2814B4A80);
      OUTLINED_FUNCTION_8_15();
      v142 = v156;
      v143(v156);
      v144 = sub_26618C690();
      v145 = sub_26618CA90();
      if (os_log_type_enabled(v144, v145))
      {
        *OUTLINED_FUNCTION_6_2() = 0;
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v146, v147, "ReferenceResolver.resolve() Unknown outcome. Returning no match");
        OUTLINED_FUNCTION_7_2();
      }

      (*(v101 + 8))(v142, v102);
      v148 = *(v79 + 8);
      v148(v82, v40);
      sub_2660BF79C(v64, &qword_28005CA38, &qword_2661948F8);
      v148(v166, v40);
      return MEMORY[0x277D84F90];
    }

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v102, qword_2814B4A80);
    OUTLINED_FUNCTION_8_15();
    v116 = v155;
    v117(v155);
    v118 = sub_26618C690();
    v119 = sub_26618CA90();
    if (os_log_type_enabled(v118, v119))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v120, v121, "ReferenceResolver.resolve() No match from ReferenceResolution");
      OUTLINED_FUNCTION_7_2();
    }

    (*(v101 + 8))(v116, v102);
    (*(v79 + 8))(v82, v40);
LABEL_13:
    sub_2660BF79C(v64, &qword_28005CA38, &qword_2661948F8);
    return MEMORY[0x277D84F90];
  }

  v152 = v49;
  (*(v79 + 96))(v80, v40);
  v83 = v167;
  v84 = v163;
  v85 = v172;
  (*(v167 + 32))(v163, v80, v172);
  v86 = v170;
  v87 = v171;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v153 = v40;
  v154 = v64;
  v88 = __swift_project_value_buffer(v87, qword_2814B4A80);
  v89 = v162;
  (*(v86 + 16))(v162, v88, v87);
  v90 = v161;
  (*(v83 + 16))(v161, v84, v85);
  v91 = sub_26618C690();
  v92 = sub_26618CAD0();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = v83;
    v94 = OUTLINED_FUNCTION_49_0();
    v175 = OUTLINED_FUNCTION_45_1();
    v177[0] = v175;
    *v94 = 136315138;
    sub_266162AF8(&qword_28005CA48, MEMORY[0x277D5FE08]);
    v95 = sub_26618CFD0();
    v97 = v96;
    v174 = *(v93 + 8);
    v174(v90, v172);
    v84 = v163;
    v98 = sub_266103A98(v95, v97, v177);

    *(v94 + 4) = v98;
    _os_log_impl(&dword_2660B7000, v91, v92, "ReferenceResolver.resolve() got singular match %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v175);
    v85 = v172;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v99 = v174;
    (*(v86 + 8))(v89, v171);
  }

  else
  {

    v99 = *(v83 + 8);
    v99(v90, v85);
    (*(v86 + 8))(v89, v87);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C708, &qword_266192DB8);
  v100 = OUTLINED_FUNCTION_6_17();
  *(v100 + 16) = xmmword_26618E190;
  sub_26618C6E0();
  v99(v84, v85);
  (*(v169 + 8))(v152, v153);
  sub_2660BF79C(v154, &qword_28005CA38, &qword_2661948F8);
  return v100;
}

uint64_t sub_266162360()
{
  v1 = sub_26618C6B0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  sub_26618BE60();
  if (v25[3])
  {
    sub_2660BF73C(v25, v24, &qword_28005C0A8, qword_26618FAE0);
    sub_26618BDC0();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
      v10 = 1;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v10 = 0;
LABEL_6:
  sub_2660BF79C(v25, &qword_28005C0A8, qword_26618FAE0);
  v11 = sub_2661613B8();
  MEMORY[0x28223BE20](v11);
  *(&v23 - 2) = v0;
  *(&v23 - 8) = v10;
  v12 = sub_2661312A0(sub_266162B40, (&v23 - 4), v11);

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v13 = __swift_project_value_buffer(v1, qword_2814B4A80);
  (*(v4 + 16))(v9, v13, v1);

  v14 = sub_26618C690();
  v15 = sub_26618CA90();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_49_0();
    v17 = OUTLINED_FUNCTION_45_1();
    v25[0] = v17;
    *v16 = 136315138;
    v18 = type metadata accessor for Application();
    v19 = MEMORY[0x26677BD80](v12, v18);
    v21 = sub_266103A98(v19, v20, v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2660B7000, v14, v15, "ReferenceResolver.resolve() resolved apps: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (*(v4 + 8))(v9, v1);
  return v12;
}

id sub_26616263C(uint64_t a1, char a2)
{
  v3 = sub_26618C750();
  v5 = v4;
  type metadata accessor for Application();
  v6 = sub_26614492C();
  sub_26614E5FC(v3, v5, v6);
  if (a2)
  {
    v7 = sub_26618C770();
    v9 = v8;
    if (sub_26618C950())
    {
      v10 = sub_266162A38(6);
      v7 = MEMORY[0x26677BCC0](v10);
      v9 = v11;
    }

    sub_266162B84(v7, v9, v6);
  }

  return v6;
}

uint64_t sub_266162714()
{
  v0 = sub_26618C6B0();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_24_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_26618BFC0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_26618BFB0();
  v15 = MEMORY[0x26677B1D0]();

  if (v15)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v16 = __swift_project_value_buffer(v0, qword_2814B4A80);
    (*(v3 + 16))(v11, v16, v0);
    v17 = sub_26618C690();
    v18 = sub_26618CAA0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_6_2();
      *v19 = 0;
      _os_log_impl(&dword_2660B7000, v17, v18, "ReferenceResolver.resolveAppsForNoEntity() trying common_Window query", v19, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    (*(v3 + 8))(v11, v0);
    v20 = sub_266162360();
    v21 = sub_2661046B8(v20);

    if (v21)
    {
      return v20;
    }
  }

  v22 = sub_26618BF10();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_26618BF00();
  v25 = MEMORY[0x26677B1D0]();

  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v26 = __swift_project_value_buffer(v0, qword_2814B4A80);
  (*(v3 + 16))(v8, v26, v0);
  v27 = sub_26618C690();
  v28 = sub_26618CAA0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_6_2();
    *v29 = 0;
    _os_log_impl(&dword_2660B7000, v27, v28, "ReferenceResolver.resolveAppsForNoEntity() trying common_App query", v29, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v3 + 8))(v8, v0);
  v20 = sub_266162360();
  v30 = sub_2661046B8(v20);

  if (!v30)
  {

    return MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_266162A38(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26618C920();
    v1 = sub_26618C970();

    return v1;
  }

  return result;
}

uint64_t sub_266162AF8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_266162B40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_26616263C(a1, v4);
  *a2 = result;
  return result;
}

void sub_266162B84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();

  [a3 setSceneId_];
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  v1 = *(*(v0 - 160) + 8);
  result = *(v0 - 296);
  v3 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_17()
{
  v2 = *(v0 - 192);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t RegexAppsResolver.init(languageCode:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v4 = static InstalledAppProvider.shared;
  v8[3] = type metadata accessor for InstalledAppProvider();
  v8[4] = &protocol witness table for InstalledAppProvider;
  v8[0] = v4;
  sub_2660C5864(v8, a2);
  if (a1)
  {
    v5 = *(type metadata accessor for RegexAppsResolver() + 20);
  }

  else
  {
    v6 = *(type metadata accessor for RegexAppsResolver() + 20);
  }

  sub_26618A600();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t type metadata accessor for RegexAppsResolver()
{
  result = qword_2814B31A8;
  if (!qword_2814B31A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RegexAppsResolver.resolve(appName:appId:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_26618C6B0();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266162E9C, 0, 0);
}

uint64_t sub_266162E9C()
{
  v63 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    *(v0 + 16) = *(v0 + 128);
    v2 = *(v0 + 192);
    v3 = *(v0 + 144);
    *(v0 + 24) = v1;
    v4 = *(type metadata accessor for RegexAppsResolver() + 20);
    v5 = sub_26618A620();
    (*(*(v5 - 8) + 16))(v2, v3 + v4, v5);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    sub_2660CCD6C();

    v6 = sub_26618CBE0();
    v8 = v7;
    *(v0 + 200) = v6;
    *(v0 + 208) = v7;
    sub_2661639F4(v2);

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      *(v0 + 32) = v6;
      *(v0 + 40) = v8;
      strcpy((v0 + 48), "[^[:alnum:]]+");
      *(v0 + 62) = -4864;
      strcpy((v0 + 64), "[^[:alnum:]]+");
      *(v0 + 78) = -4864;
      v10 = OUTLINED_FUNCTION_0_22();
      v12 = v11;
      *(v0 + 80) = v6;
      *(v0 + 88) = v8;
      *(v0 + 96) = 0x756E6C613A5B5E5BLL;
      *(v0 + 104) = 0xEF2B5D735C5D3A6DLL;
      strcpy((v0 + 112), "[^[:alnum:]]+");
      *(v0 + 126) = -4864;
      v56 = OUTLINED_FUNCTION_0_22();
      v14 = v13;
      if (qword_2814B2C48 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 184);
      v16 = *(v0 + 160);
      v17 = __swift_project_value_buffer(*(v0 + 152), qword_2814B4AB0);
      *(v0 + 216) = v17;
      v18 = *(v16 + 16);
      *(v0 + 224) = v18;
      *(v0 + 232) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v59 = v17;
      v58 = v18;
      (v18)(v15);

      v19 = sub_26618C690();
      v20 = sub_26618CAA0();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 152);
      v23 = *(v0 + 160);
      v53 = v22;
      v54 = *(v0 + 184);
      v60 = v12;
      if (v21)
      {
        v24 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v24 = 136315650;
        *(v24 + 4) = sub_266103A98(v6, v8, v62);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_266103A98(v10, v12, v62);
        *(v24 + 22) = 2080;
        v25 = v56;
        *(v24 + 24) = sub_266103A98(v56, v14, v62);
        _os_log_impl(&dword_2660B7000, v19, v20, "Attempting to match by AppName '%s' -> %s || %s", v24, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();

        v26 = *(v23 + 8);
        v26(v54, v53);
      }

      else
      {

        v26 = *(v23 + 8);
        v26(v54, v53);
        v25 = v56;
      }

      v57 = v26;
      *(v0 + 240) = v26;
      v34 = *(v0 + 176);
      v35 = *(v0 + 152);
      strcpy(v62, "^[^[:alnum:]]*");
      HIBYTE(v62[1]) = -18;
      MEMORY[0x26677BCF0](v10, v60);

      MEMORY[0x26677BCF0](0x756E6C613A5B5E5BLL, 0xEE00242A5D5D3A6DLL);

      v36 = v62[1];
      v55 = v62[0];
      *(v0 + 248) = v62[0];
      *(v0 + 256) = v36;
      strcpy(v62, "^[^:alnum:]*");
      BYTE5(v62[1]) = 0;
      HIWORD(v62[1]) = -5120;
      MEMORY[0x26677BCF0](v25, v14);

      MEMORY[0x26677BCF0](0x6D756E6C613A5E5BLL, 0xEC000000242A5D3ALL);

      v37 = v62[1];
      *(v0 + 264) = v62[0];
      *(v0 + 272) = v37;
      v62[0] = 25180;
      v62[1] = 0xE200000000000000;
      MEMORY[0x26677BCF0](v10, v60);

      MEMORY[0x26677BCF0](25180, 0xE200000000000000);

      v39 = v62[0];
      v38 = v62[1];
      *(v0 + 280) = v62[0];
      *(v0 + 288) = v38;
      v58(v34, v59, v35);

      v40 = sub_26618C690();
      v41 = sub_26618CAA0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 176);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      if (v42)
      {
        v46 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v46 = 136315394;
        *(v46 + 4) = sub_266103A98(v55, v36, v62);
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_266103A98(v39, v38, v62);
        _os_log_impl(&dword_2660B7000, v40, v41, "Regexes built: %s\n%s", v46, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v57(v43, v45);
      v47 = *(v0 + 144);
      v48 = v47[3];
      v49 = v47[4];
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v50 = *(v49 + 8);
      v61 = (v50 + *v50);
      v51 = v50[1];
      v52 = swift_task_alloc();
      *(v0 + 296) = v52;
      *v52 = v0;
      v52[1] = sub_26616362C;

      return v61(v48, v49);
    }
  }

  v28 = *(v0 + 184);
  v27 = *(v0 + 192);
  v30 = *(v0 + 168);
  v29 = *(v0 + 176);

  v31 = *(v0 + 8);
  v32 = MEMORY[0x277D84F90];

  return v31(v32);
}

uint64_t sub_26616362C(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_26616372C, 0, 0);
}

uint64_t sub_26616372C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 144);
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;

  sub_266102300(sub_266163FAC, v5, v1);
  v7 = v6;

  v8 = sub_2661046B8(v7);
  v9 = *(v0 + 304);
  v10 = *(v0 + 288);
  if (v8 == 1)
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = *(v0 + 208);
    v14 = *(v0 + 304);
  }

  else
  {
    v15 = *(v0 + 272);
    v16 = *(v0 + 256);
    v33 = *(v0 + 264);
    v34 = *(v0 + 280);
    v17 = *(v0 + 248);
    v38 = *(v0 + 224);
    v39 = *(v0 + 232);
    v32 = *(v0 + 208);
    v18 = *(v0 + 200);
    v35 = *(v0 + 168);
    v19 = *(v0 + 144);
    v36 = *(v0 + 152);
    v37 = *(v0 + 216);

    v20 = swift_task_alloc();
    v20[2] = v19;
    v20[3] = v17;
    v20[4] = v16;
    v20[5] = v33;
    v20[6] = v15;
    v20[7] = v34;
    v20[8] = v10;
    v20[9] = v18;
    v20[10] = v32;
    sub_266102300(sub_266163FD0, v20, v9);
    v7 = v21;

    v38(v35, v37, v36);

    v22 = sub_26618C690();
    v23 = sub_26618CAA0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = sub_2661046B8(v7);

      _os_log_impl(&dword_2660B7000, v22, v23, "Found %ld apps by name matching", v24, 0xCu);
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    v25 = *(v0 + 160) + 8;
    (*(v0 + 240))(*(v0 + 168), *(v0 + 152));
  }

  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);

  v30 = *(v0 + 8);

  return v30(v7);
}

uint64_t sub_2661639F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_266163A5C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - v10;
  v12 = sub_2660C9D24(*a1);
  if (!v13)
  {
    return 0;
  }

  v22 = v12;
  v23 = v13;
  v14 = *(type metadata accessor for RegexAppsResolver() + 20);
  v15 = sub_26618A620();
  (*(*(v15 - 8) + 16))(v11, a2 + v14, v15);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
  sub_2660CCD6C();
  v16 = sub_26618CBE0();
  v18 = v17;
  sub_2661639F4(v11);

  v22 = v16;
  v23 = v18;
  v21[0] = a3;
  v21[1] = a4;
  v19 = sub_26618CBF0();

  return v19 == 0;
}

uint64_t sub_266163BF4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a6;
  v33 = a5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  v21 = sub_2660C9D24(*a1);
  if (v22)
  {
    v30 = a7;
    v31 = a8;
    v32 = v10;
    v36 = v21;
    v37 = v22;
    v23 = *(type metadata accessor for RegexAppsResolver() + 20);
    v24 = sub_26618A620();
    (*(*(v24 - 8) + 16))(v20, a2 + v23, v24);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v24);
    sub_2660CCD6C();
    v25 = sub_26618CBE0();
    v27 = v26;
    sub_2661639F4(v20);

    if (sub_266163E08(v25, v27, a3, a4) || sub_266163E08(v25, v27, v33, v38) || sub_266163E08(v25, v27, v30, v31))
    {

      v28 = 1;
    }

    else
    {
      v36 = v25;
      v37 = v27;
      v34 = a9;
      v35 = a10;
      v28 = sub_26618CC60();
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

BOOL sub_266163E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v15 - v10;
  v15[2] = a1;
  v15[3] = a2;
  v15[0] = a3;
  v15[1] = a4;
  v12 = sub_26618A620();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_2660CCD6C();
  sub_26618CC50();
  LOBYTE(a4) = v13;
  sub_2661639F4(v11);
  return (a4 & 1) == 0;
}

uint64_t sub_266163F08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660CD9A4;

  return RegexAppsResolver.resolve(appName:appId:)(a1, a2);
}

void *sub_26616400C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_266164030@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_266164088()
{
  result = sub_26616410C();
  if (v1 <= 0x3F)
  {
    result = sub_26618A620();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26616410C()
{
  result = qword_2814B47A0;
  if (!qword_2814B47A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2814B47A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return sub_26618CC00();
}

uint64_t sub_266164194@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  sub_26618C1F0();
  v11 = sub_26618C200();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  sub_266165F5C(v10, v8);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  return sub_266165FCC(v8, a1);
}

uint64_t sub_2661642A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA68, &qword_266194A08);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v63 - v7;
  OUTLINED_FUNCTION_18_2();
  v73 = sub_26618C220();
  v8 = OUTLINED_FUNCTION_2_2(v73);
  v65 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v64 = v13 - v12;
  OUTLINED_FUNCTION_18_2();
  v14 = sub_26618A5B0();
  v15 = OUTLINED_FUNCTION_2_2(v14);
  v67 = v16;
  v68 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  v66 = sub_26618A670();
  v22 = OUTLINED_FUNCTION_2_2(v66);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v30 = sub_26618A480();
  v31 = OUTLINED_FUNCTION_2_2(v30);
  v70 = v32;
  v71 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v37 = v36 - v35;
  v38 = [objc_allocWithZone(MEMORY[0x277D61FD0]) init];
  v39 = sub_26618C8A0();
  [v38 _setLaunchId_];

  v40 = sub_26618C4A0();
  sub_26616603C(v40, v41, v38);
  v42 = sub_26618C8A0();
  [v38 setIntentType_];

  [v38 setVoiceID_];
  [v38 setInteractionType_];
  sub_26618C4D0();
  v69 = v37;
  if (v43)
  {
    v44 = sub_26618C8A0();
  }

  else
  {
    v44 = 0;
  }

  [v38 setRoomName_];

  sub_26618A650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA70, &unk_266194A10);
  v45 = sub_26618A660();
  OUTLINED_FUNCTION_2_2(v45);
  v47 = v46;
  v49 = *(v48 + 72);
  v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_266194980;
  v52 = v51 + v50;
  v53 = *(v47 + 104);
  v53(v52, *MEMORY[0x277CC9988], v45);
  v53(v52 + v49, *MEMORY[0x277CC9998], v45);
  v53(v52 + 2 * v49, *MEMORY[0x277CC9968], v45);
  v53(v52 + 3 * v49, *MEMORY[0x277CC9980], v45);
  v53(v52 + 4 * v49, *MEMORY[0x277CC99A0], v45);
  v53(v52 + 5 * v49, *MEMORY[0x277CC99A8], v45);
  v53(v52 + 6 * v49, *MEMORY[0x277CC9930], v45);
  sub_26612432C(v51);
  sub_26618A5A0();
  v54 = v69;
  sub_26618A630();

  (*(v67 + 8))(v21, v68);
  (*(v24 + 8))(v29, v66);
  v55 = sub_26618A470();
  [v38 setRequestTime_];

  sub_2661660A0();
  v56 = sub_266164930(v38, 0);
  [v56 _setDonatedBySiri_];
  v57 = v72;
  sub_26618CA80();
  v58 = v73;
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v73);
  v59 = v64;
  v60 = v65;
  (*(v65 + 32))(v64, v57, v58);
  *(swift_allocObject() + 16) = v38;
  v61 = v38;
  sub_26618C210();

  (*(v60 + 8))(v59, v58);
  return (*(v70 + 8))(v54, v71);
}

id sub_266164930(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_26616498C(void *a1, char a2, void *a3)
{
  v6 = sub_26618C6B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a2)
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_2814B4A98);
    (*(v7 + 16))(v11, v14, v6);
    v15 = a3;
    sub_2661660F0(a1, 1);
    v16 = sub_26618C690();
    v17 = sub_26618CAB0();

    sub_2661660FC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = a1;
      v34 = v20;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2080;
      v21 = v15;
      sub_2661660F0(a1, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
      v22 = sub_26618C8D0();
      v24 = sub_266103A98(v22, v23, &v34);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_2660B7000, v16, v17, "SiriRemembersProvider couldn't donate intent %@ to Siri Remembers %s", v18, 0x16u);
      sub_2660C8040(v19, &qword_28005C1F8, &unk_266190550);
      MEMORY[0x26677CC30](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26677CC30](v20, -1, -1);
      MEMORY[0x26677CC30](v18, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v6, qword_2814B4A98);
    (*(v7 + 16))(v13, v26, v6);
    v27 = a3;
    v28 = sub_26618C690();
    v29 = sub_26618CAA0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_2660B7000, v28, v29, "SiriRemembersProvider successfully donated intent %@ to Siri Remembers", v30, 0xCu);
      sub_2660C8040(v31, &qword_28005C1F8, &unk_266190550);
      MEMORY[0x26677CC30](v31, -1, -1);
      MEMORY[0x26677CC30](v30, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t sub_266164D78@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v181 = a1;
  v182 = a2;
  v184 = a4;
  v5 = type metadata accessor for SiriRemembersStoreProvider();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v10 - v9);
  v162 = sub_26618A5B0();
  v11 = OUTLINED_FUNCTION_2_2(v162);
  v161 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v16 - v15);
  v17 = sub_26618C6B0();
  v18 = OUTLINED_FUNCTION_2_2(v17);
  v179 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_16();
  v165 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C988, &qword_2661949F0);
  v25 = OUTLINED_FUNCTION_3_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_4(&v160 - v28);
  v188 = sub_26618C190();
  v29 = OUTLINED_FUNCTION_2_2(v188);
  v163 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_16();
  v168 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  v37 = OUTLINED_FUNCTION_3_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_9_4(v41);
  v187 = sub_26618C200();
  v42 = OUTLINED_FUNCTION_2_2(v187);
  v172 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v47 - v46);
  v186 = sub_26618C1E0();
  v48 = OUTLINED_FUNCTION_2_2(v186);
  v193 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_16();
  v185 = v54;
  OUTLINED_FUNCTION_18_2();
  v55 = sub_26618C160();
  v194 = OUTLINED_FUNCTION_2_2(v55);
  v195 = v56;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v194);
  v61 = &v160 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59);
  v190 = &v160 - v63;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_16();
  v192 = v64;
  OUTLINED_FUNCTION_18_2();
  v65 = sub_26618C230();
  v66 = OUTLINED_FUNCTION_2_2(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v71);
  v73 = (&v160 - v72);
  v180 = sub_26618C4A0();
  v191 = v74;
  v75 = *(a3 + 16);
  v183 = v17;
  if (v75)
  {
    v164 = v61;
    v199 = MEMORY[0x277D84F90];
    sub_26612A578();
    v76 = v199;
    v77 = (a3 + 32);
    LODWORD(v197) = *MEMORY[0x277D5FFE8];
    v196 = (v68 + 32);
    do
    {
      v78 = *v77++;
      v198 = v78;
      v79 = sub_26618CFD0();
      *v73 = 0x7463617265746E69;
      v73[1] = 0xEF657079546E6F69;
      v73[2] = v79;
      v73[3] = v80;
      (*(v68 + 104))(v73, v197, v65);
      v199 = v76;
      v81 = *(v76 + 16);
      if (v81 >= *(v76 + 24) >> 1)
      {
        sub_26612A578();
        v76 = v199;
      }

      *(v76 + 16) = v81 + 1;
      (*(v68 + 32))(v76 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v81, v73, v65);
      --v75;
    }

    while (v75);
    v61 = v164;
    v82 = v197;
  }

  else
  {
    v82 = *MEMORY[0x277D5FFE8];
    v76 = MEMORY[0x277D84F90];
  }

  sub_26618C150();
  sub_26618C140();
  v83 = *(v195 + 8);
  v195 += 8;
  v197 = v83;
  v83(v61, v194);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5B8, &qword_266194A00);
  v84 = *(v68 + 72);
  v85 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_266194990;
  v87 = (v86 + v85);
  *v87 = 0x7954746E65746E69;
  *(v87 + 1) = 0xEA00000000006570;
  *(v87 + 2) = 0x704168636E75614CLL;
  *(v87 + 3) = 0xEF746E65746E4970;
  v88 = *(v68 + 104);
  v89 = v65;
  (v88)(v87, v82, v65);
  v90 = &v87[v84];
  strcpy(&v87[v84], "remoteDeviceID");
  v90[15] = -18;
  v91 = v191;
  *(v90 + 2) = v180;
  *(v90 + 3) = v91;
  v88();
  v92 = &v87[2 * v84];
  *v92 = 0x656D614E6D6F6F72;
  *(v92 + 1) = 0xE800000000000000;
  v93 = v182;
  *(v92 + 2) = v181;
  *(v92 + 3) = v93;
  v88();
  *&v87[3 * v84] = v76;
  (v88)(&v87[3 * v84], *MEMORY[0x277D5FFE0], v89);
  v94 = v175;
  *v175 = v86;
  (v88)(v94, *MEMORY[0x277D5FFD8], v89);

  v95 = v190;
  sub_26618C130();
  (*(v68 + 8))(v94, v89);
  v197(v95, v194);
  v96 = v176;
  sub_26618C1D0();
  v97 = v177;
  sub_26618C1B0();
  v98 = v193 + 8;
  v99 = *(v193 + 8);
  v100 = v186;
  v99(v96, v186);
  v101 = v185;
  sub_26618C1C0();
  v99(v97, v100);
  v102 = v178;
  sub_266165E38(v189, v178);
  v103 = v187;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v187);
  v193 = v98;
  if (EnumTagSinglePayload == 1)
  {

    sub_2660C8040(v102, &qword_28005CA58, &qword_2661949F8);
    v105 = v179;
    v106 = v183;
    v110 = v174;
    v111 = v173;
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v112 = __swift_project_value_buffer(v106, qword_2814B4A98);
    (*(v105 + 16))(v111, v112, v106);
    sub_2660E7EE8(v189, v110);
    v113 = sub_26618C690();
    v114 = sub_26618CAB0();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 67109120;
      v116 = v99;
      v117 = v169;
      sub_266165E38(v110, v169);
      v118 = __swift_getEnumTagSinglePayload(v117, 1, v187) == 1;
      v119 = v117;
      v99 = v116;
      sub_2660C8040(v119, &qword_28005CA58, &qword_2661949F8);
      sub_266165EA8(v110);
      *(v115 + 4) = v118;
      v100 = v186;
      _os_log_impl(&dword_2660B7000, v113, v114, "Error while getting the history stats. Is Interaction store nil %{BOOL}d. Returning.", v115, 8u);
      v120 = v194;
      v101 = v185;
      MEMORY[0x26677CC30](v115, -1, -1);
    }

    else
    {
      sub_266165EA8(v110);
      v120 = v194;
    }

    (*(v105 + 8))(v111, v106);
    v99(v101, v100);
    v197(v192, v120);
    v121 = 1;
    v122 = v188;
  }

  else
  {
    v196 = v99;
    (*(v172 + 32))(v171, v102, v103);
    v107 = v170;
    sub_26618C1A0();
    v108 = v188;
    v109 = v179;
    v124 = v183;
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v188);
    v125 = v163;
    v126 = v168;
    v189 = *(v163 + 32);
    v190 = (v163 + 32);
    v189(v168, v107, v108);
    v122 = v108;
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v127 = __swift_project_value_buffer(v124, qword_2814B4A98);
    v128 = v165;
    (*(v109 + 16))(v165, v127, v124);
    v129 = *(v125 + 16);
    v129(v166, v126, v122);
    v129(v167, v126, v122);
    v130 = v191;

    v131 = v125;
    v132 = v182;

    v133 = sub_26618C690();
    v134 = sub_26618CAA0();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v199 = v178;
      *v135 = 136315906;
      v136 = sub_266103A98(v180, v130, &v199);
      LODWORD(v180) = v134;
      v137 = v136;

      *(v135 + 4) = v137;
      *(v135 + 12) = 2080;
      *(v135 + 14) = sub_266103A98(v181, v132, &v199);
      *(v135 + 22) = 2080;
      v138 = v160;
      v139 = v166;
      sub_26618C180();
      sub_266165F04();
      v140 = v162;
      v141 = sub_26618CFD0();
      v142 = v109;
      v144 = v143;
      (*(v161 + 8))(v138, v140);
      v145 = *(v131 + 8);
      v145(v139, v188);
      v146 = sub_266103A98(v141, v144, &v199);

      *(v135 + 24) = v146;
      *(v135 + 32) = 2080;
      v147 = v167;
      sub_26618C170();
      v148 = MEMORY[0x26677BD80]();
      v150 = v149;

      v145(v147, v188);
      v122 = v188;
      v151 = sub_266103A98(v148, v150, &v199);

      *(v135 + 34) = v151;
      _os_log_impl(&dword_2660B7000, v133, v180, "For remoteDeviceID: %s, roomName: %s stats are - recency: %s, frequencies %s", v135, 0x2Au);
      v152 = v178;
      swift_arrayDestroy();
      MEMORY[0x26677CC30](v152, -1, -1);
      MEMORY[0x26677CC30](v135, -1, -1);

      (*(v142 + 8))(v165, v183);
      v153 = OUTLINED_FUNCTION_7_17();
      v154(v153);
      v155 = v185;
      v156 = v186;
    }

    else
    {

      v157 = *(v131 + 8);
      v157(v167, v122);
      v157(v166, v122);
      (*(v109 + 8))(v128, v183);
      v158 = OUTLINED_FUNCTION_7_17();
      v159(v158);
      v155 = v101;
      v156 = v100;
    }

    v196(v155, v156);
    v197(v192, v194);
    v189(v184, v168, v122);
    v121 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v184, v121, 1, v122);
}