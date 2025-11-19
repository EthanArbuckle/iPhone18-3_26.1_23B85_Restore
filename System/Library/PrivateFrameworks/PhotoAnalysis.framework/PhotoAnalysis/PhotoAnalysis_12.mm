uint64_t sub_22FB38198(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC8494();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB38280, 0, 0);
}

uint64_t sub_22FB38280()
{
  if (qword_28147C5E8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = qword_28147C5F0;
  sub_22FCC76D4();
  swift_allocObject();
  v6 = v5;
  v0[11] = sub_22FCC76C4();

  sub_22FCC84A4();
  sub_22FCC8454();
  v7 = *(v4 + 32);
  v0[12] = v7;
  v0[13] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v2, v1, v3);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_22FB38424;
  v9 = v0[8];

  return sub_22FB386B0(v9);
}

uint64_t sub_22FB38424()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22FB38604;
  }

  else
  {
    v2 = sub_22FB38538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB38538()
{
  (*(v0 + 96))(*(v0 + 56), *(v0 + 80), *(v0 + 40));
  sub_22FCC8484();
  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB38604()
{
  (*(v0[6] + 8))(v0[10], v0[5]);
  sub_22FCC76B4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FB386B0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_22FCC75B4();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = sub_22FCC75C4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = sub_22FCC8494();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_22FCC7EE4();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = sub_22FCC7F14();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB3891C, 0, 0);
}

uint64_t sub_22FB3891C()
{
  v66 = v0;
  v1 = *(v0 + 120);
  (*(*(v0 + 232) + 104))(*(v0 + 240), *MEMORY[0x277D3C5D0], *(v0 + 224));
  sub_22FCC7F04();
  v2 = objc_opt_self();
  v3 = *(v1 + 176);
  v4 = sub_22FCC8E64();
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = [v2 fetchRankedGyroPosterSuggestionsInPhotoLibrary:v3 avoiding:v4 limit:v5];

  v7 = sub_22FA3A77C(0, &unk_28147AED0);
  v8 = sub_22FCC8C44();
  *(v0 + 288) = v8;

  v9 = [v3 librarySpecificFetchOptions];
  *(v0 + 296) = v9;
  [v9 setIncludeGuestAssets_];
  if (v8 >> 62)
  {
    goto LABEL_51;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *(v0 + 304) = v10;
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_12;
  }

  v65 = MEMORY[0x277D84F90];
  sub_22FCC9414();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v63 = v7;
  v12 = 0;
  v7 = &selRef_initWithWeights_bias_;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x231908810](v12, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = [v14 objectID];

    if (!v15)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v10 = sub_22FCC92C4();
      goto LABEL_3;
    }

    ++v12;
    sub_22FCC93F4();
    sub_22FCC9424();
    sub_22FCC9434();
    sub_22FCC9404();
  }

  while (v10 != v12);
  v7 = v63;
  v11 = v65;
LABEL_12:
  v16 = objc_opt_self();
  sub_22FAA9A48(v11);

  sub_22FA3A77C(0, &qword_27DAD83F0);
  sub_22FB3B45C();
  v17 = sub_22FCC8E64();

  v18 = [v16 fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs:v17 options:v9];

  if (!v18)
  {
LABEL_33:
    if (qword_28147C5C0 == -1)
    {
LABEL_34:
      v39 = sub_22FCC8684();
      __swift_project_value_buffer(v39, qword_28147C5C8);

      v40 = sub_22FCC8664();
      v41 = sub_22FCC8F14();

      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 280);
      v45 = *(v0 + 248);
      v44 = *(v0 + 256);
      if (v42)
      {
        v64 = *(v0 + 248);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v65 = v47;
        *v46 = 136315138;
        v48 = MEMORY[0x2319080B0](v8, v7);
        v62 = v43;
        v50 = v49;

        v51 = sub_22FA2F600(v48, v50, &v65);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_22FA28000, v40, v41, "No key assets found for suggestions: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23190A000](v47, -1, -1);
        MEMORY[0x23190A000](v46, -1, -1);

        (*(v44 + 8))(v62, v64);
      }

      else
      {

        (*(v44 + 8))(v43, v45);
      }

      (*(*(v0 + 200) + 8))(*(v0 + 112), *(v0 + 192));
      goto LABEL_38;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  sub_22FA3A77C(0, &qword_28147ADE8);
  v19 = sub_22FCC89D4();
  *(v0 + 312) = v19;

  if (!*(v19 + 16))
  {

    goto LABEL_33;
  }

  if (qword_28147C5C0 != -1)
  {
    swift_once();
  }

  v20 = sub_22FCC8684();
  *(v0 + 320) = __swift_project_value_buffer(v20, qword_28147C5C8);
  v21 = sub_22FCC8664();
  v22 = sub_22FCC8F34();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v10;
    _os_log_impl(&dword_22FA28000, v21, v22, "Found %ld candidate suggestions", v23, 0xCu);
    MEMORY[0x23190A000](v23, -1, -1);
  }

  if (v10 < 1)
  {
LABEL_30:
    v35 = *(v0 + 120);

    sub_22FA2E6E4(v35 + 136, v0 + 56);
    if (*(v0 + 80))
    {
      v36 = *(v0 + 120);
      sub_22FA2D89C((v0 + 56), v0 + 16);
      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
      (*(v38 + 16))(0, *(v36 + 64), *(v36 + 72), v37, v38);
      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    }

    else
    {
      sub_22FA2B420(v0 + 56, &unk_27DAD83A0);
    }

    v53 = sub_22FCC8664();
    v54 = sub_22FCC8F34();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 304);
      v56 = swift_slowAlloc();
      *v56 = 134218496;
      *(v56 + 4) = 0;
      *(v56 + 12) = 2048;
      *(v56 + 14) = v55;
      *(v56 + 22) = 2048;
      *(v56 + 24) = 0;
      _os_log_impl(&dword_22FA28000, v53, v54, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v56, 0x20u);
      MEMORY[0x23190A000](v56, -1, -1);
    }

    sub_22FCC8484();
    v57 = *(v0 + 296);
    (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

LABEL_38:

    v52 = *(v0 + 8);

    return v52();
  }

  v9 = 0;
  *(v0 + 440) = *MEMORY[0x277D3C1A0];
  *(v0 + 444) = *MEMORY[0x277D3C1A8];
  while (1)
  {
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    *(v0 + 336) = 0;
    *(v0 + 344) = v9;
    *(v0 + 328) = 0;
    v8 = *(v0 + 288) & 0xC000000000000001;
    sub_22FCC8434();
    v24 = *(v0 + 288);
    if (v8)
    {
      v25 = MEMORY[0x231908810](v9, v24);
    }

    else
    {
      if (v9 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v25 = *(v24 + 8 * v9 + 32);
    }

    *(v0 + 368) = v25;
    v26 = [v25 uuid];
    if (!v26)
    {
      goto LABEL_27;
    }

    v27 = *(v0 + 312);
    v28 = v26;
    v7 = sub_22FCC8A84();
    v30 = v29;

    *(v0 + 376) = v30;
    if (*(v27 + 16))
    {
      v31 = sub_22FA2DB54(v7, v30);
      if (v32)
      {
        break;
      }
    }

LABEL_27:
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v33 = *(v0 + 344);
    v34 = *(v0 + 304);

    v9 = v33 + 1;
    if (v33 + 1 == v34)
    {
      goto LABEL_30;
    }
  }

  v59 = *(*(*(v0 + 312) + 56) + 8 * v31);
  *(v0 + 384) = v59;
  v60 = v59;
  v61 = swift_task_alloc();
  *(v0 + 392) = v61;
  *v61 = v0;
  v61[1] = sub_22FB39340;

  return MEMORY[0x28219C760](v60);
}

uint64_t sub_22FB39340()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_22FB3A300;
  }

  else
  {
    v2 = sub_22FB3945C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB3945C()
{
  v34 = v0;
  v1 = v0[48];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[31];
  v5 = *(v0[32] + 16);
  v0[51] = v5;
  v5(v2, v3, v4);
  v6 = v1;
  v7 = sub_22FCC8664();
  v8 = sub_22FCC8EF4();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[48];
    v9 = v0[34];
    v11 = v0[31];
    v10 = v0[32];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315394;
    sub_22FCC7EF4();
    v14 = sub_22FCC8AE4();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_22FA2F600(v14, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v32 localIdentifier];
    v19 = sub_22FCC8A84();
    v21 = v20;

    v22 = sub_22FA2F600(v19, v21, &v33);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_22FA28000, v7, v8, "Generated Spatial Scene with type %s for asset %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
    v26 = v0[34];
    v27 = v0[31];
    v28 = v0[32];

    v23 = (*(v28 + 8))(v26, v27);
  }

  v29 = v0[44];
  v0[52] = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = swift_task_alloc();
    v0[53] = v30;
    *v30 = v0;
    v30[1] = sub_22FB396F8;
    v24 = v0[46];
    v25 = v0[35];
    v23 = v0[23];
  }

  return MEMORY[0x28219C060](v23, v24, v25);
}

uint64_t sub_22FB396F8()
{
  *(*v1 + 432) = v0;

  if (v0)
  {

    v2 = sub_22FB3AA18;
  }

  else
  {
    v2 = sub_22FB39814;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB39814()
{
  v121 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  (*(v4 + 16))(v2, *(v0 + 184), v3);
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == v1)
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);

    (*(v9 + 96))(v8, v10);
    (*(v13 + 32))(v11, v8, v14);
    (*(v13 + 16))(v12, v11, v14);
    v15 = v6;
    v16 = v7;
    v17 = sub_22FCC8664();
    v18 = sub_22FCC8EF4();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 384);
    if (v19)
    {
      v21 = *(v0 + 368);
      v116 = *(v0 + 160);
      v118 = *(v0 + 184);
      v114 = *(v0 + 152);
      v115 = *(v0 + 168);
      v112 = *(v0 + 136);
      v110 = *(v0 + 128);
      v111 = *(v0 + 144);
      v22 = *(v0 + 384);
      v23 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v120 = v113;
      *v23 = 136315650;
      v24 = [v21 localIdentifier];
      v25 = sub_22FCC8A84();
      v27 = v26;

      v28 = sub_22FA2F600(v25, v27, &v120);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = [v22 localIdentifier];
      v30 = sub_22FCC8A84();
      v32 = v31;

      v33 = sub_22FA2F600(v30, v32, &v120);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2080;
      sub_22FB3B414(&qword_27DAD87D8, 255, MEMORY[0x277D3C190]);
      v34 = sub_22FCC96C4();
      v36 = v35;
      v37 = *(v112 + 8);
      v37(v111, v110);
      v38 = sub_22FA2F600(v34, v36, &v120);

      *(v23 + 24) = v38;
      _os_log_impl(&dword_22FA28000, v17, v18, "Suggestion %s (asset %s) failed gating for reason: %s.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);

      v37(v114, v110);
      (*(v115 + 8))(v118, v116);
    }

    else
    {
      v61 = *(v0 + 184);
      v63 = *(v0 + 160);
      v62 = *(v0 + 168);
      v65 = *(v0 + 144);
      v64 = *(v0 + 152);
      v66 = *(v0 + 128);
      v67 = *(v0 + 136);

      v68 = *(v67 + 8);
      v68(v65, v66);
      v68(v64, v66);
      (*(v62 + 8))(v61, v63);
    }

    v70 = *(v0 + 328);
    v69 = *(v0 + 336);
  }

  else
  {
    if (v5 != *(v0 + 444))
    {
      sub_22FCC9384();
      *(v0 + 96) = 0;
      *(v0 + 104) = 0xE000000000000000;
      MEMORY[0x231907FA0](0xD000000000000015, 0x800000022FCE4540);
      sub_22FCC94A4();
      return sub_22FCC94D4();
    }

    v39 = *(v0 + 384);
    v40 = *(v0 + 368);

    v41 = v39;
    v42 = v40;
    v43 = sub_22FCC8664();
    v44 = sub_22FCC8EF4();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 384);
    if (v45)
    {
      v47 = *(v0 + 368);
      v48 = *(v0 + 168);
      v117 = *(v0 + 160);
      v119 = *(v0 + 184);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v120 = v50;
      *v49 = 136315394;
      v51 = [v47 localIdentifier];
      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v120);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = [v46 localIdentifier];
      v57 = sub_22FCC8A84();
      v59 = v58;

      v60 = sub_22FA2F600(v57, v59, &v120);

      *(v49 + 14) = v60;
      _os_log_impl(&dword_22FA28000, v43, v44, "Suggestion %s (asset %s) passes gating", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v50, -1, -1);
      MEMORY[0x23190A000](v49, -1, -1);

      (*(v48 + 8))(v119, v117);
    }

    else
    {
      v72 = *(v0 + 184);
      v73 = *(v0 + 160);
      v74 = *(v0 + 168);

      (*(v74 + 8))(v72, v73);
    }

    v69 = *(v0 + 328) + 1;
    v70 = v69;
  }

  v75 = *(v0 + 416);
  v76 = *(v0 + 432);
  while (1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v77 = *(v0 + 368);
    if (v76)
    {
      v97 = *(v0 + 296);
      v98 = *(v0 + 192);
      v99 = *(v0 + 200);
      v100 = *(v0 + 112);
      (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

      (*(v99 + 8))(v100, v98);

      v106 = *(v0 + 8);
      goto LABEL_32;
    }

    v78 = *(v0 + 344);
    v79 = *(v0 + 304);

    v80 = v78 + 1;
    if (v78 + 1 == v79)
    {
      break;
    }

    *(v0 + 352) = v75;
    *(v0 + 360) = v75;
    *(v0 + 336) = v69;
    *(v0 + 344) = v80;
    *(v0 + 328) = v70;
    if (v70 > 8)
    {
      break;
    }

    v81 = *(v0 + 288) & 0xC000000000000001;
    v82 = sub_22FCC8434();
    v83 = *(v0 + 288);
    if (v81)
    {
      v84 = MEMORY[0x231908810](v80, v83);
    }

    else
    {
      if (v80 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x28219C760](v82);
      }

      v84 = *(v83 + 8 * v80 + 32);
    }

    *(v0 + 368) = v84;
    v85 = [v84 uuid];
    v76 = 0;
    if (v85)
    {
      v86 = *(v0 + 312);
      v87 = v85;
      v88 = sub_22FCC8A84();
      v90 = v89;

      *(v0 + 376) = v90;
      if (*(v86 + 16))
      {
        v91 = sub_22FA2DB54(v88, v90);
        if (v92)
        {
          v107 = *(*(*(v0 + 312) + 56) + 8 * v91);
          *(v0 + 384) = v107;
          v108 = v107;
          v109 = swift_task_alloc();
          *(v0 + 392) = v109;
          *v109 = v0;
          v109[1] = sub_22FB39340;
          v82 = v108;

          return MEMORY[0x28219C760](v82);
        }
      }

      v76 = 0;
    }
  }

  v93 = *(v0 + 120);

  sub_22FA2E6E4(v93 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v94 = *(v0 + 120);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v95 = *(v0 + 40);
    v96 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v95);
    (*(v96 + 16))(v75, *(v94 + 64), *(v94 + 72), v95, v96);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0);
  }

  v101 = sub_22FCC8664();
  v102 = sub_22FCC8F34();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = *(v0 + 304);
    v104 = swift_slowAlloc();
    *v104 = 134218496;
    *(v104 + 4) = v75;
    *(v104 + 12) = 2048;
    *(v104 + 14) = v103;
    *(v104 + 22) = 2048;
    *(v104 + 24) = v69;
    _os_log_impl(&dword_22FA28000, v101, v102, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v104, 0x20u);
    MEMORY[0x23190A000](v104, -1, -1);
  }

  sub_22FCC8484();
  v105 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  v106 = *(v0 + 8);
LABEL_32:

  return v106();
}

uint64_t sub_22FB3A300()
{
  v63 = v0;
  v1 = *(v0 + 400);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 384);
  (*(*(v0 + 256) + 16))(*(v0 + 264), *(v0 + 280), *(v0 + 248));
  v5 = v4;
  v6 = v1;
  v7 = sub_22FCC8664();
  v8 = sub_22FCC8F14();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 384);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v13 = *(v0 + 248);
  if (v9)
  {
    v57 = *(v0 + 384);
    v60 = v8;
    v59 = v7;
    v14 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62[0] = v61;
    *v14 = 136315650;
    sub_22FCC7EF4();
    v15 = sub_22FCC8AE4();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_22FA2F600(v15, v17, v62);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [v57 localIdentifier];
    v20 = sub_22FCC8A84();
    v22 = v21;

    v23 = sub_22FA2F600(v20, v22, v62);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v25;
    *v58 = v25;
    _os_log_impl(&dword_22FA28000, v59, v60, "Error generating Spatial3D resource with type %s for asset %s: %@", v14, 0x20u);
    sub_22FA2B420(v58, &unk_27DAD7B10);
    MEMORY[0x23190A000](v58, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v61, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v27 = *(v0 + 328);
  v26 = *(v0 + 336);
  while (1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v28 = *(v0 + 344);
    v29 = *(v0 + 304);

    v30 = v28 + 1;
    if (v30 == v29)
    {
      break;
    }

    *(v0 + 352) = v3;
    *(v0 + 360) = v2;
    *(v0 + 336) = v26;
    *(v0 + 344) = v30;
    *(v0 + 328) = v27;
    if (v27 > 8)
    {
      break;
    }

    v31 = *(v0 + 288) & 0xC000000000000001;
    v32 = sub_22FCC8434();
    v33 = *(v0 + 288);
    if (v31)
    {
      v34 = MEMORY[0x231908810](v30, v33);
    }

    else
    {
      if (v30 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x28219C760](v32);
      }

      v34 = *(v33 + 8 * v30 + 32);
    }

    *(v0 + 368) = v34;
    v35 = [v34 uuid];
    if (v35)
    {
      v36 = *(v0 + 312);
      v37 = v35;
      v38 = sub_22FCC8A84();
      v40 = v39;

      *(v0 + 376) = v40;
      if (*(v36 + 16))
      {
        v41 = sub_22FA2DB54(v38, v40);
        if (v42)
        {
          v54 = *(*(*(v0 + 312) + 56) + 8 * v41);
          *(v0 + 384) = v54;
          v55 = v54;
          v56 = swift_task_alloc();
          *(v0 + 392) = v56;
          *v56 = v0;
          v56[1] = sub_22FB39340;
          v32 = v55;

          return MEMORY[0x28219C760](v32);
        }
      }
    }
  }

  v43 = *(v0 + 120);

  sub_22FA2E6E4(v43 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v44 = *(v0 + 120);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v45 = *(v0 + 40);
    v46 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v45);
    (*(v46 + 16))(v2, *(v44 + 64), *(v44 + 72), v45, v46);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0);
  }

  v47 = sub_22FCC8664();
  v48 = sub_22FCC8F34();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 304);
    v50 = swift_slowAlloc();
    *v50 = 134218496;
    *(v50 + 4) = v2;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v49;
    *(v50 + 22) = 2048;
    *(v50 + 24) = v26;
    _os_log_impl(&dword_22FA28000, v47, v48, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v50, 0x20u);
    MEMORY[0x23190A000](v50, -1, -1);
  }

  sub_22FCC8484();
  v51 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_22FB3AA18()
{
  v61 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  (*(v0 + 408))(*(v0 + 264), *(v0 + 280), *(v0 + 248));
  v4 = v3;
  v5 = v1;
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F14();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 384);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  v12 = *(v0 + 248);
  if (v8)
  {
    v56 = *(v0 + 384);
    v58 = v6;
    v13 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60[0] = v59;
    *v13 = 136315650;
    sub_22FCC7EF4();
    v14 = sub_22FCC8AE4();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_22FA2F600(v14, v16, v60);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v56 localIdentifier];
    v19 = sub_22FCC8A84();
    v21 = v20;

    v22 = sub_22FA2F600(v19, v21, v60);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2112;
    v23 = v1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v24;
    *v57 = v24;
    _os_log_impl(&dword_22FA28000, v58, v7, "Error generating Spatial3D resource with type %s for asset %s: %@", v13, 0x20u);
    sub_22FA2B420(v57, &unk_27DAD7B10);
    MEMORY[0x23190A000](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v59, -1, -1);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  while (1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v27 = *(v0 + 344);
    v28 = *(v0 + 304);

    v29 = v27 + 1;
    if (v27 + 1 == v28)
    {
      break;
    }

    *(v0 + 352) = v2;
    *(v0 + 360) = v2;
    *(v0 + 336) = v25;
    *(v0 + 344) = v29;
    *(v0 + 328) = v26;
    if (v26 > 8)
    {
      break;
    }

    v30 = *(v0 + 288) & 0xC000000000000001;
    v31 = sub_22FCC8434();
    v32 = *(v0 + 288);
    if (v30)
    {
      v33 = MEMORY[0x231908810](v29, v32);
    }

    else
    {
      if (v29 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x28219C760](v31);
      }

      v33 = *(v32 + 8 * v29 + 32);
    }

    *(v0 + 368) = v33;
    v34 = [v33 uuid];
    if (v34)
    {
      v35 = *(v0 + 312);
      v36 = v34;
      v37 = sub_22FCC8A84();
      v39 = v38;

      *(v0 + 376) = v39;
      if (*(v35 + 16))
      {
        v40 = sub_22FA2DB54(v37, v39);
        if (v41)
        {
          v53 = *(*(*(v0 + 312) + 56) + 8 * v40);
          *(v0 + 384) = v53;
          v54 = v53;
          v55 = swift_task_alloc();
          *(v0 + 392) = v55;
          *v55 = v0;
          v55[1] = sub_22FB39340;
          v31 = v54;

          return MEMORY[0x28219C760](v31);
        }
      }
    }
  }

  v42 = *(v0 + 120);

  sub_22FA2E6E4(v42 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v43 = *(v0 + 120);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v44 = *(v0 + 40);
    v45 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v44);
    (*(v45 + 16))(v2, *(v43 + 64), *(v43 + 72), v44, v45);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0);
  }

  v46 = sub_22FCC8664();
  v47 = sub_22FCC8F34();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 304);
    v49 = swift_slowAlloc();
    *v49 = 134218496;
    *(v49 + 4) = v2;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v48;
    *(v49 + 22) = 2048;
    *(v49 + 24) = v25;
    _os_log_impl(&dword_22FA28000, v46, v47, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v49, 0x20u);
    MEMORY[0x23190A000](v49, -1, -1);
  }

  sub_22FCC8484();
  v50 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_22FB3B128()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB3B1BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = type metadata accessor for GyroPosterSuggestionGenerationTask();
  return v0;
}

uint64_t sub_22FB3B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB38198(a2, a3);
}

