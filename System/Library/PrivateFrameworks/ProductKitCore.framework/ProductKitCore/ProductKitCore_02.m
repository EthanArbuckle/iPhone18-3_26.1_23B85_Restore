uint64_t sub_29EBE5220()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_29EBE5850;
  }

  else
  {
    v3 = sub_29EBE5334;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBE5350()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 312) = v2;
  *(v0 + 320) = v3;
  v4 = sub_29EC00968();
  v5 = sub_29EC00E98();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29EBB9000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x29EDAC460](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_29EBE5F88;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 56;
LABEL_11:

    return sub_29EBE9A58(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  v16 = *(v0 + 304);

  v17 = sub_29EC00668();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_29EC00658();
  sub_29EBF2B94();
  sub_29EC00648();
  v20 = v16;
  *(v0 + 328) = v16;
  v21 = *(v0 + 288);
  v22 = *(v0 + 256);

  if (v20)
  {

    v23 = v20;
    v24 = sub_29EC00968();
    v25 = sub_29EC00EB8();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 248);
      v26 = *(v0 + 256);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47[0] = v29;
      *v28 = 136315394;
      *(v0 + 232) = v20;
      v30 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v31 = sub_29EC00B48();
      v33 = sub_29EBD24D0(v31, v32, v47);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_29EBD24D0(v27, v26, v47);
      _os_log_impl(&dword_29EBB9000, v24, v25, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v29, -1, -1);
      MEMORY[0x29EDAC460](v28, -1, -1);
    }

    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *v34 = v0;
    v34[1] = sub_29EBE5A78;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 136;
    goto LABEL_11;
  }

  v36 = sub_29EC00968();
  v37 = sub_29EC00ED8();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 248);
    v38 = *(v0 + 256);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v47);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_29EBD24D0(v39, v38, v47);
    _os_log_impl(&dword_29EBB9000, v36, v37, "Fetch %s END -- Local load {filename: %s}", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v41, -1, -1);
    MEMORY[0x29EDAC460](v40, -1, -1);
  }

  sub_29EBF28E0(v2, v3);

  v42 = *(v0 + 240);
  v43 = *(v0 + 104);
  v44 = *(v0 + 128);
  v45 = *(v0 + 112);
  *v42 = *(v0 + 96);
  *(v42 + 8) = v43;
  *(v42 + 16) = v45;
  *(v42 + 32) = v44;
  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_29EBE586C()
{
  v24 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    v0[26] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EBD24D0(v9, v8, &v23);
    _os_log_impl(&dword_29EBB9000, v5, v6, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[46] = v16;
  *v16 = v0;
  v16[1] = sub_29EBE6480;
  v17 = v0[34];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[33];
  v21 = v0[31];

  return sub_29EBE9A58((v0 + 2), v21, v19, v20, v17, v18);
}

uint64_t sub_29EBE5A78()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBE5D6C;
  }

  else
  {
    v6 = sub_29EBE5BA4;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBE5BA4()
{
  v20 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 312);
  if (v5)
  {
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v19);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_29EBD24D0(v10, v9, &v19);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v12, -1, -1);
    MEMORY[0x29EDAC460](v11, -1, -1);
  }

  sub_29EBF28E0(v8, v7);

  v13 = *(v0 + 240);
  v14 = *(v0 + 144);
  v15 = *(v0 + 168);
  v16 = *(v0 + 152);
  *v13 = *(v0 + 136);
  *(v13 + 8) = v14;
  *(v13 + 16) = v16;
  *(v13 + 32) = v15;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_29EBE5D6C()
{
  v24 = v0;
  v1 = v0[43];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[43];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v23);
    *(v10 + 12) = 2080;
    v0[28] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, v23);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_29EBD24D0(v9, v8, v23);
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[41];
  v19 = v0[39];
  swift_willThrow();
  sub_29EBF28E0(v19, v17);

  v20 = v0[43];
  v21 = v0[1];

  return v21();
}

uint64_t sub_29EBE5F88()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBE6270;
  }

  else
  {
    v6 = sub_29EBE60B4;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBE60B4()
{
  v19 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  if (v5)
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v18);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EBD24D0(v9, v8, &v18);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s END -- load from CloudKit {cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  sub_29EBF28E0(v7, v6);

  v12 = *(v0 + 240);
  v13 = *(v0 + 64);
  v14 = *(v0 + 88);
  v15 = *(v0 + 72);
  *v12 = *(v0 + 56);
  *(v12 + 8) = v13;
  *(v12 + 16) = v15;
  *(v12 + 32) = v14;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_29EBE6270()
{
  v23 = v0;
  v1 = v0[45];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[45];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v22);
    *(v10 + 12) = 2080;
    v0[27] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, v22);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_29EBD24D0(v9, v8, v22);
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  v16 = v0[45];
  v17 = v0[39];
  v18 = v0[40];
  swift_willThrow();
  sub_29EBF28E0(v17, v18);
  v19 = v0[45];
  v20 = v0[1];

  return v20();
}

uint64_t sub_29EBE6480()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBE675C;
  }

  else
  {
    v6 = sub_29EBE65AC;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBE65AC()
{
  v18 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 304);
  if (v5)
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EBD24D0(v8, v7, &v17);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v10, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 24);
  v13 = *(v0 + 48);
  v14 = *(v0 + 32);
  *v11 = *(v0 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v14;
  *(v11 + 32) = v13;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_29EBE675C()
{
  v15 = v0;
  v1 = v0[36];
  v2 = v0[32];

  v3 = sub_29EC00968();
  v4 = sub_29EC00EB8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_29EBD24D0(v6, v5, v14);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v8, -1, -1);
    MEMORY[0x29EDAC460](v7, -1, -1);
  }

  v9 = v0[47];
  v10 = v0[38];
  swift_willThrow();

  v11 = v0[47];
  v12 = v0[1];

  return v12();
}

uint64_t sub_29EBE68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBE6920, a6, 0);
}

uint64_t sub_29EBE6920()
{
  v26 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = sub_29EC00988();
  v0[36] = __swift_project_value_buffer(v3, qword_2A188A090);

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EBD24D0(v9, v8, &v25);
    *(v10 + 22) = 2080;
    v12 = [v7 recordName];
    v13 = sub_29EC00AE8();
    v15 = v14;

    v16 = sub_29EBD24D0(v13, v15, &v25);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetch %s START {cacheName: %s, recordName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  v17 = v0[35];
  v18 = v0[32];
  v19 = *(v17 + 320);
  v20 = *(v17 + 328);
  v0[24] = v0[31];
  v0[25] = v18;
  v24 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  v0[37] = v22;
  *v22 = v0;
  v22[1] = sub_29EBE6C04;

  return (v24)(v0 + 22, v0 + 24);
}

uint64_t sub_29EBE6C04()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_29EBE7234;
  }

  else
  {
    v3 = sub_29EBE6D18;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBE6D34()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 312) = v2;
  *(v0 + 320) = v3;
  v4 = sub_29EC00968();
  v5 = sub_29EC00E98();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29EBB9000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x29EDAC460](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_29EBE7588;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 56;
LABEL_11:

    return sub_29EBE8AD0(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  v16 = *(v0 + 304);

  v17 = sub_29EC00668();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_29EC00658();
  sub_29EBF2B94();
  sub_29EC00648();
  v20 = v16;
  *(v0 + 328) = v16;
  v21 = *(v0 + 288);
  v22 = *(v0 + 256);

  if (v20)
  {

    v23 = v20;
    v24 = sub_29EC00968();
    v25 = sub_29EC00EB8();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 248);
      v26 = *(v0 + 256);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47[0] = v29;
      *v28 = 136315394;
      *(v0 + 232) = v20;
      v30 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v31 = sub_29EC00B48();
      v33 = sub_29EBD24D0(v31, v32, v47);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_29EBD24D0(v27, v26, v47);
      _os_log_impl(&dword_29EBB9000, v24, v25, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDAC460](v29, -1, -1);
      MEMORY[0x29EDAC460](v28, -1, -1);
    }

    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *v34 = v0;
    v34[1] = sub_29EBE745C;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 136;
    goto LABEL_11;
  }

  v36 = sub_29EC00968();
  v37 = sub_29EC00ED8();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 248);
    v38 = *(v0 + 256);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_29EBD24D0(0x5265746176697250, 0xED000064726F6365, v47);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_29EBD24D0(v39, v38, v47);
    _os_log_impl(&dword_29EBB9000, v36, v37, "Fetch %s END -- Local load {filename: %s}", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v41, -1, -1);
    MEMORY[0x29EDAC460](v40, -1, -1);
  }

  sub_29EBF28E0(v2, v3);

  v42 = *(v0 + 240);
  v43 = *(v0 + 104);
  v44 = *(v0 + 128);
  v45 = *(v0 + 112);
  *v42 = *(v0 + 96);
  *(v42 + 8) = v43;
  *(v42 + 16) = v45;
  *(v42 + 32) = v44;
  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_29EBE7250()
{
  v24 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    v0[26] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29EBD24D0(v9, v8, &v23);
    _os_log_impl(&dword_29EBB9000, v5, v6, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[46] = v16;
  *v16 = v0;
  v16[1] = sub_29EBE76B4;
  v17 = v0[34];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[33];
  v21 = v0[31];

  return sub_29EBE8AD0((v0 + 2), v21, v19, v20, v17, v18);
}

uint64_t sub_29EBE745C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBF2D00;
  }

  else
  {
    v6 = sub_29EBF2CF8;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBE7588()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBF2D28;
  }

  else
  {
    v6 = sub_29EBF2D10;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBE76B4()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBF2D24;
  }

  else
  {
    v6 = sub_29EBF2CF4;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBE77E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v10 = sub_29EC008F8();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBE78C8, a6, 0);
}

uint64_t sub_29EBE78C8()
{
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = sub_29EC00988();
  v5 = __swift_project_value_buffer(v4, qword_2A188A090);
  v0[25] = v5;
  sub_29EC01018();

  MEMORY[0x29EDAB670](v3, v2);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  v0[26] = 0x800000029EC08260;

  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_29EBE7A5C;
  v7 = v0[17];
  v8 = v0[13];
  v9 = v0[14];

  return sub_29EBC1394(0xD00000000000001FLL, 0x800000029EC08260, v5, v7, v8, v9);
}

uint64_t sub_29EBE7A5C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBE7BB4, v3, 0);
}

uint64_t sub_29EBE7BB4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[15];
  sub_29EC008C8();
  v4 = v3;
  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetch CloudKit Record START {recordID: %@}", v8, 0xCu);
    sub_29EBC6A78(v9, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v12 = v0[15];
  v11 = v0[16];

  v0[10] = v12;
  v13 = *(v11 + 24);
  v17 = (*(v11 + 16) + **(v11 + 16));
  v14 = *(*(v11 + 16) + 4);
  v15 = swift_task_alloc();
  v0[28] = v15;
  *v15 = v0;
  v15[1] = sub_29EBE7D98;

  return v17(v0 + 9, v0 + 10);
}

uint64_t sub_29EBE7D98()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_29EBE8634;
  }

  else
  {
    v3 = sub_29EBE7EAC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBE7EAC()
{
  v1 = v0[17];
  v0[30] = v0[9];
  return MEMORY[0x2A1C73D48](sub_29EBE7ED0, v1, 0);
}

uint64_t sub_29EBE7ED0()
{
  v87 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  if (!v1)
  {
    v23 = *(v0 + 120);
    v24 = sub_29EC00968();
    v25 = sub_29EC00EB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 120);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_29EBB9000, v24, v25, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v27, 0xCu);
      sub_29EBC6A78(v28, &qword_2A1889F10, &qword_29EC02D20);
      MEMORY[0x29EDAC460](v28, -1, -1);
      MEMORY[0x29EDAC460](v27, -1, -1);
    }

    sub_29EBBD72C();
    v30 = swift_allocError();
    *v31 = xmmword_29EC01BA0;
    *(v31 + 16) = 2;
    swift_willThrow();
    v32 = *(v0 + 200);
    v33 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    v34 = v33;
    v35 = v30;
    v36 = sub_29EC00968();
    v37 = sub_29EC00EB8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 120);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v85 = v41;
      *v39 = 136315394;
      *(v0 + 88) = v30;
      v42 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v43 = sub_29EC00B48();
      v45 = sub_29EBD24D0(v43, v44, &v85);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v38;
      *v40 = v38;
      v46 = v38;
      _os_log_impl(&dword_29EBB9000, v36, v37, "### Error fetching from CloudKit {error: %s, recordID: %@}", v39, 0x16u);
      sub_29EBC6A78(v40, &qword_2A1889F10, &qword_29EC02D20);
      MEMORY[0x29EDAC460](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x29EDAC460](v41, -1, -1);
      MEMORY[0x29EDAC460](v39, -1, -1);
    }

    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    swift_allocError();
    v50 = v49;
    v51 = v30;
    sub_29EBEACDC(v30, v50);
    swift_willThrow();

    v52 = v48;
    v53 = v47;
    goto LABEL_14;
  }

  v3 = (v0 + 16);
  v4 = *(v0 + 120);
  (*(*(v0 + 168) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 160));
  v5 = v4;
  v6 = v1;
  v7 = sub_29EC00968();
  v8 = sub_29EC00ED8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  if (v9)
  {
    v83 = *(v0 + 192);
    v84 = v6;
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 120);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2048;
    v18 = v15;
    sub_29EC008C8();
    sub_29EC008B8();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
    *(v16 + 14) = v20;
    _os_log_impl(&dword_29EBB9000, v7, v8, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v16, 0x16u);
    sub_29EBC6A78(v17, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v17, -1, -1);
    v22 = v16;
    v3 = (v0 + 16);
    MEMORY[0x29EDAC460](v22, -1, -1);

    v21(v83, v14);
    v6 = v84;
  }

  else
  {
    v55 = *(v0 + 160);
    v54 = *(v0 + 168);

    v56 = *(v54 + 8);
    v56(v11, v55);
    v56(v10, v55);
  }

  v57 = *(v0 + 200);
  v58 = sub_29EC00968();
  v59 = sub_29EC00ED8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_29EBB9000, v58, v59, "Will parse public cloudkit record", v60, 2u);
    MEMORY[0x29EDAC460](v60, -1, -1);
  }

  v61 = *(v0 + 232);
  v63 = *(v0 + 144);
  v62 = *(v0 + 152);

  v85 = v63;
  v86 = v62;
  sub_29EBBFF48(v63, v62);
  sub_29EBE28A4(v6, &v85, v3);
  if (v61)
  {
    v65 = *(v0 + 144);
    v64 = *(v0 + 152);

    v52 = v65;
    v53 = v64;
LABEL_14:
    sub_29EBBFF9C(v52, v53);
    v67 = *(v0 + 184);
    v66 = *(v0 + 192);
    v68 = *(v0 + 176);

    v69 = *(v0 + 8);

    return v69();
  }

  v71 = *(v0 + 200);
  v72 = sub_29EC00968();
  v73 = sub_29EC00ED8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_29EBB9000, v72, v73, "Did parse public cloudkit record", v74, 2u);
    MEMORY[0x29EDAC460](v74, -1, -1);
  }

  v75 = *(v0 + 136);
  v77 = *(v0 + 104);
  v76 = *(v0 + 112);

  v85 = 0;
  v86 = 0xE000000000000000;
  sub_29EC01018();

  v85 = 0xD000000000000018;
  v86 = 0x800000029EC08280;
  MEMORY[0x29EDAB670](v77, v76);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  v79 = v85;
  v78 = v86;
  *(v0 + 248) = v86;
  v80 = swift_task_alloc();
  *(v0 + 256) = v80;
  v80[2] = v77;
  v80[3] = v76;
  v80[4] = v3;
  v80[5] = v75;
  v81 = swift_task_alloc();
  *(v0 + 264) = v81;
  *v81 = v0;
  v81[1] = sub_29EBE88B8;
  v82 = *(v0 + 200);

  return sub_29EBC1168(v79, v78, dword_29EC05EC8);
}

