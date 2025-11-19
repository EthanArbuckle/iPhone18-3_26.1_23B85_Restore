uint64_t sub_25F10B3C8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_25F10B5F4;
  }

  else
  {
    v7 = sub_25F10B55C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F10B55C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  sub_25F10DD18(*(v0 + 136));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_25F10B5F4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  sub_25F10DD18(*(v0 + 136));

  v4 = *(v0 + 8);
  v5 = *(v0 + 120);

  return v4();
}

uint64_t sub_25F10B684(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = sub_25F176E8C();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v2 + 80) = v10;
  v11 = *(v10 - 8);
  *(v2 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10B808, 0, 0);
}

uint64_t sub_25F10B808()
{
  v34 = v0;
  v1 = *(v0 + 96);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v30 = *(v0 + 88);
    v4 = *(v0 + 72);
    v31 = *(v0 + 80);
    v32 = *(v0 + 96);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v29 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446466;
    v9 = *MEMORY[0x277D40D28];
    v10 = sub_25F176E7C();
    (*(*(v10 - 8) + 104))(v4, v9, v10);
    (*(v5 + 104))(v4, *MEMORY[0x277D40CE8], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = sub_25F0BECF0(v11, v13, &v33);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2082;
    *(v0 + 132) = v29;
    v15 = sub_25F17980C();
    v17 = sub_25F0BECF0(v15, v16, &v33);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 80);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 48);
  v22 = *(v0 + 136);
  v23 = *(*(v0 + 24) + *(**(v0 + 24) + 104));
  sub_25F17879C();
  v24 = swift_allocObject();
  *(v0 + 104) = v24;
  *(v24 + 16) = v22;
  v25 = *(MEMORY[0x277D40400] + 4);
  v26 = swift_task_alloc();
  *(v0 + 112) = v26;
  *v26 = v0;
  v26[1] = sub_25F10BB78;
  v27 = *(v0 + 48);

  return MEMORY[0x2821A0530](v0 + 16, v0 + 128);
}

uint64_t sub_25F10BB78()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_25F10BDA4;
  }

  else
  {
    v7 = sub_25F10BD0C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F10BD0C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  sub_25F10E034(*(v0 + 136));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_25F10BDA4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  sub_25F10E034(*(v0 + 136));

  v4 = *(v0 + 8);
  v5 = *(v0 + 120);

  return v4();
}

uint64_t sub_25F10BE34(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = sub_25F176E8C();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v2 + 80) = v10;
  v11 = *(v10 - 8);
  *(v2 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10BFB8, 0, 0);
}

uint64_t sub_25F10BFB8()
{
  v32 = v0;
  v1 = *(v0 + 96);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v28 = *(v0 + 88);
    v4 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = *(v0 + 96);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v27 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446466;
    (*(v5 + 104))(v4, *MEMORY[0x277D40CD0], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v9 = sub_25F17980C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_25F0BECF0(v9, v11, &v31);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v0 + 132) = v27;
    v13 = sub_25F17980C();
    v15 = sub_25F0BECF0(v13, v14, &v31);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 48);
  v20 = *(v0 + 136);
  v21 = *(*(v0 + 24) + *(**(v0 + 24) + 104));
  sub_25F17879C();
  v22 = swift_allocObject();
  *(v0 + 104) = v22;
  *(v22 + 16) = v20;
  v23 = *(MEMORY[0x277D40400] + 4);
  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *v24 = v0;
  v24[1] = sub_25F10C2E0;
  v25 = *(v0 + 48);

  return MEMORY[0x2821A0530](v0 + 16, v0 + 128);
}

uint64_t sub_25F10C2E0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_25F10C514;
  }

  else
  {
    v7 = sub_25F10C474;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F10C474()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CD0]);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_25F10C514()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CD0]);

  v4 = *(v0 + 8);
  v5 = *(v0 + 120);

  return v4();
}

uint64_t sub_25F10C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v7 = sub_25F1787AC();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = sub_25F176E8C();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = sub_25F17888C();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_25F10C73C, 0, 0);
}

uint64_t sub_25F10C73C()
{
  v41 = v0;
  v2 = v0 + 6;
  v1 = v0[6];
  v3 = v0 + 2;
  v4 = v0[17];
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v5 = sub_25F17887C();
  v6 = sub_25F17951C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  if (v7)
  {
    log = v5;
    v39 = v0[17];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v2 = v0 + 3;
    v35 = v0[6];
    v36 = v0[5];
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v14 = 136446466;
    (*(v12 + 104))(v11, *MEMORY[0x277D40CF8], v13);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v34 = v6;
    v15 = sub_25F17980C();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_25F0BECF0(v15, v17, &v40);
    v3 = v0 + 2;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;

    v19 = sub_25F0BECF0(v36, v35, &v40);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_25F0B3000, log, v34, "Requesting connection for %{public}s, %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v37, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    (*(v9 + 8))(v39, v10);
    v20 = v0 + 2;
  }

  else
  {
    v21 = v0[6];
    swift_bridgeObjectRelease_n();

    (*(v9 + 8))(v8, v10);
    v20 = v0 + 5;
  }

  v22 = *v20;
  v23 = *v2;
  v24 = v0[11];
  v25 = v0[7];
  v26 = *(v0[8] + *(*v0[8] + 104));
  v27 = *(v25 + 16);
  *(v25 + 24);
  sub_25F17879C();
  v28 = swift_allocObject();
  v0[18] = v28;
  *(v28 + 16) = v22;
  *(v28 + 24) = v23;
  v29 = *(MEMORY[0x277D40400] + 4);

  v30 = swift_task_alloc();
  v0[19] = v30;
  *v30 = v0;
  v30[1] = sub_25F10CAC4;
  v31 = v0[11];
  v32 = v0[7];

  return MEMORY[0x2821A0530](v0 + 4, v3);
}

uint64_t sub_25F10CAC4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_25F10CCF0;
  }

  else
  {
    v7 = sub_25F10CC58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F10CC58()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[4];
  sub_25F10E398(v0[2], v0[3]);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_25F10CCF0()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  sub_25F10E398(v0[2], v0[3]);

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_25F10CD80(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  *(v4 + 172) = a1;
  v8 = sub_25F1787AC();
  *(v4 + 72) = v8;
  v9 = *(v8 - 8);
  *(v4 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v11 = sub_25F176E8C();
  *(v4 + 96) = v11;
  v12 = *(v11 - 8);
  *(v4 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v14 = sub_25F17888C();
  *(v4 + 120) = v14;
  v15 = *(v14 - 8);
  *(v4 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;

  return MEMORY[0x2822009F8](sub_25F10CF1C, 0, 0);
}

uint64_t sub_25F10CF1C()
{
  v44 = v0;
  v2 = (v0 + 56);
  v1 = *(v0 + 56);
  v3 = v0 + 16;
  v4 = *(v0 + 136);
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v5 = sub_25F17887C();
  v6 = sub_25F17951C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 112);
    v39 = *(v0 + 120);
    v40 = *(v0 + 136);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v37 = *(v0 + 56);
    v38 = *(v0 + 128);
    v36 = *(v0 + 48);
    v35 = *(v0 + 172);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136446466;
    (*(v9 + 104))(v7, *MEMORY[0x277D40D08], v8);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v14 = v13;
    (*(v9 + 8))(v7, v8);
    v15 = sub_25F0BECF0(v12, v14, &v41);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    *(v0 + 168) = v35;
    v2 = (v0 + 32);
    v16 = (v0 + 24);
    v42 = sub_25F17980C();
    v43 = v17;
    MEMORY[0x25F8D50D0](58, 0xE100000000000000);
    MEMORY[0x25F8D50D0](v36, v37);
    swift_bridgeObjectRelease_n();
    v18 = sub_25F0BECF0(v42, v43, &v41);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_25F0B3000, v5, v6, "Requesting connection for %{public}s, %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v11, -1, -1);
    v19 = v10;
    v3 = v0 + 16;
    MEMORY[0x25F8D6230](v19, -1, -1);

    (*(v38 + 8))(v40, v39);
    v20 = (v0 + 16);
  }

  else
  {
    v20 = (v0 + 172);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);
    v24 = *(v0 + 56);
    swift_bridgeObjectRelease_n();

    (*(v22 + 8))(v21, v23);
    v16 = (v0 + 48);
  }

  v25 = *v20;
  v26 = *v16;
  v27 = *v2;
  v28 = *(v0 + 88);
  v29 = *(*(v0 + 64) + *(**(v0 + 64) + 104));
  sub_25F17879C();
  v30 = swift_allocObject();
  *(v0 + 144) = v30;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  v31 = *(MEMORY[0x277D40400] + 4);

  v32 = swift_task_alloc();
  *(v0 + 152) = v32;
  *v32 = v0;
  v32[1] = sub_25F10D2DC;
  v33 = *(v0 + 88);

  return MEMORY[0x2821A0530](v0 + 40, v3);
}

uint64_t sub_25F10D2DC()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_25F10D50C;
  }

  else
  {
    v7 = sub_25F10D470;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F10D470()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 40);
  sub_25F10E6CC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_25F10D50C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  sub_25F10E6CC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v4 = *(v0 + 8);
  v5 = *(v0 + 160);

  return v4();
}

uint64_t sub_25F10D5A0(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = sub_25F176E8C();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v2 + 80) = v10;
  v11 = *(v10 - 8);
  *(v2 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10D724, 0, 0);
}

uint64_t sub_25F10D724()
{
  v32 = v0;
  v1 = *(v0 + 96);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v28 = *(v0 + 88);
    v4 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = *(v0 + 96);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v27 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446466;
    (*(v5 + 104))(v4, *MEMORY[0x277D40CF0], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v9 = sub_25F17980C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_25F0BECF0(v9, v11, &v31);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v0 + 132) = v27;
    v13 = sub_25F17980C();
    v15 = sub_25F0BECF0(v13, v14, &v31);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 48);
  v20 = *(v0 + 136);
  v21 = *(*(v0 + 24) + *(**(v0 + 24) + 104));
  sub_25F17879C();
  v22 = swift_allocObject();
  *(v0 + 104) = v22;
  *(v22 + 16) = v20;
  v23 = *(MEMORY[0x277D40400] + 4);
  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *v24 = v0;
  v24[1] = sub_25F10DA4C;
  v25 = *(v0 + 48);

  return MEMORY[0x2821A0530](v0 + 16, v0 + 128);
}

uint64_t sub_25F10DA4C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_25F10DC80;
  }

  else
  {
    v7 = sub_25F10DBE0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F10DBE0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CF0]);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_25F10DC80()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  sub_25F10EA40(*(v0 + 136), MEMORY[0x277D40CF0]);

  v4 = *(v0 + 8);
  v5 = *(v0 + 120);

  return v4();
}

uint64_t sub_25F10DD18(int a1)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17884C();
  v12 = sub_25F17887C();
  v13 = sub_25F17951C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a1;
    v15 = v14;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 136446466;
    (*(v3 + 104))(v6, *MEMORY[0x277D40D00], v2);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v16 = sub_25F17980C();
    v27 = v7;
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    v19 = sub_25F0BECF0(v16, v18, &v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v29 = v26;
    v20 = sub_25F17980C();
    v22 = sub_25F0BECF0(v20, v21, &v30);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_25F0B3000, v12, v13, "Returning connection for %{public}s, %{public}s", v15, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v23, -1, -1);
    MEMORY[0x25F8D6230](v15, -1, -1);

    return (*(v8 + 8))(v11, v27);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_25F10E034(int a1)
{
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17884C();
  v12 = sub_25F17887C();
  v13 = sub_25F17951C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a1;
    v15 = v14;
    v30 = swift_slowAlloc();
    v32 = v30;
    *v15 = 136446466;
    v16 = *MEMORY[0x277D40D28];
    v17 = sub_25F176E7C();
    (*(*(v17 - 8) + 104))(v6, v16, v17);
    (*(v3 + 104))(v6, *MEMORY[0x277D40CE8], v2);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v18 = sub_25F17980C();
    v29 = v7;
    v20 = v19;
    (*(v3 + 8))(v6, v2);
    v21 = sub_25F0BECF0(v18, v20, &v32);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v31 = v28;
    v22 = sub_25F17980C();
    v24 = sub_25F0BECF0(v22, v23, &v32);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25F0B3000, v12, v13, "Returning connection for %{public}s, %{public}s", v15, 0x16u);
    v25 = v30;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v15, -1, -1);

    return (*(v8 + 8))(v11, v29);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_25F10E398(uint64_t a1, unint64_t a2)
{
  v28 = a1;
  v3 = sub_25F176E8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v13 = sub_25F17887C();
  v14 = sub_25F17951C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v15;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v16 = 136446466;
    (*(v4 + 104))(v7, *MEMORY[0x277D40CF8], v3);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v17 = sub_25F17980C();
    v25 = v8;
    v19 = v18;
    (*(v4 + 8))(v7, v3);
    v20 = sub_25F0BECF0(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;

    v21 = sub_25F0BECF0(v28, a2, &v29);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_25F0B3000, v13, v14, "Returning connection for %{public}s, %{public}s", v16, 0x16u);
    v22 = v26;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v16, -1, -1);

    return (*(v27 + 8))(v12, v25);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_25F10E6CC(int a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = sub_25F176E8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25F17888C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17884C();
  swift_bridgeObjectRetain_n();
  v15 = sub_25F17887C();
  v16 = sub_25F17951C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v18 = 136446466;
    (*(v6 + 104))(v9, *MEMORY[0x277D40D08], v5);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v28 = v16;
    v19 = sub_25F17980C();
    v30 = v10;
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_25F0BECF0(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v33 = v32;
    v34 = sub_25F17980C();
    v35 = v23;
    MEMORY[0x25F8D50D0](58, 0xE100000000000000);
    MEMORY[0x25F8D50D0](v29, a3);
    swift_bridgeObjectRelease_n();
    v24 = sub_25F0BECF0(v34, v35, &v36);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_25F0B3000, v15, v28, "Returning connection for %{public}s, %{public}s", v18, 0x16u);
    v25 = v31;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v18, -1, -1);

    return (*(v11 + 8))(v14, v30);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_25F10EA40(int a1, unsigned int *a2)
{
  v28 = a1;
  v3 = sub_25F176E8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v13 = sub_25F17887C();
  v14 = sub_25F17951C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v8;
    v16 = v15;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v16 = 136446466;
    (*(v4 + 104))(v7, *a2, v3);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v17 = sub_25F17980C();
    v19 = v18;
    (*(v4 + 8))(v7, v3);
    v20 = sub_25F0BECF0(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v29 = v28;
    v21 = sub_25F17980C();
    v23 = sub_25F0BECF0(v21, v22, &v30);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_25F0B3000, v13, v14, "Returning connection for %{public}s, %{public}s", v16, 0x16u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v24, -1, -1);
    MEMORY[0x25F8D6230](v16, -1, -1);

    return (*(v9 + 8))(v12, v27);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t SharedAgentServer<>.requestPreviewNonUIAgent(for:)(uint64_t a1, int a2)
{
  v3[52] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  v3[53] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v9 = *v2;
  v8 = v2[1];
  v3[54] = v7;
  v3[55] = v9;
  v10 = swift_task_alloc();
  v3[56] = v10;
  *v10 = v3;
  v10[1] = sub_25F10EE50;

  return sub_25F0EFC00(a2, v9, v8);
}

uint64_t sub_25F10EE50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 432);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 456) = a1;

    return MEMORY[0x2822009F8](sub_25F10EFA4, 0, 0);
  }
}

uint64_t sub_25F10EFA4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 424);
  sub_25F10F420(*(v0 + 440) + *(**(v0 + 440) + 96), v1);
  v3 = *v1;
  *(v0 + 464) = v3;
  *(v0 + 488) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 472) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  *v5 = v0;
  v5[1] = sub_25F10F090;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F10F090()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F10F1A8, 0, 0);
}

uint64_t sub_25F10F1A8()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 432);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  sub_25F0E0148(v0 + 24, v0 + 288);
  sub_25F10F490(v0 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);

  sub_25F0E263C(v0 + 24);
  v11 = swift_task_alloc();
  *(v0 + 480) = v11;
  *v11 = v0;
  v11[1] = sub_25F10F300;
  v12 = *(v0 + 456);
  v13 = *(v0 + 416);

  return sub_25F1196D8(v13, v12, v10, v9);
}

uint64_t sub_25F10F300()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v6 = *v0;

  v3 = *(v1 + 432);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25F10F420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F10F490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PreviewNonUIAgentService.bootstrap(client:context:endpoint:using:)(int a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0BF3E4;

  return sub_25F110DB4(a1, a2, a3);
}

uint64_t sub_25F10F5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48268, &qword_25F17F588);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - v5;
  v7 = sub_25F17764C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0;
  v13[1] = 0;
  (*(v3 + 16))(v6, a1, v2);
  sub_25F17760C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  sub_25F0E26B4();
  sub_25F176FFC();
  return (*(v8 + 8))(v11, v7);
}

id static PreviewNonUIAgentService.identity(of:)()
{
  v0 = sub_25F176F4C();
  v1 = [v0 pid];

  return v1;
}

uint64_t sub_25F10F814(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F0C10CC;

  return sub_25F110DB4(v7, a3, a4);
}

uint64_t AsyncAgentServer<>.requestPreviewSceneAgentConnection(for:with:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_25F10F8FC, 0, 0);
}

uint64_t sub_25F10F8FC()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25F10F9B8;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);

  return sub_25F10CD80(v6, v5, v3);
}

uint64_t sub_25F10F9B8(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t PreviewSceneAgentService.ClientIdentity.description.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *v0;
  v5 = sub_25F17980C();
  MEMORY[0x25F8D50D0](58, 0xE100000000000000);
  MEMORY[0x25F8D50D0](v1, v2);
  return v5;
}

uint64_t static PreviewSceneAgentService.ClientIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

uint64_t PreviewSceneAgentService.ClientIdentity.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_25F1798FC();

  return sub_25F17911C();
}

uint64_t PreviewSceneAgentService.ClientIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_25F1798CC();
  sub_25F1798FC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F10FC54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_25F1798CC();
  sub_25F1798FC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F10FCB8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_25F1798FC();

  return sub_25F17911C();
}

uint64_t sub_25F10FD0C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_25F1798CC();
  sub_25F1798FC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F10FD6C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *v0;
  v5 = sub_25F17980C();
  MEMORY[0x25F8D50D0](58, 0xE100000000000000);
  MEMORY[0x25F8D50D0](v1, v2);
  return v5;
}