uint64_t sub_22FB3B2E8(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB3B390(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB3B414(&unk_28147C5B0, a2, type metadata accessor for Spatial3DPickerPreviewGenerationTask);
  result = sub_22FB3B414(&qword_27DAD87D0, v3, type metadata accessor for Spatial3DPickerPreviewGenerationTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB3B414(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22FB3B45C()
{
  result = qword_27DAD7F48;
  if (!qword_27DAD7F48)
  {
    sub_22FA3A77C(255, &qword_27DAD83F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7F48);
  }

  return result;
}

void *sub_22FB3B4C4()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0x7672655374736554;
  result[3] = 0xEB00000000656369;
  result[4] = 0;
  qword_27DAE2990 = result;
  return result;
}

uint64_t sub_22FB3B518()
{
  if (qword_27DAD6ED8 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB3B5D8()
{
  v1 = *(*(v0 + 40) + 152);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22FB3B5FC, v1, 0);
}

uint64_t sub_22FB3B5FC()
{
  v11 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22FA86D94(*(v2 + 16), 0);
    v5 = sub_22FA88AB8(&v10, (v4 + 4), v3, v2);

    sub_22FA37D64();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[7] = v4;
  v6 = *(v0[6] + 128);
  sub_22FB3D7F0(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_22FB3B7D0;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FB3B7D0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22FA82CBC, v1, 0);
}

uint64_t sub_22FB3B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return MEMORY[0x2822009F8](sub_22FB3B94C, v6, 0);
}

uint64_t sub_22FB3B94C()
{
  v1 = *(v0 + 144);
  v2 = v1[18];
  if (*(v2 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v22 = *(v0 + 104);
    v24 = v1[16];
    v25 = v1[17];

    MEMORY[0x231907FA0](58, 0xE100000000000000);
    MEMORY[0x231907FA0](v6, v5);
    v7 = v1[14];
    *(v0 + 40) = type metadata accessor for TestWorker();
    *(v0 + 48) = sub_22FB3D7F0(&qword_27DAD8250, 255, type metadata accessor for TestWorker);
    *(v0 + 16) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76B0);
    v10 = swift_allocObject();
    *(v0 + 152) = v10;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 16) = v24;
    *(v10 + 24) = v25;
    *(v10 + 32) = v24;
    *(v10 + 40) = v25;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0;
    sub_22FA2D89C((v0 + 16), v10 + 144);
    *(v10 + 128) = &unk_22FCD7F10;
    *(v10 + 136) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v24;
    *(v11 + 24) = v25;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_22FB3D2D8;
    *(v12 + 24) = v11;
    *(v10 + 184) = sub_22FB3D2E0;
    *(v10 + 192) = v12;
    *(v0 + 80) = v9;
    v13 = sub_22FB3D318();
    *(v0 + 56) = v10;
    *(v0 + 88) = v13;
    swift_bridgeObjectRetain_n();

    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_22FB3BC78;
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);

    return sub_22FB7CDB0(v0 + 56, v17, v22, v15, v16);
  }

  else
  {
    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_22FB3BC78(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = v6[18];
    v8 = sub_22FB3BE2C;
  }

  else
  {
    v9 = v6[18];
    v6[22] = a2;
    v6[23] = a1;
    __swift_destroy_boxed_opaque_existential_0((v6 + 7));
    v8 = sub_22FB3BDC4;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22FB3BDC4()
{

  v1 = v0[1];
  v3 = v0[22];
  v2 = v0[23];

  return v1(v2, v3);
}

uint64_t sub_22FB3BE2C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB3BE98@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if (a2(0.0))
  {
    result = sub_22FAF86E0(*(*(a3 + 112) + 128));
    *a4 = result;
    a4[1] = v8;
  }

  else
  {
    sub_22FAE11BC();
    swift_allocError();
    v10 = v9;
    sub_22FA2D328(a1, v9);
    *(v10 + 48) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22FB3C0C8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_22FCC8A84();
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_22FB3C158, 0, 0);
}

uint64_t sub_22FB3C158()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22FB3C240;
  v2 = v0[4];
  v3 = v0[5];

  return (sub_22FB3B920)(0xD000000000000010, 0x800000022FCE4620, v2, v3, sub_22FB3D478);
}

uint64_t sub_22FB3C240(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_22FB3C42C;
  }

  else
  {

    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_22FB3C388;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB3C388()
{

  v1 = sub_22FCC8A54();

  v2 = *(v0 + 24);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FB3C42C()
{
  v1 = v0[7];

  v2 = sub_22FCC6504();

  v3 = v0[3];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB3C4DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if (a2(0.0))
  {
    v8 = 0;
    while (v8 != 200)
    {
      v9 = usleep(0x186A0u);
      v10 = (a2)(v9, v8++ / 200.0);
      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = sub_22FAF86E0(*(*(a3 + 112) + 128));
    *a4 = result;
    a4[1] = v14;
  }

  else
  {
LABEL_5:
    sub_22FAE11BC();
    swift_allocError();
    v12 = v11;
    sub_22FA2D328(a1, v11);
    *(v12 + 48) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22FB3C75C(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_22FCC8A84();
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_22FB3C7EC, 0, 0);
}

uint64_t sub_22FB3C7EC()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22FB3C8D4;
  v2 = v0[4];
  v3 = v0[5];

  return (sub_22FB3B920)(0xD000000000000014, 0x800000022FCE4600, v2, v3, sub_22FB3D1D4);
}

uint64_t sub_22FB3C8D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_22FB3D838;
  }

  else
  {

    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_22FB3D83C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB3CC00()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_22FB3CC50()
{
  v1 = *(*(v0 + 16) + 144);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FB3CD0C;
  v3 = *(v0 + 16);

  return sub_22FAE3FDC(v1, v3);
}

uint64_t sub_22FB3CD0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FB3CE70(uint64_t a1, uint64_t a2)
{
  result = sub_22FB3D7F0(&qword_27DAD87E0, a2, type metadata accessor for TestService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB3CEC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB3D7F0(&qword_27DAD87E8, a2, type metadata accessor for TestService);
  result = sub_22FB3D7F0(&qword_27DAD87F0, v3, type metadata accessor for TestService);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB3CF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *__return_ptr, void *, uint64_t, uint64_t, uint64_t))
{
  v18 = v6;
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76B0);
  v16[4] = sub_22FB3D318();
  v16[0] = a2;

  a6(v17, v16, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_0(v16);
  v13 = v17[1];
  *a1 = v17[0];
  a1[1] = v13;
  v14 = *(v6 + 8);

  return v14();
}

uint64_t sub_22FB3D04C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE3AE0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22FB3D120()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB3C75C(v2, v3, v4);
}

uint64_t sub_22FB3D1F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FA2C030;

  return sub_22FB3CF4C(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_22FB3D2E0(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_22FB3D318()
{
  result = qword_27DAD76B8;
  if (!qword_27DAD76B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD76B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD76B8);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FB3D3C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C030;

  return sub_22FB3C0C8(v2, v3, v4);
}

uint64_t *sub_22FB3D494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v27 = a5;
  v26 = a4;
  v10 = *v5;
  v11 = sub_22FCC8684();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  swift_defaultActor_initialize();
  v6[16] = a1;
  v6[17] = a2;
  v6[14] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7680);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FCD1800;
  *(v18 + 56) = type metadata accessor for TestWorker();
  *(v18 + 64) = sub_22FB3D7F0(&qword_27DAD8250, 255, type metadata accessor for TestWorker);
  *(v18 + 32) = a3;
  v6[15] = v18;
  v20 = sub_22FB3D7F0(&unk_27DAD7B40, v19, type metadata accessor for TestService);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_22FA2CEC4(v10, v20);
  type metadata accessor for StateHolder();
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v21[2] = 0x7672655374736554;
  v21[3] = 0xEB00000000656369;
  v21[4] = a1;
  v21[5] = a2;
  v22 = *(v12 + 16);
  v22(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v17, v11);
  v22(v15, v17, v11);
  sub_22FCC85E4();
  (*(v12 + 8))(v17, v11);
  v6[18] = v21;
  type metadata accessor for ServiceOperationManager();
  v23 = swift_allocObject();
  v24 = v26;

  swift_defaultActor_initialize();
  *(v23 + 144) = MEMORY[0x277D84F98];
  *(v23 + 152) = 0;
  *(v23 + 112) = a1;
  *(v23 + 120) = a2;
  *(v23 + 128) = v24;
  *(v23 + 136) = v27;
  v6[19] = v23;
  if (qword_27DAD6ED8 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v6;
}

uint64_t sub_22FB3D7F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22FB3D840(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
LABEL_32:
    v5 = sub_22FCC92C4();
    if (v5)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return a1;
  }

LABEL_3:
  v6 = 0;
  v32 = v3 & 0xFFFFFFFFFFFFFF8;
  v33 = v3 & 0xC000000000000001;
  v30 = v5;
  v31 = v3;
  while (1)
  {
    if (v33)
    {
      v7 = MEMORY[0x231908810](v6, v3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 >= *(v32 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v6 + 32);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    v9 = v7;
    v10 = [v9 string];
    v11 = sub_22FCC8A84();
    v3 = v12;

    swift_beginAccess();
    v13 = *a3;
    if (*(*a3 + 16))
    {
      v14 = sub_22FA2DB54(v11, v3);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v13 + 56) + 8 * v14);
        swift_endAccess();

        goto LABEL_14;
      }
    }

    else
    {
    }

    swift_endAccess();
    v17 = MEMORY[0x277D84FA0];
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_22FA6A0C0(v9);
    v21 = a1[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_30;
    }

    v3 = v19;
    if (a1[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_22FA6FDC0();
      if (v3)
      {
LABEL_4:
        *(a1[7] + 8 * v20) = v17;

        goto LABEL_5;
      }
    }

LABEL_21:
    a1[(v20 >> 6) + 8] |= 1 << v20;
    *(a1[6] + 8 * v20) = v9;
    *(a1[7] + 8 * v20) = v17;
    v26 = a1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_31;
    }

    a1[2] = v28;

LABEL_5:
    ++v6;
    v3 = v31;
    if (v8 == v30)
    {
      return a1;
    }
  }

  sub_22FA6B5B4(v23, isUniquelyReferenced_nonNull_native);
  v24 = sub_22FA6A0C0(v9);
  if ((v3 & 1) == (v25 & 1))
  {
    v20 = v24;
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  sub_22FA3A77C(0, &qword_28147AE88);
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t sub_22FB3DB04(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v4 = (result + 40);
  v5 = MEMORY[0x277D84FA0];
  while (1)
  {
    v7 = *(v4 - 1);
    v6 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a2;
    v23 = *a2;
    *a2 = 0x8000000000000000;
    v10 = sub_22FA2DB54(v7, v6);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_22FA6B58C(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_22FA2DB54(v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v23;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = v10;
    sub_22FA6FD98();
    v10 = v22;
    v18 = v23;
    if (v16)
    {
LABEL_3:
      *(v18[7] + 8 * v10) = v5;

      goto LABEL_4;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v10) = v5;
    v20 = v18[2];
    v14 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v21;

LABEL_4:
    *a2 = v18;

    v4 += 2;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t PromptSuggestionValidationResult.promptId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptSuggestionValidationResult.init(promptId:attributedString:assetUUIDs:queryTokens:timeRangeValidation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

double sub_22FB3DD18()
{
  sub_22FCC8E24();
  result = v0 * 11.0;
  qword_27DAD87F8 = *&result;
  return result;
}

double static PromptSuggestionValidator.allTimeDateRangeThreshold.getter()
{
  if (qword_27DAD6EE0 != -1)
  {
    swift_once();
  }

  return *&qword_27DAD87F8;
}

uint64_t sub_22FB3DD90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22FCC68A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC6874();
  v6 = sub_22FCC6834();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for LocalizedStringProvider();
  v10 = swift_allocObject();
  v11 = type metadata accessor for PromptSuggestionQUProvider();
  v12 = swift_allocObject();
  v23 = v9;
  v24 = &protocol witness table for LocalizedStringProvider;
  *&v22 = v10;
  v13 = OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_logger;
  v14 = qword_28147DF50;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_22FCC8684();
  v16 = __swift_project_value_buffer(v15, qword_28147DF58);
  (*(*(v15 - 8) + 16))(v12 + v13, v16, v15);
  *(v12 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse) = 0;
  v17 = (v12 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localeIdentifier);
  *v17 = v6;
  v17[1] = v8;
  sub_22FA2CF78(&v22, v12 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localizedStringProvider);

  v18 = type metadata accessor for PromptSuggestionQUProcessor();
  v19 = swift_allocObject();
  v23 = v11;
  v24 = &protocol witness table for PromptSuggestionQUProvider;
  *&v22 = v12;

  sub_22FCC8674();
  sub_22FA2CF78(&v22, v19 + 16);

  a1[3] = v18;
  a1[4] = &protocol witness table for PromptSuggestionQUProcessor;
  *a1 = v19;
  return result;
}

uint64_t PromptSuggestionValidator.__allocating_init(storyPhotoLibraryContext:safetyController:momentExpansionProcessor:momentBasedGroundingAndAssetsProvider:annotationProvider:quProcessor:maxAssetFetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v15 = *(a5 + 24);
  v16 = *(a5 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = sub_22FB55560(a1, v14, a3, a4, v17, a6, a7, v22, v15, v13, v16, v12);

  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t PromptSuggestionValidator.init(storyPhotoLibraryContext:safetyController:momentExpansionProcessor:momentBasedGroundingAndAssetsProvider:annotationProvider:quProcessor:maxAssetFetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v25 = a4;
  v26 = a6;
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = *(a5 + 24);
  v18 = *(a5 + 32);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_22FB54D0C(a1, v15, a3, v25, v21, v26, v27, v28, v17, v12, v18, v11);

  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v23;
}

uint64_t sub_22FB3E2E0()
{
  v1 = (v0[7] + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_22FCC8554();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80);
  v0[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  MEMORY[0x231907860]();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FB3E400;

  return MEMORY[0x28219C750](v0 + 2, v2, v3);
}

uint64_t sub_22FB3E400()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FB3E53C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FB3E53C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB3E5C0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_22FA7CBA4;

  return v6(v2, v3);
}

id PromptSuggestionValidator.validationAssetCountThreshold.getter()
{
  v0 = objc_opt_self();

  return [v0 promptValidationAssetCountThreshold];
}

uint64_t sub_22FB3E728()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback);
  }

  else
  {
    v3 = v0;
    v4 = sub_22FCC7DF4();
    v5 = [objc_allocWithZone(MEMORY[0x277CD99F8]) initWithPhotoLibrary_];

    v9[4] = sub_22FB3E884;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_22FC4C978;
    v9[3] = &block_descriptor_23;
    v6 = _Block_copy(v9);
    v7 = [v5 personUUIDsWithUserFeedbackFilterBlock_];
    _Block_release(v6);

    v2 = sub_22FCC8E84();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t PromptSuggestionValidator.validatePeople(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for TemplatedPrompt();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_22FCC84E4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB3E9BC, 0, 0);
}

uint64_t sub_22FB3E9BC()
{
  v39 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v34 = v0[6];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_22FCC8414();
  v3 = *(v2 + 16);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v2 + 16);
  }

  v33 = *(v2 + 16);
  if (v3)
  {
    v5 = 1.0 / v4;
    v35 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
    v6 = v0[10];
    v7 = *(v6 + 72);
    v36 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = v0[5] + v36;
    v9 = MEMORY[0x277D84F90];
    v10 = 0.0;
    v37 = v7;
    while (1)
    {
      sub_22FB26F90(v8, v0[12]);
      v10 = v5 + v10;
      sub_22FCC8FF4();
      v11 = sub_22FCC7BA4();
      if (!v12)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      v15 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v15 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        swift_beginAccess();
        v16 = *(v1 + v35);
        if (*(v16 + 16) && (v17 = sub_22FA2DB54(v13, v14), (v18 & 1) != 0))
        {
          v19 = *(*(v16 + 56) + v17);
          swift_endAccess();

          if (v19)
          {
            break;
          }
        }

        else
        {
          v20 = v0[8];
          swift_endAccess();
          v21 = objc_autoreleasePoolPush();
          sub_22FB3EFE8(v20, v13, v14, v38);

          objc_autoreleasePoolPop(v21);
          v7 = v37;
          if (v38[0])
          {
            break;
          }
        }
      }

      else
      {
      }

      sub_22FA72A34(v0[12]);
LABEL_8:
      v8 += v7;
      if (!--v3)
      {
        goto LABEL_24;
      }
    }

    sub_22FB5570C(v0[12], v0[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22FA86F90(0, *(v9 + 16) + 1, 1);
    }

    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22FA86F90(v22 > 1, v23 + 1, 1);
    }

    v24 = v0[11];
    *(v9 + 16) = v23 + 1;
    sub_22FB5570C(v24, v9 + v36 + v23 * v7);
    goto LABEL_8;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_24:
  sub_22FCC9004();

  v25 = sub_22FCC8664();
  v26 = sub_22FCC8F34();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = *(v9 + 16);

    *(v27 + 12) = 2048;
    *(v27 + 14) = v33;

    _os_log_impl(&dword_22FA28000, v25, v26, "Person validation passed %ld of %ld prompt templates", v27, 0x16u);
    MEMORY[0x23190A000](v27, -1, -1);
  }

  else
  {
  }

  v29 = v0[14];
  v28 = v0[15];
  v30 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0[6], v34[3]);
  sub_22FCC83F4();
  (*(v29 + 8))(v28, v30);

  v31 = v0[1];

  return v31(v9);
}

void sub_22FB3EFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v63 = sub_22FCC7E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD17F0;
  *(v6 + 32) = sub_22FCC8A84();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_22FCC8A84();
  *(v6 + 56) = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_22FCC8C24();

  [v63 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FCD7460;
  sub_22FA3A77C(0, &qword_28147AEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22FCD17F0;
  *(v12 + 56) = v9;
  v13 = sub_22FA4EF4C();
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 96) = v9;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;

  *(v11 + 32) = sub_22FCC8EE4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FCD17F0;
  *(v14 + 56) = v9;
  *(v14 + 64) = v13;
  *(v14 + 32) = 0x4E79616C70736964;
  *(v14 + 40) = 0xEB00000000656D61;
  *(v14 + 96) = v9;
  *(v14 + 104) = v13;
  v61 = a2;
  *(v14 + 72) = a2;
  *(v14 + 80) = a3;
  v68 = a3;
  v15 = v63;

  *(v11 + 40) = sub_22FCC8EE4();
  v16 = sub_22FCC8C24();

  v17 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v63 setPredicate_];
  v18 = [objc_opt_self() fetchPersonsWithOptions_];
  v19 = [v18 fetchedObjects];

  if (!v19)
  {
LABEL_40:

    v51 = sub_22FCC8664();
    v52 = sub_22FCC8F14();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136315138;
      v55 = v61;
      *(v53 + 4) = sub_22FA2F600(v61, v68, v69);
      _os_log_impl(&dword_22FA28000, v51, v52, "Person %s is not found in person fetch. Assuming not valid", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x23190A000](v54, -1, -1);
      MEMORY[0x23190A000](v53, -1, -1);

      v50 = a4;
    }

    else
    {

      v50 = a4;
      v55 = v61;
    }

    v56 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(a1 + v56);
    *(a1 + v56) = 0x8000000000000000;
    sub_22FB263D0(0, v55, v68, isUniquelyReferenced_nonNull_native);
    *(a1 + v56) = v70;
    swift_endAccess();

    LOBYTE(v15) = 0;
    goto LABEL_46;
  }

  sub_22FA3A77C(0, &qword_27DAD7F20);
  v20 = sub_22FCC8C44();

  if (v20 >> 62)
  {
LABEL_49:
    v21 = sub_22FCC92C4();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v68;
  if (!v21)
  {

    goto LABEL_40;
  }

  v23 = v20;
  v24 = 0;
  v25 = v20 & 0xC000000000000001;
  v20 &= 0xFFFFFFFFFFFFFF8uLL;
  v60 = v23;
  v26 = v23 + 32;
  v15 = 1;
  v66 = v20;
  v67 = v21;
  v65 = v23 + 32;
  do
  {
    if (v25)
    {
      v27 = MEMORY[0x231908810](v24, v60);
    }

    else
    {
      if (v24 >= *(v20 + 16))
      {
        goto LABEL_48;
      }

      v27 = *(v26 + 8 * v24);
    }

    v28 = v27;
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((v15 & 1) == 0 || [v27 type] == -1)
    {
      v15 = 0;
    }

    else
    {
      v30 = sub_22FB3E728();
      v31 = [v28 uuid];
      if (!v31)
      {
        __break(1u);
        return;
      }

      v32 = v31;
      v33 = sub_22FCC8A84();
      v35 = v34;

      if (*(v30 + 16))
      {
        sub_22FCC9844();
        sub_22FCC8B14();
        v36 = sub_22FCC9894();
        v37 = -1 << *(v30 + 32);
        v38 = v36 & ~v37;
        if ((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          while (1)
          {
            v40 = (*(v30 + 48) + 16 * v38);
            v41 = *v40 == v33 && v40[1] == v35;
            if (v41 || (sub_22FCC9704() & 1) != 0)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              v15 = 1;
              goto LABEL_28;
            }
          }

          v15 = 0;
        }

        else
        {
          v15 = 1;
        }

LABEL_28:
        v22 = v68;
      }

      else
      {
        v15 = 1;
      }

      v20 = v66;
      v21 = v67;
      v26 = v65;
    }
  }

  while (v24 != v21);

  v42 = sub_22FCC8664();
  v43 = sub_22FCC8F34();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v69[0] = v45;
    *v44 = 136315394;
    v46 = v61;
    *(v44 + 4) = sub_22FA2F600(v61, v22, v69);
    *(v44 + 12) = 2080;
    if (v15)
    {
      v47 = 0x64696C6176;
    }

    else
    {
      v47 = 0xD00000000000001DLL;
    }

    if (v15)
    {
      v48 = 0xE500000000000000;
    }

    else
    {
      v48 = 0x800000022FCE4930;
    }

    v49 = sub_22FA2F600(v47, v48, v69);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_22FA28000, v42, v43, "Person %s is %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v45, -1, -1);
    MEMORY[0x23190A000](v44, -1, -1);

    v50 = a4;
  }

  else
  {

    v50 = a4;
    v46 = v61;
  }

  v58 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
  swift_beginAccess();
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v58);
  *(a1 + v58) = 0x8000000000000000;
  sub_22FB263D0(v15, v46, v22, v59);
  *(a1 + v58) = v70;
  swift_endAccess();

LABEL_46:
  *v50 = v15;
}

uint64_t PromptSuggestionValidator.safeFallbackPrompts(_:eventRecorder:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22FCC7824();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB3F8D4, 0, 0);
}

uint64_t sub_22FB3F8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = v7;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  v9 = *(v7 + 24);
  if (v9 >> 62)
  {
    v10 = sub_22FCC92C4();
    *(v7 + 72) = v10;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v7 + 72) = v10;
    if (v10)
    {
LABEL_3:
      if (v10 < 1)
      {
        __break(1u);
      }

      else
      {
        v11 = *(v7 + 24);
        v12 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController;
        v13 = MEMORY[0x277D3C308];
        *(v7 + 80) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;
        *(v7 + 88) = v12;
        *(v7 + 144) = *v13;
        *(v7 + 96) = 0;
        *(v7 + 104) = v8;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x231908810](0);
        }

        else
        {
          v14 = *(v11 + 32);
        }

        *(v7 + 112) = v14;
        v15 = v14;
        v16 = sub_22FCC8664();
        v17 = sub_22FCC8F34();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v40 = v19;
          *v18 = 136642819;
          v20 = [v15 description];
          v21 = sub_22FCC8A84();
          v23 = v22;

          v24 = sub_22FA2F600(v21, v23, &v40);

          *(v18 + 4) = v24;
          _os_log_impl(&dword_22FA28000, v16, v17, "[Safety] Fallback prompt requires safety validation: %{sensitive}s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x23190A000](v19, -1, -1);
          MEMORY[0x23190A000](v18, -1, -1);
        }

        v25 = *(v7 + 144);
        v26 = *(v7 + 56);
        v27 = *(v7 + 64);
        v28 = *(v7 + 48);
        v29 = (*(v7 + 40) + *(v7 + 88));
        v30 = v29[3];
        v39 = v29[4];
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v31 = [v15 string];
        v32 = sub_22FCC8A84();
        v34 = v33;

        *(v7 + 120) = v34;
        (*(v26 + 104))(v27, v25, v28);
        v35 = swift_task_alloc();
        *(v7 + 128) = v35;
        *v35 = v7;
        v35[1] = sub_22FB3FC04;
        a4 = *(v7 + 64);
        a5 = *(v7 + 32);
        v10 = v32;
        a2 = v34;
        a3 = 0;
        a6 = v30;
        a7 = v39;
      }

      return MEMORY[0x28219C8C8](v10, a2, a3, a4, a5, a6, a7);
    }
  }

  v36 = *(v7 + 8);
  v37 = MEMORY[0x277D84F90];

  return v36(v37);
}

uint64_t sub_22FB3FC04()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {
    (*(v4 + 8))(v2[8], v2[6]);

    v6 = sub_22FB400FC;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_22FB3FDCC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FB3FDCC()
{
  v33 = v0;
  MEMORY[0x231908070](*(v0 + 112));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22FCC8C64();
  }

  v1 = *(v0 + 112);
  sub_22FCC8C84();

  v2 = *(v0 + 16);
  v3 = *(v0 + 96) + 1;
  if (v3 == *(v0 + 72))
  {

    v4 = *(v0 + 8);

    return v4(v2);
  }

  else
  {
    *(v0 + 96) = v3;
    *(v0 + 104) = v2;
    v6 = *(v0 + 24);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x231908810]();
    }

    else
    {
      v7 = *(v6 + 8 * v3 + 32);
    }

    *(v0 + 112) = v7;
    v8 = v7;
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136642819;
      v13 = [v8 description];
      v14 = sub_22FCC8A84();
      v16 = v15;

      v17 = sub_22FA2F600(v14, v16, &v32);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_22FA28000, v9, v10, "[Safety] Fallback prompt requires safety validation: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23190A000](v12, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    v18 = *(v0 + 144);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = (*(v0 + 40) + *(v0 + 88));
    v23 = v22[3];
    v31 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v24 = [v8 string];
    v25 = sub_22FCC8A84();
    v27 = v26;

    *(v0 + 120) = v27;
    (*(v19 + 104))(v20, v18, v21);
    v28 = swift_task_alloc();
    *(v0 + 128) = v28;
    *v28 = v0;
    v28[1] = sub_22FB3FC04;
    v29 = *(v0 + 64);
    v30 = *(v0 + 32);

    return MEMORY[0x28219C8C8](v25, v27, 0, v29, v30, v23, v31);
  }
}

uint64_t sub_22FB400FC()
{
  v45 = v0;
  v1 = *(v0 + 112);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F14();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v7 = 136642819;
    v9 = [v6 description];
    v10 = sub_22FCC8A84();
    v12 = v11;

    v13 = sub_22FA2F600(v10, v12, &v44);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_22FA28000, v2, v3, "[Safety] Fallback prompt didn't pass safety validation: %{sensitive}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 96) + 1;
  if (v14 == *(v0 + 72))
  {
    v15 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    *(v0 + 96) = v14;
    v18 = *(v0 + 24);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x231908810]();
    }

    else
    {
      v19 = *(v18 + 8 * v14 + 32);
    }

    *(v0 + 112) = v19;
    v20 = v19;
    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136642819;
      v25 = [v20 description];
      v26 = sub_22FCC8A84();
      v28 = v27;

      v29 = sub_22FA2F600(v26, v28, &v44);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_22FA28000, v21, v22, "[Safety] Fallback prompt requires safety validation: %{sensitive}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23190A000](v24, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    v30 = *(v0 + 144);
    v31 = *(v0 + 56);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);
    v34 = (*(v0 + 40) + *(v0 + 88));
    v35 = v34[3];
    v43 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v36 = [v20 string];
    v37 = sub_22FCC8A84();
    v39 = v38;

    *(v0 + 120) = v39;
    (*(v31 + 104))(v32, v30, v33);
    v40 = swift_task_alloc();
    *(v0 + 128) = v40;
    *v40 = v0;
    v40[1] = sub_22FB3FC04;
    v41 = *(v0 + 64);
    v42 = *(v0 + 32);

    return MEMORY[0x28219C8C8](v37, v39, 0, v41, v42, v35, v43);
  }
}