uint64_t sub_29EBE8650()
{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[15];
  (*(v0[21] + 8))(v0[24], v0[20]);
  v4 = v3;
  v5 = v1;
  v6 = sub_29EC00968();
  v7 = sub_29EC00EB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v9 = 136315394;
    v0[11] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, &v27);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v16 = v8;
    _os_log_impl(&dword_29EBB9000, v6, v7, "### Error fetching from CloudKit {error: %s, recordID: %@}", v9, 0x16u);
    sub_29EBC6A78(v10, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  v18 = v0[18];
  v17 = v0[19];
  sub_29EBBD72C();
  swift_allocError();
  v20 = v19;
  v21 = v1;
  sub_29EBEACDC(v1, v20);
  swift_willThrow();

  sub_29EBBFF9C(v18, v17);
  v23 = v0[23];
  v22 = v0[24];
  v24 = v0[22];

  v25 = v0[1];

  return v25();
}

uint64_t sub_29EBE88B8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 136);
  v6 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBE8A08, v4, 0);
}

uint64_t sub_29EBE8A08()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 96);

  sub_29EBBFF9C(v5, v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  *v6 = *(v0 + 16);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v10;
  *(v6 + 48) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_29EBE8AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v8 = sub_29EC008F8();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBE8BB4, a6, 0);
}

uint64_t sub_29EBE8BB4()
{
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = sub_29EC00988();
  v5 = __swift_project_value_buffer(v4, qword_2A188A090);
  v0[21] = v5;
  sub_29EC01018();

  MEMORY[0x29EDAB670](v3, v2);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  v0[22] = 0x800000029EC08260;

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_29EBE8D48;
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];

  return sub_29EBC1394(0xD00000000000001FLL, 0x800000029EC08260, v5, v7, v8, v9);
}

uint64_t sub_29EBE8D48()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBE8EA0, v3, 0);
}

uint64_t sub_29EBE8EA0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[13];
  sub_29EC008C8();
  v4 = v3;
  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetch CloudKit Record START {recordID: %@}", v8, 0xCu);
    sub_29EBC6A78(v9, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v12 = v0[13];
  v11 = v0[14];

  v0[8] = v12;
  v13 = *(v11 + 24);
  v17 = (*(v11 + 16) + **(v11 + 16));
  v14 = *(*(v11 + 16) + 4);
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_29EBE9084;

  return v17(v0 + 7, v0 + 8);
}

uint64_t sub_29EBE9084()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_29EBE98EC;
  }

  else
  {
    v3 = sub_29EBE9198;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBE9198()
{
  v1 = v0[15];
  v0[26] = v0[7];
  return MEMORY[0x2A1C73D48](sub_29EBE91BC, v1, 0);
}

uint64_t sub_29EBE91BC()
{
  v76 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (!v1)
  {
    v23 = *(v0 + 104);
    v24 = sub_29EC00968();
    v25 = sub_29EC00EB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_29EBB9000, v24, v25, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v27, 0xCu);
      sub_29EBC6A78(v28, &qword_2A1889F10, &qword_29EC02D20);
      MEMORY[0x29EDAC460](v28, -1, -1);
      MEMORY[0x29EDAC460](v27, -1, -1);
    }

    sub_29EBBD72C();
    v30 = swift_allocError();
    *v31 = xmmword_29EC01BA0;
    *(v31 + 16) = 2;
    swift_willThrow();
    v32 = *(v0 + 168);
    v33 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v34 = v33;
    v35 = v30;
    v36 = sub_29EC00968();
    v37 = sub_29EC00EB8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 104);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75[0] = v41;
      *v39 = 136315394;
      *(v0 + 72) = v30;
      v42 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v43 = sub_29EC00B48();
      v45 = sub_29EBD24D0(v43, v44, v75);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v38;
      *v40 = v38;
      v46 = v38;
      _os_log_impl(&dword_29EBB9000, v36, v37, "### Error fetching from CloudKit {error: %s, recordID: %@}", v39, 0x16u);
      sub_29EBC6A78(v40, &qword_2A1889F10, &qword_29EC02D20);
      MEMORY[0x29EDAC460](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x29EDAC460](v41, -1, -1);
      MEMORY[0x29EDAC460](v39, -1, -1);
    }

    swift_allocError();
    v48 = v47;
    v49 = v30;
    sub_29EBEACDC(v30, v48);
    swift_willThrow();

    goto LABEL_14;
  }

  v3 = (v0 + 16);
  v4 = *(v0 + 104);
  (*(*(v0 + 136) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
  v5 = v4;
  v6 = v1;
  v7 = sub_29EC00968();
  v8 = sub_29EC00ED8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  if (v9)
  {
    v73 = *(v0 + 160);
    v74 = v6;
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2048;
    v18 = v15;
    sub_29EC008C8();
    sub_29EC008B8();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
    *(v16 + 14) = v20;
    _os_log_impl(&dword_29EBB9000, v7, v8, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v16, 0x16u);
    sub_29EBC6A78(v17, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v17, -1, -1);
    v22 = v16;
    v3 = (v0 + 16);
    MEMORY[0x29EDAC460](v22, -1, -1);

    v21(v73, v14);
    v6 = v74;
  }

  else
  {
    v51 = *(v0 + 128);
    v50 = *(v0 + 136);

    v52 = *(v50 + 8);
    v52(v11, v51);
    v52(v10, v51);
  }

  v53 = *(v0 + 168);
  v54 = sub_29EC00968();
  v55 = sub_29EC00ED8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_29EBB9000, v54, v55, "Will parse public cloudkit record", v56, 2u);
    MEMORY[0x29EDAC460](v56, -1, -1);
  }

  v57 = *(v0 + 200);

  sub_29EBE2304(v6, v3);
  if (v57)
  {

LABEL_14:
    v59 = *(v0 + 152);
    v58 = *(v0 + 160);
    v60 = *(v0 + 144);

    v61 = *(v0 + 8);

    return v61();
  }

  v63 = *(v0 + 168);
  v64 = sub_29EC00968();
  v65 = sub_29EC00ED8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_29EBB9000, v64, v65, "Did parse public cloudkit record", v66, 2u);
    MEMORY[0x29EDAC460](v66, -1, -1);
  }

  v67 = *(v0 + 120);
  v69 = *(v0 + 88);
  v68 = *(v0 + 96);

  sub_29EC01018();

  v75[0] = 0xD000000000000018;
  v75[1] = 0x800000029EC08280;
  MEMORY[0x29EDAB670](v69, v68);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  *(v0 + 216) = 0x800000029EC08280;
  v70 = swift_task_alloc();
  *(v0 + 224) = v70;
  v70[2] = v69;
  v70[3] = v68;
  v70[4] = v3;
  v70[5] = v67;
  v71 = swift_task_alloc();
  *(v0 + 232) = v71;
  *v71 = v0;
  v71[1] = sub_29EBE9908;
  v72 = *(v0 + 168);

  return sub_29EBC1168(0xD000000000000018, 0x800000029EC08280, dword_29EC05F20);
}

uint64_t sub_29EBE9908()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 120);
  v6 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBF2CFC, v4, 0);
}

uint64_t sub_29EBE9A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v8 = sub_29EC008F8();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBE9B3C, a6, 0);
}

uint64_t sub_29EBE9B3C()
{
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = sub_29EC00988();
  v5 = __swift_project_value_buffer(v4, qword_2A188A090);
  v0[21] = v5;
  sub_29EC01018();

  MEMORY[0x29EDAB670](v3, v2);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  v0[22] = 0x800000029EC08260;

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_29EBE9CD0;
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];

  return sub_29EBC1394(0xD00000000000001FLL, 0x800000029EC08260, v5, v7, v8, v9);
}

uint64_t sub_29EBE9CD0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBE9E28, v3, 0);
}

uint64_t sub_29EBE9E28()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[13];
  sub_29EC008C8();
  v4 = v3;
  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_29EBB9000, v5, v6, "Fetch CloudKit Record START {recordID: %@}", v8, 0xCu);
    sub_29EBC6A78(v9, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  v12 = v0[13];
  v11 = v0[14];

  v0[8] = v12;
  v13 = *(v11 + 24);
  v17 = (*(v11 + 16) + **(v11 + 16));
  v14 = *(*(v11 + 16) + 4);
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_29EBEA00C;

  return v17(v0 + 7, v0 + 8);
}

uint64_t sub_29EBEA00C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_29EBEA874;
  }

  else
  {
    v3 = sub_29EBEA120;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBEA120()
{
  v1 = v0[15];
  v0[26] = v0[7];
  return MEMORY[0x2A1C73D48](sub_29EBEA144, v1, 0);
}

uint64_t sub_29EBEA144()
{
  v76 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (!v1)
  {
    v23 = *(v0 + 104);
    v24 = sub_29EC00968();
    v25 = sub_29EC00EB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_29EBB9000, v24, v25, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v27, 0xCu);
      sub_29EBC6A78(v28, &qword_2A1889F10, &qword_29EC02D20);
      MEMORY[0x29EDAC460](v28, -1, -1);
      MEMORY[0x29EDAC460](v27, -1, -1);
    }

    sub_29EBBD72C();
    v30 = swift_allocError();
    *v31 = xmmword_29EC01BA0;
    *(v31 + 16) = 2;
    swift_willThrow();
    v32 = *(v0 + 168);
    v33 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v34 = v33;
    v35 = v30;
    v36 = sub_29EC00968();
    v37 = sub_29EC00EB8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 104);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75[0] = v41;
      *v39 = 136315394;
      *(v0 + 72) = v30;
      v42 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      v43 = sub_29EC00B48();
      v45 = sub_29EBD24D0(v43, v44, v75);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v38;
      *v40 = v38;
      v46 = v38;
      _os_log_impl(&dword_29EBB9000, v36, v37, "### Error fetching from CloudKit {error: %s, recordID: %@}", v39, 0x16u);
      sub_29EBC6A78(v40, &qword_2A1889F10, &qword_29EC02D20);
      MEMORY[0x29EDAC460](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x29EDAC460](v41, -1, -1);
      MEMORY[0x29EDAC460](v39, -1, -1);
    }

    swift_allocError();
    v48 = v47;
    v49 = v30;
    sub_29EBEACDC(v30, v48);
    swift_willThrow();

    goto LABEL_14;
  }

  v3 = (v0 + 16);
  v4 = *(v0 + 104);
  (*(*(v0 + 136) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
  v5 = v4;
  v6 = v1;
  v7 = sub_29EC00968();
  v8 = sub_29EC00ED8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  if (v9)
  {
    v73 = *(v0 + 160);
    v74 = v6;
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2048;
    v18 = v15;
    sub_29EC008C8();
    sub_29EC008B8();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
    *(v16 + 14) = v20;
    _os_log_impl(&dword_29EBB9000, v7, v8, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v16, 0x16u);
    sub_29EBC6A78(v17, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v17, -1, -1);
    v22 = v16;
    v3 = (v0 + 16);
    MEMORY[0x29EDAC460](v22, -1, -1);

    v21(v73, v14);
    v6 = v74;
  }

  else
  {
    v51 = *(v0 + 128);
    v50 = *(v0 + 136);

    v52 = *(v50 + 8);
    v52(v11, v51);
    v52(v10, v51);
  }

  v53 = *(v0 + 168);
  v54 = sub_29EC00968();
  v55 = sub_29EC00ED8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_29EBB9000, v54, v55, "Will parse public cloudkit record", v56, 2u);
    MEMORY[0x29EDAC460](v56, -1, -1);
  }

  v57 = *(v0 + 200);

  sub_29EBE2304(v6, v3);
  if (v57)
  {

LABEL_14:
    v59 = *(v0 + 152);
    v58 = *(v0 + 160);
    v60 = *(v0 + 144);

    v61 = *(v0 + 8);

    return v61();
  }

  v63 = *(v0 + 168);
  v64 = sub_29EC00968();
  v65 = sub_29EC00ED8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_29EBB9000, v64, v65, "Did parse public cloudkit record", v66, 2u);
    MEMORY[0x29EDAC460](v66, -1, -1);
  }

  v67 = *(v0 + 120);
  v69 = *(v0 + 88);
  v68 = *(v0 + 96);

  sub_29EC01018();

  v75[0] = 0xD000000000000018;
  v75[1] = 0x800000029EC08280;
  MEMORY[0x29EDAB670](v69, v68);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  *(v0 + 216) = 0x800000029EC08280;
  v70 = swift_task_alloc();
  *(v0 + 224) = v70;
  v70[2] = v69;
  v70[3] = v68;
  v70[4] = v3;
  v70[5] = v67;
  v71 = swift_task_alloc();
  *(v0 + 232) = v71;
  *v71 = v0;
  v71[1] = sub_29EBEAAE4;
  v72 = *(v0 + 168);

  return sub_29EBC1168(0xD000000000000018, 0x800000029EC08280, &unk_29EC05F38);
}

