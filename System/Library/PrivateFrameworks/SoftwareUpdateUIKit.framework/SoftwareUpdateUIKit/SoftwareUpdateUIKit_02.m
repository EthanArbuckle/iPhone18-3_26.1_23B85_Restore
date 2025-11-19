uint64_t sub_26AED774C()
{
  v43 = v0;
  v16 = *(v0 + 120);
  v14 = *(v0 + 104);
  v12 = *(v0 + 96);
  v13 = *(v0 + 88);
  v17 = *(v0 + 80);
  *(v0 + 48) = v0;
  v18 = *(v0 + 16);
  v1 = *(v0 + 24);
  v19 = v1;
  *(v0 + 32) = v18;
  *(v0 + 40) = v1 & 1;
  sub_26B078550();
  (*(v14 + 16))(v16, v12, v17);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v13;
  (*(v14 + 32))(v20 + v15, v16);
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = v19 & 1;
  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AEDBBCC;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AEDD8A8;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEDD8F4;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AEDBC20;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AEDD9F4;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AEDBCC0;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26AEDDAF4;
  *(v34 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v35 = v2;

  *v35 = sub_26AEDD82C;
  v35[1] = v26;

  v35[2] = sub_26AEDD860;
  v35[3] = v27;

  v35[4] = sub_26AEDD940;
  v35[5] = v28;

  v35[6] = sub_26AEDD978;
  v35[7] = v29;

  v35[8] = sub_26AEDD9AC;
  v35[9] = v30;

  v35[10] = sub_26AEDDA40;
  v35[11] = v31;

  v35[12] = sub_26AEDDA78;
  v35[13] = v32;

  v35[14] = sub_26AEDDAAC;
  v35[15] = v33;

  v35[16] = sub_26AEDDB40;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v9 = sub_26AEA3B70(0);
    v10 = sub_26AEA3B70(3);
    v38 = buf;
    v39 = v9;
    v40 = v10;
    sub_26AEA3BC4(2, &v38);
    sub_26AEA3BC4(3, &v38);
    v41 = sub_26AEDD82C;
    v42 = v26;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDD860;
    v42 = v27;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDD940;
    v42 = v28;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDD978;
    v42 = v29;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDD9AC;
    v42 = v30;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDDA40;
    v42 = v31;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDDA78;
    v42 = v32;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDDAAC;
    v42 = v33;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AEDDB40;
    v42 = v34;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Deep linking resolved the current state: %s", buf, 0x20u);
    sub_26AEA3C24(v9);
    sub_26AEA3C24(v10);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v11[18];
  v6 = v11[16];
  v5 = v11[17];
  MEMORY[0x277D82BD8](v36);
  (*(v5 + 8))(v7, v6);

  v3 = *(v11[6] + 8);

  return v3(v18, v19 & 1);
}

uint64_t sub_26AED83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a6;
  *(v6 + 112) = a5;
  *(v6 + 104) = a4;
  *(v6 + 96) = a3;
  *(v6 + 88) = a2;
  *(v6 + 80) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8 = *(a5 - 8);
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 + 64);
  *(v6 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;

  return MEMORY[0x2822009F8](sub_26AED857C, 0, 0);
}

uint64_t sub_26AED857C()
{
  v18 = v0[19];
  v13 = v0[18];
  v10 = v0[17];
  v3 = v0[16];
  v11 = v0[15];
  v14 = v0[14];
  v7 = v0[13];
  v16 = v0[12];
  v0[6] = v0;
  v5 = sub_26B07A160();
  v6 = *(*(v5 - 8) + 56);
  v6(v18, 1);

  v8 = *(v3 + 16);
  v8(v13, v7, v14);
  v9 = *(v3 + 80);
  v4 = swift_allocObject();
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = v14;
  *(v4 + 5) = v11;
  *(v4 + 6) = v16;
  v15 = *(v3 + 32);
  v15(&v4[(v9 + 56) & ~v9], v13);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC318);
  sub_26AEDB00C(v18, &unk_26B0893F0, v4, v19);
  sub_26AEA08A4(v18);
  (v6)(v18, 1, 1, v5);
  v8(v13, v7, v14);

  v12 = (v9 + 48) & ~v9;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  *(v17 + 5) = v11;
  v15(&v17[v12], v13);
  *&v17[(v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;
  sub_26AEDB00C(v18, &unk_26B089408, v17, v19);
  sub_26AEA08A4(v18);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0[6];
  v1[1] = sub_26AED88FC;

  return MEMORY[0x2822002D0](v0 + 2, 0, 0, v19);
}

uint64_t sub_26AED88FC()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x2822009F8](sub_26AED8A14, 0, 0);
}

uint64_t sub_26AED8A14()
{
  *(v0 + 48) = v0;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (*(v0 + 26))
  {
    v1 = *(v5 + 80);
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  else
  {
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    *(v5 + 41) = HIBYTE(v7) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2C8);
    sub_26B07A110();
    v2 = *(v5 + 80);
    if ((v7 & 0x100) != 0)
    {
      *v2 = 0;
      *(v2 + 8) = 1;
    }

    else
    {
      *v2 = v6;
      *(v2 + 8) = v7;
    }
  }

  v3 = *(*(v5 + 48) + 8);

  return v3();
}

uint64_t sub_26AED8C6C(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v10 = v2[2];
  v11 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AED8D58;

  return sub_26AED83F8(a1, a2, v8, v9, v10, v11);
}

uint64_t sub_26AED8D58()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AED8E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a7;
  v7[11] = a6;
  v7[10] = a5;
  v7[9] = a4;
  v7[8] = a1;
  v7[2] = v7;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = 0;
  v10 = *(a6 - 8);
  v7[13] = v10;
  v7[14] = *(v10 + 64);
  v7[15] = swift_task_alloc();
  v8 = sub_26B078580();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v7[3] = a4;
  v7[4] = a5;

  return MEMORY[0x2822009F8](sub_26AED9010, 0, 0);
}

uint64_t sub_26AED9010()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v0;
  v5 = *(v1 + 112) * 1000000000.0;
  if (((*&v5 >> 52) & 0x7FFLL) == 0x7FF || v5 <= -1.0 || v5 >= 1.84467441e19)
  {
    return sub_26B07A650();
  }

  v3 = swift_task_alloc();
  *(v4 + 152) = v3;
  *v3 = *(v4 + 16);
  v3[1] = sub_26AED92AC;

  return MEMORY[0x282200480](v5);
}

uint64_t sub_26AED92AC()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
    v2 = sub_26AEDA1E4;
  }

  else
  {
    v2 = sub_26AED9414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AED9414()
{
  v47 = v0;
  v0[2] = v0;
  v15 = v0[20];
  v20 = v0[15];
  v18 = v0[13];
  v17 = v0[12];
  v21 = v0[11];
  v16 = v0[10];

  v22 = ReactiveUIManager.currentState.getter();
  v0[5] = v22;

  sub_26B078550();
  (*(v18 + 16))(v20, v16, v21);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v17;
  (*(v18 + 32))(v24 + v19, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;

  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEDF67C;
  *(v28 + 24) = v23;

  v40 = sub_26B078570();
  v41 = sub_26B07A2A0();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AEDF5FC;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEDF7C8;
  *(v26 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26AEDF814;
  *(v32 + 24) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEDAFD4;
  *(v27 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26AEDF914;
  *(v35 + 24) = v27;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEDF6C4;
  *(v29 + 24) = v28;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26AEDFA14;
  *(v38 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v39 = v1;

  *v39 = sub_26AEDF74C;
  v39[1] = v30;

  v39[2] = sub_26AEDF780;
  v39[3] = v31;

  v39[4] = sub_26AEDF860;
  v39[5] = v32;

  v39[6] = sub_26AEDF898;
  v39[7] = v33;

  v39[8] = sub_26AEDF8CC;
  v39[9] = v34;

  v39[10] = sub_26AEDF960;
  v39[11] = v35;

  v39[12] = sub_26AEDF998;
  v39[13] = v36;

  v39[14] = sub_26AEDF9CC;
  v39[15] = v37;

  v39[16] = sub_26AEDFA60;
  v39[17] = v38;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v40, v41))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v12 = sub_26AEA3B70(0);
    v13 = sub_26AEA3B70(3);
    v42 = buf;
    v43 = v12;
    v44 = v13;
    sub_26AEA3BC4(2, &v42);
    sub_26AEA3BC4(3, &v42);
    v45 = sub_26AEDF74C;
    v46 = v30;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    if (v15)
    {
    }

    v45 = sub_26AEDF780;
    v46 = v31;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF860;
    v46 = v32;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF898;
    v46 = v33;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF8CC;
    v46 = v34;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF960;
    v46 = v35;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF998;
    v46 = v36;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF9CC;
    v46 = v37;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDFA60;
    v46 = v38;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_26AE88000, v40, v41, "%s.%s: Timeout exceeded while waiting for scan to finish. End state: %s", buf, 0x20u);
    sub_26AEA3C24(v12);
    sub_26AEA3C24(v13);
    sub_26B07A400();
  }

  else
  {
  }

  v9 = v14[18];
  v10 = v14[16];
  v8 = v14[17];
  v3 = MEMORY[0x277D82BD8](v40);
  (*(v8 + 8))(v9, v10, v3);
  type metadata accessor for SUUIStatefulUIState();
  v14[6] = v22;
  v14[7] = 1;
  sub_26AEB6FE0();
  if (sub_26B079D30())
  {
    v6 = v22;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v4 = v14[8];
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 9) = 0;

  v5 = *(v14[2] + 8);

  return v5();
}

uint64_t sub_26AEDA1E4()
{
  v47 = v0;
  v1 = v0[20];
  v0[2] = v0;

  v20 = v0[15];
  v18 = v0[13];
  v17 = v0[12];
  v21 = v0[11];
  v16 = v0[10];

  v22 = ReactiveUIManager.currentState.getter();
  v0[5] = v22;

  sub_26B078550();
  (*(v18 + 16))(v20, v16, v21);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v17;
  (*(v18 + 32))(v24 + v19, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;

  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AEDF67C;
  *(v28 + 24) = v23;

  v40 = sub_26B078570();
  v41 = sub_26B07A2A0();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AEDF5FC;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEDF7C8;
  *(v26 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26AEDF814;
  *(v32 + 24) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEDAFD4;
  *(v27 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26AEDF914;
  *(v35 + 24) = v27;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEDF6C4;
  *(v29 + 24) = v28;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26AEDFA14;
  *(v38 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v39 = v2;

  *v39 = sub_26AEDF74C;
  v39[1] = v30;

  v39[2] = sub_26AEDF780;
  v39[3] = v31;

  v39[4] = sub_26AEDF860;
  v39[5] = v32;

  v39[6] = sub_26AEDF898;
  v39[7] = v33;

  v39[8] = sub_26AEDF8CC;
  v39[9] = v34;

  v39[10] = sub_26AEDF960;
  v39[11] = v35;

  v39[12] = sub_26AEDF998;
  v39[13] = v36;

  v39[14] = sub_26AEDF9CC;
  v39[15] = v37;

  v39[16] = sub_26AEDFA60;
  v39[17] = v38;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v40, v41))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v13 = sub_26AEA3B70(0);
    v14 = sub_26AEA3B70(3);
    v42 = buf;
    v43 = v13;
    v44 = v14;
    sub_26AEA3BC4(2, &v42);
    sub_26AEA3BC4(3, &v42);
    v45 = sub_26AEDF74C;
    v46 = v30;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF780;
    v46 = v31;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF860;
    v46 = v32;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF898;
    v46 = v33;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF8CC;
    v46 = v34;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF960;
    v46 = v35;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF998;
    v46 = v36;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDF9CC;
    v46 = v37;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    v45 = sub_26AEDFA60;
    v46 = v38;
    sub_26AEA3BD8(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_26AE88000, v40, v41, "%s.%s: Timeout exceeded while waiting for scan to finish. End state: %s", buf, 0x20u);
    sub_26AEA3C24(v13);
    sub_26AEA3C24(v14);
    sub_26B07A400();
  }

  else
  {
  }

  v10 = v15[18];
  v11 = v15[16];
  v9 = v15[17];
  v3 = MEMORY[0x277D82BD8](v40);
  (*(v9 + 8))(v10, v11, v3);
  type metadata accessor for SUUIStatefulUIState();
  v15[6] = v22;
  v15[7] = 1;
  sub_26AEB6FE0();
  if (sub_26B079D30())
  {
    v7 = v22;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v4 = v15[8];
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 9) = 0;

  v5 = *(v15[2] + 8);

  return v5();
}

uint64_t sub_26AEDB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v35 = &unk_26B089418;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v38 = &v12 - v37;
  sub_26AED6580(v4, &v12 - v37);
  v39 = sub_26B07A160();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  if ((*(v40 + 48))(v38, 1) == 1)
  {
    sub_26AEA08A4(v38);
    v30 = 0;
  }

  else
  {
    v29 = sub_26B07A150();
    (*(v40 + 8))(v38, v39);
    v30 = v29;
  }

  v26 = v30 | 0x3100;
  v28 = *(v32 + 16);
  v27 = *(v32 + 24);
  swift_unknownObjectRetain();
  if (v28)
  {
    v24 = v28;
    v25 = v27;
    v18 = v27;
    v19 = v28;
    swift_getObjectType();
    v20 = sub_26B07A0C0();
    v21 = v5;
    swift_unknownObjectRelease();
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v14 = v23;
  v13 = v22;
  v12 = *v34;

  v6 = swift_allocObject();
  v7 = v31;
  v8 = v32;
  v9 = v13;
  v10 = v14;
  v15 = v6;
  v16 = *(v33 + 16);
  v45[4] = v16;
  v6[2] = v16;
  v6[3] = v7;
  v6[4] = v8;
  v17 = 0;
  if (v9 != 0 || v10 != 0)
  {
    v45[0] = 0;
    v45[1] = 0;
    v45[2] = v13;
    v45[3] = v14;
    v17 = v45;
  }

  v42 = 1;
  v43 = v17;
  v44 = v12;
  swift_task_create();
}

uint64_t sub_26AEDB368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a1;
  v7[2] = v7;
  v7[3] = 0;
  v7[4] = 0;
  v7[3] = a4;
  v7[4] = a5;
  v8 = swift_task_alloc();
  *(v10 + 48) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_26AEDB450;

  return sub_26AEDB5E0(a5, a6, a7);
}

uint64_t sub_26AEDB450(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;

  return MEMORY[0x2822009F8](sub_26AEDB570, 0, 0);
}

uint64_t sub_26AEDB570()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  *(v0 + 16) = v0;
  *v3 = v2;
  *(v3 + 8) = v1 & 1;
  *(v3 + 9) = 0;
  return (*(*(v0 + 16) + 8))();
}

uint64_t sub_26AEDB5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[5] = a1;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_26AEDB648, 0, 0);
}

uint64_t sub_26AEDB648()
{
  v0[4] = v0;
  type metadata accessor for SUUIStatefulUIState();

  v14 = ReactiveUIManager.currentState.getter();

  v0[7] = v14;
  v0[8] = 1;
  sub_26AEB6FE0();
  if (sub_26B079D30())
  {

    v12 = ReactiveUIManager.currentState.getter();

    v1 = *(v13[4] + 8);

    return v1(v12, 0);
  }

  else
  {
    v8 = v13[12];
    v6 = v13[11];
    v5 = v13[10];
    v7 = v13[9];
    v9 = sub_26B079D00();
    v10 = v3;
    v13[13] = v3;

    v11 = swift_task_alloc();
    v13[14] = v11;
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v8;
    v4 = swift_task_alloc();
    v13[15] = v4;
    *v4 = v13[4];
    v4[1] = sub_26AEDB8E8;

    return MEMORY[0x2822007B8](v13 + 2, 0, 0, v9, v10, sub_26AEDDB4C, v11, &unk_287B92C18);
  }
}

uint64_t sub_26AEDB8E8()
{
  *(*v0 + 32) = *v0;

  return MEMORY[0x2822009F8](sub_26AEDBA60, 0, 0);
}

uint64_t sub_26AEDBCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a1;
  v61 = a2;
  v23 = a3;
  v31 = a4;
  v26 = a5;
  v41 = 0;
  v34 = sub_26AEDE224;
  v36 = sub_26AEDD410;
  v42 = sub_26AEDD48C;
  v60 = sub_26AEDE5A4;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v75 = a4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D0);
  v55 = *(v59 - 8);
  v56 = v59 - 8;
  v52 = v55;
  v53 = *(v55 + 64);
  v15 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v58 = &v15 - v15;
  v27 = *(v5 - 8);
  v28 = v5 - 8;
  v24 = v27;
  v25 = *(v27 + 64);
  v16 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v15);
  v30 = &v15 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D8);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v17 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v39 = &v15 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2E0);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v18 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v45 = &v15 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2E8);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v19 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v49 = &v15 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2F0);
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v20 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v65 = &v15 - v20;
  v74 = v6;
  v73 = v7;
  v72 = v8;
  v21 = *(v7 + 128);

  v22 = *(v21 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_stateChangedPublisher);

  v71 = v22;
  (*(v27 + 16))(v30, v23, v31);
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v54 = 7;
  v9 = swift_allocObject();
  v10 = v26;
  v11 = v27;
  v12 = v29;
  v13 = v30;
  v32 = v9;
  *(v9 + 16) = v31;
  *(v9 + 24) = v10;
  (*(v11 + 32))(v9 + v12, v13);
  v35 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0B0);
  sub_26AEDE278();
  sub_26B078900();
  sub_26AEDE300(v34);

  sub_26AEDE334();
  sub_26B078930();
  (*(v37 + 8))(v39, v40);
  sub_26AEDE3BC();
  sub_26B078910();
  (*(v43 + 8))(v45, v46);
  sub_26AEDE444();
  sub_26B078920();
  (*(v47 + 8))(v49, v50);
  (*(v55 + 16))(v58, v51, v59);
  v57 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v62 = swift_allocObject();
  (*(v55 + 32))(v62 + v57, v58, v59);
  sub_26AEDE628();
  v69 = sub_26B078950();

  (*(v63 + 8))(v65, v66);
  v67 = &v70;
  v68 = sub_26AFA78E4();
  sub_26B0788A0();
  v68();
}