uint64_t sub_25F10FDE4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

uint64_t static PreviewSceneAgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0C10CC;

  return sub_25F110508(a1, a2, a3);
}

uint64_t static PreviewSceneAgentService.identity(of:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177F8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_25F177E5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F176F4C();
  v11 = [v10 pid];

  sub_25F176F3C();
  sub_25F111798(&qword_27FD47418, MEMORY[0x277D40F20]);
  result = sub_25F17850C();
  if (!v1)
  {
    v13 = sub_25F177E4C();
    v15 = v14;
    result = (*(v6 + 8))(v9, v5);
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
  }

  return result;
}

uint64_t sub_25F1100C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F0C10CC;

  return sub_25F110508(a1, a3, a4);
}

uint64_t sub_25F11018C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177F8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_25F177E5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F176F4C();
  v11 = [v10 pid];

  sub_25F176F3C();
  sub_25F111798(&qword_27FD47418, MEMORY[0x277D40F20]);
  result = sub_25F17850C();
  if (!v1)
  {
    v13 = sub_25F177E4C();
    v15 = v14;
    result = (*(v6 + 8))(v9, v5);
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
  }

  return result;
}

uint64_t sub_25F110344(int *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, double a5)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25F111908(a4, a2, a3);
  result = swift_allocError();
  *v11 = a5;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_25F1103C8(uint64_t *a1, double a2)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48280, &qword_25F17F5A8);
  sub_25F111908(&qword_27FD48288, &qword_27FD48280, &qword_25F17F5A8);
  v5 = swift_allocError();
  *(v6 + 8) = v4;
  *(v6 + 16) = v3;
  *v6 = a2;

  return v5;
}

uint64_t sub_25F110464(int *a1, double a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48258, &qword_25F17F580);
  sub_25F111908(&qword_27FD48260, &qword_27FD48258, &qword_25F17F580);
  v6 = swift_allocError();
  *(v7 + 8) = v3;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *v7 = a2;

  return v6;
}

uint64_t sub_25F110508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v3[7] = v9;
  v3[8] = v11;
  v3[9] = v12;
  v13 = *(a3 + 32);
  v14 = *(a3 + 40);
  v15 = swift_task_alloc();
  v3[10] = v15;
  *v15 = v3;
  v15[1] = sub_25F110640;

  return sub_25F0EFE30(v10, v13, v14);
}

uint64_t sub_25F110640(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_25F110988;
  }

  else
  {
    v5 = sub_25F110754;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F110754()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F111798(&qword_27FD47538, MEMORY[0x277D40DF8]);
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25F11086C;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F11086C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_25F110C20;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_25F1109EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F110988()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F1109EC()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v0[2] = v0[8];
  v0[3] = v1;
  sub_25F0E26B4();

  v5 = sub_25F17700C();
  v0[15] = v5;

  v6 = *(MEMORY[0x277D857C8] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v7 = v0;
  v7[1] = sub_25F110B0C;
  v9 = MEMORY[0x277D84950];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v8, v5, v10, v8, v9);
}

uint64_t sub_25F110B0C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_25F110D20;
  }

  else
  {
    v3 = sub_25F110C8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F110C20()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F110C8C()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F110D20()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  (*(v3 + 8))(v2, v4);
  v5 = v0[17];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F110DB4(int a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_25F110EE0;

  return sub_25F0EFE30(a1, v10, v9);
}

uint64_t sub_25F110EE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_25F111228;
  }

  else
  {
    v5 = sub_25F110FF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F110FF4()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F111798(&qword_27FD47538, MEMORY[0x277D40DF8]);
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_25F11110C;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F11110C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_25F1114A0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_25F11128C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F111228()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F11128C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_25F111384;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_25F111384()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_25F11158C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_25F11150C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F1114A0()
{
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F11150C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F11158C()
{
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  (*(v3 + 8))(v2, v4);
  v5 = v0[13];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

unint64_t sub_25F111624()
{
  result = qword_27FD48240;
  if (!qword_27FD48240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48240);
  }

  return result;
}

unint64_t sub_25F11167C()
{
  result = qword_27FD48248;
  if (!qword_27FD48248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48248);
  }

  return result;
}

unint64_t sub_25F1116D4()
{
  result = qword_27FD48250;
  if (!qword_27FD48250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48250);
  }

  return result;
}

uint64_t sub_25F111758()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F111798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F1117E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25F10F5C4(a1);
}

uint64_t sub_25F11182C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F111908(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F111978@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25F176F5C();
  *a1 = result;
  return result;
}

uint64_t sub_25F1119A4(uint64_t a1, unsigned int *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25F111A58;

  return (sub_25F10D5A0)(v3);
}

uint64_t sub_25F111A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_25F111BA4, 0, 0);
  }
}

uint64_t sub_25F111BA4()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v2[4] = sub_25F111C2C();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

unint64_t sub_25F111C2C()
{
  result = qword_27FD475C8;
  if (!qword_27FD475C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46D28, &qword_25F17B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD475C8);
  }

  return result;
}

uint64_t sub_25F111C90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  *(v5 + 144) = a4;
  *(v5 + 16) = a1;
  v6 = sub_25F176F7C();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = sub_25F1777CC();
  *(v5 + 64) = v9;
  v10 = *(v9 - 8);
  *(v5 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v12 = sub_25F176DFC();
  *(v5 + 96) = v12;
  v13 = *(v12 - 8);
  *(v5 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F111E28, 0, 0);
}

uint64_t sub_25F111E28()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  v6 = *(v0 + 144);
  sub_25F176DEC();
  (*(v4 + 16))(v1, v2, v3);
  sub_25F176F6C();
  v7 = *(MEMORY[0x277D406C0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_25F111F20;
  v9 = *(v0 + 120);
  v10 = *(v0 + 88);
  v11 = *(v0 + 56);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);

  return MEMORY[0x2821A0E90](v10, v9, v11, v12);
}

uint64_t sub_25F111F20()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_25F1121AC;
  }

  else
  {
    v6 = sub_25F112090;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F112090()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v11 = v0[7];
  v8 = v0[2];
  (*(v7 + 16))(v0[10], v5, v6);
  sub_25F17742C();
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F1121AC()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  (*(v0[13] + 8))(v0[15], v0[12]);

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_25F112264()
{
  sub_25F1774BC();
  sub_25F1122D8();
  return sub_25F17800C();
}

unint64_t sub_25F1122D8()
{
  result = qword_27FD480D0;
  if (!qword_27FD480D0)
  {
    sub_25F1774BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD480D0);
  }

  return result;
}

uint64_t sub_25F112330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for CanvasControl();
  v17 = v16[10];
  v18 = type metadata accessor for ThumbnailHostFactory();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = sub_25F177B1C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = (a9 + v16[7]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a9 + v16[8]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + v16[9]);
  *v22 = a6;
  v22[1] = a7;
  v23 = sub_25F17960C();
  v24 = *(*(v23 - 8) + 40);

  return v24(a9 + v17, a8, v23);
}

uint64_t sub_25F1124A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v39 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48300, &qword_25F17F6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = sub_25F177B0C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_25F177ACC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25F177B1C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_25F115F54(a1, v21);
  sub_25F177AFC();
  v40 = a4;
  sub_25F0B7E2C(a4, v11, &qword_27FD48300, &qword_25F17F6A0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48308, &qword_25F17F6A8);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v11, 1, v27) == 1)
  {
    sub_25F0B7E94(v11, &qword_27FD48300, &qword_25F17F6A0);
    v29 = sub_25F1777BC();
    (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  }

  else
  {
    sub_25F0B7E2C(v11, v15, &qword_27FD482C8, &qword_25F183740);
    sub_25F0B7E94(v11, qword_27FD48308, &qword_25F17F6A8);
  }

  sub_25F177ADC();
  sub_25F115FB8(v37);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482F8, &qword_25F17F698);
  v31 = v30[10];
  (*(v28 + 56))(a5 + v31, 1, 1, v27);
  (*(v23 + 32))(a5, v26, v22);
  v32 = (a5 + v30[7]);
  *v32 = sub_25F112CB8;
  v32[1] = 0;
  v33 = (a5 + v30[8]);
  *v33 = sub_25F112D3C;
  v33[1] = 0;
  v34 = (a5 + v30[9]);
  v35 = v39;
  *v34 = v38;
  v34[1] = v35;
  return sub_25F0EBB7C(v40, a5 + v31, &qword_27FD48300, &qword_25F17F6A0);
}

uint64_t sub_25F112898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v45 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a7;
  v9 = type metadata accessor for ThumbnailHostFactory();
  v10 = sub_25F17960C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - v19;
  v21 = sub_25F177B0C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_25F177ACC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25F177B1C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  sub_25F115F54(a1, v26);
  sub_25F177AFC();
  v31 = *(v11 + 16);
  v49 = a4;
  v42 = v31;
  v31(v16, a4, v10);
  v32 = *(v9 - 8);
  if ((*(v32 + 48))(v16, 1, v9) == 1)
  {
    (*(v11 + 8))(v16, v10);
    v33 = sub_25F1777BC();
    (*(*(v33 - 8) + 56))(v20, 1, 1, v33);
  }

  else
  {
    sub_25F0B7E2C(v16, v20, &qword_27FD482C8, &qword_25F183740);
    (*(v32 + 8))(v16, v9);
  }

  sub_25F177ADC();
  v34 = swift_allocObject();
  v35 = v44;
  v36 = v45;
  *(v34 + 16) = v45;
  *(v34 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  v38 = v43;
  v39 = v49;
  v42(v43, v49, v10);
  sub_25F112330(v30, sub_25F117730, v34, sub_25F11775C, v37, v47, v48, v38, v46);
  (*(v11 + 8))(v39, v10);
  return sub_25F115FB8(v50);
}

uint64_t sub_25F112CB8()
{
  sub_25F177CCC();
  sub_25F1176D8(&qword_27FD48410, MEMORY[0x277D40CA0]);
  return sub_25F1774DC();
}

uint64_t sub_25F112D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48408, &qword_25F17F860);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_25F177CCC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_25F1176D8(&qword_27FD48410, MEMORY[0x277D40CA0]);
  return sub_25F1774EC();
}

uint64_t sub_25F112E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17960C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(a2 - 8);
  (*(v8 + 16))(&v10 - v6, a1, a2);
  (*(v8 + 56))(v7, 0, 1, a2);
  return sub_25F1774EC();
}

uint64_t sub_25F112F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v78 = a2;
  v85 = a5;
  v64 = type metadata accessor for ThumbnailHostFactory();
  v63 = sub_25F17960C();
  v62 = *(v63 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - v8;
  v84 = sub_25F17960C();
  v82 = type metadata accessor for ThumbnailHostFactory();
  v9 = sub_25F17960C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v59 - v11;
  v76 = a3;
  v12 = type metadata accessor for CanvasControl();
  v13 = sub_25F17960C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v74 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v59 - v19;
  v72 = v20;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483E8, &qword_25F17F840);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v59 - v25;
  v27 = sub_25F177B1C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v14 + 16);
  v81 = a1;
  v68 = v14 + 16;
  v69 = v32;
  v32(v22, a1, v13);
  v33 = *(v12 - 8);
  v65 = *(v33 + 48);
  v66 = v33 + 48;
  v34 = v65(v22, 1, v12);
  v79 = v31;
  v77 = v12;
  v75 = v13;
  v73 = v14;
  v60 = v33;
  if (v34 == 1)
  {
    (*(v14 + 8))(v22, v13);
    (*(v28 + 56))(v26, 1, 1, v27);
    sub_25F177AEC();
    if ((*(v28 + 48))(v26, 1, v27) != 1)
    {
      sub_25F0B7E94(v26, &qword_27FD483E8, &qword_25F17F840);
    }
  }

  else
  {
    (*(v28 + 16))(v26, v22, v27);
    (*(v33 + 8))(v22, v12);
    (*(v28 + 56))(v26, 0, 1, v27);
    (*(v28 + 32))(v31, v26, v27);
  }

  v35 = swift_allocObject();
  v36 = v78;
  v37 = v76;
  v35[2] = v78;
  v35[3] = v37;
  v38 = v80;
  v70 = v35;
  v35[4] = v80;
  v39 = swift_allocObject();
  v39[2] = v36;
  v39[3] = v37;
  v67 = v39;
  v39[4] = v38;
  v40 = v71;
  v41 = v81;
  v42 = v75;
  v43 = v69;
  v69(v71, v81, v75);
  v44 = v73;
  v45 = (*(v73 + 80) + 40) & ~*(v73 + 80);
  v46 = swift_allocObject();
  *(v46 + 2) = v36;
  *(v46 + 3) = v37;
  v47 = v46;
  *(v46 + 4) = v38;
  (*(v44 + 32))(&v46[v45], v40, v42);
  v48 = v74;
  v43(v74, v41, v42);
  v49 = v77;
  if (v65(v48, 1, v77) == 1)
  {
    (*(v44 + 8))(v48, v42);
    v50 = 1;
    v51 = v83;
  }

  else
  {
    v52 = v62;
    v53 = v61;
    v54 = v63;
    (*(v62 + 16))(v61, &v48[*(v49 + 40)], v63);
    (*(v60 + 8))(v48, v49);
    v55 = v64;
    v56 = *(v64 - 8);
    v57 = (*(v56 + 48))(v53, 1, v64);
    v51 = v83;
    if (v57 == 1)
    {
      (*(v52 + 8))(v53, v54);
      v50 = 1;
    }

    else
    {
      sub_25F163800(v55, v83);
      (*(v56 + 8))(v53, v55);
      v50 = 0;
    }
  }

  (*(*(v82 - 8) + 56))(v51, v50, 1);
  return sub_25F112330(v79, sub_25F1173B4, v70, sub_25F1173E0, v67, sub_25F117634, v47, v51, v85);
}

uint64_t sub_25F1136D0(uint64_t a1)
{
  v2 = sub_25F17960C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_25F1774EC();
}

uint64_t sub_25F1137B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v6 = type metadata accessor for CanvasControl();
  v7 = sub_25F17960C();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = sub_25F17960C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11);
  if ((*(v17 + 48))(v16, 1, a4) == 1)
  {
    return (*(v12 + 8))(v16, v11);
  }

  (*(v17 + 32))(v20, v16, a4);
  v22 = v29;
  (*(v29 + 16))(v10, v28, v7);
  v23 = *(v6 - 8);
  if ((*(v23 + 48))(v10, 1, v6) == 1)
  {
    (*(v17 + 8))(v20, a4);
    return (*(v22 + 8))(v10, v7);
  }

  else
  {
    v24 = &v10[*(v6 + 36)];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = *(v23 + 8);

    v27(v10, v6);
    v26(v20);

    return (*(v17 + 8))(v20, a4);
  }
}

uint64_t static CanvasControl.custom<A>(configuration:thumbnailHostFactory:interactionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a3;
  v24 = a6;
  type metadata accessor for ThumbnailHostFactory();
  v12 = sub_25F17960C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = sub_25F177ACC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25F177F8C();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v16, a2, v12);

  return sub_25F112898(v20, v23, a4, v16, a5, v24, a7);
}

uint64_t sub_25F113CAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a5;
  v72 = a3;
  v73 = a4;
  v87 = a2;
  LODWORD(v81) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v67 - v10;
  v11 = *(a6 + 16);
  v12 = type metadata accessor for ThumbnailHostFactory();
  v13 = sub_25F17960C();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v78 = &v67 - v16;
  v85 = v12;
  v77 = *(v12 - 8);
  v17 = *(v77 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v74 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  v86 = v11;
  v83 = *(v11 - 8);
  v26 = *(v83 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v28 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v67 - v29;
  v31 = a6;
  v32 = *(a6 + 28);
  v33 = v6;
  v34 = v6 + v32;
  v35 = *(v34 + 8);
  v36 = v88;
  result = (*v34)(v87);
  if (!v36)
  {
    v68 = v26;
    v69 = v21;
    v38 = v78;
    v70 = v28;
    v39 = v31;
    v40 = v33;
    v42 = v84;
    v41 = v85;
    v43 = v77;
    v88 = v30;
    v87 = 0;
    if (v81)
    {
      v44 = v79;
      v45 = v80;
      (*(v79 + 16))(v78, v40 + *(v39 + 40), v80);
      v46 = (*(v43 + 48))(v38, 1, v41);
      v47 = v82;
      if (v46 == 1)
      {
        (*(v44 + 8))(v38, v45);
        v48 = v86;
        type metadata accessor for CanvasControl.NoThumbnailHost();
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        return (*(v83 + 8))(v88, v48);
      }

      else
      {
        v54 = *(v43 + 32);
        v80 = v43 + 32;
        v81 = v54;
        v54(v42, v38, v41);
        v55 = sub_25F17932C();
        (*(*(v55 - 8) + 56))(v76, 1, 1, v55);
        v56 = v83;
        (*(v83 + 16))(v70, v88, v86);
        (*(v43 + 16))(v75, v42, v41);
        sub_25F0B7E2C(v47, v74, &qword_27FD483D8, &qword_25F17F828);
        sub_25F17930C();
        v57 = v73;

        v58 = sub_25F1792FC();
        v59 = (*(v56 + 80) + 56) & ~*(v56 + 80);
        v60 = (v68 + *(v43 + 80) + v59) & ~*(v43 + 80);
        v61 = (v17 + *(v71 + 80) + v60) & ~*(v71 + 80);
        v62 = swift_allocObject();
        v63 = MEMORY[0x277D85700];
        *(v62 + 2) = v58;
        *(v62 + 3) = v63;
        v64 = v86;
        v65 = v72;
        *(v62 + 4) = v86;
        *(v62 + 5) = v65;
        *(v62 + 6) = v57;
        (*(v56 + 32))(&v62[v59], v70, v64);
        v66 = v85;
        v81(&v62[v60], v75, v85);
        sub_25F117154(v74, &v62[v61]);
        sub_25F0CD9E8(0, 0, v76, &unk_25F17F838, v62);

        (*(v43 + 8))(v84, v66);
        return (*(v56 + 8))(v88, v64);
      }
    }

    else
    {
      v49 = v40 + *(v39 + 36);
      v50 = *(v49 + 8);
      v51 = v88;
      (*v49)(v88);
      sub_25F0B7E2C(v82, v25, &qword_27FD483D8, &qword_25F17F828);
      v52 = sub_25F1774AC();
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v25, 1, v52) == 1)
      {
        (*(v83 + 8))(v51, v86);
        return sub_25F0B7E94(v25, &qword_27FD483D8, &qword_25F17F828);
      }

      else
      {
        sub_25F17749C();
        (*(v83 + 8))(v51, v86);
        return (*(v53 + 8))(v25, v52);
      }
    }
  }

  return result;
}