uint64_t sub_29EBEA890()
{
  v26 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[13];
  (*(v0[17] + 8))(v0[20], v0[16]);
  v4 = v3;
  v5 = v1;
  v6 = sub_29EC00968();
  v7 = sub_29EC00EB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    v0[9] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, &v25);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v16 = v8;
    _os_log_impl(&dword_29EBB9000, v6, v7, "### Error fetching from CloudKit {error: %s, recordID: %@}", v9, 0x16u);
    sub_29EBC6A78(v10, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v9, -1, -1);
  }

  sub_29EBBD72C();
  swift_allocError();
  v18 = v17;
  v19 = v1;
  sub_29EBEACDC(v1, v18);
  swift_willThrow();

  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[18];

  v23 = v0[1];

  return v23();
}

uint64_t sub_29EBEAAE4()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 120);
  v6 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBEAC34, v4, 0);
}

uint64_t sub_29EBEAC34()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 80);

  v5 = *(v0 + 24);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 32) = v6;

  v8 = *(v0 + 8);

  return v8();
}

void sub_29EBEACDC(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
  if (!swift_dynamicCast())
  {
    type metadata accessor for CKError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_29EBF2A70(&qword_2A1889C70, 255, type metadata accessor for CKError);
    sub_29EC00758();

    if ((v6 - 3) < 2)
    {
      goto LABEL_7;
    }

    if (v6 == 11)
    {
      v3 = 9;
      goto LABEL_9;
    }

    if (v6 == 36)
    {
LABEL_7:
      v3 = 2;
    }

    else
    {
LABEL_8:
      v3 = 0;
    }

LABEL_9:
    v4 = 0;
    v5 = 2;
    goto LABEL_10;
  }

  v3 = v7;
  v4 = v8;
  v5 = v9;
LABEL_10:

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_29EBEAE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = a4;
  *(v4 + 104) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  return MEMORY[0x2A1C73D48](sub_29EBEAE5C, a4, 0);
}

uint64_t sub_29EBEAE5C()
{
  v26 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_29EC00988();
  v0[16] = __swift_project_value_buffer(v2, qword_2A188A090);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_29EBD24D0(v6, v5, &v25);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Will cache record {filename: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x29EDAC460](v8, -1, -1);
    MEMORY[0x29EDAC460](v7, -1, -1);
  }

  v9 = sub_29EC00698();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_29EC00688();
  sub_29EBF2A08();
  v12 = sub_29EC00678();
  v0[17] = v12;
  v0[18] = v13;
  v14 = v12;
  v15 = v13;
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];

  v19 = *(v16 + 304);
  v20 = *(v16 + 312);
  v0[9] = v18;
  v0[10] = v17;
  v0[11] = v14;
  v0[12] = v15;
  v24 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_29EBEB138;

  return (v24)(v0 + 9, v0 + 11);
}

