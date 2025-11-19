uint64_t sub_2262CEBBC()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2262CED28, v5, 0);
}

uint64_t sub_2262CED28()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  sub_22634F81C();
  (*(v2 + 8))(v1, v3);
  v7 = sub_22634FC6C();
  (*(v5 + 8))(v4, v6);
  if (*(v7 + 16))
  {
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    (*(v9 + 16))(v8, v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v10);

    sub_22634FC3C();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
  }

  v11 = v0[24];
  v12 = v0[25];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[11];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[2];
  sub_22634F61C();

  v21 = v0[1];

  return v21();
}

uint64_t sub_2262CEEE4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(sub_22634FC7C() - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = sub_22634EECC();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = type metadata accessor for Analytics(0);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = sub_22634F7EC();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v13 = sub_22635004C();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CF0D4, v2, 0);
}

uint64_t sub_2262CF0D4()
{
  v87 = v0;
  v1 = v0[11] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[25];
    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[10];
    v7 = v0[11];
    sub_22634FFEC();
    v8 = *(v5 + 16);
    v8(v3, v6, v4);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[25];
    v13 = v0[22];
    v14 = v0[23];
    v15 = v0[21];
    if (v11)
    {
      v74 = v0[20];
      v76 = v8;
      v84 = v0[25];
      v17 = v0[18];
      v16 = v0[19];
      v80 = v10;
      v18 = v0[11];
      v82 = v0[22];
      v19 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v86 = v78;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, &v86);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356440, &v86);
      *(v19 + 22) = 2080;
      v76(v74, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, &v86);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v80, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v78, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v14 + 8))(v84, v82);
    }

    else
    {
      v43 = v0[18];
      v44 = v0[19];

      (*(v44 + 8))(v15, v43);
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    v28 = v0[24];
    v29 = v0[11];
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[23];
    v33 = v0[24];
    v35 = v0[22];
    if (v32)
    {
      v36 = v0[11];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v86 = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, &v86);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356440, &v86);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v79 = v0[25];
  v81 = v0[24];
  v83 = v0[21];
  v85 = v0[20];
  v46 = v0[16];
  v45 = v0[17];
  v48 = v0[14];
  v47 = v0[15];
  v49 = v0[13];
  v50 = v0[10];
  v51 = v0[11];
  v75 = v0[12];
  v77 = v0[9];
  v52 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v53 = v46[5];
  v54 = sub_22634EEFC();
  (*(*(v54 - 8) + 16))(&v45[v53], v51 + v52, v54);
  v55 = &v45[v46[13]];
  sub_22634F7DC();
  v56 = &v45[v46[6]];
  *v56 = 0;
  v56[8] = 1;
  v57 = &v45[v46[7]];
  v57[2] = 0u;
  v57[3] = 0u;
  *v57 = 0u;
  v57[1] = 0u;
  v73 = v46[8];
  v45[v73] = 2;
  v58 = &v45[v46[9]];
  *v58 = 0;
  v58[1] = 0;
  v45[v46[10]] = 3;
  v45[v46[11]] = 2;
  v59 = v46[12];
  v60 = sub_22634F47C();
  (*(*(v60 - 8) + 56))(&v45[v59], 1, 1, v60);
  *&v45[v46[14]] = MEMORY[0x277D84F98];
  *&v45[v46[15]] = MEMORY[0x277D84F90];
  v45[v46[16]] = 0;
  *v45 = 3;
  sub_22634EEAC();
  sub_2262EB938(5, v47);
  v61 = *(v48 + 8);
  v61(v47, v49);
  v62 = *(v51 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  type metadata accessor for VisualBundleRanker();
  inited = swift_initStackObject();
  __asm { FMOV            V0.2D, #0.5 }

  *(inited + 40) = _Q0;
  *(inited + 16) = _Q0;
  *(inited + 32) = v62;

  v69 = sub_22634F7CC();
  sub_2262E6EBC(v69);

  v45[v73] = 0;
  sub_22634EEAC();
  sub_2262EBFE0(5, v47);
  v61(v47, v49);
  sub_2262EC7A0();
  sub_22634FC5C();
  sub_22634F82C();
  swift_setDeallocating();
  v70 = *(inited + 32);

  sub_2262D6068(v45, type metadata accessor for Analytics);

  v71 = v0[1];

  return v71();
}

uint64_t sub_2262CF79C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2262CF7E0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_22634F80C();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_22635004C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CF918, v2, 0);
}

uint64_t sub_2262CF918()
{
  v66 = v0;
  v1 = v0[8] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[16];
    v3 = v0[12];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    sub_22634FFEC();
    v8 = *(v5 + 16);
    v8(v3, v6, v4);

    v9 = sub_22635003C();
    v10 = sub_22635071C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    if (v11)
    {
      v59 = v0[11];
      v60 = v8;
      v64 = v0[16];
      v17 = v0[9];
      v16 = v0[10];
      v62 = v10;
      v18 = v0[8];
      v63 = v0[13];
      v19 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v19 = 136315650;
      v20 = *v18;
      v21 = sub_226350D6C();
      v23 = sub_226345004(v21, v22, &v65);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356420, &v65);
      *(v19 + 22) = 2080;
      v60(v59, v15, v17);
      v24 = sub_2263504CC();
      v26 = v25;
      (*(v16 + 8))(v15, v17);
      v27 = sub_226345004(v24, v26, &v65);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_2262B6000, v9, v62, "%s.%s request = %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v61, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v14 + 8))(v64, v63);
    }

    else
    {
      v43 = v0[9];
      v44 = v0[10];

      (*(v44 + 8))(v15, v43);
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    v28 = v0[15];
    v29 = v0[8];
    sub_22634FFEC();

    v30 = sub_22635003C();
    v31 = sub_22635072C();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[13];
    if (v32)
    {
      v36 = v0[8];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v65 = v38;
      *v37 = 136315394;
      v39 = *v36;
      v40 = sub_226350D6C();
      v42 = sub_226345004(v40, v41, &v65);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356420, &v65);
      _os_log_impl(&dword_2262B6000, v30, v31, "%s.%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
  }

  v45 = v0[7];
  v46 = *(v0[8] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  v47 = sub_22634F7FC();
  if (v48)
  {
    v49 = v47;
    v50 = v48;

    sub_22630474C(v46, v46, v49, v50, v51);
  }

  else
  {
    sub_226304CC0(v46);
  }

  v52 = v0[15];
  v53 = v0[16];
  v55 = v0[11];
  v54 = v0[12];
  v56 = v0[6];
  sub_22634F84C();

  v57 = v0[1];

  return v57();
}

uint64_t sub_2262CFE60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634F93C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_22635004C();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CFF98, v2, 0);
}

uint64_t sub_2262CFF98()
{
  v58 = v0;
  v1 = v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[12];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    sub_22634FFEC();
    v56 = *(v5 + 16);
    v56(v3, v6, v4);

    v8 = sub_22635003C();
    v9 = sub_22635071C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[12];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[8];
    if (v10)
    {
      v51 = v0[7];
      v55 = v0[12];
      v16 = v0[5];
      v15 = v0[6];
      v53 = v9;
      v17 = v0[4];
      v54 = v0[9];
      v18 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v57 = v52;
      *v18 = 136315650;
      v19 = *v17;
      v20 = sub_226350D6C();
      v22 = sub_226345004(v20, v21, &v57);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_226345004(0xD000000000000026, 0x80000002263563D0, &v57);
      *(v18 + 22) = 2080;
      v56(v51, v14, v16);
      v23 = sub_2263504CC();
      v25 = v24;
      (*(v15 + 8))(v14, v16);
      v26 = sub_226345004(v23, v25, &v57);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_2262B6000, v8, v53, "%s.%s request = %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v52, -1, -1);
      MEMORY[0x22AA7D570](v18, -1, -1);

      (*(v13 + 8))(v55, v54);
    }

    else
    {
      v42 = v0[5];
      v43 = v0[6];

      (*(v43 + 8))(v14, v42);
      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    v27 = v0[11];
    v28 = v0[4];
    sub_22634FFEC();

    v29 = sub_22635003C();
    v30 = sub_22635072C();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[10];
    v32 = v0[11];
    v34 = v0[9];
    if (v31)
    {
      v35 = v0[4];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315394;
      v38 = *v35;
      v39 = sub_226350D6C();
      v41 = sub_226345004(v39, v40, &v57);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_226345004(0xD000000000000026, 0x80000002263563D0, &v57);
      _os_log_impl(&dword_2262B6000, v29, v30, "%s.%s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v37, -1, -1);
      MEMORY[0x22AA7D570](v36, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
  }

  v45 = v0[11];
  v44 = v0[12];
  v47 = v0[7];
  v46 = v0[8];
  v48 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream), *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream + 24));
  EngagementStream.clearAllData()();
  sub_22634F84C();

  v49 = v0[1];

  return v49();
}

uint64_t sub_2262D0460(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22634F88C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_22635004C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262D0598, v2, 0);
}