uint64_t sub_26AEDC56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v65 = a2;
  v73 = a3;
  v68 = a4;
  v75 = sub_26AEDE7FC;
  v77 = sub_26AEDE77C;
  v79 = sub_26AEDE948;
  v81 = sub_26AEDE994;
  v83 = sub_26AEDD3D8;
  v84 = sub_26AEDEA94;
  v89 = sub_26AEDE844;
  v93 = sub_26AEDEB94;
  v95 = sub_26AEDE8CC;
  v97 = sub_26AEDE900;
  v99 = sub_26AEDE9E0;
  v101 = sub_26AEDEA18;
  v103 = sub_26AEDEA4C;
  v105 = sub_26AEDEAE0;
  v107 = sub_26AEDEB18;
  v109 = sub_26AEDEB4C;
  v112 = sub_26AEDEBE0;
  v124 = 0;
  v123 = 0;
  v57 = 0;
  v125 = a3;
  v69 = *(a3 - 8);
  v70 = a3 - 8;
  v66 = v69;
  v67 = *(v69 + 64);
  v58 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v72 = v49 - v58;
  v60 = sub_26B078580();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v64 = v49 - v63;
  v74 = *v4;
  v124 = v74;
  v123 = v5;
  sub_26B078550();
  (*(v69 + 16))(v72, v65, v73);
  v6 = *(v66 + 80);
  v90 = 32;
  v71 = (v6 + 32) & ~v6;
  v91 = 7;
  v7 = swift_allocObject();
  v8 = v68;
  v9 = v69;
  v10 = v71;
  v11 = v72;
  v78 = v7;
  *(v7 + 16) = v73;
  *(v7 + 24) = v8;
  (*(v9 + 32))(v7 + v10, v11);
  v76 = swift_allocObject();
  *(v76 + 16) = v74;

  v12 = swift_allocObject();
  v13 = v76;
  v92 = v12;
  *(v12 + 16) = v75;
  *(v12 + 24) = v13;

  v116 = sub_26B078570();
  v117 = sub_26B07A2B0();
  v87 = 17;
  v96 = swift_allocObject();
  v86 = 32;
  *(v96 + 16) = 32;
  v98 = swift_allocObject();
  v88 = 8;
  *(v98 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v78;
  v80 = v14;
  *(v14 + 16) = v77;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v80;
  v82 = v16;
  *(v16 + 16) = v79;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v82;
  v100 = v18;
  *(v18 + 16) = v81;
  *(v18 + 24) = v19;
  v102 = swift_allocObject();
  *(v102 + 16) = v86;
  v104 = swift_allocObject();
  *(v104 + 16) = v88;
  v20 = swift_allocObject();
  v85 = v20;
  *(v20 + 16) = v83;
  *(v20 + 24) = 0;
  v21 = swift_allocObject();
  v22 = v85;
  v106 = v21;
  *(v21 + 16) = v84;
  *(v21 + 24) = v22;
  v108 = swift_allocObject();
  *(v108 + 16) = v86;
  v110 = swift_allocObject();
  *(v110 + 16) = v88;
  v23 = swift_allocObject();
  v24 = v92;
  v94 = v23;
  *(v23 + 16) = v89;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v94;
  v113 = v25;
  *(v25 + 16) = v93;
  *(v25 + 24) = v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v111 = sub_26B07A760();
  v114 = v27;

  v28 = v96;
  v29 = v114;
  *v114 = v95;
  v29[1] = v28;

  v30 = v98;
  v31 = v114;
  v114[2] = v97;
  v31[3] = v30;

  v32 = v100;
  v33 = v114;
  v114[4] = v99;
  v33[5] = v32;

  v34 = v102;
  v35 = v114;
  v114[6] = v101;
  v35[7] = v34;

  v36 = v104;
  v37 = v114;
  v114[8] = v103;
  v37[9] = v36;

  v38 = v106;
  v39 = v114;
  v114[10] = v105;
  v39[11] = v38;

  v40 = v108;
  v41 = v114;
  v114[12] = v107;
  v41[13] = v40;

  v42 = v110;
  v43 = v114;
  v114[14] = v109;
  v43[15] = v42;

  v44 = v113;
  v45 = v114;
  v114[16] = v112;
  v45[17] = v44;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v116, v117))
  {
    v46 = v57;
    v50 = sub_26B07A420();
    v49[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v51 = sub_26AEA3B70(0);
    v52 = sub_26AEA3B70(3);
    v53 = &v122;
    v122 = v50;
    v54 = &v121;
    v121 = v51;
    v55 = &v120;
    v120 = v52;
    sub_26AEA3BC4(2, &v122);
    sub_26AEA3BC4(3, v53);
    v118 = v95;
    v119 = v96;
    sub_26AEA3BD8(&v118, v53, v54, v55);
    v56 = v46;
    if (v46)
    {

      __break(1u);
    }

    else
    {
      v118 = v97;
      v119 = v98;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[7] = 0;
      v118 = v99;
      v119 = v100;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[6] = 0;
      v118 = v101;
      v119 = v102;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[5] = 0;
      v118 = v103;
      v119 = v104;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[4] = 0;
      v118 = v105;
      v119 = v106;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[3] = 0;
      v118 = v107;
      v119 = v108;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[2] = 0;
      v118 = v109;
      v119 = v110;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      v49[1] = 0;
      v118 = v112;
      v119 = v113;
      sub_26AEA3BD8(&v118, &v122, &v121, &v120);
      _os_log_impl(&dword_26AE88000, v116, v117, "%s.%s: State observation acknowledged state change: %s", v50, 0x20u);
      sub_26AEA3C24(v51);
      sub_26AEA3C24(v52);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v47 = MEMORY[0x277D82BD8](v116);
  return (*(v61 + 8))(v64, v60, v47);
}

uint64_t sub_26AEDD410()
{
  type metadata accessor for SUUIStatefulUIState();
  sub_26AEB6FE0();
  return sub_26B079D30() & 1;
}

void *sub_26AEDD48C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t DeepLinkCommand.description.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_26B079E60();
}

uint64_t sub_26AEDD5C0(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDD6D4;

  return v6(a1);
}

uint64_t sub_26AEDD6D4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t dispatch thunk of DeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_26AEDDCB0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26AEDDCB0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDDDD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 9))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_26AEDDEE8(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

unint64_t sub_26AEDE278()
{
  v2 = qword_2803DD100;
  if (!qword_2803DD100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD100);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEDE300(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26AEDE334()
{
  v2 = qword_2803DC2F8;
  if (!qword_2803DC2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEDE3BC()
{
  v2 = qword_2803DC300;
  if (!qword_2803DC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEDE444()
{
  v2 = qword_2803DC308;
  if (!qword_2803DC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEDE4CC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D0) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AEDE5A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2D0);

  return sub_26AEDD4BC();
}

unint64_t sub_26AEDE628()
{
  v2 = qword_2803DC310;
  if (!qword_2803DC310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEDE844()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState();
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26AEDEBEC()
{
  v4 = *(v0 + 32);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AEDECE0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v10 = v1[4];
  v11 = v1[5];
  v9 = (*(*(v10 - 8) + 80) + 56) & ~*(*(v10 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDEE10;

  return sub_26AED8E80(a1, v6, v7, v8, v1 + v9, v10, v11);
}

uint64_t sub_26AEDEE10()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDEF38()
{
  v4 = *(v0 + 32);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_26AEDF048(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v10 = v1[4];
  v11 = v1[5];
  v8 = (*(*(v10 - 8) + 80) + 48) & ~*(*(v10 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v9 = *(v1 + ((v8 + *(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDF1A4;

  return sub_26AEDB368(a1, v6, v7, v1 + v8, v9, v10, v11);
}

uint64_t sub_26AEDF1A4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDF314(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEDF408;

  return sub_26AEDD5C0(a1, v6);
}

uint64_t sub_26AEDF408()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEDF6C4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState();
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t DefaultDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a2;
  v2[13] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_26B078580();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x2822009F8](sub_26AEDFBCC, 0, 0);
}

uint64_t sub_26AEDFBCC()
{
  v31 = v0;
  *(v0 + 16) = v0;
  sub_26B078550();
  oslog = sub_26B078570();
  v25 = sub_26B07A2B0();
  v17 = swift_allocObject();
  *(v17 + 16) = 32;
  v18 = swift_allocObject();
  *(v18 + 16) = 8;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26AEE2E10;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26AEE32A0;
  *(v15 + 24) = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AEE32EC;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AEE2E14;
  *(v16 + 24) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AEE33EC;
  *(v22 + 24) = v16;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v23 = v1;

  *v23 = sub_26AEE3224;
  v23[1] = v17;

  v23[2] = sub_26AEE3258;
  v23[3] = v18;

  v23[4] = sub_26AEE3338;
  v23[5] = v19;

  v23[6] = sub_26AEE3370;
  v23[7] = v20;

  v23[8] = sub_26AEE33A4;
  v23[9] = v21;

  v23[10] = sub_26AEE3438;
  v23[11] = v22;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v25))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(2);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    sub_26AEA3BC4(2, &v26);
    sub_26AEA3BC4(2, &v26);
    v29 = sub_26AEE3224;
    v30 = v17;
    sub_26AEA3BD8(&v29, &v26, &v27, &v28);
    v29 = sub_26AEE3258;
    v30 = v18;
    sub_26AEA3BD8(&v29, &v26, &v27, &v28);
    v29 = sub_26AEE3338;
    v30 = v19;
    sub_26AEA3BD8(&v29, &v26, &v27, &v28);
    v29 = sub_26AEE3370;
    v30 = v20;
    sub_26AEA3BD8(&v29, &v26, &v27, &v28);
    v29 = sub_26AEE33A4;
    v30 = v21;
    sub_26AEA3BD8(&v29, &v26, &v27, &v28);
    v29 = sub_26AEE3438;
    v30 = v22;
    sub_26AEA3BD8(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_26AE88000, oslog, v25, "%s.%s: executed", buf, 0x16u);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  v13[23] = 0;
  v8 = v13[21];
  v9 = v13[15];
  v7 = v13[16];
  v2 = MEMORY[0x277D82BD8](oslog);
  v3 = *(v7 + 8);
  v13[24] = v3;
  v13[25] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9, v2);
  v4 = swift_task_alloc();
  v13[26] = v4;
  *v4 = v13[2];
  v4[1] = sub_26AEE0450;
  v5 = v13[14];

  return sub_26AED72E4(v5, &type metadata for DefaultDeepLinkCommand, &protocol witness table for DefaultDeepLinkCommand);
}

uint64_t sub_26AEE0450(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;

  return MEMORY[0x2822009F8](sub_26AEE0578, 0, 0);
}

uint64_t sub_26AEE0578()
{
  v152 = v0;
  v1 = *(v0 + 224);
  *(v0 + 16) = v0;
  if (v1)
  {
    sub_26B078550();
    v53 = sub_26B078570();
    v54 = sub_26B07A2C0();
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_26AEE3444;
    *(v43 + 24) = 0;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_26AEE34F0;
    *(v44 + 24) = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_26AEE353C;
    *(v48 + 24) = v44;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_26AEE2F40;
    *(v45 + 24) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_26AEE363C;
    *(v51 + 24) = v45;
    sub_26B07A760();
    v52 = v11;

    *v52 = sub_26AEE3474;
    v52[1] = v46;

    v52[2] = sub_26AEE34A8;
    v52[3] = v47;

    v52[4] = sub_26AEE3588;
    v52[5] = v48;

    v52[6] = sub_26AEE35C0;
    v52[7] = v49;

    v52[8] = sub_26AEE35F4;
    v52[9] = v50;

    v52[10] = sub_26AEE3688;
    v52[11] = v51;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v53, v54))
    {
      v12 = v119[23];
      v40 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v41 = sub_26AEA3B70(0);
      v42 = sub_26AEA3B70(2);
      v125 = v40;
      v126 = v41;
      v127 = v42;
      sub_26AEA3BC4(2, &v125);
      sub_26AEA3BC4(2, &v125);
      v128 = sub_26AEE3474;
      v129 = v46;
      sub_26AEA3BD8(&v128, &v125, &v126, &v127);
      if (v12)
      {
      }

      v128 = sub_26AEE34A8;
      v129 = v47;
      sub_26AEA3BD8(&v128, &v125, &v126, &v127);
      v128 = sub_26AEE3588;
      v129 = v48;
      sub_26AEA3BD8(&v128, &v125, &v126, &v127);
      v128 = sub_26AEE35C0;
      v129 = v49;
      sub_26AEA3BD8(&v128, &v125, &v126, &v127);
      v128 = sub_26AEE35F4;
      v129 = v50;
      sub_26AEA3BD8(&v128, &v125, &v126, &v127);
      v128 = sub_26AEE3688;
      v129 = v51;
      sub_26AEA3BD8(&v128, &v125, &v126, &v127);
      _os_log_impl(&dword_26AE88000, v53, v54, "%s.%s: timed out waiting for state change", v40, 0x16u);
      sub_26AEA3C24(v41);
      sub_26AEA3C24(v42);
      sub_26B07A400();

      v39 = 0;
    }

    else
    {

      v39 = v119[23];
    }

    v38 = v119[24];
    v36 = v119[18];
    v37 = v119[15];
    v13 = MEMORY[0x277D82BD8](v53);
    v38(v36, v37, v13);
    v55 = v39;
  }

  else
  {
    v118 = v119[27];
    v119[4] = v118;
    type metadata accessor for SUUIStatefulUIState();
    v119[5] = v118;
    v119[6] = 4;
    sub_26AEB6FE0();
    if (sub_26B079D40())
    {

      updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

      if (updated)
      {

        v116 = ReactiveUIManager.preferredDescriptor.getter();

        if (v116)
        {
          KeyPath = swift_getKeyPath();
          ReactiveDescriptor.subscript.getter(KeyPath, (v119 + 12));
          v113 = v119[12];

          v114 = v113;
          v115 = 0;
        }

        else
        {
          v114 = 0;
          v115 = 1;
        }

        v146 = v114;
        v147 = v115 & 1;
        v148 = 1;
        v149 = 0;
        if ((v115 & 1) == 0)
        {
          v150 = v114;
          v151 = v115 & 1;
          v119[10] = v114;
          v119[11] = v148;
          type metadata accessor for SUUIAudienceType();
          sub_26AEE3F54();
          v2 = sub_26B079D70();
          if (v2)
          {
            v111 = v119[14];
            v110 = v119[13];

            *v110 = 2;
            v110[1] = v111;
            goto LABEL_47;
          }
        }

        v109 = v119[23];
      }

      else
      {

        v108 = ReactiveUIManager.alternateDescriptor.getter();

        if (v108)
        {
          v104 = swift_getKeyPath();
          ReactiveDescriptor.subscript.getter(v104, (v119 + 9));
          v105 = v119[9];

          v106 = v105;
          v107 = 0;
        }

        else
        {
          v106 = 0;
          v107 = 1;
        }

        v135 = v106;
        v136 = v107 & 1;
        v137 = 1;
        v138 = 0;
        if ((v107 & 1) == 0)
        {
          v144 = v106;
          v145 = v107 & 1;
          v119[7] = v106;
          v119[8] = v137;
          type metadata accessor for SUUIAudienceType();
          sub_26AEE3F54();
          v3 = sub_26B079D70();
          if (v3)
          {
            v103 = v119[14];
            v102 = v119[13];

            *v102 = 2;
            v102[1] = v103;
            goto LABEL_47;
          }
        }

        sub_26B078550();
        oslog = sub_26B078570();
        v101 = sub_26B07A2B0();
        v93 = swift_allocObject();
        *(v93 + 16) = 32;
        v94 = swift_allocObject();
        *(v94 + 16) = 8;
        v90 = swift_allocObject();
        *(v90 + 16) = sub_26AEE3D04;
        *(v90 + 24) = 0;
        v91 = swift_allocObject();
        *(v91 + 16) = sub_26AEE3DB0;
        *(v91 + 24) = v90;
        v95 = swift_allocObject();
        *(v95 + 16) = sub_26AEE3DFC;
        *(v95 + 24) = v91;
        v96 = swift_allocObject();
        *(v96 + 16) = 32;
        v97 = swift_allocObject();
        *(v97 + 16) = 8;
        v92 = swift_allocObject();
        *(v92 + 16) = sub_26AEE2EB8;
        *(v92 + 24) = 0;
        v98 = swift_allocObject();
        *(v98 + 16) = sub_26AEE3EFC;
        *(v98 + 24) = v92;
        sub_26B07A760();
        v99 = v4;

        *v99 = sub_26AEE3D34;
        v99[1] = v93;

        v99[2] = sub_26AEE3D68;
        v99[3] = v94;

        v99[4] = sub_26AEE3E48;
        v99[5] = v95;

        v99[6] = sub_26AEE3E80;
        v99[7] = v96;

        v99[8] = sub_26AEE3EB4;
        v99[9] = v97;

        v99[10] = sub_26AEE3F48;
        v99[11] = v98;
        sub_26AEA3B2C();

        if (os_log_type_enabled(oslog, v101))
        {
          v5 = v119[23];
          buf = sub_26B07A420();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
          v88 = sub_26AEA3B70(0);
          v89 = sub_26AEA3B70(2);
          v139 = buf;
          v140 = v88;
          v141 = v89;
          sub_26AEA3BC4(2, &v139);
          sub_26AEA3BC4(2, &v139);
          v142 = sub_26AEE3D34;
          v143 = v93;
          sub_26AEA3BD8(&v142, &v139, &v140, &v141);
          if (v5)
          {
          }

          v142 = sub_26AEE3D68;
          v143 = v94;
          sub_26AEA3BD8(&v142, &v139, &v140, &v141);
          v142 = sub_26AEE3E48;
          v143 = v95;
          sub_26AEA3BD8(&v142, &v139, &v140, &v141);
          v142 = sub_26AEE3E80;
          v143 = v96;
          sub_26AEA3BD8(&v142, &v139, &v140, &v141);
          v142 = sub_26AEE3EB4;
          v143 = v97;
          sub_26AEA3BD8(&v142, &v139, &v140, &v141);
          v142 = sub_26AEE3F48;
          v143 = v98;
          sub_26AEA3BD8(&v142, &v139, &v140, &v141);
          _os_log_impl(&dword_26AE88000, oslog, v101, "%s.%s: conditions unmet to navigate to also Available view.", buf, 0x16u);
          sub_26AEA3C24(v88);
          sub_26AEA3C24(v89);
          sub_26B07A400();

          v86 = 0;
        }

        else
        {

          v86 = v119[23];
        }

        v85 = v119[24];
        v83 = v119[20];
        v84 = v119[15];
        v7 = MEMORY[0x277D82BD8](oslog);
        v85(v83, v84, v7);
        v109 = v86;
      }

      v82 = v109;
    }

    else
    {
      v63 = v119[27];
      sub_26B078550();
      v64 = swift_allocObject();
      *(v64 + 16) = v63;

      v68 = swift_allocObject();
      *(v68 + 16) = sub_26AEE3914;
      *(v68 + 24) = v64;

      log = sub_26B078570();
      v81 = sub_26B07A2B0();
      v70 = swift_allocObject();
      *(v70 + 16) = 32;
      v71 = swift_allocObject();
      *(v71 + 16) = 8;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_26AEE38E4;
      *(v65 + 24) = 0;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_26AEE3A60;
      *(v66 + 24) = v65;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_26AEE3AAC;
      *(v72 + 24) = v66;
      v73 = swift_allocObject();
      *(v73 + 16) = 32;
      v74 = swift_allocObject();
      *(v74 + 16) = 8;
      v67 = swift_allocObject();
      *(v67 + 16) = sub_26AEE2EF8;
      *(v67 + 24) = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_26AEE3BAC;
      *(v75 + 24) = v67;
      v76 = swift_allocObject();
      *(v76 + 16) = 32;
      v77 = swift_allocObject();
      *(v77 + 16) = 8;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_26AEE395C;
      *(v69 + 24) = v68;
      v78 = swift_allocObject();
      *(v78 + 16) = sub_26AEE3CAC;
      *(v78 + 24) = v69;
      sub_26B07A760();
      v79 = v8;

      *v79 = sub_26AEE39E4;
      v79[1] = v70;

      v79[2] = sub_26AEE3A18;
      v79[3] = v71;

      v79[4] = sub_26AEE3AF8;
      v79[5] = v72;

      v79[6] = sub_26AEE3B30;
      v79[7] = v73;

      v79[8] = sub_26AEE3B64;
      v79[9] = v74;

      v79[10] = sub_26AEE3BF8;
      v79[11] = v75;

      v79[12] = sub_26AEE3C30;
      v79[13] = v76;

      v79[14] = sub_26AEE3C64;
      v79[15] = v77;

      v79[16] = sub_26AEE3CF8;
      v79[17] = v78;
      sub_26AEA3B2C();

      if (os_log_type_enabled(log, v81))
      {
        v9 = v119[23];
        v60 = sub_26B07A420();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v61 = sub_26AEA3B70(0);
        v62 = sub_26AEA3B70(3);
        v130 = v60;
        v131 = v61;
        v132 = v62;
        sub_26AEA3BC4(2, &v130);
        sub_26AEA3BC4(3, &v130);
        v133 = sub_26AEE39E4;
        v134 = v70;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        if (v9)
        {
        }

        v133 = sub_26AEE3A18;
        v134 = v71;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3AF8;
        v134 = v72;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3B30;
        v134 = v73;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3B64;
        v134 = v74;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3BF8;
        v134 = v75;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3C30;
        v134 = v76;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3C64;
        v134 = v77;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        v133 = sub_26AEE3CF8;
        v134 = v78;
        sub_26AEA3BD8(&v133, &v130, &v131, &v132);
        _os_log_impl(&dword_26AE88000, log, v81, "%s.%s: State changed to %s, but not enough to navigate to also Available view.", v60, 0x20u);
        sub_26AEA3C24(v61);
        sub_26AEA3C24(v62);
        sub_26B07A400();

        v59 = 0;
      }

      else
      {

        v59 = v119[23];
      }

      v58 = v119[24];
      v56 = v119[19];
      v57 = v119[15];
      v10 = MEMORY[0x277D82BD8](log);
      v58(v56, v57, v10);
      v82 = v59;
    }

    v55 = v82;
  }

  sub_26B078550();
  v34 = sub_26B078570();
  v35 = sub_26B07A2B0();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEE3694;
  *(v24 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AEE3740;
  *(v25 + 24) = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEE378C;
  *(v29 + 24) = v25;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEE2F80;
  *(v26 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26AEE388C;
  *(v32 + 24) = v26;
  sub_26B07A760();
  v33 = v14;

  *v33 = sub_26AEE36C4;
  v33[1] = v27;

  v33[2] = sub_26AEE36F8;
  v33[3] = v28;

  v33[4] = sub_26AEE37D8;
  v33[5] = v29;

  v33[6] = sub_26AEE3810;
  v33[7] = v30;

  v33[8] = sub_26AEE3844;
  v33[9] = v31;

  v33[10] = sub_26AEE38D8;
  v33[11] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v34, v35))
  {
    v21 = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v22 = sub_26AEA3B70(0);
    v23 = sub_26AEA3B70(2);
    v120 = v21;
    v121 = v22;
    v122 = v23;
    sub_26AEA3BC4(2, &v120);
    sub_26AEA3BC4(2, &v120);
    v123 = sub_26AEE36C4;
    v124 = v27;
    sub_26AEA3BD8(&v123, &v120, &v121, &v122);
    if (v55)
    {
    }

    v123 = sub_26AEE36F8;
    v124 = v28;
    sub_26AEA3BD8(&v123, &v120, &v121, &v122);
    v123 = sub_26AEE37D8;
    v124 = v29;
    sub_26AEA3BD8(&v123, &v120, &v121, &v122);
    v123 = sub_26AEE3810;
    v124 = v30;
    sub_26AEA3BD8(&v123, &v120, &v121, &v122);
    v123 = sub_26AEE3844;
    v124 = v31;
    sub_26AEA3BD8(&v123, &v120, &v121, &v122);
    v123 = sub_26AEE38D8;
    v124 = v32;
    sub_26AEA3BD8(&v123, &v120, &v121, &v122);
    _os_log_impl(&dword_26AE88000, v34, v35, "%s.%s: no extra steps needs to be navigate to.", v21, 0x16u);
    sub_26AEA3C24(v22);
    sub_26AEA3C24(v23);
    sub_26B07A400();
  }

  else
  {
  }

  v19 = v119[24];
  v17 = v119[17];
  v18 = v119[15];
  v20 = v119[13];
  v15 = MEMORY[0x277D82BD8](v34);
  v19(v17, v18, v15);
  *v20 = 0x7FFFFFEFCLL;
  v20[1] = 0;
LABEL_47:

  v16 = *(v119[2] + 8);

  return v16();
}

uint64_t sub_26AEE2E44@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 audienceType];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AEE2FB0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEE306C;

  return DefaultDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AEE306C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_26AEE395C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState();
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

unint64_t sub_26AEE3F54()
{
  v2 = qword_2803DC330;
  if (!qword_2803DC330)
  {
    type metadata accessor for SUUIAudienceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC330);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DefaultDeepLinkCommand(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultDeepLinkCommand(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26AEE4324()
{
  if (qword_2803DB3A0 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_26AEE4380(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = a1;
  v38 = a2;
  sub_26AEE4CC8();
  v2 = sub_26AEE4C14();
  v23 = *v2;
  v24 = v2[1];
  sub_26B078640();
  v25 = sub_26AEE4D48(v23, v24, 1);
  if (!v25)
  {
    goto LABEL_9;
  }

  v34 = v25;
  sub_26B078640();
  v18 = sub_26B079DF0();

  type metadata accessor for MatchingOptions();
  sub_26B07A760();
  sub_26AE9A5E4();
  sub_26B07A4C0();
  v19 = sub_26B079E80();
  v3 = MEMORY[0x26D66D170](a1, a2);
  v20 = v3;
  if (v3 >> 14 < v19 >> 14)
  {
    sub_26B07A650();
    __break(1u);
  }

  v31 = v19;
  v32 = v20;
  sub_26B078640();
  v29 = a1;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
  sub_26AEE6118();
  sub_26AE95974();
  v27 = sub_26B07A3E0();
  v28 = v4;
  v17 = [v25 firstMatchInString:v18 options:v33 range:{v27, v4}];
  MEMORY[0x277D82BD8](v18);
  v26 = v17;
  sub_26AEE61A0(&v26);
  if (!v17)
  {
    MEMORY[0x277D82BD8](v25);
LABEL_9:
    v9 = sub_26AEE4DD8(a1, a2);
    v14 = v5;
    v35 = v9;
    v36 = v5;
    v6 = sub_26AEE4A54();
    v10 = *v6;
    v13 = v6[1];
    sub_26B078640();
    v7 = sub_26AEE4B34();
    v11 = *v7;
    v12 = v7[1];
    sub_26B078640();
    v15 = sub_26AEE6068(v9, v14, v10, v13, v11, v12);

    return v15;
  }

  sub_26B078640();
  MEMORY[0x277D82BD8](v25);
  return a1;
}

uint64_t sub_26AEE4778()
{
  result = sub_26B079D00();
  qword_2803DC338 = result;
  qword_2803DC340 = v1;
  return result;
}

uint64_t *sub_26AEE47BC()
{
  if (qword_2803DB378 != -1)
  {
    swift_once();
  }

  return &qword_2803DC338;
}

uint64_t sub_26AEE481C()
{
  v1 = *sub_26AEE47BC();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4858()
{
  v9 = sub_26B07A760();
  v8 = v0;
  *v0 = sub_26B079D00();
  v8[1] = v1;
  v8[2] = sub_26B079D00();
  v8[3] = v2;
  v8[4] = sub_26B079D00();
  v8[5] = v3;
  v8[6] = sub_26B079D00();
  v8[7] = v4;
  v5 = sub_26B079D00();
  result = v9;
  v8[8] = v5;
  v8[9] = v7;
  sub_26AEA3B2C();
  qword_2803DC348 = v9;
  return result;
}

uint64_t *sub_26AEE4980()
{
  if (qword_2803DB380 != -1)
  {
    swift_once();
  }

  return &qword_2803DC348;
}

uint64_t sub_26AEE49E0()
{
  v1 = *sub_26AEE4980();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4A10()
{
  result = sub_26B079D00();
  qword_2803DC350 = result;
  qword_2803DC358 = v1;
  return result;
}

uint64_t *sub_26AEE4A54()
{
  if (qword_2803DB388 != -1)
  {
    swift_once();
  }

  return &qword_2803DC350;
}

uint64_t sub_26AEE4AB4()
{
  v1 = *sub_26AEE4A54();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4AF0()
{
  result = sub_26B079D00();
  qword_2803DC360 = result;
  qword_2803DC368 = v1;
  return result;
}

uint64_t *sub_26AEE4B34()
{
  if (qword_2803DB390 != -1)
  {
    swift_once();
  }

  return &qword_2803DC360;
}

uint64_t sub_26AEE4B94()
{
  v1 = *sub_26AEE4B34();
  sub_26B078640();
  return v1;
}

uint64_t sub_26AEE4BD0()
{
  result = sub_26B079D00();
  qword_2803DC370 = result;
  qword_2803DC378 = v1;
  return result;
}

uint64_t *sub_26AEE4C14()
{
  if (qword_2803DB398 != -1)
  {
    swift_once();
  }

  return &qword_2803DC370;
}

uint64_t sub_26AEE4C74()
{
  v1 = *sub_26AEE4C14();
  sub_26B078640();
  return v1;
}

unint64_t sub_26AEE4CC8()
{
  v2 = qword_2803DC380;
  if (!qword_2803DC380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC380);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26AEE4D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_26AEE8150(a1, a2, a3);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_26AEE4DD8(uint64_t a1, uint64_t a2)
{
  v227 = a1;
  v228 = a2;
  v219 = "Fatal error";
  v220 = "Range requires lowerBound <= upperBound";
  v221 = "Swift/Range.swift";
  v295 = 0;
  v296 = 0;
  v293 = 0;
  v294 = 0;
  v291 = 0;
  v292 = 0;
  v289 = 0;
  v287 = 0;
  v288 = 0;
  v286 = 0;
  v284 = 0;
  v285 = 0;
  v279 = 0;
  v280 = 0;
  v277 = 0;
  v278 = 0;
  v264 = 0;
  v265 = 0;
  v259 = 0;
  v260 = 0;
  v257 = 0;
  v252 = 0;
  v247 = 0;
  v243 = 0;
  v244 = 0;
  v230 = 0;
  v222 = sub_26B077F60();
  v223 = *(v222 - 8);
  v224 = v222 - 8;
  v225 = (*(v223 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227);
  v226 = &v72 - v225;
  v295 = v2;
  v296 = v3;
  v229 = 1;
  v293 = sub_26B079D00();
  v294 = v4;
  sub_26B078640();
  v291 = v227;
  v292 = v228;
  v235 = sub_26AEE4CC8();
  v236 = sub_26B079D00();
  v237 = v5;
  v231 = type metadata accessor for Options();
  v232 = 1;
  v6 = sub_26B07A760();
  *v7 = v232;
  sub_26AEA3B2C();
  v233 = v6;
  v234 = sub_26AE9A714();
  sub_26B07A4C0();
  v8 = sub_26AEE4D48(v236, v237, v290);
  v238 = 0;
  v239 = v8;
  v240 = 0;
  v217 = v8;
  v218 = 0;
  v215 = 0;
  v216 = v8;
  if (v8)
  {
    v214 = v216;
    v207 = v216;
    v252 = v216;
    sub_26B078640();
    v208 = sub_26B079DF0();

    v209 = 0;
    type metadata accessor for MatchingOptions();
    v210 = sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v211 = v251[2];
    v212 = sub_26B079E80();
    v9 = MEMORY[0x26D66D170](v227, v228);
    v213 = v9;
    if (v9 >> 14 < v212 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    v204 = v251;
    v251[0] = v212;
    v251[1] = v213;
    sub_26B078640();
    v201 = v250;
    v250[0] = v227;
    v250[1] = v228;
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
    v203 = sub_26AEE6118();
    v205 = sub_26AE95974();
    v248 = sub_26B07A3E0();
    v249 = v10;
    v206 = [v207 firstMatchInString:v208 options:v211 range:{v248, v10}];
    *&v11 = MEMORY[0x277D82BD8](v208).n128_u64[0];
    if (v206)
    {
      v200 = v206;
      v197 = v206;
      v247 = v206;
      v245 = [v206 range];
      v246 = v12;
      v198 = sub_26B07A290();
      v199 = v13;
      if ((v14 & 1) == 0)
      {
        v195 = v198;
        v196 = v199;
        v243 = v198;
        v244 = v199;
        sub_26B079FD0();
        v185 = v15;
        v186 = sub_26B079FB0();
        v187 = v16;

        sub_26B078640();
        v293 = v186;
        v294 = v187;

        v242[2] = v227;
        v242[3] = v228;
        v192 = v242;
        v242[0] = v186;
        v242[1] = v187;
        v188 = 0;
        v189 = 1;
        v17 = sub_26B079D00();
        v191 = v241;
        v241[0] = v17;
        v241[1] = v18;
        v190 = MEMORY[0x277D837D0];
        sub_26AEE7738();
        v193 = sub_26B07A490();
        v194 = v19;
        sub_26AE9BCC0();
        sub_26AE9BCC0();
        v291 = v193;
        v292 = v194;
      }

      MEMORY[0x277D82BD8](v197);
      MEMORY[0x277D82BD8](v207);
    }

    else
    {
      MEMORY[0x277D82BD8](v207);
    }
  }

  v182 = v293;
  v183 = v294;
  sub_26B078640();
  v184 = sub_26B079F30();

  if (v184)
  {
    v20 = sub_26AEE47BC();
    v180 = *v20;
    v181 = v20[1];
    sub_26B078640();
    v293 = v180;
    v294 = v181;
  }

  v167 = v291;
  v168 = v292;
  sub_26B078640();
  v169 = sub_26AEE7774(v167, v168);
  v289 = v169;
  v287 = v167;
  v288 = v168;
  v175 = MEMORY[0x277D837D0];
  v174 = sub_26B07A760();
  v173 = v21;
  v170 = 11;
  v171 = 1;
  v22 = sub_26B079D00();
  v23 = v173;
  *v173 = v22;
  v23[1] = v24;
  v172 = 7;
  v25 = sub_26B079D00();
  v26 = v173;
  v173[2] = v25;
  v26[3] = v27;
  v28 = sub_26B079D00();
  v29 = v173;
  v173[4] = v28;
  v29[5] = v30;
  v31 = sub_26B079D00();
  v32 = v173;
  v173[6] = v31;
  v32[7] = v33;
  v34 = sub_26B079D00();
  v35 = v173;
  v173[8] = v34;
  v35[9] = v36;
  v37 = sub_26B079D00();
  v38 = v173;
  v39 = v37;
  v40 = v174;
  v173[10] = v39;
  v38[11] = v41;
  sub_26AEA3B2C();
  v176 = v40;
  v286 = v40;
  sub_26B078640();
  v283 = v176;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC398);
  v178 = sub_26AEE7DF4();
  sub_26B07A270();
  for (i = v215; ; i = v150)
  {
    v162 = i;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3A8);
    sub_26B07A620();
    v164 = v281;
    v165 = v282;
    v166 = v163;
    if (!v282)
    {
      break;
    }

    v160 = v164;
    v161 = v165;
    v42 = v162;
    v156 = v165;
    v155 = v164;
    v259 = v164;
    v260 = v165;
    sub_26B078640();
    v154 = 1;
    sub_26B07A760();
    *v43 = v154;
    sub_26AEA3B2C();
    sub_26B07A4C0();
    v44 = sub_26AEE4D48(v155, v156, v258);
    v157 = v42;
    v158 = v44;
    v159 = v42;
    if (v42)
    {
      v73 = 0;

      v152 = 0;
      v153 = v73;
    }

    else
    {
      v152 = v158;
      v153 = 0;
    }

    v150 = v153;
    v151 = v152;
    if (v152)
    {
      v149 = v151;
      v140 = v151;
      v257 = v151;
      v146 = v287;
      v145 = v288;
      sub_26B078640();
      v141 = sub_26B079DF0();
      v142 = 0;
      type metadata accessor for MatchingOptions();
      v143 = sub_26B07A760();
      sub_26AE9A5E4();
      sub_26B07A4C0();
      v144 = v256[2];
      v147 = sub_26B079E80();
      v45 = MEMORY[0x26D66D170](v146, v145);
      v148 = v45;
      if (v45 >> 14 < v147 >> 14)
      {
        sub_26B07A650();
        __break(1u);
      }

      v134 = v256;
      v256[0] = v147;
      v256[1] = v148;
      v131 = v255;
      v255[0] = v146;
      v255[1] = v145;
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
      v133 = sub_26AEE6118();
      sub_26AE95974();
      v136 = sub_26B07A3E0();
      v137 = v46;
      sub_26B079D00();
      v135 = v47;
      v138 = sub_26B079DF0();

      v253 = v136;
      v254 = v137;
      v139 = [v140 stringByReplacingMatchesInString:v141 options:v144 range:v136 withTemplate:{v137, v138}];
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v141);
      v287 = sub_26B079E00();
      v288 = v48;

      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
    }
  }

  v129 = v166;
  sub_26AEE7E7C();
  sub_26AEE7EA8(&v287, &v279);
  sub_26B078640();
  v276 = v169;
  sub_26B07A270();
  for (j = v162; ; j = v126)
  {
    v126 = j;
    sub_26B07A620();
    v127 = v274[2];
    v128 = v275;
    if (!v275)
    {
      break;
    }

    v124 = v127;
    v125 = v128;
    v123 = v128;
    v113 = v127;
    v264 = v127;
    v265 = v128;
    v111 = v279;
    v112 = v280;
    sub_26B078640();
    v120 = v263;
    v263[0] = v111;
    v263[1] = v112;
    v118 = v262;
    v262[0] = v113;
    v262[1] = v123;
    v115 = 0;
    v116 = 1;
    v49 = sub_26B079D00();
    v119 = v261;
    v261[0] = v49;
    v261[1] = v50;
    v114 = sub_26AE95974();
    v117 = MEMORY[0x277D837D0];
    sub_26AEE7738();
    v121 = sub_26B07A490();
    v122 = v51;
    sub_26AE9BCC0();
    sub_26AE9BCC0();
    v279 = v121;
    v280 = v122;
  }

  sub_26AEE7E7C();
  v107 = &v279;
  v74 = v279;
  v75 = v280;
  sub_26B078640();
  v78 = v274;
  v274[0] = v74;
  v274[1] = v75;
  v102 = 1;
  v52 = sub_26B079D00();
  v77 = v273;
  v273[0] = v52;
  v273[1] = v53;
  v54 = sub_26B079D00();
  v76 = v272;
  v272[0] = v54;
  v272[1] = v55;
  v81 = sub_26AE95974();
  v97 = MEMORY[0x277D837D0];
  v83 = 0;
  v79 = sub_26B07A490();
  v80 = v56;
  sub_26AE9BCC0();
  sub_26AE9BCC0();
  sub_26AE9BCC0();
  sub_26B078640();
  v279 = v79;
  v280 = v80;

  v82 = v271;
  v271[0] = v79;
  v271[1] = v80;
  sub_26B077F50();
  v95 = sub_26B07A470();
  v96 = v57;
  (*(v223 + 8))(v226, v222);
  sub_26AE9BCC0();
  sub_26B078640();
  v279 = v95;
  v280 = v96;

  v58 = sub_26B07A740();
  v104 = &v269;
  v269 = v58;
  v270 = v59;
  v60 = sub_26B079D00();
  v84 = v61;
  MEMORY[0x26D66D910](v60);

  v108 = &v293;
  v85 = v293;
  v86 = v294;
  sub_26B078640();
  v87 = v268;
  v268[0] = v85;
  v268[1] = v86;
  v98 = MEMORY[0x277D83838];
  v99 = MEMORY[0x277D83830];
  sub_26B07A720();
  sub_26AE9BCC0();
  v62 = sub_26B079D00();
  v88 = v63;
  MEMORY[0x26D66D910](v62);

  v267[2] = v169;
  v89 = sub_26B079D00();
  v90 = v64;
  sub_26AEE7EE8();
  v91 = sub_26B079D20();
  v92 = v65;

  v93 = v267;
  v267[0] = v91;
  v267[1] = v92;
  sub_26B07A720();
  sub_26AE9BCC0();
  v101 = 16;
  v66 = sub_26B079D00();
  v94 = v67;
  MEMORY[0x26D66D910](v66);

  v100 = v266;
  v266[0] = v95;
  v266[1] = v96;
  sub_26B07A720();
  sub_26AE9BCC0();
  v68 = sub_26B079D00();
  v103 = v69;
  MEMORY[0x26D66D910](v68);

  v106 = v269;
  v105 = v270;
  sub_26B078640();
  sub_26AEB9F6C();
  v110 = sub_26B079EB0();
  v109 = v70;
  sub_26AE9BCC0();

  sub_26AE9BCC0();

  sub_26AE9BCC0();
  sub_26AE9BCC0();
  return v110;
}

uint64_t sub_26AEE6068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_26AEE61D4(a1, a2, a5, a6);
  v9 = sub_26AEE75BC(v6, v7);

  return v9;
}

unint64_t sub_26AEE6118()
{
  v2 = qword_2803DC390;
  if (!qword_2803DC390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEE61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59[7] = a1;
  v59[8] = a2;
  v59[5] = a3;
  v59[6] = a4;
  v51 = sub_26B079D00();
  v52 = v4;
  v59[3] = v51;
  v59[4] = v4;
  v49 = sub_26B079D00();
  v50 = v5;
  v59[1] = v49;
  v59[2] = v5;
  sub_26AEE4CC8();
  sub_26B078640();
  v46 = sub_26AEE4D48(v51, v52, 1);
  if (v46)
  {
    sub_26B078640();
    v45 = sub_26B079DF0();

    type metadata accessor for MatchingOptions();
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    sub_26B079E80();
    sub_26B078640();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3B8);
    sub_26AEE7F70();
    sub_26AE95974();
    v53 = sub_26B07A3E0();
    v43 = [v46 firstMatchInString:v45 options:v54 range:{v53, v6}];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v59[0] = v44;
  sub_26AEE61A0(v59);
  if (!v44)
  {
    v41 = sub_26B079D00();
    v42 = v7;
    sub_26B078640();
    type metadata accessor for Options();
    sub_26B07A760();
    *v8 = 1;
    sub_26AEA3B2C();
    sub_26AE9A714();
    sub_26B07A4C0();
    v40 = sub_26AEE4D48(v41, v42, v56);
    if (!v40)
    {
      sub_26B078640();

      return a1;
    }

    v39 = sub_26B079E80();
    if (MEMORY[0x26D66D170](a1, a2) >> 14 < v39 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    sub_26B078640();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
    sub_26AEE6118();
    sub_26AE95974();
    v35 = sub_26B07A3E0();
    v36 = v9;
    sub_26B078640();
    v37 = sub_26B079DF0();

    type metadata accessor for MatchingOptions();
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v38 = [v40 firstMatchInString:v37 options:v55 range:{v35, v36}];
    MEMORY[0x277D82BD8](v37);
    if (v38)
    {
      sub_26B079E80();
      [v38 range];
      sub_26B07A3D0();
      sub_26B079F10();
      sub_26B07A740();
      v10 = sub_26B079D00();
      MEMORY[0x26D66D910](v10);

      sub_26B07A720();
      v11 = sub_26B079D00();
      MEMORY[0x26D66D910](v11);

      sub_26B078640();
      sub_26AEB9F6C();
      sub_26B079EB0();
      v33 = sub_26B07A480();

      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v40);

      return v33;
    }

    MEMORY[0x277D82BD8](v40);
  }

  sub_26B078640();
  v32 = sub_26AEE4D48(v49, v50, 1);
  if (v32)
  {
    v31 = sub_26B079E80();
    if (MEMORY[0x26D66D170](a1, a2) >> 14 < v31 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    sub_26B078640();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
    sub_26AEE6118();
    sub_26AE95974();
    v27 = sub_26B07A3E0();
    v28 = v12;
    sub_26B078640();
    v29 = sub_26B079DF0();

    type metadata accessor for MatchingOptions();
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v30 = [v32 firstMatchInString:v29 options:v57 range:{v27, v28}];
    MEMORY[0x277D82BD8](v29);
    if (v30)
    {
      sub_26B079E80();
      [v30 range];
      sub_26B079F10();
      sub_26B07A740();
      v13 = sub_26B079D00();
      MEMORY[0x26D66D910](v13);

      sub_26B07A720();
      v14 = sub_26B079D00();
      MEMORY[0x26D66D910](v14);

      sub_26B078640();
      sub_26AEB9F6C();
      sub_26B079EB0();
      v26 = sub_26B07A480();
      sub_26AE9BCC0();
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v32);

      return v26;
    }

    MEMORY[0x277D82BD8](v32);
  }

  sub_26B078640();
  v25 = sub_26AEE4D48(v51, v52, 1);
  if (v25)
  {
    v24 = sub_26B079E80();
    if (MEMORY[0x26D66D170](a1, a2) >> 14 < v24 >> 14)
    {
      sub_26B07A650();
      __break(1u);
    }

    sub_26B078640();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
    sub_26AEE6118();
    sub_26AE95974();
    v20 = sub_26B07A3E0();
    v21 = v15;
    sub_26B078640();
    v22 = sub_26B079DF0();

    type metadata accessor for MatchingOptions();
    sub_26B07A760();
    sub_26AE9A5E4();
    sub_26B07A4C0();
    v23 = [v25 firstMatchInString:v22 options:v58 range:{v20, v21}];
    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      sub_26B079E80();
      [v23 range];
      sub_26B07A3D0();
      sub_26B079F10();
      sub_26B07A740();
      v16 = sub_26B079D00();
      MEMORY[0x26D66D910](v16);

      sub_26B07A720();
      v17 = sub_26B079D00();
      MEMORY[0x26D66D910](v17);

      sub_26B078640();
      sub_26AEB9F6C();
      sub_26B079EB0();
      v19 = sub_26B07A480();
      sub_26AE9BCC0();
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v25);

      return v19;
    }

    else
    {
      sub_26B078640();
      MEMORY[0x277D82BD8](v25);

      return a1;
    }
  }

  else
  {
    sub_26B078640();

    return a1;
  }
}

uint64_t sub_26AEE75BC(uint64_t a1, uint64_t a2)
{
  sub_26B07A740();
  v2 = sub_26B079D00();
  MEMORY[0x26D66D910](v2);

  sub_26B07A720();
  v3 = sub_26B079D00();
  MEMORY[0x26D66D910](v3);

  sub_26B078640();
  sub_26AEB9F6C();
  v4 = sub_26B079EB0();
  v9 = sub_26AEE61D4(a1, a2, v4, v5);

  return v9;
}

uint64_t sub_26AEE7738()
{
  sub_26AEE8308(0);

  return 0;
}

uint64_t sub_26AEE7774(uint64_t a1, uint64_t a2)
{
  v19 = sub_26B079C40();
  sub_26AEE4980();
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC398);
  sub_26AEE7DF4();
  sub_26B07A270();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3A8);
    sub_26B07A620();
    if (!v18)
    {
      break;
    }

    sub_26AEE4CC8();
    sub_26B078640();
    type metadata accessor for Options();
    sub_26B07A760();
    *v2 = 1;
    v2[1] = 8;
    sub_26AEA3B2C();
    sub_26AE9A714();
    sub_26B07A4C0();
    v11 = sub_26AEE4D48(v17, v18, v16);
    if (v11)
    {
      v10 = sub_26B079E80();
      if (MEMORY[0x26D66D170](a1, a2) >> 14 < v10 >> 14)
      {
        sub_26B07A650();
        __break(1u);
      }

      sub_26B078640();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC388);
      sub_26AEE6118();
      sub_26AE95974();
      v6 = sub_26B07A3E0();
      v7 = v3;
      sub_26B078640();
      v8 = sub_26B079DF0();

      type metadata accessor for MatchingOptions();
      sub_26B07A760();
      sub_26AE9A5E4();
      sub_26B07A4C0();
      v9 = [v11 matchesInString:v8 options:v15 range:{v6, v7}];
      MEMORY[0x277D82BD8](v8);
      sub_26AEE8024();
      sub_26B07A060();
      MEMORY[0x277D82BD8](v9);
      sub_26B078640();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3D0);
      sub_26AEE8088();
      sub_26B07A270();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3E0);
        sub_26B07A620();
        if (!v14)
        {
          break;
        }

        [v14 range];
        sub_26B07A290();
        if ((v4 & 1) == 0)
        {
          sub_26B079FD0();
          sub_26B079FB0();

          sub_26B078640();
          sub_26B07A090();
        }

        (MEMORY[0x277D82BD8])();
      }

      sub_26AEE8110();

      MEMORY[0x277D82BD8](v11);
    }

    else
    {
    }
  }

  sub_26AEE7E7C();
  sub_26B078640();
  sub_26AEE7FF8();
  return v19;
}

unint64_t sub_26AEE7DF4()
{
  v2 = qword_2803DC3A0;
  if (!qword_2803DC3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3A0);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AEE7EA8(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_26AEE7EE8()
{
  v2 = qword_2803DC3B0;
  if (!qword_2803DC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEE7F70()
{
  v2 = qword_2803DC3C0;
  if (!qword_2803DC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC3B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEE8024()
{
  v2 = qword_2803DC3C8;
  if (!qword_2803DC3C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC3C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26AEE8088()
{
  v2 = qword_2803DC3D8;
  if (!qword_2803DC3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC3D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3D8);
    return WitnessTable;
  }

  return v2;
}

id sub_26AEE8150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B079DF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC3E8);
  sub_26AEE83B4();
  sub_26B07A7A0();
  v8 = [v5 initWithPattern:v6 options:a3 error:v9];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v8)
  {
    MEMORY[0x277D82BD8](v6);

    return v8;
  }

  else
  {
    sub_26B078100();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](v6);

    return v4;
  }
}

uint64_t sub_26AEE8308(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_26B07A080();
    sub_26B078640();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_26AEE83B4()
{
  v2 = qword_2803DC3F0;
  if (!qword_2803DC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC3E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC3F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReactiveDialog.id.getter()
{
  memset(__b, 0, 0x29uLL);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5;
  return ReactiveDialog.description.getter();
}

uint64_t ReactiveDialog.description.getter()
{
  memset(__b, 0, 0x29uLL);
  v33 = *v0;
  v34 = *(v0 + 8);
  v35 = *(v0 + 16);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v34;
  __b[2] = v35;
  __b[3] = v1;
  __b[4] = v2;
  LOBYTE(__b[5]) = v3;
  if (v3)
  {
    switch(v3)
    {
      case 1:
        swift_unknownObjectRetain();
        sub_26B07A740();
        v7 = sub_26B079D00();
        MEMORY[0x26D66D910](v7);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = [v33 updateName];
        sub_26B079E00();
        swift_unknownObjectRelease();
        sub_26B07A720();
        sub_26AE9BCC0();
        MEMORY[0x277D82BD8](v26);
        v8 = sub_26B079D00();
        MEMORY[0x26D66D910](v8);

        sub_26B078640();
        sub_26AEB9F6C();
        v27 = sub_26B079EB0();
        swift_unknownObjectRelease();
        return v27;
      case 2:
        swift_unknownObjectRetain();
        sub_26B07A740();
        v9 = sub_26B079D00();
        MEMORY[0x26D66D910](v9);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = [v33 updateName];
        sub_26B079E00();
        swift_unknownObjectRelease();
        sub_26B07A720();
        sub_26AE9BCC0();
        MEMORY[0x277D82BD8](v24);
        v10 = sub_26B079D00();
        MEMORY[0x26D66D910](v10);

        sub_26B078640();
        sub_26AEB9F6C();
        v25 = sub_26B079EB0();
        swift_unknownObjectRelease();
        return v25;
      case 3:
        swift_unknownObjectRetain();
        sub_26B07A740();
        v11 = sub_26B079D00();
        MEMORY[0x26D66D910](v11);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = [v33 updateName];
        sub_26B079E00();
        swift_unknownObjectRelease();
        sub_26B07A720();
        sub_26AE9BCC0();
        MEMORY[0x277D82BD8](v22);
        v12 = sub_26B079D00();
        MEMORY[0x26D66D910](v12);

        sub_26B078640();
        sub_26AEB9F6C();
        v23 = sub_26B079EB0();
        swift_unknownObjectRelease();
        return v23;
      case 4:
        return sub_26B079D00();
      default:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        if (v35)
        {

          swift_getKeyPath();
          ReactiveBetaProgram.subscript.getter();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC408);
          sub_26B079E60();
        }

        else
        {
          sub_26B079D00();
        }

        sub_26B07A740();
        v13 = sub_26B079D00();
        MEMORY[0x26D66D910](v13);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = [v33 updateName];
        sub_26B079E00();
        swift_unknownObjectRelease();
        sub_26B07A720();
        sub_26AE9BCC0();
        MEMORY[0x277D82BD8](v20);
        v14 = sub_26B079D00();
        MEMORY[0x26D66D910](v14);

        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = [v34 descriptor];
        swift_unknownObjectRelease();
        if (v21)
        {
          swift_getObjectType();
          v19 = [v21 updateName];
          sub_26B079E00();
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v19);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
        sub_26B079E60();
        sub_26B07A720();
        sub_26AE9BCC0();
        v15 = sub_26B079D00();
        MEMORY[0x26D66D910](v15);

        sub_26B07A720();
        v16 = sub_26B079D00();
        MEMORY[0x26D66D910](v16);

        sub_26B078640();
        sub_26AEB9F6C();
        v18 = sub_26B079EB0();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v18;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_26B07A740();
    v4 = sub_26B079D00();
    MEMORY[0x26D66D910](v4);

    swift_getObjectType();
    swift_unknownObjectRetain();
    v31 = [v33 updateName];
    sub_26B079E00();
    swift_unknownObjectRelease();
    sub_26B07A720();
    sub_26AE9BCC0();
    MEMORY[0x277D82BD8](v31);
    v5 = sub_26B079D00();
    MEMORY[0x26D66D910](v5);

    swift_getObjectType();
    swift_unknownObjectRetain();
    v32 = [v34 descriptor];
    swift_unknownObjectRelease();
    if (v32)
    {
      swift_getObjectType();
      v30 = [v32 updateName];
      sub_26B079E00();
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
    sub_26B079E60();
    sub_26B07A720();
    sub_26AE9BCC0();
    v6 = sub_26B079D00();
    MEMORY[0x26D66D910](v6);

    sub_26B078640();
    sub_26AEB9F6C();
    v28 = sub_26B079EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v28;
  }
}

double sub_26AEE92A4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 programID];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void *ReactiveDialog.hash(into:)(uint64_t a1)
{
  memset(__b, 0, 0x29uLL);
  __b[6] = a1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  __b[0] = *v1;
  __b[1] = v2;
  __b[2] = v3;
  __b[3] = v4;
  __b[4] = v5;
  LOBYTE(__b[5]) = v6;
  v10[2] = __b[0];
  v10[3] = v2;
  v10[4] = v3;
  v10[5] = v4;
  v10[6] = v5;
  v11 = v6;
  v10[0] = ReactiveDialog.id.getter();
  v10[1] = v7;
  sub_26B07A8F0();
  result = v10;
  sub_26AE9BCC0();
  return result;
}

uint64_t static ReactiveDialog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memset(&v20[6], 0, 0x29uLL);
  memset(v20, 0, 0x29uLL);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v20[6] = *a1;
  v20[7] = v2;
  v20[8] = v3;
  v20[9] = v4;
  v20[10] = v5;
  LOBYTE(v20[11]) = v6;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v16 = *(a2 + 40);
  v20[0] = *a2;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  v20[4] = v10;
  LOBYTE(v20[5]) = v16;
  v17 = ReactiveDialog.id.getter();
  v18 = v11;
  v12 = ReactiveDialog.id.getter();
  v19 = MEMORY[0x26D66D0C0](v17, v18, v12);

  return v19 & 1;
}

uint64_t ReactiveDialog.hashValue.getter()
{
  memset(__b, 0, 0x29uLL);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5;
  sub_26AEE9600();
  return sub_26B07A550();
}

unint64_t sub_26AEE9600()
{
  v2 = qword_2803DC410;
  if (!qword_2803DC410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC410);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEE967C@<X0>(uint64_t *a1@<X8>)
{
  result = ReactiveDialog.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26AEE974C()
{
  v2 = qword_2803DC5E0;
  if (!qword_2803DC5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEE9804(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 41))
    {
      v4 = *a1 + 250;
    }

    else
    {
      v2 = *(a1 + 40) ^ 0xFF;
      if (v2 >= 0xFA)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEE98FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 41);
  if (a2 > 0xFA)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0xFB)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t SUUIStatefulError.id.getter()
{
  memset(__b, 0, sizeof(__b));
  v15 = 0;
  __dst[9] = 0;
  __dst[10] = 0;
  memset(v12, 0, sizeof(v12));
  v23 = v10;
  sub_26B07A920();
  memcpy(__b, v24, sizeof(__b));
  (MEMORY[0x277D82BE0])();
  v7 = [v10 domain];
  v5 = sub_26B079E00();
  v6 = v0;
  (MEMORY[0x277D82BD8])();
  v20 = v5;
  v21 = v6;
  sub_26B07A8F0();
  sub_26AE9BCC0();
  MEMORY[0x277D82BD8](v7);
  (MEMORY[0x277D82BE0])();
  v8 = [v10 code];
  (MEMORY[0x277D82BD8])();
  v19 = v8;
  sub_26B07A8F0();
  (MEMORY[0x277D82BE0])();
  v9 = [v10 userInfo];
  sub_26B079C70();
  (MEMORY[0x277D82BD8])();
  v11 = sub_26B07A7C0();
  if (v11)
  {
    v15 = v11;

    MEMORY[0x277D82BD8](v9);
    __dst[8] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC4E0);
    sub_26AEEA050();
    __dst[7] = sub_26B079FE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC4F0);
    sub_26AEEA0D8();
    sub_26B07A270();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC500);
      sub_26B07A620();
      memcpy(__dst, v13, 0x38uLL);
      if (!__dst[1])
      {
        break;
      }

      memcpy(v12, &__dst[2], sizeof(v12));
      sub_26B07A8F0();
      sub_26B07A8F0();
      sub_26AEEA18C(v12);
    }

    sub_26AEEA160();
  }

  else
  {

    MEMORY[0x277D82BD8](v9);
  }

  v17 = sub_26B07A740();
  v18 = v1;
  v2 = sub_26B079D00();
  MEMORY[0x26D66D910](v2);

  memcpy(v25, __b, sizeof(v25));
  v16 = sub_26B07A900();
  sub_26B07A710();
  v3 = sub_26B079D00();
  MEMORY[0x26D66D910](v3);

  sub_26B078640();
  sub_26AEB9F6C();
  return sub_26B079EB0();
}

unint64_t sub_26AEEA050()
{
  v2 = qword_2803DC4E8;
  if (!qword_2803DC4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC4E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEEA0D8()
{
  v2 = qword_2803DC4F8;
  if (!qword_2803DC4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC4F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEEA1B4@<X0>(uint64_t *a1@<X8>)
{
  result = SUUIStatefulError.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t static SUUIStatefulError.== infix(_:_:)(void *a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v5 = [a1 isEqual_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t ReactiveDescriptor.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v27 = 0;
  v25 = 0;
  v8 = *a1;
  v16 = sub_26B078360();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v2 = MEMORY[0x28223BE20](v20);
  v15 = &v7 - v3;
  v27 = v4;
  v9 = *(v8 + *MEMORY[0x277D84DE8] + 8);
  v26 = v9;
  v25 = v11;
  (*(v13 + 16))(&v7 - v3, v11 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v2);
  v10 = &v24;
  v24 = v11;

  v21 = v9;
  v22 = v20;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v5 = v11;

  (*(v13 + 8))(v15, v16);
  v17 = *(v5 + 24);
  MEMORY[0x277D82BE0](v17);
  v18 = [v17 descriptor];
  MEMORY[0x277D82BD8](v17);

  v23 = v18;
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
}

uint64_t sub_26AEEA49C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AEEA4FC()
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_26AEEA574()
{

  swift_weakInit();
}

uint64_t sub_26AEEA5C0()
{
  KeyPath = swift_getKeyPath();
  sub_26AEEA928(KeyPath);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AEEA64C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_26AEEA5C0();
}

uint64_t sub_26AEEA6A8(uint64_t *a1)
{
  sub_26AE9CCD0(a1, &v3);
  v2 = v3;

  sub_26AEEA710(v2);
}

uint64_t sub_26AEEA710(uint64_t a1)
{
  v19 = a1;
  v26 = 0;
  v15 = 0;
  v27 = a1;
  v16 = v1 + 16;
  v17 = &v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  v24 = Strong;
  v23 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC520);
  v20 = &v24;
  v21 = sub_26AEEAA98();
  sub_26AEECDD4();
  if (v21)
  {
    v2 = v14;
    v3 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v7[3] = v4;
    sub_26AEEAB50(v5, sub_26AEECE00, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v3;

    v9 = v13;
  }

  else
  {

    v8[0] = v14 + 16;
    v8[1] = &v22;
    swift_beginAccess();
    swift_weakAssign();

    swift_endAccess();
    v9 = v15;
  }
}

uint64_t sub_26AEEA928(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_26B078360();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26AEECCB0();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26AEEAAC8()
{

  swift_beginAccess();
  swift_weakAssign();

  return swift_endAccess();
}

uint64_t sub_26AEEAB50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26B078360();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26AEECCB0();
  v9 = v23;
  sub_26B078310();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

void (*sub_26AEEAD68(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEEA928(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  v8[4] = swift_weakLoadStrong();
  return sub_26AEEAF34;
}

void sub_26AEEAF34(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[6];
    v2 = v6[5];

    swift_weakAssign();

    sub_26AEECDD4();
    swift_endAccess();
    sub_26AEEB01C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[6];
    v4 = v6[5];
    swift_weakAssign();

    swift_endAccess();
    sub_26AEEB01C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEEB01C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078330();

  return (*(v8 + 8))(v10, v11);
}

uint64_t ReactiveDescriptor.statefulDescriptor.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_26AEEB198@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEEB20C()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations);
  swift_beginAccess();
  v3 = *v2;
  sub_26B078640();
  swift_endAccess();
  return v3;
}

uint64_t sub_26AEEB274(uint64_t a1)
{
  sub_26B078640();
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id ReactiveDescriptor.currentState.getter()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 currentState];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEB47C@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveDescriptor.currentState.getter();
}

id ReactiveDescriptor.role.getter()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 role];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEB65C@<X0>(id *a1@<X8>)
{

  *a1 = ReactiveDescriptor.role.getter();
}

uint64_t ReactiveDescriptor.isDownloadable.getter()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 isDownloadable];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEB83C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = ReactiveDescriptor.isDownloadable.getter() & 1;
}

id sub_26AEEB89C()
{
  v15 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v15 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar, v0);
  v5 = &v14;
  v14 = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEECCB0();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = *(v1 + 24);
  MEMORY[0x277D82BE0](v12);
  v13 = [v12 updateDownloadError];
  MEMORY[0x277D82BD8](v12);
  return v13;
}

uint64_t sub_26AEEBA28@<X0>(id *a1@<X8>)
{

  *a1 = sub_26AEEB89C();
}

uint64_t ReactiveDescriptor.init(representing:managedBy:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v44 = a2;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v29 = 0;
  v31 = sub_26B078360();
  v9 = *(v31 - 8);
  v10 = v31 - 8;
  v7[0] = (v9[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v34 = v7 - v7[0];
  v57 = v3;
  v56 = v4;
  v55 = v2;
  v40 = 0;
  swift_weakInit();
  v26 = &qword_2803DC000;
  sub_26B078350();
  v38 = &qword_2803DC000;
  v8 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_observations;
  v7[1] = sub_26B078070();
  v7[2] = sub_26B07A760();
  sub_26AEECE8C();
  *(v2 + v8) = sub_26B07A1B0();
  sub_26B078350();
  MEMORY[0x277D82BE0](v45);
  *(v2 + 24) = v45;

  sub_26AEEA710(v44);
  v54[1] = v46;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v5 = v26[162];
  v28 = v9[2];
  v27 = v9 + 2;
  v28(v34, v46 + v5, v31);
  v30 = sub_26AEECCB0();
  v13 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(KeyPath, v45, v11, v34, v29, v29, v30);
  v33 = v9[1];
  v32 = v9 + 1;
  v33(v34, v31);

  v14 = v54;
  v54[0] = v13;
  v15 = &v53;
  v39 = 33;
  swift_beginAccess();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC540);
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v54[2]);
  v52[1] = v46;
  v17 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v28(v34, v46 + v26[162], v31);
  v18 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v17, v45, v16, v34, v29, v29, v30);
  v33(v34, v31);

  v19 = v52;
  v52[0] = v18;
  v20 = &v51;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v52[2]);
  v50[1] = v46;
  v22 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v28(v34, v46 + v26[162], v31);
  v23 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v22, v45, v21, v34, v29, v29, v30);
  v33(v34, v31);

  v24 = v50;
  v50[0] = v23;
  v25 = &v49;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v50[2]);
  v48[1] = v46;
  v36 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v28(v34, v46 + v26[162], v31);
  v37 = Observable<>.observe<A, B, C>(_:of:at:using:sink:)(v36, v45, v35, v34, v29, v29, v30);
  v33(v34, v31);

  v41 = v48;
  v48[0] = v37;
  v43 = &v47;
  swift_beginAccess();
  sub_26B07A1D0();
  swift_endAccess();
  MEMORY[0x277D82BD8](v48[2]);

  MEMORY[0x277D82BD8](v45);
  return v46;
}

double sub_26AEEC354@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 currentState];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC3C0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setCurrentState_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC428@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 role];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC494(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setRole_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC4FC@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 isDownloadable];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC568(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setUpdateDownloadable_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC5D4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 updateDownloadError];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_26AEEC648(uint64_t *a1, void *a2)
{
  sub_26AEEE9CC(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setUpdateDownloadError_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t ReactiveDescriptor.deinit()
{
  memset(__b, 0, sizeof(__b));
  v8 = v0;
  swift_beginAccess();
  sub_26B078640();
  swift_endAccess();
  sub_26B078070();
  sub_26AEECE8C();
  sub_26B07A1C0();
  memcpy(__b, v9, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEA60);
    sub_26B07A1E0();
    if (!v6)
    {
      break;
    }

    sub_26B078060();
    (MEMORY[0x277D82BD8])();
  }

  sub_26AEECFFC();
  swift_weakDestroy();
  MEMORY[0x277D82BD8](*(v5 + 24));
  v2 = v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor_registrar;
  v3 = sub_26B078360();
  v4 = *(*(v3 - 8) + 8);
  (v4)(v2);
  sub_26AEED080();
  v4(v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar, v3);
  return v5;
}

BOOL sub_26AEEC924()
{

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DC5A8);
  sub_26B07A930();
  v1 = sub_26B079D70();

  return (v1 & 1) != 0;
}

uint64_t sub_26AEECA18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DC5A8);
  sub_26B07A930();
  return sub_26B079CE0();
}

uint64_t sub_26AEECA88@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v6 - v6;
  v7 = *v4;

  v16 = v7;
  v15 = v7;
  v14 = *v8;

  ReactiveDescriptor.subscript.getter(v14, v12);
  (*(v9 + 32))(v11, v12, v13);
}

void *sub_26AEECC04(void *a1, void *a2)
{
  v4 = *a1;

  result = a1;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

void *sub_26AEECC8C(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

unint64_t sub_26AEECCB0()
{
  v2 = qword_2803DC518;
  if (!qword_2803DC518)
  {
    type metadata accessor for ReactiveDescriptor();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC518);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveDescriptor()
{
  v1 = qword_2803DC590;
  if (!qword_2803DC590)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_26AEECE8C()
{
  v2 = qword_2803DC538;
  if (!qword_2803DC538)
  {
    sub_26B078070();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC538);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEED0AC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit18ReactiveDescriptor___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEED17C()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t ReactiveDescriptor.id.getter()
{
  sub_26B07A740();
  v0 = sub_26B079D00();
  MEMORY[0x26D66D910](v0);

  v4 = *(v6 + 24);
  MEMORY[0x277D82BE0](v4);
  v5 = [v4 updateName];
  MEMORY[0x277D82BD8](v4);
  sub_26B079E00();
  sub_26B07A720();
  sub_26AE9BCC0();
  MEMORY[0x277D82BD8](v5);
  v1 = sub_26B079D00();
  MEMORY[0x26D66D910](v1);

  v7 = *(v6 + 24);
  MEMORY[0x277D82BE0](v7);
  sub_26B07A3C0();
  MEMORY[0x277D82BD8](v7);
  sub_26B07A710();
  v2 = sub_26B079D00();
  MEMORY[0x26D66D910](v2);

  sub_26B078640();
  sub_26AEB9F6C();
  return sub_26B079EB0();
}

uint64_t sub_26AEED468@<X0>(uint64_t *a1@<X8>)
{
  result = ReactiveDescriptor.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t ReactiveDescriptor.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  MEMORY[0x277D82BE0](v4);
  [v4 hash];
  MEMORY[0x277D82BD8](v4);
  return sub_26B07A8F0();
}

unint64_t sub_26AEED5B8()
{
  v2 = qword_2803DC550;
  if (!qword_2803DC550)
  {
    type metadata accessor for ReactiveDescriptor();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC550);
    return WitnessTable;
  }

  return v2;
}

uint64_t static ReactiveDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 24);
  MEMORY[0x277D82BE0](v6);
  v4 = *(a2 + 24);
  MEMORY[0x277D82BE0](v4);
  v5 = [v4 descriptor];
  v7 = [v6 isEqualToDescriptor_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v7;
}

uint64_t ReactiveDescriptor.description.getter()
{
  sub_26B07A740();
  v0 = sub_26B079D00();
  MEMORY[0x26D66D910](v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC558);
  sub_26B079E60();
  sub_26B07A720();
  sub_26AE9BCC0();
  v1 = sub_26B079D00();
  MEMORY[0x26D66D910](v1);

  sub_26B079D60();
  sub_26B07A700();
  v2 = sub_26B079D00();
  MEMORY[0x26D66D910](v2);

  ReactiveDescriptor.id.getter();
  sub_26B07A720();
  sub_26AE9BCC0();
  v3 = sub_26B079D00();
  MEMORY[0x26D66D910](v3);

  v7 = *(v8 + 24);
  MEMORY[0x277D82BE0](v7);
  sub_26B07A3C0();
  MEMORY[0x277D82BD8](v7);
  sub_26B07A710();
  v4 = sub_26B079D00();
  MEMORY[0x26D66D910](v4);

  v9 = *(v8 + 24);
  MEMORY[0x277D82BE0](v9);
  sub_26AEB75BC();
  sub_26AEEDAE0();
  sub_26B07A710();
  MEMORY[0x277D82BD8](v9);
  v5 = sub_26B079D00();
  MEMORY[0x26D66D910](v5);

  sub_26B078640();
  sub_26AEB9F6C();
  return sub_26B079EB0();
}

unint64_t sub_26AEEDAE0()
{
  v2 = qword_2803DC568;
  if (!qword_2803DC568)
  {
    sub_26AEB75BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC568);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReactiveDescriptor.debugDescription.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  v3 = [v2 description];
  v4 = sub_26B079E00();
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t ReactiveDescriptor.isDownloaded.getter()
{
  ReactiveDescriptor.currentState.getter();
  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  v2 = sub_26B07A790();

  if (v2)
  {
    v1 = 1;
  }

  else
  {
    ReactiveDescriptor.currentState.getter();
    v1 = sub_26B07A790();
  }

  return v1 & 1;
}

id ReactiveDescriptor.updateError.getter()
{
  v4 = v0;
  v2 = sub_26AEEB89C();

  if (v2)
  {
    v3 = v2;
  }

  else if (sub_26AEEA5C0())
  {
    v3 = ReactiveUIManager.scanError.getter();
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  return v3;
}

uint64_t ReactiveDescriptor.hasAnyError.getter()
{
  v9 = ReactiveDescriptor.updateError.getter();
  if (!v9)
  {
    goto LABEL_12;
  }

  v7 = *(v8 + 24);
  MEMORY[0x277D82BE0](v7);
  if (!sub_26AEEA5C0())
  {
    LOBYTE(v1) = 2;
    v2 = 220;
    LODWORD(v3) = 0;
    sub_26B07A650();
    __break(1u);
  }

  v6 = ReactiveUIManager.currentDownload.getter();

  if (v6)
  {
    MEMORY[0x277D82BE0](*(v6 + 16));

    swift_getObjectType();
  }

  v5 = [v9 isNonBlockingErrorForStatefulDescriptor:v7 download:{v1, v2, v3}];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v7);
  if (v5)
  {
    MEMORY[0x277D82BD8](v9);
LABEL_12:
    v4 = 0;
    return v4 & 1;
  }

  MEMORY[0x277D82BD8](v9);
  v4 = 1;
  return v4 & 1;
}

uint64_t ReactiveDescriptor.shouldOfferInstallTonight.getter()
{
  v23 = "Fatal error";
  v24 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v25 = "SoftwareUpdateUIKit/ReactiveDescriptor.swift";
  v43 = 0;
  v40 = 0;
  v39 = 0.0;
  v35 = 0;
  v26 = sub_26B0782A0();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v30 = &v6[-v29];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260);
  v31 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v32 = &v6[-v31];
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6[-v31]);
  v34 = &v6[-v33];
  v43 = v0;
  v3 = ReactiveDescriptor.currentState.getter();
  v38 = &v42;
  v42 = v3;
  v36 = &v41;
  v41 = 5;
  v37 = type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_26AEEA5C0();
  if (v21)
  {
    v20 = v21;
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  v18 = v20;
  v19 = ReactiveUIManager.ddmDeclaration.getter();
  if (!v19)
  {

LABEL_20:
    v22 = 1;
    return v22 & 1;
  }

  v17 = v19;
  v16 = v19;
  v40 = v19;

  if (([v16 isValidDeclaration] & 1) == 0)
  {
    MEMORY[0x277D82BD8](v16);
    goto LABEL_20;
  }

  v15 = [v16 enforcedInstallDate];
  if (v15)
  {
    v14 = v15;
    v13 = v15;
    sub_26B078250();
    (*(v27 + 32))(v32, v30, v26);
    (*(v27 + 56))(v32, 0, 1, v26);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    (*(v27 + 56))(v32, 1, 1, v26);
  }

  sub_26AEEE5DC(v32, v34);
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_26AEEE704(v34);
    v11 = 0.0;
    v12 = 1;
  }

  else
  {
    sub_26B078230();
    v10 = v4;
    (*(v27 + 8))(v34, v26);
    v11 = v10;
    v12 = 0;
  }

  v9 = v11;
  if (v12)
  {
    MEMORY[0x277D82BD8](v16);
    v22 = 1;
  }

  else
  {
    v8 = v9;
    v39 = v9;
    v7 = v9 >= 86400.0;
    MEMORY[0x277D82BD8](v16);
    v22 = v7;
  }

  return v22 & 1;
}

void *sub_26AEEE5DC(const void *a1, void *a2)
{
  v6 = sub_26B0782A0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AEEE704(uint64_t a1)
{
  v3 = sub_26B0782A0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_26AEEE7D0()
{
  v2 = qword_2803DC580;
  if (!qword_2803DC580)
  {
    type metadata accessor for ReactiveDescriptor();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEEE86C()
{
  updated = sub_26B078360();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *sub_26AEEE9CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_26AEEEA0C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AEEEAE4(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AEEEB6C()
{
  swift_getKeyPath();
  sub_26B078A30();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_26AEF4420();
  return v1;
}

uint64_t sub_26AEEEC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v17 = a1;
  v29 = sub_26AEF44A0;
  v36 = MEMORY[0x277CE0E30];
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v25 = a2;
  v26 = a3;
  v28 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5B8);
  v37 = *(v43 - 8);
  v38 = v43 - 8;
  v16 = *(v37 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v41 = &v14 - v15;
  MEMORY[0x28223BE20](v5);
  v42 = &v14 - v6;
  v61 = &v14 - v6;
  v60 = v17;
  v57 = v7;
  v27 = 1;
  LOBYTE(v58) = v26 & 1;
  v59 = v8;

  v55 = v25;
  v56 = v26 & 1 & v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  v18 = v54;

  ReactiveUIManager.presentedDialog.getter(v52);
  v19 = v52[0];
  v20 = v52[1];
  v21 = v52[2];
  v22 = v52[3];
  v23 = v52[4];
  v24 = v53;

  v31 = v50;
  v50[0] = v19;
  v50[1] = v20;
  v50[2] = v21;
  v50[3] = v22;
  v50[4] = v23;
  v51 = v24;

  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v30 = v9;
  *(v9 + 16) = v25;
  *(v9 + 24) = v10 & 1 & v11;
  *(v9 + 32) = v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C8);
  v34 = sub_26AEF44D8();
  v35 = sub_26AEF4560();
  sub_26B0796D0();

  sub_26AEA007C(v31);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v41, v43, v42);
  v45 = *(v37 + 8);
  v44 = v37 + 8;
  v45(v41, v43);
  (*(v37 + 16))(v41, v42, v43);
  sub_26AE94B4C(v41, v43, v39);
  v45(v41, v43);
  return (v45)(v42, v43);
}

uint64_t sub_26AEEF194(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v49 = a1;
  v50 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v42 = &unk_26B089E10;
  v44 = 41;
  v43 = 0;
  memset(&v64[6], 0, 0x29uLL);
  memset(v64, 0, 0x29uLL);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v64[12] = v45;
  v65 = v46;
  v66 = v47;
  v51 = v45;
  v52 = v46;
  v48 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  MEMORY[0x28223BE20](v49);
  v53 = &v23 - v5;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v11 = *(v6 + 40);
  v64[6] = *v6;
  v64[7] = v7;
  v64[8] = v8;
  v64[9] = v9;
  v64[10] = v10;
  LOBYTE(v64[11]) = v11;
  v54 = *v50;
  v55 = *(v50 + 8);
  v56 = *(v50 + 16);
  v57 = *(v50 + 24);
  v58 = *(v50 + 32);
  v59 = *(v50 + 40);
  v64[0] = v54;
  v64[1] = v55;
  v64[2] = v56;
  v64[3] = v57;
  v64[4] = v58;
  LOBYTE(v64[5]) = v59;
  v61 = v45;
  v62 = v46 & 1;
  v63 = v12;
  result = sub_26AEF56C4(v54, v55, v56, v57, v58, v59);
  if (v59 != 255)
  {
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v41 = v59;
    v30 = v41;
    v31 = v40;
    v32 = v39;
    v33 = v38;
    v34 = v37;
    v35 = v36;
    if (v41 == 1)
    {
      v28 = v35;
      v29 = v33;
      v26 = v35;
      v60 = v35;

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_getObjectType();
      v27 = [v26 isEqual_];
      swift_unknownObjectRelease();
      if (v27)
      {
        sub_26B07A140();
        v24 = 0;
        v14 = *(*(sub_26B07A160() - 8) + 56);
        HIDWORD(v23) = 1;
        v14(v53, 0);

        swift_unknownObjectRetain();
        v15 = swift_allocObject();
        v16 = v51;
        v17 = v52;
        v18 = BYTE4(v23);
        v19 = v48;
        v20 = v24;
        v21 = v42;
        v22 = v53;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = v16;
        *(v15 + 40) = v17 & 1 & v18;
        *(v15 + 48) = v19;
        v25 = sub_26AF449A0(v20, v20, v22, v21, v15, MEMORY[0x277D84F78] + 8);
        sub_26AEA08A4(v53);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      return sub_26AEA00D4(v35, v34, v33, v32, v31, v30);
    }
  }

  return result;
}

uint64_t sub_26AEEF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 48) = a4;
  *(v6 + 80) = a5 & 1;
  *(v6 + 56) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 16) = a4;
  *(v6 + 24) = a5 & 1;
  *(v6 + 32) = a6;
  v7 = swift_task_alloc();
  *(v12 + 72) = v7;
  *v7 = *(v12 + 40);
  v7[1] = sub_26AEEF7F0;

  return sub_26AEEFABC(a4, a5 & 1, a6);
}

uint64_t sub_26AEEF7F0()
{
  *(*v0 + 40) = *v0;

  return MEMORY[0x2822009F8](sub_26AEEF908, 0, 0);
}

uint64_t sub_26AEEF908()
{
  v5 = MEMORY[0x277D85700];
  v10 = *(v0 + 64);
  v8 = *(v0 + 56);
  v7 = *(v0 + 80);
  v6 = *(v0 + 48);
  *(v0 + 40) = v0;
  v1 = sub_26B07A160();
  (*(*(v1 - 8) + 56))(v10, 1);

  swift_unknownObjectRetain();
  sub_26B07A130();
  v9 = sub_26B07A120();
  v2 = swift_allocObject();
  *(v2 + 16) = v9;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7 & 1;
  *(v2 + 48) = v8;
  sub_26AEBC0C4(0, 0, v10, &unk_26B089E20, v2, MEMORY[0x277D84F78] + 8);

  v3 = *(*(v0 + 40) + 8);

  return v3();
}

uint64_t sub_26AEEFABC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 408) = v3;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 424) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 440) = 0;
  *(v3 + 448) = 0;
  *(v3 + 464) = 0;
  *(v3 + 472) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 360) = 0;
  *(v3 + 368) = 0;
  *(v3 + 480) = a1;
  *(v3 + 385) = a2 & 1;
  *(v3 + 488) = a3;
  v4 = sub_26B078580();
  *(v3 + 496) = v4;
  *(v3 + 504) = *(v4 - 8);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 272) = a1;
  *(v3 + 280) = a2 & 1;
  *(v3 + 288) = a3;
  sub_26B07A130();
  *(v3 + 536) = sub_26B07A120();
  v10 = sub_26B07A0C0();
  *(v3 + 544) = v10;
  *(v3 + 552) = v5;

  return MEMORY[0x2822009F8](sub_26AEEFCB0, v10, v5);
}

uint64_t sub_26AEEFCB0()
{
  v29 = v0;
  v20 = *(v0 + 385);
  v21 = *(v0 + 480);
  *(v0 + 408) = v0;

  *(v0 + 376) = v21;
  *(v0 + 384) = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  v22 = ReactiveUIManager.presentingViewController.getter();
  *(v0 + 560) = v22;
  if (!v22)
  {
    v6 = *(v19 + 488);
    v3 = *(v19 + 385);
    v5 = *(v19 + 480);

    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    *(v4 + 16) = v5;
    *(v4 + 24) = v3 & 1;
    *(v4 + 32) = v6;
    sub_26B07A630();

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v14 = *(v19 + 385);
  v15 = *(v19 + 480);
  *(v19 + 424) = v22;

  *(v19 + 392) = v15;
  *(v19 + 400) = v14 & 1;
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(&v23);
  v16 = v23;
  v17 = v24;
  *(v19 + 568) = v24;
  v18 = v25;
  *(v19 + 576) = v25;
  if (v28 == 255)
  {

LABEL_9:
    v10 = *(v19 + 488);
    v7 = *(v19 + 385);
    v9 = *(v19 + 480);

    swift_unknownObjectRetain();
    v8 = swift_task_alloc();
    *(v8 + 16) = v9;
    *(v8 + 24) = v7 & 1;
    *(v8 + 32) = v10;
    sub_26B07A630();

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v22);
LABEL_11:

    v1 = *(*(v19 + 408) + 8);

    return v1();
  }

  if (v28 != 1)
  {
    sub_26AEA00D4(v16, v17, v18, v26, v27, v28);

    goto LABEL_9;
  }

  *(v19 + 296) = v17;
  *(v19 + 304) = v18;
  swift_unknownObjectRelease();

  sub_26AEF4668();
  v13 = sub_26AEF3F00();
  *(v19 + 584) = v13;
  *(v19 + 440) = v13;
  sub_26AEF46CC();
  v12 = sub_26AEF3F30();
  *(v19 + 592) = v12;
  *(v19 + 448) = v12;
  [v12 setDismissUIAfterCompletion_];
  *(v19 + 16) = *(v19 + 408);
  *(v19 + 56) = v19 + 456;
  *(v19 + 24) = sub_26AEF0298;
  v11 = swift_continuation_init();
  *(v19 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5F8);
  *(v19 + 176) = v11;
  *(v19 + 144) = MEMORY[0x277D85DD0];
  *(v19 + 152) = 1107296256;
  *(v19 + 156) = 0;
  *(v19 + 160) = sub_26AEF3F60;
  *(v19 + 168) = &block_descriptor;
  [v13 startInParentVC:v22 options:v12 completion:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26AEF0298()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 408) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 600) = v1;
  if (v1)
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF1D20;
  }

  else
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF0410;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AEF0410()
{
  v35 = v0;
  v16 = *(v0 + 488);
  v15 = *(v0 + 385);
  v14 = *(v0 + 480);
  *(v0 + 408) = v0;
  v13 = *(v0 + 456);
  *(v0 + 608) = v13;
  *(v0 + 472) = v13;
  sub_26B078540();

  swift_unknownObjectRetain();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15 & 1;
  *(v17 + 32) = v16;
  v28 = sub_26B078570();
  v29 = sub_26B07A2A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AEF4C14;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AEF4CF4;
  *(v19 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AEF4D40;
  *(v23 + 24) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AEF40BC;
  *(v20 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEF4E40;
  *(v26 + 24) = v20;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v27 = v1;

  *v27 = sub_26AEF4C78;
  v27[1] = v21;

  v27[2] = sub_26AEF4CAC;
  v27[3] = v22;

  v27[4] = sub_26AEF4D8C;
  v27[5] = v23;

  v27[6] = sub_26AEF4DC4;
  v27[7] = v24;

  v27[8] = sub_26AEF4DF8;
  v27[9] = v25;

  v27[10] = sub_26AEF4E8C;
  v27[11] = v26;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v10 = sub_26AEA3B70(0);
    v11 = sub_26AEA3B70(2);
    v30 = buf;
    v31 = v10;
    v32 = v11;
    sub_26AEA3BC4(2, &v30);
    sub_26AEA3BC4(2, &v30);
    v33 = sub_26AEF4C78;
    v34 = v21;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26AEF4CAC;
    v34 = v22;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26AEF4D8C;
    v34 = v23;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26AEF4DC4;
    v34 = v24;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26AEF4DF8;
    v34 = v25;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    v33 = sub_26AEF4E8C;
    v34 = v26;
    sub_26AEA3BD8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_26AE88000, v28, v29, "%s.%s: Passcode challenge succeeded, completed, extracting credentials.", buf, 0x16u);
    sub_26AEA3C24(v10);
    sub_26AEA3C24(v11);
    sub_26B07A400();
  }

  else
  {
  }

  *(v12 + 624) = 0;
  v6 = *(v12 + 528);
  v7 = *(v12 + 496);
  v5 = *(v12 + 504);
  v2 = MEMORY[0x277D82BD8](v28);
  v3 = *(v5 + 8);
  *(v12 + 632) = v3;
  *(v12 + 640) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7, v2);
  *(v12 + 80) = *(v12 + 408);
  *(v12 + 120) = v12 + 312;
  *(v12 + 88) = sub_26AEF0EF4;
  v8 = swift_continuation_init();
  *(v12 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC600);
  *(v12 + 240) = v8;
  *(v12 + 208) = MEMORY[0x277D85DD0];
  *(v12 + 216) = 1107296256;
  *(v12 + 220) = 0;
  *(v12 + 224) = sub_26AEF4140;
  *(v12 + 232) = &block_descriptor_97;
  [v13 credentialOfType:-9 reply:?];

  return MEMORY[0x282200938](v12 + 80);
}