uint64_t sub_25F1143F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v17;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = sub_25F17752C();
  v8[19] = v10;
  v11 = *(v10 - 8);
  v8[20] = v11;
  v12 = *(v11 + 64) + 15;
  v8[21] = swift_task_alloc();
  sub_25F17930C();
  v8[22] = sub_25F1792FC();
  v14 = sub_25F1792CC();
  v8[23] = v14;
  v8[24] = v13;

  return MEMORY[0x2822009F8](sub_25F11453C, v14, v13);
}

uint64_t sub_25F11453C()
{
  v1 = *(v0 + 96);
  (*(v0 + 88))();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v3 + 8);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_25F1147B8;
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);

  return v11(v0 + 56, v8, v9, v7, v2, v3);
}

uint64_t sub_25F1147B8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_25F114BE4;
  }

  else
  {
    v7 = sub_25F1148F4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F1148F4()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = *(v0 + 56);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  PreviewSnapshot.makeRenderPayload()(v3);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v5 = *(v0 + 136);
    sub_25F0B7E2C(*(v0 + 120), v5, &qword_27FD483D8, &qword_25F17F828);
    v6 = sub_25F1774AC();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v0 + 136);
    if (v8 == 1)
    {

      sub_25F0B7E94(v9, &qword_27FD483D8, &qword_25F17F828);
    }

    else
    {
      sub_25F17747C();

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    v10 = *(v0 + 144);
    sub_25F0B7E2C(*(v0 + 120), v10, &qword_27FD483D8, &qword_25F17F828);
    v11 = sub_25F1774AC();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    if (v13 == 1)
    {
      (*(v15 + 8))(*(v0 + 168), *(v0 + 152));

      sub_25F0B7E94(v16, &qword_27FD483D8, &qword_25F17F828);
    }

    else
    {
      sub_25F1176D8(&qword_27FD483E0, MEMORY[0x277D407D0]);
      sub_25F17748C();

      (*(v15 + 8))(v14, v17);
      (*(v12 + 8))(v16, v11);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v18 = *(v0 + 168);
  v19 = *(v0 + 136);
  v20 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_25F114BE4()
{
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[26];
  v3 = v0[17];
  sub_25F0B7E2C(v0[15], v3, &qword_27FD483D8, &qword_25F17F828);
  v4 = sub_25F1774AC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[17];
  if (v6 == 1)
  {

    sub_25F0B7E94(v7, &qword_27FD483D8, &qword_25F17F828);
  }

  else
  {
    sub_25F17747C();

    (*(v5 + 8))(v7, v4);
  }

  v8 = v0[21];
  v9 = v0[17];
  v10 = v0[18];

  v11 = v0[1];

  return v11();
}

PreviewShellKit::CanvasTimelineControl::TimelineStop __swiftcall CanvasTimelineControl.TimelineStop.init(name:sfSymbolName:)(Swift::String name, Swift::String_optional sfSymbolName)
{
  v2->value = name;
  v2[1] = sfSymbolName;
  result.sfSymbolName = sfSymbolName;
  result.name = name;
  return result;
}

uint64_t CanvasTimelineControl.init(stops:allowShuffle:thumbnailHostFactory:action:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a3;
  v59 = a4;
  v58 = a2;
  v66 = a6;
  v73 = sub_25F177AAC();
  v7 = *(v73 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v73);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v56 - v13;
  v14 = sub_25F177B0C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_25F177B1C();
  v61 = *(v65 - 8);
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v65);
  v60 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482D0, &qword_25F17F670);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v57 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = &v56 - v23;
  v56 = sub_25F177ACC();
  v24 = *(*(v56 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v56);
  v67 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  v68 = &v56 - v28;
  v72 = *(a1 + 16);
  if (v72)
  {
    v29 = 0;
    v71 = v7 + 32;
    v30 = (a1 + 56);
    v31 = MEMORY[0x277D84F90];
    while (v29 < *(a1 + 16))
    {
      v33 = *(v30 - 1);
      v32 = *v30;
      v35 = *(v30 - 3);
      v34 = *(v30 - 2);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_25F177A9C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_25F11629C(0, v31[2] + 1, 1, v31, &qword_27FD48418, &qword_25F17F868, MEMORY[0x277D40B80]);
      }

      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        v31 = sub_25F11629C(v36 > 1, v37 + 1, 1, v31, &qword_27FD48418, &qword_25F17F868, MEMORY[0x277D40B80]);
      }

      ++v29;
      v31[2] = v37 + 1;
      result = (*(v7 + 32))(v31 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37, v10, v73);
      v30 += 4;
      if (v72 == v29)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v38 = v68;
    sub_25F177ABC();
    swift_storeEnumTagMultiPayload();
    v39 = swift_allocObject();
    v40 = v62;
    v41 = v63;
    *(v39 + 16) = v59;
    *(v39 + 24) = v40;
    v42 = v70;
    sub_25F0B7E2C(v41, v70, &qword_27FD482D0, &qword_25F17F670);
    sub_25F115F54(v38, v67);

    sub_25F177AFC();
    v43 = v42;
    v44 = v57;
    sub_25F0B7E2C(v43, v57, &qword_27FD482D0, &qword_25F17F670);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482D8, &qword_25F17F678);
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {
      sub_25F0B7E94(v44, &qword_27FD482D0, &qword_25F17F670);
      v47 = sub_25F1777BC();
      (*(*(v47 - 8) + 56))(v64, 1, 1, v47);
    }

    else
    {
      sub_25F0B7E2C(v44, v64, &qword_27FD482C8, &qword_25F183740);
      sub_25F0B7E94(v44, &qword_27FD482D8, &qword_25F17F678);
    }

    v49 = v65;
    v48 = v66;
    v50 = v60;
    sub_25F177ADC();

    sub_25F0B7E94(v41, &qword_27FD482D0, &qword_25F17F670);
    sub_25F115FB8(v68);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C0, &unk_25F17F660);
    v52 = v51[10];
    (*(v46 + 56))(v48 + v52, 1, 1, v45);
    (*(v61 + 32))(v48, v50, v49);
    v53 = (v48 + v51[7]);
    *v53 = sub_25F116478;
    v53[1] = 0;
    v54 = (v48 + v51[8]);
    *v54 = sub_25F1164C8;
    v54[1] = 0;
    v55 = (v48 + v51[9]);
    *v55 = sub_25F115F28;
    v55[1] = v39;
    return sub_25F0EBB7C(v70, v48 + v52, &qword_27FD482D0, &qword_25F17F670);
  }

  return result;
}

uint64_t CanvasToggleControl.init(sfSymbolName:title:action:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a3;
  v47 = a5;
  v48 = a2;
  v46 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v46 - v8;
  v9 = sub_25F177B0C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25F177B1C();
  v51 = *(v53 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482E8, &qword_25F17F688);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = sub_25F177ACC();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  v29 = *a4;
  v30 = a4[1];
  if (*a4)
  {
    v31 = *a4;
  }

  else
  {
    v31 = sub_25F1159E8;
  }

  if (*a4)
  {
    v32 = a4[1];
  }

  else
  {
    v32 = 0;
  }

  sub_25F104D30(v29);
  sub_25F177A8C();
  swift_storeEnumTagMultiPayload();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v46 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482F0, &qword_25F17F690);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v36(v21, 1, 1, v34);
  sub_25F115F54(v28, v26);
  v48 = v12;
  sub_25F177AFC();
  v50 = v21;
  sub_25F0B7E2C(v21, v19, &qword_27FD482E8, &qword_25F17F688);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
    sub_25F0B7E94(v19, &qword_27FD482E8, &qword_25F17F688);
    v37 = sub_25F1777BC();
    (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  }

  else
  {
    sub_25F0B7E2C(v19, v52, &qword_27FD482C8, &qword_25F183740);
    sub_25F0B7E94(v19, &qword_27FD482F0, &qword_25F17F690);
  }

  v38 = v49;
  sub_25F177ADC();

  sub_25F115FB8(v28);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482E0, &qword_25F17F680);
  v40 = v39[10];
  v41 = v47;
  v36((v47 + v40), 1, 1, v34);
  (*(v51 + 32))(v41, v38, v53);
  v42 = (v41 + v39[7]);
  *v42 = sub_25F116534;
  v42[1] = 0;
  v43 = (v41 + v39[8]);
  *v43 = sub_25F116584;
  v43[1] = 0;
  v44 = (v41 + v39[9]);
  *v44 = sub_25F116508;
  v44[1] = v33;
  return sub_25F0EBB7C(v50, v41 + v40, &qword_27FD482E8, &qword_25F17F688);
}

uint64_t sub_25F1159E8()
{
  v0 = sub_25F17888C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v5 = sub_25F17887C();
  v6 = sub_25F17953C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25F0B3000, v5, v6, "InteractionEvent not supported on this toggle control", v7, 2u);
    MEMORY[0x25F8D6230](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t CanvasGridControl.init(configuration:thumbnailHostFactory:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48300, &qword_25F17F6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_25F177ACC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F177A7C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  swift_storeEnumTagMultiPayload();
  sub_25F0B7E2C(a2, v12, qword_27FD48308, &qword_25F17F6A8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48308, &qword_25F17F6A8);
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_25F1124A4(v16, a3, v22, v12, a5);
  sub_25F0B7E94(a2, qword_27FD48308, &qword_25F17F6A8);
  return (*(v18 + 8))(a1, v17);
}

char *sub_25F115DA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47920, &qword_25F17C9E0);
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

uint64_t sub_25F115EF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F115F28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25F115F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F177ACC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F115FB8(uint64_t a1)
{
  v2 = sub_25F177ACC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_25F116014(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F0, &unk_25F17F870);
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

char *sub_25F116170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486E0, &qword_25F180700);
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

size_t sub_25F11629C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_25F116478@<X0>(void *a1@<X8>)
{
  result = sub_25F1774DC();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_25F116508(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25F116534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F1774DC();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

unint64_t sub_25F1165D4(uint64_t a1)
{
  result = sub_25F177B1C();
  if (v3 <= 0x3F)
  {
    result = sub_25F105150();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      type metadata accessor for ThumbnailHostFactory();
      result = sub_25F17960C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F11669C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177B1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = *(a3 + 16);
    type metadata accessor for ThumbnailHostFactory();
    v12 = sub_25F17960C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25F1167E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F177B1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = *(a4 + 16);
    type metadata accessor for ThumbnailHostFactory();
    v12 = sub_25F17960C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25F1169B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F1169FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F116AD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_25F116B44(319, a4);
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F116B44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CanvasControl();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit19CanvasToggleControlV6ActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F116BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25F116BF8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_25F116C4C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_10Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_25F116DD0()
{
  sub_25F116E3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F116E3C()
{
  if (!qword_27FD483D0)
  {
    sub_25F177CCC();
    v0 = type metadata accessor for CanvasControl();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD483D0);
    }
  }
}

uint64_t sub_25F116EAC()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ThumbnailHostFactory();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v21 = *(v10 + 64);
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v15 = sub_25F1777BC();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v0[v8], 1, v15))
  {
    (*(v16 + 8))(&v0[v8], v15);
  }

  v17 = *&v0[v8 + 8 + *(v6 + 28)];

  v18 = sub_25F1774AC();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v0[v12], 1, v18))
  {
    (*(v19 + 8))(&v0[v12], v18);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v21, v3 | v7 | v11 | 7);
}

uint64_t sub_25F117154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1171C4(uint64_t a1)
{
  v3 = v2;
  v4 = *(*(v1[4] - 8) + 64);
  v5 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v6 = *(type metadata accessor for ThumbnailHostFactory() - 8);
  v7 = (v5 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25F0BF3E4;

  return sub_25F1143F4(a1, v11, v12, v13, v14, v1 + v5, v1 + v7, v1 + v10);
}

uint64_t sub_25F1173B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_25F1774CC();
}

uint64_t sub_25F1173E0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F1136D0(a1);
}

uint64_t sub_25F1173EC()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for CanvasControl();
  v3 = *(sub_25F17960C() - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (v4 + 40) & ~v4;
  v7 = v0 + v6;
  if (!(*(*(v2 - 1) + 48))(v0 + v6, 1, v2))
  {
    v8 = sub_25F177B1C();
    (*(*(v8 - 8) + 8))(v0 + v6, v8);
    v9 = *(v7 + v2[7] + 8);

    v10 = *(v7 + v2[8] + 8);

    v11 = *(v7 + v2[9] + 8);

    v12 = v7 + v2[10];
    v13 = type metadata accessor for ThumbnailHostFactory();
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v14 = sub_25F1777BC();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v12, 1, v14))
      {
        (*(v15 + 8))(v12, v14);
      }

      v16 = *(v12 + *(v13 + 28) + 8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v4 | 7);
}

uint64_t sub_25F117634(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  type metadata accessor for CanvasControl();
  v6 = *(sub_25F17960C() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_25F1137B4(a1, v7, v3, v4);
}

uint64_t sub_25F1176D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F117730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F1774DC();
}

id static UIColor.shellTintColor.getter()
{
  v0 = sub_25F17905C();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed_];

  if (v2)
  {
    return v2;
  }

  v4 = [v1 systemBlueColor];

  return v4;
}

void sub_25F117828(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_25F117A28();
}

id FullScreenHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25F17905C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void FullScreenHostingViewController.init(nibName:bundle:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_25F117A84();
}

void sub_25F117948(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_25F117A84();
}

id FullScreenHostingViewController.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FullScreenHostingViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25F117B1C()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_25F17885C();

  v9 = sub_25F17887C();
  v10 = sub_25F17952C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_25F0BECF0(v8, v7, &v20);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_25F0B3000, v9, v10, "Releasing sandbox extension for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v14 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_sandboxExtensionHandle);
  sandbox_extension_release();
  v15 = *(v1 + 24);

  v16 = OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_containerURL;
  v17 = sub_25F176DBC();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  return v1;
}

uint64_t sub_25F117D44()
{
  sub_25F117B1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewsJITSandboxContainerExtension()
{
  result = qword_27FD48530;
  if (!qword_27FD48530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F117DF0()
{
  result = sub_25F176DBC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F117EB4()
{
  result = qword_27FD48540;
  if (!qword_27FD48540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48540);
  }

  return result;
}

uint64_t *sub_25F117F08(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469C0, &qword_25F17AC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - v10;
  v12 = sub_25F176DBC();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  *(v3 + 32) = a3 & 1;

  if (!container_query_create())
  {
    if (a3)
    {
      v25 = 0x61446E6967756C70;
    }

    else
    {
      v25 = 0x61746144707061;
    }

    if (a3)
    {
      v26 = 0xEA00000000006174;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    sub_25F118A0C();
    swift_allocError();
    *v27 = a1;
    v27[1] = a2;
    v27[2] = v25;
    v27[3] = v26;
    v27[4] = 0;
    v27[5] = 0;
    swift_willThrow();
    goto LABEL_40;
  }

  v48 = v12;
  v50 = a1;
  v51 = v7;
  container_query_set_class();
  v16 = v3[2];
  v17 = v3[3];
  v18 = sub_25F1790DC();
  xpc_string_create((v18 + 32));

  container_query_set_identifiers();
  swift_unknownObjectRelease();
  container_query_operation_set_flags();
  v19 = *MEMORY[0x277D85ED0];
  container_query_set_persona_unique_string();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v28 = container_error_copy_unlocalized_description();
    if (v28)
    {
      v29 = sub_25F17915C();
      v31 = v30;
    }

    else
    {
      v31 = 0x800000025F186030;
      v29 = 0xD000000000000012;
    }

    if (a3)
    {
      v35 = 0x61446E6967756C70;
    }

    else
    {
      v35 = 0x61746144707061;
    }

    if (a3)
    {
      v36 = 0xEA00000000006174;
    }

    else
    {
      v36 = 0xE700000000000000;
    }

    sub_25F118A60();
    swift_allocError();
    *v37 = v50;
    v37[1] = a2;
    v37[2] = v35;
    v37[3] = v36;
    v37[4] = v29;
    v37[5] = v31;
    v37[6] = 0;
    v37[7] = 0;
    swift_willThrow();
    free(v28);
    goto LABEL_39;
  }

  if (!container_get_path())
  {
    if (a3)
    {
      v32 = 0x61446E6967756C70;
    }

    else
    {
      v32 = 0x61746144707061;
    }

    if (a3)
    {
      v33 = 0xEA00000000006174;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    sub_25F118AB4();
    goto LABEL_30;
  }

  v47 = container_copy_sandbox_token();
  if (!v47)
  {
    if (a3)
    {
      v32 = 0x61446E6967756C70;
    }

    else
    {
      v32 = 0x61746144707061;
    }

    if (a3)
    {
      v33 = 0xEA00000000006174;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    sub_25F118B08();
LABEL_30:
    swift_allocError();
    *v34 = v50;
    v34[1] = a2;
    v34[2] = v32;
    v34[3] = v33;
    v34[4] = 0;
    v34[5] = 0;
    swift_willThrow();
LABEL_39:
    container_query_free();
LABEL_40:
    v38 = v3[3];

LABEL_41:
    v39 = *(*v3 + 48);
    v40 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v20 = v49;
  v21 = v48;
  (*(v49 + 56))(v11, 1, 1, v48);
  sub_25F176D7C();
  sub_25F118B5C(v11);
  (*(v20 + 32))(v3 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_containerURL, v15, v21);
  v22 = v47;
  v23 = sandbox_extension_consume();
  if (v23 == -1)
  {
    if (a3)
    {
      v42 = 0x61446E6967756C70;
    }

    else
    {
      v42 = 0x61746144707061;
    }

    if (a3)
    {
      v43 = 0xEA00000000006174;
    }

    else
    {
      v43 = 0xE700000000000000;
    }

    v44 = MEMORY[0x25F8D4AC0]();
    sub_25F118BC4();
    swift_allocError();
    *v45 = v50;
    *(v45 + 8) = a2;
    *(v45 + 16) = v42;
    *(v45 + 24) = v43;
    *(v45 + 32) = v44;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
    free(v22);
    container_query_free();
    v46 = v3[3];

    (*(v20 + 8))(v3 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_containerURL, v48);
    goto LABEL_41;
  }

  v24 = v23;

  *(v3 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_sandboxExtensionHandle) = v24;
  free(v22);
  container_query_free();
  return v3;
}

uint64_t sub_25F1184CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_25F1184FC(uint64_t a1)
{
  v2 = sub_25F119334();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F118538(uint64_t a1)
{
  v2 = sub_25F119334();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F118574()
{
  v1 = v0;
  sub_25F1796DC();
  v3 = *v0;
  v2 = v0[1];

  MEMORY[0x25F8D50D0](8236, 0xE200000000000000);
  MEMORY[0x25F8D50D0](v1[2], v1[3]);
  MEMORY[0x25F8D50D0](0x3A726F727265202CLL, 0xE900000000000020);
  MEMORY[0x25F8D50D0](v1[4], v1[5]);
  return v3;
}

uint64_t sub_25F118640()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_25F118670(uint64_t a1)
{
  v2 = sub_25F1192E0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1186AC(uint64_t a1)
{
  v2 = sub_25F1192E0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F118704(uint64_t a1)
{
  v2 = sub_25F11928C();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F118740(uint64_t a1)
{
  v2 = sub_25F11928C();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F118798()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x25F8D50D0](8236, 0xE200000000000000);
  MEMORY[0x25F8D50D0](v1, v2);
  return v4;
}

uint64_t sub_25F1187F8(uint64_t a1)
{
  v2 = sub_25F119238();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F118834(uint64_t a1)
{
  v2 = sub_25F119238();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F118870()
{
  sub_25F1796DC();
  v2 = *v0;
  v1 = v0[1];

  MEMORY[0x25F8D50D0](8236, 0xE200000000000000);
  MEMORY[0x25F8D50D0](v0[2], v0[3]);
  MEMORY[0x25F8D50D0](0x3A6F6E727265202CLL, 0xE900000000000020);
  v5 = *(v0 + 8);
  v3 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v3);

  return v2;
}

uint64_t sub_25F118964()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_25F118994(uint64_t a1)
{
  v2 = sub_25F1191E4();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1189D0(uint64_t a1)
{
  v2 = sub_25F1191E4();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F118A0C()
{
  result = qword_27FD48548;
  if (!qword_27FD48548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48548);
  }

  return result;
}

unint64_t sub_25F118A60()
{
  result = qword_27FD48550;
  if (!qword_27FD48550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48550);
  }

  return result;
}

unint64_t sub_25F118AB4()
{
  result = qword_27FD48558;
  if (!qword_27FD48558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48558);
  }

  return result;
}

unint64_t sub_25F118B08()
{
  result = qword_27FD48560;
  if (!qword_27FD48560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48560);
  }

  return result;
}

uint64_t sub_25F118B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469C0, &qword_25F17AC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F118BC4()
{
  result = qword_27FD48568;
  if (!qword_27FD48568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48568);
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

uint64_t sub_25F118C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25F118C7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F118D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F118D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F118DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F118E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F118E68()
{
  result = qword_27FD48570;
  if (!qword_27FD48570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48570);
  }

  return result;
}

unint64_t sub_25F118EC0()
{
  result = qword_27FD48578;
  if (!qword_27FD48578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48578);
  }

  return result;
}

unint64_t sub_25F118F1C()
{
  result = qword_27FD48580;
  if (!qword_27FD48580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48580);
  }

  return result;
}

unint64_t sub_25F118F74()
{
  result = qword_27FD48588;
  if (!qword_27FD48588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48588);
  }

  return result;
}

unint64_t sub_25F118FD0()
{
  result = qword_27FD48590;
  if (!qword_27FD48590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48590);
  }

  return result;
}

unint64_t sub_25F119028()
{
  result = qword_27FD48598;
  if (!qword_27FD48598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48598);
  }

  return result;
}

unint64_t sub_25F119084()
{
  result = qword_27FD485A0;
  if (!qword_27FD485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485A0);
  }

  return result;
}

unint64_t sub_25F1190DC()
{
  result = qword_27FD485A8;
  if (!qword_27FD485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485A8);
  }

  return result;
}

unint64_t sub_25F119138()
{
  result = qword_27FD485B0;
  if (!qword_27FD485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485B0);
  }

  return result;
}

unint64_t sub_25F119190()
{
  result = qword_27FD485B8;
  if (!qword_27FD485B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485B8);
  }

  return result;
}