uint64_t sub_29EBEB138()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_29EBEB3C4;
  }

  else
  {
    v3 = sub_29EBEB24C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBEB268()
{
  v15 = v0;
  v1 = v0[16];
  v2 = v0[14];

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[17];
  v6 = v0[18];
  if (v5)
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_29EBD24D0(v9, v8, &v14);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Did cache record {filename: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  sub_29EBBFF9C(v7, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EBEB3E0()
{
  sub_29EBBFF9C(v0[17], v0[18]);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

uint64_t sub_29EBEB444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 88) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  return MEMORY[0x2A1C73D48](sub_29EBEB478, a4, 0);
}

uint64_t sub_29EBEB478()
{
  v26 = v0;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_29EC00988();
  v0[14] = __swift_project_value_buffer(v2, qword_2A188A090);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_29EBD24D0(v6, v5, &v25);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Will cache record {filename: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x29EDAC460](v8, -1, -1);
    MEMORY[0x29EDAC460](v7, -1, -1);
  }

  v9 = sub_29EC00698();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_29EC00688();
  sub_29EBF1FE4();
  v12 = sub_29EC00678();
  v0[15] = v12;
  v0[16] = v13;
  v14 = v12;
  v15 = v13;
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];

  v19 = *(v16 + 304);
  v20 = *(v16 + 312);
  v0[7] = v18;
  v0[8] = v17;
  v0[9] = v14;
  v0[10] = v15;
  v24 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_29EBEB754;

  return (v24)(v0 + 7, v0 + 9);
}

uint64_t sub_29EBEB754()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_29EBEB9E0;
  }

  else
  {
    v3 = sub_29EBEB868;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBEB884()
{
  v15 = v0;
  v1 = v0[14];
  v2 = v0[12];

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[15];
  v6 = v0[16];
  if (v5)
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_29EBD24D0(v9, v8, &v14);
    _os_log_impl(&dword_29EBB9000, v3, v4, "Did cache record {filename: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  sub_29EBBFF9C(v7, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EBEB9FC()
{
  sub_29EBBFF9C(v0[15], v0[16]);
  v1 = v0[18];
  v2 = v0[1];

  return v2();
}

uint64_t PersonalizationAssetManager.deinit()
{
  v1 = *(v0 + 320);
  v10[12] = *(v0 + 304);
  v10[13] = v1;
  v2 = *(v0 + 352);
  v10[14] = *(v0 + 336);
  v10[15] = v2;
  v3 = *(v0 + 256);
  v10[8] = *(v0 + 240);
  v10[9] = v3;
  v4 = *(v0 + 288);
  v10[10] = *(v0 + 272);
  v10[11] = v4;
  v5 = *(v0 + 192);
  v10[4] = *(v0 + 176);
  v10[5] = v5;
  v6 = *(v0 + 224);
  v10[6] = *(v0 + 208);
  v10[7] = v6;
  v7 = *(v0 + 128);
  v10[0] = *(v0 + 112);
  v10[1] = v7;
  v8 = *(v0 + 160);
  v10[2] = *(v0 + 144);
  v10[3] = v8;
  sub_29EBF0B80(v10);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonalizationAssetManager.__deallocating_deinit()
{
  v1 = *(v0 + 320);
  v10[12] = *(v0 + 304);
  v10[13] = v1;
  v2 = *(v0 + 352);
  v10[14] = *(v0 + 336);
  v10[15] = v2;
  v3 = *(v0 + 256);
  v10[8] = *(v0 + 240);
  v10[9] = v3;
  v4 = *(v0 + 288);
  v10[10] = *(v0 + 272);
  v10[11] = v4;
  v5 = *(v0 + 192);
  v10[4] = *(v0 + 176);
  v10[5] = v5;
  v6 = *(v0 + 224);
  v10[6] = *(v0 + 208);
  v10[7] = v6;
  v7 = *(v0 + 128);
  v10[0] = *(v0 + 112);
  v10[1] = v7;
  v8 = *(v0 + 160);
  v10[2] = *(v0 + 144);
  v10[3] = v8;
  sub_29EBF0B80(v10);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.stableBluetoothIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_29EBEBBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000029EC080D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29EC011F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29EBEBC68(uint64_t a1)
{
  v2 = sub_29EBF0BB0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBEBCA4(uint64_t a1)
{
  v2 = sub_29EBF0BB0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A118, &qword_29EC051E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0BB0();
  sub_29EC01308();
  sub_29EC01198();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A128, &qword_29EC051E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0BB0();
  sub_29EC012F8();
  if (!v2)
  {
    v11 = sub_29EC01158();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_29EBEBFA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A118, &qword_29EC051E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0BB0();
  sub_29EC01308();
  sub_29EC01198();
  return (*(v4 + 8))(v7, v3);
}

double static PersonalizationAssetManager.PrePairingAssetInfo.fixture_airtag_anusree_AB21.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_29EBF0C04(&unk_2A254D5F0);
  v4 = v3;
  v5 = sub_29EBF0C04(&unk_2A254D618);
  *&v12 = v2;
  *(&v12 + 1) = v4;
  v11[3] = MEMORY[0x29EDB9B70];
  v11[4] = MEMORY[0x29EDB9B68];
  v11[0] = v5;
  v11[1] = v6;
  v7 = __swift_project_boxed_opaque_existential_1Tm(v11, MEMORY[0x29EDB9B70]);
  v8 = *v7;
  v9 = v7[1];
  sub_29EBBFF48(v2, v4);
  sub_29EBEFB20(v8, v9);
  sub_29EBBFF9C(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = *&v12;
  *a1 = v12;
  return result;
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static PersonalizationAssetManager.PrePairingAssetInfo.fixture_airpods_test1.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EBF0C04(&unk_2A254D648);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.scannedBluetoothData.getter()
{
  v1 = *v0;
  sub_29EBBFF48(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_29EBEC210(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_29EC00888();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_29EBEC27C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_29EC009F8();
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29EC00B28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29EC009C8();
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  v34 = sub_29EBEC210(4, 17, *v1, v13);
  v35 = v15;
  sub_29EC009B8();
  sub_29EC00B18();
  v16 = sub_29EC00AF8();
  v18 = v17;

  (*(v6 + 8))(v9, v5);
  if (v18 >> 60 == 15)
  {
    result = sub_29EC010D8();
    __break(1u);
  }

  else
  {
    v19 = sub_29EBEC210(0, 3, v14, v13);
    v21 = v20;
    v38 = v16;
    v39 = v18;
    v36 = MEMORY[0x29EDB9B70];
    v37 = MEMORY[0x29EDB9B68];
    v34 = v19;
    v35 = v20;
    v22 = __swift_project_boxed_opaque_existential_1Tm(&v34, MEMORY[0x29EDB9B70]);
    v23 = *v22;
    v24 = v22[1];
    sub_29EBF2A5C(v16, v18);
    sub_29EBBFF48(v19, v21);
    sub_29EBEFB20(v23, v24);
    sub_29EBBFF9C(v19, v21);
    sub_29EBF28E0(v16, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v34);
    v25 = v38;
    v26 = v39;
    v34 = v38;
    v35 = v39;
    sub_29EC009D8();
    sub_29EC009E8();
    (*(v30 + 8))(v4, v32);
    sub_29EC00A48();
    sub_29EBF2A70(&qword_2A188A248, 255, MEMORY[0x29EDB97D0]);
    sub_29EBF2AB8();
    sub_29EC00A38();
    (*(v29 + 8))(v12, v31);
    return sub_29EBBFF9C(v25, v26);
  }

  return result;
}

unint64_t PersonalizationAssetManager.PrePairingAssetInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v16 = *v0;
  sub_29EC01018();

  v3 = sub_29EBEC210(0, 3, v1, v2);
  v5 = v4;
  sub_29EBD92DC(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0C0, &qword_29EC05170);
  sub_29EBF1EAC(&qword_2A188A0C8, &qword_2A188A0C0, &qword_29EC05170);
  v6 = sub_29EC00A88();
  v8 = v7;
  sub_29EBBFF9C(v3, v5);

  MEMORY[0x29EDAB670](v6, v8);

  MEMORY[0x29EDAB670](0x65655379656B202CLL, 0xEB00000000203A64);
  v9 = sub_29EBEC210(4, 17, v16, v2);
  v11 = v10;
  sub_29EBD92DC(v9, v10);
  v12 = sub_29EC00A88();
  v14 = v13;
  sub_29EBBFF9C(v9, v11);

  MEMORY[0x29EDAB670](v12, v14);

  MEMORY[0x29EDAB670](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_29EBEC900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000029EC080F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29EC011F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29EBEC994(uint64_t a1)
{
  v2 = sub_29EBF0CE0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBEC9D0(uint64_t a1)
{
  v2 = sub_29EBF0CE0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A130, &qword_29EC051F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBBFF48(v8, v9);
  sub_29EBF0CE0();
  sub_29EC01308();
  v12 = v8;
  v13 = v9;
  sub_29EBF0D34();
  sub_29EC011C8();
  sub_29EBBFF9C(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A148, &qword_29EC051F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0CE0();
  sub_29EC012F8();
  if (!v2)
  {
    sub_29EBF0D88();
    sub_29EC01188();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_29EBECD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_29EBEE93C(a1, a2, a3);
  }

  sub_29EC01018();
  MEMORY[0x29EDAB670](0xD000000000000012, 0x800000029EC08190);
  MEMORY[0x29EDAB670](a2, a3);
  MEMORY[0x29EDAB670](0x656372756F537B20, 0xEF203A657079542ELL);
  MEMORY[0x29EDAB670](0x64726F6365524B43, 0xED000065756C6156);
  MEMORY[0x29EDAB670](0x746567726154202CLL, 0xEF203A657079542ELL);
  MEMORY[0x29EDAB670](0x676E69727453, 0xE600000000000000);
  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  sub_29EBBD72C();
  swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0xE000000000000000;
  *(v6 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_29EBECE74()
{
  v1 = 0x7461446567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_29EBECED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EBF1C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EBECF0C(uint64_t a1)
{
  v2 = sub_29EBF0DDC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBECF48(uint64_t a1)
{
  v2 = sub_29EBF0DDC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t PersonalizationAssetManager.PrivateRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A158, &qword_29EC05200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v14 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0DDC();
  sub_29EC01308();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_29EC01198();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_29EBBFF48(v16, v15);
    sub_29EBF0D34();
    sub_29EC011C8();
    sub_29EBBFF9C(v18, v19);
    LOBYTE(v18) = 2;
    sub_29EC011B8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationAssetManager.PrivateRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A168, &qword_29EC05208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0DDC();
  sub_29EC012F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_29EC01158();
  v21 = v12;
  v24 = 1;
  sub_29EBF0D88();
  sub_29EC01188();
  v19 = v22;
  v20 = v23;
  LOBYTE(v22) = 2;
  v13 = sub_29EC01178();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v14 = v21;
  *a2 = v11;
  a2[1] = v14;
  v16 = v19;
  a2[2] = v19;
  a2[3] = v15;
  a2[4] = v13;

  sub_29EBBFF48(v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_29EBBFF9C(v16, v15);
}

uint64_t sub_29EBED40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = a7;
  v98 = a6;
  v109 = a3;
  v12 = sub_29EC00A28();
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v103 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EC009C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v99 = (&v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v94 - v20;
  v22 = a5[1];
  v108 = *a5;
  v112 = v108;
  v113 = v22;
  v114 = v22;
  sub_29EBEC27C(&v94 - v20);
  sub_29EC009A8();
  v23 = *(v16 + 8);
  v106 = v16 + 8;
  v107 = v15;
  v105 = v23;
  v23(v21, v15);
  v24 = v112;
  v25 = v113;
  v26 = sub_29EC00888();
  v28 = v27;
  sub_29EBBFF9C(v24, v25);
  v29 = sub_29EC00898();
  v31 = v30;
  sub_29EBBFF9C(v26, v28);
  v104 = a4;
  if (v29 == a1 && v31 == a2)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_29EC011F8();
  }

  v112 = 0;
  v113 = 0xE000000000000000;
  sub_29EC01018();
  MEMORY[0x29EDAB670](0xD000000000000028, 0x800000029EC08300);
  MEMORY[0x29EDAB670](a1, a2);

  MEMORY[0x29EDAB670](0xD00000000000001BLL, 0x800000029EC08330);
  v33 = v108;
  v34 = v114;
  v110 = v108;
  v111 = v114;
  sub_29EBEC27C(v21);
  sub_29EC009A8();
  v102 = v7;
  v105(v21, v107);
  v35 = v110;
  v36 = v111;
  v37 = sub_29EC00888();
  v39 = v38;
  sub_29EBBFF9C(v35, v36);
  v40 = sub_29EC00898();
  v42 = v41;
  sub_29EBBFF9C(v37, v39);
  MEMORY[0x29EDAB670](v40, v42);

  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  v43 = v113;
  if ((v32 & 1) == 0)
  {
    v60 = v112;
    sub_29EBBFF9C(v33, v34);
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_29EC01018();

    v112 = 0xD000000000000016;
    v113 = 0x800000029EC08350;
    MEMORY[0x29EDAB670](v60, v43);

    v61 = v112;
    v62 = v113;
    sub_29EBBD72C();
    swift_allocError();
    *v63 = v61;
    *(v63 + 8) = v62;
    *(v63 + 16) = 0;
    swift_willThrow();
    v58 = v109;
    v59 = v104;
    return sub_29EBBFF9C(v58, v59);
  }

  v44 = v109;
  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v45 = sub_29EC00988();
  v46 = __swift_project_value_buffer(v45, qword_2A188A090);
  v47 = v104;
  sub_29EBBFF48(v44, v104);
  v96 = v46;
  v48 = sub_29EC00968();
  v49 = sub_29EC00E98();
  sub_29EBBFF9C(v44, v47);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v112 = v51;
    *v50 = 136315138;
    sub_29EBBFF48(v44, v47);
    v52 = sub_29EC00848();
    v54 = v53;
    sub_29EBBFF9C(v109, v47);
    v55 = sub_29EBD24D0(v52, v54, &v112);

    *(v50 + 4) = v55;
    v44 = v109;
    _os_log_impl(&dword_29EBB9000, v48, v49, "Decrypting image: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x29EDAC460](v51, -1, -1);
    MEMORY[0x29EDAC460](v50, -1, -1);
  }

  v56 = v108;
  sub_29EBBFF48(v44, v47);
  v57 = v102;
  sub_29EBEDD60(v44, v47);
  if (v57)
  {
    sub_29EBBFF9C(v56, v114);
    v58 = v44;
    v59 = v47;
    return sub_29EBBFF9C(v58, v59);
  }

  v112 = v56;
  v113 = v114;
  v65 = v99;
  sub_29EBEC27C(v99);
  v66 = v65;
  v67 = sub_29EC00A08();
  v69 = v68;
  v105(v66, v107);
  sub_29EBBFF48(v67, v69);
  v70 = sub_29EC00968();
  LODWORD(v66) = sub_29EC00E98();
  v102 = v69;
  sub_29EBBFF9C(v67, v69);
  LODWORD(v96) = v66;
  v99 = v70;
  v71 = os_log_type_enabled(v70, v66);
  v95 = v67;
  if (v71)
  {
    v72 = v67;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v112 = v74;
    *v73 = 136315138;
    v75 = v102;
    sub_29EBBFF48(v72, v102);
    v76 = sub_29EC00848();
    v78 = v77;
    sub_29EBBFF9C(v72, v75);
    v79 = sub_29EBD24D0(v76, v78, &v112);
    v44 = v109;

    *(v73 + 4) = v79;
    v80 = v103;
    v81 = v99;
    _os_log_impl(&dword_29EBB9000, v99, v96, "Finished fetching personalized asset: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x29EDAC460](v74, -1, -1);
    v82 = v73;
    v56 = v108;
    MEMORY[0x29EDAC460](v82, -1, -1);
  }

  else
  {

    v80 = v103;
  }

  sub_29EBF0B38(0, &qword_2A188A0D0, 0x29EDB8828);
  v112 = v56;
  v113 = v114;
  sub_29EBEC27C(v21);
  sub_29EC009A8();
  v105(v21, v107);
  v83 = v56;
  v84 = v112;
  v85 = v113;
  sub_29EC00898();
  sub_29EBBFF9C(v84, v85);
  sub_29EBF0B38(0, &qword_2A188A0D8, 0x29EDB8830);
  sub_29EC00EE8();
  v86 = sub_29EC00E88();
  v87 = [v86 recordName];

  v88 = sub_29EC00AE8();
  v90 = v89;

  sub_29EBBFF9C(v44, v104);
  result = (*(v100 + 8))(v80, v101);
  v91 = v97;
  v92 = v114;
  *v97 = v83;
  v91[1] = v92;
  v91[2] = v88;
  v91[3] = v90;
  v93 = v102;
  v91[4] = v95;
  v91[5] = v93;
  v91[6] = v98;
  return result;
}

uint64_t sub_29EBEDD60(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x29EDCA608];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x29EDB9B70];
      v30[4] = MEMORY[0x29EDB9B68];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1Tm(v30, MEMORY[0x29EDB9B70]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_29EC006B8();
        if (v18)
        {
          v19 = sub_29EC006D8();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_29EBEEE00(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        result = sub_29EC00A18();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_29EC006B8();
        if (!v18)
        {
LABEL_25:
          v24 = sub_29EC006C8();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_29EC006D8();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_29EBBFF9C(a1, a2);
  v7 = sub_29EC00998();
  sub_29EBF2A70(&unk_2A188A238, 255, MEMORY[0x29EDB9768]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x29EDB9760], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29EBEE090()
{
  v1 = 0x614E64726F636572;
  v2 = 0x7461446567616D69;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29EBEE118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EBF1D2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EBEE14C(uint64_t a1)
{
  v2 = sub_29EBF0E30();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBEE188(uint64_t a1)
{
  v2 = sub_29EBF0E30();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t PersonalizationAssetManager.PublicRecord.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A170, &qword_29EC05210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v21 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v24 = v1[3];
  v25 = v11;
  v12 = v1[4];
  v22 = v1[5];
  v23 = v12;
  v21[1] = v1[6];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v15, v13);
  sub_29EBBFF48(v9, v10);
  sub_29EBF0E30();
  sub_29EC01308();
  v26 = v9;
  v27 = v10;
  v28 = 0;
  sub_29EBF0E84();
  sub_29EC011C8();
  sub_29EBBFF9C(v26, v27);
  if (!v2)
  {
    v19 = v22;
    v18 = v23;
    LOBYTE(v26) = 1;
    sub_29EC01198();
    v26 = v18;
    v27 = v19;
    v28 = 2;
    sub_29EBBFF48(v18, v19);
    sub_29EBF0D34();
    sub_29EC011C8();
    sub_29EBBFF9C(v26, v27);
    LOBYTE(v26) = 3;
    sub_29EC011B8();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t PersonalizationAssetManager.PublicRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A188, &qword_29EC05218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_29EBF0E30();
  sub_29EC012F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = 0;
  sub_29EBF0ED8();
  sub_29EC01188();
  v11 = v28;
  v27 = v29;
  LOBYTE(v28) = 1;
  v12 = sub_29EC01158();
  v26 = v13;
  v25 = v12;
  v30 = 2;
  sub_29EBF0D88();
  sub_29EC01188();
  v23 = v28;
  v24 = v29;
  LOBYTE(v28) = 3;
  v15 = sub_29EC01178();
  (*(v6 + 8))(v9, v5);
  v16 = v11;
  *a2 = v11;
  v17 = v26;
  v18 = v27;
  v20 = v24;
  v19 = v25;
  a2[1] = v27;
  a2[2] = v19;
  v21 = v23;
  a2[3] = v17;
  a2[4] = v21;
  a2[5] = v20;
  a2[6] = v15;
  sub_29EBBFF48(v16, v18);

  sub_29EBBFF48(v21, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_29EBBFF9C(v16, v18);

  return sub_29EBBFF9C(v21, v20);
}

uint64_t PersonalizedAsset.imageData.getter()
{
  v1 = *v0;
  sub_29EBBFF48(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_29EBEE794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x29EDC9A38];
  v14[4] = MEMORY[0x29EDB9DA8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1Tm(v14, MEMORY[0x29EDC9A38]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_29EBF074C(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_29EBF0804(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_29EBF0880(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

void *sub_29EBEE864(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EBEE93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A208, &qword_29EC05DC0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  sub_29EC01018();

  MEMORY[0x29EDAB670](a2, a3);
  MEMORY[0x29EDAB670](0x7465677261547B20, 0xEF203A657079542ELL);
  MEMORY[0x29EDAB670](0x676E69727453, 0xE600000000000000);
  MEMORY[0x29EDAB670](0x656372756F53202CLL, 0xEA0000000000203ALL);
  swift_unknownObjectRetain();
  v6 = sub_29EC00B38();
  MEMORY[0x29EDAB670](v6);

  MEMORY[0x29EDAB670](125, 0xE100000000000000);
  sub_29EBBD72C();
  swift_allocError();
  *v7 = 0xD000000000000012;
  *(v7 + 8) = 0x800000029EC081B0;
  *(v7 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_29EBEEAE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EBEEBD8;

  return v7(a1);
}

uint64_t sub_29EBEEBD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_29EBEECD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29EC012B8();
  sub_29EC00B88();
  v6 = sub_29EC012D8();

  return sub_29EBEED48(a1, a2, v6);
}

unint64_t sub_29EBEED48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29EC011F8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_BYTE *sub_29EBEEE00@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_29EBF074C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_29EBF0804(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_29EBF0880(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_29EBEEE94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_29EC00828();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  sub_29EBFD4D4();
  v15 = a3 + *(_s19ParentDirectoryCRUDVMa() + 20);
  sub_29EC007E8();
  sub_29EC008A8();
  (*(v8 + 8))(v10, v7);

  v17 = *(v3 + 8);

  return v17();
}

uint64_t sub_29EBEF000(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_29EBFD980(*a2, a2[1]);
  a1[1] = v4;
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_29EBEF090(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_29EC00828();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  sub_29EBFDB90();
  sub_29EBFD4D4();
  v15 = a3 + *(_s19ParentDirectoryCRUDVMa() + 20);
  sub_29EC007E8();
  sub_29EC008A8();
  (*(v8 + 8))(v10, v7);

  v17 = *(v3 + 8);

  return v17();
}

uint64_t sub_29EBEF20C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  sub_29EBFDB90();
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_29EBEF290(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 152) = *a2;
  *(v3 + 160) = v4;
  return MEMORY[0x2A1C73D48](sub_29EBEF2B8, 0, 0);
}

uint64_t sub_29EBEF2B8()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29EBEF3E0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A220, &qword_29EC05EB0);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29EBF2D34;
  v0[13] = &block_descriptor_185;
  v0[14] = v3;
  [v1 saveRecord:v2 completionHandler:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBEF3E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_29EBF2D1C;
  }

  else
  {
    v3 = sub_29EBF2D14;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBEF4F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_29EBEF590;

  return sub_29EBFC1E8(v4, v5);
}

uint64_t sub_29EBEF590(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_29EBEF6A0(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 152) = *a2;
  *(v3 + 160) = v4;
  return MEMORY[0x2A1C73D48](sub_29EBEF6C8, 0, 0);
}

uint64_t sub_29EBEF6C8()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29EBEF3E0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A220, &qword_29EC05EB0);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29EBF2D34;
  v0[13] = &block_descriptor_179;
  v0[14] = v3;
  [v1 saveRecord:v2 completionHandler:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBEF7F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = *a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2A1C73D48](sub_29EBEF818, 0, 0);
}

uint64_t sub_29EBEF818()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29EBEF940;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A218, &qword_29EC05EA8);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29EBF2D34;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v1 deleteRecordWithID:v2 completionHandler:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBEF940()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_29EBEFAB4;
  }

  else
  {
    v3 = sub_29EBEFA50;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBEFA50()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EBEFAB4()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_29EBEFB20(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_29EC00878();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_29EBEFC58(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EBEFC58(uint64_t a1, uint64_t a2)
{
  result = sub_29EC006B8();
  if (!result || (result = sub_29EC006D8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_29EC006C8();
      return sub_29EC00878();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EBEFCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  v9 = swift_task_alloc();
  *(v4 + 72) = v9;
  *v9 = v4;
  v9[1] = sub_29EBEFDB4;

  return sub_29EBEAE20(a1, a2, v4 + 16, a4);
}

uint64_t sub_29EBEFDB4()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EBEFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a3 + 32);
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_29EBEFF68;

  return sub_29EBEB444(a1, a2, v4 + 16, a4);
}

uint64_t sub_29EBEFF68()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id _sSo11CKContainerC14ProductKitCoreE16AirTagsContainerABvgZ_0()
{
  if (!sub_29EBC5C04())
  {
    if (qword_2A1889AF8 != -1)
    {
      swift_once();
    }

    v5 = sub_29EC00988();
    __swift_project_value_buffer(v5, qword_2A188A090);
    v1 = sub_29EC00968();
    v6 = sub_29EC00ED8();
    if (!os_log_type_enabled(v1, v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v1, v6, "Using production environment", v4, 2u);
    v3 = 1;
    goto LABEL_10;
  }

  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v0 = sub_29EC00988();
  __swift_project_value_buffer(v0, qword_2A188A090);
  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();
  v3 = 2;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v1, v2, "Using sandbox environment", v4, 2u);
LABEL_10:
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

LABEL_12:

  v7 = objc_allocWithZone(MEMORY[0x29EDB8808]);
  v8 = sub_29EC00AB8();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v3];

  v10 = [objc_allocWithZone(MEMORY[0x29EDB8800]) initWithContainerID_];
  return v10;
}

id _sSo11CKContainerC14ProductKitCoreE31PersonalizationManateeContainerABvgZ_0()
{
  if (!sub_29EBC5C04())
  {
    if (qword_2A1889AF8 != -1)
    {
      swift_once();
    }

    v5 = sub_29EC00988();
    __swift_project_value_buffer(v5, qword_2A188A090);
    v1 = sub_29EC00968();
    v6 = sub_29EC00ED8();
    if (!os_log_type_enabled(v1, v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v1, v6, "Using production environment", v4, 2u);
    v3 = 1;
    goto LABEL_10;
  }

  if (qword_2A1889AF8 != -1)
  {
    swift_once();
  }

  v0 = sub_29EC00988();
  __swift_project_value_buffer(v0, qword_2A188A090);
  v1 = sub_29EC00968();
  v2 = sub_29EC00ED8();
  v3 = 2;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v1, v2, "Using sandbox environment", v4, 2u);
LABEL_10:
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

LABEL_12:

  v7 = objc_allocWithZone(MEMORY[0x29EDB8808]);
  v8 = sub_29EC00AB8();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v3];

  v10 = [objc_allocWithZone(MEMORY[0x29EDB8800]) initWithContainerID_];
  return v10;
}

uint64_t sub_29EBF0480()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  sub_29EBBFF9C(v0[8], v0[9]);
  v4 = v0[11];

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29EBF04D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EBC4A5C;

  return sub_29EBDDA10(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_29EBF05E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  sub_29EBBFF9C(v0[9], v0[10]);

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29EBF063C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EBC35A4;

  return sub_29EBDE5C8(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

void sub_29EBF0710(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_29EBF074C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EBF0804(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_29EC006E8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_29EC006A8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29EC00868();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_29EBF0880(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_29EC006E8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_29EC006A8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_29EBF0904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E58, &qword_29EC025E0);
    v8 = sub_29EC01118();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_29EBCEF60(v10, v6, &unk_2A188A270, &unk_29EC05F00);
      v13 = *v6;
      v12 = v6[1];
      result = sub_29EBEECD0(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
      result = sub_29EBF2B24(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EBF0AE4()
{
  result = qword_2A188A100;
  if (!qword_2A188A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A100);
  }

  return result;
}

uint64_t sub_29EBF0B38(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_29EBF0BB0()
{
  result = qword_2A188A120;
  if (!qword_2A188A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A120);
  }

  return result;
}

uint64_t sub_29EBF0C04(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A1F8, &unk_29EC05DB0);
  v10 = sub_29EBF1EAC(&qword_2A188A200, &qword_2A188A1F8, &unk_29EC05DB0);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_29EBEEE00(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

unint64_t sub_29EBF0CE0()
{
  result = qword_2A188A138;
  if (!qword_2A188A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A138);
  }

  return result;
}

unint64_t sub_29EBF0D34()
{
  result = qword_2A188A140;
  if (!qword_2A188A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A140);
  }

  return result;
}

unint64_t sub_29EBF0D88()
{
  result = qword_2A188A150;
  if (!qword_2A188A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A150);
  }

  return result;
}

unint64_t sub_29EBF0DDC()
{
  result = qword_2A188A160;
  if (!qword_2A188A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A160);
  }

  return result;
}

unint64_t sub_29EBF0E30()
{
  result = qword_2A188A178;
  if (!qword_2A188A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A178);
  }

  return result;
}

unint64_t sub_29EBF0E84()
{
  result = qword_2A188A180;
  if (!qword_2A188A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A180);
  }

  return result;
}

unint64_t sub_29EBF0ED8()
{
  result = qword_2A188A190;
  if (!qword_2A188A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A190);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29EBF0F80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_29EBF0FC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_29EBF1028(uint64_t a1, int a2)
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

uint64_t sub_29EBF1070(uint64_t result, int a2, int a3)
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

uint64_t sub_29EBF10BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_29EBF1110(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

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

uint64_t sub_29EBF1180(uint64_t a1, int a2)
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

uint64_t sub_29EBF11C8(uint64_t result, int a2, int a3)
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

uint64_t sub_29EBF123C(uint64_t a1, int a2)
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

uint64_t sub_29EBF1284(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EBF12EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29EBF1348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizedAsset.Metadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalizedAsset.Metadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationAssetManager.PublicRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalizationAssetManager.PublicRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PersonalizationAssetManager.PrivateRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationAssetManager.PrivateRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_29EBF1708(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EBF1750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EBF17E4()
{
  result = qword_2A188A198;
  if (!qword_2A188A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A198);
  }

  return result;
}

unint64_t sub_29EBF183C()
{
  result = qword_2A188A1A0;
  if (!qword_2A188A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1A0);
  }

  return result;
}

unint64_t sub_29EBF1894()
{
  result = qword_2A188A1A8;
  if (!qword_2A188A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1A8);
  }

  return result;
}

unint64_t sub_29EBF18EC()
{
  result = qword_2A188A1B0;
  if (!qword_2A188A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1B0);
  }

  return result;
}

unint64_t sub_29EBF1944()
{
  result = qword_2A188A1B8;
  if (!qword_2A188A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1B8);
  }

  return result;
}

unint64_t sub_29EBF199C()
{
  result = qword_2A188A1C0;
  if (!qword_2A188A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1C0);
  }

  return result;
}

unint64_t sub_29EBF19F4()
{
  result = qword_2A188A1C8;
  if (!qword_2A188A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1C8);
  }

  return result;
}

unint64_t sub_29EBF1A4C()
{
  result = qword_2A188A1D0;
  if (!qword_2A188A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1D0);
  }

  return result;
}

unint64_t sub_29EBF1AA4()
{
  result = qword_2A188A1D8;
  if (!qword_2A188A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1D8);
  }

  return result;
}

unint64_t sub_29EBF1AFC()
{
  result = qword_2A188A1E0;
  if (!qword_2A188A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1E0);
  }

  return result;
}

unint64_t sub_29EBF1B54()
{
  result = qword_2A188A1E8;
  if (!qword_2A188A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1E8);
  }

  return result;
}

unint64_t sub_29EBF1BAC()
{
  result = qword_2A188A1F0;
  if (!qword_2A188A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A1F0);
  }

  return result;
}

uint64_t sub_29EBF1C00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000029EC080D0 == a2 || (sub_29EC011F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_29EC011F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29EC011F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29EBF1D2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029EC08110 == a2 || (sub_29EC011F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL || (sub_29EC011F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_29EC011F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_29EC011F8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29EBF1EAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29EBF1EF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EBF1F2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBEEAE0(a1, v5);
}

unint64_t sub_29EBF1FE4()
{
  result = qword_2A188A210;
  if (!qword_2A188A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A210);
  }

  return result;
}

uint64_t sub_29EBF2038()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EBF2070(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBEF290(a1, a2, (v2 + 16));
}

uint64_t sub_29EBF2124(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBEF4F0(a1, a2, (v2 + 16));
}

uint64_t sub_29EBF21DC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBEF6A0(a1, a2, (v2 + 16));
}

uint64_t sub_29EBF2290(void *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EBC4A5C;

  return sub_29EBEF7F0(a1, (v1 + 16));
}

uint64_t sub_29EBF233C(uint64_t a1, uint64_t a2)
{
  v4 = _s19ParentDirectoryCRUDVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBF23A4(uint64_t a1, uint64_t a2)
{
  v4 = _s19ParentDirectoryCRUDVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBF2408(uint64_t *a1, uint64_t *a2)
{
  v6 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_29EBC4A5C;

  return sub_29EBEEE94(a1, a2, v2 + v7);
}

uint64_t sub_29EBF24FC(uint64_t *a1, uint64_t *a2)
{
  v5 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EBC4A5C;

  return sub_29EBEF000(a1, a2);
}

uint64_t sub_29EBF25F4(uint64_t *a1, uint64_t *a2)
{
  v6 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_29EBC4A5C;

  return sub_29EBEF090(a1, a2, v2 + v7);
}

uint64_t objectdestroy_157Tm()
{
  v1 = (_s19ParentDirectoryCRUDVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_29EC00828();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29EBF27D0(uint64_t *a1)
{
  v3 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_29EBC4A5C;

  return sub_29EBEF20C(a1);
}

uint64_t sub_29EBF28E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EBBFF9C(a1, a2);
  }

  return a1;
}

unint64_t sub_29EBF28F4()
{
  result = qword_2A188A228;
  if (!qword_2A188A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A228);
  }

  return result;
}

uint64_t sub_29EBF2948()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_29EBC35A4;

  return sub_29EBEFCEC(v2, v3, v5, v4);
}

unint64_t sub_29EBF2A08()
{
  result = qword_2A188A230;
  if (!qword_2A188A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A230);
  }

  return result;
}

uint64_t sub_29EBF2A5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EBBFF48(a1, a2);
  }

  return a1;
}

uint64_t sub_29EBF2A70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_29EBF2AB8()
{
  result = qword_2A188A250;
  if (!qword_2A188A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A250);
  }

  return result;
}

uint64_t sub_29EBF2B0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_29EBF2B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29EBF2B94()
{
  result = qword_2A188A280;
  if (!qword_2A188A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188A280);
  }

  return result;
}

uint64_t sub_29EBF2BE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBEFEA8(v2, v3, v5, v4);
}

uint64_t sub_29EBF2D40()
{
  *(v1 + 136) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0) - 8) + 64) + 15;
  *(v1 + 144) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBF2DDC, 0, 0);
}

uint64_t sub_29EBF2DDC()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v0[19] = v5;
  v6 = v1[2];
  v7 = sub_29EC00D98();
  v0[20] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[21] = v9;
  v0[22] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v2, 1, 1, v7);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v5;

  sub_29EBF3BCC(0, 0, v2, &unk_29EC060E0, v10);

  sub_29EBF6724(v2);
  v9(v2, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v6;
  v11[5] = v5;

  sub_29EBF42FC(0, 0, v2, &unk_29EC060F0, v11);

  sub_29EBF6724(v2);
  v12 = *(v5 + 16);
  os_unfair_lock_lock((v12 + 44));
  v13 = *(v12 + 32);
  v0[23] = v13;
  *(v12 + 32) = v13 + 1;
  os_unfair_lock_unlock((v12 + 44));

  return MEMORY[0x2A1C73D48](sub_29EBF2FCC, 0, 0);
}

uint64_t sub_29EBF2FCC()
{
  v1 = v0[23];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_29EBF307C;
  v3 = swift_continuation_init();
  sub_29EBF4CF0(v3, v2, v1);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBF307C()
{
  v1 = *v0;
  v4 = *v0;
  v2 = *(*v0 + 96);
  v1[12] = v1[5];
  v1[13] = v2;

  return MEMORY[0x2A1C73D48](sub_29EBF3160, 0, 0);
}

uint64_t sub_29EBF3160()
{
  v1 = v0[27];
  if (v1 == 2)
  {
    if (qword_2A1889B08 != -1)
    {
      swift_once();
    }

    v10 = sub_29EC00988();
    __swift_project_value_buffer(v10, qword_2A188A290);
    v11 = sub_29EC00968();
    v12 = sub_29EC00ED8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_29EBB9000, v11, v12, "Timed out waiting for personalization download, completing in background", v13, 2u);
      MEMORY[0x29EDAC460](v13, -1, -1);
    }

    v14 = v0[17];

    if (*(v14 + 48) == 1)
    {
      return sub_29EC010D8();
    }

    v16 = v0[25];
    v17 = v0[26];
    v18 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    v22 = v0[19];
    v21 = v0[20];
    v24 = v0[17];
    v23 = v0[18];
    sub_29EC00D78();
    v20(v23, 0, 1, v21);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v22;
    v25[5] = v24;

    sub_29EBF3BCC(0, 0, v23, &unk_29EC06100, v25);

    sub_29EBF6998(v18, v16, v17, 2);
    sub_29EBF6724(v23);
  }

  else if (v1 != 3)
  {
    v3 = v0[25];
    v2 = v0[26];
    v4 = v0[24];
    v28 = v0[19];
    v5 = v0[17];
    swift_beginAccess();
    v6 = *(v5 + 64);
    v7 = *(v5 + 72);
    v9 = *(v5 + 80);
    v8 = *(v5 + 88);
    *(v5 + 64) = v4;
    *(v5 + 72) = v3;
    *(v5 + 80) = v2;
    *(v5 + 88) = v1;
    sub_29EBF69B8(v4, v3, v2, v1);
    sub_29EBF69C8(v4, v3, v2, v1);
    sub_29EBCEC60(v6, v7, v9, v8);
    *(v5 + 48) = 1;
    sub_29EBF5048();
    sub_29EBF4548();
    sub_29EBF6998(v4, v3, v2, v1);
    sub_29EBF6998(v4, v3, v2, v1);
  }

  v26 = v0[18];

  v27 = v0[1];

  return v27();
}

uint64_t PersonalizationDownloadTaskManager.addObserver(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_29EBF6124(v4, v1, v2, v3);
}

uint64_t sub_29EBF34CC()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A188A290);
  v1 = __swift_project_value_buffer(v0, qword_2A188A290);
  if (qword_2A1889AE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E698);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL PersonalizationDownloadTaskManager.isRunningOrHasResult.getter()
{
  if (*(v0 + 48) != 1)
  {
    return 1;
  }

  swift_beginAccess();
  return *(v0 + 88) != 1;
}

id PersonalizationDownloadTaskManager.result.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_29EBCEC1C(v3, v4, v5, v6);
}

uint64_t sub_29EBF3634(uint64_t a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2C8, &qword_29EC06160);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2D0, &qword_29EC06168);
  v8 = swift_allocObject();
  *(v8 + 44) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 2;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v7 + 16) = v8;
  *(v3 + 40) = v7;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x29EDCA190];
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t sub_29EBF36F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 88) = v8;
  *v8 = v6;
  v8[1] = sub_29EBF37EC;

  return v10(v6 + 16);
}