uint64_t sub_26AEF0EF4()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 408) = *v0;
  v1 = *(v7 + 112);
  *(v8 + 648) = v1;
  if (v1)
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF2B88;
  }

  else
  {
    v2 = *(v6 + 536);
    v3 = *(v6 + 528);
    v4 = sub_26AEF106C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AEF106C()
{
  v48 = v0;
  v0[51] = v0;
  v41 = v0[39];
  v42 = v0[40];
  if ((v42 & 0xF000000000000000) == 0xF000000000000000)
  {
    v20 = *(v40 + 488);
    v19 = *(v40 + 385);
    v18 = *(v40 + 480);
    sub_26B078540();

    swift_unknownObjectRetain();
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v19 & 1;
    *(v21 + 32) = v20;
    oslog = sub_26B078570();
    v33 = sub_26B07A2D0();
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26AEF4F20;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AEF5000;
    *(v23 + 24) = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26AEF504C;
    *(v27 + 24) = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AEF4110;
    *(v24 + 24) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_26AEF514C;
    *(v30 + 24) = v24;
    sub_26B07A760();
    v31 = v2;

    *v31 = sub_26AEF4F84;
    v31[1] = v25;

    v31[2] = sub_26AEF4FB8;
    v31[3] = v26;

    v31[4] = sub_26AEF5098;
    v31[5] = v27;

    v31[6] = sub_26AEF50D0;
    v31[7] = v28;

    v31[8] = sub_26AEF5104;
    v31[9] = v29;

    v31[10] = sub_26AEF5198;
    v31[11] = v30;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v33))
    {
      v3 = *(v40 + 624);
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v16 = sub_26AEA3B70(0);
      v17 = sub_26AEA3B70(2);
      v43 = buf;
      v44 = v16;
      v45 = v17;
      sub_26AEA3BC4(2, &v43);
      sub_26AEA3BC4(2, &v43);
      v46 = sub_26AEF4F84;
      v47 = v25;
      sub_26AEA3BD8(&v46, &v43, &v44, &v45);
      if (v3)
      {
      }

      v46 = sub_26AEF4FB8;
      v47 = v26;
      sub_26AEA3BD8(&v46, &v43, &v44, &v45);
      v46 = sub_26AEF5098;
      v47 = v27;
      sub_26AEA3BD8(&v46, &v43, &v44, &v45);
      v46 = sub_26AEF50D0;
      v47 = v28;
      sub_26AEA3BD8(&v46, &v43, &v44, &v45);
      v46 = sub_26AEF5104;
      v47 = v29;
      sub_26AEA3BD8(&v46, &v43, &v44, &v45);
      v46 = sub_26AEF5198;
      v47 = v30;
      sub_26AEA3BD8(&v46, &v43, &v44, &v45);
      _os_log_impl(&dword_26AE88000, oslog, v33, "%s.%s: Extracting credentials from passcode challenge failed unexpectedly.", buf, 0x16u);
      sub_26AEA3C24(v16);
      sub_26AEA3C24(v17);
      sub_26B07A400();
    }

    else
    {
    }

    v9 = *(v40 + 632);
    v11 = *(v40 + 608);
    v12 = *(v40 + 592);
    v13 = *(v40 + 584);
    v7 = *(v40 + 520);
    v8 = *(v40 + 496);
    v10 = *(v40 + 568);
    v14 = *(v40 + 560);
    v5 = MEMORY[0x277D82BD8](oslog);
    v9(v7, v8, v5);

    v10(2, 0);

    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);

    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v37 = *(v40 + 608);
    v35 = *(v40 + 568);
    *(v40 + 328) = v41;
    *(v40 + 336) = v42;
    sub_26AE961DC(v41, v42);
    *(v40 + 344) = v41;
    *(v40 + 352) = v42;
    sub_26AEF51A4();
    sub_26AEF521C();
    v34 = sub_26B079F80();
    v36 = v1;
    *(v40 + 360) = v34;
    *(v40 + 368) = v1;

    sub_26B078640();
    v35(0, v34, v36);

    sub_26AE96418(v41, v42);
    MEMORY[0x277D82BD8](v37);
    v38 = *(v40 + 584);
    v39 = *(v40 + 560);
    MEMORY[0x277D82BD8](*(v40 + 592));
    MEMORY[0x277D82BD8](v38);

    MEMORY[0x277D82BD8](v39);
  }

  v6 = *(*(v40 + 408) + 8);

  return v6();
}