uint64_t PromptSuggestionValidator.searchFallbackPrompts(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_22FB405A8;

  return PromptSuggestionValidator.safeFallbackPrompts(_:eventRecorder:)(a1, a2);
}

uint64_t sub_22FB405A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[6] = a1;

  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v4;
  v5[1] = sub_22FB40718;
  v6 = v3[3];

  return sub_22FB40DF4(a1, v6, 0, 0);
}

uint64_t sub_22FB40718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FB40DDC;
  }

  else
  {
    v4 = sub_22FB4084C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FB4084C()
{
  v52 = v0;
  v1 = v0[2];
  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      if (v2 < 1)
      {
        __break(1u);
        return;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = 0;
        v4 = MEMORY[0x277D84FA0];
        v5 = v0[8];
        while (1)
        {
          v8 = MEMORY[0x231908810](v3, v0[2]);
          v9 = v8;
          if (v5[2])
          {
            sub_22FA6A0C0(v8);
            if (v10)
            {
              goto LABEL_23;
            }
          }

          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v5;
          v1 = v5;
          v13 = sub_22FA6A0C0(v9);
          v14 = v5[2];
          v15 = (v12 & 1) == 0;
          v16 = v14 + v15;
          if (__OFADD__(v14, v15))
          {
            __break(1u);
            goto LABEL_46;
          }

          v17 = v12;
          if (v5[3] >= v16)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v12)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v1 = &v51;
              sub_22FA6FDC0();
              v5 = v51;
              if (v17)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            sub_22FA6B5B4(v16, isUniquelyReferenced_nonNull_native);
            v5 = v51;
            v1 = v51;
            v18 = sub_22FA6A0C0(v9);
            if ((v17 & 1) != (v19 & 1))
            {
              goto LABEL_42;
            }

            v13 = v18;
            if (v17)
            {
LABEL_17:
              *(v5[7] + 8 * v13) = v4;

              swift_unknownObjectRelease();
              goto LABEL_21;
            }
          }

          v5[(v13 >> 6) + 8] |= 1 << v13;
          *(v5[6] + 8 * v13) = v9;
          *(v5[7] + 8 * v13) = v4;
          v20 = v5[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_47;
          }

          v5[2] = v22;
LABEL_21:
          swift_unknownObjectRetain();
          v23 = sub_22FCC8664();
          v24 = sub_22FCC8F34();
          swift_unknownObjectRelease();
          if (!os_log_type_enabled(v23, v24))
          {

LABEL_23:
            swift_unknownObjectRelease();
            goto LABEL_7;
          }

          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *v6 = 138412290;
          *(v6 + 4) = v9;
          *v7 = v9;
          swift_unknownObjectRetain();
          _os_log_impl(&dword_22FA28000, v23, v24, "[Safety] No search results for prompt: %@", v6, 0xCu);
          sub_22FA2B420(v7, &unk_27DAD7B10);
          MEMORY[0x23190A000](v7, -1, -1);
          MEMORY[0x23190A000](v6, -1, -1);
          swift_unknownObjectRelease();

LABEL_7:
          if (v2 == ++v3)
          {
            goto LABEL_51;
          }
        }
      }

      v25 = (v0[2] + 32);
      v26 = MEMORY[0x277D84FA0];
      v5 = v0[8];
      v50 = v0;
      while (1)
      {
        v27 = v5[2];
        v28 = *v25;
        v29 = v28;
        if (!v27)
        {
          break;
        }

        sub_22FA6A0C0(v28);
        if ((v30 & 1) == 0)
        {
          break;
        }

LABEL_26:

        ++v25;
        if (!--v2)
        {
          goto LABEL_51;
        }
      }

      v31 = v29;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v5;
      v1 = v5;
      v34 = sub_22FA6A0C0(v31);
      v35 = v5[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (!__OFADD__(v35, v36))
      {
        break;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v2 = sub_22FCC92C4();
      if (!v2)
      {
        goto LABEL_50;
      }
    }

    v38 = v33;
    if (v5[3] < v37)
    {
      sub_22FA6B5B4(v37, v32);
      v5 = v51;
      v1 = v51;
      v39 = sub_22FA6A0C0(v31);
      if ((v38 & 1) != (v40 & 1))
      {
LABEL_42:
        sub_22FA3A77C(0, &qword_28147AE88);

        sub_22FCC9774();
        return;
      }

      v34 = v39;
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      *(v5[7] + 8 * v34) = v26;

LABEL_40:
      v43 = v31;
      v29 = sub_22FCC8664();
      v44 = sub_22FCC8F34();

      if (os_log_type_enabled(v29, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v43;
        *v46 = v43;
        v47 = v26;
        v48 = v43;
        _os_log_impl(&dword_22FA28000, v29, v44, "[Safety] No search results for prompt: %@", v45, 0xCu);
        sub_22FA2B420(v46, &unk_27DAD7B10);
        MEMORY[0x23190A000](v46, -1, -1);
        MEMORY[0x23190A000](v45, -1, -1);
        v43 = v29;
        v29 = v48;
        v26 = v47;
        v0 = v50;
      }

      goto LABEL_26;
    }

    if (v32)
    {
      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v1 = &v51;
      sub_22FA6FDC0();
      v5 = v51;
      if (v38)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    v5[(v34 >> 6) + 8] |= 1 << v34;
    *(v5[6] + 8 * v34) = v31;
    *(v5[7] + 8 * v34) = v26;
    v41 = v5[2];
    v21 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v21)
    {
      goto LABEL_48;
    }

    v5[2] = v42;
    goto LABEL_40;
  }

LABEL_50:
  v5 = v0[8];
LABEL_51:
  v49 = v0[1];

  v49(v5);
}

uint64_t sub_22FB40DF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 136) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_22FCC8494();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB40EC8, 0, 0);
}

uint64_t sub_22FB40EC8()
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    v4 = sub_22FCC92C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 80) = v4;
  if (v4 >= 1)
  {
    v5 = 0;
    sub_22FCC8464();
    v12 = *(v1 + 16);
    *(v1 + 88) = MEMORY[0x277D84F98];
    *(v1 + 96) = 10;
    *(v1 + 137) = 0;
    v13 = *(v1 + 80);
    if (v13 >= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = *(v1 + 80);
    }

    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v12 >> 62)
      {
        if (sub_22FCC92C4() < 0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v15 = sub_22FCC92C4();
      }

      else
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15 >= v14)
      {
        v16 = *(v1 + 16);
        if (v13 && (v16 & 0xC000000000000001) != 0)
        {
          sub_22FA3A77C(0, &qword_28147AE88);

          v17 = 0;
          do
          {
            v18 = v17 + 1;
            sub_22FCC93A4();
            v17 = v18;
          }

          while (v14 != v18);
          v16 = *(v1 + 16);
          if (v16 >> 62)
          {
LABEL_22:

            v0 = sub_22FCC94F4();
            v5 = v20;
            v2 = v21;
            if ((v21 & 1) == 0)
            {
LABEL_26:
              sub_22FACABA4(v0, v19, v5, v2);
              v23 = v22;
              goto LABEL_33;
            }

LABEL_27:
            v13 = v19;
            sub_22FCC9724();
            swift_unknownObjectRetain_n();
            v24 = swift_dynamicCastClass();
            if (!v24)
            {
              swift_unknownObjectRelease();
              v24 = MEMORY[0x277D84F90];
            }

            v25 = *(v24 + 16);

            if (!__OFSUB__(v2 >> 1, v5))
            {
              if (v25 == (v2 >> 1) - v5)
              {
                v23 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v23)
                {
LABEL_34:
                  *(v1 + 104) = v23;
                  v26 = *(v1 + 72);
                  v28 = *(v1 + 56);
                  v27 = *(v1 + 64);
                  v29 = *(v1 + 48);
                  sub_22FCC8444();
                  (*(v28 + 32))(v27, v26, v29);
                  v30 = swift_task_alloc();
                  *(v1 + 112) = v30;
                  *v30 = v1;
                  v30[1] = sub_22FB412C8;
                  v31 = *(v1 + 64);
                  v32 = *(v1 + 32);
                  v33 = *(v1 + 136);

                  return sub_22FB50260(v23, v31, v33, v32);
                }

                v23 = MEMORY[0x277D84F90];
LABEL_33:
                swift_unknownObjectRelease();
                goto LABEL_34;
              }

              goto LABEL_42;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            swift_unknownObjectRelease();
            v19 = v13;
            goto LABEL_26;
          }
        }

        else
        {

          if (v16 >> 62)
          {
            goto LABEL_22;
          }
        }

        v5 = 0;
        v2 = (2 * v14) | 1;
        v0 = v16 & 0xFFFFFFFFFFFFFF8;
        v19 = v0 + 32;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 24);
  v9 = sub_22FA4D238(MEMORY[0x277D84F90]);
  (*(v7 + 8))(v8, v6);

  v10 = *(v1 + 8);

  return v10(v9);
}

uint64_t sub_22FB412C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    v5 = sub_22FB41848;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_22FB41420;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB41420()
{
  v36 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 137);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v4;
  sub_22FB54A74(v1, sub_22FB53630, 0, isUniquelyReferenced_nonNull_native, &v35);

  v8 = v35;
  if ((v3 & 1) == 0 && v5 < v6)
  {
    v9 = *(v0 + 96);
    v10 = v9 + 10;
    v11 = __OFADD__(v9, 10);
    *(v0 + 88) = v35;
    *(v0 + 96) = v10;
    *(v0 + 137) = v11;
    if (v9 > 0x7FFFFFFFFFFFFFF5)
    {
      __break(1u);
    }

    else
    {
      if (*(v0 + 80) >= v10)
      {
        v12 = v9 + 10;
      }

      else
      {
        v12 = *(v0 + 80);
      }

      if (v12 >= v9)
      {
        v13 = *(v0 + 16);
        if (!(v13 >> 62))
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14 < v9)
          {
            goto LABEL_47;
          }

LABEL_20:
          if (v14 < v12)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v2 = *(v0 + 16);
          if (v9 == v12 || (v2 & 0xC000000000000001) == 0)
          {

            if (v2 >> 62)
            {
LABEL_27:

              v2 = sub_22FCC94F4();
              v6 = v20;
              v5 = v21;
              if ((v21 & 1) == 0)
              {
LABEL_31:
                sub_22FACABA4(v2, v19, v6, v5);
                v23 = v22;
                goto LABEL_38;
              }

LABEL_32:
              v1 = v19;
              sub_22FCC9724();
              swift_unknownObjectRetain_n();
              v24 = swift_dynamicCastClass();
              if (!v24)
              {
                swift_unknownObjectRelease();
                v24 = MEMORY[0x277D84F90];
              }

              v25 = *(v24 + 16);

              if (!__OFSUB__(v5 >> 1, v6))
              {
                if (v25 == (v5 >> 1) - v6)
                {
                  v23 = swift_dynamicCastClass();
                  swift_unknownObjectRelease();
                  if (v23)
                  {
LABEL_39:
                    *(v0 + 104) = v23;
                    v26 = *(v0 + 72);
                    v28 = *(v0 + 56);
                    v27 = *(v0 + 64);
                    v29 = *(v0 + 48);
                    sub_22FCC8444();
                    (*(v28 + 32))(v27, v26, v29);
                    v30 = swift_task_alloc();
                    *(v0 + 112) = v30;
                    *v30 = v0;
                    v30[1] = sub_22FB412C8;
                    v31 = *(v0 + 64);
                    v32 = *(v0 + 32);
                    v33 = *(v0 + 136);

                    return sub_22FB50260(v23, v31, v33, v32);
                  }

                  v23 = MEMORY[0x277D84F90];
LABEL_38:
                  swift_unknownObjectRelease();
                  goto LABEL_39;
                }

                goto LABEL_51;
              }

LABEL_50:
              __break(1u);
LABEL_51:
              swift_unknownObjectRelease();
              v19 = v1;
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= v12)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            sub_22FA3A77C(0, &qword_28147AE88);

            v17 = v9;
            do
            {
              v18 = v17 + 1;
              sub_22FCC93A4();
              v17 = v18;
            }

            while (v12 != v18);
            v2 = *(v0 + 16);
            if (v2 >> 62)
            {
              goto LABEL_27;
            }
          }

          v5 = (2 * v12) | 1;
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
          v19 = v2 + 32;
          v6 = v9;
          goto LABEL_32;
        }

        if (sub_22FCC92C4() >= v9)
        {
          v14 = sub_22FCC92C4();
          goto LABEL_20;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_22FCC8484();
  if (v2)
  {

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {

    v34 = *(v0 + 8);

    return v34(v8);
  }
}

uint64_t sub_22FB41848()
{
  (*(v0[7] + 8))(v0[3], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t PromptSuggestionValidator.validateOfflineLLMQU(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_22FCC84E4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB419A0, 0, 0);
}

void sub_22FB419A0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_22FCC8414();
  v1 = [objc_opt_self() promptValidationBatchSize];
  *(v0 + 160) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = v1;
    _os_log_impl(&dword_22FA28000, v2, v3, "Validating %ld prompts in batches of %ld", v6, 0x16u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  else
  {
  }

  if (v1)
  {
    v7 = *(v0 + 96);
    v8 = v7[2];

    v9 = sub_22FB53FDC(0, v8, v1, v7, v1);
    *(v0 + 168) = v9;

    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    v10 = *(v9 + 16);
    *(v0 + 176) = v10;
    if (v10)
    {
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0u;
      *(v0 + 184) = MEMORY[0x277D84F98];
      v11 = *(v0 + 104);
      v12 = *(*(v0 + 168) + 32);
      *(v0 + 224) = v12;
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);

      sub_22FCC8414();
      v13 = swift_task_alloc();
      *(v0 + 232) = v13;
      *v13 = v0;
      v13[1] = sub_22FB41DA0;
      v14 = *(v0 + 112);
      v15 = *(v0 + 104);

      sub_22FB42758(v0 + 48, v12, v15, v14);
    }

    else
    {

      v16 = MEMORY[0x277D84F98];

      v17 = sub_22FCC8664();
      v18 = sub_22FCC8F34();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = *(v16 + 16);

        _os_log_impl(&dword_22FA28000, v17, v18, "Validated %ld prompts", v19, 0xCu);
        MEMORY[0x23190A000](v19, -1, -1);
      }

      else
      {
      }

      v20 = *(v0 + 152);
      v21 = *(v0 + 128);
      v22 = *(v0 + 136);
      v23 = *(v0 + 104);
      v24 = *(v0 + 88);
      v25 = *(v0 + 40);
      v26 = *(v0 + 24);
      *v24 = *(v0 + 16);
      *(v24 + 8) = v26;
      *(v24 + 24) = v25;
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      sub_22FCC83F4();
      (*(v22 + 8))(v20, v21);

      v27 = *(v0 + 8);
      v28 = MEMORY[0x277D84F98];

      v27(v28);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22FB41DA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_22FB42360;
  }

  else
  {
    v4 = sub_22FB41EDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB41EDC()
{
  v1 = v0[6];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[9];

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22FA28000, v5, v6, "Batch result for %ld prompts", v9, 0xCu);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[10] = v12;
  sub_22FB54698(v10, sub_22FB52FD4, 0, isUniquelyReferenced_nonNull_native, v0 + 10);
  if (v11)
  {
  }

  v15 = v0[27];

  v46 = v0[10];
  result = sub_22FA681A8(v1);
  if (__OFADD__(v15, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = v0[26];
  v0[3] = v15 + v3;
  v17 = v16 + v2;
  if (__OFADD__(v16, v2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v0[25];
  v0[4] = v17;
  v19 = __OFADD__(v18, v4);
  v20 = v18 + v4;
  if (v19)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v44 = v17;
  v45 = v15 + v3;
  v43 = v20;
  v0[5] = v20;
  v21 = v0[22];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[16];
  v25 = v0[24] + 1;
  __swift_project_boxed_opaque_existential_1(v0[13], *(v0[13] + 24));
  sub_22FCC83F4();
  (*(v23 + 8))(v22, v24);
  if (v25 == v21)
  {

    v26 = sub_22FCC8664();
    v27 = sub_22FCC8F34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v46 + 16);

      _os_log_impl(&dword_22FA28000, v26, v27, "Validated %ld prompts", v28, 0xCu);
      MEMORY[0x23190A000](v28, -1, -1);
    }

    else
    {
    }

    v35 = v0[19];
    v37 = v0[16];
    v36 = v0[17];
    v38 = v0[13];
    v39 = v0[11];
    v40 = v0[5];
    v41 = *(v0 + 3);
    *v39 = v0[2];
    *(v39 + 8) = v41;
    *(v39 + 24) = v40;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_22FCC83F4();
    (*(v36 + 8))(v35, v37);

    v42 = v0[1];

    return v42(v46);
  }

  else
  {
    v29 = v0[24] + 1;
    v0[26] = v44;
    v0[27] = v45;
    v0[24] = v29;
    v0[25] = v43;
    v0[23] = v46;
    v30 = v0[13];
    v31 = *(v0[21] + 8 * v29 + 32);
    v0[28] = v31;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);

    sub_22FCC8414();
    v32 = swift_task_alloc();
    v0[29] = v32;
    *v32 = v0;
    v32[1] = sub_22FB41DA0;
    v33 = v0[14];
    v34 = v0[13];

    return sub_22FB42758((v0 + 6), v31, v34, v33);
  }
}

uint64_t sub_22FB42360()
{
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Validation failed for chunk: %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  v35 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = *(v0 + 192) + 1;
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_22FCC83F4();
  (*(v14 + 8))(v13, v15);
  if (v16 == v11)
  {

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v12 + 16);

      _os_log_impl(&dword_22FA28000, v17, v18, "Validated %ld prompts", v19, 0xCu);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {
    }

    v27 = *(v0 + 152);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = *(v0 + 104);
    v31 = *(v0 + 88);
    v32 = *(v0 + 40);
    v33 = *(v0 + 24);
    *v31 = *(v0 + 16);
    *(v31 + 8) = v33;
    *(v31 + 24) = v32;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_22FCC83F4();
    (*(v28 + 8))(v27, v29);

    v34 = *(v0 + 8);

    return v34(v12);
  }

  else
  {
    v20 = *(v0 + 192) + 1;
    *(v0 + 208) = v36;
    *(v0 + 216) = v37;
    *(v0 + 192) = v20;
    *(v0 + 200) = v35;
    *(v0 + 184) = v12;
    v21 = *(v0 + 104);
    v22 = *(*(v0 + 168) + 8 * v20 + 32);
    *(v0 + 224) = v22;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);

    sub_22FCC8414();
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    v23[1] = sub_22FB41DA0;
    v24 = *(v0 + 112);
    v25 = *(v0 + 104);

    return sub_22FB42758(v0 + 48, v22, v25, v24);
  }
}

uint64_t sub_22FB42758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for TemplatedPrompt();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v7 = sub_22FCC71A4();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  sub_22FCC8494();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v8 = sub_22FCC84E4();
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB42934, 0, 0);
}

uint64_t sub_22FB42934()
{
  v26 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_22FCC8414();
  *(v0 + 328) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 184);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "BatchValidateOfflineLLMQU for %ld prompts", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  v6 = 0;
  v7 = *(v0 + 224);
  v8 = *(v0 + 184);
  *(v0 + 144) = MEMORY[0x277D84F90];
  *(v0 + 168) = 0;
  v9 = *(v8 + 16);
  *(v0 + 336) = v9;
  *(v0 + 152) = v9;
  v25 = MEMORY[0x277D84F98];
  while (v9 != v6)
  {
    v10 = v6 + 1;
    sub_22FB43EB4(&v25, *(v0 + 184) + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, *(v0 + 208));
    v6 = v10;
  }

  v11 = v25;
  *(v0 + 344) = v25;
  *(v0 + 160) = *(v11 + 16);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v11 + 16);

    _os_log_impl(&dword_22FA28000, v12, v13, "Requesting query annotations for %ld prompts", v14, 0xCu);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 200);
  v16 = (*(v0 + 208) + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  *(swift_allocObject() + 16) = v15;
  v19 = v15;
  sub_22FCC84B4();
  v24 = (*(v18 + 16) + **(v18 + 16));
  v20 = swift_task_alloc();
  *(v0 + 352) = v20;
  *v20 = v0;
  v20[1] = sub_22FB42D10;
  v21 = *(v0 + 296);
  v22 = *(v0 + 192);

  return v24(v11, v22, v21, v17, v18);
}

uint64_t sub_22FB42D10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {

    v4 = sub_22FB43C8C;
  }

  else
  {
    v4 = sub_22FB42E38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FB42E38()
{
  v64 = v0;
  v1 = v0;

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[45];
  if (v4)
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v63[0] = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v5 + 16);

    *(v7 + 12) = 2080;
    v9 = MEMORY[0x2319080B0](v5, v6);
    v11 = sub_22FA2F600(v9, v10, v63);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_22FA28000, v2, v3, "Received query annotations for %ld prompts %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[45];
  v61 = *(v12 + 16);
  if (v61)
  {
    v13 = 0;
    v14 = v1[33];
    v59 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v60 = v14;
    v58 = (v14 + 8);
    v55 = (v14 + 40);
    v56 = (v14 + 32);
    v15 = MEMORY[0x277D84F98];
    v62 = v1;
    v57 = v12;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v18 = v1[34];
      v17 = v1[35];
      v19 = v1[32];
      v20 = *(v60 + 72);
      v21 = *(v60 + 16);
      v21(v17, v59 + v20 * v13, v19);
      v22 = sub_22FCC7184();
      v24 = v23;
      v21(v18, v17, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v15;
      v26 = sub_22FA2DB54(v22, v24);
      v28 = v15[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_38;
      }

      v32 = v27;
      if (v15[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v26;
          sub_22FA6FD70();
          v26 = v40;
        }
      }

      else
      {
        sub_22FA6B564(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_22FA2DB54(v22, v24);
        if ((v32 & 1) != (v33 & 1))
        {

          sub_22FCC9774();
          return;
        }
      }

      v35 = v62[34];
      v34 = v62[35];
      v36 = v62[32];
      if (v32)
      {
        v16 = v26;

        v15 = v63[0];
        (*v55)(v63[0][7] + v16 * v20, v35, v36);
        (*v58)(v34, v36);
      }

      else
      {
        v15 = v63[0];
        v63[0][(v26 >> 6) + 8] |= 1 << v26;
        v37 = (v15[6] + 16 * v26);
        *v37 = v22;
        v37[1] = v24;
        (*v56)(v15[7] + v26 * v20, v35, v36);
        (*v58)(v34, v36);
        v38 = v15[2];
        v30 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v30)
        {
          goto LABEL_39;
        }

        v15[2] = v39;
      }

      ++v13;
      v1 = v62;
      v12 = v57;
      if (v61 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x277D84F98];
LABEL_19:
  v41 = MEMORY[0x277D84F90];
  v63[0] = MEMORY[0x277D84F90];
  if (!v1[42])
  {
    goto LABEL_31;
  }

  v42 = v1[46];
  v43 = *(v1[28] + 80);
  sub_22FB443EC(v63, v1[23] + ((v43 + 32) & ~v43), v15, v1[26]);
  if (!v42)
  {
    for (i = 1; i != v1[42]; i = v45)
    {
      v45 = i + 1;
      sub_22FB443EC(v63, v1[23] + ((*(v1[28] + 80) + 32) & ~*(v1[28] + 80)) + *(v1[28] + 72) * i, v15, v1[26]);
    }

    v41 = v63[0];
LABEL_31:

    v1[47] = v41;
    v46 = *(v12 + 16);

    v1[21] = v46;

    v47 = sub_22FCC8664();
    v48 = sub_22FCC8F34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v41[2];

      _os_log_impl(&dword_22FA28000, v47, v48, "Validating search suggestions for %ld prompts", v49, 0xCu);
      MEMORY[0x23190A000](v49, -1, -1);
    }

    else
    {
    }

    v50 = v1[25];
    *(swift_allocObject() + 16) = v50;
    v51 = v50;
    sub_22FCC84B4();
    v52 = swift_task_alloc();
    v1[48] = v52;
    *v52 = v1;
    v52[1] = sub_22FB43484;
    v53 = v1[36];
    v54 = v1[24];

    sub_22FB44850((v1 + 8), v41, v54, v53);
    return;
  }
}

uint64_t sub_22FB43484(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {

    v4 = sub_22FB43DA0;
  }

  else
  {
    v4 = sub_22FB435B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB435B0()
{
  v74 = v0;
  sub_22FA2D328((v0 + 8), (v0 + 13));
  v1 = sub_22FAC2044(0, 1, 1, MEMORY[0x277D84F90]);
  v0[18] = v1;
  v2 = v0 + 18;
  v4 = v1[2];
  v3 = v1[3];
  if (v4 >= v3 >> 1)
  {
    v1 = sub_22FAC2044((v3 > 1), v4 + 1, 1, v1);
    *v2 = v1;
  }

  v5 = v0[16];
  v6 = v0[17];
  v7 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 13), v5);
  v8 = *(v5 - 8);
  v67 = v0;
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v5);
  sub_22FA4CABC(v4, v9, v0 + 18, v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 13));
  v10 = v0;

  v0[18] = v1;

  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[49];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v14 + 16);

    _os_log_impl(&dword_22FA28000, v11, v12, "Search validation results for %ld prompts", v15, 0xCu);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  else
  {
  }

  if (v0[42])
  {
    v16 = 0;
    v63 = v2 - 16;
    v17 = v10[28];
    v61 = v10[27];
    v18 = v10[23] + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v64 = *(v17 + 72);
    v19 = v10[50];
    v65 = MEMORY[0x277D84F98];
    do
    {
      v29 = v10[49];
      v30 = v10[31];
      sub_22FB26F90(v18, v30);
      *(swift_task_alloc() + 16) = v30;
      sub_22FA90DC0(sub_22FB55EFC, v29, &v68);
      v66 = v19;

      v31 = v69;
      if (v69)
      {
        v20 = v10[31];
        v22 = v71;
        v21 = v72;
        v23 = v70;
        v24 = v68;
        v25 = v73;
        v67[2] = v68;
        v67[3] = v31;
        v67[4] = v23;
        v67[5] = v22;
        v67[6] = v21;
        *(v67 + 56) = v25 & 1;

        v26 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v65;
        sub_22FB255C4(v63, v20, isUniquelyReferenced_nonNull_native);
        v10 = v67;
        sub_22FB55F1C(v24, v31, v23);
        v65 = v68;
      }

      else
      {
        v32 = v10[31];
        v33 = v10[29];
        sub_22FB26F90(v32, v10[30]);
        sub_22FB26F90(v32, v33);
        v34 = sub_22FCC8664();
        v35 = sub_22FCC8F14();
        v36 = os_log_type_enabled(v34, v35);
        v38 = v10[29];
        v37 = v10[30];
        if (v36)
        {
          v39 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v68 = v62;
          *v39 = 136315395;
          v40 = (v37 + *(v61 + 20));
          v41 = *v40;
          v42 = v40[1];

          sub_22FA72A34(v37);
          v43 = sub_22FA2F600(v41, v42, &v68);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2081;
          v44 = (v38 + *(v61 + 24));
          v45 = *v44;
          v46 = v44[1];

          sub_22FA72A34(v38);
          v47 = sub_22FA2F600(v45, v46, &v68);

          *(v39 + 14) = v47;
          _os_log_impl(&dword_22FA28000, v34, v35, "No validation result for %s - %{private}s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v62, -1, -1);
          v48 = v39;
          v10 = v67;
          MEMORY[0x23190A000](v48, -1, -1);
        }

        else
        {

          sub_22FA72A34(v38);
          sub_22FA72A34(v37);
        }
      }

      ++v16;
      v28 = v10[42];
      sub_22FA72A34(v10[31]);
      v18 += v64;
      v19 = v66;
    }

    while (v16 != v28);
  }

  else
  {
    v65 = MEMORY[0x277D84F98];
  }

  v49 = sub_22FCC8664();
  v50 = sub_22FCC8F34();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = *(v65 + 16);

    _os_log_impl(&dword_22FA28000, v49, v50, "Returning validation results for %ld prompts", v51, 0xCu);
    MEMORY[0x23190A000](v51, -1, -1);

    __swift_destroy_boxed_opaque_existential_0((v10 + 8));
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v10 + 8));
  }

  v53 = v10[39];
  v52 = v10[40];
  v54 = v10[38];
  v55 = v10[24];
  v57 = v10[21];
  v56 = v10[22];
  v58 = *(v10 + 19);
  *v56 = v10[18];
  *(v56 + 8) = v58;
  *(v56 + 24) = v57;
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_22FCC83F4();
  (*(v53 + 8))(v52, v54);

  v59 = v10[1];

  return v59(v65);
}