unint64_t sub_25F1191E4()
{
  result = qword_27FD485C0;
  if (!qword_27FD485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485C0);
  }

  return result;
}

unint64_t sub_25F119238()
{
  result = qword_27FD485C8;
  if (!qword_27FD485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485C8);
  }

  return result;
}

unint64_t sub_25F11928C()
{
  result = qword_27FD485D0;
  if (!qword_27FD485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485D0);
  }

  return result;
}

unint64_t sub_25F1192E0()
{
  result = qword_27FD485D8;
  if (!qword_27FD485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485D8);
  }

  return result;
}

unint64_t sub_25F119334()
{
  result = qword_27FD485E0;
  if (!qword_27FD485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485E0);
  }

  return result;
}

uint64_t PreviewNonUIAgentProxy.perform<A>(update:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = sub_25F177D3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreviewNonUIAgentProxy();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v25 - v16;
  v25[2] = sub_25F17873C();
  v18 = sub_25F17932C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_25F0CB7E0(v25[1], v13);
  (*(v7 + 16))(v9, a1, v6);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = a3;
  *(v21 + 24) = v22;
  sub_25F11AF60(v13, v21 + v19);
  (*(v7 + 32))(v21 + v20, v9, v6);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v22;
  return sub_25F17870C();
}

{
  v21 = a4;
  v22 = sub_25F177D5C();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F177DEC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for PreviewNonUIAgentProxy() + 24);
  v16 = sub_25F177D3C();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F0B7D00(&qword_27FD485F0, &qword_27FD485E8, &qword_25F180220);
  sub_25F11BD84(&qword_27FD485F8, MEMORY[0x277D40EC8]);
  v17 = sub_25F177A6C();
  sub_25F11B904(v14, MEMORY[0x277D40EC8]);
  v18 = *(v4 + 8);
  sub_25F177CFC();
  v19 = Task<>.enhancingPreviewAgentConnectionError(for:_:)(v18, v10, v17, a3);

  (*(v7 + 8))(v10, v22);
  return v19;
}

uint64_t type metadata accessor for PreviewNonUIAgentProxy()
{
  result = qword_27FD48610;
  if (!qword_27FD48610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F1196D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for PreviewNonUIAgentProxy();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v7 = sub_25F1787BC();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v4[16] = *(v11 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();
  v15 = sub_25F1783FC();
  v4[22] = v15;
  v16 = *(v15 - 8);
  v4[23] = v16;
  v17 = *(v16 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F119940, 0, 0);
}

uint64_t sub_25F119940()
{
  v1 = v0[24];
  v3 = v0[3];
  v2 = v0[4];
  (*(v0[23] + 104))(v1, *MEMORY[0x277D404B8], v0[22]);
  v4 = sub_25F17859C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v17 = v1;
  LOBYTE(v16) = 2;
  v7 = sub_25F17858C();
  v0[25] = v7;
  *v3 = v7;
  v8 = sub_25F176F4C();
  LODWORD(v2) = [v8 pid];

  *(v3 + 8) = v2;
  sub_25F176E1C();
  v9 = sub_25F177E0C();
  v10 = sub_25F11BD84(&qword_27FD48628, MEMORY[0x277D40EE0]);
  sub_25F176EFC();
  v11 = *(MEMORY[0x277D40D70] + 4);
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_25F119B0C;
  v13 = v0[21];
  v14 = v0[4];

  return MEMORY[0x2821A1908](v13, v9, v9, v10);
}

uint64_t sub_25F119B0C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_25F119FBC;
  }

  else
  {
    v3 = sub_25F119C20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F119C20()
{
  v1 = *(v0 + 168);
  v27 = *(v0 + 192);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v24 = *(v0 + 120);
  v25 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v21 = *(v0 + 88);
  v29 = *(v0 + 80);
  v8 = *(v0 + 56);
  v23 = *(v0 + 64);
  v9 = *(v0 + 32);
  v26 = *(v0 + 72);
  v28 = *(v0 + 24);
  v20 = *(v0 + 40);
  (*(*(v0 + 160) + 32))(v28 + v8[6]);
  *(v28 + v8[7]) = v20;
  v10 = *(v6 + 48);
  sub_25F1787CC();
  v11 = sub_25F17940C();
  (*(v7 + 8))(v5, v21);
  *v3 = v11;
  v22 = v3;
  sub_25F11BDCC(v3, v4);
  v12 = *(v6 + 48);
  *(v28 + v8[8]) = *v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  (*(*(v13 - 8) + 8))(&v4[v12], v13);
  *(v0 + 16) = v9;
  sub_25F11BDCC(v3, v4);
  sub_25F0CB7E0(v28, v29);
  v14 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v15 = (v14 + v25 + *(v23 + 80)) & ~*(v23 + 80);
  v16 = swift_allocObject();
  sub_25F11C01C(v4, v16 + v14);
  sub_25F11AF60(v29, v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  sub_25F17848C();

  sub_25F11BDCC(v22, v4);
  v17 = swift_allocObject();
  sub_25F11C01C(v4, v17 + v14);
  sub_25F11BD84(&qword_27FD472B0, type metadata accessor for PreviewNonUIAgentProxy);
  sub_25F17848C();

  sub_25F11C2E8(v22);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_25F119FBC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  v11 = v0[1];
  v12 = v0[27];

  return v11();
}

uint64_t sub_25F11A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a3;
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) + 48);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  sub_25F0B7D00(&qword_27FD48648, &qword_27FD48640, &unk_25F180300);
  sub_25F17807C();
  (*(v4 + 8))(v7, v3);
  type metadata accessor for PreviewNonUIAgentProxy();
  sub_25F11BD84(&qword_27FD48608, type metadata accessor for PreviewNonUIAgentProxy);
  return sub_25F1780BC();
}

uint64_t sub_25F11A2B4()
{
  v0 = sub_25F1787BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) + 48);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  sub_25F0B7D00(&qword_27FD48648, &qword_27FD48640, &unk_25F180300);
  sub_25F17805C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t PreviewNonUIAgentProxy.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewNonUIAgentProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_25F17932C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_25F0CB7E0(v3, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_25F11AF60(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;

  sub_25F0BC520(0, 0, v12, &unk_25F183E70, v15);
}

uint64_t sub_25F11A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25F11A610, 0, 0);
}

uint64_t sub_25F11A610()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for PreviewNonUIAgentProxy() + 32));
  v3 = *(MEMORY[0x277D857C8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v4 = v0;
  v4[1] = sub_25F11A6E8;
  v6 = MEMORY[0x277D84950];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v5, v2, v7, v5, v6);
}

uint64_t sub_25F11A6E8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_25F11A864;
  }

  else
  {
    v3 = sub_25F11A7FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F11A7FC()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F11AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F11AB0C, 0, 0);
}

uint64_t sub_25F11AB0C(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = PreviewNonUIAgentProxy.perform<A>(update:expecting:)(v2[4], a2, v2[5], v2[6]);
  v2[7] = v4;
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  v2[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v6 = v2;
  v6[1] = sub_25F11ABE0;
  v8 = v2[5];
  v9 = v2[2];
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v9, v4, v8, v7, v10);
}

uint64_t sub_25F11ABE0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25F11AD58;
  }

  else
  {
    v3 = sub_25F11ACF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F11ACF4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F11AD58()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_25F11ADBC()
{
  v1 = (type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F177D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = v1[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v14 - 8) + 8))(&v11[v13], v14);
  v15 = &v11[v1[9]];
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *&v11[v1[10]];

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F11AF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewNonUIAgentProxy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F11AFC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_25F177D3C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0C10CC;

  return sub_25F11AAE4(a1, v1 + v8, v1 + v11, v5, v6);
}

uint64_t sub_25F11B124()
{
  v1 = (type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  v7 = *v6;

  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v9 - 8) + 8))(&v6[v8], v9);
  v10 = &v6[v1[9]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *&v6[v1[10]];

  v14 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F11B25C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0BF3E4;

  return sub_25F11A5EC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t PreviewNonUIAgentProxy.addMessageStream(for:)(uint64_t a1)
{
  v3 = sub_25F17776C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = (v1 + *(type metadata accessor for PreviewNonUIAgentProxy() + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v1 + 8);
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v14 = sub_25F17932C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v4 + 16))(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v15 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  (*(v4 + 32))(v16 + v15, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_25F17870C();
}

uint64_t sub_25F11B5F0()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t PreviewNonUIAgentProxy.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F177DFC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for PreviewNonUIAgentProxy() + 24);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v16 = sub_25F17776C();
  (*(*(v16 - 8) + 16))(v13, a3, v16);
  v17 = sub_25F177F8C();
  (*(*(v17 - 8) + 16))(&v13[v15], a2, v17);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F11BD84(&qword_27FD48600, MEMORY[0x277D40ED8]);
  sub_25F17701C();
  (*(v6 + 8))(v9, v5);
  return sub_25F11B904(v13, MEMORY[0x277D40ED8]);
}

uint64_t sub_25F11B904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F11B9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F11BD84(&qword_27FD472B0, type metadata accessor for PreviewNonUIAgentProxy);

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

uint64_t sub_25F11BA4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_25F11BB1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F11BBCC()
{
  sub_25F17859C();
  if (v0 <= 0x3F)
  {
    sub_25F11BC78();
    if (v1 <= 0x3F)
    {
      sub_25F11BD0C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F11BC78()
{
  if (!qword_27FD48620)
  {
    sub_25F177E0C();
    sub_25F11BD84(&qword_27FD48628, MEMORY[0x277D40EE0]);
    v0 = sub_25F17703C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48620);
    }
  }
}

void sub_25F11BD0C()
{
  if (!qword_27FD48630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD46C38, qword_25F17C0E0);
    v0 = sub_25F17945C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48630);
    }
  }
}

uint64_t sub_25F11BD84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F11BDCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F11BE3C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = (v0 + v3);
  v11 = *v10;

  v12 = v1[14];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  (*(*(v13 - 8) + 8))(&v10[v12], v13);
  v14 = *(v0 + v7);

  v15 = v5[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v16 - 8) + 8))(v0 + v7 + v15, v16);
  v17 = (v0 + v7 + v5[9]);
  v18 = *v17;

  v19 = v17[1];

  v20 = *(v0 + v7 + v5[10]);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_25F11C01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F11C08C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F11A0B0(a1, v1 + v4, v7);
}

uint64_t sub_25F11C16C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F11C26C()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8) + 80);

  return sub_25F11A2B4();
}

uint64_t sub_25F11C2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LocalContentProvider.makeSnapshotImage()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_25F1787BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(*(*(v2 + 8) + 8) + 8))(v3);
  v9 = [v8 view];

  if (v9)
  {
    v11 = [v9 window];

    if (v11)
    {
      v12 = [v11 uv_createSnapshotImageFromIOSurface];
      if (v12)
      {
        v7 = v12;

        return v7;
      }

      sub_25F11C6E0();
      swift_allocError();
      *v13 = v11;
    }

    else
    {
      sub_25F1787CC();
      sub_25F177F1C();
      sub_25F11C688();
      swift_allocError();
      sub_25F177F2C();
    }

    swift_willThrow();
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F11C688()
{
  result = qword_27FD48650;
  if (!qword_27FD48650)
  {
    sub_25F177F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48650);
  }

  return result;
}

unint64_t sub_25F11C6E0()
{
  result = qword_27FD48658;
  if (!qword_27FD48658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48658);
  }

  return result;
}

uint64_t LocalSnapshotError.additionalInfo.getter()
{
  v1 = *v0;
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000032, 0x800000025F186370);
  v2 = [v1 description];
  v3 = sub_25F17908C();
  v5 = v4;

  MEMORY[0x25F8D50D0](v3, v5);

  return 0;
}

uint64_t sub_25F11C840(uint64_t a1)
{
  v2 = sub_25F11CFC0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F11C87C(uint64_t a1)
{
  v2 = sub_25F11CFC0();

  return MEMORY[0x2821A07F0](a1, v2);
}

Swift::Void __swiftcall LocalContentViewController.display(viewController:)(UIViewController *viewController)
{
  v3 = OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController];
  v15 = viewController;
  if (v4)
  {
    if (v4 == viewController)
    {
      return;
    }

    [(UIViewController *)v4 willMoveToParentViewController:0];
    viewController = v15;
    v5 = *&v1[v3];
    if (v5)
    {
      v6 = [v5 view];
      if (!v6)
      {
LABEL_15:
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];

      v8 = *&v1[v3];
      viewController = v15;
      if (v8)
      {
        [v8 removeFromParentViewController];
        viewController = v15;
      }
    }
  }

  [v1 addChildViewController_];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [(UIViewController *)v15 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v10 addSubview_];

  [(UIViewController *)v15 didMoveToParentViewController:v1];
  v13 = *&v1[v3];
  *&v1[v3] = v15;

  v14 = v15;
}

Swift::Void __swiftcall LocalContentViewController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id LocalContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25F17905C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LocalContentViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController] = 0;
  if (a2)
  {
    v7 = sub_25F17905C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id LocalContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalContentViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id LocalContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25F11CEB8()
{
  result = qword_27FD48668;
  if (!qword_27FD48668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48668);
  }

  return result;
}

unint64_t sub_25F11CF10()
{
  result = qword_27FD48670;
  if (!qword_27FD48670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48670);
  }

  return result;
}

unint64_t sub_25F11CFC0()
{
  result = qword_27FD48678;
  if (!qword_27FD48678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48678);
  }

  return result;
}