uint64_t sub_26AEF1D20()
{
  v42 = v0;
  *(v0 + 408) = v0;
  swift_willThrow();
  v18 = *(v0 + 600);
  v17 = *(v0 + 488);
  v16 = *(v0 + 385);
  v15 = *(v0 + 480);
  MEMORY[0x26D66E1D0]();
  *(v0 + 464) = v18;
  sub_26B078540();

  swift_unknownObjectRetain();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v16 & 1;
  *(v19 + 32) = v17;
  MEMORY[0x26D66E1D0](v18);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  oslog = sub_26B078570();
  v36 = sub_26B07A2C0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AEF47B8;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AEF4928;
  *(v21 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEF4974;
  *(v27 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AEF42E8;
  *(v22 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26AEF4A74;
  *(v30 + 24) = v22;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEF4830;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26AEF4B74;
  *(v33 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v34 = v1;

  *v34 = sub_26AEF48AC;
  v34[1] = v25;

  v34[2] = sub_26AEF48E0;
  v34[3] = v26;

  v34[4] = sub_26AEF49C0;
  v34[5] = v27;

  v34[6] = sub_26AEF49F8;
  v34[7] = v28;

  v34[8] = sub_26AEF4A2C;
  v34[9] = v29;

  v34[10] = sub_26AEF4AC0;
  v34[11] = v30;

  v34[12] = sub_26AEF4AF8;
  v34[13] = v31;

  v34[14] = sub_26AEF4B2C;
  v34[15] = v32;

  v34[16] = sub_26AEF4BC0;
  v34[17] = v33;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v36))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v12 = sub_26AEA3B70(0);
    v13 = sub_26AEA3B70(3);
    v37 = buf;
    v38 = v12;
    v39 = v13;
    sub_26AEA3BC4(2, &v37);
    sub_26AEA3BC4(3, &v37);
    v40 = sub_26AEF48AC;
    v41 = v25;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF48E0;
    v41 = v26;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF49C0;
    v41 = v27;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF49F8;
    v41 = v28;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF4A2C;
    v41 = v29;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF4AC0;
    v41 = v30;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF4AF8;
    v41 = v31;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF4B2C;
    v41 = v32;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEF4BC0;
    v41 = v33;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_26AE88000, oslog, v36, "%s.%s: Passcode challenge failed with error '%s'", buf, 0x20u);
    sub_26AEA3C24(v12);
    sub_26AEA3C24(v13);
    sub_26B07A400();
  }

  else
  {
  }

  v6 = v14[64];
  v7 = v14[62];
  v8 = v14[71];
  v5 = v14[63];
  v2 = MEMORY[0x277D82BD8](oslog);
  (*(v5 + 8))(v6, v7, v2);

  v8(2, 0);

  v9 = v14[73];
  v10 = v14[70];
  MEMORY[0x277D82BD8](v14[74]);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v10);

  v3 = *(v14[51] + 8);

  return v3();
}