uint64_t sub_22FB43C8C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_22FCC83F4();
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB43DA0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_22FCC83F4();
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

void sub_22FB43EB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v5 = type metadata accessor for TemplatedPrompt();
  v6 = MEMORY[0x28223BE20](v5);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;
  sub_22FB26F90(a2, &v65 - v14);
  sub_22FB26F90(a2, v13);
  v72 = a3;
  v67 = v16;
  v17 = sub_22FCC8664();
  v18 = sub_22FCC8F34();
  v19 = os_log_type_enabled(v17, v18);
  v70 = v5;
  v68 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v73 = v21;
    *v20 = 136315395;
    v22 = &v15[*(v5 + 20)];
    v24 = *v22;
    v23 = v22[1];

    sub_22FA72A34(v15);
    v25 = v24;
    v5 = v70;
    v26 = sub_22FA2F600(v25, v23, &v73);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2081;
    v27 = &v13[*(v5 + 24)];
    v28 = *v27;
    v29 = v27[1];

    sub_22FA72A34(v13);
    v30 = sub_22FA2F600(v28, v29, &v73);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_22FA28000, v17, v18, "Processing QU for prompt %s - %{private}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v21, -1, -1);
    MEMORY[0x23190A000](v20, -1, -1);
  }

  else
  {

    sub_22FA72A34(v13);
    sub_22FA72A34(v15);
  }

  v31 = (a2 + *(v5 + 24));
  v33 = *v31;
  v32 = v31[1];
  v34 = *(v72 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor + 24);
  v35 = *(v72 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor + 32);
  __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor), v34);
  v36 = *(v35 + 8);

  v37 = v71;
  v38 = v36(a2, v34, v35);
  v40 = v37;
  if (v37)
  {

    v41 = v68;
    sub_22FB26F90(a2, v68);
    v42 = v69;
    sub_22FB26F90(a2, v69);
    v43 = v37;
    v44 = sub_22FCC8664();
    v45 = sub_22FCC8F14();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = v72;
      *v46 = 136315651;
      v48 = v70;
      v49 = (v41 + *(v70 + 20));
      v50 = v41;
      v51 = *v49;
      v52 = v49[1];

      sub_22FA72A34(v50);
      v53 = sub_22FA2F600(v51, v52, &v73);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2081;
      v54 = (v42 + *(v48 + 24));
      v55 = *v54;
      v56 = v54[1];

      sub_22FA72A34(v42);
      v57 = sub_22FA2F600(v55, v56, &v73);

      *(v46 + 14) = v57;
      *(v46 + 22) = 2112;
      v58 = v40;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 24) = v59;
      *v47 = v59;
      _os_log_impl(&dword_22FA28000, v44, v45, "Missing filled in qu result for prompt %s - %{private}s, : %@", v46, 0x20u);
      sub_22FA2B420(v47, &unk_27DAD7B10);
      MEMORY[0x23190A000](v47, -1, -1);
      v60 = v72;
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      sub_22FA72A34(v42);
      sub_22FA72A34(v41);
    }
  }

  else
  {
    v61 = v66;
    v62 = v38;
    v63 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *v61;
    sub_22FB25E60(v62, v63, v33, v32, isUniquelyReferenced_nonNull_native);

    *v61 = v73;
  }
}

void sub_22FB443EC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v44 = a1;
  v6 = type metadata accessor for TemplatedPrompt();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8138);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v42 = &v41 - v13;
  v14 = sub_22FCC71A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16) && (v18 = sub_22FA2DB54(*(a2 + *(v6 + 24)), *(a2 + *(v6 + 24) + 8)), (v19 & 1) != 0))
  {
    v20 = v15;
    v21 = *(v15 + 16);
    v21(v17, *(a3 + 56) + *(v15 + 72) * v18, v14);
    v22 = *(v12 + 48);
    v23 = v42;
    sub_22FB26F90(a2, v42);
    v21((v23 + v22), v17, v14);
    v24 = v44;
    v25 = *v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_22FAC2930(0, v25[2] + 1, 1, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_22FAC2930(v26 > 1, v27 + 1, 1, v25);
    }

    (*(v20 + 8))(v17, v14);
    v25[2] = v27 + 1;
    sub_22FA4F224(v23, v25 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27, &qword_27DAD8138);
    *v24 = v25;
  }

  else
  {
    sub_22FB26F90(a2, v11);
    sub_22FB26F90(a2, v9);
    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F14();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136315395;
      v32 = v6;
      v33 = &v11[*(v6 + 20)];
      v34 = *v33;
      v35 = v33[1];

      sub_22FA72A34(v11);
      v36 = sub_22FA2F600(v34, v35, &v46);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2081;
      v37 = &v9[*(v32 + 24)];
      v38 = *v37;
      v39 = v37[1];

      sub_22FA72A34(v9);
      v40 = sub_22FA2F600(v38, v39, &v46);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_22FA28000, v28, v29, "Missing query annotation for prompt %s - %{private}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }

    else
    {

      sub_22FA72A34(v9);
      sub_22FA72A34(v11);
    }
  }
}

uint64_t sub_22FB44850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_22FCC7824();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_22FCC7E24();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_22FCC6EF4();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_22FCC7B14();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v10 = sub_22FCC7854();
  v5[28] = v10;
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  v11 = sub_22FCC6EE4();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8308);
  v5[34] = swift_task_alloc();
  v12 = sub_22FCC7CC4();
  v5[35] = v12;
  v5[36] = *(v12 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v13 = sub_22FCC8494();
  v5[39] = v13;
  v5[40] = *(v13 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8138);
  v5[46] = v14;
  v5[47] = *(v14 - 8);
  v5[48] = swift_task_alloc();
  v15 = sub_22FCC71A4();
  v5[49] = v15;
  v5[50] = *(v15 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = type metadata accessor for TemplatedPrompt();
  v5[61] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8840);
  v5[62] = v16;
  v5[63] = *(v16 - 8);
  v5[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8848);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v17 = sub_22FCC84E4();
  v5[67] = v17;
  v5[68] = *(v17 - 8);
  v5[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB44E9C, 0, 0);
}

uint64_t sub_22FB44E9C()
{
  v83 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  sub_22FCC8414();
  *(v0 + 560) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 64);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "[Safety] QU validation of prompts:%ld", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 568) = *(*(v0 + 64) + 16);
  sub_22FCC8464();
  v6 = 0;
  *(v0 + 576) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_queryGenerator;
  *(v0 + 584) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetManager;
  *(v0 + 592) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController;
  v7 = MEMORY[0x277D3BF78];
  *(v0 + 600) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentExpansionProcessor;
  v8 = *v7;
  v9 = MEMORY[0x277D3BF70];
  v10 = MEMORY[0x277D3C308];
  *(v0 + 936) = v8;
  *(v0 + 940) = *v9;
  *(v0 + 944) = *v10;
  *(v0 + 608) = 0;
  *(v0 + 624) = 0;
  *(v0 + 616) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v0 + 664) = MEMORY[0x277D84F90];
  *(v0 + 656) = 0;
  *(v0 + 648) = 0;
  *(v0 + 640) = 0;
  *(v0 + 632) = 0;
  if (*(v0 + 568))
  {
    v13 = *(v0 + 520);
    v14 = *(v0 + 512);
    v15 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80));
    v16 = *(*(v0 + 496) + 48);
    *v14 = 0;
    sub_22FA4FAA4(v15, v14 + v16, &qword_27DAD8138);
    sub_22FA4F224(v14, v13, &qword_27DAD8840);
    v12 = 0;
    v6 = 1;
  }

  else
  {
    v12 = 1;
  }

  *(v0 + 672) = v6;
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 496);
  v20 = *(v0 + 504);
  (*(v20 + 56))(v18, v12, 1, v19);
  sub_22FA4F224(v18, v17, &qword_27DAD8848);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_22FCC8484();

    v61 = sub_22FCC8664();
    v62 = sub_22FCC8F34();
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = *(v11 + 16);

      _os_log_impl(&dword_22FA28000, v61, v62, "Safety Received results for prompts:%ld", v64, 0xCu);
      MEMORY[0x23190A000](v64, -1, -1);
    }

    else
    {
    }

    v65 = *(v0 + 608);
    v66 = *(v0 + 568);
    v67 = *(v0 + 552);
    v68 = *(v0 + 544);
    v74 = *(v0 + 616);
    v75 = *(v0 + 536);
    v69 = *(v0 + 72);
    v70 = *(v0 + 56);

    v70[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
    v70[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
    v71 = swift_allocObject();
    *v70 = v71;
    v71[2] = MEMORY[0x277D84F90];
    v71[3] = v66;
    v71[4] = v65;
    v71[5] = v74;
    v71[6] = 0;
    v71[7] = 0;
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    sub_22FCC83F4();
    (*(v68 + 8))(v67, v75);

    v72 = *(v0 + 8);

    return v72(v11);
  }

  else
  {
    v21 = *(v0 + 488);
    v22 = *(v0 + 472);
    v76 = *(v0 + 480);
    v23 = *(v0 + 392);
    v24 = *(v0 + 400);
    v25 = *(v0 + 384);
    v26 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v27 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v26, v25);
    v28 = *(v24 + 32);
    v28(v25 + v27, v26 + v27, v23);
    sub_22FB5570C(v25, v21);
    v28(v22, v25 + v27, v23);
    v29 = (v21 + *(v76 + 20));
    v30 = *v29;
    *(v0 + 680) = *v29;
    v31 = v29[1];
    *(v0 + 688) = v31;

    sub_22FCC8434();
    sub_22FCC8464();
    v33 = *(v0 + 464);
    v32 = *(v0 + 472);
    v34 = *(v0 + 392);
    v35 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v36 = *(v35 + 16);
    *(v0 + 696) = v36;
    *(v0 + 704) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v33, v32, v34);

    v37 = sub_22FCC8664();
    v38 = sub_22FCC8F34();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 464);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    if (v39)
    {
      v43 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82[0] = v80;
      *v43 = 136315395;
      *(v43 + 4) = sub_22FA2F600(v30, v31, v82);
      *(v43 + 12) = 2081;
      v44 = sub_22FCC7154();
      v46 = v45;
      v47 = *(v41 + 8);
      v47(v40, v42);
      v48 = sub_22FA2F600(v44, v46, v82);

      *(v43 + 14) = v48;
      _os_log_impl(&dword_22FA28000, v37, v38, "[Safety] Validating prompt with id %s with annotation %{private}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v80, -1, -1);
      MEMORY[0x23190A000](v43, -1, -1);
    }

    else
    {

      v47 = *(v41 + 8);
      v47(v40, v42);
    }

    *(v0 + 712) = v47;
    v77 = *(v0 + 336);
    v78 = *(v0 + 352);
    v50 = *(v0 + 312);
    v49 = *(v0 + 320);
    v51 = *(v0 + 272);
    v52 = sub_22FCC7184();
    v79 = v53;
    v81 = v52;
    *(v0 + 720) = v53;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v54 = sub_22FCC7104();
    *(v0 + 728) = v54;

    v55 = sub_22FCC70C4();
    (*(*(v55 - 8) + 56))(v51, 1, 1, v55);
    v56 = *(v49 + 32);
    *(v0 + 736) = v56;
    *(v0 + 744) = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v56(v77, v78, v50);
    v57 = swift_task_alloc();
    *(v0 + 752) = v57;
    *v57 = v0;
    v57[1] = sub_22FB45E10;
    v58 = *(v0 + 304);
    v59 = *(v0 + 272);
    v60 = *(v0 + 72);
    v88 = *(v0 + 336);
    v89 = 0;
    v87 = v60;
    v86 = 1;
    v85 = 0;

    return MEMORY[0x28219BDA0](v58, v81, v79, v54, 0, 0, 0, v59);
  }
}