uint64_t sub_29EBF37EC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBF38E8, 0, 0);
}

uint64_t sub_29EBF38E8()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = v0[3];
  v0[12] = v2;
  v0[13] = v3;
  v4 = v0[4];
  v5 = v0[5];
  v0[14] = v4;
  v0[15] = v5;
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  sub_29EBCEC1C(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v0 + 6;
  v7 = *(MEMORY[0x29EDCA470] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_29EBF3A00;
  v9 = v0[10];

  return MEMORY[0x2A1C73C78]();
}

void sub_29EBF3A00()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 128);

    MEMORY[0x2A1C73D48](sub_29EBF3B3C, 0, 0);
  }
}

uint64_t sub_29EBF3B3C()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_29EBCEC60(v4, v3, v1, v2);
  sub_29EBCEC60(v4, v3, v1, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_29EBF3BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v27 - v11;
  sub_29EBF6EEC(a3, v27 - v11);
  v13 = sub_29EC00D98();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29EBF6724(v12);
  }

  else
  {
    sub_29EC00D88();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_29EC00D08();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_29EC00B58() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_29EBF3E6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  *(v5 + 48) = a1;
  return MEMORY[0x2A1C73D48](sub_29EBF3E90, 0, 0);
}

uint64_t sub_29EBF3E90(unint64_t a1)
{
  v3 = *(v1 + 48) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2A1C73BA0](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x29EDCA3C0] + 4);
  v6 = swift_task_alloc();
  *(v1 + 64) = v6;
  *v6 = v1;
  v6[1] = sub_29EBF3F78;
  a1 = v4;

  return MEMORY[0x2A1C73BA0](a1);
}