uint64_t sub_26AEF2B88()
{
  v44 = v0;
  v16 = *(v0 + 608);
  *(v0 + 408) = v0;
  swift_willThrow();
  v1 = MEMORY[0x277D82BD8](v16);
  v20 = *(v0 + 648);
  v19 = *(v0 + 488);
  v18 = *(v0 + 385);
  v17 = *(v0 + 480);
  MEMORY[0x26D66E1D0](v1);
  *(v0 + 464) = v20;
  sub_26B078540();

  swift_unknownObjectRetain();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v18 & 1;
  *(v21 + 32) = v19;
  MEMORY[0x26D66E1D0](v20);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  oslog = sub_26B078570();
  v38 = sub_26B07A2C0();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AEF47B8;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AEF4928;
  *(v23 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AEF4974;
  *(v29 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEF42E8;
  *(v24 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26AEF4A74;
  *(v32 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AEF4830;
  *(v26 + 24) = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26AEF4B74;
  *(v35 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v36 = v2;

  *v36 = sub_26AEF48AC;
  v36[1] = v27;

  v36[2] = sub_26AEF48E0;
  v36[3] = v28;

  v36[4] = sub_26AEF49C0;
  v36[5] = v29;

  v36[6] = sub_26AEF49F8;
  v36[7] = v30;

  v36[8] = sub_26AEF4A2C;
  v36[9] = v31;

  v36[10] = sub_26AEF4AC0;
  v36[11] = v32;

  v36[12] = sub_26AEF4AF8;
  v36[13] = v33;

  v36[14] = sub_26AEF4B2C;
  v36[15] = v34;

  v36[16] = sub_26AEF4BC0;
  v36[17] = v35;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v38))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v13 = sub_26AEA3B70(0);
    v14 = sub_26AEA3B70(3);
    v39 = buf;
    v40 = v13;
    v41 = v14;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26AEF48AC;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF48E0;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF49C0;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF49F8;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4A2C;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4AC0;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4AF8;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4B2C;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26AEF4BC0;
    v43 = v35;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, oslog, v38, "%s.%s: Passcode challenge failed with error '%s'", buf, 0x20u);
    sub_26AEA3C24(v13);
    sub_26AEA3C24(v14);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v15[64];
  v8 = v15[62];
  v9 = v15[71];
  v6 = v15[63];
  v3 = MEMORY[0x277D82BD8](oslog);
  (*(v6 + 8))(v7, v8, v3);

  v9(2, 0);

  v10 = v15[73];
  v11 = v15[70];
  MEMORY[0x277D82BD8](v15[74]);
  MEMORY[0x277D82BD8](v10);

  MEMORY[0x277D82BD8](v11);

  v4 = *(v15[51] + 8);

  return v4();
}

uint64_t sub_26AEF3A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 72) = a4;
  *(v6 + 49) = a5 & 1;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5 & 1;
  *(v6 + 32) = a6;
  sub_26B07A130();
  *(v6 + 80) = sub_26B07A120();
  v9 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AEF3AFC, v9, v7);
}