uint64_t sub_22FB45E10()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  sub_22FA2B420(*(v2 + 272), &unk_27DAD8308);

  if (v0)
  {

    v3 = sub_22FB4B268;
  }

  else
  {
    v3 = sub_22FB45FB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FB45FB8()
{
  v352 = v0;
  v1 = sub_22FCC7C94();
  v0[48].i64[0] = v1;
  v325 = sub_22FCC7CB4();
  v0[48].i64[1] = v325;
  v2 = _s13PhotoAnalysis25PromptSuggestionValidatorC25allowAmbiguousPersonToken2inSbSS_tFZ_0();
  v3 = *(v1 + 16);
  v350 = v0;
  v331 = v1;
  if (v3)
  {
    v4 = v2;
    v5 = 0;
    v6 = *(v0[16].i64[0] + 80);
    v7 = v1 + ((v6 + 32) & ~v6);
    v316 = v2;
    v311 = v7;
    v313 = *(v1 + 16);
    while (v5 < *(v1 + 16))
    {
      (*(v0[16].i64[0] + 16))(v0[16].i64[1], v7 + *(v0[16].i64[0] + 72) * v5, v0[15].i64[1]);
      v8 = sub_22FCC6ED4();
      v9 = v0[16].i64[1];
      if (v8)
      {
        if (v4)
        {
          v319 = v5;
          v10 = sub_22FCC6EA4();
          v11 = 0;
          v335 = *(v10 + 16);
          v342 = v10;
          while (v335 != v11)
          {
            if (v11 >= *(v342 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            v12 = v350[14].i64[1];
            v9 = v350[15].i64[0];
            v14 = v350[13].i64[1];
            v13 = v350[14].i64[0];
            v15 = v350[12].i64[1];
            v16 = v350[13].i64[0];
            v1 = v350[12].i64[0];
            (*(v12 + 16))(v9, v342 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11++, v13);
            sub_22FCC7B04();
            sub_22FCC7834();
            v17 = sub_22FCC7AE4();
            v18 = *(v15 + 8);
            v18(v16, v1);
            v18(v14, v1);
            (*(v12 + 8))(v9, v13);
            if (v17)
            {
              v0 = v350;
              (*(v350[16].i64[0] + 8))(v350[16].i64[1], v350[15].i64[1]);

              v1 = v331;
              v4 = v316;
              v7 = v311;
              v3 = v313;
              v5 = v319;
              goto LABEL_12;
            }
          }

          v0 = v350;
          (*(v350[16].i64[0] + 8))(v350[16].i64[1], v350[15].i64[1]);
        }

        else
        {
          (*(v0[16].i64[0] + 8))(v0[16].i64[1], v0[15].i64[1]);
        }

        v33 = v0[43].i64[1];
        v34 = v0[29].i64[1];
        v35 = v0[26].i64[0];
        v36 = v0[24].i64[1];
        v38 = v0[18].i64[1];
        v37 = v0[19].i64[0];
        v39 = v0[17].i64[1];
        v40 = v0[18].i64[0];

        v33(v35, v34, v36);
        (*(v40 + 16))(v38, v37, v39);
        v41 = sub_22FCC8664();
        v42 = sub_22FCC8F34();
        v43 = os_log_type_enabled(v41, v42);
        v44 = v0[44].i64[1];
        v45 = v0[26].i64[0];
        v46 = v0[24].i64[1];
        v47 = v0[18].i64[0];
        v48 = v0[18].i64[1];
        v49 = v0[17].i64[1];
        if (v43)
        {
          v50 = swift_slowAlloc();
          v336 = swift_slowAlloc();
          v351[0] = v336;
          *v50 = 136380931;
          v321 = v42;
          v51 = sub_22FCC7184();
          v332 = v41;
          v53 = v52;
          v44(v45, v46);
          v54 = sub_22FA2F600(v51, v53, v351);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2081;
          sub_22FB55F7C(&qword_27DAD8850, MEMORY[0x277D3C5A0]);
          v55 = sub_22FCC96C4();
          v57 = v56;
          v342 = *(v47 + 8);
          (v342)(v48, v49);
          v58 = sub_22FA2F600(v55, v57, v351);

          *(v50 + 14) = v58;
          _os_log_impl(&dword_22FA28000, v332, v321, "[Safety] Found ambiguous tokens for prompt %{private}s. QU Result: %{private}s", v50, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v336, -1, -1);
          MEMORY[0x23190A000](v50, -1, -1);
        }

        else
        {

          v342 = *(v47 + 8);
          (v342)(v48, v49);
          v44(v45, v46);
        }

        v0 = v325;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = v350[41].i64[1];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_21:
          v61 = *(v4 + 16);
          v60 = *(v4 + 24);
          v337 = v0;
          if (v61 >= v60 >> 1)
          {
            v4 = sub_22FAC20B8((v60 > 1), v61 + 1, 1, v4);
          }

          v1 = v350;
          v314 = v350[44].i64[1];
          v317 = v350[42].i64[1];
          v322 = v350[43].i64[0];
          v326 = v350[38].i64[0];
          v62 = v350[29].i64[1];
          v63 = v350[24].i64[1];
          v64 = v350[19].i64[0];
          v65 = v350[17].i64[1];

          (v342)(v64, v65);
          v314(v62, v63);
          *(v4 + 16) = v61 + 1;
          v66 = MEMORY[0x277D84F90];
          v67 = v4 + 48 * v61;
          *(v67 + 32) = v317;
          *(v67 + 40) = v322;
          *(v67 + 48) = v0;
          *(v67 + 56) = v66;
          *(v67 + 64) = v66;
          *(v67 + 72) = 0;
          if (!__OFADD__(v326, 1))
          {
            v68 = v350[22].i64[1];
            v69 = v350[21].i64[1];
            v71 = v350[19].i64[1];
            v70 = v350[20].i64[0];
            sub_22FA72A34(v350[30].i64[1]);
            v72 = *(v70 + 8);
            v72(v69, v71);
            v73 = (v72)(v68, v71);
            v80 = v350[47].i64[1];
            v81 = v350[42].u64[0];
            v82 = v350[41].i64[0];
            v83 = v350[40];
            v84 = v350[39].i64[1];
            v350[38].i64[0] = v326 + 1;
            goto LABEL_70;
          }

          __break(1u);
LABEL_67:
          v4 = sub_22FAC20B8(0, *(v4 + 16) + 1, 1, v4);
LABEL_60:
          v207 = *(v4 + 16);
          v206 = *(v4 + 24);
          v346 = v0;
          if (v207 >= v206 >> 1)
          {
            v4 = sub_22FAC20B8((v206 > 1), v207 + 1, 1, v4);
          }

          v208 = *(v1 + 776);
          v318 = *(v1 + 688);
          v312 = *(v1 + 712);
          v315 = *(v1 + 680);
          v324 = *(v1 + 656);
          v327 = *(v1 + 768);
          v209 = *(v1 + 400);
          v309 = *(v1 + 392);
          v310 = *(v1 + 472);
          v308 = *(v1 + 304);
          v211 = *(v1 + 280);
          v210 = *(v1 + 288);
          v212 = *(v1 + 184);
          v214 = *(v1 + 160);
          v213 = *(v1 + 168);

          v80 = (v209 + 8);
          (*(v213 + 8))(v212, v214);
          (*(v210 + 8))(v308, v211);
          v73 = v312(v310, v309);
          *(v4 + 16) = v207 + 1;
          v215 = v4 + 48 * v207;
          *(v215 + 32) = v315;
          *(v215 + 40) = v318;
          *(v215 + 48) = v208;
          *(v215 + 56) = v346;
          *(v215 + 64) = v327;
          v82 = v337;
          *(v215 + 72) = v337;
          v81 = v324;
          v84 = v324 + 1;
          if (!__OFADD__(v324, 1))
          {
            v216 = *(v1 + 360);
            v218 = *(v1 + 312);
            v217 = *(v1 + 320);
            sub_22FA72A34(*(v1 + 488));

            v73 = (*(v217 + 8))(v216, v218);
            v83 = *(v1 + 640);
            v82 = v324 + 1;
            goto LABEL_82;
          }

          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_65:
        v4 = sub_22FAC20B8(0, *(v4 + 16) + 1, 1, v4);
        goto LABEL_21;
      }

      (*(v0[16].i64[0] + 8))(v0[16].i64[1], v0[15].i64[1]);
LABEL_12:
      if (++v5 == v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_13:
  v19 = v0[36].i64[1];
  v20 = v0[5].i64[1];
  v0[49].i64[0] = sub_22FCC7D14();
  v21 = sub_22FCC7CA4();
  v0[49].i64[1] = *(v20 + v19);

  sub_22FAA99B0(v22);

  sub_22FCC6F24();

  v320 = v21;
  v23 = *(v21 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8858);
  v24 = sub_22FCC6F04();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = v0[58].u32[3];
  if (v23 >> 3 < 0x271)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22FCD1800;
    (*(v25 + 104))(v29 + v27, v28, v24);
    v30 = sub_22FCC8664();
    v31 = sub_22FCC8F34();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_29;
    }

    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = 5000;
    _os_log_impl(&dword_22FA28000, v30, v31, "Less than %ld retrieved assets, good with safe mode", v32, 0xCu);
    goto LABEL_27;
  }

  v85 = v0[58].u32[2];
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_22FCD17F0;
  v343 = v86;
  v87 = v86 + v27;
  v88 = *(v25 + 104);
  v88(v86 + v27, v85, v24);
  v88(v87 + v26, v28, v24);
  v30 = sub_22FCC8664();
  v89 = sub_22FCC8F34();
  if (os_log_type_enabled(v30, v89))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = 5000;
    _os_log_impl(&dword_22FA28000, v30, v89, "More than %ld retrieved assets, switching to extended safe mode", v32, 0xCu);
    v0 = v350;
    v29 = v343;
LABEL_27:
    MEMORY[0x23190A000](v32, -1, -1);
    goto LABEL_29;
  }

  v0 = v350;
  v29 = v343;
LABEL_29:
  v0[50].i64[0] = v29;
  v90 = v0[43].i64[1];
  v91 = v0[29].i64[1];
  v92 = v0[28].i64[1];
  v93 = v0[24].i64[1];

  v90(v92, v91, v93);

  v94 = sub_22FCC8664();
  v95 = sub_22FCC8F34();
  v96 = os_log_type_enabled(v94, v95);
  v97 = v0[44].i64[1];
  v98 = v0[28].i64[1];
  v99 = v0[24].i64[1];
  if (v96)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v351[0] = v101;
    *v100 = 136380931;
    v102 = sub_22FCC7184();
    v104 = v103;
    v97(v98, v99);
    v105 = sub_22FA2F600(v102, v104, v351);

    *(v100 + 4) = v105;
    *(v100 + 12) = 2048;
    v106 = *(v320 + 16);

    *(v100 + 14) = v106;

    _os_log_impl(&dword_22FA28000, v94, v95, "Initial retrieval for prompt %{private}s :%ld", v100, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x23190A000](v101, -1, -1);
    MEMORY[0x23190A000](v100, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v97(v98, v99);
  }

  v80 = v350[47].i64[1];
  v107 = sub_22FCC6F14();
  v350[50].i64[1] = v107;
  if (v80)
  {
    v338 = v350[21].i64[1];
    v108 = v350[20].i64[0];
    v323 = v350[19].i64[1];
    v109 = v350[19].i64[0];
    v111 = v350[17].i64[1];
    v110 = v350[18].i64[0];
    v112 = v350[11].i64[1];
    v113 = v350[10].i64[1];
    v114 = v350[10].i64[0];

    swift_bridgeObjectRelease_n();

    v115 = v112;
    v1 = v350;
    (*(v113 + 8))(v115, v114);
    (*(v110 + 8))(v109, v111);
    (*(v108 + 8))(v338, v323);
    while (1)
    {
      v243 = *(v1 + 648);
      v73 = (*(*(v1 + 320) + 8))(*(v1 + 360), *(v1 + 312));
      v340 = v243 + 1;
      if (__OFADD__(v243, 1))
      {
        break;
      }

      (*(*(v1 + 400) + 16))(*(v1 + 408), *(v1 + 472), *(v1 + 392));
      v244 = v80;
      v245 = sub_22FCC8664();
      v246 = sub_22FCC8F14();

      v247 = os_log_type_enabled(v245, v246);
      v348 = *(v1 + 472);
      v249 = *(v1 + 400);
      v248 = *(v1 + 408);
      v250 = *(v1 + 392);
      if (v247)
      {
        v251 = swift_slowAlloc();
        v329 = swift_slowAlloc();
        v333 = swift_slowAlloc();
        v351[0] = v333;
        *v251 = 136380931;
        sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
        v252 = sub_22FCC96C4();
        v254 = v253;
        v255 = *(v249 + 8);
        v255(v248, v250);
        v256 = sub_22FA2F600(v252, v254, v351);
        v1 = v350;

        *(v251 + 4) = v256;
        *(v251 + 12) = 2112;
        v257 = v80;
        v258 = _swift_stdlib_bridgeErrorToNSError();
        *(v251 + 14) = v258;
        *v329 = v258;
        _os_log_impl(&dword_22FA28000, v245, v246, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v251, 0x16u);
        sub_22FA2B420(v329, &unk_27DAD7B10);
        MEMORY[0x23190A000](v329, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v333);
        MEMORY[0x23190A000](v333, -1, -1);
        MEMORY[0x23190A000](v251, -1, -1);
      }

      else
      {

        v255 = *(v249 + 8);
        v255(v248, v250);
      }

      v255(v348, v250);
      v73 = sub_22FA72A34(*(v1 + 488));
      v4 = *(v1 + 664);
      v82 = *(v1 + 656);
      v84 = *(v1 + 632);
      v83 = vdupq_n_s64(v340);
LABEL_82:
      v80 = 0;
      v81 = *(v1 + 672);
LABEL_70:
      *(v1 + 664) = v4;
      *(v1 + 656) = v82;
      *(v1 + 640) = v83;
      *(v1 + 632) = v84;
      v219 = *(v1 + 568);
      v220 = 1;
      v347 = v83.i64[0];
      if (v81 != v219)
      {
        if (v81 >= v219)
        {
          goto LABEL_100;
        }

        v221 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_101;
        }

        v222 = *(v1 + 520);
        v223 = *(v1 + 512);
        v224 = *(v1 + 64) + ((*(*(v1 + 376) + 80) + 32) & ~*(*(v1 + 376) + 80)) + *(*(v1 + 376) + 72) * v81;
        v225 = *(*(v1 + 496) + 48);
        *v223 = v81;
        sub_22FA4FAA4(v224, v223 + v225, &qword_27DAD8138);
        sub_22FA4F224(v223, v222, &qword_27DAD8840);
        v220 = 0;
        v81 = v221;
      }

      *(v1 + 672) = v81;
      v226 = *(v1 + 528);
      v227 = *(v1 + 520);
      v229 = *(v1 + 496);
      v228 = *(v1 + 504);
      (*(v228 + 56))(v227, v220, 1, v229);
      sub_22FA4F224(v227, v226, &qword_27DAD8848);
      if ((*(v228 + 48))(v226, 1, v229) == 1)
      {
        sub_22FCC8484();
        if (v80)
        {
          v259 = *(v1 + 552);
          v260 = *(v1 + 544);
          v261 = *(v1 + 536);
          v262 = *(v1 + 72);

          __swift_project_boxed_opaque_existential_1(v262, v262[3]);
          sub_22FCC83F4();
          (*(v260 + 8))(v259, v261);

          v263 = *(v1 + 8);

          return v263();
        }

        else
        {

          v292 = sub_22FCC8664();
          v293 = sub_22FCC8F34();
          if (os_log_type_enabled(v292, v293))
          {
            v294 = swift_slowAlloc();
            *v294 = 134217984;
            *(v294 + 4) = *(v4 + 16);

            _os_log_impl(&dword_22FA28000, v292, v293, "Safety Received results for prompts:%ld", v294, 0xCu);
            MEMORY[0x23190A000](v294, -1, -1);
          }

          else
          {
          }

          v295 = *(v1 + 616);
          v296 = *(v1 + 608);
          v297 = v1;
          v298 = *(v1 + 568);
          v299 = v297[69];
          v300 = v297[68];
          v306 = v295;
          v307 = v297[67];
          v301 = v297[9];
          v302 = v297[7];

          v302[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
          v302[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
          v303 = swift_allocObject();
          *v302 = v303;
          v303[2] = MEMORY[0x277D84F90];
          v303[3] = v298;
          v303[4] = v296;
          v303[5] = v306;
          v303[6] = v84;
          v303[7] = v347;
          __swift_project_boxed_opaque_existential_1(v301, v301[3]);
          sub_22FCC83F4();
          (*(v300 + 8))(v299, v307);

          v304 = v297[1];

          return v304(v4);
        }
      }

      v230 = *(v1 + 488);
      v231 = *(v1 + 472);
      v328 = *(v1 + 480);
      v233 = *(v1 + 392);
      v232 = *(v1 + 400);
      v234 = *(v1 + 384);
      v235 = *(v1 + 368);
      v236 = *(v1 + 528) + *(*(v1 + 496) + 48);
      v237 = *(v235 + 48);
      sub_22FB5570C(v236, v234);
      v238 = *(v232 + 32);
      v239 = v236 + v237;
      v1 = v350;
      v238(v234 + v237, v239, v233);
      sub_22FB5570C(v234, v230);
      v238(v231, v234 + v237, v233);
      v240 = (v230 + *(v328 + 20));
      v241 = *v240;
      v350[42].i64[1] = *v240;
      v242 = v240[1];
      v350[43].i64[0] = v242;

      sub_22FCC8434();
      sub_22FCC8464();
      if (!v80)
      {
        v265 = v350[29].i64[0];
        v264 = v350[29].i64[1];
        v267 = v350[24].i64[1];
        v266 = v350[25].i64[0];
        sub_22FCC8454();
        sub_22FCC8454();
        v268 = *(v266 + 16);
        v350[43].i64[1] = v268;
        v350[44].i64[0] = (v266 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v268(v265, v264, v267);

        v269 = sub_22FCC8664();
        v270 = sub_22FCC8F34();

        v271 = os_log_type_enabled(v269, v270);
        v272 = v350[29].i64[0];
        v274 = v350[24].i64[1];
        v273 = v350[25].i64[0];
        if (v271)
        {
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v351[0] = v276;
          *v275 = 136315395;
          *(v275 + 4) = sub_22FA2F600(v241, v242, v351);
          *(v275 + 12) = 2081;
          v277 = sub_22FCC7154();
          v279 = v278;
          v280 = *(v273 + 8);
          v280(v272, v274);
          v281 = sub_22FA2F600(v277, v279, v351);

          *(v275 + 14) = v281;
          _os_log_impl(&dword_22FA28000, v269, v270, "[Safety] Validating prompt with id %s with annotation %{private}s", v275, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v276, -1, -1);
          MEMORY[0x23190A000](v275, -1, -1);
        }

        else
        {

          v280 = *(v273 + 8);
          v280(v272, v274);
        }

        v350[44].i64[1] = v280;
        v330 = v350[21].i64[0];
        v334 = v350[22].i64[0];
        v283 = v350[19].i64[1];
        v282 = v350[20].i64[0];
        v284 = v350[17].i64[0];
        v285 = sub_22FCC7184();
        v341 = v286;
        v349 = v285;
        v350[45].i64[0] = v286;
        sub_22FA4CF38(MEMORY[0x277D84F90]);
        v287 = sub_22FCC7104();
        v350[45].i64[1] = v287;

        v288 = sub_22FCC70C4();
        (*(*(v288 - 8) + 56))(v284, 1, 1, v288);
        v289 = *(v282 + 32);
        v350[46].i64[0] = v289;
        v350[46].i64[1] = (v282 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v289(v330, v334, v283);
        v290 = swift_task_alloc();
        v350[47].i64[0] = v290;
        *v290 = v350;
        v290[1] = sub_22FB45E10;
        v73 = v350[19].i64[0];
        v79 = v350[17].i64[0];
        v291 = v350[4].i64[1];
        v357 = v350[21].i64[0];
        v358 = 0;
        v356 = v291;
        v355 = 1;
        v354 = 0;
        v74 = v341;
        v220 = v349;
        v75 = v287;
        v76 = 0;
        v77 = 0;
        v78 = 0;

        return MEMORY[0x28219BDA0](v73, v220, v74, v75, v76, v77, v78, v79);
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    return MEMORY[0x28219BDA0](v73, v220, v74, v75, v76, v77, v78, v79);
  }

  v116 = v107;
  v117 = v350[43].i64[1];
  v118 = v350[29].i64[1];
  v119 = v350[28].i64[0];
  v120 = v350[24].i64[1];

  v117(v119, v118, v120);
  swift_bridgeObjectRetain_n();
  v121 = sub_22FCC8664();
  v122 = sub_22FCC8F34();
  v123 = os_log_type_enabled(v121, v122);
  v124 = v350[44].i64[1];
  v125 = v350[28].i64[0];
  v126 = v350[24].i64[1];
  if (v123)
  {
    v127 = swift_slowAlloc();
    v339 = swift_slowAlloc();
    v351[0] = v339;
    *v127 = 136380931;
    v128 = sub_22FCC7184();
    v130 = v129;
    v124(v125, v126);
    v131 = sub_22FA2F600(v128, v130, v351);

    *(v127 + 4) = v131;
    *(v127 + 12) = 2048;
    v132 = v116[2];

    *(v127 + 14) = v132;

    _os_log_impl(&dword_22FA28000, v121, v122, "Filtered assets for prompt %{private}s :%ld", v127, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v339);
    MEMORY[0x23190A000](v339, -1, -1);
    MEMORY[0x23190A000](v127, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v124(v125, v126);
  }

  v133 = v116[2];
  sub_22FCC7E94();
  v1 = v350;
  if (v133 >= sub_22FCC7E74())
  {
    v147 = v350[21].i64[1];
    v148 = v350[19].i64[1];
    v149 = v350[20].i64[0];

    (*(v149 + 8))(v147, v148);
    v350[53].i64[1] = v116;
    v150 = v350[29].i64[1];
    v151 = v350[4].i64[1];

    v350[59].i8[4] = PromptSuggestionValidator.validateTimeRange(promptAnnotation:resultAssetUUIDs:eventRecorder:)(v150, v116, v151);

    v152 = *(sub_22FCC7CF4() + 16);

    if (!v152)
    {
      v153 = *(sub_22FCC7D14() + 16);

      if (!v153)
      {
        v191 = v350[48].i64[1];
        v192 = sub_22FCC8664();
        v193 = sub_22FCC8F34();

        if (os_log_type_enabled(v192, v193))
        {
          v194 = v350[48].i64[1];
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v351[0] = v196;
          *v195 = 136642819;
          v197 = [v194 string];
          v198 = sub_22FCC8A84();
          v200 = v199;

          v201 = sub_22FA2F600(v198, v200, v351);

          *(v195 + 4) = v201;
          _os_log_impl(&dword_22FA28000, v192, v193, "[Safety] LLMQU Prompt does not require safety validation. Prompt:%{sensitive}s", v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v196);
          MEMORY[0x23190A000](v196, -1, -1);
          MEMORY[0x23190A000](v195, -1, -1);
        }

        v80 = v350[53].i64[1];
        v4 = v80[2];
        v9 = v350[48].i64[1];
        if (v4)
        {
          v0 = sub_22FA86B08(v80[2], 0);
          v202 = sub_22FA88270(v350[1].i64, v0[2].i64, v4, v80);
          v84 = v350[1].i64[1];
          v1 = v350[2].i64[1];
          v203 = v9;

          v73 = sub_22FA37D64();
          if (v202 != v4)
          {
            goto LABEL_69;
          }

          v1 = v350;
        }

        else
        {
LABEL_58:
          v204 = v9;
          v0 = MEMORY[0x277D84F90];
        }

        v337 = *(v1 + 948);
        v205 = swift_isUniquelyReferenced_nonNull_native();
        v4 = *(v1 + 664);
        if ((v205 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_60;
      }
    }

    v154 = v350[48].i64[1];
    v155 = sub_22FCC8664();
    v156 = sub_22FCC8F34();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = v350[48].i64[1];
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v351[0] = v159;
      *v158 = 136642819;
      v160 = [v157 string];
      v161 = sub_22FCC8A84();
      v163 = v162;

      v164 = sub_22FA2F600(v161, v163, v351);

      *(v158 + 4) = v164;
      _os_log_impl(&dword_22FA28000, v155, v156, "[Safety] LLMQU Prompt requires safety validation. Prompt:%{sensitive}s", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v159);
      MEMORY[0x23190A000](v159, -1, -1);
      MEMORY[0x23190A000](v158, -1, -1);
    }

    v165 = v350[48].i64[1];
    v166 = v350[59].u32[0];
    v167 = v350[7].i64[1];
    v169 = v350[6].i64[0];
    v168 = v350[6].i64[1];
    v170 = (v350[5].i64[1] + v350[37].i64[0]);
    v171 = v170[3];
    v345 = v170[4];
    __swift_project_boxed_opaque_existential_1(v170, v171);
    v172 = [v165 string];
    v173 = sub_22FCC8A84();
    v175 = v174;

    v350[54].i64[0] = v175;
    v176 = *(v168 + 104);
    v350[54].i64[1] = v176;
    v350[55].i64[0] = (v168 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v176(v167, v166, v169);
    v177 = swift_task_alloc();
    v350[55].i64[1] = v177;
    *v177 = v350;
    v177[1] = sub_22FB49EA0;
    v178 = v350[7].i64[1];
    v179 = v350[4].i64[1];

    return MEMORY[0x28219C8C8](v173, v175, 0, v178, v179, v171, v345);
  }

  else
  {
    (v350[43].i64[1])(v350[27].i64[1], v350[29].i64[1], v350[24].i64[1]);
    swift_bridgeObjectRetain_n();
    v134 = sub_22FCC8664();
    v135 = sub_22FCC8F34();
    v136 = os_log_type_enabled(v134, v135);
    v137 = v350[44].i64[1];
    v138 = v350[27].i64[1];
    v139 = v350[24].i64[1];
    if (v136)
    {
      v140 = swift_slowAlloc();
      v344 = swift_slowAlloc();
      v351[0] = v344;
      *v140 = 136380931;
      v141 = sub_22FCC7184();
      v143 = v142;
      v137(v138, v139);
      v144 = v141;
      v1 = v350;
      v145 = sub_22FA2F600(v144, v143, v351);

      *(v140 + 4) = v145;
      *(v140 + 12) = 2048;
      v146 = v116[2];

      *(v140 + 14) = v146;

      _os_log_impl(&dword_22FA28000, v134, v135, "Run moment expansion processor for prompt %{private}s with %ld safe assets", v140, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v344);
      MEMORY[0x23190A000](v344, -1, -1);
      MEMORY[0x23190A000](v140, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v137(v138, v139);
    }

    v180 = *(v1 + 944);
    v181 = *(v1 + 128);
    v182 = *(v1 + 96);
    v183 = *(v1 + 104);
    v184 = (*(v1 + 88) + *(v1 + 592));
    v185 = v184[3];
    v186 = v184[4];
    __swift_project_boxed_opaque_existential_1(v184, v185);
    (*(v183 + 104))(v181, v180, v182);
    v187 = swift_task_alloc();
    *(v1 + 816) = v187;
    *v187 = v1;
    v187[1] = sub_22FB481C8;
    v188 = *(v1 + 152);
    v189 = *(v1 + 128);
    v190 = *(v1 + 72);

    return MEMORY[0x28219C8B8](v188, v325, v189, v190, v185, v186);
  }
}

uint64_t sub_22FB481C8()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  (*(v2[13] + 8))(v2[16], v2[12]);
  if (v0)
  {

    v3 = sub_22FB4BFFC;
  }

  else
  {
    v3 = sub_22FB48358;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FB48358()
{
  v1 = *(v0 + 784);
  (*(v0 + 736))(*(v0 + 328), *(v0 + 344), *(v0 + 312));
  v2 = swift_task_alloc();
  *(v0 + 832) = v2;
  *v2 = v0;
  v2[1] = sub_22FB4842C;
  v3 = *(v0 + 808);
  v4 = *(v0 + 768);
  v5 = *(v0 + 328);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);

  return MEMORY[0x28219C5B0](v3, v1, v4, v6, v7, v5);
}

uint64_t sub_22FB4842C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {

    v5 = sub_22FB4CDE0;
  }

  else
  {
    *(v4 + 848) = a1;
    v5 = sub_22FB485B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB485B0()
{
  v260 = v0;
  v1 = *(v0 + 840);
  sub_22FCC6F24();

  v2 = sub_22FCC6F14();
  v244 = v0;
  if (!v1)
  {
    v13 = v2;
    v14 = *(v0 + 696);
    v15 = *(v0 + 472);
    v16 = *(v0 + 432);
    v17 = *(v0 + 392);

    v14(v16, v15, v17);
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 712);
    v22 = *(v0 + 432);
    v23 = *(v0 + 392);
    v255 = v13;
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v259[0] = v25;
      *v24 = 136380931;
      v26 = sub_22FCC7184();
      v28 = v27;
      v21(v22, v23);
      v29 = sub_22FA2F600(v26, v28, v259);
      v13 = v255;

      *(v24 + 4) = v29;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v255[2];
      _os_log_impl(&dword_22FA28000, v18, v19, "Result assets for prompt %{private}s :%ld", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    else
    {

      v21(v22, v23);
    }

    v30 = v13[2];
    if (v30 >= [objc_opt_self() promptValidationAssetCountThreshold])
    {
      v47 = *(v0 + 152);
      v48 = *(v0 + 136);
      v49 = *(v0 + 144);
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      (*(v49 + 8))(v47, v48);
      *(v0 + 856) = v13;
      v50 = *(v0 + 472);
      v51 = *(v0 + 72);

      *(v0 + 948) = PromptSuggestionValidator.validateTimeRange(promptAnnotation:resultAssetUUIDs:eventRecorder:)(v50, v13, v51);

      v52 = *(sub_22FCC7CF4() + 16);

      if (v52 || (v53 = *(sub_22FCC7D14() + 16), , v53))
      {
        v54 = *(v0 + 776);
        v55 = sub_22FCC8664();
        v56 = sub_22FCC8F34();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = *(v0 + 776);
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v259[0] = v59;
          *v58 = 136642819;
          v60 = [v57 string];
          v61 = sub_22FCC8A84();
          v63 = v62;

          v64 = sub_22FA2F600(v61, v63, v259);

          *(v58 + 4) = v64;
          _os_log_impl(&dword_22FA28000, v55, v56, "[Safety] LLMQU Prompt requires safety validation. Prompt:%{sensitive}s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x23190A000](v59, -1, -1);
          MEMORY[0x23190A000](v58, -1, -1);
        }

        v65 = *(v0 + 776);
        v66 = *(v0 + 944);
        v67 = *(v0 + 120);
        v69 = *(v0 + 96);
        v68 = *(v0 + 104);
        v70 = (*(v0 + 88) + *(v0 + 592));
        v71 = v70[3];
        v256 = v70[4];
        __swift_project_boxed_opaque_existential_1(v70, v71);
        v72 = [v65 string];
        v73 = sub_22FCC8A84();
        v75 = v74;

        *(v0 + 864) = v75;
        v76 = *(v68 + 104);
        *(v0 + 872) = v76;
        *(v0 + 880) = (v68 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v76(v67, v66, v69);
        v77 = swift_task_alloc();
        *(v0 + 888) = v77;
        *v77 = v0;
        v77[1] = sub_22FB49EA0;
        v78 = *(v0 + 120);
        v79 = *(v0 + 72);

        return MEMORY[0x28219C8C8](v73, v75, 0, v78, v79, v71, v256);
      }

      v104 = *(v0 + 776);
      v105 = sub_22FCC8664();
      v106 = sub_22FCC8F34();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = *(v0 + 776);
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v259[0] = v109;
        *v108 = 136642819;
        v110 = [v107 string];
        v111 = sub_22FCC8A84();
        v113 = v112;

        v114 = sub_22FA2F600(v111, v113, v259);

        *(v108 + 4) = v114;
        _os_log_impl(&dword_22FA28000, v105, v106, "[Safety] LLMQU Prompt does not require safety validation. Prompt:%{sensitive}s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x23190A000](v109, -1, -1);
        MEMORY[0x23190A000](v108, -1, -1);
      }

      v115 = *(v0 + 856);
      v82 = *(v115 + 16);
      v116 = *(v0 + 776);
      if (v82)
      {
        v255 = sub_22FA86B08(*(v115 + 16), 0);
        v117 = sub_22FA88270((v0 + 16), v255 + 4, v82, v115);
        v103 = *(v0 + 16);
        v102 = *(v0 + 32);
        v12 = *(v0 + 40);
        v118 = v116;

        v155 = sub_22FA37D64();
        if (v117 != v82)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v119 = v116;
        v255 = MEMORY[0x277D84F90];
      }

      v120 = *(v0 + 948);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = *(v0 + 664);
      LODWORD(v250) = v120;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_30:
        v123 = *(v82 + 2);
        v122 = *(v82 + 3);
        if (v123 >= v122 >> 1)
        {
          v82 = sub_22FAC20B8((v122 > 1), v123 + 1, 1, v82);
        }

        v124 = *(v0 + 776);
        v236 = *(v0 + 688);
        v232 = *(v0 + 712);
        v234 = *(v0 + 680);
        v238 = *(v0 + 656);
        v241 = *(v0 + 768);
        v228 = *(v0 + 392);
        v230 = *(v0 + 472);
        v226 = *(v0 + 304);
        v102 = *(v0 + 280);
        v125 = *(v0 + 288);
        v12 = *(v0 + 184);
        v127 = *(v0 + 160);
        v126 = *(v0 + 168);

        (*(v126 + 8))(v12, v127);
        (*(v125 + 8))(v226, v102);
        v155 = v232(v230, v228);
        *(v82 + 2) = v123 + 1;
        v128 = &v82[48 * v123];
        v100 = v234;
        *(v128 + 4) = v234;
        *(v128 + 5) = v236;
        *(v128 + 6) = v124;
        *(v128 + 7) = v255;
        *(v128 + 8) = v241;
        v101 = v250;
        v128[72] = v250;
        v99 = v238;
        v103 = v238 + 1;
        if (!__OFADD__(v238, 1))
        {
          v129 = *(v0 + 360);
          v130 = *(v0 + 312);
          v131 = *(v0 + 320);
          sub_22FA72A34(*(v0 + 488));

          v155 = (*(v131 + 8))(v129, v130);
          v101 = *(v0 + 648);
          v102 = *(v0 + 640);
          v100 = v238 + 1;
          v12 = v0;
          v99 = *(v0 + 672);
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      v31 = *(v0 + 696);
      v32 = *(v0 + 472);
      v33 = *(v0 + 424);
      v34 = *(v0 + 392);

      v31(v33, v32, v34);
      v35 = sub_22FCC8664();
      v36 = sub_22FCC8F34();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 712);
      v39 = *(v0 + 424);
      v40 = *(v0 + 392);
      if (v37)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v259[0] = v42;
        *v41 = 136643075;
        v43 = sub_22FCC7184();
        v45 = v44;
        v38(v39, v40);
        v46 = sub_22FA2F600(v43, v45, v259);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2049;
        *(v41 + 14) = v255[2];
        _os_log_impl(&dword_22FA28000, v35, v36, "Asset count less than valid threshold. Skipping... Prompt: %{sensitive}s. Count:%{private}ld", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x23190A000](v42, -1, -1);
        MEMORY[0x23190A000](v41, -1, -1);
      }

      else
      {

        v38(v39, v40);
      }

      v80 = *(v0 + 776);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v82 = *(v0 + 664);
      if ((v81 & 1) == 0)
      {
        v82 = sub_22FAC20B8(0, *(v82 + 2) + 1, 1, *(v0 + 664));
      }

      v84 = *(v82 + 2);
      v83 = *(v82 + 3);
      v246 = v84 + 1;
      v250 = v84;
      if (v84 >= v83 >> 1)
      {
        v82 = sub_22FAC20B8((v83 > 1), v84 + 1, 1, v82);
      }

      v85 = *(v0 + 776);
      v233 = *(v0 + 712);
      v235 = *(v0 + 680);
      v237 = *(v0 + 688);
      v240 = *(v0 + 624);
      v229 = *(v0 + 392);
      v231 = *(v0 + 472);
      v227 = *(v0 + 304);
      v86 = *(v0 + 288);
      v225 = *(v0 + 280);
      v87 = *(v0 + 176);
      v88 = *(v0 + 160);
      v89 = *(v0 + 168);
      v90 = *(v0 + 144);
      v223 = *(v0 + 152);
      v224 = *(v0 + 184);
      v91 = *(v0 + 136);

      v92 = *(v89 + 8);
      v92(v87, v88);
      (*(v90 + 8))(v223, v91);
      v92(v224, v88);
      (*(v86 + 8))(v227, v225);
      v233(v231, v229);
      *(v82 + 2) = v246;
      v93 = MEMORY[0x277D84F90];
      v94 = &v82[48 * v250];
      *(v94 + 4) = v235;
      *(v94 + 5) = v237;
      *(v94 + 6) = v85;
      *(v94 + 7) = v93;
      *(v94 + 8) = v93;
      v94[72] = 0;
      v95 = v240 + 1;
      if (!__OFADD__(v240, 1))
      {
        v96 = *(v0 + 360);
        v97 = *(v0 + 312);
        v98 = *(v0 + 320);
        sub_22FA72A34(*(v0 + 488));

        v155 = (*(v98 + 8))(v96, v97);
        v99 = *(v0 + 672);
        v100 = *(v0 + 656);
        v101 = *(v0 + 648);
        v102 = *(v0 + 640);
        v103 = *(v0 + 632);
        *(v0 + 624) = v95;
        *(v0 + 616) = v95;
        v12 = v0;
        goto LABEL_38;
      }

      __break(1u);
    }

    v82 = sub_22FAC20B8(0, *(v82 + 2) + 1, 1, v82);
    goto LABEL_30;
  }

  v3 = *(v0 + 776);
  v4 = *(v0 + 288);
  v249 = *(v0 + 280);
  v254 = *(v0 + 304);
  v5 = *(v0 + 176);
  v245 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);
  v239 = *(v0 + 152);
  v8 = *(v0 + 144);
  v9 = *(v0 + 136);

  v10 = *(v6 + 8);
  v10(v5, v7);
  (*(v8 + 8))(v239, v9);
  v11 = v7;
  v12 = v244;
  v10(v245, v11);
  (*(v4 + 8))(v254, v249);
  v154 = v244[81];
  v155 = (*(v12[40] + 8))(v12[45], v12[39]);
  v251 = v154 + 1;
  if (__OFADD__(v154, 1))
  {
    __break(1u);
    goto LABEL_63;
  }

  (*(v244[50] + 16))(v244[51], v244[59], v244[49]);
  v163 = v1;
  v164 = sub_22FCC8664();
  v165 = sub_22FCC8F14();

  v166 = os_log_type_enabled(v164, v165);
  v257 = v244[59];
  v168 = v244[50];
  v167 = v244[51];
  v169 = v244[49];
  if (v166)
  {
    v170 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v259[0] = v247;
    *v170 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
    v171 = sub_22FCC96C4();
    v173 = v172;
    v174 = *(v168 + 8);
    v174(v167, v169);
    v175 = sub_22FA2F600(v171, v173, v259);
    v12 = v244;

    *(v170 + 4) = v175;
    *(v170 + 12) = 2112;
    v176 = v1;
    v177 = _swift_stdlib_bridgeErrorToNSError();
    *(v170 + 14) = v177;
    *v242 = v177;
    _os_log_impl(&dword_22FA28000, v164, v165, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v170, 0x16u);
    sub_22FA2B420(v242, &unk_27DAD7B10);
    MEMORY[0x23190A000](v242, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v247);
    MEMORY[0x23190A000](v247, -1, -1);
    MEMORY[0x23190A000](v170, -1, -1);
  }

  else
  {

    v174 = *(v168 + 8);
    v174(v167, v169);
  }

  v174(v257, v169);
  v155 = sub_22FA72A34(v12[61]);
  v82 = v12[83];
  v100 = v12[82];
  v102 = v251;
  v101 = v251;
  v103 = v12[79];
  v99 = v12[84];
LABEL_38:
  v12[83] = v82;
  v12[82] = v100;
  v12[81] = v101;
  v12[80] = v102;
  v12[79] = v103;
  v132 = v12[71];
  v156 = 1;
  if (v99 != v132)
  {
    if (v99 < v132)
    {
      v133 = v99 + 1;
      if (!__OFADD__(v99, 1))
      {
        v134 = v12[65];
        v135 = v12[64];
        v136 = v12[8] + ((*(v12[47] + 80) + 32) & ~*(v12[47] + 80)) + *(v12[47] + 72) * v99;
        v137 = *(v12[62] + 48);
        *v135 = v99;
        sub_22FA4FAA4(v136, v135 + v137, &qword_27DAD8138);
        sub_22FA4F224(v135, v134, &qword_27DAD8840);
        v156 = 0;
        v99 = v133;
        goto LABEL_42;
      }

LABEL_64:
      __break(1u);
      return MEMORY[0x28219BDA0](v155, v156, v157, v158, v159, v160, v161, v162);
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_42:
  v12[84] = v99;
  v138 = v12[66];
  v139 = v12[65];
  v140 = v12[62];
  v141 = v12[63];
  (*(v141 + 56))(v139, v156, 1, v140);
  sub_22FA4F224(v139, v138, &qword_27DAD8848);
  if ((*(v141 + 48))(v138, 1, v140) != 1)
  {
    v142 = v12[61];
    v143 = v12[59];
    v144 = v12[60];
    v146 = v12[49];
    v145 = v12[50];
    v147 = v12[48];
    v148 = v12[66] + *(v12[62] + 48);
    v149 = *(v12[46] + 48);
    sub_22FB5570C(v148, v147);
    v150 = *(v145 + 32);
    v150(v147 + v149, v148 + v149, v146);
    sub_22FB5570C(v147, v142);
    v150(v143, v147 + v149, v146);
    v151 = (v142 + *(v144 + 20));
    v152 = *v151;
    v244[85] = *v151;
    v153 = v151[1];
    v244[86] = v153;

    sub_22FCC8434();
    sub_22FCC8464();
    v179 = v244[58];
    v178 = v244[59];
    v181 = v244[49];
    v180 = v244[50];
    sub_22FCC8454();
    sub_22FCC8454();
    v182 = *(v180 + 16);
    v244[87] = v182;
    v244[88] = (v180 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v182(v179, v178, v181);

    v183 = sub_22FCC8664();
    v184 = sub_22FCC8F34();

    v185 = os_log_type_enabled(v183, v184);
    v186 = v244[58];
    v188 = v244[49];
    v187 = v244[50];
    if (v185)
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v259[0] = v190;
      *v189 = 136315395;
      *(v189 + 4) = sub_22FA2F600(v152, v153, v259);
      *(v189 + 12) = 2081;
      v191 = sub_22FCC7154();
      v193 = v192;
      v194 = *(v187 + 8);
      v194(v186, v188);
      v195 = sub_22FA2F600(v191, v193, v259);

      *(v189 + 14) = v195;
      _os_log_impl(&dword_22FA28000, v183, v184, "[Safety] Validating prompt with id %s with annotation %{private}s", v189, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v190, -1, -1);
      MEMORY[0x23190A000](v189, -1, -1);
    }

    else
    {

      v194 = *(v187 + 8);
      v194(v186, v188);
    }

    v244[89] = v194;
    v248 = v244[44];
    v243 = v244[42];
    v197 = v244[39];
    v196 = v244[40];
    v198 = v244[34];
    v199 = sub_22FCC7184();
    v252 = v200;
    v258 = v199;
    v244[90] = v200;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v201 = sub_22FCC7104();
    v244[91] = v201;

    v202 = sub_22FCC70C4();
    (*(*(v202 - 8) + 56))(v198, 1, 1, v202);
    v203 = *(v196 + 32);
    v244[92] = v203;
    v244[93] = (v196 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v203(v243, v248, v197);
    v204 = swift_task_alloc();
    v244[94] = v204;
    *v204 = v244;
    v204[1] = sub_22FB45E10;
    v155 = v244[38];
    v162 = v244[34];
    v205 = v244[9];
    v265 = v244[42];
    v266 = 0;
    v264 = v205;
    v263 = 1;
    v262 = 0;
    v157 = v252;
    v156 = v258;
    v158 = v201;
    v159 = 0;
    v160 = 0;
    v161 = 0;

    return MEMORY[0x28219BDA0](v155, v156, v157, v158, v159, v160, v161, v162);
  }

  sub_22FCC8484();

  v206 = sub_22FCC8664();
  v207 = sub_22FCC8F34();
  v208 = os_log_type_enabled(v206, v207);
  v253 = v102;
  if (v208)
  {
    v209 = swift_slowAlloc();
    *v209 = 134217984;
    *(v209 + 4) = *(v82 + 2);

    _os_log_impl(&dword_22FA28000, v206, v207, "Safety Received results for prompts:%ld", v209, 0xCu);
    MEMORY[0x23190A000](v209, -1, -1);
  }

  else
  {
  }

  v210 = v12[77];
  v211 = v12[76];
  v212 = v12;
  v213 = v12[71];
  v214 = v212[69];
  v215 = v212[68];
  v221 = v210;
  v222 = v212[67];
  v216 = v212[9];
  v217 = v212[7];

  v217[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v217[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v218 = swift_allocObject();
  *v217 = v218;
  v218[2] = MEMORY[0x277D84F90];
  v218[3] = v213;
  v218[4] = v211;
  v218[5] = v221;
  v218[6] = v103;
  v218[7] = v253;
  __swift_project_boxed_opaque_existential_1(v216, v216[3]);
  sub_22FCC83F4();
  (*(v215 + 8))(v214, v222);

  v219 = v212[1];

  return v219(v82);
}

uint64_t sub_22FB49EA0()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    (*(v2[13] + 8))(v2[15], v2[12]);

    v3 = sub_22FB4DBC4;
  }

  else
  {
    v4 = v2[15];
    v5 = v2[12];
    v6 = v2[13];

    v7 = *(v6 + 8);
    v2[113] = v7;
    v2[114] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_22FB4A054;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FB4A054()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 944);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 88) + *(v0 + 592));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v1(v3, v2, v4);
  v8 = swift_task_alloc();
  *(v0 + 920) = v8;
  *v8 = v0;
  v8[1] = sub_22FB4A154;
  v9 = *(v0 + 776);
  v10 = *(v0 + 112);
  v11 = *(v0 + 72);

  return MEMORY[0x28219C8C0](v9, v10, v11, v6, v7);
}

uint64_t sub_22FB4A154(void *a1)
{
  v4 = *v2;
  v4[116] = v1;

  v5 = v4[113];
  if (v1)
  {
    v5(v4[14], v4[12]);

    v6 = sub_22FB4E994;
  }

  else
  {
    v7 = v4[14];
    v8 = v4[12];

    v5(v7, v8);
    v6 = sub_22FB4A2E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FB4A2E0()
{
  v142 = v0;
  v137 = *(v0 + 928);
  v1 = *(v0 + 856);
  v2 = *(v1 + 16);
  v3 = *(v0 + 776);
  if (v2)
  {
    v134 = sub_22FA86B08(*(v1 + 16), 0);
    v4 = sub_22FA88270((v0 + 16), v134 + 4, v2, v1);
    v5 = v3;

    sub_22FA37D64();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = v3;
  v134 = MEMORY[0x277D84F90];
LABEL_5:
  v7 = *(v0 + 948);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 664);
  LOBYTE(v132) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_41:
    v9 = sub_22FAC20B8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_22FAC20B8((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 776);
  v128 = *(v0 + 768);
  v124 = *(v0 + 712);
  v125 = *(v0 + 680);
  v126 = *(v0 + 688);
  v127 = *(v0 + 656);
  v123 = *(v0 + 472);
  v121 = *(v0 + 304);
  v122 = *(v0 + 392);
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v15 = *(v0 + 184);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v121, v14);
  v18 = v124(v123, v122);
  *(v9 + 2) = v11 + 1;
  v26 = &v9[48 * v11];
  *(v26 + 4) = v125;
  *(v26 + 5) = v126;
  *(v26 + 6) = v12;
  *(v26 + 7) = v134;
  *(v26 + 8) = v128;
  v26[72] = v132;
  v27 = v127 + 1;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
    return MEMORY[0x28219BDA0](v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v28 = *(v0 + 360);
    v29 = *(v0 + 312);
    v30 = *(v0 + 320);
    sub_22FA72A34(*(v0 + 488));

    (*(v30 + 8))(v28, v29);
    v31 = *(v0 + 640);
    v32 = v127 + 1;
    while (1)
    {
      v34 = *(v0 + 672);
      *(v0 + 664) = v9;
      *(v0 + 656) = v32;
      *(v0 + 640) = v31;
      *(v0 + 632) = v27;
      v35 = *(v0 + 568);
      v134 = v31.i64[0];
      if (v34 == v35)
      {
        v36 = 1;
      }

      else
      {
        if (v34 >= v35)
        {
          goto LABEL_39;
        }

        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_40;
        }

        v38 = *(v0 + 520);
        v39 = *(v0 + 512);
        v40 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v34;
        v41 = *(*(v0 + 496) + 48);
        *v39 = v34;
        sub_22FA4FAA4(v40, v39 + v41, &qword_27DAD8138);
        sub_22FA4F224(v39, v38, &qword_27DAD8840);
        v36 = 0;
        v34 = v37;
      }

      *(v0 + 672) = v34;
      v42 = *(v0 + 528);
      v43 = *(v0 + 520);
      v45 = *(v0 + 496);
      v44 = *(v0 + 504);
      (*(v44 + 56))(v43, v36, 1, v45);
      sub_22FA4F224(v43, v42, &qword_27DAD8848);
      if ((*(v44 + 48))(v42, 1, v45) == 1)
      {
        break;
      }

      v134 = *(v0 + 568);
      v9 = *(v0 + 488);
      v46 = *(v0 + 472);
      v129 = *(v0 + 480);
      v48 = *(v0 + 392);
      v47 = *(v0 + 400);
      v49 = *(v0 + 384);
      v132 = *(v0 + 80);
      v50 = *(v0 + 528) + *(*(v0 + 496) + 48);
      v51 = *(*(v0 + 368) + 48);
      sub_22FB5570C(v50, v49);
      v52 = *(v47 + 32);
      v52(v49 + v51, v50 + v51, v48);
      sub_22FB5570C(v49, v9);
      v52(v46, v49 + v51, v48);
      v53 = &v9[*(v129 + 20)];
      v54 = *v53;
      *(v0 + 680) = *v53;
      v55 = v53[1];
      *(v0 + 688) = v55;

      sub_22FCC8434();
      v56 = v137;
      sub_22FCC8464();
      if (!v137)
      {
        v83 = *(v0 + 464);
        v82 = *(v0 + 472);
        v84 = *(v0 + 392);
        v85 = *(v0 + 400);
        sub_22FCC8454();
        sub_22FCC8454();
        v86 = *(v85 + 16);
        *(v0 + 696) = v86;
        *(v0 + 704) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v86(v83, v82, v84);

        v87 = sub_22FCC8664();
        v88 = sub_22FCC8F34();

        v89 = os_log_type_enabled(v87, v88);
        v90 = *(v0 + 464);
        v92 = *(v0 + 392);
        v91 = *(v0 + 400);
        if (v89)
        {
          v93 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v141[0] = v139;
          *v93 = 136315395;
          *(v93 + 4) = sub_22FA2F600(v54, v55, v141);
          *(v93 + 12) = 2081;
          v94 = sub_22FCC7154();
          v96 = v95;
          v97 = *(v91 + 8);
          v97(v90, v92);
          v98 = sub_22FA2F600(v94, v96, v141);

          *(v93 + 14) = v98;
          _os_log_impl(&dword_22FA28000, v87, v88, "[Safety] Validating prompt with id %s with annotation %{private}s", v93, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v139, -1, -1);
          MEMORY[0x23190A000](v93, -1, -1);
        }

        else
        {

          v97 = *(v91 + 8);
          v97(v90, v92);
        }

        *(v0 + 712) = v97;
        v131 = *(v0 + 336);
        v133 = *(v0 + 352);
        v100 = *(v0 + 312);
        v99 = *(v0 + 320);
        v101 = *(v0 + 272);
        v140 = sub_22FCC7184();
        v136 = v102;
        *(v0 + 720) = v102;
        sub_22FA4CF38(MEMORY[0x277D84F90]);
        v103 = sub_22FCC7104();
        *(v0 + 728) = v103;

        v104 = sub_22FCC70C4();
        (*(*(v104 - 8) + 56))(v101, 1, 1, v104);
        v105 = *(v99 + 32);
        *(v0 + 736) = v105;
        *(v0 + 744) = (v99 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v105(v131, v133, v100);
        v106 = swift_task_alloc();
        *(v0 + 752) = v106;
        *v106 = v0;
        v106[1] = sub_22FB45E10;
        v18 = *(v0 + 304);
        v25 = *(v0 + 272);
        v107 = *(v0 + 72);
        v147 = *(v0 + 336);
        v148 = 0;
        v146 = v107;
        v145 = 1;
        v144 = 0;
        v19 = v140;
        v20 = v136;
        v21 = v103;
        v22 = 0;
        v23 = 0;
        v24 = 0;

        return MEMORY[0x28219BDA0](v18, v19, v20, v21, v22, v23, v24, v25);
      }

      v57 = *(v0 + 648);
      (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
      v59 = v137;
      v60 = sub_22FCC8664();
      v61 = sub_22FCC8F14();

      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 472);
      v65 = *(v0 + 400);
      v64 = *(v0 + 408);
      v66 = *(v0 + 392);
      if (v62)
      {
        v67 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v141[0] = v135;
        *v67 = 136380931;
        sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
        v130 = v61;
        v68 = sub_22FCC96C4();
        v138 = v63;
        v69 = v58;
        v71 = v70;
        v72 = *(v65 + 8);
        v72(v64, v66);
        v73 = sub_22FA2F600(v68, v71, v141);
        v58 = v69;

        *(v67 + 4) = v73;
        *(v67 + 12) = 2112;
        v74 = v56;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 14) = v75;
        *v132 = v75;
        _os_log_impl(&dword_22FA28000, v60, v130, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v67, 0x16u);
        sub_22FA2B420(v132, &unk_27DAD7B10);
        MEMORY[0x23190A000](v132, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x23190A000](v135, -1, -1);
        MEMORY[0x23190A000](v67, -1, -1);

        v72(v138, v66);
      }

      else
      {

        v33 = *(v65 + 8);
        v33(v64, v66);
        v33(v63, v66);
      }

      sub_22FA72A34(*(v0 + 488));
      v137 = 0;
      v9 = *(v0 + 664);
      v32 = *(v0 + 656);
      v27 = *(v0 + 632);
      v31 = vdupq_n_s64(v58);
    }

    sub_22FCC8484();
    if (v137)
    {
      v76 = *(v0 + 552);
      v77 = *(v0 + 544);
      v78 = *(v0 + 536);
      v79 = *(v0 + 72);

      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      sub_22FCC83F4();
      (*(v77 + 8))(v76, v78);

      v80 = *(v0 + 8);

      return v80();
    }

    else
    {

      v108 = sub_22FCC8664();
      v109 = sub_22FCC8F34();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 134217984;
        *(v110 + 4) = *(v9 + 2);

        _os_log_impl(&dword_22FA28000, v108, v109, "Safety Received results for prompts:%ld", v110, 0xCu);
        MEMORY[0x23190A000](v110, -1, -1);
      }

      else
      {
      }

      v111 = *(v0 + 608);
      v112 = *(v0 + 568);
      v113 = *(v0 + 552);
      v114 = *(v0 + 544);
      v119 = *(v0 + 616);
      v120 = *(v0 + 536);
      v115 = *(v0 + 72);
      v116 = *(v0 + 56);

      v116[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
      v116[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
      v117 = swift_allocObject();
      *v116 = v117;
      v117[2] = MEMORY[0x277D84F90];
      v117[3] = v112;
      v117[4] = v111;
      v117[5] = v119;
      v117[6] = v27;
      v117[7] = v134;
      __swift_project_boxed_opaque_existential_1(v115, v115[3]);
      sub_22FCC83F4();
      (*(v114 + 8))(v113, v120);

      v118 = *(v0 + 8);

      return v118(v9);
    }
  }
}

uint64_t sub_22FB4B268()
{
  v110 = v1;
  (*(v1[40] + 8))(v1[43], v1[39]);
  v3 = v1[95];
  v4 = v1[81];
  (*(v1[40] + 8))(v1[45], v1[39]);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(v1[50] + 16))(v1[51], v1[59], v1[49]);
  v6 = v3;
  v7 = sub_22FCC8664();
  v8 = sub_22FCC8F14();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[59];
  v12 = v1[50];
  v11 = v1[51];
  v13 = v1[49];
  if (v9)
  {
    v105 = v5;
    v14 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v109[0] = v101;
    *v14 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
    v97 = v8;
    v15 = sub_22FCC96C4();
    v103 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_22FA2F600(v15, v17, v109);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v98 = v21;
    _os_log_impl(&dword_22FA28000, v7, v97, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v14, 0x16u);
    sub_22FA2B420(v98, &unk_27DAD7B10);
    MEMORY[0x23190A000](v98, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x23190A000](v101, -1, -1);
    v22 = v14;
    v5 = v105;
    MEMORY[0x23190A000](v22, -1, -1);

    v18(v103, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = sub_22FA72A34(v1[61]);
  v0 = v1[83];
  v2 = v1[79];
  v32 = v1[84];
  v1[81] = v5;
  v1[80] = v5;
  v33 = v1[71];
  if (v32 == v33)
  {
    v34 = 1;
    goto LABEL_10;
  }

  if (v32 >= v33)
  {
    __break(1u);
    goto LABEL_27;
  }

  v35 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v24, v25, v26, v27, v28, v29, v30, v31);
  }

  v36 = v1[65];
  v37 = v1[64];
  v38 = v1[8] + ((*(v1[47] + 80) + 32) & ~*(v1[47] + 80)) + *(v1[47] + 72) * v32;
  v39 = *(v1[62] + 48);
  *v37 = v32;
  sub_22FA4FAA4(v38, v37 + v39, &qword_27DAD8138);
  sub_22FA4F224(v37, v36, &qword_27DAD8840);
  v34 = 0;
  v32 = v35;
LABEL_10:
  v1[84] = v32;
  v40 = v1[66];
  v41 = v1[65];
  v42 = v1[62];
  v43 = v1[63];
  (*(v43 + 56))(v41, v34, 1, v42);
  sub_22FA4F224(v41, v40, &qword_27DAD8848);
  if ((*(v43 + 48))(v40, 1, v42) != 1)
  {
    v44 = v1[61];
    v45 = v1[59];
    v99 = v1[60];
    v46 = v1[49];
    v47 = v1[50];
    v48 = v1[48];
    v49 = v1[66] + *(v1[62] + 48);
    v50 = *(v1[46] + 48);
    sub_22FB5570C(v49, v48);
    v51 = *(v47 + 32);
    v51(v48 + v50, v49 + v50, v46);
    sub_22FB5570C(v48, v44);
    v51(v45, v48 + v50, v46);
    v52 = (v44 + *(v99 + 20));
    v53 = *v52;
    v1[85] = *v52;
    v54 = v52[1];
    v1[86] = v54;

    sub_22FCC8434();
    sub_22FCC8464();
    v56 = v1[58];
    v55 = v1[59];
    v57 = v1[49];
    v58 = v1[50];
    sub_22FCC8454();
    sub_22FCC8454();
    v59 = *(v58 + 16);
    v1[87] = v59;
    v1[88] = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59(v56, v55, v57);

    v60 = sub_22FCC8664();
    v61 = sub_22FCC8F34();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v1[58];
    v65 = v1[49];
    v64 = v1[50];
    if (v62)
    {
      v66 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v109[0] = v106;
      *v66 = 136315395;
      *(v66 + 4) = sub_22FA2F600(v53, v54, v109);
      *(v66 + 12) = 2081;
      v67 = sub_22FCC7154();
      v69 = v68;
      v70 = *(v64 + 8);
      v70(v63, v65);
      v71 = sub_22FA2F600(v67, v69, v109);

      *(v66 + 14) = v71;
      _os_log_impl(&dword_22FA28000, v60, v61, "[Safety] Validating prompt with id %s with annotation %{private}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v106, -1, -1);
      MEMORY[0x23190A000](v66, -1, -1);
    }

    else
    {

      v70 = *(v64 + 8);
      v70(v63, v65);
    }

    v1[89] = v70;
    v100 = v1[42];
    v102 = v1[44];
    v73 = v1[39];
    v72 = v1[40];
    v74 = v1[34];
    v75 = sub_22FCC7184();
    v104 = v76;
    v107 = v75;
    v1[90] = v76;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v77 = sub_22FCC7104();
    v1[91] = v77;

    v78 = sub_22FCC70C4();
    (*(*(v78 - 8) + 56))(v74, 1, 1, v78);
    v79 = *(v72 + 32);
    v1[92] = v79;
    v1[93] = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v79(v100, v102, v73);
    v80 = swift_task_alloc();
    v1[94] = v80;
    *v80 = v1;
    v80[1] = sub_22FB45E10;
    v24 = v1[38];
    v31 = v1[34];
    v81 = v1[9];
    v115 = v1[42];
    v116 = 0;
    v114 = v81;
    v113 = 1;
    v112 = 0;
    v26 = v104;
    v25 = v107;
    v27 = v77;
    v28 = 0;
    v29 = 0;
    v30 = 0;

    return MEMORY[0x28219BDA0](v24, v25, v26, v27, v28, v29, v30, v31);
  }

LABEL_13:
  sub_22FCC8484();

  v82 = sub_22FCC8664();
  v83 = sub_22FCC8F34();
  v84 = os_log_type_enabled(v82, v83);
  v108 = v5;
  if (v84)
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = *(v0 + 16);

    _os_log_impl(&dword_22FA28000, v82, v83, "Safety Received results for prompts:%ld", v85, 0xCu);
    MEMORY[0x23190A000](v85, -1, -1);
  }

  else
  {
  }

  v86 = v1[76];
  v87 = v1[71];
  v88 = v1[69];
  v89 = v1[68];
  v95 = v1[77];
  v96 = v1[67];
  v90 = v1[9];
  v91 = v1[7];

  v91[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v91[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v92 = swift_allocObject();
  *v91 = v92;
  v92[2] = MEMORY[0x277D84F90];
  v92[3] = v87;
  v92[4] = v86;
  v92[5] = v95;
  v92[6] = v2;
  v92[7] = v108;
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  sub_22FCC83F4();
  (*(v89 + 8))(v88, v96);

  v93 = v1[1];

  return v93(v0);
}

uint64_t sub_22FB4BFFC()
{
  v117 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 824);
  v11 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v13 = v10;
  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F14();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 472);
  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 392);
  if (v16)
  {
    v112 = v12;
    v21 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v116[0] = v108;
    *v21 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
    v104 = v15;
    v22 = sub_22FCC96C4();
    v110 = v17;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = sub_22FA2F600(v22, v24, v116);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    v27 = v10;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v105 = v28;
    _os_log_impl(&dword_22FA28000, v14, v104, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v21, 0x16u);
    sub_22FA2B420(v105, &unk_27DAD7B10);
    MEMORY[0x23190A000](v105, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x23190A000](v108, -1, -1);
    v29 = v21;
    v12 = v112;
    MEMORY[0x23190A000](v29, -1, -1);

    v25(v110, v20);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
    v30(v17, v20);
  }

  v31 = sub_22FA72A34(*(v0 + 488));
  v2 = *(v0 + 664);
  v7 = *(v0 + 632);
  v39 = *(v0 + 672);
  *(v0 + 648) = v12;
  *(v0 + 640) = v12;
  v40 = *(v0 + 568);
  if (v39 == v40)
  {
    v41 = 1;
    goto LABEL_10;
  }

  if (v39 >= v40)
  {
    __break(1u);
    goto LABEL_27;
  }

  v42 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

  v43 = *(v0 + 520);
  v44 = *(v0 + 512);
  v45 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v39;
  v46 = *(*(v0 + 496) + 48);
  *v44 = v39;
  sub_22FA4FAA4(v45, v44 + v46, &qword_27DAD8138);
  sub_22FA4F224(v44, v43, &qword_27DAD8840);
  v41 = 0;
  v39 = v42;
LABEL_10:
  *(v0 + 672) = v39;
  v47 = *(v0 + 528);
  v48 = *(v0 + 520);
  v49 = *(v0 + 496);
  v50 = *(v0 + 504);
  (*(v50 + 56))(v48, v41, 1, v49);
  sub_22FA4F224(v48, v47, &qword_27DAD8848);
  if ((*(v50 + 48))(v47, 1, v49) != 1)
  {
    v51 = *(v0 + 488);
    v52 = *(v0 + 472);
    v106 = *(v0 + 480);
    v53 = *(v0 + 392);
    v54 = *(v0 + 400);
    v55 = *(v0 + 384);
    v56 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v57 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v56, v55);
    v58 = *(v54 + 32);
    v58(v55 + v57, v56 + v57, v53);
    sub_22FB5570C(v55, v51);
    v58(v52, v55 + v57, v53);
    v59 = (v51 + *(v106 + 20));
    v60 = *v59;
    *(v0 + 680) = *v59;
    v61 = v59[1];
    *(v0 + 688) = v61;

    sub_22FCC8434();
    sub_22FCC8464();
    v63 = *(v0 + 464);
    v62 = *(v0 + 472);
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v66 = *(v65 + 16);
    *(v0 + 696) = v66;
    *(v0 + 704) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v63, v62, v64);

    v67 = sub_22FCC8664();
    v68 = sub_22FCC8F34();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 464);
    v72 = *(v0 + 392);
    v71 = *(v0 + 400);
    if (v69)
    {
      v73 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v73 = 136315395;
      *(v73 + 4) = sub_22FA2F600(v60, v61, v116);
      *(v73 + 12) = 2081;
      v74 = sub_22FCC7154();
      v76 = v75;
      v77 = *(v71 + 8);
      v77(v70, v72);
      v78 = sub_22FA2F600(v74, v76, v116);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_22FA28000, v67, v68, "[Safety] Validating prompt with id %s with annotation %{private}s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v73, -1, -1);
    }

    else
    {

      v77 = *(v71 + 8);
      v77(v70, v72);
    }

    *(v0 + 712) = v77;
    v107 = *(v0 + 336);
    v109 = *(v0 + 352);
    v80 = *(v0 + 312);
    v79 = *(v0 + 320);
    v81 = *(v0 + 272);
    v82 = sub_22FCC7184();
    v111 = v83;
    v114 = v82;
    *(v0 + 720) = v83;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v84 = sub_22FCC7104();
    *(v0 + 728) = v84;

    v85 = sub_22FCC70C4();
    (*(*(v85 - 8) + 56))(v81, 1, 1, v85);
    v86 = *(v79 + 32);
    *(v0 + 736) = v86;
    *(v0 + 744) = (v79 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v86(v107, v109, v80);
    v87 = swift_task_alloc();
    *(v0 + 752) = v87;
    *v87 = v0;
    v87[1] = sub_22FB45E10;
    v31 = *(v0 + 304);
    v38 = *(v0 + 272);
    v88 = *(v0 + 72);
    v122 = *(v0 + 336);
    v123 = 0;
    v121 = v88;
    v120 = 1;
    v119 = 0;
    v33 = v111;
    v32 = v114;
    v34 = v84;
    v35 = 0;
    v36 = 0;
    v37 = 0;

    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

LABEL_13:
  sub_22FCC8484();

  v89 = sub_22FCC8664();
  v90 = sub_22FCC8F34();
  v91 = os_log_type_enabled(v89, v90);
  v115 = v12;
  if (v91)
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v2 + 16);

    _os_log_impl(&dword_22FA28000, v89, v90, "Safety Received results for prompts:%ld", v92, 0xCu);
    MEMORY[0x23190A000](v92, -1, -1);
  }

  else
  {
  }

  v93 = *(v0 + 608);
  v94 = *(v0 + 568);
  v95 = *(v0 + 552);
  v96 = *(v0 + 544);
  v102 = *(v0 + 616);
  v103 = *(v0 + 536);
  v97 = *(v0 + 72);
  v98 = *(v0 + 56);

  v98[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v98[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v99 = swift_allocObject();
  *v98 = v99;
  v99[2] = MEMORY[0x277D84F90];
  v99[3] = v94;
  v99[4] = v93;
  v99[5] = v102;
  v99[6] = v7;
  v99[7] = v115;
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_22FCC83F4();
  (*(v96 + 8))(v95, v103);

  v100 = *(v0 + 8);

  return v100(v2);
}

uint64_t sub_22FB4CDE0()
{
  v117 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 840);
  v11 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v13 = v10;
  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F14();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 472);
  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 392);
  if (v16)
  {
    v112 = v12;
    v21 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v116[0] = v108;
    *v21 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
    v104 = v15;
    v22 = sub_22FCC96C4();
    v110 = v17;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = sub_22FA2F600(v22, v24, v116);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    v27 = v10;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v105 = v28;
    _os_log_impl(&dword_22FA28000, v14, v104, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v21, 0x16u);
    sub_22FA2B420(v105, &unk_27DAD7B10);
    MEMORY[0x23190A000](v105, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x23190A000](v108, -1, -1);
    v29 = v21;
    v12 = v112;
    MEMORY[0x23190A000](v29, -1, -1);

    v25(v110, v20);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
    v30(v17, v20);
  }

  v31 = sub_22FA72A34(*(v0 + 488));
  v2 = *(v0 + 664);
  v7 = *(v0 + 632);
  v39 = *(v0 + 672);
  *(v0 + 648) = v12;
  *(v0 + 640) = v12;
  v40 = *(v0 + 568);
  if (v39 == v40)
  {
    v41 = 1;
    goto LABEL_10;
  }

  if (v39 >= v40)
  {
    __break(1u);
    goto LABEL_27;
  }

  v42 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

  v43 = *(v0 + 520);
  v44 = *(v0 + 512);
  v45 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v39;
  v46 = *(*(v0 + 496) + 48);
  *v44 = v39;
  sub_22FA4FAA4(v45, v44 + v46, &qword_27DAD8138);
  sub_22FA4F224(v44, v43, &qword_27DAD8840);
  v41 = 0;
  v39 = v42;
LABEL_10:
  *(v0 + 672) = v39;
  v47 = *(v0 + 528);
  v48 = *(v0 + 520);
  v49 = *(v0 + 496);
  v50 = *(v0 + 504);
  (*(v50 + 56))(v48, v41, 1, v49);
  sub_22FA4F224(v48, v47, &qword_27DAD8848);
  if ((*(v50 + 48))(v47, 1, v49) != 1)
  {
    v51 = *(v0 + 488);
    v52 = *(v0 + 472);
    v106 = *(v0 + 480);
    v53 = *(v0 + 392);
    v54 = *(v0 + 400);
    v55 = *(v0 + 384);
    v56 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v57 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v56, v55);
    v58 = *(v54 + 32);
    v58(v55 + v57, v56 + v57, v53);
    sub_22FB5570C(v55, v51);
    v58(v52, v55 + v57, v53);
    v59 = (v51 + *(v106 + 20));
    v60 = *v59;
    *(v0 + 680) = *v59;
    v61 = v59[1];
    *(v0 + 688) = v61;

    sub_22FCC8434();
    sub_22FCC8464();
    v63 = *(v0 + 464);
    v62 = *(v0 + 472);
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v66 = *(v65 + 16);
    *(v0 + 696) = v66;
    *(v0 + 704) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v63, v62, v64);

    v67 = sub_22FCC8664();
    v68 = sub_22FCC8F34();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 464);
    v72 = *(v0 + 392);
    v71 = *(v0 + 400);
    if (v69)
    {
      v73 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v73 = 136315395;
      *(v73 + 4) = sub_22FA2F600(v60, v61, v116);
      *(v73 + 12) = 2081;
      v74 = sub_22FCC7154();
      v76 = v75;
      v77 = *(v71 + 8);
      v77(v70, v72);
      v78 = sub_22FA2F600(v74, v76, v116);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_22FA28000, v67, v68, "[Safety] Validating prompt with id %s with annotation %{private}s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v73, -1, -1);
    }

    else
    {

      v77 = *(v71 + 8);
      v77(v70, v72);
    }

    *(v0 + 712) = v77;
    v107 = *(v0 + 336);
    v109 = *(v0 + 352);
    v80 = *(v0 + 312);
    v79 = *(v0 + 320);
    v81 = *(v0 + 272);
    v82 = sub_22FCC7184();
    v111 = v83;
    v114 = v82;
    *(v0 + 720) = v83;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v84 = sub_22FCC7104();
    *(v0 + 728) = v84;

    v85 = sub_22FCC70C4();
    (*(*(v85 - 8) + 56))(v81, 1, 1, v85);
    v86 = *(v79 + 32);
    *(v0 + 736) = v86;
    *(v0 + 744) = (v79 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v86(v107, v109, v80);
    v87 = swift_task_alloc();
    *(v0 + 752) = v87;
    *v87 = v0;
    v87[1] = sub_22FB45E10;
    v31 = *(v0 + 304);
    v38 = *(v0 + 272);
    v88 = *(v0 + 72);
    v122 = *(v0 + 336);
    v123 = 0;
    v121 = v88;
    v120 = 1;
    v119 = 0;
    v33 = v111;
    v32 = v114;
    v34 = v84;
    v35 = 0;
    v36 = 0;
    v37 = 0;

    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

LABEL_13:
  sub_22FCC8484();

  v89 = sub_22FCC8664();
  v90 = sub_22FCC8F34();
  v91 = os_log_type_enabled(v89, v90);
  v115 = v12;
  if (v91)
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v2 + 16);

    _os_log_impl(&dword_22FA28000, v89, v90, "Safety Received results for prompts:%ld", v92, 0xCu);
    MEMORY[0x23190A000](v92, -1, -1);
  }

  else
  {
  }

  v93 = *(v0 + 608);
  v94 = *(v0 + 568);
  v95 = *(v0 + 552);
  v96 = *(v0 + 544);
  v102 = *(v0 + 616);
  v103 = *(v0 + 536);
  v97 = *(v0 + 72);
  v98 = *(v0 + 56);

  v98[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v98[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v99 = swift_allocObject();
  *v98 = v99;
  v99[2] = MEMORY[0x277D84F90];
  v99[3] = v94;
  v99[4] = v93;
  v99[5] = v102;
  v99[6] = v7;
  v99[7] = v115;
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_22FCC83F4();
  (*(v96 + 8))(v95, v103);

  v100 = *(v0 + 8);

  return v100(v2);
}

uint64_t sub_22FB4DBC4()
{
  v114 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 896);
  v8 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v10 = v7;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 472);
  v16 = *(v0 + 400);
  v15 = *(v0 + 408);
  v17 = *(v0 + 392);
  if (v13)
  {
    v109 = v9;
    v18 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v113[0] = v105;
    *v18 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
    v101 = v12;
    v19 = sub_22FCC96C4();
    v107 = v14;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = sub_22FA2F600(v19, v21, v113);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v7;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v102 = v25;
    _os_log_impl(&dword_22FA28000, v11, v101, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v18, 0x16u);
    sub_22FA2B420(v102, &unk_27DAD7B10);
    MEMORY[0x23190A000](v102, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x23190A000](v105, -1, -1);
    v26 = v18;
    v9 = v109;
    MEMORY[0x23190A000](v26, -1, -1);

    v22(v107, v17);
  }

  else
  {

    v27 = *(v16 + 8);
    v27(v15, v17);
    v27(v14, v17);
  }

  v28 = sub_22FA72A34(*(v0 + 488));
  v1 = *(v0 + 664);
  v5 = *(v0 + 632);
  v36 = *(v0 + 672);
  *(v0 + 648) = v9;
  *(v0 + 640) = v9;
  v37 = *(v0 + 568);
  if (v36 == v37)
  {
    v38 = 1;
    goto LABEL_10;
  }

  if (v36 >= v37)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v36;
  v43 = *(*(v0 + 496) + 48);
  *v41 = v36;
  sub_22FA4FAA4(v42, v41 + v43, &qword_27DAD8138);
  sub_22FA4F224(v41, v40, &qword_27DAD8840);
  v38 = 0;
  v36 = v39;
LABEL_10:
  *(v0 + 672) = v36;
  v44 = *(v0 + 528);
  v45 = *(v0 + 520);
  v46 = *(v0 + 496);
  v47 = *(v0 + 504);
  (*(v47 + 56))(v45, v38, 1, v46);
  sub_22FA4F224(v45, v44, &qword_27DAD8848);
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    v48 = *(v0 + 488);
    v49 = *(v0 + 472);
    v103 = *(v0 + 480);
    v50 = *(v0 + 392);
    v51 = *(v0 + 400);
    v52 = *(v0 + 384);
    v53 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v54 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v53, v52);
    v55 = *(v51 + 32);
    v55(v52 + v54, v53 + v54, v50);
    sub_22FB5570C(v52, v48);
    v55(v49, v52 + v54, v50);
    v56 = (v48 + *(v103 + 20));
    v57 = *v56;
    *(v0 + 680) = *v56;
    v58 = v56[1];
    *(v0 + 688) = v58;

    sub_22FCC8434();
    sub_22FCC8464();
    v60 = *(v0 + 464);
    v59 = *(v0 + 472);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v63 = *(v62 + 16);
    *(v0 + 696) = v63;
    *(v0 + 704) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v63(v60, v59, v61);

    v64 = sub_22FCC8664();
    v65 = sub_22FCC8F34();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 464);
    v69 = *(v0 + 392);
    v68 = *(v0 + 400);
    if (v66)
    {
      v70 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v113[0] = v110;
      *v70 = 136315395;
      *(v70 + 4) = sub_22FA2F600(v57, v58, v113);
      *(v70 + 12) = 2081;
      v71 = sub_22FCC7154();
      v73 = v72;
      v74 = *(v68 + 8);
      v74(v67, v69);
      v75 = sub_22FA2F600(v71, v73, v113);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_22FA28000, v64, v65, "[Safety] Validating prompt with id %s with annotation %{private}s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v110, -1, -1);
      MEMORY[0x23190A000](v70, -1, -1);
    }

    else
    {

      v74 = *(v68 + 8);
      v74(v67, v69);
    }

    *(v0 + 712) = v74;
    v104 = *(v0 + 336);
    v106 = *(v0 + 352);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 272);
    v79 = sub_22FCC7184();
    v108 = v80;
    v111 = v79;
    *(v0 + 720) = v80;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v81 = sub_22FCC7104();
    *(v0 + 728) = v81;

    v82 = sub_22FCC70C4();
    (*(*(v82 - 8) + 56))(v78, 1, 1, v82);
    v83 = *(v76 + 32);
    *(v0 + 736) = v83;
    *(v0 + 744) = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v83(v104, v106, v77);
    v84 = swift_task_alloc();
    *(v0 + 752) = v84;
    *v84 = v0;
    v84[1] = sub_22FB45E10;
    v28 = *(v0 + 304);
    v35 = *(v0 + 272);
    v85 = *(v0 + 72);
    v119 = *(v0 + 336);
    v120 = 0;
    v118 = v85;
    v117 = 1;
    v116 = 0;
    v30 = v108;
    v29 = v111;
    v31 = v81;
    v32 = 0;
    v33 = 0;
    v34 = 0;

    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_13:
  sub_22FCC8484();

  v86 = sub_22FCC8664();
  v87 = sub_22FCC8F34();
  v88 = os_log_type_enabled(v86, v87);
  v112 = v9;
  if (v88)
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = *(v1 + 16);

    _os_log_impl(&dword_22FA28000, v86, v87, "Safety Received results for prompts:%ld", v89, 0xCu);
    MEMORY[0x23190A000](v89, -1, -1);
  }

  else
  {
  }

  v90 = *(v0 + 608);
  v91 = *(v0 + 568);
  v92 = *(v0 + 552);
  v93 = *(v0 + 544);
  v99 = *(v0 + 616);
  v100 = *(v0 + 536);
  v94 = *(v0 + 72);
  v95 = *(v0 + 56);

  v95[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v95[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v96 = swift_allocObject();
  *v95 = v96;
  v96[2] = MEMORY[0x277D84F90];
  v96[3] = v91;
  v96[4] = v90;
  v96[5] = v99;
  v96[6] = v5;
  v96[7] = v112;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_22FCC83F4();
  (*(v93 + 8))(v92, v100);

  v97 = *(v0 + 8);

  return v97(v1);
}

uint64_t sub_22FB4E994()
{
  v114 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 928);
  v8 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v10 = v7;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 472);
  v16 = *(v0 + 400);
  v15 = *(v0 + 408);
  v17 = *(v0 + 392);
  if (v13)
  {
    v109 = v9;
    v18 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v113[0] = v105;
    *v18 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098]);
    v101 = v12;
    v19 = sub_22FCC96C4();
    v107 = v14;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = sub_22FA2F600(v19, v21, v113);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v7;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v102 = v25;
    _os_log_impl(&dword_22FA28000, v11, v101, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v18, 0x16u);
    sub_22FA2B420(v102, &unk_27DAD7B10);
    MEMORY[0x23190A000](v102, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x23190A000](v105, -1, -1);
    v26 = v18;
    v9 = v109;
    MEMORY[0x23190A000](v26, -1, -1);

    v22(v107, v17);
  }

  else
  {

    v27 = *(v16 + 8);
    v27(v15, v17);
    v27(v14, v17);
  }

  v28 = sub_22FA72A34(*(v0 + 488));
  v1 = *(v0 + 664);
  v5 = *(v0 + 632);
  v36 = *(v0 + 672);
  *(v0 + 648) = v9;
  *(v0 + 640) = v9;
  v37 = *(v0 + 568);
  if (v36 == v37)
  {
    v38 = 1;
    goto LABEL_10;
  }

  if (v36 >= v37)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v36;
  v43 = *(*(v0 + 496) + 48);
  *v41 = v36;
  sub_22FA4FAA4(v42, v41 + v43, &qword_27DAD8138);
  sub_22FA4F224(v41, v40, &qword_27DAD8840);
  v38 = 0;
  v36 = v39;
LABEL_10:
  *(v0 + 672) = v36;
  v44 = *(v0 + 528);
  v45 = *(v0 + 520);
  v46 = *(v0 + 496);
  v47 = *(v0 + 504);
  (*(v47 + 56))(v45, v38, 1, v46);
  sub_22FA4F224(v45, v44, &qword_27DAD8848);
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    v48 = *(v0 + 488);
    v49 = *(v0 + 472);
    v103 = *(v0 + 480);
    v50 = *(v0 + 392);
    v51 = *(v0 + 400);
    v52 = *(v0 + 384);
    v53 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v54 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v53, v52);
    v55 = *(v51 + 32);
    v55(v52 + v54, v53 + v54, v50);
    sub_22FB5570C(v52, v48);
    v55(v49, v52 + v54, v50);
    v56 = (v48 + *(v103 + 20));
    v57 = *v56;
    *(v0 + 680) = *v56;
    v58 = v56[1];
    *(v0 + 688) = v58;

    sub_22FCC8434();
    sub_22FCC8464();
    v60 = *(v0 + 464);
    v59 = *(v0 + 472);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v63 = *(v62 + 16);
    *(v0 + 696) = v63;
    *(v0 + 704) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v63(v60, v59, v61);

    v64 = sub_22FCC8664();
    v65 = sub_22FCC8F34();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 464);
    v69 = *(v0 + 392);
    v68 = *(v0 + 400);
    if (v66)
    {
      v70 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v113[0] = v110;
      *v70 = 136315395;
      *(v70 + 4) = sub_22FA2F600(v57, v58, v113);
      *(v70 + 12) = 2081;
      v71 = sub_22FCC7154();
      v73 = v72;
      v74 = *(v68 + 8);
      v74(v67, v69);
      v75 = sub_22FA2F600(v71, v73, v113);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_22FA28000, v64, v65, "[Safety] Validating prompt with id %s with annotation %{private}s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v110, -1, -1);
      MEMORY[0x23190A000](v70, -1, -1);
    }

    else
    {

      v74 = *(v68 + 8);
      v74(v67, v69);
    }

    *(v0 + 712) = v74;
    v104 = *(v0 + 336);
    v106 = *(v0 + 352);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 272);
    v79 = sub_22FCC7184();
    v108 = v80;
    v111 = v79;
    *(v0 + 720) = v80;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v81 = sub_22FCC7104();
    *(v0 + 728) = v81;

    v82 = sub_22FCC70C4();
    (*(*(v82 - 8) + 56))(v78, 1, 1, v82);
    v83 = *(v76 + 32);
    *(v0 + 736) = v83;
    *(v0 + 744) = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v83(v104, v106, v77);
    v84 = swift_task_alloc();
    *(v0 + 752) = v84;
    *v84 = v0;
    v84[1] = sub_22FB45E10;
    v28 = *(v0 + 304);
    v35 = *(v0 + 272);
    v85 = *(v0 + 72);
    v119 = *(v0 + 336);
    v120 = 0;
    v118 = v85;
    v117 = 1;
    v116 = 0;
    v30 = v108;
    v29 = v111;
    v31 = v81;
    v32 = 0;
    v33 = 0;
    v34 = 0;

    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_13:
  sub_22FCC8484();

  v86 = sub_22FCC8664();
  v87 = sub_22FCC8F34();
  v88 = os_log_type_enabled(v86, v87);
  v112 = v9;
  if (v88)
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = *(v1 + 16);

    _os_log_impl(&dword_22FA28000, v86, v87, "Safety Received results for prompts:%ld", v89, 0xCu);
    MEMORY[0x23190A000](v89, -1, -1);
  }

  else
  {
  }

  v90 = *(v0 + 608);
  v91 = *(v0 + 568);
  v92 = *(v0 + 552);
  v93 = *(v0 + 544);
  v99 = *(v0 + 616);
  v100 = *(v0 + 536);
  v94 = *(v0 + 72);
  v95 = *(v0 + 56);

  v95[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v95[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v96 = swift_allocObject();
  *v95 = v96;
  v96[2] = MEMORY[0x277D84F90];
  v96[3] = v91;
  v96[4] = v90;
  v96[5] = v99;
  v96[6] = v5;
  v96[7] = v112;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_22FCC83F4();
  (*(v93 + 8))(v92, v100);

  v97 = *(v0 + 8);

  return v97(v1);
}

uint64_t sub_22FB4F764(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for TemplatedPrompt() + 20));
  if (v2 == *v4 && v3 == v4[1])
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704() & 1;
  }
}