uint64_t sub_25F11D014(uint64_t a1)
{
  v37 = sub_25F1779DC();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_25F0C97D8(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_25F17967C();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 56) + *(v3 + 72) * v10, v37);
      v39 = sub_25F1779CC();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_25F0C97D8((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_25F0C9F18(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_25F0C9F18(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_25F11D31C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48778, &qword_25F180748);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_25F1789CC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v31 = &v29 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = v14;
  v32 = (v14 + 32);
  v33 = (v14 + 48);
  v17 = (a3 + 64);
  v40 = MEMORY[0x277D84F90];
  v30 = a1;
  while (1)
  {
    v18 = v10;
    v19 = *(v17 - 1);
    v20 = *v17;
    v21 = *(v17 - 16);
    v22 = *(v17 - 3);
    v36[0] = *(v17 - 4);
    v36[1] = v22;
    v37 = v21;
    v38 = v19;
    v39 = v20;

    a1(v36);
    if (v3)
    {
      break;
    }

    v10 = v18;
    if ((*v33)(v9, 1, v18) == 1)
    {
      sub_25F0B7E94(v9, &qword_27FD48778, &qword_25F180748);
    }

    else
    {
      v23 = v31;
      v24 = *v32;
      (*v32)(v31);
      (v24)(v34, v23, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_25F116120(0, v40[2] + 1, 1, v40);
      }

      v26 = v40[2];
      v25 = v40[3];
      if (v26 >= v25 >> 1)
      {
        v40 = sub_25F116120(v25 > 1, v26 + 1, 1, v40);
      }

      v27 = v40;
      v40[2] = v26 + 1;
      v10 = v18;
      (v24)(v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v34, v18);
      a1 = v30;
    }

    v17 += 5;
    if (!--v16)
    {
      return v40;
    }
  }

  return v40;
}

uint64_t PreviewsJITLinker.deinit()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);

  sub_25F17885C();

  v9 = sub_25F17887C();
  v10 = sub_25F17952C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136446210;
    v13 = sub_25F0BECF0(v8, v7, v28);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_25F0B3000, v9, v10, "%{public}s: Deallocating Previews JIT linker", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v14 = *(v1 + 64);
  if (v14)
  {
    v16 = *(v1 + 88);
    v15 = *(v1 + 96);
    v17 = *(v1 + 72);
    v18 = *(v1 + 80);
    v28[0] = *(v1 + 56);
    v28[1] = v14;
    v29 = v17;
    v30 = v18;
    v31 = v16;
    v32 = v15;

    sub_25F11D940();
  }

  v19 = *(v1 + 24);

  v20 = *(v1 + 40);

  v21 = *(v1 + 72);
  v22 = *(v1 + 80);
  v23 = *(v1 + 88);
  v24 = *(v1 + 96);
  sub_25F11D8DC(*(v1 + 56), *(v1 + 64));
  v25 = *(v1 + 104);

  v26 = *(v1 + 112);

  return v1;
}

uint64_t sub_25F11D8DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25F11D940()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  sub_25F17885C();

  v9 = sub_25F17887C();
  v10 = sub_25F17955C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_25F0BECF0(v7, v8, v15);
    _os_log_impl(&dword_25F0B3000, v9, v10, "%{public}s: Invalidating JIT linker", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = v1[3];
  return sub_25F1788CC();
}

uint64_t PreviewsJITLinker.__deallocating_deinit()
{
  PreviewsJITLinker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25F11DB34(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v144 = a6;
  v125 = a5;
  v143 = a4;
  v124 = a3;
  v147 = a2;
  v126 = a1;
  v6 = sub_25F1787FC();
  v132 = *(v6 - 8);
  v133 = v6;
  v7 = *(v132 + 64);
  MEMORY[0x28223BE20](v6);
  v131 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_25F17888C();
  v127 = *(v128 - 8);
  v9 = *(v127 + 64);
  v10 = MEMORY[0x28223BE20](v128);
  v123 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v129 = &v122 - v12;
  v142 = sub_25F17722C();
  v146 = *(v142 - 8);
  v13 = v146[8];
  MEMORY[0x28223BE20](v142);
  v145 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_25F17958C();
  v15 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v16 = sub_25F178FBC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = sub_25F17959C();
  v18 = *(v141 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v141);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_25F1315D8();
  v138 = "loadTargetDescriptions(_:)";
  v140 = *MEMORY[0x277D85268];
  v139 = *(v18 + 104);
  v139(v21);
  sub_25F178FAC();
  v148 = MEMORY[0x277D84F90];
  v136 = sub_25F12E2B8(&qword_27FD48810, MEMORY[0x277D85230]);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48818, &qword_25F180778);
  sub_25F0B7D00(&qword_27FD48820, &qword_27FD48818, &qword_25F180778);
  sub_25F17966C();
  v22 = sub_25F1795BC();
  v23 = v152;
  *(v152 + 48) = v22;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  (v139)(v21, v140, v141);
  sub_25F178FAC();
  v148 = MEMORY[0x277D84F90];
  sub_25F17966C();
  *(v23 + 120) = sub_25F1795BC();
  v148 = 0;
  v149 = 0xE000000000000000;
  sub_25F1796DC();

  v148 = 0xD000000000000012;
  v149 = 0x800000025F1867E0;
  v24 = v147;
  v26 = *(v147 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v25 = *(v147 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);

  MEMORY[0x25F8D50D0](v26, v25);

  MEMORY[0x25F8D50D0](41, 0xE100000000000000);
  v27 = v149;
  v141 = v148;
  v28 = v24 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v29 = type metadata accessor for BatchIdentity(0);
  v30 = *(v29 + 28);
  v31 = v145;
  v32 = v146;
  v33 = v146[2];
  v34 = v142;
  v33(v145, v28 + v30, v142);
  v35 = v32[11];
  v36 = v34;
  v37 = v35(v31, v34);
  if (v37 != *MEMORY[0x277D406D8] && v37 != *MEMORY[0x277D406E0])
  {

    v38 = v28 + *(v29 + 20);
    v39 = sub_25F17766C();
    v41 = v40;
    v42 = type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType(0);
    sub_25F12E2B8(&qword_27FD48828, type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType);
    v43 = swift_allocError();
    v45 = v44;
    *v44 = v39;
    v44[1] = v41;
    v46 = v36;
    v47 = v43;
    v33(v44 + *(v42 + 20), v28 + v30, v46);
    v48 = (v45 + *(v42 + 24));
    *v48 = 0;
    v48[1] = 0;
    swift_willThrow();
    (v146[1])(v145, v46);
LABEL_10:
    sub_25F1787EC();
    v79 = v131;
    sub_25F1787DC();
    v80 = v47;
    sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580]);
    v81 = v133;
    sub_25F1781BC();

    (*(v132 + 8))(v79, v81);
    v82 = v150;
    v83 = v151;
    v84 = __swift_project_boxed_opaque_existential_1(&v148, v150);
    v85 = *(v82 - 8);
    v86 = *(v85 + 64);
    MEMORY[0x28223BE20](v84);
    v88 = &v122 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v88);
    v89 = *(*(v83 + 8) + 8);
    if (sub_25F17981C())
    {
      (*(v85 + 8))(v88, v82);
    }

    else
    {
      swift_allocError();
      (*(v85 + 32))(v90, v88, v82);
    }

    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(&v148);
    v60 = v152;

    v91 = *(v60 + 72);
    v92 = *(v60 + 80);
    v93 = *(v60 + 88);
    v94 = *(v60 + 96);
    sub_25F11D8DC(*(v60 + 56), *(v60 + 64));

    type metadata accessor for PreviewsJITLinker();
    swift_deallocPartialClassInstance();
    return v60;
  }

  v49 = v37 != *MEMORY[0x277D406D8];
  v50 = v28 + *(v29 + 20);
  v51 = sub_25F17766C();
  v53 = v52;
  v54 = type metadata accessor for PreviewsJITSandboxContainerExtension();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = v130;
  v58 = sub_25F117F08(v51, v53, v49);
  v47 = v57;
  if (v57)
  {

    goto LABEL_10;
  }

  v59 = v58;
  v60 = v152;
  *(v152 + 104) = v58;

  v61 = v129;
  sub_25F17885C();

  v62 = v27;

  v63 = sub_25F17887C();
  v64 = sub_25F17952C();

  v65 = os_log_type_enabled(v63, v64);
  v146 = v59;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v148 = v67;
    *v66 = 136446722;
    *(v66 + 4) = sub_25F0BECF0(v141, v62, &v148);
    *(v66 + 12) = 2080;
    v69 = v59[2];
    v68 = v59[3];

    v70 = sub_25F0BECF0(v69, v68, &v148);

    *(v66 + 14) = v70;
    *(v66 + 22) = 2080;
    v71 = sub_25F176D8C();
    v73 = sub_25F0BECF0(v71, v72, &v148);

    *(v66 + 24) = v73;
    _os_log_impl(&dword_25F0B3000, v63, v64, "%{public}s: Received sandbox extension for %s, container path: %s", v66, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v67, -1, -1);
    v74 = v66;
    v60 = v152;
    MEMORY[0x25F8D6230](v74, -1, -1);

    v75 = *(v127 + 8);
    v75(v129, v128);
  }

  else
  {

    v75 = *(v127 + 8);
    v75(v61, v128);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD48830, &qword_25F180780);
  v76 = swift_allocObject();
  *(v76 + 24) = 0;
  *(v76 + 16) = MEMORY[0x277D84F90];
  *(v60 + 112) = v76;
  sub_25F178B2C();
  v77 = swift_allocObject();
  v78 = v141;
  v77[2] = v76;
  v77[3] = v78;
  v77[4] = v62;
  swift_unknownObjectRetain();
  swift_retain_n();

  swift_unknownObjectRetain();
  v96 = sub_25F17898C();
  v145 = v76;
  *(v60 + 16) = v126;
  v97 = v141;
  *(v60 + 24) = v147;
  *(v60 + 32) = v97;
  *(v60 + 40) = v62;
  v98 = sub_25F178A5C();
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v101 = sub_25F178A6C();
  v102 = sub_25F0ED1EC(MEMORY[0x277D84F90]);
  v104 = *(v60 + 56);
  v103 = *(v60 + 64);
  v105 = *(v60 + 72);
  v106 = *(v60 + 80);
  v107 = *(v60 + 88);
  v108 = *(v60 + 96);
  *(v60 + 56) = v97;
  *(v60 + 64) = v62;
  *(v60 + 72) = 0;
  *(v60 + 80) = v96;
  *(v60 + 88) = v101;
  *(v60 + 96) = v102;
  sub_25F11D8DC(v104, v103);
  if (v124)
  {
    v109 = (v124 >> 8) & 1;

    v110 = type metadata accessor for XOJITAgentSymbolTableDataProvider();
    swift_allocObject();

    v112 = sub_25F12F754(v111, v109);

    sub_25F17845C();
    sub_25F17844C();
    v150 = v110;
    v151 = sub_25F12E2B8(&qword_27FD48840, type metadata accessor for XOJITAgentSymbolTableDataProvider);
    v148 = v112;

    sub_25F17840C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v148);
    v113 = v147;
    v148 = v147;
    type metadata accessor for Agent(0);
    sub_25F12E2B8(&qword_27FD47EA0, type metadata accessor for Agent);

    sub_25F17802C();
  }

  else
  {
    v114 = v123;
    sub_25F17885C();

    v115 = sub_25F17887C();
    v116 = sub_25F17952C();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v148 = v118;
      *v117 = 136446210;
      v119 = sub_25F0BECF0(v141, v62, &v148);

      *(v117 + 4) = v119;
      _os_log_impl(&dword_25F0B3000, v115, v116, "%{public}s: Not listening to XOJIT symbol table stream", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      v120 = v118;
      v60 = v152;
      MEMORY[0x25F8D6230](v120, -1, -1);
      MEMORY[0x25F8D6230](v117, -1, -1);

      v121 = v123;
    }

    else
    {

      v121 = v114;
    }

    v75(v121, v128);
    v113 = v147;
  }

  v148 = v113;
  type metadata accessor for Agent(0);
  sub_25F12E2B8(&qword_27FD47EA0, type metadata accessor for Agent);

  sub_25F17802C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v60;
}

uint64_t sub_25F11EB28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = a3;
  v6 = sub_25F17888C();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F1788AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F17889C();
  v16 = v15;
  sub_25F1788BC();
  v17 = (*(v11 + 88))(v14, v10);
  if (v17 != *MEMORY[0x277D7E8D8])
  {
    v24 = a4;
    MEMORY[0x28223BE20](v17);
    *(&v24 - 2) = v26;
    *(&v24 - 1) = v16;
    os_unfair_lock_lock((a2 + 24));
    sub_25F1317A4((a2 + 16));
    os_unfair_lock_unlock((a2 + 24));
    a4 = v24;
    (*(v11 + 8))(v14, v10);
  }

  sub_25F17885C();

  v18 = sub_25F17887C();
  v19 = sub_25F17953C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_25F0BECF0(v25, a4, v28);
    *(v20 + 12) = 2080;
    v22 = sub_25F0BECF0(v26, v16, v28);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_25F0B3000, v18, v19, "%{public}s: XOJIT Link Error: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v21, -1, -1);
    MEMORY[0x25F8D6230](v20, -1, -1);
  }

  else
  {
  }

  return (*(v27 + 8))(v9, v6);
}

uint64_t sub_25F11EE68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F116014(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_25F116014((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *a1 = v6;
  return result;
}

uint64_t sub_25F11EF28(uint64_t a1)
{
  sub_25F17845C();
  sub_25F17844C();
  v2 = *(a1 + 16);
  sub_25F17843C();
}

uint64_t sub_25F11EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();
  v6 = sub_25F17767C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F11F098, 0, 0);
}

uint64_t sub_25F11F098()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v19 = v4;
  v20 = *(v0 + 56);
  v21 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  v22 = v5[4];
  v23 = v5[5];
  v8 = v5[3];
  v9 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v10 = type metadata accessor for BatchIdentity(0);
  v24 = v5[6];
  v25 = *(v0 + 24);
  (*(v2 + 16))(v1, v8 + *(v10 + 20) + v9, v3);
  (*(v6 + 16))(v4, v7, v25);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = (v21 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v0 + 104) = v13;
  *(v13 + 16) = v25;
  *(v13 + 32) = v5;
  (*(v2 + 32))(v13 + v11, v1, v3);
  (*(v6 + 32))(v13 + v12, v19, v25);
  v14 = (v13 + ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v22;
  v14[1] = v23;
  v15 = *(MEMORY[0x277D40608] + 4);

  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_25F11F2BC;
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A0D70](v16, sub_25F12DDB0, v13, v17);
}

uint64_t sub_25F11F2BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_25F11F45C;
  }

  else
  {
    v4 = sub_25F11F3EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F11F3EC()
{
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F11F45C()
{
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_25F11F4CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v73 = a5;
  v67 = a4;
  v14 = sub_25F1787BC();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F1787FC();
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x28223BE20](v17);
  v71 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25F17888C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[8];
  if (v25)
  {
    v65 = v22;
    v66 = v17;
    v26 = a1[11];
    v27 = a1[12];
    v28 = a1[9];
    v29 = a1[10];
    v77 = a1[7];
    v78 = v25;
    v79 = v28;
    *&v80 = v29;
    *(&v80 + 1) = v26;
    v81 = v27;

    sub_25F11FBCC(a3, a6, a7);
    if (v8)
    {
      sub_25F17885C();

      v30 = v8;
      v31 = sub_25F17887C();
      v32 = sub_25F17953C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v74[0] = v35;
        *v33 = 136446466;
        *(v33 + 4) = sub_25F0BECF0(v67, v73, v74);
        *(v33 + 12) = 2112;
        v36 = v8;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v37;
        *v34 = v37;
        _os_log_impl(&dword_25F0B3000, v31, v32, "%{public}s: Failed loading target descriptions: %@", v33, 0x16u);
        sub_25F0B7E94(v34, &qword_27FD473D0, &unk_25F17C540);
        MEMORY[0x25F8D6230](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x25F8D6230](v35, -1, -1);
        MEMORY[0x25F8D6230](v33, -1, -1);
      }

      (*(v65 + 8))(v24, v20);
      v38 = v66;
      v82 = a1[14];

      v39 = v68;
      sub_25F1787CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
      sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0);
      sub_25F17856C();
      (*(v69 + 8))(v39, v70);

      v40 = v71;
      sub_25F1787DC();
      v41 = v8;
      sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580]);
      sub_25F1781BC();

      (*(v72 + 8))(v40, v38);
      v42 = v75;
      v43 = v76;
      v44 = __swift_project_boxed_opaque_existential_1(v74, v75);
      v45 = *(v42 - 8);
      v46 = *(v45 + 64);
      MEMORY[0x28223BE20](v44);
      v48 = &v64 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v48);
      v49 = *(*(v43 + 8) + 8);
      if (sub_25F17981C())
      {
        (*(v45 + 8))(v48, v42);
      }

      else
      {
        swift_allocError();
        (*(v45 + 32))(v63, v48, v42);
      }

      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v74);
    }

    else
    {
      v54 = v78;
      v55 = v79;
      v56 = v81;
      v57 = a1[7];
      v58 = a1[8];
      v59 = a1[9];
      v60 = a1[10];
      v61 = a1[11];
      v62 = a1[12];
      a1[7] = v77;
      a1[8] = v54;
      a1[9] = v55;
      *(a1 + 5) = v80;
      a1[12] = v56;
      return sub_25F11D8DC(v57, v58);
    }
  }

  else
  {
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F12E2B8(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError);
    swift_allocError();
    v51 = v50;
    v52 = sub_25F17767C();
    (*(*(v52 - 8) + 16))(v51, a2, v52);
    return swift_willThrow();
  }
}