uint64_t sub_26AEF3AFC()
{
  v10 = v0;
  v3 = *(v0 + 49);
  v4 = *(v0 + 72);
  *(v0 + 56) = v0;

  *(v0 + 40) = v4;
  *(v0 + 48) = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  v5 = 0uLL;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  ReactiveUIManager.presentedDialog.setter(&v5);

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_26AEF3C18()
{
  sub_26B07A740();
  v0 = sub_26B079D00();
  MEMORY[0x26D66D910](v0);

  sub_26AF02FEC();
  v1 = sub_26B079D00();
  MEMORY[0x26D66D910](v1);

  sub_26B079D00();
  sub_26B07A720();
  sub_26AE9BCC0();
  v2 = sub_26B079D00();
  MEMORY[0x26D66D910](v2);

  sub_26B078640();
  sub_26AEB9F6C();
  return sub_26B079EB0();
}

uint64_t sub_26AEF3D8C()
{
  sub_26B07A740();
  v0 = sub_26B079D00();
  MEMORY[0x26D66D910](v0);

  sub_26AF02FEC();
  v1 = sub_26B079D00();
  MEMORY[0x26D66D910](v1);

  sub_26B079D00();
  sub_26B07A720();
  sub_26AE9BCC0();
  v2 = sub_26B079D00();
  MEMORY[0x26D66D910](v2);

  sub_26B078640();
  sub_26AEB9F6C();
  return sub_26B079EB0();
}

double sub_26AEF3F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = sub_26AEF5660();
    sub_26AFC8798(v10, a3, v5);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      sub_26B07A7B0();
      __break(1u);
    }

    v11 = v6;
    v3 = sub_26AEF5660();
    sub_26AFC87FC(v10, &v11, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

double sub_26AEF4140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v14 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC618);
    sub_26AFC8798(v14, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = sub_26B0781D0();
      v8 = v3;
      MEMORY[0x277D82BD8](a2);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0xF000000000000000;
    }

    v15[0] = v9;
    v15[1] = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC618);
    sub_26AFC87FC(v14, v15, v4);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26AEF4458()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