BOOL PromptSuggestionValidator.validateTimeRange(promptAnnotation:resultAssetUUIDs:eventRecorder:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = sub_22FCC6794();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v74 - v10;
  v11 = sub_22FCC84E4();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22FCC8414();
  if ((sub_22FCC7194() & 1) == 0)
  {
    v18 = 1;
    goto LABEL_47;
  }

  if (a2[2] < 2)
  {
    v15 = sub_22FCC8664();
    v16 = sub_22FCC8F34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22FA28000, v15, v16, "No assets to validate time range", v17, 2u);
      MEMORY[0x23190A000](v17, -1, -1);
    }

LABEL_46:
    v18 = 0;
    goto LABEL_47;
  }

  v74 = v7;
  v75 = v6;
  v77 = v14;
  v78 = v12;
  v79 = v11;
  v19 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyPhotoLibraryContext;
  v20 = sub_22FCC7E04();
  [v20 setFetchLimit_];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
  v21 = swift_allocObject();
  v80 = xmmword_22FCD1F90;
  *(v21 + 16) = xmmword_22FCD1F90;
  v22 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v23 = sub_22FCC8A54();
  v24 = [v22 initWithKey:v23 ascending:1];

  *(v21 + 32) = v24;
  v25 = sub_22FA3A77C(0, &qword_28147AEB0);
  v26 = sub_22FCC8C24();

  v27 = &selRef_setDateStyle_;
  v83 = v20;
  [v20 setSortDescriptors_];

  v28 = a2[2];
  if (v28)
  {
    v76 = v25;
    v81 = v19;
    v29 = sub_22FA86B08(v28, 0);
    v11 = sub_22FA88270(v87, (v29 + 32), v28, a2);
    v12 = v87[0];
    v30 = v87[1];
    v14 = v87[2];
    v31 = v87[3];
    v32 = v87[4];

    sub_22FA37D64();
    if (v11 != v28)
    {
      __break(1u);
      goto LABEL_41;
    }

    v27 = &selRef_setDateStyle_;
  }

  v33 = objc_opt_self();
  v34 = sub_22FCC8C24();

  v76 = v33;
  v81 = [v33 fetchAssetsWithUUIDs:v34 options:v83];

  v35 = sub_22FCC7E04();
  [v35 setFetchLimit_];
  v36 = swift_allocObject();
  *(v36 + 16) = v80;
  v37 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v38 = sub_22FCC8A54();
  v39 = [v37 initWithKey:v38 ascending:0];

  *(v36 + 32) = v39;
  v40 = sub_22FCC8C24();

  v41 = v27[133];
  v82 = v35;
  [v35 v41];

  v42 = a2[2];
  if (v42)
  {
    v43 = sub_22FA86B08(a2[2], 0);
    v44 = sub_22FA88270(v87, v43 + 4, v42, a2);

    sub_22FA37D64();
    if (v44 != v42)
    {
      __break(1u);
    }
  }

  v12 = v78;
  v11 = v79;
  v14 = v77;
  a2 = v81;
  v45 = sub_22FCC8C24();

  v32 = [v76 fetchAssetsWithUUIDs:v45 options:v82];

  if (!a2)
  {
    goto LABEL_43;
  }

  v30 = &selRef_chosenSuggestionLocalIdentifiersForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_atDate_usingStrategy_withRejectedPersonLocalIdentifiers_;
  v46 = [a2 fetchedObjects];
  if (!v46)
  {
    goto LABEL_43;
  }

  v31 = v46;
  v29 = sub_22FA3A77C(0, &qword_28147ADE8);
  v28 = sub_22FCC8C44();

  if (!(v28 >> 62))
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_41:
  if (!sub_22FCC92C4())
  {
    goto LABEL_42;
  }