uint64_t sub_25F11FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v160 = a1;
  v175 = sub_25F178B1C();
  v173 = *(v175 - 8);
  v6 = *(v173 + 64);
  v7 = MEMORY[0x28223BE20](v175);
  v169 = &v136[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v141 = &v136[-v9];
  v140 = a3;
  v10 = *(a3 + 8);
  v146 = sub_25F1796EC();
  v145 = *(v146 - 8);
  v11 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v136[-v12];
  v143 = sub_25F17975C();
  v13 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v136[-v14];
  v147 = sub_25F17974C();
  v148 = *(v147 - 8);
  v15 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  v163 = &v136[-v16];
  v168 = sub_25F1779DC();
  v170 = *(v168 - 8);
  v17 = *(v170 + 64);
  v18 = MEMORY[0x28223BE20](v168);
  v176 = &v136[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v138 = &v136[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v136[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v167 = &v136[-v26];
  v158 = v10;
  v159 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = *(AssociatedTypeWitness - 8);
  v27 = *(v149 + 64);
  v28 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v171 = &v136[-v29];
  v161 = *(a2 - 8);
  v30 = *(v161 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v165 = &v136[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v166 = &v136[-v33];
  v164 = sub_25F17888C();
  v162 = *(v164 - 1);
  v34 = *(v162 + 64);
  MEMORY[0x28223BE20](v164);
  v174 = &v136[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_25F17835C();
  v154 = *(v155 - 8);
  v36 = v154[8];
  MEMORY[0x28223BE20](v155);
  v38 = &v136[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v136[-v41];
  v43 = sub_25F177FBC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v136[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = *v3;
  v48 = *(v3 + 8);
  v156 = v3;
  v150 = sub_25F1782EC();
  sub_25F1782DC();
  v152 = v44;
  v50 = *(v44 + 56);
  v153 = v43;
  v50(v42, 1, 1, v43);
  sub_25F17833C();
  v151 = v47;
  v139 = v49;
  sub_25F1782CC();

  (v154[1])(v38, v155);
  v51 = v159;
  v52 = v42;
  v53 = v48;
  sub_25F0B7E94(v52, &qword_27FD487B0, &unk_25F180760);
  sub_25F17885C();
  v54 = v161;
  v55 = *(v161 + 16);
  (v55)(v166, v160, v51);

  v56 = sub_25F17887C();
  v57 = sub_25F17952C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v177 = v155;
    *v58 = 136446466;
    *(v58 + 4) = sub_25F0BECF0(v139, v53, &v177);
    *(v58 + 12) = 2082;
    v139 = v56;
    sub_25F1794DC();
    v137 = v57;
    v59 = v166;
    v60 = sub_25F1794CC();
    v154 = v55;
    v61 = v60;
    v63 = v62;

    (*(v54 + 8))(v59, v51);
    v64 = v61;
    v55 = v154;
    v65 = sub_25F0BECF0(v64, v63, &v177);

    *(v58 + 14) = v65;
    v66 = v139;
    _os_log_impl(&dword_25F0B3000, v139, v137, "%{public}s: Loading %{public}s", v58, 0x16u);
    v67 = v155;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v67, -1, -1);
    MEMORY[0x25F8D6230](v58, -1, -1);

    (*(v162 + 8))(v174, v164);
    v68 = v159;
  }

  else
  {

    (*(v54 + 8))(v166, v51);
    (*(v162 + 8))(v174, v164);
    v68 = v51;
  }

  v69 = sub_25F0ED6C8(MEMORY[0x277D84F90]);
  v180 = v69;
  (v55)(v165, v160, v68);
  sub_25F1791CC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71 = v167;
  v166 = AssociatedConformanceWitness;
  sub_25F17964C();
  v72 = v168;
  v164 = *(v170 + 48);
  v165 = (v170 + 48);
  if ((v164)(v71, 1, v168) == 1)
  {
LABEL_5:
    (*(v149 + 8))(v171, AssociatedTypeWitness);
    v73 = MEMORY[0x277D84F90];
    v179 = MEMORY[0x277D84F90];
    v74 = v144;
    MEMORY[0x25F8D5160](v159, v158);
    v75 = v146;
    swift_getWitnessTable();
    sub_25F1797DC();
    (*(v145 + 8))(v74, v75);
    sub_25F17972C();
    v76 = v147;
    sub_25F17973C();
    v77 = v178;
    if (v178)
    {
      v78 = v177;
      v79 = (v173 + 8);
      v80 = v157;
      v81 = v141;
      while (1)
      {
        sub_25F127E88(v78, v77, &v180, &v179, v81);
        if (v80)
        {
          break;
        }

        (*v79)(v81, v175);

        sub_25F17973C();
        v78 = v177;
        v77 = v178;
        if (!v178)
        {
          goto LABEL_30;
        }
      }

      (*(v148 + 8))(v163, v76);
    }

    else
    {
      v80 = v157;
LABEL_30:
      (*(v148 + 8))(v163, v76);
      v109 = v179;
      isa = v179[2].isa;
      if (isa)
      {
        v157 = v80;
        v177 = v73;
        sub_25F0C97D8(0, isa, 0);
        v111 = v177;
        v176 = *(v173 + 16);
        v112 = *(v173 + 80);
        AssociatedTypeWitness = v109;
        v173 += 16;
        v113 = v109 + ((v112 + 32) & ~v112);
        v174 = *(v173 + 56);
        v114 = (v173 - 8);
        do
        {
          v115 = v169;
          v116 = v175;
          (v176)(v169, v113, v175);
          v117 = sub_25F178B0C();
          v119 = v118;
          (*v114)(v115, v116);
          v177 = v111;
          v121 = *(v111 + 16);
          v120 = *(v111 + 24);
          if (v121 >= v120 >> 1)
          {
            sub_25F0C97D8((v120 > 1), v121 + 1, 1);
            v111 = v177;
          }

          *(v111 + 16) = v121 + 1;
          v122 = v111 + 16 * v121;
          *(v122 + 32) = v117;
          *(v122 + 40) = v119;
          v113 = &v174[v113];
          isa = (isa - 1);
        }

        while (isa);

        v80 = v157;
      }

      else
      {

        v111 = MEMORY[0x277D84F90];
      }

      sub_25F12A358(v111);
      if (!v80)
      {

        v123 = v180;
        if (v180[2])
        {
          sub_25F1307BC();
          swift_allocError();
          *v124 = v123;
          swift_willThrow();
LABEL_43:
          sub_25F1782DC();
          v134 = v151;
          sub_25F1782BC();

          return (*(v152 + 8))(v134, v153);
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    goto LABEL_42;
  }

  v174 = *(v170 + 32);
  v82 = (v170 + 16);
  v161 = v170 + 40;
  v162 = v170 + 8;
  (v174)(v23, v71, v72);
  while (1)
  {
    v85 = sub_25F17793C();
    if (v69[2])
    {
      v87 = sub_25F0C8D24(v85, v86);
      v89 = v88;

      if (v89)
      {
        v125 = *(v170 + 16);
        v126 = v138;
        v125(v138, v69[7] + *(v170 + 72) * v87, v72);
        v127 = sub_25F17793C();
        v175 = v128;
        v176 = v127;
        v129 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
        sub_25F12E2B8(&qword_27FD487C0, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered);
        swift_allocError();
        v131 = v130;
        v132 = v175;
        *v130 = v176;
        v130[1] = v132;
        v125(v130 + *(v129 + 20), v126, v72);
        v125(v131 + *(v129 + 24), v23, v72);
        swift_willThrow();
        v133 = *(v170 + 8);
        v133(v126, v72);
        v133(v23, v72);
        (*(v149 + 8))(v171, AssociatedTypeWitness);
        goto LABEL_42;
      }
    }

    else
    {
    }

    v90 = sub_25F17793C();
    v92 = v91;
    (*v82)(v176, v23, v72);
    v93 = v180;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = v93;
    v96 = sub_25F0C8D24(v90, v92);
    v97 = *(v93 + 16);
    v98 = (v95 & 1) == 0;
    v99 = v97 + v98;
    if (__OFADD__(v97, v98))
    {
      break;
    }

    v100 = v95;
    if (*(v93 + 24) >= v99)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v72 = v168;
        if (v95)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_25F1706A4();
        v72 = v168;
        if (v100)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_25F16C3E8(v99, isUniquelyReferenced_nonNull_native);
      v101 = sub_25F0C8D24(v90, v92);
      if ((v100 & 1) != (v102 & 1))
      {
        goto LABEL_46;
      }

      v96 = v101;
      v72 = v168;
      if (v100)
      {
LABEL_11:

        v69 = v177;
        v83 = v170;
        (*(v170 + 40))(v177[7] + *(v170 + 72) * v96, v176, v72);
        (*(v83 + 8))(v23, v72);
        goto LABEL_12;
      }
    }

    v103 = v176;
    v69 = v177;
    v177[(v96 >> 6) + 8] |= 1 << v96;
    v104 = (v69[6] + 16 * v96);
    *v104 = v90;
    v104[1] = v92;
    v105 = v170;
    (v174)(v69[7] + *(v170 + 72) * v96, v103, v72);
    (*(v105 + 8))(v23, v72);
    v106 = v69[2];
    v107 = __OFADD__(v106, 1);
    v108 = v106 + 1;
    if (v107)
    {
      goto LABEL_45;
    }

    v69[2] = v108;
LABEL_12:
    v180 = v69;
    v84 = v167;
    sub_25F17964C();
    if ((v164)(v84, 1, v72) == 1)
    {
      goto LABEL_5;
    }

    (v174)(v23, v84, v72);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_25F17985C();
  __break(1u);
  return result;
}

uint64_t sub_25F120D9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F17767C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F120E64, 0, 0);
}

uint64_t sub_25F120E64()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v19 = v0[2];
  v20 = v5[5];
  v18 = v5[4];
  v6 = v5[3];
  v7 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v8 = v6 + *(type metadata accessor for BatchIdentity(0) + 20);
  v9 = v5[6];
  (*(v4 + 16))(v2, v8 + v7, v3);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = v5;
  (*(v4 + 32))(v12 + v10, v2, v3);
  *(v12 + v11) = v19;
  v13 = (v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v18;
  v13[1] = v20;
  v14 = *(MEMORY[0x277D40608] + 4);

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_25F121020;
  v16 = MEMORY[0x277D839B0];

  return MEMORY[0x2821A0D70](v0 + 11, sub_25F12DFAC, v12, v16);
}

uint64_t sub_25F121020()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_25F1211BC;
  }

  else
  {
    v4 = sub_25F121150;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F121150()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_25F1211BC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2(0);
}

uint64_t sub_25F121224@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v76 = a5;
  v70 = a4;
  v71 = a6;
  v11 = sub_25F1787BC();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F1787FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v75 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F17888C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[8];
  if (v23)
  {
    v67 = v20;
    v68 = v15;
    v69 = v14;
    v25 = a1[11];
    v24 = a1[12];
    v26 = a1[9];
    v27 = a1[10];
    v80 = a1[7];
    v81 = v23;
    v82 = v26;
    *&v83 = v27;
    *(&v83 + 1) = v25;
    v84 = v24;

    v28 = sub_25F121950(a3);
    if (v7)
    {
      v71 = v25;
      sub_25F17885C();

      v29 = v7;
      v30 = sub_25F17887C();
      v31 = sub_25F17953C();

      v32 = os_log_type_enabled(v30, v31);
      v66[1] = v27;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v66[0] = v23;
        v35 = v34;
        v36 = swift_slowAlloc();
        v77[0] = v36;
        *v33 = 136446466;
        *(v33 + 4) = sub_25F0BECF0(v70, v76, v77);
        *(v33 + 12) = 2112;
        v37 = v7;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v38;
        *v35 = v38;
        _os_log_impl(&dword_25F0B3000, v30, v31, "%{public}s: Failed updating target descriptions: %@", v33, 0x16u);
        sub_25F0B7E94(v35, &qword_27FD473D0, &unk_25F17C540);
        MEMORY[0x25F8D6230](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x25F8D6230](v36, -1, -1);
        MEMORY[0x25F8D6230](v33, -1, -1);
      }

      (*(v67 + 8))(v22, v18);
      v85 = a1[14];

      v39 = v72;
      sub_25F1787CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
      sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0);
      sub_25F17856C();
      (*(v73 + 8))(v39, v74);

      v40 = v75;
      sub_25F1787DC();
      v41 = v7;
      sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580]);
      v42 = v69;
      sub_25F1781BC();

      (*(v68 + 8))(v40, v42);
      v43 = v78;
      v44 = v79;
      v45 = __swift_project_boxed_opaque_existential_1(v77, v78);
      v46 = *(v43 - 8);
      v47 = *(v46 + 64);
      MEMORY[0x28223BE20](v45);
      v49 = v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v49);
      v50 = *(*(v44 + 8) + 8);
      if (sub_25F17981C())
      {
        (*(v46 + 8))(v49, v43);
      }

      else
      {
        swift_allocError();
        (*(v46 + 32))(v65, v49, v43);
      }

      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v77);
    }

    else
    {
      v55 = v28;
      v56 = v81;
      v57 = v82;
      v58 = v84;
      v59 = a1[7];
      v60 = a1[8];
      v61 = a1[9];
      v62 = a1[10];
      v63 = a1[11];
      v64 = a1[12];
      a1[7] = v80;
      a1[8] = v56;
      a1[9] = v57;
      *(a1 + 5) = v83;
      a1[12] = v58;
      result = sub_25F11D8DC(v59, v60);
      *v71 = v55 & 1;
    }
  }

  else
  {
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F12E2B8(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError);
    swift_allocError();
    v52 = v51;
    v53 = sub_25F17767C();
    (*(*(v53 - 8) + 16))(v52, a2, v53);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F121950(uint64_t a1)
{
  v127 = sub_25F178B1C();
  v116 = *(v127 - 8);
  isa = v116[8].isa;
  MEMORY[0x28223BE20](v127);
  v129 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v132 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v108 - v9;
  v115 = sub_25F17888C();
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v119 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_25F17835C();
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v108 - v16;
  v122 = sub_25F177FBC();
  v121 = *(v122 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F1779DC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v128 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v108 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v109 = &v108 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v108 - v28;
  v30 = v1[1];
  v118 = *v1;
  v130 = v1;
  v117 = v30;
  v31 = sub_25F0ED6C8(MEMORY[0x277D84F90]);
  v143 = v31;
  v32 = *(a1 + 16);
  v140 = v19;
  v123 = v20;
  v131 = v32;
  v124 = a1;
  if (!v32)
  {
LABEL_21:
    if (v31[2].isa)
    {
      v137 = sub_25F1782EC();
      sub_25F1782DC();
      v60 = v110;
      (*(v121 + 56))(v110, 1, 1, v122);
      v61 = v111;
      sub_25F17834C();
      v62 = v118;
      v63 = v117;
      sub_25F1782CC();

      (*(v112 + 8))(v61, v113);
      sub_25F0B7E94(v60, &qword_27FD487B0, &unk_25F180760);
      v64 = v119;
      sub_25F17885C();

      v65 = sub_25F17887C();
      v66 = sub_25F17952C();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v141 = v139;
        *v67 = 136446466;
        *(v67 + 4) = sub_25F0BECF0(v62, v63, &v141);
        *(v67 + 12) = 2082;
        v142 = v31;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487F8, &qword_25F180770);
        sub_25F0B7D00(&unk_27FD48800, &qword_27FD487F8, &qword_25F180770);
        sub_25F1794DC();
        v68 = sub_25F1794CC();
        v70 = v69;

        v71 = sub_25F0BECF0(v68, v70, &v141);

        *(v67 + 14) = v71;
        _os_log_impl(&dword_25F0B3000, v65, v66, "%{public}s: Updating %{public}s", v67, 0x16u);
        v72 = v139;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v72, -1, -1);
        MEMORY[0x25F8D6230](v67, -1, -1);

        (*(v114 + 8))(v119, v115);
      }

      else
      {

        (*(v114 + 8))(v64, v115);
      }

      v85 = v132;
      v86 = (v123 + 56);
      v142 = MEMORY[0x277D84F90];
      v87 = (v123 + 48);
      v88 = (v123 + 32);
      v89 = (v123 + 8);
      v138 = (v123 + 16);
      v139 = v116 + 1;

      LOBYTE(v74) = 0;
      v90 = 0;
      while (1)
      {
        if (v90 == v131)
        {
          v91 = 1;
          v90 = v131;
        }

        else
        {
          if (v90 >= v131)
          {
            goto LABEL_45;
          }

          (*(v123 + 16))(v133, v124 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v90, v140);
          v58 = __OFADD__(v90++, 1);
          if (v58)
          {
            goto LABEL_46;
          }

          v91 = 0;
        }

        v92 = v133;
        v93 = v140;
        (*v86)(v133, v91, 1, v140);
        sub_25F130B48(v92, v85);
        if ((*v87)(v85, 1, v93) == 1)
        {
          break;
        }

        v94 = v128;
        (*v88)(v128, v85, v93);
        v74 = sub_25F17793C();
        v96 = v95;
        (*v89)(v94, v93);
        swift_beginAccess();
        v97 = v129;
        v98 = v135;
        sub_25F127E88(v74, v96, &v143, &v142, v129);
        v135 = v98;
        if (v98)
        {
          swift_endAccess();

          sub_25F1782DC();
          v104 = v120;
          sub_25F1782BC();

          (*(v121 + 8))(v104, v122);

          return v74 & 1;
        }

        swift_endAccess();

        (v139->isa)(v97, v127);
        LOBYTE(v74) = 1;
        v85 = v132;
      }

      if (v74)
      {
        v99 = v130[4];
        v100 = v142;

        v102 = v99;
        v103 = v135;
        sub_25F130BB8(v101, v118, v117, v102);
        if (v103)
        {
          swift_bridgeObjectRelease_n();
          sub_25F1782DC();
          v106 = v120;
          sub_25F1782BC();

          (*(v121 + 8))(v106, v122);
          goto LABEL_41;
        }

        sub_25F12A8B4(v100);
      }

      sub_25F1782DC();
      v105 = v120;
      sub_25F1782BC();

      (*(v121 + 8))(v105, v122);
    }

    else
    {

      LOBYTE(v74) = 0;
    }

    return v74 & 1;
  }

  v33 = v20 + 16;
  v138 = *(v20 + 16);
  v139 = (v20 + 16);
  v34 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v35 = *(v33 + 56);
  v134 = (v33 - 8);
  v125 = (v33 + 24);
  v126 = (v33 + 16);
  v138(v29, v34, v19);
  while (1)
  {
    v36 = sub_25F17793C();
    if (v31[2].isa)
    {
      break;
    }

LABEL_10:
    v136 = v32;
    v41 = sub_25F17793C();
    v42 = v29;
    v44 = v43;
    v45 = v42;
    v138(v137, v42, v19);
    v46 = v143;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v46;
    v49 = sub_25F0C8D24(v41, v44);
    v50 = *(v46 + 16);
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      result = sub_25F17985C();
      __break(1u);
      return result;
    }

    v53 = v48;
    if (*(v46 + 24) >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v140;
        if (v48)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_25F1706A4();
        v19 = v140;
        if (v53)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_25F16C3E8(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_25F0C8D24(v41, v44);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_47;
      }

      v49 = v54;
      v19 = v140;
      if (v53)
      {
LABEL_3:

        v31 = v141;
        (*v125)(v141[7].isa + v49 * v35, v137, v19);
        v29 = v45;
        (*v134)(v45, v19);
        goto LABEL_4;
      }
    }

    v31 = v141;
    v141[(v49 >> 6) + 8].isa = (v141[(v49 >> 6) + 8].isa | (1 << v49));
    v56 = (v31[6].isa + 16 * v49);
    *v56 = v41;
    v56[1] = v44;
    (*v126)(v31[7].isa + v49 * v35, v137, v19);
    v29 = v45;
    (*v134)(v45, v19);
    v57 = v31[2].isa;
    v58 = __OFADD__(v57, 1);
    v59 = (v57 + 1);
    if (v58)
    {
      goto LABEL_44;
    }

    v31[2].isa = v59;