unint64_t sub_26AEF44D8()
{
  v2 = qword_2803DC5D0;
  if (!qword_2803DC5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF4560()
{
  v2 = qword_2803DD120;
  if (!qword_2803DD120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C8);
    sub_26AEE974C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF4668()
{
  v2 = qword_2803DC5E8;
  if (!qword_2803DC5E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC5E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26AEF46CC()
{
  v2 = qword_2803DC5F0;
  if (!qword_2803DC5F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC5F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AEF4770()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF4BCC()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF4ED8()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

unint64_t sub_26AEF51A4()
{
  v2 = qword_2803DC608;
  if (!qword_2803DC608)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF521C()
{
  v2 = qword_2803DC610;
  if (!qword_2803DC610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF5294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEF53AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AEF558C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C8);
  sub_26AEF44D8();
  sub_26AEF4560();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AEF5660()
{
  v2 = qword_2803DC620[0];
  if (!qword_2803DC620[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_2803DC620);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AEF56C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 255)
  {
    return sub_26AE9FC2C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_26AEF5728()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF5778(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) & 1;
  v10 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEF5888;

  return sub_26AEEF660(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_26AEF5888()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEF59B0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEF5A00(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) & 1;
  v10 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEF5B10;

  return sub_26AEF3A0C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_26AEF5B10()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEF5C38()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AEF5C8C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_26AEF5D0C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AEF5D60(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

__int128 *SoftwareUpdateView.init(header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  v16 = a5;
  v15 = a6;

  *&v13 = a1;
  *(&v13 + 1) = a2;

  *&v14 = a3;
  *(&v14 + 1) = a4;
  sub_26AEF5EA8(&v13, a7);

  result = &v13;
  sub_26AEF5F20();
  return result;
}

void *sub_26AEF5EA8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t SoftwareUpdateView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = &protocol conformance descriptor for SoftwareUpdateContentView<A, B>;
  v23 = 0;
  v22 = 0;
  v12 = a1[2];
  v29 = v12;
  v13 = a1[3];
  v28 = v13;
  v14 = a1[4];
  v15 = a1[5];
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  updated = type metadata accessor for SoftwareUpdateContentView();
  v6 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v19 = &v5 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v6);
  v21 = (&v5 - v7);
  v23 = &v5 - v7;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v22 = v2;

  SoftwareUpdateContentView.init(header:footer:)(v8, v9, v10, v11, v12, v13, v14, v15, v19);
  WitnessTable = swift_getWitnessTable();
  sub_26AE9463C(v19, updated, v21);
  sub_26AEF6128(v19, updated);
  sub_26AEF6558(v21, v19, updated);
  sub_26AE94B4C(v19, updated, v17);
  sub_26AEF6128(v19, updated);
  return sub_26AEF6128(v21, updated);
}

uint64_t sub_26AEF6128(uint64_t a1, int *a2)
{

  v9 = a2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B0789F0();
    (*(*(v2 - 8) + 8))(a1 + v9);
  }

  else
  {
  }

  v7 = a1 + a2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B078B00();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(a1 + a2[18]), *(a1 + a2[18] + 8), *(a1 + a2[18] + 16) & 1);
  v6 = a1 + a2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B079C30();
    (*(*(v4 - 8) + 8))(v6);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AEF642C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26AEF6474(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_26AEF6474(uint64_t result, unint64_t a2)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (a2 & 0xF000000000000007) != 0)
  {
    return sub_26AEF64D8(result, a2);
  }

  return result;
}

uint64_t sub_26AEF64D8(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if (v3 <= 2)
  {
  }

  return result;
}

uint64_t sub_26AEF6558(uint64_t *a1, uint64_t a2, int *a3)
{
  v48 = *a1;
  v49 = *(a1 + 8);

  *a2 = v48;
  *(a2 + 8) = v49 & 1;
  v52 = a3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 16))();
  }

  else
  {
    v47 = *(a1 + v52);

    *(a2 + v52) = v47;
  }

  swift_storeEnumTagMultiPayload();
  v45 = (a2 + a3[14]);
  v46 = (a1 + a3[14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 16))(v45, v46);
  }

  else
  {
    v44 = *v46;

    *v45 = v44;
  }

  swift_storeEnumTagMultiPayload();
  v31 = a2 + a3[15];
  v5 = (a1 + a3[15]);
  v29 = *v5;
  v30 = *(v5 + 8);

  *v31 = v29;
  *(v31 + 8) = v30 & 1;
  v34 = a2 + a3[16];
  v6 = (a1 + a3[16]);
  v32 = *v6;
  v33 = *(v6 + 8);

  *v34 = v32;
  *(v34 + 8) = v33 & 1;
  v37 = a2 + a3[17];
  v7 = (a1 + a3[17]);
  v35 = *v7;
  v36 = *(v7 + 8);
  sub_26AEF6B08();
  *v37 = v35;
  *(v37 + 8) = v36 & 1;
  v41 = a2 + a3[18];
  v8 = a1 + a3[18];
  v38 = *v8;
  v39 = *(v8 + 8);
  v40 = *(v8 + 16);
  sub_26AEF6B48(*v8, v39, v40 & 1);
  *v41 = v38;
  *(v41 + 8) = v39;
  *(v41 + 16) = v40 & 1;
  v42 = (a2 + a3[19]);
  v43 = (a1 + a3[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26B079C30();
    (*(*(v9 - 8) + 16))(v42, v43);
  }

  else
  {
    v28 = *v43;

    *v42 = v28;
  }

  swift_storeEnumTagMultiPayload();
  v10 = a3[20];
  v16 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v17 = *(a1 + v10 + 8);

  *(v16 + 8) = v17;
  v11 = a3[21];
  v18 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v19 = *(a1 + v11 + 8);

  *(v18 + 8) = v19;
  v12 = a3[22];
  v20 = a2 + v12;
  *(a2 + v12) = *(a1 + v12);
  v21 = *(a1 + v12 + 8);

  *(v20 + 8) = v21;
  v13 = a3[23];
  v23 = (a2 + v13);
  v22 = *(a1 + v13);
  v24 = *(a1 + v13 + 8);

  *v23 = v22;
  v23[1] = v24;
  v14 = a3[24];
  v26 = (a2 + v14);
  v25 = *(a1 + v14);
  v27 = *(a1 + v14 + 8);

  result = a2;
  *v26 = v25;
  v26[1] = v27;
  return result;
}

uint64_t sub_26AEF6B48(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26AEF6B90(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_26AEF6B90(uint64_t result, unint64_t a2)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x7FFFFFEFCLL || (a2 & 0xF000000000000007) != 0)
  {
    return sub_26AEF6BF4(result, a2);
  }

  return result;
}

uint64_t sub_26AEF6BF4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if (v3 <= 2)
  {
  }

  return result;
}

__int128 *SoftwareUpdateView.init<>(header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = 0u;
  v10 = 0u;
  v11 = a3;
  v7 = a1;
  v8 = a2;
  SoftwareUpdateView.init(header:footer:)(a1, a2, sub_26AEF6D98, 0, a3, MEMORY[0x277CE1428], v6);
  v9 = v6[0];
  v10 = v6[1];
  sub_26AEF6DF4(&v9, a4);
  result = &v9;
  sub_26AEF6E6C();
  return result;
}

uint64_t sub_26AEF6D98@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

void *sub_26AEF6DF4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

__int128 *SoftwareUpdateView.init<>(footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = 0u;
  v10 = 0u;
  v11 = a3;
  v7 = a1;
  v8 = a2;
  SoftwareUpdateView.init(header:footer:)(sub_26AEF6F74, 0, a1, a2, MEMORY[0x277CE1428], a3, v6);
  v9 = v6[0];
  v10 = v6[1];
  sub_26AEF6FD0(&v9, a4);
  result = &v9;
  sub_26AEF7048();
  return result;
}

uint64_t sub_26AEF6F74@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

void *sub_26AEF6FD0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

double SoftwareUpdateView.init<>()@<D0>(_OWORD *a1@<X8>)
{
  v3[2] = 0u;
  v4 = 0u;
  SoftwareUpdateView.init(header:footer:)(sub_26AEF7130, 0, sub_26AEF718C, 0, MEMORY[0x277CE1428], MEMORY[0x277CE1428], v3);
  v4 = v3[1];
  *a1 = v3[0];
  result = *&v4;
  a1[1] = v4;
  return result;
}

uint64_t sub_26AEF7130@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

uint64_t sub_26AEF718C@<X0>(uint64_t a1@<X8>)
{
  sub_26B079B90();
  v4 = MEMORY[0x277CE1428];
  sub_26AE9463C(v3, MEMORY[0x277CE1428], v3);
  return sub_26AE94B4C(v3, v4, a1);
}

uint64_t sub_26AEF7254()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26AEF72B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEF73F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *sub_26AEF7684(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v3 = a1[3];
  sub_26B078640();
  a2[3] = v3;
  a2[4] = a1[4];
  v4 = a1[5];
  sub_26B078640();
  a2[5] = v4;
  a2[6] = a1[6];
  v5 = a1[7];

  a2[7] = v5;
  v6 = a1[8];

  a2[8] = v6;
  v8 = a1[9];

  a2[9] = v8;
  v10 = a1[10];

  result = a2;
  a2[10] = v10;
  return result;
}

void *sub_26AEF7774(void *a1)
{
  sub_26AEF7684(a1, v4);
  sub_26AEF77B4(a1, v2);
  result = a1;
  sub_26AEF788C();
  return result;
}

void *sub_26AEF77B4(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];
  a2[5] = a1[5];

  a2[6] = a1[6];
  a2[7] = a1[7];

  a2[8] = a1[8];

  a2[9] = a1[9];

  a2[10] = a1[10];

  return a2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AEF788C()
{
}

uint64_t sub_26AEF78F4()
{
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_26AEF7980(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8);
  sub_26B078A10();
  sub_26AEF7A0C(&v4);
  return v2 & 1;
}

uint64_t sub_26AEF7980(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_26AEF79D8(*a1, v4 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26AEF79D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26AEF7A44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26AEF7A78()
{
  v2 = *(v0 + 88);
  sub_26AEF79D8(v2, *(v0 + 96) & 1);
  return v2;
}

uint64_t sub_26AEF7AB8(uint64_t a1, char a2)
{
  sub_26AEF79D8(a1, a2 & 1);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  sub_26AEF7A44(v3, v4 & 1);
  return sub_26AEF7A44(a1, a2 & 1);
}

void *sub_26AEF7B1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x61uLL);
  v8 = a1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[11] = v6[11];
  LOBYTE(__b[12]) = v7 & 1;
  sub_26AEF7684(a1, v6);
  memcpy(__b, a1, 0x58uLL);
  memcpy(v10, __b, 0x61uLL);
  sub_26AEF86C0(v10, v5);
  sub_26AEF788C();
  sub_26AEF87E8(__b);
  return memcpy(a2, v10, 0x61uLL);
}

uint64_t sub_26AEF7C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v8 = a1;
  v3 = v2;
  v4 = v8;
  v42 = v3;
  v49 = MEMORY[0x277CDE668];
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v25 = 0;
  v46 = sub_26B078FC0();
  v38 = *(v46 - 8);
  v39 = v46 - 8;
  v9 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v40 = &v8 - v9;
  v23 = sub_26B078A00();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v22 = &v8 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0);
  v11 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v27 = &v8 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B8);
  v12 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v8 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C0);
  v13 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v37 = &v8 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C8);
  v14 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v41 = &v8 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D0);
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v15 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v53 = &v8 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D8);
  v17 = *(*(v56 - 8) + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v58 = &v8 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v59 = &v8 - v18;
  v70 = &v8 - v18;
  v69 = v4;
  v68 = v42;
  (*(v20 + 104))(v6);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0);
  sub_26AEF8864();
  sub_26B079420();
  (*(v20 + 8))(v22, v23);
  v26 = sub_26AEF88EC();
  sub_26AEAABD4();
  sub_26B079600();
  sub_26AEF8A1C(v27);
  v29 = sub_26AEF835C();
  sub_26AEF8B10();
  sub_26B0794D0();

  sub_26AEF8BB4(v30);
  v31 = __dst;
  v43 = 88;
  memcpy(__dst, v42, sizeof(__dst));
  sub_26AEF7684(__dst, v67);
  v74 = __dst[7];
  sub_26AEF8CA8(&v74, &v66);
  sub_26AEF788C();
  v36 = &v65;
  v65 = v74;
  v34 = sub_26AEF8CE0();
  v33 = MEMORY[0x277CE0F78];
  v35 = MEMORY[0x277CE0F60];
  sub_26AEF8488();
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AEF8E3C(v37);
  sub_26AEF84B0();
  v47 = sub_26AEF8F6C();
  v48 = sub_26AEF909C();
  sub_26B079400();
  (*(v38 + 8))(v40, v46);
  sub_26AEF911C(v41);
  v44 = v71;
  memcpy(v71, v42, v43);
  sub_26AEF7684(v44, v64);
  v50 = v72;
  sub_26AEF788C();
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v63 = v48;
  swift_getOpaqueTypeConformance2();
  sub_26B079660();
  (*(v51 + 8))(v53, v54);
  v57 = sub_26AEF9274();
  sub_26AE9463C(v58, v56, v59);
  sub_26AEF9390(v58);
  sub_26AEF93F8(v59, v58);
  sub_26AE94B4C(v58, v56, v55);
  sub_26AEF9390(v58);
  return sub_26AEF9390(v59);
}

uint64_t sub_26AEF835C()
{
  v12 = v0;
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  sub_26AEF7980(&v15, v11);
  v9 = v15;
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8);
  sub_26B078A10();
  sub_26AEF7A0C(&v15);
  if (v8)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_26AEF7684(__dst, v6);
    v3 = __dst[8];

    sub_26AEF788C();
    return v3;
  }

  else
  {
    memcpy(v14, __src, sizeof(v14));
    sub_26AEF7684(v14, v7);
    v2 = v14[10];

    sub_26AEF788C();
    return v2;
  }
}

uint64_t sub_26AEF8564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_26B078D30();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = sub_26B078D10();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6 & 1;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_26AEF86C0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26B078640();
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 56) = v5;
  v6 = *(a1 + 64);

  *(a2 + 64) = v6;
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);

  *(a2 + 80) = v8;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  sub_26AEF79D8(v10, v11 & 1);
  result = a2;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11 & 1;
  return result;
}

uint64_t sub_26AEF87E8(uint64_t a1)
{

  sub_26AEF7A44(*(a1 + 88), *(a1 + 96) & 1);
  return a1;
}