LABEL_17:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x231908810](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v47 = *(v28 + 32);
  }

  v31 = v47;

  if (!v32)
  {
    goto LABEL_37;
  }

  v48 = [v32 v30[307]];
  if (!v48)
  {
    goto LABEL_37;
  }

  v49 = v48;
  v29 = sub_22FCC8C44();

  if (!(v29 >> 62))
  {
    v50 = v85;
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v73 = sub_22FCC92C4();
  v50 = v85;
  if (!v73)
  {
LABEL_51:

    goto LABEL_42;
  }

LABEL_24:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x231908810](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_54;
    }

    v51 = *(v29 + 32);
  }

  *&v80 = v51;

  v52 = [v31 creationDate];
  if (!v52)
  {

LABEL_37:
LABEL_43:
    v69 = sub_22FCC8664();
    v70 = sub_22FCC8F14();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_22FA28000, v69, v70, "Unable to determine date range for assets", v71, 2u);
      MEMORY[0x23190A000](v71, -1, -1);
    }

    goto LABEL_46;
  }

  v53 = v52;
  sub_22FCC6754();

  v54 = v80;
  v55 = [v80 creationDate];
  if (!v55)
  {
    (*(v74 + 8))(v50, v75);

    goto LABEL_37;
  }

  v56 = v55;
  sub_22FCC6754();

  sub_22FCC66D4();
  v3 = v57;
  if (qword_27DAD6EE0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v58 = *&qword_27DAD87F8;
  v18 = *&qword_27DAD87F8 <= v3;
  v59 = sub_22FCC8664();
  v60 = sub_22FCC8F04();
  v86 = v59;
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v79 = v31;
    v62 = v61;
    v63 = swift_slowAlloc();
    v87[0] = v63;
    *v62 = 136315394;
    if (v58 > v3)
    {
      v64 = 0x64656C696166;
    }

    else
    {
      v64 = 0x646573736170;
    }

    v65 = sub_22FA2F600(v64, 0xE600000000000000, v87);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2048;
    *(v62 + 14) = v3;
    v66 = v86;
    _os_log_impl(&dword_22FA28000, v86, v60, "Time range validation: %s with %f between assets", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x23190A000](v63, -1, -1);
    MEMORY[0x23190A000](v62, -1, -1);
  }

  else
  {
  }

  v67 = v75;
  v68 = *(v74 + 8);
  v68(v84, v75);
  v68(v85, v67);