uint64_t sub_2262D0598()
{
  v72 = v0;
  v1 = v0[7] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v2 = v0[15];
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    sub_22634FFEC();
    v70 = *(v5 + 16);
    v70(v3, v6, v4);

    v8 = sub_22635003C();
    v9 = sub_22635071C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    if (v10)
    {
      v65 = v0[10];
      v69 = v0[15];
      v16 = v0[8];
      v15 = v0[9];
      v67 = v9;
      v17 = v0[7];
      v68 = v0[12];
      v18 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71 = v66;
      *v18 = 136315650;
      v19 = *v17;
      v20 = sub_226350D6C();
      v22 = sub_226345004(v20, v21, &v71);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_226345004(0xD000000000000018, 0x8000000226356390, &v71);
      *(v18 + 22) = 2080;
      v70(v65, v14, v16);
      v23 = sub_2263504CC();
      v25 = v24;
      (*(v15 + 8))(v14, v16);
      v26 = sub_226345004(v23, v25, &v71);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_2262B6000, v8, v67, "%s.%s request = %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v66, -1, -1);
      MEMORY[0x22AA7D570](v18, -1, -1);

      (*(v13 + 8))(v69, v68);
    }

    else
    {
      v42 = v0[8];
      v43 = v0[9];

      (*(v43 + 8))(v14, v42);
      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    v27 = v0[14];
    v28 = v0[7];
    sub_22634FFEC();

    v29 = sub_22635003C();
    v30 = sub_22635072C();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[13];
    v32 = v0[14];
    v34 = v0[12];
    if (v31)
    {
      v35 = v0[7];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v71 = v37;
      *v36 = 136315394;
      v38 = *v35;
      v39 = sub_226350D6C();
      v41 = sub_226345004(v39, v40, &v71);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_226345004(0xD000000000000018, 0x8000000226356390, &v71);
      _os_log_impl(&dword_2262B6000, v29, v30, "%s.%s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v37, -1, -1);
      MEMORY[0x22AA7D570](v36, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
  }

  v44 = v0[6];
  v45 = sub_22634F86C();
  if (v45)
  {
    v46 = v45;
    v47 = v0[7];
    v48 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap;
    swift_beginAccess();
    v49 = *(v47 + v48);
    *(v47 + v48) = v46;
  }

  v50 = v0[6];
  v51 = sub_22634F87C();
  if ((v52 & 1) == 0)
  {
    v53 = v0[7] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting;
    *v53 = v51;
    *(v53 + 8) = 0;
  }

  v54 = v0[6];
  v55 = sub_22634F85C();
  if (v55)
  {
    v56 = v0[7];
    v57 = *(v56 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting);
    *(v56 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting) = v55;
  }

  v58 = v0[14];
  v59 = v0[15];
  v61 = v0[10];
  v60 = v0[11];
  v62 = v0[5];
  sub_22634F84C();

  v63 = v0[1];

  return v63();
}

uint64_t sub_2262D0AC4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22634F91C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_22635004C();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262D0BF0, v2, 0);
}

uint64_t sub_2262D0BF0()
{
  v55 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  sub_22634FFEC();
  v7 = *(v4 + 16);
  v7(v2, v5, v3);

  v8 = sub_22635003C();
  v9 = sub_22635071C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[13];
  v13 = v0[14];
  if (v10)
  {
    v46 = v0[12];
    v47 = v7;
    v51 = v0[16];
    v16 = v0[10];
    v15 = v0[11];
    v49 = v9;
    v17 = v0[9];
    v50 = v0[14];
    v18 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v18 = 136315650;
    v19 = *v17;
    v20 = sub_226350D6C();
    v22 = sub_226345004(v20, v21, &v53);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_226345004(0xD000000000000021, 0x8000000226356340, &v53);
    *(v18 + 22) = 2080;
    v47(v46, v14, v16);
    v23 = sub_2263504CC();
    v25 = v24;
    (*(v15 + 8))(v14, v16);
    v26 = sub_226345004(v23, v25, &v53);

    *(v18 + 24) = v26;
    _os_log_impl(&dword_2262B6000, v8, v49, "%s.%s request = %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v48, -1, -1);
    MEMORY[0x22AA7D570](v18, -1, -1);

    (*(v12 + 8))(v51, v50);
  }

  else
  {
    v27 = v0[10];
    v28 = v0[11];

    (*(v28 + 8))(v14, v27);
    (*(v12 + 8))(v11, v13);
  }

  v29 = v0[8];
  v30 = *(v0[9] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  v31 = sub_22634F8EC();
  v32 = sub_22634F90C();
  v33 = sub_22634F8BC();
  v34 = sub_22634F8CC();
  v35 = sub_22634F8DC();
  v36 = sub_22634F8FC();
  v37 = sub_22634F8AC();
  sub_2262FF4F0(v31, v32, v33, v34, v35, v36, v37);
  v38 = v0[8];
  v52 = v0[7];

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_22635096C();

  v53 = 0xD00000000000001FLL;
  v54 = 0x8000000226356320;
  v39 = *(sub_22634F8EC() + 16);

  v0[6] = v39;
  v40 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v40);

  MEMORY[0x22AA7C5B0](0x73656972746E6520, 0xE90000000000002ELL);
  sub_22634F84C();
  v41 = v0[16];
  v42 = v0[12];
  v43 = v0[13];

  v44 = v0[1];

  return v44();
}

uint64_t sub_2262D10DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  sub_22635096C();
  v33 = v24;
  MEMORY[0x22AA7C5B0](0xA3E5045533CLL, 0xE600000000000000);
  v4 = sub_2262DBE60();
  MEMORY[0x22AA7C5B0](v4);

  MEMORY[0x22AA7C5B0](0x203A65726F63530ALL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930C8, &unk_226351F90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226351C90;
  v6 = type metadata accessor for RankedVisualAction();
  v7 = *(a1 + *(v6 + 24));
  v8 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  v9 = 0xE400000000000000;
  v10 = sub_22635049C();
  MEMORY[0x22AA7C5B0](v10);

  MEMORY[0x22AA7C5B0](0xD000000000000015, 0x80000002263565D0);
  v11 = sub_2262D699C();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x22AA7C5B0](v13, v14);

  MEMORY[0x22AA7C5B0](0x657275746165460ALL, 0xEB00000000203A73);
  v15 = (a1 + *(v6 + 20));
  v16 = v15[7];
  v30 = v15[6];
  v31 = v16;
  v32 = *(v15 + 128);
  v17 = v15[3];
  v26 = v15[2];
  v27 = v17;
  v18 = v15[5];
  v28 = v15[4];
  v29 = v18;
  v19 = v15[1];
  v24 = *v15;
  v25 = v19;
  if (sub_2262D66D8(&v24) == 1)
  {
    v20 = 1701736270;
  }

  else
  {
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v20 = sub_2262D91E8();
    v9 = v21;
  }

  MEMORY[0x22AA7C5B0](v20, v9);

  v23 = *(&v33 + 1);
  *a2 = v33;
  a2[1] = v23;
  return result;
}

id sub_2262D1334(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634EDDC();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_22634EE0C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_22634EDAC();

    swift_willThrow();
    v9 = sub_22634EE0C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_2262D148C(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v4 = v3;
  v56 = a2;
  v57 = a3;
  v60[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22634F04C();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634EE0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = *(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v17 + 4);
  if (!*(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v49 = v8;
    v50 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v48 = v5;
    v52 = v14;
    v53 = v17;
    v54 = v10;
    v20 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v21 = v59;
    v22 = sub_22634F03C();
    if (v21)
    {
      v51 = *(v54 + 8);
      v51(v16, v9);
      v24 = sub_22634F02C();
      v26 = v25;
    }

    else
    {
      v24 = v22;
      v26 = v23;
      v51 = *(v54 + 8);
      v51(v16, v9);
    }

    v59 = v20;
    if (v24 == sub_22634F02C() && v26 == v27)
    {
    }

    else
    {
      v28 = sub_226350C4C();

      if ((v28 & 1) == 0)
      {
        v45 = sub_22630606C();
        v43 = v58;
        v42 = v45;
        v17 = v53;
LABEL_14:
        v44 = *(v4 + v50);
        *(v4 + v50) = v42;
        swift_retain_n();

        v43(v42);

        goto LABEL_17;
      }
    }

    v29 = v59;
    v30 = v52;
    sub_22634F00C();
    v31 = objc_opt_self();
    v32 = [v31 defaultManager];
    sub_22634EDFC();
    v33 = sub_22635045C();

    v34 = [v32 fileExistsAtPath_];

    v17 = v53;
    if ((v34 & 1) == 0)
    {
      v35 = [v31 defaultManager];
      v36 = sub_22634EDDC();
      v60[0] = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v60];

      if ((v37 & 1) == 0)
      {
        v46 = v60[0];
        sub_22634EDAC();

        swift_willThrow();
        v51(v30, v9);
        goto LABEL_17;
      }

      v38 = v60[0];
      v29 = v59;
    }

    (*(v55 + 16))(v49, &v29[v4], v48);
    v39 = sub_22634EFFC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_22634EF9C();
    v51(v30, v9);
    v43 = v58;
    goto LABEL_14;
  }

  v18 = *(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v58(v19);

LABEL_17:
  os_unfair_lock_unlock(v17 + 4);
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void (*sub_2262D1A14(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_22634EEFC();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_2262D1E98(v7);
  v7[12] = sub_2262D1BE8(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_2262D1B50;
}

void sub_2262D1B50(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2262D1BE8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_22634EEFC();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_2263394D8(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_22633A6C4();
      v15 = v23;
      goto LABEL_14;
    }

    sub_226337124(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_2263394D8(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_2262D1D98;
}

void sub_2262D1D98(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_2262E3160(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_2262E2768(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_2262D1E98(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2262D1EC0;
}

unint64_t sub_2262D1ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for RankedVisualAction();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_2262D67D8(a4, &qword_27D793090, &qword_226351F48);
  }

  if (v17 < 1)
  {
    return sub_2262D67D8(a4, &qword_27D793090, &qword_226351F48);
  }

  result = sub_2262D5EB8(a4, v15, type metadata accessor for RankedVisualAction);
  if (v12 >= v17)
  {
    return sub_2262D67D8(a4, &qword_27D793090, &qword_226351F48);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2262D2058(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2262DF55C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2262D210C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2262D210C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_226350C0C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
        v6 = sub_22635059C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2262D25EC(v8, v9, a1, v4);
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
    return sub_2262D2250(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2262D2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v43 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v43 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v43 - v17;
  result = MEMORY[0x28223BE20](v16);
  v57 = &v43 - v20;
  v45 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v50 = -v22;
    v51 = v21;
    v24 = a1 - a3;
    v44 = v22;
    v25 = v21 + v22 * a3;
    v26 = &qword_27D7930D0;
    v56 = v8;
LABEL_5:
    v48 = v23;
    v49 = a3;
    v46 = v25;
    v47 = v24;
    v55 = v24;
    while (1)
    {
      v27 = v57;
      sub_2262D66FC(v25, v57, v26, &unk_226352510);
      v28 = v58;
      sub_2262D66FC(v23, v58, v26, &unk_226352510);
      v29 = v53;
      sub_2262D66FC(v27, v53, v26, &unk_226352510);
      v30 = v29 + *(v8 + 48);
      v31 = type metadata accessor for ActionContext();
      v32 = *(v30 + *(v31 + 28));
      sub_2262D6068(v30, type metadata accessor for ActionContext);
      v33 = v28;
      v34 = v26;
      v35 = v54;
      sub_2262D66FC(v33, v54, v34, &unk_226352510);
      v36 = v35 + *(v56 + 48);
      v37 = *(v36 + *(v31 + 28));
      sub_2262D6068(v36, type metadata accessor for ActionContext);
      v38 = sub_22634EEFC();
      v39 = *(*(v38 - 8) + 8);
      v40 = v35;
      v26 = v34;
      v39(v40, v38);
      v39(v29, v38);
      v8 = v56;
      sub_2262D67D8(v58, v34, &unk_226352510);
      result = sub_2262D67D8(v57, v34, &unk_226352510);
      if (v32 >= v37)
      {
LABEL_4:
        a3 = v49 + 1;
        v23 = v48 + v44;
        v24 = v47 - 1;
        v25 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v41 = v52;
      sub_2262D6764(v25, v52, v34, &unk_226352510);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2262D6764(v41, v23, v34, &unk_226352510);
      v23 += v50;
      v25 += v50;
      if (__CFADD__(v55++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2262D25EC(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v149 = a1;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v157 = *(v165 - 8);
  v9 = *(v157 + 64);
  v10 = MEMORY[0x28223BE20](v165);
  v12 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v161 = &v145 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v145 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v163 = &v145 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v162 = &v145 - v20;
  result = MEMORY[0x28223BE20](v19);
  v167 = &v145 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_97:
    v26 = *v149;
    if (!*v149)
    {
      goto LABEL_136;
    }

    v4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_100:
      v168 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v141 = *(result + 16 * v4);
          v142 = result;
          v143 = *(result + 16 * (v4 - 1) + 40);
          sub_2262D3268(*a3 + *(v157 + 72) * v141, *a3 + *(v157 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v157 + 72) * v143, v26);
          if (v6)
          {
          }

          if (v143 < v141)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_2262DECA8(v142);
          }

          if (v4 - 2 >= *(v142 + 2))
          {
            goto LABEL_124;
          }

          v144 = &v142[16 * v4];
          *v144 = v141;
          *(v144 + 1) = v143;
          v168 = v142;
          sub_2262DEC1C(v4 - 1);
          result = v168;
          v4 = *(v168 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_2262DECA8(v4);
    goto LABEL_100;
  }

  v145 = a4;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v26 = &qword_27D7930D0;
  v150 = a3;
  v146 = v12;
  while (1)
  {
    v152 = v25;
    if (v24 + 1 >= v23)
    {
      v46 = v24 + 1;
    }

    else
    {
      v158 = v23;
      v148 = v6;
      v166 = *a3;
      v27 = v166;
      v28 = *(v157 + 72);
      v159 = v28;
      v29 = v166 + v28 * (v24 + 1);
      v30 = v167;
      sub_2262D66FC(v29, v167, &qword_27D7930D0, &unk_226352510);
      v31 = v162;
      sub_2262D66FC(v27 + v28 * v24, v162, &qword_27D7930D0, &unk_226352510);
      v32 = v163;
      sub_2262D66FC(v30, v163, &qword_27D7930D0, &unk_226352510);
      v33 = v165;
      v34 = v32 + *(v165 + 48);
      v35 = type metadata accessor for ActionContext();
      v36 = *(v34 + *(v35 + 28));
      sub_2262D6068(v34, type metadata accessor for ActionContext);
      v37 = v164;
      sub_2262D66FC(v31, v164, &qword_27D7930D0, &unk_226352510);
      v38 = v37 + *(v33 + 48);
      v156 = v35;
      v39 = *(v38 + *(v35 + 28));
      sub_2262D6068(v38, type metadata accessor for ActionContext);
      v40 = sub_22634EEFC();
      v41 = *(v40 - 8);
      v42 = *(v41 + 8);
      v43 = v41 + 8;
      v42(v37, v40);
      v44 = v32;
      v26 = &qword_27D7930D0;
      v154 = v42;
      v155 = v40;
      v153 = v43;
      v42(v44, v40);
      sub_2262D67D8(v31, &qword_27D7930D0, &unk_226352510);
      result = sub_2262D67D8(v167, &qword_27D7930D0, &unk_226352510);
      v147 = v24;
      v45 = v24 + 2;
      v4 = v166 + v159 * v45;
      while (1)
      {
        v46 = v158;
        if (v158 == v45)
        {
          break;
        }

        LODWORD(v160) = v36 < v39;
        v47 = v167;
        sub_2262D66FC(v4, v167, &qword_27D7930D0, &unk_226352510);
        v48 = v162;
        sub_2262D66FC(v29, v162, &qword_27D7930D0, &unk_226352510);
        v49 = v163;
        sub_2262D66FC(v47, v163, &qword_27D7930D0, &unk_226352510);
        v50 = v165;
        v51 = v49 + *(v165 + 48);
        v166 = v29;
        v52 = v156;
        v53 = *(v51 + *(v156 + 28));
        sub_2262D6068(v51, type metadata accessor for ActionContext);
        v54 = v164;
        sub_2262D66FC(v48, v164, &qword_27D7930D0, &unk_226352510);
        v55 = v54 + *(v50 + 48);
        v56 = *(v52 + 28);
        v57 = v166;
        v58 = *(v55 + v56);
        sub_2262D6068(v55, type metadata accessor for ActionContext);
        v59 = v54;
        v61 = v154;
        v60 = v155;
        v154(v59, v155);
        v62 = v49;
        v26 = &qword_27D7930D0;
        v61(v62, v60);
        sub_2262D67D8(v48, &qword_27D7930D0, &unk_226352510);
        result = sub_2262D67D8(v47, &qword_27D7930D0, &unk_226352510);
        ++v45;
        v4 += v159;
        v29 = v57 + v159;
        if (((v160 ^ (v53 >= v58)) & 1) == 0)
        {
          v46 = v45 - 1;
          break;
        }
      }

      v6 = v148;
      a3 = v150;
      v63 = v146;
      v24 = v147;
      if (v36 < v39)
      {
        if (v46 < v147)
        {
          goto LABEL_127;
        }

        if (v147 < v46)
        {
          v64 = v46;
          v65 = v159 * (v46 - 1);
          v66 = v46 * v159;
          v158 = v46;
          v67 = v147 * v159;
          do
          {
            if (v24 != --v64)
            {
              v68 = *v150;
              if (!*v150)
              {
                goto LABEL_133;
              }

              v4 = v68 + v67;
              sub_2262D6764(v68 + v67, v63, &qword_27D7930D0, &unk_226352510);
              if (v67 < v65 || v4 >= v68 + v66)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v67 != v65)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2262D6764(v63, v68 + v65, &qword_27D7930D0, &unk_226352510);
            }

            ++v24;
            v65 -= v159;
            v66 -= v159;
            v67 += v159;
          }

          while (v24 < v64);
          v6 = v148;
          a3 = v150;
          v24 = v147;
          v46 = v158;
        }
      }
    }

    v69 = a3[1];
    if (v46 >= v69)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v46, v24))
    {
      goto LABEL_126;
    }

    if (v46 - v24 >= v145)
    {
LABEL_32:
      v71 = v46;
      if (v46 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, v145))
    {
      goto LABEL_128;
    }

    if (v24 + v145 >= v69)
    {
      v70 = a3[1];
    }

    else
    {
      v70 = v24 + v145;
    }

    if (v70 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v46 == v70)
    {
      goto LABEL_32;
    }

    v148 = v6;
    v119 = *a3;
    v120 = *(v157 + 72);
    v121 = *a3 + v120 * (v46 - 1);
    v159 = -v120;
    v147 = v24;
    v122 = v24 - v46;
    v160 = v119;
    v151 = v120;
    v4 = v119 + v46 * v120;
    v123 = v165;
    v153 = v70;
LABEL_87:
    v158 = v46;
    v154 = v4;
    v155 = v122;
    v124 = v122;
    v156 = v121;
    v125 = v121;
LABEL_88:
    v166 = v124;
    v126 = v167;
    sub_2262D66FC(v4, v167, &qword_27D7930D0, &unk_226352510);
    v127 = v162;
    sub_2262D66FC(v125, v162, &qword_27D7930D0, &unk_226352510);
    v128 = v163;
    sub_2262D66FC(v126, v163, &qword_27D7930D0, &unk_226352510);
    v129 = v128 + *(v123 + 48);
    v130 = type metadata accessor for ActionContext();
    v131 = *(v129 + *(v130 + 28));
    sub_2262D6068(v129, type metadata accessor for ActionContext);
    v132 = v164;
    sub_2262D66FC(v127, v164, &qword_27D7930D0, &unk_226352510);
    v133 = v132 + *(v123 + 48);
    v134 = *(v133 + *(v130 + 28));
    sub_2262D6068(v133, type metadata accessor for ActionContext);
    v135 = sub_22634EEFC();
    v136 = *(*(v135 - 8) + 8);
    v137 = v132;
    v26 = &qword_27D7930D0;
    v136(v137, v135);
    v136(v128, v135);
    sub_2262D67D8(v127, &qword_27D7930D0, &unk_226352510);
    result = sub_2262D67D8(v167, &qword_27D7930D0, &unk_226352510);
    if (v131 < v134)
    {
      break;
    }

    v123 = v165;
LABEL_86:
    v46 = v158 + 1;
    v121 = v156 + v151;
    v122 = v155 - 1;
    v71 = v153;
    v4 = v154 + v151;
    if (v158 + 1 != v153)
    {
      goto LABEL_87;
    }

    v6 = v148;
    a3 = v150;
    v24 = v147;
    if (v153 < v147)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v152;
    }

    else
    {
      result = sub_2262DCB70(0, *(v152 + 2) + 1, 1, v152);
      v25 = result;
    }

    v73 = *(v25 + 2);
    v72 = *(v25 + 3);
    v4 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      result = sub_2262DCB70((v72 > 1), v73 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v4;
    v74 = &v25[16 * v73];
    *(v74 + 4) = v24;
    *(v74 + 5) = v71;
    v75 = *v149;
    if (!*v149)
    {
      goto LABEL_135;
    }

    v153 = v71;
    if (v73)
    {
      v76 = v75;
      while (1)
      {
        v77 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v78 = *(v25 + 4);
          v79 = *(v25 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_53:
          if (v81)
          {
            goto LABEL_114;
          }

          v94 = &v25[16 * v4];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_117;
          }

          v100 = &v25[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_121;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v104 = &v25[16 * v4];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_67:
        if (v99)
        {
          goto LABEL_116;
        }

        v107 = &v25[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_119;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_74:
        v115 = v77 - 1;
        if (v77 - 1 >= v4)
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

        v116 = v25;
        v4 = *&v25[16 * v115 + 32];
        v117 = *&v25[16 * v77 + 40];
        sub_2262D3268(*a3 + *(v157 + 72) * v4, *a3 + *(v157 + 72) * *&v25[16 * v77 + 32], *a3 + *(v157 + 72) * v117, v76);
        if (v6)
        {
        }

        if (v117 < v4)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_2262DECA8(v116);
        }

        if (v115 >= *(v116 + 2))
        {
          goto LABEL_111;
        }

        v118 = &v116[16 * v115];
        *(v118 + 4) = v4;
        *(v118 + 5) = v117;
        v168 = v116;
        result = sub_2262DEC1C(v77);
        v25 = v168;
        v4 = *(v168 + 16);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v25[16 * v4 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_112;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_113;
      }

      v89 = &v25[16 * v4];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_115;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_118;
      }

      if (v93 >= v85)
      {
        v111 = &v25[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_122;
        }

        if (v80 < v114)
        {
          v77 = v4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v23 = a3[1];
    v24 = v153;
    if (v153 >= v23)
    {
      goto LABEL_97;
    }
  }

  v138 = v166;
  if (v160)
  {
    v139 = v161;
    sub_2262D6764(v4, v161, &qword_27D7930D0, &unk_226352510);
    v123 = v165;
    swift_arrayInitWithTakeFrontToBack();
    sub_2262D6764(v139, v125, &qword_27D7930D0, &unk_226352510);
    v125 += v159;
    v4 += v159;
    v140 = __CFADD__(v138, 1);
    v124 = v138 + 1;
    if (v140)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
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

uint64_t sub_2262D3268(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v8 = *(*(v78 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v64 - v14;
  result = MEMORY[0x28223BE20](v13);
  v74 = &v64 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v18;
  v81 = a1;
  v80 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v22;
    if (v22 >= 1)
    {
      v40 = -v18;
      v41 = v39;
      v75 = a4;
      v76 = a1;
      v67 = -v18;
      while (2)
      {
        while (1)
        {
          v65 = v39;
          v42 = a2;
          v43 = a2 + v40;
          v77 = v43;
          v68 = v42;
          while (1)
          {
            if (v42 <= a1)
            {
              v81 = v42;
              v79 = v65;
              goto LABEL_59;
            }

            v66 = v39;
            v73 = a3 + v40;
            v46 = v41 + v40;
            v47 = v74;
            v69 = a3;
            sub_2262D66FC(v46, v74, &qword_27D7930D0, &unk_226352510);
            v48 = v70;
            sub_2262D66FC(v43, v70, &qword_27D7930D0, &unk_226352510);
            v49 = v47;
            v50 = v41;
            v51 = v71;
            sub_2262D66FC(v49, v71, &qword_27D7930D0, &unk_226352510);
            v52 = v78;
            v53 = v51 + *(v78 + 48);
            v54 = type metadata accessor for ActionContext();
            v55 = *(v53 + *(v54 + 28));
            sub_2262D6068(v53, type metadata accessor for ActionContext);
            v56 = v72;
            sub_2262D66FC(v48, v72, &qword_27D7930D0, &unk_226352510);
            v57 = v56 + *(v52 + 48);
            v58 = *(v57 + *(v54 + 28));
            sub_2262D6068(v57, type metadata accessor for ActionContext);
            v59 = sub_22634EEFC();
            v60 = *(*(v59 - 8) + 8);
            v60(v56, v59);
            v60(v51, v59);
            sub_2262D67D8(v48, &qword_27D7930D0, &unk_226352510);
            sub_2262D67D8(v74, &qword_27D7930D0, &unk_226352510);
            if (v55 < v58)
            {
              break;
            }

            v39 = v46;
            a3 = v73;
            v61 = v75;
            v44 = v46;
            if (v69 < v50 || v73 >= v50)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v46;
              a1 = v76;
              v43 = v77;
              v40 = v67;
            }

            else
            {
              a1 = v76;
              v43 = v77;
              v40 = v67;
              if (v69 != v50)
              {
                v62 = v44;
                swift_arrayInitWithTakeBackToFront();
                v44 = v62;
              }
            }

            v41 = v39;
            v45 = v44 > v61;
            v42 = v68;
            if (!v45)
            {
              a2 = v68;
              goto LABEL_58;
            }
          }

          a3 = v73;
          v63 = v75;
          if (v69 < v68 || v73 >= v68)
          {
            break;
          }

          a1 = v76;
          a2 = v77;
          v39 = v66;
          v40 = v67;
          v41 = v50;
          if (v69 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v50 <= v63)
          {
            goto LABEL_58;
          }
        }

        a2 = v77;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v76;
        v39 = v66;
        v40 = v67;
        v41 = v50;
        if (v50 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v81 = a2;
    v79 = v39;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = a4 + v21;
    v79 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v73 = a3;
      v68 = v18;
      do
      {
        v75 = a4;
        v76 = a1;
        v77 = a2;
        v24 = v74;
        sub_2262D66FC(a2, v74, &qword_27D7930D0, &unk_226352510);
        v25 = v70;
        sub_2262D66FC(a4, v70, &qword_27D7930D0, &unk_226352510);
        v26 = v71;
        sub_2262D66FC(v24, v71, &qword_27D7930D0, &unk_226352510);
        v27 = v78;
        v28 = v26 + *(v78 + 48);
        v29 = type metadata accessor for ActionContext();
        v30 = *(v28 + *(v29 + 28));
        sub_2262D6068(v28, type metadata accessor for ActionContext);
        v31 = v72;
        sub_2262D66FC(v25, v72, &qword_27D7930D0, &unk_226352510);
        v32 = v31 + *(v27 + 48);
        v33 = *(v32 + *(v29 + 28));
        sub_2262D6068(v32, type metadata accessor for ActionContext);
        v34 = sub_22634EEFC();
        v35 = *(*(v34 - 8) + 8);
        v35(v31, v34);
        v35(v26, v34);
        sub_2262D67D8(v25, &qword_27D7930D0, &unk_226352510);
        sub_2262D67D8(v24, &qword_27D7930D0, &unk_226352510);
        if (v30 >= v33)
        {
          v36 = v76;
          a2 = v77;
          v37 = v68;
          a4 = v75 + v68;
          if (v76 < v75 || v76 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v73;
          }

          else
          {
            v38 = v73;
            if (v76 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v80 = a4;
        }

        else
        {
          a4 = v75;
          v36 = v76;
          v37 = v68;
          a2 = v77 + v68;
          if (v76 < v77 || v76 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v73;
          }

          else
          {
            v38 = v73;
            if (v76 != v77)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v36 + v37;
        v81 = a1;
      }

      while (a4 < v69 && a2 < v38);
    }
  }

LABEL_59:
  sub_2262EA7B8(&v81, &v80, &v79);
  return 1;
}

void *sub_2262D39B8(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2262D3C50(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2262D3A40(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2262D44D8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_2262D3ADC(uint64_t a1, double a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2262D3C50(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_2262D39B8(v11, v6, v4, a2);
  result = MEMORY[0x22AA7D570](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2262D3C50(unint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v43 = a2;
  v44 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v6 = *(*(v59 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v59);
  v58 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v43 - v9;
  v10 = type metadata accessor for ActionContext();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22634EEFC();
  v13 = *(*(v53 - 8) + 64);
  result = MEMORY[0x28223BE20](v53);
  v51 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v17 = 0;
  v60 = a3;
  v18 = *(a3 + 64);
  v47 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v45 = 0;
  v46 = (v19 + 63) >> 6;
  v49 = v15 + 1;
  v50 = v15 + 2;
  v22 = v15;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v61 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v17 << 6);
    v27 = v60;
    v28 = v22[2];
    v29 = v51;
    v30 = v53;
    v28(v51, v60[6] + v22[9] * v26, v53);
    v31 = v27[7];
    v32 = *(v55 + 72);
    v48 = v26;
    v33 = v31 + v32 * v26;
    v34 = v54;
    sub_2262D5EB8(v33, v54, type metadata accessor for ActionContext);
    v35 = v57;
    v28(v57, v29, v30);
    v36 = v59;
    sub_2262D5EB8(v34, &v35[*(v59 + 48)], type metadata accessor for ActionContext);
    v37 = v35;
    v38 = v58;
    sub_2262D6764(v37, v58, &qword_27D7930D0, &unk_226352510);
    v39 = v38 + *(v36 + 48);
    v40 = *(v39 + *(v56 + 28));
    sub_2262D6068(v39, type metadata accessor for ActionContext);
    v41 = v22[1];
    v41(v38, v30);
    sub_2262D6068(v34, type metadata accessor for ActionContext);
    result = (v41)(v29, v30);
    v21 = v61;
    if (v40 < a4)
    {
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
        return sub_2262D4048(v44, v43, v45, v60);
      }
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v46)
    {
      return sub_2262D4048(v44, v43, v45, v60);
    }

    v25 = *(v47 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v61 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2262D4048(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ActionContext();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = v46 - v12;
  v57 = sub_22634EEFC();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D8, &unk_226351FA0);
  result = sub_226350A9C();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_2262D5EB8(v33, v50, type metadata accessor for ActionContext);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    sub_2262D6000(v34, v58, type metadata accessor for ActionContext);
    v36 = *(v19 + 40);
    sub_2262D62A4(&qword_28137FA50, MEMORY[0x277CC95F0]);
    result = sub_22635040C();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = sub_2262D6000(v58, *(v19 + 56) + v40 * v53, type metadata accessor for ActionContext);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2262D44D8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = a2;
  v56 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v6 = *(*(v64 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v64);
  v70 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v55 - v9;
  v10 = type metadata accessor for ActionContext();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22634EEFC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v75 = &v55 - v19;
  result = MEMORY[0x28223BE20](v18);
  v67 = &v55 - v22;
  v23 = 0;
  v65 = a3;
  v24 = *(a3 + 64);
  v57 = a3 + 64;
  v58 = 0;
  v25 = 1 << *(a3 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v71 = a4 + 7;
  v61 = v28;
  v62 = v21;
  v73 = (v21 + 8);
  v74 = a4;
  v60 = v17;
  while (v27)
  {
    v30 = __clz(__rbit64(v27));
    v66 = (v27 - 1) & v27;
LABEL_13:
    v33 = v30 | (v23 << 6);
    v34 = v65;
    v35 = v65[6];
    v72 = *(v62 + 72);
    v36 = *(v62 + 16);
    v37 = v67;
    v36(v67, v35 + v72 * v33, v13);
    v38 = v34[7];
    v39 = *(v63 + 72);
    v59 = v33;
    v40 = v68;
    sub_2262D5EB8(v38 + v39 * v33, v68, type metadata accessor for ActionContext);
    v41 = v69;
    v36(v69, v37, v13);
    v42 = v64;
    sub_2262D5EB8(v40, v41 + *(v64 + 48), type metadata accessor for ActionContext);
    v43 = v70;
    sub_2262D66FC(v41, v70, &qword_27D7930D0, &unk_226352510);
    v44 = *(v42 + 48);
    v36(v75, v43 + v44, v13);
    sub_2262D6068(v43 + v44, type metadata accessor for ActionContext);
    v45 = v60;
    if (v74[2] && (v46 = v74, v47 = v74[5], sub_2262D62A4(&qword_28137FA50, MEMORY[0x277CC95F0]), v48 = sub_22635040C(), v49 = -1 << *(v46 + 32), v50 = v48 & ~v49, ((*(v71 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
    {
      v51 = ~v49;
      while (1)
      {
        v36(v45, v74[6] + v50 * v72, v13);
        sub_2262D62A4(&qword_28137FA40, MEMORY[0x277CC95F0]);
        v52 = sub_22635044C();
        v53 = *v73;
        (*v73)(v45, v13);
        if (v52)
        {
          break;
        }

        v50 = (v50 + 1) & v51;
        if (((*(v71 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v53(v75, v13);
      sub_2262D67D8(v69, &qword_27D7930D0, &unk_226352510);
      v53(v70, v13);
      sub_2262D6068(v68, type metadata accessor for ActionContext);
      result = (v53)(v67, v13);
      *(v56 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v54 = __OFADD__(v58++, 1);
      v28 = v61;
      v27 = v66;
      if (v54)
      {
        __break(1u);
        return sub_2262D4048(v56, v55, v58, v65);
      }
    }

    else
    {
LABEL_5:
      v29 = *v73;
      (*v73)(v75, v13);
      sub_2262D67D8(v69, &qword_27D7930D0, &unk_226352510);
      v29(v70, v13);
      sub_2262D6068(v68, type metadata accessor for ActionContext);
      result = (v29)(v67, v13);
      v28 = v61;
      v27 = v66;
    }
  }

  v31 = v23;
  while (1)
  {
    v23 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v23 >= v28)
    {
      return sub_2262D4048(v56, v55, v58, v65);
    }

    v32 = *(v57 + 8 * v23);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v66 = (v32 - 1) & v32;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2262D4B1C(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2262D3A40(v13, v7, a1, a2);
      MEMORY[0x22AA7D570](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2262D44D8((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2262D4CDC(uint64_t a1, uint64_t a2)
{
  v155 = 0;
  v171 = *MEMORY[0x277D85DE8];
  v152 = sub_22635004C();
  v151 = *(v152 - 8);
  v4 = *(v151 + 64);
  v5 = MEMORY[0x28223BE20](v152);
  v138 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v136 = &v130 - v8;
  MEMORY[0x28223BE20](v7);
  v131 = &v130 - v9;
  v141 = sub_2263504BC();
  v140 = *(v141 - 8);
  v10 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v141);
  v139 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v130 - v13;
  v14 = sub_22634EE0C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v135 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22634EECC();
  v149 = *(v150 - 8);
  v17 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v137 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C20, &unk_226351F80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v148 = &v130 - v24;
  v25 = sub_22634F41C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  v28 = MEMORY[0x28223BE20](v25);
  v156 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v163 = &v130 - v30;
  v157 = sub_22634F43C();
  v165 = *(v157 - 8);
  v31 = *(v165 + 64);
  MEMORY[0x28223BE20](v157);
  v33 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_22634EEFC();
  v146 = *(v147 - 8);
  v34 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v145 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a2 + 16);
  v37 = MEMORY[0x277D84F90];
  v164 = v25;
  v166 = v33;
  v154 = v23;
  v153 = a1;
  if (v36)
  {
    v162 = v26;
    v167 = MEMORY[0x277D84F90];
    sub_226316630(0, v36, 0);
    v37 = v167;
    v38 = *(type metadata accessor for RankedVisualAction() - 8);
    v39 = a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v40 = *(v38 + 72);
    v41 = v155;
    do
    {
      sub_2262D10DC(v39, &v169);
      v42 = v169;
      v43 = v170;
      v167 = v37;
      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        sub_226316630((v44 > 1), v45 + 1, 1);
        v37 = v167;
      }

      v37[2] = v45 + 1;
      v46 = &v37[2 * v45];
      v46[4] = v42;
      v46[5] = v43;
      v39 += v40;
      --v36;
    }

    while (v36);
    v155 = v41;
    v23 = v154;
    v25 = v164;
    v33 = v166;
    v26 = v162;
  }

  v169 = v37;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930A8, &qword_226354940);
  v142 = sub_2262D6578();
  v143 = sub_22635042C();
  v144 = v48;

  v49 = sub_22634F4BC();
  v50 = *(v49 + 16);
  if (v50)
  {
    v134 = v47;
    v167 = MEMORY[0x277D84F90];
    sub_226316630(0, v50, 0);
    v51 = v167;
    v162 = *(v165 + 16);
    v52 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v133 = v49;
    v53 = v49 + v52;
    v161 = *(v165 + 72);
    v160 = (v26 + 88);
    v159 = *MEMORY[0x277D786C0];
    v54 = (v26 + 8);
    v165 += 16;
    v158 = (v165 - 8);
    v55 = v157;
    do
    {
      (v162)(v33, v53, v55);
      v56 = v163;
      sub_22634F42C();
      v57 = (*v160)(v56, v25);
      v58 = *v54;
      (*v54)(v56, v25);
      if (v57 == v159)
      {
        v59 = 0;
        v60 = 0xE000000000000000;
      }

      else
      {
        v169 = 0xA3E5045533CLL;
        v170 = 0xE600000000000000;
        v61 = v156;
        sub_22634F42C();
        v62 = sub_22634F40C();
        v64 = v63;
        v65 = v61;
        v55 = v157;
        v58(v65, v25);
        v66 = v62;
        v33 = v166;
        MEMORY[0x22AA7C5B0](v66, v64);

        v59 = v169;
        v60 = v170;
      }

      (*v158)(v33, v55);
      v167 = v51;
      v68 = v51[2];
      v67 = v51[3];
      if (v68 >= v67 >> 1)
      {
        sub_226316630((v67 > 1), v68 + 1, 1);
        v51 = v167;
      }

      v51[2] = v68 + 1;
      v69 = &v51[2 * v68];
      v69[4] = v59;
      v69[5] = v60;
      v53 += v161;
      --v50;
      v25 = v164;
      v33 = v166;
    }

    while (v50);

    v23 = v154;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v169 = v51;
  v70 = sub_22635042C();
  v72 = v71;

  v169 = 0;
  v170 = 0xE000000000000000;
  sub_22635096C();
  MEMORY[0x22AA7C5B0](0xD000000000000010, 0x8000000226356570);
  v73 = v145;
  sub_22634F4DC();
  sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
  v74 = v147;
  v75 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v75);

  (*(v146 + 8))(v73, v74);
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x8000000226356590);
  MEMORY[0x22AA7C5B0](v70, v72);

  MEMORY[0x22AA7C5B0](0xD00000000000001DLL, 0x80000002263565B0);
  MEMORY[0x22AA7C5B0](v143, v144);

  MEMORY[0x22AA7C5B0](0x534E4F495443413CLL, 0xED00003E444E455FLL);
  v77 = v169;
  v76 = v170;
  v78 = objc_opt_self();
  v79 = [v78 visualIntelligenceSessionLogFilePath];
  if (!v79)
  {
    sub_22635046C();
    v79 = sub_22635045C();
  }

  v80 = sub_22635046C();
  v82 = v81;
  v83 = [v78 modificationDateOfFileAtPath_];

  if (v83)
  {
    sub_22634EE9C();

    v84 = 0;
  }

  else
  {
    v84 = 1;
  }

  v85 = v150;
  v86 = v149;
  (*(v149 + 56))(v23, v84, 1, v150);
  v87 = v148;
  sub_2262D6764(v23, v148, &qword_27D793C20, &unk_226351F80);
  if ((*(v86 + 48))(v87, 1, v85) == 1)
  {
    sub_2262D67D8(v87, &qword_27D793C20, &unk_226351F80);
LABEL_28:
    v169 = v77;
    v170 = v76;
    v167 = v80;
    v168 = v82;
    v100 = v139;
    sub_2263504AC();
    sub_2262D61E0();
    v101 = v155;
    sub_22635086C();
    if (!v101)
    {
      (*(v140 + 8))(v100, v141);

      v111 = v136;
      sub_22634FFEC();
      v112 = sub_22635003C();
      v113 = sub_22635071C();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_2262B6000, v112, v113, "Session log overwritten successfully", v114, 2u);
        MEMORY[0x22AA7D570](v114, -1, -1);
      }

      v110 = v111;
      goto LABEL_38;
    }

    v98 = v101;
    (*(v140 + 8))(v100, v141);

    goto LABEL_30;
  }

  sub_22634EE5C();
  v89 = v88;
  v90 = *(v86 + 8);
  v90(v87, v85);
  v91 = v137;
  sub_22634EEAC();
  sub_22634EE5C();
  v93 = v92;
  v90(v91, v85);
  if (v93 - v89 >= 300.0)
  {
    goto LABEL_28;
  }

  sub_2262D6624();
  v94 = v135;
  sub_22634EDCC();

  v95 = v94;
  v96 = v155;
  v97 = sub_2262D1334(v95);
  v98 = v96;
  if (v96)
  {
LABEL_30:

LABEL_31:
    v102 = v138;
    sub_22634FFEC();
    v103 = v98;
    v104 = sub_22635003C();
    v105 = sub_22635073C();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v106 = 138412290;
      v108 = v98;
      v109 = _swift_stdlib_bridgeErrorToNSError();
      *(v106 + 4) = v109;
      *v107 = v109;
      _os_log_impl(&dword_2262B6000, v104, v105, "Error writing to session log file: %@", v106, 0xCu);
      sub_2262D67D8(v107, &qword_27D793CC0, qword_226352A00);
      MEMORY[0x22AA7D570](v107, -1, -1);
      MEMORY[0x22AA7D570](v106, -1, -1);
    }

    else
    {
    }

    v110 = v102;
LABEL_38:
    v115 = v152;
    v116 = v151;
    goto LABEL_39;
  }

  v99 = v97;
  sub_22635070C();
  v119 = v132;
  sub_2263504AC();
  v120 = sub_22635047C();
  v122 = v121;

  (*(v140 + 8))(v119, v141);
  if (v122 >> 60 != 15)
  {
    v169 = v120;
    v170 = v122;
    sub_2262D6670();
    sub_2263506FC();
    sub_2262D66C4(v120, v122);
  }

  v169 = 0;
  if (![v99 closeAndReturnError_])
  {
    v129 = v169;
    v98 = sub_22634EDAC();

    swift_willThrow();
    goto LABEL_31;
  }

  v123 = v169;
  v124 = v131;
  sub_22634FFEC();
  v125 = v124;
  v126 = sub_22635003C();
  v127 = sub_22635071C();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_2262B6000, v126, v127, "Appended to session log successfully", v128, 2u);
    MEMORY[0x22AA7D570](v128, -1, -1);
  }

  v115 = v152;
  v116 = v151;
  v110 = v125;
LABEL_39:
  result = (*(v116 + 8))(v110, v115);
  v118 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2262D5D0C(uint64_t a1)
{
  v2 = sub_22634EEFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_226309C44(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_2262D5E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2262D5EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262D5F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262D5F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262D6000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262D6068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2262D60C8()
{
  result = qword_27D793050;
  if (!qword_27D793050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793050);
  }

  return result;
}

uint64_t sub_2262D611C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2262D6170(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2262D61E0()
{
  result = qword_27D793080;
  if (!qword_27D793080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793080);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

double sub_2262D6284(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_2262D62A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2262D62EC(uint64_t a1)
{
  v4 = *(sub_22634F51C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2262D641C;

  return sub_2262C1C98(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2262D641C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2262D6510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2262D6578()
{
  result = qword_27D7930B0;
  if (!qword_27D7930B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7930A8, &qword_226354940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7930B0);
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

unint64_t sub_2262D6624()
{
  result = qword_27D7930B8;
  if (!qword_27D7930B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7930B8);
  }

  return result;
}

unint64_t sub_2262D6670()
{
  result = qword_27D7930C0;
  if (!qword_27D7930C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7930C0);
  }

  return result;
}

uint64_t sub_2262D66C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2262D611C(a1, a2);
  }

  return a1;
}

uint64_t sub_2262D66D8(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2262D66FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2262D6764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2262D67CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2262D67D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for RankedVisualAction()
{
  result = qword_28137F4A0;
  if (!qword_28137F4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2262D68B0()
{
  type metadata accessor for VisualAction(319);
  if (v0 <= 0x3F)
  {
    sub_2262D694C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2262D694C()
{
  if (!qword_28137EC78[0])
  {
    v0 = sub_22635085C();
    if (!v1)
    {
      atomic_store(v0, qword_28137EC78);
    }
  }
}

uint64_t sub_2262D699C()
{
  v1 = sub_22634F34C();
  v2 = *(v1 - 8);
  v72 = v1;
  v73 = v2;
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v69 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  v13 = type metadata accessor for VisualAction.Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v69 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - v27;
  v29 = *(type metadata accessor for VisualAction(0) + 20);
  sub_2262D76C0(v0 + v29, v28);
  v74 = v28;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2262D90E8(v74, type metadata accessor for VisualAction.Kind);
      if (*(v0 + *(type metadata accessor for RankedVisualAction() + 28)) != 1)
      {
        return 0;
      }

      sub_2262D76C0(v0 + v29, v23);
      v39 = swift_getEnumCaseMultiPayload();
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          if (v39 == 3)
          {
            v40 = sub_22634FBEC();
            (*(*(v40 - 8) + 8))(v23, v40);
            return 0;
          }

          return 1;
        }

        v52 = v72;
        v51 = v73;
        v53 = v10;
        (*(v73 + 32))(v10, v23, v72);
        v58 = (*(v51 + 88))(v10, v52);
        if (v58 != *MEMORY[0x277D785E0] && v58 != *MEMORY[0x277D785E8])
        {
          v41 = 1;
          if (v58 != *MEMORY[0x277D78608] && v58 != *MEMORY[0x277D78600] && v58 != *MEMORY[0x277D78628])
          {
            v41 = 0;
            if (v58 != *MEMORY[0x277D78630] && v58 != *MEMORY[0x277D78618])
            {
              v41 = 1;
              if (v58 != *MEMORY[0x277D78610] && v58 != *MEMORY[0x277D785C0])
              {
                if (v58 == *MEMORY[0x277D78620])
                {
                  return 0;
                }

                if (v58 == *MEMORY[0x277D785D0])
                {
                  return v41;
                }

                if (v58 == *MEMORY[0x277D785D8])
                {
                  return 0;
                }

                if (v58 != *MEMORY[0x277D785F0] && v58 != *MEMORY[0x277D785B8])
                {
                  v41 = 0;
                  if (v58 != *MEMORY[0x277D785F8] && v58 != *MEMORY[0x277D785C8])
                  {
                    (*(v73 + 8))(v10, v72);
                    return 0;
                  }
                }
              }
            }
          }

          return v41;
        }

LABEL_66:
        (*(v51 + 8))(v53, v52);
        return 0;
      }

      if (!v39)
      {
        v50 = v23;
        goto LABEL_43;
      }

      v59 = v23[1];
      v66 = v23[3];
      v67 = v23[5];
      v61 = v23[6];
LABEL_74:

      if (!v59)
      {

        return 1;
      }

      return 0;
    }

    if (*(v0 + *(type metadata accessor for RankedVisualAction() + 28)) != 1)
    {
      goto LABEL_71;
    }

    sub_2262D76C0(v0 + v29, v26);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 1)
    {
      if (v32)
      {
        v63 = *(v26 + 1);
        v64 = *(v26 + 3);
        v65 = *(v26 + 5);

        if (!v63)
        {

          v41 = 1;
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      sub_2262D90E8(v26, type metadata accessor for VisualAction.Kind);
      v41 = 1;
    }

    else
    {
      if (v32 == 2)
      {
        v56 = v72;
        v55 = v73;
        (*(v73 + 32))(v12, v26, v72);
        v57 = (*(v55 + 88))(v12, v56);
        if (v57 == *MEMORY[0x277D785E0] || v57 == *MEMORY[0x277D785E8])
        {
          (*(v55 + 8))(v12, v56);
        }

        else
        {
          v41 = 1;
          if (v57 == *MEMORY[0x277D78608])
          {
            goto LABEL_72;
          }

          if (v57 == *MEMORY[0x277D78600])
          {
            goto LABEL_72;
          }

          if (v57 == *MEMORY[0x277D78628])
          {
            goto LABEL_72;
          }

          v41 = 0;
          if (v57 == *MEMORY[0x277D78630])
          {
            goto LABEL_72;
          }

          if (v57 == *MEMORY[0x277D78618])
          {
            goto LABEL_72;
          }

          v41 = 1;
          if (v57 == *MEMORY[0x277D78610] || v57 == *MEMORY[0x277D785C0])
          {
            goto LABEL_72;
          }

          if (v57 != *MEMORY[0x277D78620])
          {
            if (v57 == *MEMORY[0x277D785D0])
            {
              goto LABEL_72;
            }

            if (v57 != *MEMORY[0x277D785D8])
            {
              if (v57 == *MEMORY[0x277D785F0])
              {
                goto LABEL_72;
              }

              if (v57 == *MEMORY[0x277D785B8])
              {
                goto LABEL_72;
              }

              v41 = 0;
              if (v57 == *MEMORY[0x277D785F8] || v57 == *MEMORY[0x277D785C8])
              {
                goto LABEL_72;
              }

              (*(v73 + 8))(v12, v72);
            }
          }
        }

        goto LABEL_71;
      }

      if (v32 == 3)
      {
        v33 = sub_22634FBEC();
        (*(*(v33 - 8) + 8))(v26, v33);
LABEL_71:
        v41 = 0;
        goto LABEL_72;
      }

      v41 = 1;
    }

LABEL_72:
    sub_2262D90E8(v74, type metadata accessor for VisualAction.Kind);
    return v41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2262D76C0(v0 + v29, v20);
    v34 = swift_getEnumCaseMultiPayload();
    if (v34 <= 1)
    {
      if (v34)
      {
        v47 = *(v20 + 1);
        v48 = *(v20 + 3);
        v49 = *(v20 + 5);

        v35 = v74;
        if (!v47)
        {

          v41 = 1;
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      sub_2262D90E8(v20, type metadata accessor for VisualAction.Kind);
      v41 = 1;
      v35 = v74;
    }

    else
    {
      if (v34 == 2)
      {
        v42 = v73;
        v43 = v71;
        v44 = v20;
        v45 = v72;
        (*(v73 + 32))(v71, v44, v72);
        v46 = (*(v42 + 88))(v43, v45);
        v35 = v74;
        if (v46 != *MEMORY[0x277D785E0] && v46 != *MEMORY[0x277D785E8])
        {
          v41 = 1;
          if (v46 == *MEMORY[0x277D78608])
          {
            goto LABEL_35;
          }

          if (v46 == *MEMORY[0x277D78600])
          {
            goto LABEL_35;
          }

          if (v46 == *MEMORY[0x277D78628])
          {
            goto LABEL_35;
          }

          v41 = 0;
          if (v46 == *MEMORY[0x277D78630])
          {
            goto LABEL_35;
          }

          if (v46 == *MEMORY[0x277D78618])
          {
            goto LABEL_35;
          }

          v41 = 1;
          if (v46 == *MEMORY[0x277D78610] || v46 == *MEMORY[0x277D785C0])
          {
            goto LABEL_35;
          }

          if (v46 == *MEMORY[0x277D78620])
          {
            goto LABEL_34;
          }

          if (v46 == *MEMORY[0x277D785D0])
          {
            goto LABEL_35;
          }

          if (v46 == *MEMORY[0x277D785D8])
          {
            goto LABEL_34;
          }

          if (v46 == *MEMORY[0x277D785F0])
          {
            goto LABEL_35;
          }

          if (v46 == *MEMORY[0x277D785B8])
          {
            goto LABEL_35;
          }

          v41 = 0;
          if (v46 == *MEMORY[0x277D785F8] || v46 == *MEMORY[0x277D785C8])
          {
            goto LABEL_35;
          }
        }

        (*(v42 + 8))(v43, v45);
LABEL_34:
        v41 = 0;
        goto LABEL_35;
      }

      v35 = v74;
      if (v34 == 3)
      {
        v36 = sub_22634FBEC();
        (*(*(v36 - 8) + 8))(v20, v36);
        goto LABEL_34;
      }

      v41 = 1;
    }

LABEL_35:
    sub_2262D90E8(v35, type metadata accessor for VisualAction.Kind);
    return v41;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v31 = sub_22634FBEC();
    (*(*(v31 - 8) + 8))(v74, v31);
    return 0;
  }

  if (*(v0 + *(type metadata accessor for RankedVisualAction() + 28)) != 1)
  {
    return 0;
  }

  sub_2262D76C0(v0 + v29, v17);
  v37 = swift_getEnumCaseMultiPayload();
  if (v37 <= 1)
  {
    if (!v37)
    {
      v50 = v17;
LABEL_43:
      sub_2262D90E8(v50, type metadata accessor for VisualAction.Kind);
      return 1;
    }

    v59 = v17[1];
    v60 = v17[3];
    v62 = v17[5];
    v61 = v17[6];
    goto LABEL_74;
  }

  if (v37 != 2)
  {
    if (v37 == 3)
    {
      v38 = sub_22634FBEC();
      (*(*(v38 - 8) + 8))(v17, v38);
      return 0;
    }

    return 1;
  }

  v52 = v72;
  v51 = v73;
  v53 = v70;
  (*(v73 + 32))(v70, v17, v72);
  v54 = (*(v51 + 88))(v53, v52);
  if (v54 == *MEMORY[0x277D785E0] || v54 == *MEMORY[0x277D785E8])
  {
    goto LABEL_66;
  }

  v41 = 1;
  if (v54 != *MEMORY[0x277D78608] && v54 != *MEMORY[0x277D78600] && v54 != *MEMORY[0x277D78628])
  {
    v41 = 0;
    if (v54 != *MEMORY[0x277D78630] && v54 != *MEMORY[0x277D78618])
    {
      v41 = 1;
      if (v54 != *MEMORY[0x277D78610] && v54 != *MEMORY[0x277D785C0])
      {
        if (v54 == *MEMORY[0x277D78620])
        {
          return 0;
        }

        if (v54 != *MEMORY[0x277D785D0])
        {
          if (v54 == *MEMORY[0x277D785D8])
          {
            return 0;
          }

          if (v54 != *MEMORY[0x277D785F0] && v54 != *MEMORY[0x277D785B8])
          {
            v41 = 0;
            if (v54 != *MEMORY[0x277D785F8] && v54 != *MEMORY[0x277D785C8])
            {
              (*(v73 + 8))(v70, v72);
              return 0;
            }
          }
        }
      }
    }
  }

  return v41;
}

uint64_t sub_2262D76C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262D7724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22634FF9C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_22634F34C();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(sub_22634F36C() - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_22634F37C();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v16 = sub_22635029C();
  v5[20] = v16;
  v17 = *(v16 - 8);
  v5[21] = v17;
  v18 = *(v17 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v19 = sub_2263502BC();
  v5[24] = v19;
  v20 = *(v19 - 8);
  v5[25] = v20;
  v21 = *(v20 + 64) + 15;
  v5[26] = swift_task_alloc();
  v22 = sub_22634F3BC();
  v5[27] = v22;
  v23 = *(v22 - 8);
  v5[28] = v23;
  v24 = *(v23 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v25 = sub_22634EEFC();
  v5[33] = v25;
  v26 = *(v25 - 8);
  v5[34] = v26;
  v27 = *(v26 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v28 = *(*(type metadata accessor for VisualAction.Kind.SystemTool(0) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v29 = type metadata accessor for VisualAction.Kind(0);
  v5[40] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262D7B2C, 0, 0);
}

uint64_t sub_2262D7B2C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 48);
  v4 = *(type metadata accessor for VisualAction(0) + 20);
  sub_2262D76C0(v3 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2262D90E8(*(v0 + 344), type metadata accessor for VisualAction.Kind);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v8 = 1;
        goto LABEL_12;
      }

      v6 = *(v0 + 344);
      v7 = sub_22634FBEC();
      (*(*(v7 - 8) + 8))(v6, v7);
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2262D90E8(*(v0 + 344), type metadata accessor for VisualAction.Kind);
    v8 = 1;
    goto LABEL_12;
  }

  v9 = *(v0 + 344);
  v10 = v9[1];
  v11 = v9[3];
  v12 = v9[5];
  v13 = v9[6];

  if (v10)
  {

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:
  *(v0 + 368) = v8;
  v14 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 48);
  v17 = *(v0 + 32);
  *(v0 + 369) = sub_2262D8B3C() & 1;
  sub_2262D76C0(v3 + v4, v14);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      if (v18 != 3)
      {
        v21 = 1;
        goto LABEL_22;
      }

      v19 = *(v0 + 336);
      v20 = sub_22634FBEC();
      (*(*(v20 - 8) + 8))(v19, v20);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!v18)
  {
LABEL_17:
    sub_2262D90E8(*(v0 + 336), type metadata accessor for VisualAction.Kind);
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v22 = *(v0 + 336);
  v23 = v22[1];
  v24 = v22[3];
  v25 = v22[5];
  v26 = v22[6];

  if (v23)
  {

    goto LABEL_21;
  }

  v21 = 1;
LABEL_22:
  *(v0 + 370) = v21;
  v27 = *(v0 + 320);
  sub_2262D76C0(v3 + v4, *(v0 + 328));
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 <= 1)
  {
    if (v28)
    {
      v60 = *(v0 + 328);
      v61 = v60[1];
      v62 = v60[3];
      v63 = v60[6];
      v64 = [v63 title];
      if (!v64)
      {
        v90 = *(v0 + 16);

        v91 = sub_22634F3DC();
        (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
        goto LABEL_41;
      }

      v65 = v64;
      v97 = *(v0 + 296);
      v66 = *(v0 + 264);
      v67 = *(v0 + 272);
      v68 = *(v0 + 248);
      v69 = *(v0 + 224);
      v99 = *(v0 + 216);
      v106 = *(v0 + 144);
      v70 = *(v0 + 112);
      v71 = *(v0 + 120);
      v108 = v70;
      v111 = *(v0 + 104);
      v72 = *(v0 + 48);
      v124 = v63;
      v73 = *(v0 + 24);
      v115 = *(v0 + 16);
      v74 = [v64 localizedStringForLocaleIdentifier_];

      sub_22635046C();
      (*(v67 + 16))(v97, v73, v66);
      sub_2262DBE60();
      v75 = v72[1];
      *v68 = *v72;
      *(v68 + 8) = v75;
      *(v68 + 16) = 0;
      (*(v69 + 104))(v68, *MEMORY[0x277D78678], v99);

      v76 = sub_2262D699C();
      v77 = MEMORY[0x277D78658];
      if ((v76 & 1) == 0)
      {
        v77 = MEMORY[0x277D78660];
      }

      (*(v71 + 104))(v106, *v77, v108);
      sub_22634F35C();
      v46 = v115;
      sub_22634F3AC();
    }

    else
    {
      v33 = *(v0 + 304);
      v34 = *(v0 + 272);
      v110 = *(v0 + 264);
      v98 = *(v0 + 256);
      v100 = *(v0 + 224);
      v102 = *(v0 + 216);
      v36 = *(v0 + 200);
      v35 = *(v0 + 208);
      v93 = *(v0 + 184);
      v94 = *(v0 + 192);
      v95 = *(v0 + 176);
      v38 = *(v0 + 160);
      v37 = *(v0 + 168);
      v104 = *(v0 + 120);
      v113 = *(v0 + 152);
      v117 = *(v0 + 112);
      v122 = *(v0 + 104);
      v39 = *(v0 + 48);
      v40 = *(v0 + 24);
      v126 = *(v0 + 16);
      v96 = *(v0 + 312);
      sub_2262D902C(*(v0 + 328), v96);
      (*(v34 + 16))(v33, v40, v110);
      sub_2262DBE60();
      v41 = *v39;
      v42 = v39[1];

      sub_2263500BC();
      sub_2263502AC();
      (*(v36 + 8))(v35, v94);
      (*(v37 + 104))(v95, *MEMORY[0x277D730E8], v38);
      sub_2262D9090();
      LOBYTE(v33) = sub_22635044C();
      v43 = *(v37 + 8);
      v43(v95, v38);
      v43(v93, v38);
      *v98 = v41;
      *(v98 + 8) = v42;
      *(v98 + 16) = v33 & 1;
      (*(v100 + 104))(v98, *MEMORY[0x277D78678], v102);
      sub_2263500CC();
      v44 = sub_2262D699C();
      v45 = MEMORY[0x277D78658];
      if ((v44 & 1) == 0)
      {
        v45 = MEMORY[0x277D78660];
      }

      (*(v104 + 104))(v113, *v45, v117);
      sub_22634F35C();
      v46 = v126;
      sub_22634F3AC();
      sub_2262D90E8(v96, type metadata accessor for VisualAction.Kind.SystemTool);
    }

    goto LABEL_40;
  }

  if (v28 == 2)
  {
    v47 = *(v0 + 288);
    v48 = *(v0 + 272);
    v105 = *(v0 + 264);
    v127 = *(v0 + 240);
    v49 = *(v0 + 224);
    v101 = *(v0 + 216);
    v50 = *(v0 + 120);
    v114 = *(v0 + 136);
    v118 = *(v0 + 112);
    v120 = *(v0 + 104);
    v51 = *(v0 + 88);
    v52 = *(v0 + 96);
    v53 = *(v0 + 80);
    v54 = *(v0 + 48);
    v55 = *(v0 + 24);
    v123 = *(v0 + 16);
    (*(v51 + 32))(v52, *(v0 + 328), v53);
    (*(v48 + 16))(v47, v55, v105);
    sub_2262DBE60();
    (*(v51 + 16))(v127, v52, v53);
    (*(v49 + 104))(v127, *MEMORY[0x277D78668], v101);
    sub_22634F31C();
    v56 = sub_2262D699C();
    v57 = MEMORY[0x277D78658];
    if ((v56 & 1) == 0)
    {
      v57 = MEMORY[0x277D78660];
    }

    (*(v50 + 104))(v114, *v57, v118);
    sub_22634F35C();
    v46 = v123;
    sub_22634F3AC();
    (*(v51 + 8))(v52, v53);
LABEL_40:
    v78 = sub_22634F3DC();
    (*(*(v78 - 8) + 56))(v46, 0, 1, v78);
    goto LABEL_41;
  }

  if (v28 == 3)
  {
    v29 = *(v0 + 328);
    v30 = *(v0 + 16);
    v31 = sub_22634F3DC();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = sub_22634FBEC();
    (*(*(v32 - 8) + 8))(v29, v32);
LABEL_41:
    v80 = *(v0 + 336);
    v79 = *(v0 + 344);
    v81 = *(v0 + 328);
    v83 = *(v0 + 304);
    v82 = *(v0 + 312);
    v85 = *(v0 + 288);
    v84 = *(v0 + 296);
    v86 = *(v0 + 280);
    v87 = *(v0 + 248);
    v88 = *(v0 + 256);
    v103 = *(v0 + 240);
    v107 = *(v0 + 232);
    v109 = *(v0 + 208);
    v112 = *(v0 + 184);
    v116 = *(v0 + 176);
    v119 = *(v0 + 152);
    v121 = *(v0 + 144);
    v125 = *(v0 + 136);
    v128 = *(v0 + 128);
    v129 = *(v0 + 104);
    v130 = *(v0 + 96);
    v131 = *(v0 + 72);

    v89 = *(v0 + 8);

    return v89();
  }

  v58 = *(v0 + 40);
  v59 = *(v0 + 48);
  *(v0 + 352) = *v59;
  *(v0 + 360) = v59[1];

  return MEMORY[0x2822009F8](sub_2262D85EC, v58, 0);
}

uint64_t sub_2262D85EC()
{
  v1 = v0[5];
  sub_22632F498(v0[44], v0[45], v0[9]);

  return MEMORY[0x2822009F8](sub_2262D8684, 0, 0);
}

uint64_t sub_2262D8684()
{
  v29 = *(v0 + 352);
  v31 = *(v0 + 360);
  v47 = *(v0 + 370);
  v45 = *(v0 + 369);
  v43 = *(v0 + 368);
  v1 = *(v0 + 272);
  v25 = *(v0 + 280);
  v26 = *(v0 + 264);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v27 = *(v0 + 216);
  v4 = *(v0 + 120);
  v33 = *(v0 + 128);
  v35 = *(v0 + 112);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 24);
  v37 = *(v0 + 104);
  v39 = *(v0 + 16);
  sub_22634FE5C();
  (*(v6 + 8))(v5, v7);
  (*(v1 + 16))(v25, v9, v26);
  sub_2262DBE60();
  *v2 = v29;
  v2[1] = v31;
  (*(v3 + 104))(v2, *MEMORY[0x277D78680], v27);

  v10 = sub_2262D699C();
  v11 = MEMORY[0x277D78658];
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277D78660];
  }

  (*(v4 + 104))(v33, *v11, v35);
  sub_22634F35C();
  sub_22634F3AC();
  v12 = sub_22634F3DC();
  (*(*(v12 - 8) + 56))(v39, 0, 1, v12);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v17 = *(v0 + 304);
  v16 = *(v0 + 312);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);
  v20 = *(v0 + 280);
  v21 = *(v0 + 248);
  v22 = *(v0 + 256);
  v28 = *(v0 + 240);
  v30 = *(v0 + 232);
  v32 = *(v0 + 208);
  v34 = *(v0 + 184);
  v36 = *(v0 + 176);
  v38 = *(v0 + 152);
  v40 = *(v0 + 144);
  v41 = *(v0 + 136);
  v42 = *(v0 + 128);
  v44 = *(v0 + 104);
  v46 = *(v0 + 96);
  v48 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2262D8984()
{
  v1 = v0[2];
  v2 = sub_22634F3DC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v11 = v0[31];
  v12 = v0[32];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[13];
  v25 = v0[12];
  v26 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2262D8B3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F0, &qword_226352008);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for VisualAction.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v0 + *(v19 + 20), v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2262D90E8(v18, type metadata accessor for VisualAction.Kind);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v21 = sub_22634FBEC();
      (*(*(v21 - 8) + 8))(v18, v21);
    }

LABEL_20:
    v26 = 0;
    return v26 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    v27 = v18[3];
    v28 = v18[5];
    v29 = v18[6];
    if (v18[1])
    {
    }

    else
    {
      sub_22634F4CC();
      v30 = sub_22634FD0C();
      if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
      {
        sub_2262D67D8(v12, &qword_27D7930F0, &qword_226352008);
        sub_22634F4FC();
        v31 = sub_22634F47C();
        v32 = *(v31 - 8);
        if ((*(v32 + 48))(v5, 1, v31) != 1)
        {
          v26 = sub_22634F45C();

          (*(v32 + 8))(v5, v31);
          return v26 & 1;
        }

        v33 = &qword_27D792FE0;
        v34 = &unk_226351C10;
        v35 = v5;
      }

      else
      {

        v33 = &qword_27D7930F0;
        v34 = &qword_226352008;
        v35 = v12;
      }

      sub_2262D67D8(v35, v33, v34);
    }

    goto LABEL_20;
  }

  sub_22634F4CC();
  v22 = sub_22634FD0C();
  v23 = (*(*(v22 - 8) + 48))(v14, 1, v22);
  sub_2262D67D8(v14, &qword_27D7930F0, &qword_226352008);
  if (v23 == 1)
  {
    sub_22634F4FC();
    v24 = sub_22634F47C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v7, 1, v24) != 1)
    {
      v26 = sub_22634F45C();
      (*(v25 + 8))(v7, v24);
      goto LABEL_17;
    }

    sub_2262D67D8(v7, &qword_27D792FE0, &unk_226351C10);
  }

  v26 = 0;
LABEL_17:
  sub_2262D90E8(v18, type metadata accessor for VisualAction.Kind);
  return v26 & 1;
}

uint64_t sub_2262D902C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2262D9090()
{
  result = qword_27D7930E8;
  if (!qword_27D7930E8)
  {
    sub_22635029C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7930E8);
  }

  return result;
}

uint64_t sub_2262D90E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2262D916C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2262D918C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_2262D91E8()
{
  sub_22635096C();
  MEMORY[0x22AA7C5B0](0xD000000000000020, 0x8000000226356610);
  v1 = *v0;
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356640);
  v2 = v0[1];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001BLL, 0x8000000226356660);
  v3 = v0[2];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001ALL, 0x8000000226356680);
  v4 = v0[3];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001ALL, 0x80000002263566A0);
  v5 = v0[4];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000016, 0x80000002263566C0);
  v6 = v0[5];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x80000002263566E0);
  v7 = v0[6];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x8000000226356700);
  v8 = v0[7];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000014, 0x8000000226356720);
  v9 = v0[8];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356740);
  v10 = v0[9];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356760);
  v11 = v0[10];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001BLL, 0x8000000226356780);
  v12 = v0[11];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000015, 0x80000002263567A0);
  v13 = v0[12];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD000000000000018, 0x80000002263567C0);
  v14 = v0[13];
  sub_2263506DC();
  MEMORY[0x22AA7C5B0](0xD00000000000001ALL, 0x80000002263567E0);
  v18 = v0[14];
  v15 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v15);

  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226356800);
  v19 = v0[15];
  v16 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v16);

  MEMORY[0x22AA7C5B0](32010, 0xE200000000000000);
  return 0;
}

__n128 sub_2262D95CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_226352020;
  *(v1 + 32) = v2;
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = v4;
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 80) = v5;
  *(v1 + 96) = v6;
  result = v0[6];
  *(v1 + 112) = v7;
  *(v1 + 128) = result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2262D963C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2262D9684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2262D96DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_226350CEC();
  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262D9758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2263504EC();
  sub_2263504EC();
  return sub_22635083C();
}

uint64_t sub_2262D97A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_226350CEC();
  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262D9820(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  sub_2262D9C1C(0, &qword_28137DF78, 0x277D82BB8);
  return sub_22635082C() & 1;
}

unint64_t sub_2262D98E8()
{
  result = qword_27D793100;
  if (!qword_27D793100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793100);
  }

  return result;
}

unint64_t sub_2262D993C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_22635096C();

  MEMORY[0x22AA7C5B0](v1, v2);
  MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
  MEMORY[0x22AA7C5B0](v3, v4);
  MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2262D99F4(void *a1)
{
  v1 = [a1 parameters];
  sub_2262D9C1C(0, &qword_27D793108, 0x277D23748);
  v2 = sub_22635056C();

  v14 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226350A6C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA7CA30](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 valueType];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2262D9C1C(0, &qword_28137DF78, 0x277D82BB8);
        sub_2262D9C1C(0, &unk_28137DF90, 0x277D23930);
        v9 = sub_2263507EC();
        v10 = sub_22635082C();

        if (v10)
        {
          sub_2263509CC();
          v11 = *(v14 + 16);
          sub_2263509EC();
          sub_2263509FC();
          sub_2263509DC();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v12 = v14;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_2262D9C1C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2262D9C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2262D9CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2262D9D24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226350CEC();
  if (v2)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  return sub_226350D0C();
}

uint64_t sub_2262D9D94()
{
  if (!v0[1])
  {
    return MEMORY[0x22AA7CDB0](1);
  }

  v1 = *v0;
  MEMORY[0x22AA7CDB0](0);

  return sub_2263504EC();
}

uint64_t sub_2262D9E0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226350CEC();
  if (v2)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  return sub_226350D0C();
}

uint64_t sub_2262D9E78(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_226350C4C();
  }
}

uint64_t sub_2262D9EC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_226350CEC();
  if (v2)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262D9F7C()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  if (v0[1])
  {
    v6 = *v0;
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  sub_2263504EC();
  sub_2263504EC();
  return sub_22635083C();
}

uint64_t sub_2262DA028()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_226350CEC();
  if (v2)
  {
    MEMORY[0x22AA7CDB0](0);
    sub_2263504EC();
  }

  else
  {
    MEMORY[0x22AA7CDB0](1);
  }

  sub_2263504EC();
  sub_2263504EC();
  sub_22635083C();
  return sub_226350D0C();
}

uint64_t sub_2262DA0DC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_226350C4C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4 == v10 && v6 == v12 || (sub_226350C4C()) && (v5 == v11 && v8 == v14 || (sub_226350C4C()))
  {
    sub_2262DA244();
    if (sub_22635082C())
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2262DA1F0()
{
  result = qword_27D793110;
  if (!qword_27D793110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793110);
  }

  return result;
}

unint64_t sub_2262DA244()
{
  result = qword_28137DF78;
  if (!qword_28137DF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28137DF78);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2262DA29C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2262DA2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2262DA340(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2262DA358(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2262DA38C()
{
  result = qword_27D793118;
  if (!qword_27D793118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793118);
  }

  return result;
}

uint64_t sub_2262DA3E0()
{
  v1 = *v0;
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](v1);
  return sub_226350D0C();
}

uint64_t sub_2262DA428()
{
  v1 = *v0;
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](v1);
  return sub_226350D0C();
}

unint64_t sub_2262DA46C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2262DB640(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2262DA498()
{
  v0 = sub_2263502EC();
  v40 = *(v0 - 8);
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2263500AC();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = v29 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v38 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793120, &qword_226352310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226352300;
  strcpy(v43, "saveScene");
  HIWORD(v43[2]) = 0;
  v43[3] = -385875968;
  sub_22635091C();
  v15 = *(sub_22634F4EC() + 16);

  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  *(inited + 72) = v16;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v0, qword_27D793ED8);
  v40 = *(v40 + 16);
  (v40)(v3, v37, v0);
  v36 = "ResultsInAppIntent";
  v17 = v3;
  sub_22635032C();
  v35 = *MEMORY[0x277D72148];
  v18 = v39;
  v33 = *(v39 + 104);
  v34 = v39 + 104;
  v33(v13);
  v30 = v0;
  v32 = *(v18 + 16);
  v19 = v38;
  v32(v38, v13, v4);
  v29[1] = v18 + 16;
  v31 = sub_2262DB424();
  sub_22635091C();
  v39 = *(v18 + 8);
  (v39)(v13, v4);
  v20 = *(sub_22634F4EC() + 16);

  if (v20)
  {
    v21 = 3;
  }

  else
  {
    v21 = 1;
  }

  *(inited + 120) = v21;
  strcpy(v43, "VisualSearch");
  BYTE1(v43[3]) = 0;
  HIWORD(v43[3]) = -5120;
  sub_22635091C();
  *(inited + 168) = 1;
  (v40)(v17, v37, v30);
  sub_22635032C();
  v22 = v33;
  (v33)(v19, v35, v4);
  v23 = v41;
  v24 = v32;
  v32(v41, v19, v4);
  sub_22635091C();
  v25 = v19;
  v26 = v39;
  (v39)(v25, v4);
  *(inited + 216) = 0;
  (v22)(v23, *MEMORY[0x277D72120], v4);
  v24(v42, v23, v4);
  sub_22635091C();
  v26(v23, v4);
  *(inited + 264) = 0;
  v27 = sub_2262FE204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793130, qword_226352318);
  swift_arrayDestroy();
  return v27;
}

unint64_t sub_2262DA9E0()
{
  v0 = sub_2263502EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2263500AC();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = v30 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v38 = v30 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793120, &qword_226352310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226352300;
  strcpy(v42, "saveScene");
  HIWORD(v42[2]) = 0;
  v42[3] = -385875968;
  sub_22635091C();
  if (sub_22634F45C())
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  *(inited + 72) = v16;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_27D793ED8);
  v18 = *(v1 + 16);
  v30[2] = v1 + 16;
  v36 = v18;
  v37 = v17;
  v18(v4, v17, v0);
  v35 = "ResultsInAppIntent";
  v19 = v4;
  sub_22635032C();
  v34 = *MEMORY[0x277D72148];
  v20 = v39;
  v32 = *(v39 + 104);
  v33 = v39 + 104;
  v32(v14);
  v31 = *(v20 + 16);
  v21 = v38;
  v31(v38, v14, v5);
  v30[1] = v20 + 16;
  v30[3] = sub_2262DB424();
  sub_22635091C();
  v39 = *(v20 + 8);
  (v39)(v14, v5);
  if (sub_22634F45C())
  {
    v22 = 3;
  }

  else
  {
    v22 = 1;
  }

  *(inited + 120) = v22;
  strcpy(v42, "VisualSearch");
  BYTE1(v42[3]) = 0;
  HIWORD(v42[3]) = -5120;
  sub_22635091C();
  *(inited + 168) = 1;
  v36(v19, v37, v0);
  sub_22635032C();
  v23 = v32;
  (v32)(v21, v34, v5);
  v24 = v40;
  v25 = v31;
  v31(v40, v21, v5);
  sub_22635091C();
  v26 = v21;
  v27 = v39;
  (v39)(v26, v5);
  *(inited + 216) = 0;
  (v23)(v24, *MEMORY[0x277D72120], v5);
  v25(v41, v24, v5);
  sub_22635091C();
  v27(v24, v5);
  *(inited + 264) = 0;
  v28 = sub_2262FE204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793130, qword_226352318);
  swift_arrayDestroy();
  return v28;
}

unint64_t sub_2262DAF10()
{
  v0 = sub_2263502EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2263500AC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v39 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = v26 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v37 = v26 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v26 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793120, &qword_226352310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226352300;
  strcpy(v40, "saveScene");
  HIWORD(v40[2]) = 0;
  v40[3] = -385875968;
  sub_22635091C();
  *(inited + 72) = 1;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v27 = v0;
  v17 = __swift_project_value_buffer(v0, qword_27D793ED8);
  v35 = *(v1 + 16);
  v36 = v17;
  v35(v4, v17, v0);
  v34 = "ResultsInAppIntent";
  sub_22635032C();
  v32 = *MEMORY[0x277D72148];
  v31 = v6[13];
  v33 = v6 + 13;
  v31(v15);
  v30 = v6[2];
  v18 = v37;
  v30(v37, v15, v5);
  v26[1] = v6 + 2;
  v29 = sub_2262DB424();
  sub_22635091C();
  v28 = v6[1];
  v28(v15, v5);
  *(inited + 120) = 1;
  strcpy(v40, "VisualSearch");
  BYTE1(v40[3]) = 0;
  HIWORD(v40[3]) = -5120;
  sub_22635091C();
  *(inited + 168) = 1;
  v35(v4, v36, v27);
  sub_22635032C();
  v19 = v31;
  (v31)(v18, v32, v5);
  v20 = v38;
  v21 = v30;
  v30(v38, v18, v5);
  sub_22635091C();
  v22 = v18;
  v23 = v28;
  v28(v22, v5);
  *(inited + 216) = 0;
  (v19)(v20, *MEMORY[0x277D72120], v5);
  v21(v39, v20, v5);
  sub_22635091C();
  v23(v20, v5);
  *(inited + 264) = 0;
  v24 = sub_2262FE204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793130, qword_226352318);
  swift_arrayDestroy();
  return v24;
}

unint64_t sub_2262DB424()
{
  result = qword_27D793128;
  if (!qword_27D793128)
  {
    sub_2263500AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionRichnessMap.ActionRichness(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionRichnessMap.ActionRichness(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262DB5EC()
{
  result = qword_27D793138;
  if (!qword_27D793138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793138);
  }

  return result;
}

unint64_t sub_2262DB640(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_2262DB6B8()
{
  type metadata accessor for VisualAction.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_2262DB764();
    if (v1 <= 0x3F)
    {
      sub_2262DB7CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2262DB764()
{
  if (!qword_28137E038)
  {
    sub_22635027C();
    v0 = sub_2263503FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E038);
    }
  }
}

void sub_2262DB7CC()
{
  if (!qword_28137E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793140, &qword_226353220);
    v0 = sub_2263503FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E040);
    }
  }
}

void sub_2262DB890()
{
  type metadata accessor for VisualAction.Kind.SystemTool(319);
  if (v0 <= 0x3F)
  {
    sub_22634F34C();
    if (v1 <= 0x3F)
    {
      sub_2262DB978();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_2262DB940(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2262DB978()
{
  if (!qword_28137E0B0)
  {
    v0 = sub_22634FBEC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E0B0);
    }
  }
}

uint64_t sub_2262DB9E8()
{
  result = sub_2263500DC();
  if (v1 <= 0x3F)
  {
    result = sub_2263500AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2262DBA6C()
{
  v1 = sub_2263502EC();
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2263500AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VisualAction.Kind(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VisualAction(0);
  sub_2262DF61C(v0 + *(v18 + 20), v17, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v21 = v13;
    v22 = v6;
    v23 = v33;
    if (EnumCaseMultiPayload)
    {
      v28 = *(v17 + 1);
      v29 = *(v17 + 3);
      v30 = *(v17 + 5);

      if (!v28)
      {

        v27 = 1;
        return v27 & 1;
      }

      goto LABEL_13;
    }

    sub_2262D902C(v17, v21);
    v24 = *(v10 + 20);
    if (qword_27D792EA0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v1, qword_27D793ED8);
    (*(v23 + 16))(v4, v25, v1);
    sub_22635032C();
    (*(v22 + 104))(v9, *MEMORY[0x277D72148], v5);
    v26 = sub_22635009C();
    (*(v22 + 8))(v9, v5);
    sub_2262DF5BC(v21, type metadata accessor for VisualAction.Kind.SystemTool);
    v27 = v26 ^ 1;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2262DF5BC(v17, type metadata accessor for VisualAction.Kind);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v20 = sub_22634FBEC();
      (*(*(v20 - 8) + 8))(v17, v20);
LABEL_13:
      v27 = 0;
      return v27 & 1;
    }

    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_2262DBE60()
{
  v1 = sub_22634F34C();
  v60 = *(v1 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v1);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22635007C();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for VisualAction.Kind(0);
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v63 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for VisualAction(0);
  v11 = *(v61 + 32);
  v64 = v0;
  v12 = *(v0 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_2262DD634(*(v12 + 16), 0);
    v15 = sub_2262DECBC(&v67, (v14 + 4), v13, v12);

    sub_2262D66F4();
    if (v15 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_5:
  v53 = v1;
  v67 = v14;
  sub_2262DE1D4(&v67);
  v16 = v67;
  v67 = 0;
  v68 = 0xE000000000000000;
  v17 = v16[2];
  if (v17)
  {
    v18 = v16 + 7;
    v19 = v16 + 7;
    do
    {
      v21 = *v19;
      v19 += 4;
      v20 = v21;
      if (v21)
      {
        v23 = *(v18 - 2);
        v22 = *(v18 - 1);
        v24 = *(v18 - 3);
        v65 = 95;
        v66 = 0xE100000000000000;

        MEMORY[0x22AA7C5B0](v24, v23);

        MEMORY[0x22AA7C5B0](58, 0xE100000000000000);
        MEMORY[0x22AA7C5B0](v22, v20);

        MEMORY[0x22AA7C5B0](v65, v66);
      }

      v18 = v19;
      --v17;
    }

    while (v17);
  }

  v25 = v63;
  v26 = v64;
  sub_2262DF61C(v64 + *(v61 + 20), v63, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = v58;
      sub_2262D902C(v25, v58);
      v32 = v26[1];
      v65 = *v26;
      v66 = v32;

      MEMORY[0x22AA7C5B0](95, 0xE100000000000000);
      v33 = v55;
      v34 = v31 + *(v54 + 20);
      sub_22635008C();
      v35 = sub_22635006C();
      v37 = v36;
      (*(v56 + 8))(v33, v57);
      MEMORY[0x22AA7C5B0](v35, v37);

      MEMORY[0x22AA7C5B0](v67, v68);

      v29 = v65;
      sub_2262DF5BC(v31, type metadata accessor for VisualAction.Kind.SystemTool);
      return v29;
    }

    v45 = v25[1];
    v46 = v25[3];
    v47 = v25[4];
    v48 = v25[5];
    v49 = v25[6];
    v50 = v26[1];
    v65 = *v26;
    v66 = v50;

    MEMORY[0x22AA7C5B0](95, 0xE100000000000000);

    MEMORY[0x22AA7C5B0](v47, v48);

    MEMORY[0x22AA7C5B0](v67, v68);

LABEL_19:

    return v65;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v39 = v59;
    v38 = v60;
    v40 = v53;
    (*(v60 + 32))(v59, v25, v53);
    v41 = v26[1];
    v65 = *v26;
    v66 = v41;

    MEMORY[0x22AA7C5B0](95, 0xE100000000000000);
    v42 = sub_22634F31C();
    MEMORY[0x22AA7C5B0](v42);

    MEMORY[0x22AA7C5B0](v67, v68);

    v29 = v65;
    (*(v38 + 8))(v39, v40);
    return v29;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_22635096C();
    v44 = *v26;
    v43 = v26[1];

    v65 = v44;
    v66 = v43;
    MEMORY[0x22AA7C5B0](0x536C61757369565FLL, 0xED00006863726165);
    MEMORY[0x22AA7C5B0](v67, v68);
    goto LABEL_19;
  }

  v28 = v26[1];
  v65 = *v26;
  v66 = v28;

  MEMORY[0x22AA7C5B0](0x746E456E65704F5FLL, 0xEB00000000797469);
  MEMORY[0x22AA7C5B0](v67, v68);

  v29 = v65;
  v30 = sub_22634FBEC();
  (*(*(v30 - 8) + 8))(v25, v30);
  return v29;
}

uint64_t sub_2262DC4AC()
{
  v1 = v0;
  v2 = sub_22634F34C();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22635007C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VisualAction.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2262DF61C(v1, v18, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2262D902C(v18, v14);
      v22 = &v14[*(v11 + 20)];
      sub_22635008C();
      v23 = sub_22635006C();
      (*(v7 + 8))(v10, v6);
      sub_2262DF5BC(v14, type metadata accessor for VisualAction.Kind.SystemTool);
      return v23;
    }

    v27 = *(v18 + 1);
    v28 = *(v18 + 3);
    v29 = *(v18 + 5);

    if (!v27)
    {

      return 0x6E65635365766173;
    }

    v21 = 1702257011;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = v31;
      (*(v31 + 32))(v5, v18, v2);
      v26 = sub_22634F31C();
      (*(v25 + 8))(v5, v2);
      return v26;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x65536C6175736956;
    }

    v20 = sub_22634FBEC();
    (*(*(v20 - 8) + 8))(v18, v20);
    v21 = 1852141647;
  }

  return v21 | 0x69746E4500000000;
}

char *sub_2262DC850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931B8, &qword_2263524C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_2262DC994(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2262DCB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793150, &qword_226352458);
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

char *sub_2262DCC9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2262DCDA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931C8, &qword_2263524D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931D0, &qword_2263524E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DCFC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793188, &qword_226352490);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2262DD0D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793198, &qword_2263524A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931A0, &qword_2263524A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DD204(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793190, &qword_226352498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DD324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793170, &qword_226352478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2262DD444(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793178, &unk_226352480);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2262DD634(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793158, &qword_226352460);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_2262DD6B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793188, &qword_226352490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_2262DD73C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931F8, &qword_226352508);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2262DD844(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931A8, &unk_2263524B0);
  v4 = *(sub_22634EEFC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2262DD968(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793158, &qword_226352460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793148, &qword_226352450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2262DDA9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2262DDBA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931C8, &qword_2263524D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931D0, &qword_2263524E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2262DDCD4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2262DDEB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793188, &qword_226352490);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2262DDFE4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931F8, &qword_226352508);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2262DE1D4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2262DF4F8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2262DE240(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2262DE240(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_226350C0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793148, &qword_226352450);
        v5 = sub_22635059C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2262DE418(v7, v8, a1, v4);
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
    return sub_2262DE348(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2262DE348(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_226350C4C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2262DE418(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_2262DECA8(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_2262DE9F4((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_226350C4C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_226350C4C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2262DCB70(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_2262DCB70((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_2262DE9F4((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2262DECA8(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_2262DEC1C(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_226350C4C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_2262DE9F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_226350C4C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_226350C4C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_2262DEC1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2262DECA8(v3);
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

void *sub_2262DECBC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2262DEE44(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2262DEF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v35 - v13);
  v42 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
LABEL_18:
    v27 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v27;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v27 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v15 - 32);
    v37 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    v38 = a3;
    v23 = v42;
    while (v19)
    {
LABEL_14:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v20;
      v28 = v26 | (v20 << 6);
      v29 = *(v23 + 48);
      v30 = sub_22634EEFC();
      (*(*(v30 - 8) + 16))(v11, v29 + *(*(v30 - 8) + 72) * v28, v30);
      v31 = *(v23 + 56);
      v32 = type metadata accessor for ActionContext();
      sub_2262DF61C(v31 + *(*(v32 - 8) + 72) * v28, &v11[*(v41 + 48)], type metadata accessor for ActionContext);
      a1 = v40;
      sub_2262DF684(v11, v40);
      sub_2262DF684(a1, a2);
      a3 = v38;
      if (v22 == v38)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v22;
      v33 = __OFADD__(v22++, 1);
      v20 = v27;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v20;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v25 >= v21)
      {
        break;
      }

      v19 = *(v15 + 8 * v25);
      ++v24;
      if (v19)
      {
        v20 = v25;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v34 = v20 + 1;
    }

    else
    {
      v34 = v21;
    }

    v27 = v34 - 1;
    a3 = result;
LABEL_23:
    v17 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2262DF254(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_22634EEFC();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2262DF5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2262DF61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262DF684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262DF6F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793218, &unk_2263525E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Analytics.Interval(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793218, &unk_2263525E0);
    v15 = *v3;
    v16 = sub_2263393B0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_226339AE4();
        v21 = v26;
      }

      sub_2262E47D4(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for Analytics.Interval);
      sub_2262E2200(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2262D67D8(v9, &qword_27D793218, &unk_2263525E0);
  }

  else
  {
    sub_2262E47D4(a1, v14, type metadata accessor for Analytics.Interval);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2262E34B4(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_2262DF948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_22634FF9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2262D67D8(a1, &unk_27D793BC0, &qword_2263525D8);
    sub_2262E1B48(a2, a3, v10);

    return sub_2262D67D8(v10, &unk_27D793BC0, &qword_2263525D8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2262E3608(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2262DFB20(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793210, &unk_2263525C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ResourceManager.Record();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793210, &unk_2263525C8);
    sub_2262E1CCC(a2, v8);
    v14 = sub_22634EEFC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2262D67D8(v8, &qword_27D793210, &unk_2263525C8);
  }

  else
  {
    sub_2262E47D4(a1, v12, type metadata accessor for ResourceManager.Record);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2262E3ACC(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_22634EEFC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2262DFD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for VisualAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793008, &unk_226351EC0);
    sub_2262E1E7C(a2, a3, v10);

    return sub_2262D67D8(v10, &qword_27D793008, &unk_226351EC0);
  }

  else
  {
    sub_2262E47D4(a1, v14, type metadata accessor for VisualAction);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2262E3CFC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2262DFF14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_22634EEFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2262D67D8(a1, &qword_27D793010, &unk_226354CE0);
    sub_2262E1FFC(a2, v8);
    v14 = sub_22634F34C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2262D67D8(v8, &qword_27D793010, &unk_226354CE0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2262E4094(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_22634F34C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2262E0140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_2262E443C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_22634EEFC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_2263394D8(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_22633B2CC();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_22634EEFC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);
      swift_unknownObjectRelease();
      sub_2262E2768(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_22634EEFC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_2262E0300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_2262E4608(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_22634EEFC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_2263394D8(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_22633B54C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_22634EEFC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_2262E2768(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_22634EEFC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_2262E04C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22634EEFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}