LABEL_4:
    v143 = v31;
    v34 += v35;
    v32 = v136 - 1;
    if (v136 == 1)
    {
      goto LABEL_21;
    }

    v138(v29, v34, v19);
  }

  v38 = sub_25F0C8D24(v36, v37);
  v40 = v39;
  v19 = v140;

  if ((v40 & 1) == 0)
  {
    goto LABEL_10;
  }

  v73 = v31[7].isa + v38 * v35;
  v137 = v29;
  v74 = v109;
  v75 = v138;
  v138(v109, v73, v19);
  v136 = sub_25F17793C();
  v77 = v76;
  v78 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
  sub_25F12E2B8(&qword_27FD487C0, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered);
  swift_allocError();
  v79 = v19;
  v81 = v80;
  *v80 = v136;
  v80[1] = v77;
  v75(v80 + *(v78 + 20), v74, v79);
  v82 = v81 + *(v78 + 24);
  v83 = v137;
  v75(v82, v137, v79);
  swift_willThrow();
  v84 = *v134;
  (*v134)(v74, v79);
  v84(v83, v79);
LABEL_41:

  return v74 & 1;
}

uint64_t sub_25F12279C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v48 - v4;
  v53 = sub_25F17888C();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17767C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v57 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v58 = v17;
  MEMORY[0x28223BE20](v14);
  v19 = &v48 - v18;
  v20 = v1[3];
  v21 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v22 = v20 + *(type metadata accessor for BatchIdentity(0) + 20);
  v62 = v10;
  v23 = *(v10 + 16);
  v23(v19, v22 + v21, v9);
  v24 = v1[5];
  v55 = v1[4];
  v56 = v24;
  v60 = v1;

  sub_25F17885C();
  v61 = v19;
  v52 = v23;
  v23(v16, v19, v9);
  v54 = v8;
  v25 = sub_25F17887C();
  v26 = sub_25F17952C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v63 = v49;
    *v27 = 136315138;
    sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v28 = sub_25F17980C();
    v30 = v29;
    v31 = *(v62 + 8);
    v50 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51 = v31;
    v31(v16, v9);
    v32 = sub_25F0BECF0(v28, v30, &v63);

    *(v27 + 4) = v32;
    v33 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x25F8D6230](v33, -1, -1);
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  else
  {

    v34 = *(v62 + 8);
    v50 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51 = v34;
    v34(v16, v9);
  }

  (*(v5 + 8))(v54, v53);
  v53 = 0x800000025F183FC0;
  v49 = 0x800000025F186420;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  v35 = sub_25F17932C();
  (*(*(v35 - 8) + 56))(v59, 1, 1, v35);
  v36 = v57;
  v52(v57, v61, v9);
  v37 = v9;
  v38 = v62;
  v39 = (*(v62 + 80) + 56) & ~*(v62 + 80);
  v40 = (v58 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v43 = v55;
  v42 = v56;
  *(v41 + 2) = v60;
  *(v41 + 3) = v43;
  *(v41 + 4) = v42;
  *(v41 + 5) = 0xD000000000000028;
  *(v41 + 6) = v49;
  (*(v38 + 32))(&v41[v39], v36, v37);
  v44 = &v41[v40];
  v45 = v53;
  *v44 = 0xD00000000000004FLL;
  *(v44 + 1) = v45;

  v46 = sub_25F17870C();
  v51(v61, v37);
  return v46;
}

uint64_t sub_25F122D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = sub_25F17767C();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v8[13] = *(v10 + 64);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F122E04, 0, 0);
}

uint64_t sub_25F122E04()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v19 = *(v0 + 48);
  v20 = *(v8 + 48);
  v10 = *(v4 + 16);
  *(v0 + 120) = v10;
  *(v0 + 128) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v5, v3);
  v11 = *(v4 + 80);
  *(v0 + 208) = v11;
  v12 = (v11 + 56) & ~v11;
  v13 = swift_allocObject();
  *(v0 + 136) = v13;
  *(v13 + 2) = v8;
  *(v13 + 3) = v9;
  *(v13 + 4) = v7;
  *(v13 + 5) = v19;
  *(v13 + 6) = v6;
  v14 = *(v4 + 32);
  *(v0 + 144) = v14;
  *(v0 + 152) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(&v13[v12], v2, v3);
  v15 = *(MEMORY[0x277D40608] + 4);

  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  v17 = sub_25F178B2C();
  *v16 = v0;
  v16[1] = sub_25F122FAC;

  return MEMORY[0x2821A0D70](v0 + 16, sub_25F130904, v13, v17);
}

uint64_t sub_25F122FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_25F1233F8;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_25F1230C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F1230C8()
{
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  v1 = *(v0 + 208);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v21 = *(v0 + 56);
  v9 = *(v0 + 40);
  v19 = *(v0 + 72);
  v20 = *(v0 + 48);
  v10 = *(v0 + 24);
  v18 = *(v0 + 32);
  v11 = *(v0 + 16);
  *(v0 + 176) = v11;
  v24 = *(v10 + 120);
  v3(v4, v8, v7);
  v12 = (v1 + 80) & ~v1;
  v13 = swift_allocObject();
  *(v0 + 184) = v13;
  *(v13 + 2) = v10;
  *(v13 + 3) = v11;
  *(v13 + 4) = v19;
  *(v13 + 5) = v6;
  *(v13 + 6) = v18;
  *(v13 + 7) = v9;
  *(v13 + 8) = v20;
  *(v13 + 9) = v21;
  v22(&v13[v12], v4, v7);
  v14 = *(MEMORY[0x277D40608] + 4);

  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_25F12326C;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A0D70](v15, sub_25F130A60, v13, v16);
}

uint64_t sub_25F12326C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_25F123464;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_25F123388;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F123388()
{
  v1 = v0[22];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F1233F8()
{
  v1 = v0[17];

  v2 = v0[21];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F123464()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[25];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F1234D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v96 = a2;
  v97 = a4;
  v99 = a7;
  v11 = sub_25F17767C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v94 = &v86 - v18;
  MEMORY[0x28223BE20](v17);
  v93 = &v86 - v19;
  v20 = sub_25F17888C();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v30 = a1[8];
  if (v30)
  {
    v95 = a6;
    v31 = a1[11];
    v32 = a1[12];
    v33 = a1[10];
    if (*(a1 + 72))
    {
      if (*(a1 + 72) == 1)
      {
        a1[9] = 2;
        *v99 = v33;
      }

      v98 = v28;
      v99 = v26;
      v92 = v30;
      v64 = v29;

      v91 = v33;

      v90 = v31;

      v89 = v32;

      sub_25F17885C();
      v65 = v12;
      v67 = *(v12 + 16);
      v66 = v12 + 16;
      v68 = v94;
      v69 = v95;
      v88 = v11;
      v93 = v67;
      (v67)(v94, v95, v11);
      v70 = a3;

      v87 = v64;
      v71 = sub_25F17887C();
      v72 = sub_25F17953C();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v86 = v66;
        v74 = v73;
        v75 = v65;
        v76 = swift_slowAlloc();
        v100 = v76;
        *v74 = 136446722;
        *(v74 + 4) = sub_25F0BECF0(v96, v70, &v100);
        *(v74 + 12) = 2082;
        *(v74 + 14) = sub_25F0BECF0(v97, a5, &v100);
        *(v74 + 22) = 2080;
        sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
        v77 = v72;
        v78 = v88;
        v79 = sub_25F17980C();
        v81 = v80;
        (*(v75 + 8))(v68, v78);
        v82 = sub_25F0BECF0(v79, v81, &v100);
        v69 = v95;

        *(v74 + 24) = v82;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v76, -1, -1);
        MEMORY[0x25F8D6230](v74, -1, -1);
      }

      else
      {

        v78 = v88;
        (*(v65 + 8))(v68, v88);
      }

      (*(v98 + 8))(v87, v99);
      type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError(0);
      sub_25F12E2B8(&qword_27FD487E8, type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError);
      swift_allocError();
      (v93)(v85, v69, v78);
    }

    else
    {
      v98 = v28;
      v99 = v26;
      v92 = v30;
      v46 = &v86 - v27;

      v91 = v33;

      v90 = v31;

      v89 = v32;

      sub_25F17885C();
      v47 = v12;
      v48 = *(v12 + 16);
      v49 = v93;
      v50 = v95;
      v51 = v11;
      v94 = (v12 + 16);
      v88 = v48;
      v48(v93, v95, v11);

      v52 = a5;

      v87 = v46;
      v53 = sub_25F17887C();
      v54 = sub_25F17953C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        LODWORD(v86) = v54;
        v56 = v55;
        v57 = swift_slowAlloc();
        v100 = v57;
        *v56 = 136446722;
        *(v56 + 4) = sub_25F0BECF0(v96, a3, &v100);
        *(v56 + 12) = 2082;
        *(v56 + 14) = sub_25F0BECF0(v97, v52, &v100);
        *(v56 + 22) = 2080;
        sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
        v58 = v53;
        v59 = sub_25F17980C();
        v61 = v60;
        (*(v47 + 8))(v49, v11);
        v62 = sub_25F0BECF0(v59, v61, &v100);
        v50 = v95;

        *(v56 + 24) = v62;
        swift_arrayDestroy();
        v63 = v57;
        v51 = v11;
        MEMORY[0x25F8D6230](v63, -1, -1);
        MEMORY[0x25F8D6230](v56, -1, -1);
      }

      else
      {

        (*(v47 + 8))(v49, v11);
      }

      (*(v98 + 8))(v87, v99);
      type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError(0);
      sub_25F12E2B8(&qword_27FD487F0, type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError);
      swift_allocError();
      v88(v84, v50, v51);
    }

    swift_willThrow();
  }

  else
  {
    v98 = v28;
    v99 = v26;
    sub_25F17885C();
    v94 = *(v12 + 16);
    v95 = v12 + 16;
    (v94)(v16, a6, v11);

    v35 = sub_25F17887C();
    v36 = sub_25F17953C();

    LODWORD(v93) = v36;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v91 = v35;
      v38 = a3;
      v39 = v37;
      v92 = swift_slowAlloc();
      v100 = v92;
      *v39 = 136446722;
      *(v39 + 4) = sub_25F0BECF0(v96, v38, &v100);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_25F0BECF0(v97, a5, &v100);
      *(v39 + 22) = 2080;
      sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
      v40 = sub_25F17980C();
      v42 = v41;
      (*(v12 + 8))(v16, v11);
      v43 = sub_25F0BECF0(v40, v42, &v100);

      *(v39 + 24) = v43;
      v44 = v91;
      v45 = v92;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v45, -1, -1);
      MEMORY[0x25F8D6230](v39, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    (*(v98 + 8))(v24, v99);
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F12E2B8(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError);
    swift_allocError();
    (v94)(v83, a6, v11);
    return swift_willThrow();
  }
}

uint64_t sub_25F123F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v133 = a7;
  v139 = a8;
  v136 = a6;
  v124 = a5;
  v142 = a9;
  v13 = sub_25F1787BC();
  v128 = *(v13 - 8);
  v129 = v13;
  v14 = *(v128 + 64);
  MEMORY[0x28223BE20](v13);
  v127 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25F1787FC();
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = *(v131 + 64);
  MEMORY[0x28223BE20](v16);
  v130 = &v114[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_25F17767C();
  v19 = *(v135 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v135);
  v126 = &v114[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v114[-v24];
  MEMORY[0x28223BE20](v23);
  v123 = &v114[-v26];
  v27 = sub_25F17888C();
  v141 = *(v27 - 8);
  v28 = *(v141 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v140 = &v114[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v114[-v32];
  MEMORY[0x28223BE20](v31);
  v125 = &v114[-v34];
  v35 = a2;
  v36 = a2;
  v37 = a3;
  v38 = a3;
  v39 = a4;
  v138 = a1;
  v40 = v134;
  sub_25F1250B4(v36, v38, a4);
  v143 = v27;
  v137 = v19;
  if (v40)
  {
    v41 = v139;
    v42 = v40;
    v44 = v135;
    v43 = v136;
LABEL_8:
    v68 = v140;
    sub_25F17885C();
    v69 = v137;
    v70 = v126;
    (*(v137 + 16))(v126, v142, v44);

    v71 = v42;
    v72 = sub_25F17887C();
    v73 = sub_25F17953C();

    LODWORD(v142) = v73;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v44;
      v75 = v70;
      v76 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v144[0] = v139;
      *v76 = 136446978;
      *(v76 + 4) = sub_25F0BECF0(v124, v43, v144);
      *(v76 + 12) = 2082;
      *(v76 + 14) = sub_25F0BECF0(v133, v41, v144);
      *(v76 + 22) = 2080;
      sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
      v77 = v74;
      v78 = sub_25F17980C();
      v80 = v79;
      (*(v69 + 8))(v75, v77);
      v81 = sub_25F0BECF0(v78, v80, v144);

      *(v76 + 24) = v81;
      *(v76 + 32) = 2114;
      v82 = v42;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 34) = v83;
      v84 = v136;
      *v136 = v83;
      sub_25F0B7E94(v84, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v84, -1, -1);
      v85 = v139;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v85, -1, -1);
      MEMORY[0x25F8D6230](v76, -1, -1);

      (*(v141 + 8))(v140, v143);
    }

    else
    {

      (*(v69 + 8))(v70, v44);
      (*(v141 + 8))(v68, v143);
    }

    v147 = *(v138 + 112);

    v86 = v127;
    sub_25F1787CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
    sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0);
    sub_25F17856C();
    (*(v128 + 8))(v86, v129);

    v87 = v130;
    sub_25F1787DC();
    v88 = v42;
    sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580]);
    v89 = v132;
    sub_25F1781BC();

    (*(v131 + 8))(v87, v89);
    v90 = v145;
    v91 = v146;
    v92 = __swift_project_boxed_opaque_existential_1(v144, v145);
    v93 = *(v90 - 8);
    v94 = *(v93 + 64);
    MEMORY[0x28223BE20](v92);
    v96 = &v114[-((v95 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v93 + 16))(v96);
    v97 = *(*(v91 + 8) + 8);
    if (sub_25F17981C())
    {
      (*(v93 + 8))(v96, v90);
    }

    else
    {
      swift_allocError();
      (*(v93 + 32))(v98, v96, v90);
    }

    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1Tm(v144);
  }

  v121 = v37;
  v122 = v35;
  v119 = v25;
  v120 = v33;
  v134 = 0;
  sub_25F17885C();
  v45 = v19;
  v46 = *(v19 + 16);
  v47 = v123;
  v48 = v135;
  v118 = v19 + 16;
  v117 = v46;
  v46(v123, v142, v135);
  v49 = v136;

  v50 = v139;

  v51 = v39;

  v52 = sub_25F17887C();
  v53 = sub_25F17951C();

  v54 = v49;
  v55 = v51;
  if (os_log_type_enabled(v52, v53))
  {
    v56 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v144[0] = v116;
    *v56 = 136446978;
    v115 = v53;
    v43 = v54;
    *(v56 + 4) = sub_25F0BECF0(v124, v54, v144);
    *(v56 + 12) = 2082;
    *(v56 + 14) = sub_25F0BECF0(v133, v50, v144);
    *(v56 + 22) = 2082;
    *(v56 + 24) = sub_25F0BECF0(v121, v55, v144);
    *(v56 + 32) = 2080;
    sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v57 = sub_25F17980C();
    v58 = v47;
    v60 = v59;
    v61 = *(v45 + 8);
    v44 = v48;
    v123 = v61;
    (v61)(v58, v48);
    v62 = sub_25F0BECF0(v57, v60, v144);

    *(v56 + 34) = v62;
    v63 = v116;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v63, -1, -1);
    MEMORY[0x25F8D6230](v56, -1, -1);

    v50 = v139;
  }

  else
  {
    v43 = v54;

    v65 = *(v45 + 8);
    v44 = v48;
    v123 = v65;
    (v65)(v47, v48);
  }

  v64 = *(v141 + 8);
  v64(v125, v143);
  v66 = v134;
  v67 = sub_25F178ACC();
  if (v66)
  {
    v41 = v50;
    v42 = v66;
    goto LABEL_8;
  }

  LODWORD(v140) = v67;
  v100 = v120;
  sub_25F17885C();
  v101 = v119;
  v117(v119, v142, v44);

  v102 = sub_25F17887C();
  v103 = sub_25F17952C();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    LODWORD(v142) = v103;
    v105 = v101;
    v106 = v104;
    v107 = swift_slowAlloc();
    v144[0] = v107;
    *v106 = 136446722;
    *(v106 + 4) = sub_25F0BECF0(v124, v43, v144);
    *(v106 + 12) = 2080;
    sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v108 = v105;
    v109 = sub_25F17980C();
    v111 = v110;
    (v123)(v108, v44);
    v112 = sub_25F0BECF0(v109, v111, v144);

    *(v106 + 14) = v112;
    *(v106 + 22) = 1026;
    *(v106 + 24) = v140;
    _os_log_impl(&dword_25F0B3000, v102, v142, "%{public}s: runProgramOnMainThread returned normally for %s, returned: %{public}d", v106, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v107, -1, -1);
    MEMORY[0x25F8D6230](v106, -1, -1);

    v113 = v120;
  }

  else
  {

    (v123)(v101, v44);
    v113 = v100;
  }

  v64(v113, v143);
  return sub_25F124D08();
}