LABEL_47:
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22FCC83F4();
  (*(v12 + 8))(v14, v11);
  return v18;
}

uint64_t sub_22FB50260(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = v4;
  *(v5 + 568) = a3;
  *(v5 + 176) = a1;
  *(v5 + 184) = a2;
  v6 = sub_22FCC6EF4();
  *(v5 + 208) = v6;
  *(v5 + 216) = *(v6 - 8);
  *(v5 + 224) = swift_task_alloc();
  v7 = sub_22FCC78E4();
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 - 8);
  *(v5 + 248) = swift_task_alloc();
  v8 = sub_22FCC7904();
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  v9 = sub_22FCC78A4();
  *(v5 + 280) = v9;
  *(v5 + 288) = *(v9 - 8);
  *(v5 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8860);
  *(v5 + 304) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8868);
  *(v5 + 312) = v10;
  *(v5 + 320) = *(v10 - 8);
  *(v5 + 328) = swift_task_alloc();
  v11 = sub_22FCC8494();
  *(v5 + 336) = v11;
  *(v5 + 344) = *(v11 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8870);
  *(v5 + 392) = v12;
  *(v5 + 400) = *(v12 - 8);
  *(v5 + 408) = swift_task_alloc();
  v13 = sub_22FCC78B4();
  *(v5 + 416) = v13;
  *(v5 + 424) = *(v13 - 8);
  *(v5 + 432) = swift_task_alloc();
  v14 = sub_22FCC7924();
  *(v5 + 440) = v14;
  *(v5 + 448) = *(v14 - 8);
  *(v5 + 456) = swift_task_alloc();
  v15 = sub_22FCC81A4();
  *(v5 + 464) = v15;
  *(v5 + 472) = *(v15 - 8);
  *(v5 + 480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB506E4, 0, 0);
}

uint64_t sub_22FB506E4()
{
  v46 = v0;
  v1 = v0[22];
  v45 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = (v0[22] + 32);
    v0 = &selRef_initWithWeights_bias_;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x231908810](v3, *(v43 + 176));
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v7 length] <= 0)
      {
      }

      else
      {
        v1 = &v45;
        sub_22FCC93F4();
        sub_22FCC9424();
        sub_22FCC9434();
        sub_22FCC9404();
      }

      ++v3;
      if (v9 == i)
      {
        v0 = v43;
        v10 = v45;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:
  v0[61] = v10;
  v11 = v10 < 0 || (v10 & 0x4000000000000000) != 0;
  if (v11)
  {
    v12 = sub_22FCC92C4();
  }

  else
  {
    v12 = *(v10 + 16);
  }

  v0[62] = v12;
  if (v12 <= 0)
  {

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FA28000, v17, v18, "No prompts to validate", v19, 2u);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    v20 = v0[42];
    v21 = v0[43];
    v22 = v0[23];

    v44 = sub_22FA4D238(MEMORY[0x277D84F90]);
    (*(v21 + 1))(v22, v20);

    v23 = v0[1];

    return (v23)(v44);
  }

  else
  {
    v0[63] = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (v11)
      {
        v16 = sub_22FCC92C4();
      }

      else
      {
        v16 = *(v10 + 16);
      }

      *(v15 + 4) = v16;

      _os_log_impl(&dword_22FA28000, v13, v14, "Validating %ld prompts", v15, 0xCu);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {
    }

    sub_22FCC8464();
    if ((v0[71] & 1) == 0)
    {
      sub_22FCC7D94();
    }

    v26 = v0[59];
    v25 = v0[60];
    v27 = v0[58];
    v29 = v0[53];
    v28 = v0[54];
    v30 = v0[52];
    v42 = v0[25];
    (*(v26 + 13))(v25, *MEMORY[0x277D3C670], v27);
    sub_22FCC81B4();
    (*(v26 + 1))(v25, v27);
    (*(v29 + 13))(v28, *MEMORY[0x277D3C340], v30);
    sub_22FCC7CE4();
    sub_22FA2D328((v0 + 2), (v0 + 7));

    sub_22FCC7914();
    __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher], *&v42[OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher + 24]);
    v0[64] = sub_22FCC8554();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80);
    v0[65] = v31;
    v0[15] = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v0[66] = OpaqueTypeConformance2;
    v0[16] = OpaqueTypeConformance2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    MEMORY[0x231907860](boxed_opaque_existential_1, v34, v35, v36, v37);
    sub_22FCC7EA4();
    __swift_destroy_boxed_opaque_existential_0((v0 + 12));
    sub_22FCC8454();
    sub_22FCC8454();
    sub_22FCC8464();
    sub_22FCC8D24();
    *(v0 + 140) = *MEMORY[0x277D3C338];
    v38 = MEMORY[0x277D84F98];
    *(v0 + 141) = *MEMORY[0x277D3C330];
    v0[68] = v38;
    v0[67] = 0;
    v39 = swift_task_alloc();
    v0[69] = v39;
    *v39 = v0;
    *(v39 + 1) = sub_22FB50F70;
    v40 = v0[38];
    v41 = v0[39];

    return MEMORY[0x2822003E8](v40, 0, 0, v41);
  }
}

uint64_t sub_22FB50F70()
{

  return MEMORY[0x2822009F8](sub_22FB5106C, 0, 0);
}

uint64_t sub_22FB5106C()
{
  v211 = v0;
  v1 = v0;
  v2 = v0[38];
  v3 = v0[36];
  v4 = v1[35];
  v207 = v1;
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v1[67];
    (*(v1[40] + 8))(v1[41], v1[39]);
    sub_22FCC8484();
    if (v5)
    {
      v7 = v1[56];
      v6 = v1[57];
      v8 = v1[55];
      v9 = v1[50];
      v10 = v1[51];
      v11 = v1[49];
      v12 = v1[47];
      v13 = v1[43];
      v14 = v1[42];
      v15 = v207[23];

      (*(v9 + 8))(v10, v11);
      (*(v7 + 8))(v6, v8);
      __swift_destroy_boxed_opaque_existential_0((v207 + 2));

      v16 = *(v13 + 8);
      v16(v12, v14);
      v17 = v14;
      v18 = v207;
      v16(v15, v17);
LABEL_14:

      v77 = v18[1];

      return v77();
    }

    sub_22FCC8464();
    v63 = v1[68];
    v85 = MEMORY[0x277D84F98];
    v208 = MEMORY[0x277D84F98];
    v209[0] = v63;
    v86 = -1 << *(v63 + 32);
    v87 = ~v86;
    v88 = *(v63 + 64);
    v89 = -v86;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    else
    {
      v90 = -1;
    }

    v209[1] = v63 + 64;
    v209[2] = v87;
    v209[3] = 0;
    v209[4] = v90 & v88;
    v209[5] = 0;

    sub_22FAB49FC();
    if (v92)
    {
      v94 = v91;
      v95 = v92;
      v96 = v93;
      v190 = (v1[43] + 32);
      v196 = (v1[27] + 8);
      v188 = *MEMORY[0x277D3BF78];
      v194 = *MEMORY[0x277D3BF70];
      v192 = (v1 + 65);
      *(&v97 + 1) = 2;
      *&v97 = 136380931;
      v187 = v97;
      while (1)
      {
        sub_22FCC8434();
        sub_22FCC8464();
        v198 = v94;

        sub_22FAA99B0(v98);

        sub_22FCC6F24();

        v99 = *(v96 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8858);
        v100 = sub_22FCC6F04();
        v101 = *(v100 - 8);
        v102 = *(v101 + 72);
        v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        if (v99 >> 3 >= 0x271)
        {
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_22FCD17F0;
          v112 = v111 + v103;
          v113 = *(v101 + 104);
          v113(v111 + v103, v188, v100);
          v113(v112 + v102, v194, v100);
          v105 = sub_22FCC8664();
          v114 = sub_22FCC8F34();
          if (!os_log_type_enabled(v105, v114))
          {
LABEL_32:
            v1 = v207;
            goto LABEL_33;
          }

          v107 = swift_slowAlloc();
          *v107 = 134217984;
          *(v107 + 4) = 5000;
          v108 = v114;
          v109 = v105;
          v110 = "More than %ld retrieved assets, switching to extended safe mode";
        }

        else
        {
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_22FCD1800;
          (*(v101 + 104))(v104 + v103, v194, v100);
          v105 = sub_22FCC8664();
          v106 = sub_22FCC8F34();
          if (!os_log_type_enabled(v105, v106))
          {
            goto LABEL_32;
          }

          v107 = swift_slowAlloc();
          *v107 = 134217984;
          *(v107 + 4) = 5000;
          v108 = v106;
          v109 = v105;
          v110 = "Less than %ld retrieved assets, good with safe mode";
        }

        _os_log_impl(&dword_22FA28000, v109, v108, v110, v107, 0xCu);
        v1 = v207;
        MEMORY[0x23190A000](v107, -1, -1);
LABEL_33:
        v200 = *v192;

        *(v1 + 10) = v200;
        __swift_allocate_boxed_opaque_existential_1(v1 + 17);
        MEMORY[0x231907860]();
        sub_22FCC6F14();
        v115 = v1[45];
        v116 = v1[44];
        v117 = v1[42];

        __swift_destroy_boxed_opaque_existential_0((v1 + 17));
        sub_22FCC8454();
        (*v190)(v116, v115, v117);
        v118 = sub_22FCC7D44();

        v119 = sub_22FCC8664();
        v120 = sub_22FCC8F34();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v210[0] = v122;
          *v121 = v187;
          v123 = v198;
          *(v121 + 4) = sub_22FA2F600(v198, v95, v210);
          *(v121 + 12) = 2048;
          *(v121 + 14) = *(v118 + 16);

          _os_log_impl(&dword_22FA28000, v119, v120, "Validated prompt %{private}s. Assets processed:%ld", v121, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x23190A000](v122, -1, -1);
          MEMORY[0x23190A000](v121, -1, -1);
        }

        else
        {

          v123 = v198;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v210[0] = v208;
        sub_22FB25758(v118, v123, v95, isUniquelyReferenced_nonNull_native);

        v205 = v210[0];
        v208 = v210[0];
        sub_22FCC8484();
        (*v196)(v1[28], v1[26]);
        sub_22FAB49FC();
        v94 = v125;
        v95 = v126;
        v96 = v127;
        if (!v126)
        {
          goto LABEL_43;
        }
      }
    }

    v205 = v85;
LABEL_43:
    sub_22FA37D64();
    sub_22FCC8484();
    v134 = v1[61];
    v133 = v1[62];
    v209[0] = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v133, 0);
    v135 = 0;
    v136 = v209[0];
    v137 = v134 & 0xC000000000000001;
    v202 = v134 + 32;
    do
    {
      if (v137)
      {
        v138 = MEMORY[0x231908810](v135, v207[61]);
      }

      else
      {
        v138 = *(v202 + 8 * v135);
      }

      v139 = v138;
      v140 = [v138 string];
      v141 = sub_22FCC8A84();
      v143 = v142;

      v209[0] = v136;
      v145 = *(v136 + 16);
      v144 = *(v136 + 24);
      v146 = v145 + 1;
      if (v145 >= v144 >> 1)
      {
        v129 = sub_22FA86EA8((v144 > 1), v145 + 1, 1);
        v136 = v209[0];
      }

      v147 = v207[62];
      ++v135;
      *(v136 + 16) = v146;
      v148 = v136 + 16 * v145;
      *(v148 + 32) = v141;
      *(v148 + 40) = v143;
    }

    while (v135 != v147);
    v149 = 0;
    v150 = v136 + 40;
    v151 = MEMORY[0x277D84F90];
    do
    {
      v203 = v151;
      v152 = (v150 + 16 * v149);
      v153 = v149;
      while (1)
      {
        if (v153 > v145)
        {
          __break(1u);
LABEL_81:
          __break(1u);
          return MEMORY[0x2822003E8](v129, v131, v132, v130);
        }

        v149 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          goto LABEL_81;
        }

        v155 = *(v152 - 1);
        v154 = *v152;
        v156 = *(v205 + 16);

        if (!v156)
        {
          break;
        }

        sub_22FA2DB54(v155, v154);
        if ((v157 & 1) == 0)
        {
          break;
        }

        ++v153;
        v152 += 2;
        if (v149 == v146)
        {
          v151 = v203;
          goto LABEL_63;
        }
      }

      v151 = v203;
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v209[0] = v203;
      if ((v129 & 1) == 0)
      {
        v129 = sub_22FA86EA8(0, *(v203 + 16) + 1, 1);
        v151 = v209[0];
      }

      v159 = *(v151 + 16);
      v158 = *(v151 + 24);
      if (v159 >= v158 >> 1)
      {
        v129 = sub_22FA86EA8((v158 > 1), v159 + 1, 1);
        v151 = v209[0];
      }

      *(v151 + 16) = v159 + 1;
      v160 = v151 + 16 * v159;
      *(v160 + 32) = v155;
      *(v160 + 40) = v154;
      v150 = v136 + 40;
    }

    while (v149 != v146);
LABEL_63:

    if (*(v151 + 16))
    {
      v161 = v207;
      v162 = sub_22FCC8664();
      v163 = sub_22FCC8F34();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v209[0] = v165;
        *v164 = 136380675;
        v166 = MEMORY[0x2319080B0](v151, MEMORY[0x277D837D0]);
        v168 = sub_22FA2F600(v166, v167, v209);

        *(v164 + 4) = v168;
        _os_log_impl(&dword_22FA28000, v162, v163, "No validation results for prompts: %{private}s", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v165);
        MEMORY[0x23190A000](v165, -1, -1);
        MEMORY[0x23190A000](v164, -1, -1);
      }

      sub_22FB3DB04(v151, &v208);
    }

    else
    {
      v161 = v207;
    }

    v169 = v161[62];

    v170 = v208;
    if (v169 != *(v208 + 16))
    {

      v171 = sub_22FCC8664();
      v172 = sub_22FCC8F14();
      v173 = os_log_type_enabled(v171, v172);
      v174 = v161[61];
      if (v173)
      {
        v175 = swift_slowAlloc();
        *v175 = 134218240;
        if (v174 < 0 || (v174 & 0x4000000000000000) != 0)
        {
          v176 = sub_22FCC92C4();
        }

        else
        {
          v176 = *(v161[61] + 16);
        }

        *(v175 + 4) = v176;

        *(v175 + 12) = 2048;
        *(v175 + 14) = *(v170 + 16);
        _os_log_impl(&dword_22FA28000, v171, v172, "Wrong number of search results for queries. Expected %ld, got %ld", v175, 0x16u);
        MEMORY[0x23190A000](v175, -1, -1);
      }

      else
      {
      }
    }

    v177 = v161[56];
    v178 = v161[50];
    sub_22FCC8484();
    v179 = (v178 + 8);
    v180 = v161[61];
    v181 = v161[57];
    v182 = v161[55];
    v183 = v161[51];
    v184 = v161;
    v185 = v161[49];
    v206 = sub_22FB3D840(MEMORY[0x277D84F98], v180, &v208);

    (*v179)(v183, v185);
    (*(v177 + 8))(v181, v182);
    __swift_destroy_boxed_opaque_existential_0((v184 + 2));

    v186 = v184[1];

    return v186(v206);
  }

  else
  {
    v19 = *(v1 + 140);
    v20 = v1[37];
    (*(v3 + 32))(v20, v2, v4);
    v21 = (*(v3 + 88))(v20, v4);
    if (v21 == v19)
    {
      v22 = v1[68];
      v23 = v1[36];
      v24 = v1[37];
      v26 = v1[34];
      v25 = v1[35];
      v27 = v1;
      v28 = v1[33];
      v30 = v27[31];
      v29 = v27[32];
      v31 = v27[29];
      v32 = v27[30];
      (*(v23 + 96))(v24, v25);
      (*(v28 + 32))(v26, v24, v29);
      v33 = sub_22FCC78C4();
      sub_22FCC78F4();
      v34 = sub_22FCC78D4();
      (*(v32 + 8))(v30, v31);
      v35 = [v34 string];
      v36 = sub_22FCC8A84();
      v38 = v37;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v209[0] = v22;
      sub_22FB25798(v33, v36, v38, v39);

      v40 = v34;
      v41 = sub_22FCC8664();
      v42 = sub_22FCC8F34();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138478083;
        *(v43 + 4) = v40;
        *v44 = v40;
        *(v43 + 12) = 2048;
        v45 = *(v33 + 16);
        v46 = v40;

        *(v43 + 14) = v45;

        _os_log_impl(&dword_22FA28000, v41, v42, "Finished searching for prompt %{private}@. Assets received: %ld", v43, 0x16u);
        sub_22FA2B420(v44, &unk_27DAD7B10);
        MEMORY[0x23190A000](v44, -1, -1);
        MEMORY[0x23190A000](v43, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v1 = v207;
      v64 = v207[67];
      sub_22FCC8474();
      if (v64)
      {
        v197 = v207[57];
        v65 = v207[56];
        v193 = v207[51];
        v195 = v207[55];
        v66 = v207[50];
        v204 = v207[48];
        v199 = v207[47];
        v67 = v207[42];
        v68 = v207[43];
        v189 = v207[41];
        v191 = v207[49];
        v69 = v40;
        v71 = v207[39];
        v70 = v207[40];
        v72 = v207[34];
        v73 = v207[33];
        v74 = v207[32];
        v201 = v207[23];

        v75 = v72;
        v18 = v207;
        (*(v73 + 8))(v75, v74);
        (*(v70 + 8))(v189, v71);
        (*(v66 + 8))(v193, v191);
        (*(v65 + 8))(v197, v195);
        __swift_destroy_boxed_opaque_existential_0((v207 + 2));

        v76 = *(v68 + 8);
        v76(v199, v67);
        v76(v204, v67);
        v76(v201, v67);
        goto LABEL_14;
      }

      (*(v207[33] + 8))(v207[34], v207[32]);

      v207[68] = v22;
      v207[67] = 0;
    }

    else if (v21 == *(v1 + 141))
    {
      v47 = v1[37];
      (*(v1[36] + 96))(v47, v1[35]);
      v48 = *(v47 + 8);
      v49 = *v47;
      v50 = v48;
      v51 = sub_22FCC8664();
      v52 = sub_22FCC8F14();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v209[0] = v55;
        *v53 = 136643075;
        v56 = [v49 string];
        v57 = sub_22FCC8A84();
        v59 = v58;

        v60 = sub_22FA2F600(v57, v59, v209);

        *(v53 + 4) = v60;
        v1 = v207;
        *(v53 + 12) = 2112;
        v61 = v48;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 14) = v62;
        *v54 = v62;
        _os_log_impl(&dword_22FA28000, v51, v52, "Error when validating suggestion with query '%{sensitive}s': %@", v53, 0x16u);
        sub_22FA2B420(v54, &unk_27DAD7B10);
        MEMORY[0x23190A000](v54, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23190A000](v55, -1, -1);
        MEMORY[0x23190A000](v53, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v79 = sub_22FCC8664();
      v80 = sub_22FCC8F14();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_22FA28000, v79, v80, "Error when validating suggestion: UNKNOWN RESULT", v81, 2u);
        MEMORY[0x23190A000](v81, -1, -1);
      }

      v83 = v1[36];
      v82 = v1[37];
      v84 = v1[35];

      (*(v83 + 8))(v82, v84);
    }

    v128 = swift_task_alloc();
    v1[69] = v128;
    *v128 = v1;
    v128[1] = sub_22FB50F70;
    v129 = v1[38];
    v130 = v1[39];
    v131 = 0;
    v132 = 0;

    return MEMORY[0x2822003E8](v129, v131, v132, v130);
  }
}