unint64_t sub_26AEF8864()
{
  v2 = qword_2803DC6E8;
  if (!qword_2803DC6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC6E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF88EC()
{
  v2 = qword_2803DC6F0;
  if (!qword_2803DC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6B0);
    sub_26AEF8864();
    sub_26AEF8994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC6F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF8994()
{
  v2 = qword_2803DC6F8;
  if (!qword_2803DC6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC6F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF8A1C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AEF8B10()
{
  v2 = qword_2803DC708;
  if (!qword_2803DC708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6B8);
    sub_26AEF88EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF8BB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

void *sub_26AEF8CA8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_26AEF8CE0()
{
  v2 = qword_2803DC710;
  if (!qword_2803DC710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6C0);
    sub_26AEF8B10();
    sub_26AEF8D88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF8D88()
{
  v2 = qword_2803DE630;
  if (!qword_2803DE630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCC40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE630);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF8E3C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C0);

  return a1;
}

unint64_t sub_26AEF8F6C()
{
  v2 = qword_2803DC718;
  if (!qword_2803DC718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6C8);
    sub_26AEF8CE0();
    sub_26AEF9014();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF9014()
{
  v2 = qword_2803DD110;
  if (!qword_2803DD110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEF909C()
{
  v2 = qword_2803DC728;
  if (!qword_2803DC728)
  {
    sub_26B078FC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC728);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF911C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6E0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6B0) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6C8);

  return a1;
}

unint64_t sub_26AEF9274()
{
  v2 = qword_2803DC730;
  if (!qword_2803DC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC6C8);
    sub_26B078FC0();
    sub_26AEF8F6C();
    sub_26AEF909C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC730);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEF9390(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AEF93F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6D8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AEF94E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEF95F8(uint64_t result, int a2, int a3)
{
  v3 = (result + 97);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 96) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t Observable<>.observe<A, B, C>(_:of:at:using:sink:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a1;
  v40[1] = a2;
  v77 = a3;
  v50 = a4;
  v71 = a5;
  v72 = a6;
  v60 = a7;
  v79 = sub_26AEFA7FC;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v89 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v42 = *a1;
  v45 = *a3;
  v40[2] = 0;
  v65 = sub_26B078360();
  v61 = *(v65 - 8);
  v62 = v65 - 8;
  v53 = v61;
  v54 = *(v61 + 64);
  v41 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v64 = v40 - v41;
  v8 = *MEMORY[0x277D84DE8];
  v44 = v42;
  v75 = *(v42 + v8);
  v95 = v75;
  v73 = *(v75 - 8);
  v74 = v75 - 8;
  v55 = v73;
  v56 = *(v73 + 64);
  v43 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v67 = v40 - v43;
  MEMORY[0x28223BE20](v10);
  v76 = v40 - v11;
  v94 = v40 - v11;
  v93 = v68;
  v13 = *v12;
  v46 = 8;
  v58 = *(v44 + v13 + 8);
  v92 = v58;
  v91 = v14;
  v57 = *(v45 + *v12);
  v90 = v57;
  v89 = v15;
  v59 = *(v45 + *v12 + 8);
  v88 = v59;
  v87 = v16;
  v85 = v17;
  v86 = v18;
  v84 = v7;
  v48 = &v83;
  v83 = v14;
  type metadata accessor for NSKeyValueObservingOptions();
  v19 = sub_26B07A760();
  v20 = v46;
  *v21 = 4;
  v21[1] = v20;
  v21[2] = 1;
  sub_26AEA3B2C();
  v47 = v19;
  sub_26AE9A844();
  sub_26B07A4C0();
  v78 = v82;
  v52 = *(v73 + 16);
  v51 = v73 + 16;
  v52(v76, v49, v75);
  (*(v61 + 16))(v64, v50, v65);
  v52(v67, v76, v75);

  sub_26AEFA5DC(v71);
  v63 = (*(v53 + 80) + 56) & ~*(v53 + 80);
  v66 = (v63 + v54 + *(v55 + 80)) & ~*(v55 + 80);
  v69 = (v66 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v57;
  v24 = v58;
  v25 = v59;
  v26 = v60;
  v27 = v61;
  v28 = v63;
  v29 = v64;
  v30 = v65;
  v80 = v22;
  v22[2] = v75;
  v22[3] = v23;
  v22[4] = v24;
  v22[5] = v25;
  v22[6] = v26;
  (*(v27 + 32))(v22 + v28, v29, v30);
  (*(v73 + 32))(v80 + v66, v67, v75);
  v31 = v70;
  v32 = v71;
  v33 = v72;
  v34 = v73;
  v35 = v75;
  v36 = v80;
  v37 = v76;
  *(v80 + v69) = v68;
  v38 = (v36 + v31);
  *v38 = v32;
  v38[1] = v33;
  (*(v34 + 8))(v37, v35);
  v81 = sub_26B078170();

  return v81;
}

uint64_t sub_26AEF9EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v78 = a5;
  v81 = a6;
  v82 = a7;
  v59 = a8;
  v61 = a9;
  v62 = a10;
  v58 = MEMORY[0x277D85700];
  v85 = &unk_26B08A170;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v97 = a8;
  v96 = a9;
  v10 = *a5;
  v44 = MEMORY[0x277D84DE8];
  v11 = *MEMORY[0x277D84DE8];
  v83 = 0;
  v47 = v10;
  v77 = *(v10 + v11);
  v95 = v77;
  v73 = *(v77 - 8);
  v74 = v77 - 8;
  v55 = v73;
  v56 = *(v73 + 64);
  v41 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v76 = &v40 - v41;
  v72 = sub_26B078360();
  v68 = *(v72 - 8);
  v69 = v72 - 8;
  v53 = v68;
  v54 = *(v68 + 64);
  v42 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v71 = &v40 - v42;
  v67 = sub_26B078160();
  v63 = *(v67 - 8);
  v64 = v67 - 8;
  v51 = v63;
  v52 = *(v63 + 64);
  v43 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v66 = &v40 - v43;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v84 = &v40 - v45;
  v94 = *v46;
  v93 = v12;
  v92 = v13;
  v91 = v14;
  v90 = v15;
  v60 = *(v47 + *v16 + 8);
  v89 = v60;
  v87 = v17;
  v88 = v18;
  v19 = sub_26B07A160();
  (*(*(v19 - 8) + 56))(v84, 1);
  (*(v63 + 16))(v66, v48, v67);
  (*(v68 + 16))(v71, v49, v72);
  (*(v73 + 16))(v76, v50, v77);

  sub_26AEFA5DC(v81);
  sub_26B07A130();
  v57 = sub_26B07A120();
  v65 = (*(v51 + 80) + 72) & ~*(v51 + 80);
  v70 = (v65 + v52 + *(v53 + 80)) & ~*(v53 + 80);
  v75 = (v70 + v54 + *(v55 + 80)) & ~*(v55 + 80);
  v79 = (v75 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v58;
  v22 = v59;
  v23 = v60;
  v24 = v61;
  v25 = v62;
  v26 = v63;
  v27 = v65;
  v28 = v66;
  v29 = v67;
  v30 = v77;
  v86 = v20;
  v20[2] = v57;
  v20[3] = v21;
  v20[4] = v30;
  v20[5] = v22;
  v20[6] = v23;
  v20[7] = v24;
  v20[8] = v25;
  (*(v26 + 32))(v20 + v27, v28, v29);
  (*(v68 + 32))(v86 + v70, v71, v72);
  (*(v73 + 32))(v86 + v75, v76, v77);
  v31 = v80;
  v32 = v81;
  v33 = v82;
  v34 = v83;
  v35 = v84;
  v36 = v85;
  v37 = v86;
  *(v86 + v79) = v78;
  v38 = (v37 + v31);
  *v38 = v32;
  v38[1] = v33;
  sub_26AEBC0C4(v34, v34, v35, v36, v37, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26AEFA5DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26AEFA610()
{
  v6 = *(v0 + 16);
  v3 = *(sub_26B078360() - 8);
  v1 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v4 = *(v6 - 8);
  v5 = (v1 + *(v3 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v7 = (((v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  (*(v4 + 8))(v0 + v5, v6);

  if (*(v0 + v7))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEFA7FC(uint64_t *a1, uint64_t a2)
{
  v7 = v2[2];
  v10 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v13 = *(sub_26B078360() - 8);
  v3 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v14 = *(v7 - 8);
  v4 = (v3 + *(v13 + 64) + *(v14 + 80)) & ~*(v14 + 80);
  v5 = (v4 + *(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_26AEF9EB0(a1, a2, v2 + v3, v2 + v4, *(v2 + v5), *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v10, v8, v9);
}

uint64_t sub_26AEFA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v20;
  v8[15] = v19;
  v8[14] = v18;
  v8[13] = a8;
  v8[12] = a7;
  v8[11] = a6;
  v8[10] = a5;
  v8[9] = a4;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[17] = sub_26B07A430();
  v8[18] = swift_task_alloc();
  v8[19] = *(v19 - 8);
  v8[20] = swift_task_alloc();
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[2] = a8;
  v8[3] = v18;
  sub_26B07A130();
  v8[21] = sub_26B07A120();
  v16 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AEFAB88, v16, v9);
}

uint64_t sub_26AEFAB88()
{
  *(v0 + 32) = v0;
  sub_26B078160();
  if (sub_26B078150())
  {
    sub_26B078340();
  }

  else
  {
    v5 = v7[18];
    v6 = v7[15];
    v4 = v7[19];
    sub_26B078330();
    sub_26B078140();
    if ((*(v4 + 48))(v5, 1, v6) == 1)
    {
      sub_26AEFB520(v7[18], v7[15]);
    }

    else
    {
      v3 = v7[13];
      (*(v7[19] + 32))(v7[20], v7[18], v7[15]);
      sub_26AEFA5DC(v3);
      if (v3)
      {
        (v7[13])(v7[20]);
      }

      (*(v7[19] + 8))(v7[20], v7[15]);
    }
  }

  v1 = *(v7[4] + 8);

  return v1();
}

uint64_t sub_26AEFAE98()
{
  v11 = *(v0 + 32);
  v5 = sub_26B078160();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v2 = v4 + *(v3 + 64);
  v8 = sub_26B078360();
  v6 = *(v8 - 8);
  v7 = (v2 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v11 - 8);
  v10 = (v7 + *(v6 + 64) + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (((v10 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v5);
  (*(v6 + 8))(v0 + v7, v8);
  (*(v9 + 8))(v0 + v10, v11);

  if (*(v0 + v12))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEFB15C(uint64_t a1)
{
  v11 = v2;
  *(v2 + 16) = v2;
  v9 = v1[4];
  v7 = *(sub_26B078160() - 8);
  v14 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v8 = v14 + *(v7 + 64);
  v3 = sub_26B078360();
  v15 = (v8 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v10 = *(v9 - 8);
  v16 = (v15 + *(*(v3 - 8) + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v4 = (v16 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v17 = *(v1 + v4);
  v18 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v11 + 24) = v5;
  *v5 = *(v11 + 16);
  v5[1] = sub_26AEFB3F8;

  return sub_26AEFA968(a1, v12, v13, v1 + v14, v1 + v15, v1 + v16, v17, v18);
}

uint64_t sub_26AEFB3F8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEFB520(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_26AEFB5DC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AEFB68C(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AEFB6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v31 = a1;
  v44 = a2;
  LODWORD(v38) = a3;
  v34 = MEMORY[0x277D85700];
  v43 = 0;
  v37 = sub_26AEFC08C;
  v36 = sub_26AEFC104;
  v40 = sub_26AEFC8F4;
  v42 = sub_26AEFD7E8;
  v56 = MEMORY[0x277CDEDF8];
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v28 = 0;
  v21 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v27 = &v20 - v21;
  v4 = sub_26B079DE0();
  v22 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v25 = &v20 - v22;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC738);
  v57 = *(v63 - 8);
  v58 = v63 - 8;
  v23 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v61 = &v20 - v23;
  v24 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v62 = &v20 - v24;
  v85 = &v20 - v24;
  v84 = v7;
  v82 = v8;
  HIDWORD(v38) = 1;
  v83 = v9 & 1;
  sub_26B079D00();
  sub_26B079D80();
  v26 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v26);
  sub_26AEFB5C4();
  v80[2] = 0;
  v80[3] = 0;
  v81 = *(&v38 + 3) & 0x100;
  v10 = sub_26B079E40();
  v47 = v80;
  v80[0] = v10;
  v80[1] = v11;

  v29 = sub_26B07A130();
  v30 = sub_26B07A120();
  v32 = 7;
  v12 = swift_allocObject();
  v13 = v34;
  v14 = v38;
  v15 = BYTE4(v38);
  v16 = v44;
  v35 = v12;
  *(v12 + 16) = v30;
  *(v12 + 24) = v13;
  *(v12 + 32) = v16;
  *(v12 + 40) = v14 & 1 & v15;
  v33 = sub_26B07A120();
  v17 = swift_allocObject();
  v18 = v34;
  *(v17 + 16) = v33;
  *(v17 + 24) = v18;
  sub_26B0799F0();
  v45 = v77;
  v46 = v78;
  v39 = v79;

  v41 = &v66;
  v67 = v44;
  v68 = v38 & 1 & BYTE4(v38);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC740);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748);
  v52 = sub_26AEFD9B8();
  v53 = sub_26AE95974();
  v54 = sub_26AEFDA40();
  v49 = MEMORY[0x277D837D0];
  v51 = MEMORY[0x277CE0BD8];
  v55 = MEMORY[0x277CE0BC8];
  sub_26B0795E0();

  sub_26AE9BCC0();
  v69 = v48;
  v70 = v49;
  v71 = v50;
  v72 = v51;
  v73 = v52;
  v74 = v53;
  v75 = v54;
  v76 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v61, v63, v62);
  v65 = *(v57 + 8);
  v64 = v57 + 8;
  v65(v61, v63);
  (*(v57 + 16))(v61, v62, v63);
  sub_26AE94B4C(v61, v63, v59);
  v65(v61, v63);
  return (v65)(v62, v63);
}

uint64_t sub_26AEFBE7C@<X0>(uint64_t a1@<X2>, char a2@<W3>, _BYTE *a3@<X8>)
{
  v11 = a1;
  v12 = a2 & 1;

  v9 = a1;
  v10 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(v7);
  if (v8 == 255)
  {
  }

  else
  {
    if (v8 == 4)
    {

      *a3 = 1;
      return result;
    }

    sub_26AEA00D4(v7[0], v7[1], v7[2], v7[3], v7[4], v8);
  }

  *a3 = 0;
  return result;
}

uint64_t sub_26AEFC044()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26AEFC110@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v46 = a1;
  LODWORD(v47) = a2;
  v49 = sub_26AEFE048;
  v32 = sub_26AEFE098;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v67 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758);
  v33 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v48 = &v26[-v33 - 5];
  v45 = 0;
  v34 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v44 = &v26[-v34 - 5];
  v4 = sub_26B079DE0();
  v35 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v42 = &v26[-v35 - 5];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v36 = (v55[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v37 = &v26[-v36 - 5];
  v38 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v39 = &v26[-v38 - 5];
  v40 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v60 = &v26[-v40 - 5];
  v41 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v53 = &v26[-v41 - 5];
  v72 = &v26[-v41 - 5];
  v70 = v11;
  HIDWORD(v47) = 1;
  v71 = v12 & 1;
  sub_26B079D00();
  sub_26B079D80();
  v43 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v43);
  sub_26AEFB5C4();
  v68[2] = 0;
  v68[3] = 0;
  v69 = *(&v47 + 3) & 0x100;
  v13 = sub_26B079E40();
  v51 = v68;
  v68[0] = v13;
  v68[1] = v14;
  sub_26B078970();
  v15 = sub_26B078980();
  (*(*(v15 - 8) + 56))(v48, 0, HIDWORD(v47));

  v16 = swift_allocObject();
  v17 = v47;
  v18 = BYTE4(v47);
  v50 = v16;
  *(v16 + 16) = v46;
  *(v16 + 24) = v17 & 1 & v18;
  v52 = sub_26AE95974();
  sub_26B079910();
  v54 = sub_26AE9C224();
  sub_26AE9463C(v60, v57, v53);
  v58 = v55[1];
  v59 = v55 + 1;
  v58(v60, v57);
  v67 = v60;
  *&v26[1] = 1;
  sub_26B079D00();
  sub_26B079D80();
  v25 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v25);
  sub_26AEFB5C4();
  v65[2] = 0;
  v65[3] = 0;
  v66 = *v26 & 0x100;
  v19 = sub_26B079E40();
  v27 = v65;
  v65[0] = v19;
  v65[1] = v20;

  v21 = swift_allocObject();
  v22 = v47;
  v23 = v26[1];
  *(v21 + 16) = v46;
  *(v21 + 24) = v22 & 1 & v23;
  sub_26B079920();
  sub_26AE9463C(v39, v57, v60);
  v58(v39, v57);
  v29 = v55[2];
  v28 = v55 + 2;
  v29(v39, v53, v57);
  v30 = v64;
  v64[0] = v39;
  v29(v37, v60, v57);
  v64[1] = v37;
  v63[0] = v57;
  v63[1] = v57;
  v61 = v54;
  v62 = v54;
  sub_26AFD49C4(v30, 2uLL, v63, v31);
  v58(v37, v57);
  v58(v39, v57);
  v58(v60, v57);
  return (v58)(v53, v57);
}

uint64_t sub_26AEFC904(uint64_t a1, int a2)
{
  v51 = a2;
  v50 = a1;
  v82 = 0;
  v58 = 0;
  v81 = 0;
  v67 = 0;
  v66 = 0;
  v48 = 0;
  v49 = a2;
  v52 = sub_26B078580();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x28223BE20](v50);
  v55 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v3;
  v82 = v4 & 1;
  sub_26B078550();
  v60 = sub_26B078570();
  v56 = v60;
  v59 = sub_26B07A2A0();
  v57 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v61 = sub_26B07A760();
  if (os_log_type_enabled(v60, v59))
  {
    v5 = v48;
    v39 = sub_26B07A420();
    v35 = v39;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v37 = 0;
    v40 = sub_26AEA3B70(0);
    v38 = v40;
    v41 = sub_26AEA3B70(v37);
    v65 = v39;
    v64 = v40;
    v63 = v41;
    v42 = 0;
    v43 = &v65;
    sub_26AEA3BC4(0, &v65);
    sub_26AEA3BC4(v42, v43);
    v62 = v61;
    v44 = v8;
    MEMORY[0x28223BE20](v8);
    v45 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v64;
    v8[-2] = &v63;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v47 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v56, v57, "User Action: Clicked 'Cancel' on the Remove Security Response dialog.", v35, 2u);
      v33 = 0;
      sub_26AEA3C24(v38);
      sub_26AEA3C24(v41);
      sub_26B07A400();

      v34 = v47;
    }
  }

  else
  {

    v34 = v48;
  }

  (*(v54 + 8))(v55, v52);

  v79 = v50;
  v80 = v49 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  v26 = v78;

  ReactiveUIManager.presentedDialog.getter(v76);
  v27 = v76[0];
  v28 = v76[1];
  v29 = v76[2];
  v30 = v76[3];
  v31 = v76[4];
  v32 = v77;
  if (v77 != 255)
  {
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v13 = v24;
    v14 = v23;
    v15 = v22;
    v16 = v21;
    v17 = v20;
    v18 = v19;
    if (v24 == 4)
    {
      v11 = v18;
      v12 = v17;
      v10 = v17;
      v9 = v18;
      v66 = v18;
      v67 = v17;

      v9(2);
    }

    else
    {
      sub_26AEA00D4(v18, v17, v16, v15, v14, v13);
    }
  }

  v74 = v50;
  v75 = v49 & 1;
  sub_26B078A10();
  v8[1] = v73;

  v68 = 0uLL;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = -1;
  ReactiveUIManager.presentedDialog.setter(&v68);
}

uint64_t sub_26AEFD078(uint64_t a1, int a2)
{
  v51 = a2;
  v50 = a1;
  v82 = 0;
  v58 = 0;
  v81 = 0;
  v67 = 0;
  v66 = 0;
  v48 = 0;
  v49 = a2;
  v52 = sub_26B078580();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x28223BE20](v50);
  v55 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v3;
  v82 = v4 & 1;
  sub_26B078550();
  v60 = sub_26B078570();
  v56 = v60;
  v59 = sub_26B07A2A0();
  v57 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v61 = sub_26B07A760();
  if (os_log_type_enabled(v60, v59))
  {
    v5 = v48;
    v39 = sub_26B07A420();
    v35 = v39;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v37 = 0;
    v40 = sub_26AEA3B70(0);
    v38 = v40;
    v41 = sub_26AEA3B70(v37);
    v65 = v39;
    v64 = v40;
    v63 = v41;
    v42 = 0;
    v43 = &v65;
    sub_26AEA3BC4(0, &v65);
    sub_26AEA3BC4(v42, v43);
    v62 = v61;
    v44 = v8;
    MEMORY[0x28223BE20](v8);
    v45 = &v8[-6];
    v8[-4] = v6;
    v8[-3] = &v64;
    v8[-2] = &v63;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v47 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v56, v57, "User Action: Clicked 'Restart Now' on the Remove Security Response dialog.", v35, 2u);
      v33 = 0;
      sub_26AEA3C24(v38);
      sub_26AEA3C24(v41);
      sub_26B07A400();

      v34 = v47;
    }
  }

  else
  {

    v34 = v48;
  }

  (*(v54 + 8))(v55, v52);

  v79 = v50;
  v80 = v49 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  v26 = v78;

  ReactiveUIManager.presentedDialog.getter(v76);
  v27 = v76[0];
  v28 = v76[1];
  v29 = v76[2];
  v30 = v76[3];
  v31 = v76[4];
  v32 = v77;
  if (v77 != 255)
  {
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v13 = v24;
    v14 = v23;
    v15 = v22;
    v16 = v21;
    v17 = v20;
    v18 = v19;
    if (v24 == 4)
    {
      v11 = v18;
      v12 = v17;
      v10 = v17;
      v9 = v18;
      v66 = v18;
      v67 = v17;

      v9(0);
    }

    else
    {
      sub_26AEA00D4(v18, v17, v16, v15, v14, v13);
    }
  }

  v74 = v50;
  v75 = v49 & 1;
  sub_26B078A10();
  v8[1] = v73;

  v68 = 0uLL;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = -1;
  ReactiveUIManager.presentedDialog.setter(&v68);
}

uint64_t sub_26AEFD7E8@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

unint64_t sub_26AEFD9B8()
{
  v2 = qword_2803DC750;
  if (!qword_2803DC750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFDA40()
{
  v2 = qword_2803DCB70;
  if (!qword_2803DCB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFDAC8()
{
  swift_getKeyPath();
  sub_26B078A30();

  sub_26AEFDFDC();
  return v1;
}

uint64_t sub_26AEFDBB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEFDCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26AEFDEA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC740);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
  sub_26AEFD9B8();
  sub_26AE95974();
  sub_26AEFDA40();
  return swift_getOpaqueTypeConformance2();
}

void *sub_26AEFE128(void *a1)
{
  sub_26AEF7684(a1, v4);
  sub_26AEF77B4(a1, v2);
  result = a1;
  sub_26AEF788C();
  return result;
}

uint64_t sub_26AEFE168()
{
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_26AEF7980(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8);
  sub_26B078A10();
  sub_26AEF7A0C(&v4);
  return v2 & 1;
}

uint64_t sub_26AEFE1F4()
{
  v2 = *(v0 + 88);
  sub_26AEF79D8(v2, *(v0 + 96) & 1);
  return v2;
}

uint64_t sub_26AEFE234(uint64_t a1, char a2)
{
  sub_26AEF79D8(a1, a2 & 1);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  sub_26AEF7A44(v3, v4 & 1);
  return sub_26AEF7A44(a1, a2 & 1);
}

void *sub_26AEFE298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x61uLL);
  v8 = a1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[11] = v6[11];
  LOBYTE(__b[12]) = v7 & 1;
  sub_26AEF7684(a1, v6);
  memcpy(__b, a1, 0x58uLL);
  memcpy(v10, __b, 0x61uLL);
  sub_26AEFF050(v10, v5);
  sub_26AEF788C();
  sub_26AEFF178(__b);
  return memcpy(a2, v10, 0x61uLL);
}

uint64_t sub_26AEFE37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = a1;
  v3 = v2;
  v82 = v3;
  v77 = MEMORY[0x277CDE668];
  v30 = MEMORY[0x277CE0C08];
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v65 = 0;
  v31 = (*(*(sub_26B078E30() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = v23 - v31;
  v33 = sub_26B079A10();
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v35 = v23 - v34;
  v74 = sub_26B0790F0();
  v69 = *(v74 - 8);
  v70 = v74 - 8;
  v36 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v71 = v23 - v36;
  v63 = sub_26B078A00();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v37 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v62 = v23 - v37;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC760);
  v38 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v68 = v23 - v38;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC768);
  v39 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v72 = v23 - v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC770);
  v83 = *(v86 - 8);
  v84 = v86 - 8;
  v40 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v85 = v23 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC778);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v78 = v23 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC780);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v47 = v23 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC788);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v50 = v23 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC790);
  v55 = *(*(v51 - 8) + 64);
  v52 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v53 = v23 - v52;
  v54 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v56 = v23 - v54;
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v58 = v23 - v57;
  v100 = v23 - v57;
  v99 = a1;
  v98 = v82;
  (*(v60 + 104))(v7);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC798);
  sub_26AEFF1F4();
  sub_26B079420();
  (*(v60 + 8))(v62, v63);
  v66 = sub_26AEFF27C();
  v8 = sub_26AEAABD4();
  v67 = &v15;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
  v19 = v8;
  v20 = v9;
  v21 = v64;
  v22 = v66;
  v80 = 0;
  sub_26B079600();
  sub_26AEFF324(v68);
  sub_26AEFEDB0();
  v75 = sub_26AEFF418();
  v76 = sub_26AEFF4BC();
  sub_26B079400();
  (*(v69 + 8))(v71, v74);
  sub_26AEFF53C(v72);
  sub_26B0791F0();
  v79 = v10;
  v97[2] = v73;
  v97[3] = v74;
  v97[4] = v75;
  v97[5] = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26B0793D0();
  v11 = v82;
  (*(v83 + 8))(v85, v86);
  v12 = v11[11];
  v87 = &v103;
  v103 = v12;
  v104 = *(v11 + 96);
  sub_26AEF7980(&v103, v97);
  v95 = v103;
  v96 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8);
  sub_26B078A10();
  v88 = v94;
  sub_26AEF7A0C(v87);
  if (v88)
  {
    v25 = __dst;
    memcpy(__dst, v82, sizeof(__dst));
    sub_26AEF7684(__dst, v89);
    v26 = __dst[8];

    sub_26AEF788C();
    v27 = v26;
  }

  else
  {
    v23[8] = v102;
    memcpy(v102, v82, sizeof(v102));
    sub_26AEF7684(v102, v93);
    v24 = v102[10];

    sub_26AEF788C();
    v27 = v24;
  }

  v23[0] = v27;
  v92[1] = v86;
  v92[2] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26B0794D0();

  (*(v42 + 8))(v78, v41);
  v13 = sub_26AEFEDC8();
  v23[4] = v92;
  v92[0] = v13;
  v23[2] = sub_26AEFF630();
  v23[1] = MEMORY[0x277CE0F78];
  v23[3] = MEMORY[0x277CE0F60];
  sub_26AEF8488();
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AEFF7A0(v47);
  sub_26AEFEEF4(v32);
  sub_26B079A00();
  v23[5] = sub_26AEFF844();
  v23[6] = sub_26AEFF8EC();
  v91 = sub_26AEFEF60();
  v90 = v91;
  sub_26B0796F0();
  sub_26AEFF96C(v35);
  sub_26AEFF9C8(v50);
  v23[7] = sub_26AEFFA94();
  sub_26AE9463C(v56, v51, v58);
  sub_26AEFFBC4(v56);
  sub_26AEFFCEC(v58, v53);
  sub_26AE94B4C(v53, v51, v28);
  sub_26AEFFBC4(v53);
  return sub_26AEFFBC4(v58);
}

uint64_t sub_26AEFEDC8()
{
  v12 = v0;
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  sub_26AEF7980(&v15, v11);
  v9 = v15;
  v10 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC6A8);
  sub_26B078A10();
  sub_26AEF7A0C(&v15);
  if (v8)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_26AEF7684(__dst, v6);
    v3 = __dst[7];

    sub_26AEF788C();
    return v3;
  }

  else
  {
    memcpy(v14, __src, sizeof(v14));
    sub_26AEF7684(v14, v7);
    v2 = v14[9];

    sub_26AEF788C();
    return v2;
  }
}

uint64_t sub_26AEFEEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CE0118];
  v1 = sub_26B078E30();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_26AEFF050(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26B078640();
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 56) = v5;
  v6 = *(a1 + 64);

  *(a2 + 64) = v6;
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);

  *(a2 + 80) = v8;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  sub_26AEF79D8(v10, v11 & 1);
  result = a2;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11 & 1;
  return result;
}

uint64_t sub_26AEFF178(uint64_t a1)
{

  sub_26AEF7A44(*(a1 + 88), *(a1 + 96) & 1);
  return a1;
}

unint64_t sub_26AEFF1F4()
{
  v2 = qword_2803DC7A0;
  if (!qword_2803DC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC798);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFF27C()
{
  v2 = qword_2803DC7A8;
  if (!qword_2803DC7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC760);
    sub_26AEFF1F4();
    sub_26AEF8994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFF324(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC798);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC760) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AEFF418()
{
  v2 = qword_2803DC7B0;
  if (!qword_2803DC7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC768);
    sub_26AEFF27C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFF4BC()
{
  v2 = qword_2803DC7B8;
  if (!qword_2803DC7B8)
  {
    sub_26B0790F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFF53C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC798);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC760) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AEFF630()
{
  v2 = qword_2803DC7C0;
  if (!qword_2803DC7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC768);
    sub_26B0790F0();
    sub_26AEFF418();
    sub_26AEFF4BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26AEF8D88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFF7A0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC778);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC780);

  return a1;
}

unint64_t sub_26AEFF844()
{
  v2 = qword_2803DC7C8;
  if (!qword_2803DC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC788);
    sub_26AEFF630();
    sub_26AEF9014();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFF8EC()
{
  v2 = qword_2803DC7D0;
  if (!qword_2803DC7D0)
  {
    sub_26B079A10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFF96C(uint64_t a1)
{
  v1 = sub_26B078E30();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AEFF9C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC778);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC780);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC788);

  return a1;
}

unint64_t sub_26AEFFA94()
{
  v2 = qword_2803DC7D8;
  if (!qword_2803DC7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC790);
    sub_26AEFF844();
    sub_26AEFFB3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEFFB3C()
{
  v2 = qword_2803DC7E0;
  if (!qword_2803DC7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC7E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC7E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEFFBC4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC778);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC780);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC788);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC790) + 36);
  v2 = sub_26B078E30();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AEFFCEC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC778);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC780) + 36);
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v9 = *(a1 + v7 + 8);

  *(a2 + v7 + 8) = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC788) + 36);
  v11 = *(a1 + v10);

  v3 = a2 + v10;
  *v3 = v11;
  *(v3 + 8) = *(a1 + v10 + 8);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC790) + 36);
  v4 = sub_26B078E30();
  (*(*(v4 - 8) + 16))();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC7E8);
  result = a2;
  *(a2 + v12 + *(v5 + 36)) = *(a1 + v12 + *(v5 + 36));
  return result;
}

uint64_t sub_26AEFFED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEFFFF0(uint64_t result, int a2, int a3)
{
  v3 = (result + 97);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 96) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t DeepLinkParameters.path.getter()
{
  sub_26B078640();
  sub_26AF0080C();
  sub_26B079CC0();
  sub_26AE9BCC0();

  return v1;
}

uint64_t DeepLinkParameters.showLatestUpdatePane.getter()
{
  v20 = v0;
  sub_26B078640();
  v17 = sub_26AF0080C();
  v18 = v1;
  sub_26B079CC0();
  sub_26AE9BCC0();

  if (v19)
  {
    v9 = sub_26B079E90();
    v10 = v2;

    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  sub_26B078640();
  v7 = sub_26B079D00();
  v8 = v3;
  sub_26B078640();
  v14[0] = v11;
  v14[1] = v12;
  v15 = v7;
  v16 = v8;
  if (!v12)
  {
    if (!v16)
    {
      sub_26AF01944();
      v6 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  sub_26AF01970(v14, v13);
  if (!v16)
  {
    sub_26AE9BCC0();
LABEL_10:
    sub_26AF0190C();
    v6 = 0;
    goto LABEL_9;
  }

  v5 = MEMORY[0x26D66D0C0](v13[0], v13[1], v15, v16);
  sub_26AE9BCC0();
  sub_26AE9BCC0();
  sub_26AF01944();
  v6 = v5;
LABEL_9:

  return v6 & 1;
}