uint64_t sub_25F124D08()
{
  v1 = sub_25F178F8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F178FBC();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 48);
  aBlock[4] = sub_25F12E298;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F125070;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);

  sub_25F178FAC();
  v14 = MEMORY[0x277D84F90];
  sub_25F12E2B8(&qword_27FD48688, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48690, &qword_25F180540);
  sub_25F0B7D00(&unk_27FD48698, &qword_27FD48690, &qword_25F180540);
  sub_25F17966C();
  MEMORY[0x25F8D5530](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void *sub_25F124FBC(void *result)
{
  if (result[8])
  {
    v1 = result[7];
    v2 = result[8];
    v3 = result[9];
    v4 = result[10];
    v5 = result[11];
    v6 = result[12];
    *(result + 7) = 0u;
    *(result + 9) = 0u;
    *(result + 11) = 0u;
    sub_25F11D940();
  }

  return result;
}

uint64_t sub_25F125070(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25F1250B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v52 = a1;
  v5 = sub_25F1784DC();
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17888C();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v49 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = *(v3 + 40);
  v54 = *(v3 + 32);
  sub_25F17845C();
  sub_25F17844C();
  v19 = *(v3 + 16);
  v20 = sub_25F17842C();

  if (!v20)
  {
LABEL_4:
    sub_25F17885C();

    v23 = sub_25F17887C();
    v24 = sub_25F17952C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_25F0BECF0(v54, v18, &v57);
      _os_log_impl(&dword_25F0B3000, v23, v24, "%{public}s: No swift entry symbol found", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x25F8D6230](v26, -1, -1);
      MEMORY[0x25F8D6230](v25, -1, -1);
    }

    return (*(v55 + 8))(v13, v56);
  }

  v21 = sub_25F1780AC();
  if (v22)
  {

    goto LABEL_4;
  }

  v28 = v21;
  v48 = v4;
  sub_25F17885C();

  v29 = sub_25F17887C();
  v30 = sub_25F17952C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v28;
    v33 = v32;
    v57 = v32;
    *v31 = 136446466;
    *(v31 + 4) = sub_25F0BECF0(v54, v18, &v57);
    *(v31 + 12) = 2050;
    *(v31 + 14) = v47;
    _os_log_impl(&dword_25F0B3000, v29, v30, "%{public}s: Symbol table with entry section pointer %{public}llx is present. Sending to agent.", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x25F8D6230](v33, -1, -1);
    MEMORY[0x25F8D6230](v31, -1, -1);
  }

  v34 = *(v55 + 8);
  v34(v17, v56);
  sub_25F1784CC();
  v35 = v48;
  v36 = sub_25F1784BC();
  if (v35)
  {
    (*(v53 + 8))(v8, v5);
  }

  v38 = v36;
  v39 = v37;
  v48 = v34;
  (*(v53 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F0, &unk_25F17F870);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_25F17C9B0;
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  v41 = sub_25F178AAC();

  if (!v41)
  {
  }

  v42 = v49;
  sub_25F17885C();

  v43 = sub_25F17887C();
  v44 = sub_25F17953C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v57 = v46;
    *v45 = 136446466;
    *(v45 + 4) = sub_25F0BECF0(v54, v18, &v57);
    *(v45 + 12) = 1026;
    *(v45 + 14) = v41;
    _os_log_impl(&dword_25F0B3000, v43, v44, "%{public}s: __previews_injection_register_swift_extension_entry_section call returned %{public}d", v45, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x25F8D6230](v46, -1, -1);
    MEMORY[0x25F8D6230](v45, -1, -1);
  }

  return (v48)(v42, v56);
}

uint64_t sub_25F1256A0(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A80, type metadata accessor for PreviewsJITLinker.InvalidatedError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12570C(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A80, type metadata accessor for PreviewsJITLinker.InvalidatedError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125794(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A08, type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125800(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A08, type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125888(uint64_t a1)
{
  v2 = sub_25F132B8C();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1258C4(uint64_t a1)
{
  v2 = sub_25F132B8C();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12591C()
{
  v3 = *v0;
  v1 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v1);

  return 0x203A65646F63;
}

uint64_t sub_25F12598C(uint64_t a1)
{
  v2 = sub_25F132BE0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1259C8(uint64_t a1)
{
  v2 = sub_25F132BE0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125A20()
{
  sub_25F1796DC();

  strcpy(v2, "Agent bundle: ");
  sub_25F17767C();
  sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return v2[0];
}

uint64_t sub_25F125AF8(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A10, type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125B64(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A10, type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125BD0(uint64_t a1)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD00000000000001CLL, 0x800000025F1868E0);
  v2 = *(a1 + 20);
  sub_25F17722C();
  sub_25F17976C();
  return 0;
}

uint64_t sub_25F125C8C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_25F125CC4(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A00, type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125D30(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A00, type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125DB8(uint64_t a1)
{
  v2 = sub_25F132C34();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125DF4(uint64_t a1)
{
  v2 = sub_25F132C34();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125E30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](a1, a2);
  MEMORY[0x25F8D50D0](0x203A687461700ALL, 0xE700000000000000);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    a3 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x25F8D50D0](a3, v8);

  return 0x3A7972617262696CLL;
}

unint64_t sub_25F125F18()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  return 0xD000000000000030;
}

uint64_t sub_25F125FA0(uint64_t a1)
{
  v2 = sub_25F1306C0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125FDC(uint64_t a1)
{
  v2 = sub_25F1306C0();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F126020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v147 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48770, &qword_25F180740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v129 - v9;
  v11 = sub_25F178A9C();
  v143 = *(v11 - 8);
  v144 = v11;
  v12 = *(v143 + 64);
  MEMORY[0x28223BE20](v11);
  v142 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48778, &qword_25F180748);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v145 = &v129 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48780, &unk_25F180750);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v129 - v19;
  v20 = sub_25F178B1C();
  v148 = *(v20 - 8);
  v149 = v20;
  v21 = *(v148 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v141 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v150 = &v129 - v24;
  v25 = sub_25F1779DC();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v138 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v129 - v30;
  v32 = sub_25F17888C();
  v152 = *(v32 - 8);
  v153 = v32;
  v33 = *(v152 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v139 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v129 - v36;
  v38 = *v5;
  v154 = v5[1];
  v155 = v38;

  v158 = a1;
  v39 = sub_25F17793C();
  v151 = v5;
  v41 = v5[5];
  v140 = v5 + 5;
  if (*(v41 + 16))
  {
    v137 = sub_25F0C8D24(v39, v40);
    v43 = v42;
    v4 = v3;

    if (v43)
    {

      return (*(v148 + 16))(v147, *(v41 + 56) + *(v148 + 72) * v137, v149);
    }
  }

  else
  {
  }

  v136 = v10;
  sub_25F17885C();
  v45 = v26[2];
  v133 = v26 + 2;
  v132 = v45;
  v45(v31, v158, v25);
  v46 = v154;

  v47 = sub_25F17887C();
  v48 = sub_25F17952C();

  v49 = os_log_type_enabled(v47, v48);
  v135 = v25;
  v134 = v26;
  if (v49)
  {
    v50 = v25;
    v51 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v156 = v131;
    *v51 = 136446466;
    *(v51 + 4) = sub_25F0BECF0(v155, v46, &v156);
    *(v51 + 12) = 2080;
    LODWORD(v130) = v48;
    v52 = sub_25F17793C();
    v53 = v26;
    v54 = v4;
    v56 = v55;
    v137 = v53[1];
    (v137)(v31, v50);
    v57 = sub_25F0BECF0(v52, v56, &v156);
    v4 = v54;

    *(v51 + 14) = v57;
    _os_log_impl(&dword_25F0B3000, v47, v130, "%{public}s: Creating JIT Dylib for %s", v51, 0x16u);
    v58 = v131;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v58, -1, -1);
    MEMORY[0x25F8D6230](v51, -1, -1);

    v59 = v155;
    v60 = *(v152 + 8);
    v60(v37, v153);
  }

  else
  {

    v137 = v26[1];
    (v137)(v31, v25);
    v60 = *(v152 + 8);
    v60(v37, v153);
    v59 = v155;
  }

  v61 = v158;
  v62 = sub_25F17797C();
  MEMORY[0x28223BE20](v62);
  *(&v129 - 4) = v61;
  *(&v129 - 3) = v59;
  v63 = v151;
  *(&v129 - 2) = v46;
  *(&v129 - 1) = v63;
  sub_25F11D31C(sub_25F13064C, (&v129 - 6), v62);

  if (v4)
  {
  }

  v131 = v60;
  v64 = v63[3];
  sub_25F17793C();
  sub_25F17793C();
  v65 = v145;
  sub_25F1789AC();
  v66 = sub_25F1789CC();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  sub_25F1779BC();
  v67 = v146;
  sub_25F1789DC();
  v68 = sub_25F1789EC();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_25F17893C();
  sub_25F0B7E94(v67, &qword_27FD48780, &unk_25F180750);

  if (sub_25F17796C() & 1) != 0 && (sub_25F17793C(), v69 = sub_25F17917C(), , (v69))
  {
    v151 = v64;
    v70 = sub_25F17793C();
    v72 = sub_25F127D20(47, 0xE100000000000000, v70, v71);
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      sub_25F17793C();
      v75 = sub_25F17918C();

      if (v75)
      {
        v76 = sub_25F17793C();
        sub_25F127E10(v72, v76, v77);
        v79 = v78;

        result = sub_25F17962C();
        if (v80)
        {
          result = v79;
        }

        if (v79 >> 14 < result >> 14)
        {
          __break(1u);
        }

        else
        {
          v81 = sub_25F17963C();

          result = sub_25F17912C();
          if ((result & 0x8000000000000000) == 0)
          {
            v145 = 0;
            result = sub_25F17962C();
            if (v82)
            {
              v83 = v81;
            }

            else
            {
              v83 = result;
            }

            if (v83 >> 14 >= v81 >> 14)
            {
              v84 = sub_25F17963C();
              v86 = v85;
              v88 = v87;
              v90 = v89;

              v91 = sub_25F17961C();
              v93 = v92;
              v156 = 0;
              v157 = 0xE000000000000000;
              sub_25F1796DC();

              v156 = 791293534;
              v157 = 0xE400000000000000;
              MEMORY[0x25F8D50D0](v91, v93);

              MEMORY[0x25F8D50D0](0xD000000000000013, 0x800000025F1866F0);
              v94 = v157;
              v130 = v156;
              v156 = 3092772;
              v157 = 0xE300000000000000;
              v95 = MEMORY[0x25F8D5070](v84, v86, v88, v90);
              v97 = v96;

              MEMORY[0x25F8D50D0](v95, v97);

              v99 = v156;
              v98 = v157;
              v100 = v139;
              sub_25F17885C();
              v101 = v138;
              v132(v138, v158, v135);
              v102 = v154;

              v103 = sub_25F17887C();
              v104 = sub_25F17951C();
              v146 = v98;

              v133 = v94;

              LODWORD(v132) = v104;
              if (os_log_type_enabled(v103, v104))
              {
                v105 = v99;
                v106 = swift_slowAlloc();
                v107 = v101;
                v108 = swift_slowAlloc();
                v156 = v108;
                *v106 = 136446978;
                v109 = sub_25F0BECF0(v155, v102, &v156);

                *(v106 + 4) = v109;
                *(v106 + 12) = 2080;
                v110 = sub_25F17793C();
                v112 = v111;
                (v137)(v107, v135);
                v113 = sub_25F0BECF0(v110, v112, &v156);

                *(v106 + 14) = v113;
                *(v106 + 22) = 2080;
                *(v106 + 24) = sub_25F0BECF0(v130, v133, &v156);
                *(v106 + 32) = 2080;
                *(v106 + 34) = sub_25F0BECF0(v105, v146, &v156);
                _os_log_impl(&dword_25F0B3000, v103, v132, "%{public}s: setting loadable at path via regex for “%s”, regex: “%s”, replacement: “%s”", v106, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x25F8D6230](v108, -1, -1);
                MEMORY[0x25F8D6230](v106, -1, -1);

                v131(v139, v153);
              }

              else
              {

                (v137)(v101, v135);
                v131(v100, v153);
              }

              v114 = v145;
              v128 = v150;
              v64 = v151;
              sub_25F178ADC();
              v115 = v144;
              if (v114)
              {
                (*(v148 + 8))(v128, v149);
              }

              goto LABEL_25;
            }

LABEL_36:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    v115 = v144;
    v64 = v151;
  }

  else
  {
    v115 = v144;
  }

LABEL_25:

  if (sub_25F17796C())
  {
    v116 = v141;
    sub_25F17894C();
    v117 = *MEMORY[0x277D7E938];
    v118 = v143;
    v119 = *(v143 + 104);
    v151 = v64;
    v120 = v142;
    LODWORD(v158) = v117;
    v119(v142);
    sub_25F178AFC();
    (*(v118 + 8))(v120, v115);
    v121 = v148;
    v122 = v149;
    (*(v148 + 8))(v116, v149);
  }

  else
  {
    LODWORD(v158) = *MEMORY[0x277D7E938];
    v120 = v142;
    v118 = v143;
    v116 = v141;
    v121 = v148;
    v122 = v149;
  }

  sub_25F17897C();
  (*(v118 + 104))(v120, v158, v115);
  sub_25F178AFC();
  (*(v118 + 8))(v120, v115);
  (*(v121 + 8))(v116, v122);
  v123 = sub_25F17793C();
  v125 = v124;
  v126 = v136;
  v127 = v150;
  (*(v121 + 16))(v136, v150, v122);
  (*(v121 + 56))(v126, 0, 1, v122);
  sub_25F16A0A0(v126, v123, v125);
  return (*(v121 + 32))(v147, v127, v122);
}

uint64_t sub_25F126FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v93 = a4;
  v96 = a2;
  v98 = a5;
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  v104 = v7;
  v105 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v91 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v91 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  v23 = sub_25F1789BC();
  v102 = *(v23 - 8);
  v103 = v23;
  v24 = *(v102 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v97 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v101 = &v91 - v27;
  v28 = *(a1 + 8);
  v100 = *a1;
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  v94 = v30;
  if ((sub_25F1779AC() & 1) == 0)
  {
    sub_25F17885C();

    v46 = sub_25F17887C();
    v47 = sub_25F17952C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v109[0] = v49;
      *v48 = 136446466;
      *(v48 + 4) = sub_25F0BECF0(v96, a3, v109);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_25F0BECF0(v100, v28, v109);
      _os_log_impl(&dword_25F0B3000, v46, v47, "%{public}s: load dylib command for %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v49, -1, -1);
      MEMORY[0x25F8D6230](v48, -1, -1);
    }

    (*(v105 + 8))(v14, v104);
    goto LABEL_16;
  }

  if ((v29 & 1) == 0)
  {
    sub_25F17885C();

    v50 = sub_25F17887C();
    v51 = sub_25F17952C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v109[0] = v53;
      *v52 = 136446466;
      *(v52 + 4) = sub_25F0BECF0(v96, a3, v109);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_25F0BECF0(v100, v28, v109);
      _os_log_impl(&dword_25F0B3000, v50, v51, "%{public}s: load strong dylib command for %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v53, -1, -1);
      MEMORY[0x25F8D6230](v52, -1, -1);
    }

    (*(v105 + 8))(v22, v104);
LABEL_16:
    v55 = v101;
    v54 = v102;
    v56 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x277D7E910], v103);
    goto LABEL_17;
  }

  (*(v102 + 104))(v101, *MEMORY[0x277D7E908], v103);
  sub_25F17885C();

  v32 = sub_25F17887C();
  v33 = sub_25F17952C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v109[0] = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_25F0BECF0(v96, a3, v109);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_25F0BECF0(v100, v28, v109);
    _os_log_impl(&dword_25F0B3000, v32, v33, "%{public}s: weak load dylib command for %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v35, -1, -1);
    MEMORY[0x25F8D6230](v34, -1, -1);
  }

  v36 = *(v105 + 8);
  v36(v20, v104);
  v92 = v36;
  if (v31)
  {

    sub_25F17885C();

    v37 = sub_25F17887C();
    v38 = sub_25F17952C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v109[0] = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_25F0BECF0(v96, a3, v109);
      *(v39 + 12) = 2080;
      v41 = v94;
      *(v39 + 14) = sub_25F0BECF0(v94, v31, v109);
      _os_log_impl(&dword_25F0B3000, v37, v38, "%{public}s: adding nullable symbols from %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v40, -1, -1);
      v42 = v39;
      v43 = v92;
      MEMORY[0x25F8D6230](v42, -1, -1);

      v44 = v17;
      v45 = v104;
      v43(v44, v104);
    }

    else
    {

      v61 = v17;
      v45 = v104;
      v36(v61, v104);
      v41 = v94;
    }

    v62 = *(v93 + 24);

    v63 = v99;
    sub_25F178AEC();
    v60 = v63;
    if (v63)
    {

      goto LABEL_22;
    }

    v54 = v102;
    v56 = v103;
    v55 = v101;
LABEL_17:
    (*(v54 + 16))(v97, v55, v56);

    v57 = v98;
    sub_25F17899C();
    (*(v54 + 8))(v55, v56);
    v58 = sub_25F1789CC();
    return (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  }

  sub_25F13066C();
  v60 = swift_allocError();
  swift_willThrow();
  v41 = v94;
  v45 = v104;
LABEL_22:
  v106[0] = v100;
  v106[1] = v28;
  v106[2] = v41;
  v107 = v31;

  v64 = v60;
  sub_25F1306C0();
  sub_25F1781BC();

  v65 = v95;
  sub_25F17885C();
  sub_25F0BEC1C(v109, v106);

  v66 = sub_25F17887C();
  v67 = sub_25F17953C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v112 = v100;
    *v68 = 136446466;
    *(v68 + 4) = sub_25F0BECF0(v96, a3, &v112);
    *(v68 + 12) = 2114;
    v70 = v107;
    v69 = v108;
    v71 = __swift_project_boxed_opaque_existential_1(v106, v107);
    v98 = &v91;
    v72 = *(v70 - 8);
    v73 = *(v72 + 64);
    MEMORY[0x28223BE20](v71);
    v75 = &v91 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v75);
    v76 = *(*(v69 + 8) + 8);
    if (sub_25F17981C())
    {
      (*(v72 + 8))(v75, v70);
    }

    else
    {
      swift_allocError();
      (*(v72 + 32))(v77, v75, v70);
    }

    v78 = _swift_stdlib_bridgeErrorToNSError();
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    *(v68 + 14) = v78;
    v79 = v99;
    *v99 = v78;
    _os_log_impl(&dword_25F0B3000, v66, v67, "%{public}s: failed adding weak symbols: %{public}@", v68, 0x16u);
    sub_25F0B7E94(v79, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v79, -1, -1);
    v80 = v100;
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x25F8D6230](v80, -1, -1);
    MEMORY[0x25F8D6230](v68, -1, -1);

    v92(v95, v104);
  }

  else
  {

    v92(v65, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
  }

  v81 = v101;
  v82 = v110;
  v83 = v111;
  v84 = __swift_project_boxed_opaque_existential_1(v109, v110);
  v85 = *(v82 - 8);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = &v91 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v85 + 16))(v88);
  v89 = *(*(v83 + 8) + 8);
  if (sub_25F17981C())
  {
    (*(v85 + 8))(v88, v82);
  }

  else
  {
    swift_allocError();
    (*(v85 + 32))(v90, v88, v82);
  }

  swift_willThrow();

  (*(v102 + 8))(v81, v103);
  return __swift_destroy_boxed_opaque_existential_1Tm(v109);
}