uint64_t sub_29EBF3F78()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;
    v2[5] = 2;

    return MEMORY[0x2A1C73D48](sub_29EBF40C8, 0, 0);
  }
}

uint64_t sub_29EBF40C8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = *(MEMORY[0x29EDCA470] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_29EBF41C0;
  v5 = v0[7];

  return MEMORY[0x2A1C73C78]();
}

void sub_29EBF41C0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);

    MEMORY[0x2A1C73D48](sub_29EBDF728, 0, 0);
  }
}

uint64_t sub_29EBF42FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = v24 - v10;
  sub_29EBF6EEC(a3, v24 - v10);
  v12 = sub_29EC00D98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29EBF6724(v11);
  }

  else
  {
    sub_29EC00D88();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29EC00D08();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29EC00B58() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_29EBF4548()
{
  swift_beginAccess();
  v1 = v0[11];
  if (v1 == 1)
  {
    swift_beginAccess();
LABEL_7:
    v11 = v0[7];
    goto LABEL_8;
  }

  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  v5 = v0[7];
  v6 = *(v5 + 16);
  if (v6)
  {
    v13 = v0;
    v7 = v5 + 32;
    v8 = v0[7];
    sub_29EBCEC1C(v2, v3, v4, v1);

    do
    {
      sub_29EBBD600(v7, v15);
      v9 = v16;
      v10 = v17;
      __swift_project_boxed_opaque_existential_1Tm(v15, v16);
      v14[0] = v2;
      v14[1] = v3;
      v14[2] = v4;
      v14[3] = v1;
      (*(v10 + 8))(v14, v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v7 += 40;
      --v6;
    }

    while (v6);

    sub_29EBCEC60(v2, v3, v4, v1);
    v0 = v13;
    goto LABEL_7;
  }

LABEL_8:
  v0[7] = MEMORY[0x29EDCA190];
}

uint64_t sub_29EBF46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBF4744, 0, 0);
}

uint64_t sub_29EBF4744()
{
  v1 = *(*(v0 + 112) + 16);
  os_unfair_lock_lock((v1 + 44));
  v2 = *(v1 + 32);
  *(v0 + 136) = v2;
  *(v1 + 32) = v2 + 1;
  os_unfair_lock_unlock((v1 + 44));

  return MEMORY[0x2A1C73D48](sub_29EBF47CC, 0, 0);
}

uint64_t sub_29EBF47CC()
{
  v1 = v0[17];
  v2 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_29EBF487C;
  v3 = swift_continuation_init();
  sub_29EBF4CF0(v3, v2, v1);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBF487C()
{
  v1 = *v0;
  v4 = *v0;
  v2 = *(*v0 + 96);
  v1[9] = v1[5];
  v1[10] = v2;

  return MEMORY[0x2A1C73D48](sub_29EBF4960, 0, 0);
}

uint64_t sub_29EBF4960()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = sub_29EC00D98();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_29EC00D68();
  sub_29EBF69B8(v4, v3, v2, v1);

  v8 = sub_29EC00D58();
  v9 = swift_allocObject();
  v10 = MEMORY[0x29EDCA390];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v9[7] = v1;
  v9[8] = v6;
  sub_29EBDF018(0, 0, v5, &unk_29EC06110, v9);
  sub_29EBF6998(v4, v3, v2, v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_29EBF4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  sub_29EC00D68();
  v8[10] = sub_29EC00D58();
  v10 = sub_29EC00D08();

  return MEMORY[0x2A1C73D48](sub_29EBF4B68, v10, v9);
}

uint64_t sub_29EBF4B68()
{
  v1 = v0[10];
  v2 = v0[8];

  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v3 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    swift_beginAccess();
    v8 = *(v4 + 64);
    v9 = *(v4 + 72);
    v10 = *(v4 + 80);
    v11 = *(v4 + 88);
    *(v4 + 64) = v7;
    *(v4 + 72) = v6;
    *(v4 + 80) = v5;
    *(v4 + 88) = v3;
    sub_29EBF69C8(v7, v6, v5, v3);
    sub_29EBCEC60(v8, v9, v10, v11);
    *(v4 + 48) = 1;
  }

  v12 = v0[9];
  sub_29EBF4548();
  v13 = v0[1];

  return v13();
}

uint64_t PersonalizationDownloadTaskManager.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_29EBCEC60(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t PersonalizationDownloadTaskManager.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_29EBCEC60(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

void sub_29EBF4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v5 = *(a2 + 16);
  os_unfair_lock_lock((v5 + 44));
  v6 = sub_29EBF4E30((v5 + 16), &v12, a3, a1, &v12 + 1);
  v8 = v7;
  v10 = v9;
  os_unfair_lock_unlock((v5 + 44));
  if (!v6)
  {
LABEL_4:
    if ((v12 & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v12 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    swift_allocError();
    swift_continuation_throwingResumeWithError();
    goto LABEL_4;
  }

  **(v6[8] + 40) = v8;
  swift_continuation_throwingResume();
  if ((v12 & 0x100) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = *(*(a1 + 64) + 40);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 3;

  swift_continuation_resume();
}

uint64_t *sub_29EBF4E30(uint64_t *result, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 24) == 1)
  {
    result = 0;
    *a2 = 1;
  }

  else
  {
    v6 = result;
    v7 = *result;
    if (*(result + 8))
    {
      if (*(result + 8) == 1)
      {
        v10 = *result;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_29EBF5DC8(a3, a4, 0, isUniquelyReferenced_nonNull_native);
        v12 = v7;
        if (v13 != 1)
        {
          sub_29EBF54BC(a3);
          *a5 = 1;
          v12 = v7;
        }

        v14 = *(v12 + 16);

        if (v14)
        {
          v15 = 1;
        }

        else
        {

          v12 = 0;
          v15 = 2;
        }

        result = 0;
        *v6 = v12;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2A8, &qword_29EC06118);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29EC02720;
        *(inited + 32) = a3;
        *(inited + 40) = a4;
        *(inited + 48) = 0;
        v24 = sub_29EBF6D90(inited);
        swift_setDeallocating();
        result = 0;
        *v6 = v24;
        v15 = 1;
      }

      *(v6 + 8) = v15;
    }

    else
    {
      v16 = *(v7 + 16);
      if (v16)
      {
        v17 = *(v7 + 32);
        v18 = *result;

        v19 = swift_isUniquelyReferenced_nonNull_native();
        if (!v19 || (v20 = v7, (v16 - 1) > *(v7 + 24) >> 1))
        {
          v20 = sub_29EBFC940(v19, v16, 1, v7);
        }

        v21 = *(v20 + 2);
        memmove(v20 + 32, v20 + 40, 8 * v21-- - 8);
        *(v20 + 2) = v21;

        if (v21)
        {
          v22 = 0;
        }

        else
        {

          v20 = 0;
          v22 = 2;
        }

        *v6 = v20;
        *(v6 + 8) = v22;
        return v17;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_29EBF5048()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40))
  {
    goto LABEL_5;
  }

  *(v1 + 40) = 1;
  v2 = *(v1 + 16);
  if (!*(v1 + 24))
  {
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_7;
  }

  if (*(v1 + 24) != 1)
  {
LABEL_5:
    v2 = MEMORY[0x29EDCA190];
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_8;
  }

  v3 = *(v1 + 16);
  v2 = MEMORY[0x29EDCA190];
LABEL_7:
  *(v1 + 16) = 0;
  *(v1 + 24) = 2;
LABEL_8:
  os_unfair_lock_unlock((v1 + 44));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      **(*(v6 + 64) + 40) = 0;
      swift_continuation_resume();
      --v4;
    }

    while (v4);
  }

  v8 = 0;
  v9 = 1 << *(v3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_19:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v3 + 48) + 24 * (v14 | (v8 << 6)) + 8);
    if (result)
    {
      v15 = *(*(result + 64) + 40);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 3;
      result = swift_continuation_resume();
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v3 + 56 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_19;
    }
  }
}

void sub_29EBF51F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 44));
  v4 = sub_29EBF52E4((v3 + 16), a1);
  v6 = v5;
  v8 = v7;
  os_unfair_lock_unlock((v3 + 44));
  if (v4)
  {
    if (v8)
    {
      swift_allocError();

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      **(*(v4 + 64) + 40) = v6;

      swift_continuation_throwingResume();
    }
  }
}

uint64_t sub_29EBF52E4(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    return a2;
  }

  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2C0, &unk_29EC06140);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_29EC02720;
      *(v15 + 32) = a2;
      *a1 = v15;
      *(a1 + 8) = 0;
      return 0;
    }

    v20 = *a1;
    if (*(v4 + 16))
    {
      v5 = -1 << *(v4 + 32);

      v6 = sub_29EC00FA8();
      sub_29EBF603C(v6, *(v4 + 36));
      v7 = v20;
      v8 = *(v20 + 16);

      if (v8)
      {
        v9 = 1;
      }

      else
      {

        v7 = 0;
        v9 = 2;
      }

      *a1 = v7;
      *(a1 + 8) = v9;
      return a2;
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = *a1;

  v11 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v11 = sub_29EBFC940(0, *(v4 + 16) + 1, 1, v4);
  }

  v12 = *(v11 + 2);
  v13 = *(v11 + 3);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v17 = v11;
    v18 = *(v11 + 2);
    v19 = sub_29EBFC940((v13 > 1), v12 + 1, 1, v17);
    v12 = v18;
    v11 = v19;
  }

  *(v11 + 2) = v14;
  *&v11[8 * v12 + 32] = a2;

  a2 = 0;
  *a1 = v11;
  *(a1 + 8) = 0;
  return a2;
}

uint64_t sub_29EBF54BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_29EC012B8();
  MEMORY[0x29EDABD90](a1);
  v5 = sub_29EC012D8();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 24 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v17 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29EBF55F0();
    v12 = v17;
  }

  v13 = *(v12 + 48) + 24 * v7;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_29EBF5BF8(v7);
  result = v14;
  *v1 = v17;
  return result;
}

void *sub_29EBF55F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2B0, &qword_29EC06120);
  v2 = *v0;
  v3 = sub_29EC00FC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_29EBF5748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2B0, &qword_29EC06120);
  result = sub_29EC00FD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_29EC012B8();
      MEMORY[0x29EDABD90](v20);
      result = sub_29EC012D8();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_29EBF5988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2B0, &qword_29EC06120);
  result = sub_29EC00FD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_29EC012B8();
      MEMORY[0x29EDABD90](v20);
      result = sub_29EC012D8();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_29EBF5BF8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_29EC00FB8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = 24 * v6;
        v13 = *(v3 + 40);
        v14 = *(*(v3 + 48) + 24 * v6);
        sub_29EC012B8();
        MEMORY[0x29EDABD90](v14);
        v15 = sub_29EC012D8() & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = v16 + 24 * v2;
          v18 = (v16 + v12);
          if (24 * v2 < v12 || v17 >= v18 + 24 || v2 != v6)
          {
            v11 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_29EBF5DC8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_29EC012B8();
  MEMORY[0x29EDABD90](a1);
  v11 = sub_29EC012D8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = 1;
    while (1)
    {
      v16 = *(*(v9 + 48) + 24 * v13);
      v17 = v16 != a1;
      if (v16 == a1)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = 0;
  }

  else
  {
    v17 = 1;
    v15 = 1;
  }

LABEL_8:
  v18 = *(v9 + 16);
  v19 = v18 + v15;
  if (__OFADD__(v18, v15))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = *(v9 + 24);
  if (v20 < v19 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_29EBF5988(v19);
    }

    else
    {
      if (v20 >= v19)
      {
        sub_29EBF55F0();
        if (!v17)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      sub_29EBF5748(v19);
    }

    v22 = *v4;
    v23 = *(*v4 + 40);
    sub_29EC012B8();
    MEMORY[0x29EDABD90](a1);
    v24 = sub_29EC012D8();
    v25 = -1 << *(v22 + 32);
    v13 = v24 & ~v25;
    if ((*(v22 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v26 = ~v25;
      while (1)
      {
        v21 = 24 * v13;
        if (*(*(v22 + 48) + 24 * v13) == a1)
        {
          break;
        }

        v13 = (v13 + 1) & v26;
        if (((*(v22 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_23:
      if (v17)
      {
LABEL_24:
        v27 = *v4;
        *(*v4 + 8 * (v13 >> 6) + 56) |= 1 << v13;
        v28 = *(v27 + 48) + 24 * v13;
        *v28 = a1;
        *(v28 + 8) = a2;
        *(v28 + 16) = a3 & 1;
        v29 = *(v27 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (!v30)
        {
          result = 0;
          *(v27 + 16) = v31;
          return result;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2B8, &qword_29EC06128);
    result = sub_29EC01238();
    __break(1u);
    return result;
  }

  if (v17)
  {
    goto LABEL_24;
  }

LABEL_12:
  v21 = 24 * v13;
LABEL_27:
  v33 = *(*v4 + 48) + v21;
  result = *v33;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3 & 1;
  return result;
}

uint64_t sub_29EBF603C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = *v3;
  if (!v8)
  {
LABEL_10:
    v15 = isUniquelyReferenced_nonNull_native;
    sub_29EBF55F0();
    isUniquelyReferenced_nonNull_native = v15;
    v9 = v16;
  }

  v10 = *(v9 + 48) + 24 * isUniquelyReferenced_nonNull_native;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  sub_29EBF5BF8(isUniquelyReferenced_nonNull_native);
  *v3 = v16;
  return v11;
}

uint64_t sub_29EBF6124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  if (*(a2 + 48) == 1)
  {
    swift_beginAccess();
    v9 = *(a2 + 88);
    if (v9 != 1)
    {
      v10 = *(a2 + 80);
      v23 = *(a2 + 64);
      v24 = v10;
      v25 = v9;
      (*(a4 + 8))(&v23, a3, a4);
    }
  }

  else
  {
    sub_29EBBD600(v26, &v23);
    swift_beginAccess();
    v11 = *(a2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 56) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_29EBFC7F8(0, v11[2] + 1, 1, v11);
      *(a2 + 56) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_29EBFC7F8((v13 > 1), v14 + 1, 1, v11);
      *(a2 + 56) = v11;
    }

    v15 = v25;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v25);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v16);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    sub_29EBF657C(v14, v19, (a2 + 56), a3, a4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    *(a2 + 56) = v11;
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t get_enum_tag_for_layout_string_14ProductKitCore17PersonalizedAssetVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t get_enum_tag_for_layout_string_14ProductKitCore34PersonalizationDownloadTaskManagerC13ChannelResultO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29EBF6408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) < 2)
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return (v4 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EBF6478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_29EBF64CC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 2147483646;
  }

  else if (a2)
  {
    *(a1 + 24) = a2 + 1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29EBF657C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29EBCF4D4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29EBF6614()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29EBF665C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EBC35A4;

  return sub_29EBF36F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EBF6724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBF678C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29EBF67CC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EBC4A5C;

  return sub_29EBF3E6C(v6, a1, v4, v5, v7);
}

uint64_t sub_29EBF6890()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29EBF68D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EBC4A5C;

  return sub_29EBF46A8(a1, v4, v5, v7, v6);
}

void sub_29EBF6998(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 3)
  {
    sub_29EBF69A8(a1, a2, a3, a4);
  }
}

void sub_29EBF69A8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 2)
  {
    sub_29EBCEC60(a1, a2, a3, a4);
  }
}

id sub_29EBF69B8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 3)
  {
    return sub_29EBF69C8(result, a2, a3, a4);
  }

  return result;
}

id sub_29EBF69C8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 2)
  {
    return sub_29EBCEC1C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_29EBF69D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if ((*(v0 + 56) - 1) >= 3)
  {
    sub_29EBBFF9C(*(v0 + 32), *(v0 + 40));
  }

  v2 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29EBF6A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EBC4A5C;

  return sub_29EBF4AC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29EBF6B14(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 88) = a2;
  v4 = a3[1];
  *(v3 + 96) = *a3;
  *(v3 + 112) = v4;
  return MEMORY[0x2A1C73D48](sub_29EBF6B3C, 0, 0);
}

uint64_t sub_29EBF6B3C()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_29EBF6BDC;
  v2 = swift_continuation_init();
  sub_29EBF51F0(v2, v1);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBF6BDC()
{
  v2 = *v0;
  *(*v0 + 128) = *(*v0 + 80);

  return MEMORY[0x2A1C73D48](sub_29EBF6CD8, 0, 0);
}

uint64_t sub_29EBF6CD8()
{
  v1 = v0[16];
  if (v1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v5 = v0[12];
    v4 = v0[13];
    sub_29EBF69C8(v5, v4, v3, v2);
    v6 = *(*(v1 + 64) + 40);
    *v6 = v5;
    v6[1] = v4;
    v6[2] = v3;
    v6[3] = v2;
    swift_continuation_resume();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EBF6D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A2B0, &qword_29EC06120);
    v3 = sub_29EC00FE8();
    v4 = 0;
    v5 = v3 + 56;
    v23 = a1 + 32;
    while (1)
    {
      v10 = (v23 + 24 * v4);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(v10 + 16);
      v14 = *(v3 + 40);
      sub_29EC012B8();
      MEMORY[0x29EDABD90](v11);
      result = sub_29EC012D8();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v21 = *(v3 + 48);
      if (((1 << v17) & v19) != 0)
      {
        v22 = ~v16;
        while (*(v21 + 24 * v17) != v11)
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v18) = v20 | v19;
        v6 = v21 + 24 * v17;
        *v6 = v11;
        *(v6 + 8) = v12;
        *(v6 + 16) = v13;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29EBF6EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBF6F60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBF6B14(a1, v5, v4);
}

uint64_t sub_29EBF7018()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EBF7050(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBC35A4;

  return sub_29EBF6B14(a1, v5, v4);
}

uint64_t sub_29EBF7108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A188A2D8, &qword_29EC06170);
    v3 = sub_29EC00FE8();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_29EC00AE8();
      sub_29EC012B8();
      v29 = v7;
      sub_29EC00B88();
      v9 = sub_29EC012D8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_29EC00AE8();
        v20 = v19;
        if (v18 == sub_29EC00AE8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_29EC011F8();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29EBF7304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_29EBC35A4;

  return (sub_29EBF9F1C)(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t AsyncChannel.__allocating_init(element:)()
{
  v0 = swift_allocObject();
  AsyncChannel.init(element:)();
  return v0;
}

uint64_t AsyncChannel.send(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EBC35A4;

  return sub_29EBF9340(a1);
}

uint64_t sub_29EBF74C0()
{
  v1 = v0[2];
  v3[2] = *(*v0 + 80);
  type metadata accessor for AsyncChannel.State();
  sub_29EBFAAA4(sub_29EBFA730, v3, v1);
  return v3[5];
}

uint64_t sub_29EBF7548(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2A1C73D48](sub_29EBF7594, 0, 0);
}

uint64_t sub_29EBF7594()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = *(v2 + 80);
  v7 = sub_29EC00F58();
  *v5 = v0;
  v5[1] = sub_29EBF7694;
  v8 = v0[2];

  return (sub_29EBF8BAC)(v8, 0, 0, sub_29EBFA2C4, v4, v7);
}

uint64_t sub_29EBF7694()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t AsyncChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = sub_29EC00F58();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBF787C, 0, 0);
}

uint64_t sub_29EBF787C()
{
  v1 = v0[3];
  if (*(v1 + 8) == 1)
  {
    v2 = v0[4];
    v3 = *v1;
    v0[9] = *v1;
    v4 = sub_29EBF74C0();
    v5 = swift_task_alloc();
    v0[10] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    v0[11] = v6;
    v6[2] = v2;
    v6[3] = v1;
    v6[4] = v4;

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_29EBF7A4C;
    v8 = v0[8];
    v9 = v0[5];

    return sub_29EBF7304(v8, sub_29EBF958C, v5, &unk_29EC06198, v6, v9);
  }

  else
  {
    (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);
    v12 = v0[7];
    v11 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

void sub_29EBF7A4C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[9];

    MEMORY[0x2A1C73D48](sub_29EBF7B9C, 0, 0);
  }
}

uint64_t sub_29EBF7B9C()
{
  v1 = v0[7];
  v2 = v0[4];
  (*(v0[6] + 32))(v1, v0[8], v0[5]);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[7];
  if (v4 == 1)
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    (*(v0[6] + 8))(v0[7], v0[5]);
    *(v7 + 8) = 0;
    (*(v3 + 56))(v8, 1, 1, v6);
  }

  else
  {
    v9 = v0[4];
    v10 = v0[2];
    (*(v3 + 32))(v10, v0[7], v9);
    (*(v3 + 56))(v10, 0, 1, v9);
  }

  v12 = v0[7];
  v11 = v0[8];

  v13 = v0[1];

  return v13();
}

void sub_29EBF7CFC(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_29EC00F58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v11[-v7];
  v9 = v1[2];
  v12 = v3;
  v13 = a1;
  type metadata accessor for AsyncChannel.State();
  sub_29EC00DC8();
  sub_29EC00F58();
  sub_29EBFAAA4(sub_29EBFA6C4, v11, v9);
  v10 = v14;
  if (v14)
  {
    (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
    (*(v5 + 32))(*(*(v10 + 64) + 40), v8, v4);
    swift_continuation_resume();
  }
}

uint64_t sub_29EBF7EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EBF7ECC, 0, 0);
}

uint64_t sub_29EBF7ECC()
{
  *(v0 + 40) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_29EBF7F7C;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_29EBF7548(v3, v2);
}

uint64_t sub_29EBF7F7C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_29EBF8090(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EBEEBD8;

  return AsyncChannel.Iterator.next()(a1, a2);
}

uint64_t sub_29EBF8138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x29EDCA388] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_29EBF8204;

  return MEMORY[0x2A1C73B28](a1, a2, a3, a5, a6);
}

uint64_t sub_29EBF8204()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EBF8334(uint64_t a1)
{
  sub_29EC012B8();
  MEMORY[0x29EDABD90](a1);
  return sub_29EC012D8();
}

uint64_t sub_29EBF8394()
{
  sub_29EC012B8();
  sub_29EBF8300(v2, *v0);
  return sub_29EC012D8();
}

uint64_t sub_29EBF83EC(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 8);
  if (*(v2 + 8))
  {
    if (result == 1)
    {
      v5 = v2;
      v19 = *v2;
      v6 = *(a2 + 16);
      type metadata accessor for AsyncChannel.Awaiting();

      swift_getWitnessTable();
      sub_29EC00E48();
      sub_29EC00E18();
      if (v18 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v18;
      }

      v8 = v19;
      v9 = sub_29EC00E38();

      if (v9)
      {

        v8 = 0;
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *v5 = v8;
      *(v5 + 8) = v10;
      return v7;
    }

    else
    {
      v11 = *(a2 + 16);
      v12 = a1;
      v13 = type metadata accessor for AsyncChannel.Awaiting();
      sub_29EC011E8();
      swift_initStackObject();
      v14 = sub_29EC00C78();
      *v15 = v12;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
      sub_29EC00CF8();
      if (sub_29EC00CB8())
      {
        WitnessTable = swift_getWitnessTable();
        v17 = sub_29EBFA308(v14, v13, WitnessTable);
      }

      else
      {
        v17 = MEMORY[0x29EDCA1A0];
      }

      result = 0;
      *v2 = v17;
      *(v2 + 8) = 1;
    }
  }

  return result;
}

void *AsyncChannel.init(element:)()
{
  v1 = *(*v0 + 80);
  type metadata accessor for AsyncChannel.State();
  v2 = sub_29EBFAC1C();

  v0[2] = v2;
  return v0;
}

void sub_29EBF861C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a2 + 80);
  v7 = sub_29EC00F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14[-v10];
  v26 = 0;
  v12 = a2[2];
  v15 = v6;
  v16 = &v26;
  v17 = a3;
  v18 = a1;
  v19 = &v26 + 1;
  type metadata accessor for AsyncChannel.State();
  sub_29EC00DC8();
  sub_29EC00F58();
  v13 = type metadata accessor for UnsafeResumption();
  sub_29EC00F58();
  sub_29EBFAAA4(sub_29EBFA2CC, v14, v12);
  if (v23)
  {
    v20 = v23;
    v21 = v24;
    v22 = v25 & 1;
    sub_29EBFAE1C(v13);
  }

  if ((v26 & 0x100) != 0 || v26 == 1)
  {
    (*(*(v6 - 8) + 56))(v11, 1, 1, v6);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v11, v7);
    swift_continuation_resume();
  }
}

uint64_t sub_29EBF8854@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(result + 24) == 1)
  {
    *a2 = 1;
LABEL_15:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v7 = result;
  if (*(result + 8))
  {
    if (*(result + 8) == 1)
    {
      v31 = *result;
      type metadata accessor for AsyncChannel.Awaiting();

      swift_getWitnessTable();
      sub_29EC00E48();
      sub_29EC00E28();
      if (v29 != 1)
      {
        sub_29EC00E18();
        *a5 = 1;
      }

      v8 = v31;
      v9 = sub_29EC00E38();

      if (v9)
      {

        v8 = 0;
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *v7 = v8;
      *(v7 + 8) = v10;
      goto LABEL_15;
    }

    v19 = type metadata accessor for AsyncChannel.Awaiting();
    sub_29EC011E8();
    swift_initStackObject();
    v20 = sub_29EC00C78();
    *v21 = a3;
    *(v21 + 8) = a4;
    *(v21 + 16) = 0;
    sub_29EC00CF8();
    if (sub_29EC00CB8())
    {
      WitnessTable = swift_getWitnessTable();
      v23 = sub_29EBFA308(v20, v19, WitnessTable);
    }

    else
    {
      v23 = MEMORY[0x29EDCA1A0];
    }

    *v7 = v23;
    *(v7 + 8) = 1;
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
  }

  else
  {
    v27 = *result;
    sub_29EC00F58();
    sub_29EC00DC8();
    v12 = sub_29EC00F58();
    sub_29EC00DC8();
    sub_29EC00CF8();

    swift_getWitnessTable();
    sub_29EC00E58();
    v13 = v28;
    v14 = v27;
    v15 = sub_29EC00CB8();

    if (v15)
    {
      v16 = 0;
    }

    else
    {

      v14 = 0;
      v16 = 2;
    }

    *v7 = v14;
    *(v7 + 8) = v16;
    v31 = a4;
    result = sub_29EBFAD18(v13, &v31, v12, &v28);
    v24 = v29;
    v25 = v30;
    *a6 = v28;
    *(a6 + 8) = v24;
    *(a6 + 16) = v25;
  }

  return result;
}

uint64_t sub_29EBF8BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_29EC00D08();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2A1C73D48](sub_29EBF8C40, v6, v8);
}

uint64_t sub_29EBF8C40()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_29EBF8CE8;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBF8CE8()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t _s14ProductKitCore12AsyncChannelC6finishyyF_0()
{
  v1 = *(*v0 + 80);
  v2 = sub_29EC00F58();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v27 = &v25 - v4;
  v5 = v0[2];
  v30 = v1;
  type metadata accessor for AsyncChannel.State();
  v28 = v2;
  sub_29EC00DC8();
  v6 = sub_29EC00F58();
  sub_29EC00DC8();
  sub_29EC00CF8();
  type metadata accessor for AsyncChannel.Awaiting();
  swift_getWitnessTable();
  sub_29EC00E48();
  swift_getTupleTypeMetadata2();
  sub_29EBFAAA4(sub_29EBFA744, v29, v5);
  v8 = v31[0];
  v7 = v31[1];
  if (sub_29EC00CB8())
  {
    v9 = 4;
    do
    {
      v10 = v9 - 4;
      v11 = sub_29EC00CA8();
      sub_29EC00C88();
      if (v11)
      {
        v12 = *(v8 + 8 * v9);
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = sub_29EC01038();
        swift_unknownObjectRelease();
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v31[0] = 0;
      (*(*(v6 - 8) + 32))(*(*(v12 + 64) + 40), v31, v6);
      swift_continuation_resume();
      ++v9;
    }

    while (v13 != sub_29EC00CB8());
  }

  v15 = 0;
  v16 = 1 << *(v7 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v7 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = (v26 + 32);
  while (v18)
  {
LABEL_18:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v7 + 48) + 24 * (v22 | (v15 << 6)) + 8);
    if (v23)
    {
      v24 = v27;
      (*(*(v1 - 8) + 56))(v27, 1, 1, v1);
      (*v20)(*(*(v23 + 64) + 40), v24, v28);
      result = swift_continuation_resume();
    }
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
    }

    v18 = *(v7 + 56 + 8 * v21);
    ++v15;
    if (v18)
    {
      v15 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29EBF9188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    *(a1 + 24) = 1;
    v3 = *a1;
    if (!*(a1 + 8))
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      *a2 = v3;
      goto LABEL_6;
    }

    if (*(a1 + 8) == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      sub_29EC00F58();
      sub_29EC00DC8();
      sub_29EC00F58();
      sub_29EC00DC8();
      result = sub_29EC00C98();
      *a2 = result;
      a2[1] = v3;
      return result;
    }
  }

  sub_29EC00F58();
  sub_29EC00DC8();
  sub_29EC00F58();
  sub_29EC00DC8();
  *a2 = sub_29EC00C98();
LABEL_6:
  v5 = type metadata accessor for AsyncChannel.Awaiting();
  v6 = sub_29EC00C98();
  if (sub_29EC00CB8())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_29EBFA308(v6, v5, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x29EDCA1A0];
  }

  a2[1] = v8;
  return result;
}

uint64_t sub_29EBF9340(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EBF9360, 0, 0);
}

uint64_t sub_29EBF9360()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x29EDCA470] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_29EBF9450;
  v4 = v0[1].i64[1];

  return MEMORY[0x2A1C73C78]();
}

void sub_29EBF9450()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 32);

    MEMORY[0x2A1C73D48](sub_29EBC15D4, 0, 0);
  }
}

void sub_29EBF958C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_29EBF7CFC(v1);
}

uint64_t sub_29EBF95B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EBC4A5C;

  return sub_29EBF7EA8(a1, v5, v6);
}

uint64_t sub_29EBF9668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = *(*a2 + 80);
  v4 = sub_29EC00F58();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBF9718, 0, 0);
}

uint64_t sub_29EBF9718()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_29EC00DC8();
  v3 = sub_29EC00F58();
  *v2 = v0;
  v2[1] = sub_29EBF9814;
  v4 = v0[3];

  return (sub_29EBF8BAC)(v0 + 2, 0, 0, sub_29EBFA80C, v4, v3);
}

uint64_t sub_29EBF9814()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBF9910, 0, 0);
}

uint64_t sub_29EBF9910()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = *(v5 - 8);
    (*(v6 + 16))(v2, v0[4], v5);
    (*(v6 + 56))(v2, 0, 1, v5);
    (*(v3 + 32))(*(*(v1 + 64) + 40), v2, v4);
    swift_continuation_resume();
  }

  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

void sub_29EBF9A6C(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v4[2] = *(*a2 + 80);
  v4[3] = a1;
  type metadata accessor for AsyncChannel.State();
  sub_29EC00F58();
  sub_29EC00DC8();
  sub_29EC00F58();
  v3 = type metadata accessor for UnsafeResumption();
  sub_29EC00F58();
  sub_29EBFAAA4(sub_29EBFA814, v4, v2);
  if (v6)
  {
    v4[5] = v6;
    v4[6] = v7;
    v5 = v8 & 1;
    sub_29EBFAE1C(v3);
  }
}

uint64_t sub_29EBF9B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    v8 = *a1;
    if (*(a1 + 8))
    {
      if (*(a1 + 8) == 1)
      {
        v22 = *a1;
        type metadata accessor for AsyncChannel.Awaiting();

        swift_getWitnessTable();
        sub_29EC00E48();
        sub_29EC00DF8();
        v17 = v20;
        v9 = v22;
        v10 = sub_29EC00E08();

        if (v10)
        {
          v11 = 1;
        }

        else
        {

          v9 = 0;
          v11 = 2;
        }

        *a1 = v9;
        *(a1 + 8) = v11;
        v18 = v17;
        sub_29EC00F58();
        sub_29EC00DC8();
        v5 = sub_29EC00F58();
        v6 = &v18;
        goto LABEL_12;
      }

      sub_29EC00F58();
      sub_29EC00DC8();
      sub_29EC00F58();
      sub_29EC00DC8();
      sub_29EC011E8();
      swift_allocObject();
      v13 = sub_29EC00C78();
      *v14 = a2;
      result = sub_29EC00CF8();
      *a1 = v13;
    }

    else
    {
      v19 = *a1;
      v22 = a2;
      sub_29EC00F58();
      sub_29EC00DC8();
      sub_29EC00F58();
      sub_29EC00DC8();
      sub_29EC00CF8();
      result = sub_29EC00CC8();
      *a1 = v19;
    }

    *(a1 + 8) = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v22 = 0;
  sub_29EC00F58();
  sub_29EC00DC8();
  v5 = sub_29EC00F58();
  v6 = &v22;
LABEL_12:
  result = sub_29EBFAD18(a2, v6, v5, &v19);
  v15 = v20;
  v16 = v21;
  *a3 = v19;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  return result;
}

uint64_t AsyncChannel.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 1;
  *a1 = v1;
}

uint64_t AsyncChannel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AsyncChannel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29EBF9EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  AsyncChannel.makeAsyncIterator()(a1);
}

uint64_t sub_29EBF9F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(MEMORY[0x29EDCA470] + 4);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_29EBC4A5C;

  return MEMORY[0x2A1C73C78](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29EBFA0D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_29EBFA130(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EBFA178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EBFA1D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14ProductKitCore12AsyncChannelC8EmissionOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_29EBFA228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29EBFA27C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_29EBFA308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v41 - v14;
  if (sub_29EC00CB8())
  {
    sub_29EC00FF8();
    v16 = sub_29EC00FE8();
  }

  else
  {
    v16 = MEMORY[0x29EDCA1A0];
  }

  v46 = sub_29EC00CB8();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_29EC00CA8();
    sub_29EC00C88();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_29EC01038();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_29EC00A68();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_29EC00A98();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_29EBFA6C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for AsyncChannel.Emission();
  result = sub_29EBF83EC(v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_29EBFA730@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = v2;
  *(result + 16) = v2 + 1;
  return result;
}

uint64_t sub_29EBFA760(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBC35A4;

  return sub_29EBF9668(a1, v5, v4);
}

uint64_t sub_29EBFA860()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EBFA8B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29EBFA90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29EBFA960()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_29EBFA99C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_29EBFA9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_29EBFAA28(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_29EBFAAA4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x29EDC9DE8] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_29EBFAB5C()
{
  v0 = *MEMORY[0x29EDABB30]();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29EBFABC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_29EBFAC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x29EDC9DE8]) - 8) + 16))(a2, v3);
}

uint64_t sub_29EBFAD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_29EC012E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v13 - v10;
  (*(*(a3 - 8) + 32))(&v13 - v10, a2, a3);
  swift_storeEnumTagMultiPayload();
  return sub_29EBFAE34(a1, v11, a4);
}

uint64_t sub_29EBFAE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for UnsafeResumption() + 44);
  v6 = sub_29EC012E8();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_29EBFAEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29EC012E8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v24 - v19;
  (*(v21 + 16))(&v24 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v20, a4);
    return sub_29EBFB150(v16, v25, a3, a4);
  }

  else
  {
    v23 = *(v7 + 32);
    v23(v11, v20, a3);
    v23(*(*(v25 + 64) + 40), v11, a3);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_29EBFB150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_29EBFB204(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = sub_29EC00DC8();
  if (v5 <= 0x3F)
  {
    result = sub_29EC012E8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}