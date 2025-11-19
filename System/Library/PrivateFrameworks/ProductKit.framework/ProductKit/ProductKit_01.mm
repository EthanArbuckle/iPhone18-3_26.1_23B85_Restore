uint64_t sub_260E1D1CC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[51];
  v6 = v2[48];
  v7 = v2[46];
  v8 = v2[38];

  if (v0)
  {

    v9 = sub_260E1D568;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v9 = sub_260E1D36C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_260E1D36C()
{
  v30 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v26 = v0[22];

  v7 = sub_260E68E74();
  v8 = sub_260E69474();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[46];
  if (v9)
  {
    v24 = v6;
    v11 = v4;
    v12 = v0[45];
    v13 = swift_slowAlloc();
    v25 = v3;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    sub_260E69644();

    v28 = v12;
    v29 = v10;
    v4 = v11;
    v6 = v24;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v15 = sub_260E43774(v28, v10, &v27);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_260E02000, v7, v8, "Fetching PrivateRecord END --- manatee container {cacheName: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v16 = v14;
    v3 = v25;
    MEMORY[0x2666F1EF0](v16, -1, -1);
    MEMORY[0x2666F1EF0](v13, -1, -1);
  }

  else
  {
    v17 = v0[46];
  }

  v19 = v0[43];
  v18 = v0[44];
  v20 = v0[41];
  v21 = v0[37];
  *v21 = v3;
  v21[1] = v4;
  v21[2] = v5;
  v21[3] = v6;
  v21[4] = v26;

  v22 = v0[1];

  return v22();
}

uint64_t sub_260E1D568()
{
  v36 = v0;
  v1 = *(v0 + 424);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 424);
    v8 = *(v0 + 360);
    v32 = *(v0 + 368);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315394;
    *(v0 + 288) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v12 = sub_260E69084();
    v14 = sub_260E43774(v12, v13, &v33);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_260E69644();

    v34 = v8;
    v35 = v32;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v15 = sub_260E43774(v34, v35, &v33);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_260E02000, v5, v6, "### Error fetching from manatee CloudKit container --- fallback to non manatee {error: %s, cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  else
  {
    v16 = *(v0 + 424);
    v17 = *(v0 + 368);
  }

  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v22 = *(v0 + 304);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_260E69644();

  v34 = v21;
  v35 = v20;
  MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
  v23 = v34;
  v24 = v35;
  *(v0 + 432) = v35;
  sub_260E69484();
  v25 = sub_260E69404();
  *(v0 + 440) = v25;
  v26 = v22[14];
  v28 = v22[11];
  v27 = v22[12];
  *(v0 + 112) = v22[13];
  *(v0 + 128) = v26;
  *(v0 + 80) = v28;
  *(v0 + 96) = v27;
  v29 = swift_task_alloc();
  *(v0 + 448) = v29;
  *v29 = v0;
  v29[1] = sub_260E1D868;
  v30 = *(v0 + 304);

  return sub_260E28108(v0 + 184, v23, v24, v25, v0 + 80, v30);
}

uint64_t sub_260E1D868()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = v2[55];
  v6 = v2[54];
  v7 = v2[46];
  v8 = v2[38];

  if (v0)
  {

    v9 = sub_260E1DC04;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v9 = sub_260E1DA08;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_260E1DA08()
{
  v30 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v26 = v0[27];

  v7 = sub_260E68E74();
  v8 = sub_260E69474();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[46];
  if (v9)
  {
    v24 = v6;
    v11 = v4;
    v12 = v0[45];
    v13 = swift_slowAlloc();
    v25 = v3;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    sub_260E69644();

    v28 = v12;
    v29 = v10;
    v4 = v11;
    v6 = v24;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v15 = sub_260E43774(v28, v10, &v27);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_260E02000, v7, v8, "Fetching PrivateRecord END --- fallback to non manatee container {cacheName: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v16 = v14;
    v3 = v25;
    MEMORY[0x2666F1EF0](v16, -1, -1);
    MEMORY[0x2666F1EF0](v13, -1, -1);
  }

  else
  {
    v17 = v0[46];
  }

  v19 = v0[43];
  v18 = v0[44];
  v20 = v0[41];
  v21 = v0[37];
  *v21 = v3;
  v21[1] = v4;
  v21[2] = v5;
  v21[3] = v6;
  v21[4] = v26;

  v22 = v0[1];

  return v22();
}

uint64_t sub_260E1DC04()
{
  v62 = v0;
  v1 = *(v0 + 456);
  *(v0 + 272) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    if (v5 == 2 && v3 == 9 && v4 == 0)
    {
      v32 = *(v0 + 456);
      v34 = *(v0 + 368);
      v33 = *(v0 + 376);

      v35 = sub_260E68E74();
      v36 = sub_260E69474();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 368);
      if (v37)
      {
        v39 = *(v0 + 360);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v59 = v41;
        *v40 = 136315394;
        *(v0 + 248) = xmmword_260E6C9E0;
        *(v0 + 264) = 2;
        v42 = sub_260E69084();
        v44 = sub_260E43774(v42, v43, &v59);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_260E69644();

        v60 = v39;
        v61 = v38;
        MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
        v45 = sub_260E43774(v60, v61, &v59);

        *(v40 + 14) = v45;
        _os_log_impl(&dword_260E02000, v35, v36, "### assetNotFound so device has no engraving, caching to not fetch this asset again. {error: %s, cacheName: %s}", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2666F1EF0](v41, -1, -1);
        MEMORY[0x2666F1EF0](v40, -1, -1);
      }

      else
      {
        v46 = *(v0 + 368);
      }

      v48 = *(v0 + 360);
      v47 = *(v0 + 368);
      v49 = *(v0 + 312);
      v50 = *(v0 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54718, &qword_260E6D6A0);
      v51 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8) - 8);
      v52 = *(*v51 + 72);
      v53 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_260E6BDB0;
      v55 = (v54 + v53);
      v56 = v51[14];
      *v55 = v48;
      *(v55 + 1) = v47;
      sub_260E689D4();
      (*(v50 + 56))(&v55[v56], 0, 1, v49);
      v57 = sub_260E66BA4(v54);
      swift_setDeallocating();
      sub_260E155E4(v55, &qword_27FE54720, &qword_260E6D6A8);
      swift_deallocClassInstance();
      sub_260E385B4(v57);
      sub_260E15590();
      swift_allocError();
      *v58 = xmmword_260E6C9E0;
      *(v58 + 16) = 2;
      swift_willThrow();

      goto LABEL_14;
    }

    sub_260E1A330(v3, v4, v5);
  }

  v8 = *(v0 + 456);
  v10 = *(v0 + 368);
  v9 = *(v0 + 376);
  swift_bridgeObjectRelease_n();

  v11 = v8;
  v12 = sub_260E68E74();
  v13 = sub_260E69454();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 456);
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59 = v18;
    *v17 = 136315394;
    *(v0 + 280) = v14;
    v19 = v14;
    v20 = sub_260E69084();
    v22 = sub_260E43774(v20, v21, &v59);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_260E69644();

    v60 = v16;
    v61 = v15;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v23 = sub_260E43774(v60, v61, &v59);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_260E02000, v12, v13, "### Error fetching from non manatee CloudKit container {error: %s, cacheName: %s}", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v18, -1, -1);
    MEMORY[0x2666F1EF0](v17, -1, -1);
  }

  else
  {
    v24 = *(v0 + 368);
  }

  v25 = *(v0 + 456);
  swift_willThrow();
  v26 = *(v0 + 456);
LABEL_14:
  v28 = *(v0 + 344);
  v27 = *(v0 + 352);
  v29 = *(v0 + 328);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t PersonalizationAssetManager.storeAsset(from:to:)(_OWORD *a1, void *a2)
{
  *(v3 + 304) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30) - 8) + 64) + 15;
  *(v3 + 312) = swift_task_alloc();
  v7 = sub_260E68EF4();
  *(v3 + 320) = v7;
  v8 = *(v7 - 8);
  *(v3 + 328) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = *a1;
  v10 = a2[1];
  *(v3 + 360) = *a2;
  *(v3 + 368) = v10;

  return MEMORY[0x2822009F8](sub_260E1E2B4, v2, 0);
}

uint64_t sub_260E1E2B4()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v20 = v1;
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v21 = *(v0 + 320);
  v5 = *(v0 + 304);
  sub_260E69644();
  *(v0 + 288) = sub_260E2FFA0(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08);
  v6 = sub_260E68FC4();
  v8 = v7;

  MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v22 = v6;
  *(v0 + 376) = v8;
  sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E2D960(v4);
  sub_260E68ED4();
  (*(v3 + 8))(v4, v21);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  sub_260E68984();
  sub_260E15FB4(v9, v10);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  sub_260E69484();
  v11 = sub_260E69404();
  *(v0 + 384) = v11;
  v12 = v5[10];
  v14 = v5[7];
  v13 = v5[8];
  *(v0 + 48) = v5[9];
  *(v0 + 64) = v12;
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  sub_260E15E4C(v2, v20);
  v15 = swift_task_alloc();
  *(v0 + 392) = v15;
  *v15 = v0;
  v15[1] = sub_260E1E56C;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 304);

  return sub_260E24B24(v0 + 80, v22, v8, v11, v0 + 16, v18, v16, v17);
}

uint64_t sub_260E1E56C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = v2[48];
  v6 = v2[47];
  v7 = v2[38];
  if (v0)
  {

    v8 = sub_260E1EF9C;
  }

  else
  {

    v8 = sub_260E1E6E4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_260E1E6E4()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 408) = *(v0 + 80);
  v5 = *(v0 + 112);
  *(v0 + 424) = *(v0 + 104);
  *(v0 + 432) = v5;
  v6 = *(v0 + 120);
  *(v0 + 440) = v6;
  *(v0 + 160) = v6;
  v7 = v6;
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  *(v0 + 152) = v5;
  v8 = sub_260E69304();
  *(v0 + 448) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  *(v0 + 456) = v10;
  *(v0 + 464) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 1, 1, v8);
  v12 = sub_260E338D4(&qword_27FE545A8, v11, type metadata accessor for PersonalizationAssetManager);
  *(v0 + 472) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v12;
  *(v13 + 32) = v2;
  *(v13 + 40) = v1;
  v14 = *(v0 + 152);
  *(v13 + 48) = *(v0 + 136);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v0 + 168);
  *(v13 + 88) = v4;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_260E15E4C(v5, v7);
  sub_260E308D8(v0 + 136, v0 + 176);
  v15 = sub_260E1FB2C(0, 0, v3, &unk_260E6CA40, v13);
  *(v0 + 480) = v15;
  v16 = *(MEMORY[0x277D857D0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 488) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
  *(v0 + 496) = v18;
  *v17 = v0;
  v17[1] = sub_260E1E928;
  v19 = MEMORY[0x277D84950];
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 272, v15, v20, v18, v19);
}

uint64_t sub_260E1E928()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 304);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_260E1EA54, v3, 0);
}

uint64_t sub_260E1EA54()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  *(v0 + 504) = *(v0 + 272);
  *(v0 + 282) = *(v0 + 280);
  v4(v7, 1, 1, v3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v8;
  *(v9 + 56) = *(v0 + 136);
  *(v9 + 72) = *(v0 + 152);
  *(v9 + 88) = *(v0 + 168);
  swift_retain_n();

  sub_260E308D8(v0 + 136, v0 + 216);
  v10 = sub_260E20828(0, 0, v7, &unk_260E6CA58, v9);
  *(v0 + 512) = v10;
  v11 = *(MEMORY[0x277D857D0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 520) = v12;
  *v12 = v0;
  v12[1] = sub_260E1EBD8;
  v13 = MEMORY[0x277D84A98];
  v14 = MEMORY[0x277D84AC0];
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 281, v10, v15, v13, v14);
}

uint64_t sub_260E1EBD8()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 304);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_260E1ED04, v3, 0);
}

uint64_t sub_260E1ED04()
{
  if (*(v0 + 281))
  {

    return swift_willThrowTypedImpl();
  }

  else if (*(v0 + 282))
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 504);
    v4 = *(v0 + 432);
    v5 = *(v0 + 440);
    v7 = *(v0 + 416);
    v6 = *(v0 + 424);
    v8 = *(v0 + 408);
    *(v0 + 296) = v3;
    v9 = v3;
    swift_willThrowTypedImpl();
    sub_260E15590();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 2;
    swift_willThrow();
    sub_260E30B30(v3, 1);
    sub_260E30B30(v3, 1);
    sub_260E30B3C(v0 + 136);
    sub_260E15FB4(v8, v7);

    sub_260E15FB4(v4, v5);
    v11 = *(v0 + 336);
    v12 = *(v0 + 312);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 344);
    v15 = *(v0 + 352);
    v16 = *(v0 + 304);
    v17 = sub_260E68E94();
    v18 = __swift_project_value_buffer(v17, qword_27FE54540);
    sub_260E15E4C(v14, v15);

    v19 = swift_task_alloc();
    *(v0 + 528) = v19;
    *v19 = v0;
    v19[1] = sub_260E1F00C;
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    v22 = *(v0 + 304);

    return sub_260E67EE4(0xD00000000000001ALL, 0x8000000260E72500, v18, v22, v20, v21);
  }
}

uint64_t sub_260E1EF9C()
{
  v1 = v0[50];
  v2 = v0[42];
  v3 = v0[39];

  v4 = v0[1];

  return v4();
}

uint64_t sub_260E1F00C()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 304);
  v6 = *v0;

  sub_260E15FB4(v3, v2);

  return MEMORY[0x2822009F8](sub_260E1F160, v4, 0);
}

uint64_t sub_260E1F160()
{
  v1 = v0[54];
  v2 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];
  v6 = v0[42];
  v7 = v0[39];
  sub_260E30B3C((v0 + 17));
  sub_260E15FB4(v5, v4);

  sub_260E15FB4(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_260E1F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  return MEMORY[0x2822009F8](sub_260E1F244, a7, 0);
}

uint64_t sub_260E1F244()
{
  v45 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = sub_260E68E94();
  *(v0 + 208) = __swift_project_value_buffer(v3, qword_27FE54540);
  sub_260E308D8(v1, v0 + 16);
  sub_260E308D8(v1, v0 + 56);

  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315394;

    sub_260E69644();

    v43 = v9;
    v44 = v8;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v12 = sub_260E43774(v9, v8, &v42);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    v15 = v14 >> 62;
    v16 = *(v0 + 192);
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        sub_260E30B3C(v16);
        v17 = 0;
        goto LABEL_15;
      }

      v19 = v13 + 16;
      v13 = *(v13 + 16);
      v18 = *(v19 + 8);
      v16 = sub_260E30B3C(v16);
      v17 = v18 - v13;
      if (!__OFSUB__(v18, v13))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v15)
    {
      sub_260E30B3C(v16);
      v17 = BYTE6(v14);
LABEL_15:
      v21 = *(v0 + 192);
      *(v10 + 14) = v17;
      sub_260E30B3C(v21);
      _os_log_impl(&dword_260E02000, v4, v5, "Store imageData Local START {filename: %s, imageData.count: %ld}", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x2666F1EF0](v11, -1, -1);
      MEMORY[0x2666F1EF0](v10, -1, -1);
      goto LABEL_16;
    }

    result = sub_260E30B3C(v16);
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_15;
  }

  sub_260E30B3C(*(v0 + 192));
  sub_260E30B3C(v7);
LABEL_16:

  v22 = *(v0 + 192);
  v23 = sub_260E686F4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_260E686E4();
  v26 = *(v22 + 32);
  v27 = *(v22 + 16);
  *(v0 + 96) = *v22;
  *(v0 + 112) = v27;
  *(v0 + 128) = v26;
  sub_260E33704();
  v28 = sub_260E686D4();
  *(v0 + 216) = v28;
  *(v0 + 224) = v29;
  v30 = v28;
  v31 = v29;
  v32 = *(v0 + 200);
  v34 = *(v0 + 176);
  v33 = *(v0 + 184);

  v36 = *(v32 + 304);
  v35 = *(v32 + 312);
  v43 = 0;
  v44 = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  sub_260E69644();

  v43 = v34;
  v44 = v33;
  MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
  v37 = v43;
  v38 = v44;
  *(v0 + 232) = v44;
  *(v0 + 136) = v37;
  *(v0 + 144) = v38;
  *(v0 + 152) = v30;
  *(v0 + 160) = v31;
  v41 = (v36 + *v36);
  v39 = v36[1];
  v40 = swift_task_alloc();
  *(v0 + 240) = v40;
  *v40 = v0;
  v40[1] = sub_260E1F698;

  return v41(v0 + 136, v0 + 152);
}

uint64_t sub_260E1F698()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  if (v0)
  {

    v6 = sub_260E1F8D8;
  }

  else
  {
    v7 = v2[23];

    v6 = sub_260E1F7E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_260E1F7FC()
{
  v1 = v0[26];
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Store imageData Local END", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  sub_260E15FB4(v0[27], v0[28]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_260E1F8F4()
{
  v27 = v0;
  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[23];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[31];
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    v0[21] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_260E69644();

    v25 = v9;
    v26 = v8;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v16 = sub_260E43774(v25, v26, &v24);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_260E02000, v5, v6, "Store imageData Local FAILED -- {error: %s, filename: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  else
  {
    v17 = v0[23];
  }

  v18 = v0[31];
  v19 = v0[27];
  v20 = v0[28];
  swift_willThrow();
  sub_260E15FB4(v19, v20);
  v21 = v0[31];
  v22 = v0[1];

  return v22();
}

uint64_t sub_260E1FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_260E15684(a3, v24 - v10, &qword_27FE545A0, &qword_260E6CA30);
  v12 = sub_260E69304();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_260E155E4(v11, &qword_27FE545A0, &qword_260E6CA30);
  }

  else
  {
    sub_260E692F4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_260E69284();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_260E690A4() + 32;

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

      sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);

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

  sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_260E1FDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2822009F8](sub_260E1FDFC, a6, 0);
}

uint64_t sub_260E1FDFC()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_260E68E94();
  v0[10] = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

    sub_260E69484();
    v9 = sub_260E69404();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_260E02000, v3, v4, "Store imageData Private CloudKit database START {recordID: %@}", v7, 0xCu);
    sub_260E155E4(v8, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];

  v29 = *(v10 + 240);
  v30 = *(v10 + 248);
  v0[11] = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  v0[12] = sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  swift_bridgeObjectRetain_n();
  sub_260E69484();
  v14 = sub_260E69404();
  v0[13] = v14;
  v16 = *v11;
  v15 = v11[1];
  v17 = v11[2];
  v18 = v11[3];
  v27 = v11[4];

  sub_260E69484();
  v19 = sub_260E69404();
  sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  v20 = v19;
  v21 = sub_260E69534();
  v0[14] = v21;
  v22 = [v21 encryptedValues];
  swift_getObjectType();
  sub_260E68984();
  sub_260E694A4();
  swift_unknownObjectRelease();
  v23 = [v21 encryptedValues];
  swift_getObjectType();
  v0[2] = v27;
  sub_260E69804();
  sub_260E694A4();

  swift_unknownObjectRelease();
  v0[3] = v14;
  v0[4] = v21;
  v28 = (v29 + *v29);
  v24 = v29[1];
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_260E2027C;

  return (v28)(v0 + 3, v0 + 4);
}

uint64_t sub_260E2027C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_260E20584;
  }

  else
  {
    v4 = sub_260E203AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E203AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_260E2041C, v2, 0);
}

uint64_t sub_260E2041C()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_260E69484();
    v11 = sub_260E69404();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_260E02000, v3, v4, "Store imageData Private CloudKit database END {recordID: %@}", v9, 0xCu);
    sub_260E155E4(v10, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  else
  {
    v12 = v0[7];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_260E20584()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_260E205F4, v2, 0);
}

uint64_t sub_260E205F4()
{
  v24 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v0[5] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_260E69644();

    v22 = v9;
    v23 = v8;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v16 = sub_260E43774(v22, v23, &v21);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_260E02000, v5, v6, "Store imageData Private CloudKit database FAILED -- {error: %s, filename: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  else
  {
    v17 = v0[16];
    v18 = v0[7];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_260E20828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_260E15684(a3, v27 - v11, &qword_27FE545A0, &qword_260E6CA30);
  v13 = sub_260E69304();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260E155E4(v12, &qword_27FE545A0, &qword_260E6CA30);
  }

  else
  {
    sub_260E692F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_260E69284();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_260E690A4() + 32;
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

      sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);

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

  sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);
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

uint64_t sub_260E20B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_260E20B50, a1, 0);
}

uint64_t sub_260E20B50()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  __swift_project_value_buffer(v1, qword_27FE54540);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Successfully saved imageData to local cache and Private CloudKit database -- deleting public record local cache", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v9 = *(v7 + 352);
  v8 = *(v7 + 360);
  sub_260E69644();
  v0[4] = sub_260E2FFA0(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08);
  v10 = sub_260E68FC4();
  v12 = v11;

  MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v0[8] = v12;
  v0[2] = v10;
  v0[3] = v12;
  v16 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_260E20E04;

  return v16(v0 + 2);
}

uint64_t sub_260E20E04()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);

  if (v0)
  {
    v6 = sub_260E20F50;
  }

  else
  {
    v6 = sub_260E20F38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_260E20F88()
{
  v78 = v0;
  v0[5] = &type metadata for ProductKitFeatureFlag;
  v0[6] = sub_260E31F80();
  v1 = sub_260E68A54();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((v1 & 1) == 0)
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v16 = sub_260E68E94();
    __swift_project_value_buffer(v16, qword_27FE54540);
    v17 = sub_260E68E74();
    v18 = sub_260E69474();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260E02000, v17, v18, "ProductKit.ManateeMigration FeatureFlag not enabled, returning", v19, 2u);
      MEMORY[0x2666F1EF0](v19, -1, -1);
    }

    v20 = v0[1];
    goto LABEL_39;
  }

  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_260E68E94();
  v0[42] = __swift_project_value_buffer(v2, qword_27FE54540);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260E02000, v3, v4, "Manatee container migration START", v5, 2u);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  v6 = v0[41];

  v7 = *(v6 + 368);
  v0[43] = v7;
  if (!v7 || (v8 = *(v0[41] + 376), (v0[44] = v8) == 0))
  {

    v21 = sub_260E68E74();
    v22 = sub_260E69454();

    if (os_log_type_enabled(v21, v22))
    {
      v75 = v0[41];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136315394;
      v0[24] = v7;
      v25 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
      v26 = sub_260E69084();
      v28 = sub_260E43774(v26, v27, &v76);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = *(v75 + 376);
      v0[25] = v29;
      v30 = v29;
      v31 = sub_260E69084();
      v33 = sub_260E43774(v31, v32, &v76);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_260E02000, v21, v22, "Manatee container migration FAIL --- container nil {publicCloudKitContainer: %s, manateeCloudKitContainer: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v24, -1, -1);
      MEMORY[0x2666F1EF0](v23, -1, -1);
    }

    else
    {

      v25 = v7;
    }

    v34 = v0[41];
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_260E69644();
    MEMORY[0x2666F0C00](0xD00000000000004DLL, 0x8000000260E72520);
    v0[22] = v7;
    v35 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
    v36 = sub_260E69084();
    MEMORY[0x2666F0C00](v36);

    MEMORY[0x2666F0C00](0xD00000000000001CLL, 0x8000000260E72570);
    v37 = *(v34 + 376);
    v0[23] = v37;
    v38 = v37;
    v39 = sub_260E69084();
    MEMORY[0x2666F0C00](v39);

    MEMORY[0x2666F0C00](125, 0xE100000000000000);
    v40 = v76;
    v41 = v77;
    sub_260E15590();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 1;
    swift_willThrow();
    goto LABEL_38;
  }

  v74 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [v10 containerIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_260E69024();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v73 = v9;
  v43 = [v9 containerIdentifier];
  if (!v43)
  {
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v44 = v43;
  v45 = sub_260E69024();
  v47 = v46;

  if (!v15)
  {
    if (!v47)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (!v47)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v13 == v45 && v15 == v47)
  {

LABEL_34:
    v51 = v0[41];

    v52 = sub_260E68E74();
    v53 = sub_260E69454();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v54 = 136315394;
      v0[39] = v7;
      v55 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
      v56 = sub_260E69084();
      v58 = sub_260E43774(v56, v57, &v76);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v59 = v73;
      v60 = v74;
      v0[40] = v74;
      v61 = v73;
      v62 = sub_260E69084();
      v64 = sub_260E43774(v62, v63, &v76);

      *(v54 + 14) = v64;
      _os_log_impl(&dword_260E02000, v52, v53, "Manatee container migration FAIL --- containers are the same {publicCloudKitContainer: %s, manateeCloudKitContainer: %s}", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v72, -1, -1);
      MEMORY[0x2666F1EF0](v54, -1, -1);
    }

    else
    {

      v59 = v73;
      v60 = v74;
    }

    v76 = 0;
    v77 = 0xE000000000000000;
    sub_260E69644();
    MEMORY[0x2666F0C00](0xD000000000000057, 0x8000000260E725B0);
    v0[37] = v7;
    v65 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
    v66 = sub_260E69084();
    MEMORY[0x2666F0C00](v66);

    MEMORY[0x2666F0C00](0xD00000000000001CLL, 0x8000000260E72570);
    v0[38] = v60;
    v67 = v59;
    v68 = sub_260E69084();
    MEMORY[0x2666F0C00](v68);

    MEMORY[0x2666F0C00](125, 0xE100000000000000);
    v69 = v76;
    v70 = v77;
    sub_260E15590();
    swift_allocError();
    *v71 = v69;
    *(v71 + 8) = v70;
    *(v71 + 16) = 1;
    swift_willThrow();

LABEL_38:
    v20 = v0[1];
LABEL_39:

    return v20();
  }

  v50 = sub_260E69834();

  if (v50)
  {
    goto LABEL_34;
  }

LABEL_30:
  v0[45] = [v10 privateCloudDatabase];
  v48 = swift_task_alloc();
  v0[46] = v48;
  *v48 = v0;
  v48[1] = sub_260E2185C;

  return sub_260E4A92C(0xD000000000000015, 0x8000000260E72590);
}

uint64_t sub_260E2185C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v9 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = *(v3 + 328);
    v6 = sub_260E23980;
  }

  else
  {
    v7 = *(v3 + 328);

    v6 = sub_260E21984;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void *sub_260E21984()
{
  v60 = v0;
  result = v0[47];
  v2 = result[2];
  v0[49] = v2;
  if (!v2)
  {
    v22 = v0[42];

    v23 = sub_260E68E74();
    v24 = sub_260E69474();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[43];
    v26 = v0[44];
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_260E02000, v23, v24, "Manatee container migration END", v28, 2u);
      MEMORY[0x2666F1EF0](v28, -1, -1);
    }

    else
    {

      v23 = v27;
    }

    v21 = v0[1];
LABEL_16:

    return v21();
  }

  v3 = v0[48];
  v0[50] = 0;
  if (!result[2])
  {
    __break(1u);
    return result;
  }

  v4 = result[4];
  v0[51] = v4;
  v5 = result[5];
  v0[52] = v5;
  v6 = v5;
  v7 = v4;
  sub_260E23B14(v6, v0 + 7);
  if (v3)
  {
    v8 = v0[47];

    v9 = v0[42];
    v10 = v3;
    v11 = sub_260E68E74();
    v12 = sub_260E69474();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v59[0] = v14;
      *v13 = 136315138;
      v0[26] = v3;
      v15 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v16 = sub_260E69084();
      v18 = sub_260E43774(v16, v17, v59);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_260E02000, v11, v12, "Manatee container migration FAIL {error: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2666F1EF0](v14, -1, -1);
      MEMORY[0x2666F1EF0](v13, -1, -1);
    }

    v20 = v0[43];
    v19 = v0[44];
    swift_willThrow();

    v21 = v0[1];
    goto LABEL_16;
  }

  v29 = v0[42];
  v30 = v0[7];
  v31 = v0[9];
  v32 = v0[10];
  v0[53] = v0[8];
  v0[54] = v31;
  v0[55] = v32;
  v57 = v0[11];
  v0[56] = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

  sub_260E69484();
  v33 = sub_260E69404();
  sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  v34 = v33;
  v35 = sub_260E69534();
  v0[57] = v35;
  v36 = [v35 encryptedValues];
  swift_getObjectType();
  v37 = sub_260E68984();
  v38 = MEMORY[0x277CBBE08];
  v0[15] = MEMORY[0x277D837D0];
  v0[16] = v38;
  v0[12] = v37;
  v0[13] = v39;
  sub_260E694A4();
  swift_unknownObjectRelease();
  [v35 encryptedValues];
  swift_getObjectType();
  v0[27] = v57;
  v40 = sub_260E69804();
  v0[20] = MEMORY[0x277D837D0];
  v0[21] = v38;
  v0[17] = v40;
  v0[18] = v41;
  sub_260E694A4();

  swift_unknownObjectRelease();
  v42 = v7;
  v43 = sub_260E68E74();
  v44 = sub_260E69474();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59[0] = v46;
    *v45 = 136315138;
    v0[36] = v42;
    v47 = v42;
    v48 = sub_260E69084();
    v50 = sub_260E43774(v48, v49, v59);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_260E02000, v43, v44, "Migrate data to manatee CloudKit database START {recordID: %s}", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x2666F1EF0](v46, -1, -1);
    MEMORY[0x2666F1EF0](v45, -1, -1);
  }

  v51 = v0[41];
  v53 = *(v51 + 240);
  v52 = *(v51 + 248);
  v54 = [v35 recordID];
  v0[58] = v54;
  v0[28] = v54;
  v0[29] = v35;
  v58 = (v53 + *v53);
  v55 = v53[1];
  v56 = swift_task_alloc();
  v0[59] = v56;
  *v56 = v0;
  v56[1] = sub_260E21FB8;

  return (v58)(v0 + 28, v0 + 29);
}

uint64_t sub_260E21FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);

    v5 = sub_260E22438;
  }

  else
  {
    v5 = sub_260E220D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260E220D4()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_260E22140, v1, 0);
}

uint64_t sub_260E22140()
{
  v32 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 456);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 448);
    v5 = *(v0 + 456);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v0 + 280) = [v5 recordID];
    v9 = sub_260E69084();
    v11 = sub_260E43774(v9, v10, &v31);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_260E02000, v3, v4, "Migrate data to manatee CloudKit database END {recordID: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v12 = *(v0 + 336);
  v13 = *(v0 + 408);
  v14 = sub_260E68E74();
  v15 = sub_260E69474();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 448);
    v17 = *(v0 + 408);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    *(v0 + 272) = v17;
    v20 = v17;
    v21 = sub_260E69084();
    v23 = sub_260E43774(v21, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_260E02000, v14, v15, "Remove data from non manatee CloudKit database START {recordID: %s}", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2666F1EF0](v19, -1, -1);
    MEMORY[0x2666F1EF0](v18, -1, -1);
  }

  v24 = *(v0 + 328);
  v25 = *(v24 + 224);
  v26 = *(v24 + 232);
  *(v0 + 248) = *(v0 + 408);
  v30 = (v25 + *v25);
  v27 = v25[1];
  v28 = swift_task_alloc();
  *(v0 + 488) = v28;
  *v28 = v0;
  v28[1] = sub_260E22850;

  return v30(v0 + 248);
}

uint64_t sub_260E22438()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_260E224A4, v1, 0);
}

uint64_t sub_260E224A4()
{
  v53 = v0;
  v1 = v0;
  v2 = *(v0 + 480);
  v3 = *(v0 + 336);
  v4 = *(v0 + 456);
  v5 = v2;
  v6 = sub_260E68E74();
  v7 = sub_260E69454();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 480);
    v9 = *(v0 + 456);
    v50 = *(v0 + 432);
    v51 = *(v0 + 440);
    v10 = *(v0 + 416);
    v49 = *(v0 + 424);
    v47 = v9;
    v48 = *(v0 + 408);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v52[0] = v12;
    *v11 = 136315394;
    *(v0 + 240) = v8;
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v14 = sub_260E69084();
    v16 = sub_260E43774(v14, v15, v52);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = [v9 recordID];
    v18 = [v17 recordName];

    v19 = sub_260E69024();
    v21 = v20;

    v22 = sub_260E43774(v19, v21, v52);

    *(v11 + 14) = v22;
    v23 = v7;
    v24 = v48;
    _os_log_impl(&dword_260E02000, v6, v23, "Migrate data to manatee CloudKit database FAILED -- {error: %s, recordName: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);

    swift_willThrow();

    v25 = v50;
    v26 = v51;
  }

  else
  {
    v27 = *(v0 + 480);
    v28 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 440);
    v10 = v1[52];
    v31 = v1[53];
    v24 = v1[51];

    swift_willThrow();

    v25 = v29;
    v26 = v30;
  }

  sub_260E15FB4(v25, v26);

  v32 = v1[60];
  v33 = v1[42];
  v34 = v32;
  v35 = sub_260E68E74();
  v36 = sub_260E69474();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 136315138;
    v1[26] = v32;
    v39 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v40 = sub_260E69084();
    v42 = sub_260E43774(v40, v41, v52);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_260E02000, v35, v36, "Manatee container migration FAIL {error: %s}", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2666F1EF0](v38, -1, -1);
    MEMORY[0x2666F1EF0](v37, -1, -1);
  }

  v44 = v1[43];
  v43 = v1[44];
  swift_willThrow();

  v45 = v1[1];

  return v45();
}

uint64_t sub_260E22850()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_260E2311C;
  }

  else
  {
    v3 = sub_260E22964;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_260E22980()
{
  v84 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 408);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 448);
    v81 = *(v0 + 440);
    v78 = *(v0 + 456);
    v79 = *(v0 + 432);
    v6 = *(v0 + 416);
    v7 = *(v0 + 424);
    v8 = *(v0 + 408);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v83[0] = v10;
    *v9 = 136315138;
    *(v0 + 264) = v8;
    v11 = v8;
    v12 = sub_260E69084();
    v14 = sub_260E43774(v12, v13, v83);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_260E02000, v3, v4, "Remove data from non manatee CloudKit database END {recordID: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);

    sub_260E15FB4(v79, v81);
  }

  else
  {
    v15 = *(v0 + 456);
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v18 = *(v0 + 424);
    v19 = *(v0 + 408);

    sub_260E15FB4(v17, v16);
  }

  v20 = *(v0 + 400) + 1;
  if (v20 == *(v0 + 392))
  {
    v21 = *(v0 + 376);
    v22 = *(v0 + 336);

    v23 = sub_260E68E74();
    v24 = sub_260E69474();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 344);
    v26 = *(v0 + 352);
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_260E02000, v23, v24, "Manatee container migration END", v28, 2u);
      MEMORY[0x2666F1EF0](v28, -1, -1);
    }

    else
    {

      v23 = v27;
    }

    v49 = *(v0 + 8);
LABEL_14:

    v49();
    return;
  }

  v29 = *(v0 + 496);
  *(v0 + 400) = v20;
  v30 = *(v0 + 376);
  if (v20 >= *(v30 + 16))
  {
    __break(1u);
    return;
  }

  v31 = v30 + 16 * v20;
  v32 = *(v31 + 32);
  *(v0 + 408) = v32;
  v33 = *(v31 + 40);
  *(v0 + 416) = v33;
  v34 = v33;
  v35 = v32;
  sub_260E23B14(v34, (v0 + 56));
  if (v29)
  {
    v36 = *(v0 + 376);

    v37 = *(v0 + 336);
    v38 = v29;
    v39 = sub_260E68E74();
    v40 = sub_260E69474();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v83[0] = v42;
      *v41 = 136315138;
      *(v0 + 208) = v29;
      v43 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v44 = sub_260E69084();
      v46 = sub_260E43774(v44, v45, v83);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_260E02000, v39, v40, "Manatee container migration FAIL {error: %s}", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2666F1EF0](v42, -1, -1);
      MEMORY[0x2666F1EF0](v41, -1, -1);
    }

    v48 = *(v0 + 344);
    v47 = *(v0 + 352);
    swift_willThrow();

    v49 = *(v0 + 8);
    goto LABEL_14;
  }

  v50 = *(v0 + 336);
  v51 = *(v0 + 56);
  v52 = *(v0 + 72);
  v53 = *(v0 + 80);
  *(v0 + 424) = *(v0 + 64);
  *(v0 + 432) = v52;
  *(v0 + 440) = v53;
  v80 = *(v0 + 88);
  *(v0 + 448) = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

  sub_260E69484();
  v54 = sub_260E69404();
  sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  v55 = v54;
  v56 = sub_260E69534();
  *(v0 + 456) = v56;
  v57 = [v56 encryptedValues];
  swift_getObjectType();
  v58 = sub_260E68984();
  v59 = MEMORY[0x277CBBE08];
  *(v0 + 120) = MEMORY[0x277D837D0];
  *(v0 + 128) = v59;
  *(v0 + 96) = v58;
  *(v0 + 104) = v60;
  sub_260E694A4();
  swift_unknownObjectRelease();
  [v56 encryptedValues];
  swift_getObjectType();
  *(v0 + 216) = v80;
  v61 = sub_260E69804();
  *(v0 + 160) = MEMORY[0x277D837D0];
  *(v0 + 168) = v59;
  *(v0 + 136) = v61;
  *(v0 + 144) = v62;
  sub_260E694A4();

  swift_unknownObjectRelease();
  v63 = v35;
  v64 = sub_260E68E74();
  v65 = sub_260E69474();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v83[0] = v67;
    *v66 = 136315138;
    *(v0 + 288) = v63;
    v68 = v63;
    v69 = sub_260E69084();
    v71 = sub_260E43774(v69, v70, v83);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_260E02000, v64, v65, "Migrate data to manatee CloudKit database START {recordID: %s}", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x2666F1EF0](v67, -1, -1);
    MEMORY[0x2666F1EF0](v66, -1, -1);
  }

  v72 = *(v0 + 328);
  v74 = *(v72 + 240);
  v73 = *(v72 + 248);
  v75 = [v56 recordID];
  *(v0 + 464) = v75;
  *(v0 + 224) = v75;
  *(v0 + 232) = v56;
  v82 = (v74 + *v74);
  v76 = v74[1];
  v77 = swift_task_alloc();
  *(v0 + 472) = v77;
  *v77 = v0;
  v77[1] = sub_260E21FB8;

  v82(v0 + 224, v0 + 232);
}

void sub_260E23138()
{
  v79 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 336);
  v3 = *(v0 + 408);
  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 496);
    v76 = *(v0 + 440);
    v73 = *(v0 + 456);
    v74 = *(v0 + 432);
    v71 = *(v0 + 416);
    v72 = *(v0 + 424);
    v8 = *(v0 + 408);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v78[0] = v10;
    *v9 = 136315394;
    *(v0 + 256) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v12 = sub_260E69084();
    v14 = sub_260E43774(v12, v13, v78);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [v8 recordName];
    v16 = sub_260E69024();
    v18 = v17;

    v19 = sub_260E43774(v16, v18, v78);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_260E02000, v5, v6, "Remove data from non manatee CloudKit database FAILED -- {error: %s, recordName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);

    sub_260E15FB4(v74, v76);
  }

  else
  {
    v20 = *(v0 + 496);
    v21 = *(v0 + 456);
    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v24 = *(v0 + 424);
    v25 = *(v0 + 408);

    sub_260E15FB4(v23, v22);
  }

  v26 = *(v0 + 400) + 1;
  if (v26 == *(v0 + 392))
  {
    v27 = *(v0 + 376);
    v28 = *(v0 + 336);

    v29 = sub_260E68E74();
    v30 = sub_260E69474();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 344);
    v32 = *(v0 + 352);
    if (v31)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_260E02000, v29, v30, "Manatee container migration END", v34, 2u);
      MEMORY[0x2666F1EF0](v34, -1, -1);
    }

    else
    {

      v29 = v33;
    }

    v41 = *(v0 + 8);

    v41();
  }

  else
  {
    *(v0 + 400) = v26;
    v35 = *(v0 + 376);
    if (v26 >= *(v35 + 16))
    {
      __break(1u);
    }

    else
    {
      v36 = v35 + 16 * v26;
      v37 = *(v36 + 32);
      *(v0 + 408) = v37;
      v38 = *(v36 + 40);
      *(v0 + 416) = v38;
      v39 = v38;
      v40 = v37;
      sub_260E23B14(v39, (v0 + 56));
      v42 = *(v0 + 336);
      v43 = *(v0 + 56);
      v44 = *(v0 + 72);
      v45 = *(v0 + 80);
      *(v0 + 424) = *(v0 + 64);
      *(v0 + 432) = v44;
      *(v0 + 440) = v45;
      v75 = *(v0 + 88);
      *(v0 + 448) = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
      sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

      sub_260E69484();
      v46 = sub_260E69404();
      sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
      v47 = v46;
      v48 = sub_260E69534();
      *(v0 + 456) = v48;
      v49 = [v48 encryptedValues];
      swift_getObjectType();
      v50 = sub_260E68984();
      v51 = MEMORY[0x277CBBE08];
      *(v0 + 120) = MEMORY[0x277D837D0];
      *(v0 + 128) = v51;
      *(v0 + 96) = v50;
      *(v0 + 104) = v52;
      sub_260E694A4();
      swift_unknownObjectRelease();
      [v48 encryptedValues];
      swift_getObjectType();
      *(v0 + 216) = v75;
      v53 = sub_260E69804();
      *(v0 + 160) = MEMORY[0x277D837D0];
      *(v0 + 168) = v51;
      *(v0 + 136) = v53;
      *(v0 + 144) = v54;
      sub_260E694A4();

      swift_unknownObjectRelease();
      v55 = v40;
      v56 = sub_260E68E74();
      v57 = sub_260E69474();

      if (os_log_type_enabled(v56, v57))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v78[0] = v60;
        *v59 = 136315138;
        *(v0 + 288) = v55;
        v61 = v55;
        v62 = sub_260E69084();
        v64 = sub_260E43774(v62, v63, v78);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_260E02000, v56, v57, "Migrate data to manatee CloudKit database START {recordID: %s}", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x2666F1EF0](v60, -1, -1);
        MEMORY[0x2666F1EF0](v59, -1, -1);
      }

      v65 = *(v0 + 328);
      v67 = *(v65 + 240);
      v66 = *(v65 + 248);
      v68 = [v48 recordID];
      *(v0 + 464) = v68;
      *(v0 + 224) = v68;
      *(v0 + 232) = v48;
      v77 = (v67 + *v67);
      v69 = v67[1];
      v70 = swift_task_alloc();
      *(v0 + 472) = v70;
      *v70 = v0;
      v70[1] = sub_260E21FB8;

      v77(v0 + 224, v0 + 232);
    }
  }
}

uint64_t sub_260E23980()
{
  v17 = v0;

  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v0 + 208) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v9 = sub_260E69084();
    v11 = sub_260E43774(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260E02000, v4, v5, "Manatee container migration FAIL {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

void sub_260E23B14(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [objc_msgSend(a1 encryptedValues)];
  swift_unknownObjectRelease();
  v6 = sub_260E691B4();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = [a1 encryptedValues];
  }

  else
  {
    v8 = a1;
  }

  v9 = v8;
  v10 = sub_260E68FF4();
  v11 = [v9 objectForKeyedSubscript_];

  sub_260E2E4B0(v11, 0xD000000000000010, 0x8000000260E72780);
  swift_unknownObjectRelease();
  if (v2)
  {
    goto LABEL_74;
  }

  v53 = a2;
  v12 = sub_260E68FF4();
  v13 = [v9 objectForKeyedSubscript_];

  if (v13 && (v56 = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546C8, &qword_260E6D638), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v54;
    v14 = v55;
  }

  else
  {
    v14 = 0xE100000000000000;
    v15 = 49;
  }

  v16 = HIBYTE(v14) & 0xF;
  v17 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_71;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v22 = sub_260E4DC24(v15, v14, 10);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    v54 = v15;
    v55 = v14 & 0xFFFFFFFFFFFFFFLL;
    if (v15 == 43)
    {
      if (!v16)
      {
LABEL_83:
        __break(1u);
        return;
      }

      v19 = (v16 - 1);
      if (v16 != 1)
      {
        v22 = 0;
        v33 = &v54 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v19)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v15 == 45)
    {
      if (!v16)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v19 = (v16 - 1);
      if (v16 != 1)
      {
        v22 = 0;
        v26 = &v54 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v16)
    {
      v22 = 0;
      v38 = &v54;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        v38 = (v38 + 1);
        if (!--v16)
        {
LABEL_68:
          LOBYTE(v19) = 0;
          goto LABEL_70;
        }
      }
    }
  }

  else
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      v19 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = sub_260E696A4();
    }

    v20 = *v19;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v29 = v17 - 1;
        if (v17 != 1)
        {
          v22 = 0;
          if (!v19)
          {
            goto LABEL_70;
          }

          v30 = v19 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v29)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_82;
    }

    if (v20 == 45)
    {
      if (v17 >= 1)
      {
        v21 = v17 - 1;
        if (v17 != 1)
        {
          v22 = 0;
          if (!v19)
          {
            goto LABEL_70;
          }

          v23 = v19 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_81;
    }

    if (v17)
    {
      v22 = 0;
      if (!v19)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v36 = *v19 - 48;
        if (v36 > 9)
        {
          break;
        }

        v37 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        ++v19;
        if (!--v17)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_69:
  v22 = 0;
  LOBYTE(v19) = 1;
LABEL_70:
  LOBYTE(v56) = v19;
  v41 = v19;

  if (v41)
  {
LABEL_71:
    v22 = 1;
  }

LABEL_72:
  v42 = sub_260E68934();
  v44 = v43;

  if (v44 >> 60 == 15)
  {
    sub_260E15590();
    swift_allocError();
    *v45 = 0xD000000000000030;
    *(v45 + 8) = 0x8000000260E727A0;
    *(v45 + 16) = 0;
    swift_willThrow();
LABEL_74:
    swift_unknownObjectRelease();

    return;
  }

  v46 = [a1 recordID];
  v47 = [v46 recordName];

  v48 = sub_260E69024();
  v50 = v49;
  swift_unknownObjectRelease();

  *v53 = v48;
  v53[1] = v50;
  v53[2] = v42;
  v53[3] = v44;
  v53[4] = v22;
}

void sub_260E240B4(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v105 = a3;
  v6 = sub_260E68904();
  v112 = *(v6 - 8);
  v7 = *(v112 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v94[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v94[-v14];
  v17 = *a2;
  v16 = a2[1];
  v18 = MEMORY[0x2666F1050](0x746E65644979656BLL, 0xED00007265696669);
  v19 = sub_260E2E4B0(v18, 0xD000000000000014, 0x8000000260E72880);
  if (v3)
  {
    sub_260E15FB4(v17, v16);

LABEL_3:
    swift_unknownObjectRelease();
    return;
  }

  v99 = v13;
  v100 = v10;
  v101 = 0;
  v102 = v20;
  v21 = v112;
  v103 = v17;
  v104 = v16;
  v98 = v19;
  swift_unknownObjectRelease();
  v22 = a1;
  if (!MEMORY[0x2666F1050](0x7373416567616D69, 0xEA00000000007465))
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
LABEL_12:
    v45 = MEMORY[0x2666F1050](0x6567616D69, 0xE500000000000000);
    v46 = v101;
    sub_260E2E4B0(v45, 0x692E64726F636572, 0xEC0000006567616DLL);
    if (v46)
    {
      sub_260E15FB4(v103, v104);

      goto LABEL_3;
    }

    swift_unknownObjectRelease();
    v48 = v103;
    v47 = v104;
    goto LABEL_24;
  }

  v24 = [v23 fileURL];
  if (!v24)
  {
    sub_260E15FB4(v103, v104);

    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v49 = sub_260E68E94();
    __swift_project_value_buffer(v49, qword_27FE54540);
    v50 = sub_260E68E74();
    v51 = sub_260E69454();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_260E02000, v50, v51, "Public record asset isn't locally cached", v52, 2u);
      MEMORY[0x2666F1EF0](v52, -1, -1);
    }

    sub_260E15590();
    swift_allocError();
    *v53 = xmmword_260E6C9E0;
    *(v53 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v25 = v99;
  v26 = v24;
  sub_260E688C4();

  v27 = v21;
  v28 = *(v21 + 32);
  v29 = v15;
  v30 = v25;
  v31 = v6;
  v28(v15, v30, v6);
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v99 = v22;
  v32 = sub_260E68E94();
  __swift_project_value_buffer(v32, qword_27FE54540);
  v33 = v100;
  (*(v27 + 16))(v100, v29, v6);
  v34 = sub_260E68E74();
  v35 = sub_260E69434();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v96 = v36;
    v97 = swift_slowAlloc();
    *&v107 = v97;
    *v36 = 136315138;
    sub_260E338D4(&qword_27FE54570, 255, MEMORY[0x277CC9260]);
    v37 = sub_260E69804();
    v39 = v38;
    v95 = v35;
    v40 = *(v27 + 8);
    v40(v33, v31);
    v41 = sub_260E43774(v37, v39, &v107);

    v42 = v96;
    *(v96 + 1) = v41;
    v43 = v42;
    _os_log_impl(&dword_260E02000, v34, v95, "Reading data from %s", v42, 0xCu);
    v44 = v97;
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x2666F1EF0](v44, -1, -1);
    MEMORY[0x2666F1EF0](v43, -1, -1);
  }

  else
  {

    v40 = *(v27 + 8);
    v40(v33, v31);
  }

  v48 = v103;
  v54 = v101;
  sub_260E68FE4();
  if (v54)
  {
    v40(v29, v31);
    swift_unknownObjectRelease();
    sub_260E15FB4(v48, v104);

    return;
  }

  v40(v29, v31);
  swift_unknownObjectRelease();
  v47 = v104;
  v22 = v99;
LABEL_24:
  v55 = sub_260E68934();
  v57 = v56;

  if (v57 >> 60 == 15)
  {
    sub_260E15FB4(v48, v47);

    sub_260E15590();
    swift_allocError();
    *v58 = 0xD000000000000030;
    *(v58 + 8) = 0x8000000260E728A0;
    *(v58 + 16) = 0;
    swift_willThrow();
LABEL_26:

    return;
  }

  v59 = MEMORY[0x2666F1050](0x6E6F6973726576, 0xE700000000000000);
  if (v59 && (v106[0] = v59, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546C8, &qword_260E6D638), (swift_dynamicCast() & 1) != 0))
  {
    v60 = *(&v107 + 1);
    v61 = v107;
  }

  else
  {
    v60 = 0xE100000000000000;
    v61 = 49;
  }

  v62 = HIBYTE(v60) & 0xF;
  v63 = v61 & 0xFFFFFFFFFFFFLL;
  if ((v60 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v60) & 0xF;
  }

  else
  {
    v64 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {

    goto LABEL_93;
  }

  if ((v60 & 0x1000000000000000) != 0)
  {
    v68 = sub_260E4DC24(v61, v60, 10);
    v93 = v92;

    if ((v93 & 1) == 0)
    {
      v48 = v103;
      v47 = v104;
      goto LABEL_94;
    }

    v48 = v103;
    v47 = v104;
    goto LABEL_93;
  }

  if ((v60 & 0x2000000000000000) == 0)
  {
    if ((v61 & 0x1000000000000000) != 0)
    {
      v65 = ((v60 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v65 = sub_260E696A4();
    }

    v66 = *v65;
    if (v66 == 43)
    {
      if (v63 >= 1)
      {
        v75 = v63 - 1;
        if (v63 != 1)
        {
          v68 = 0;
          if (!v65)
          {
            goto LABEL_92;
          }

          v76 = v65 + 1;
          while (1)
          {
            v77 = *v76 - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              break;
            }

            v68 = v78 + v77;
            if (__OFADD__(v78, v77))
            {
              break;
            }

            ++v76;
            if (!--v75)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_102;
    }

    if (v66 == 45)
    {
      if (v63 >= 1)
      {
        v67 = v63 - 1;
        if (v63 != 1)
        {
          v68 = 0;
          if (!v65)
          {
            goto LABEL_92;
          }

          v69 = v65 + 1;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              break;
            }

            v68 = v71 - v70;
            if (__OFSUB__(v71, v70))
            {
              break;
            }

            ++v69;
            if (!--v67)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_91;
      }

      __break(1u);
      goto LABEL_101;
    }

    if (v63)
    {
      v68 = 0;
      if (!v65)
      {
        goto LABEL_92;
      }

      while (1)
      {
        v82 = *v65 - 48;
        if (v82 > 9)
        {
          break;
        }

        v83 = 10 * v68;
        if ((v68 * 10) >> 64 != (10 * v68) >> 63)
        {
          break;
        }

        v68 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          break;
        }

        ++v65;
        if (!--v63)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_91;
  }

  *&v107 = v61;
  *(&v107 + 1) = v60 & 0xFFFFFFFFFFFFFFLL;
  if (v61 != 43)
  {
    if (v61 == 45)
    {
      if (!v62)
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v65 = (v62 - 1);
      if (v62 != 1)
      {
        v68 = 0;
        v72 = &v107 + 1;
        while (1)
        {
          v73 = *v72 - 48;
          if (v73 > 9)
          {
            break;
          }

          v74 = 10 * v68;
          if ((v68 * 10) >> 64 != (10 * v68) >> 63)
          {
            break;
          }

          v68 = v74 - v73;
          if (__OFSUB__(v74, v73))
          {
            break;
          }

          ++v72;
          if (!--v65)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v62)
    {
      v68 = 0;
      v84 = &v107;
      while (1)
      {
        v85 = *v84 - 48;
        if (v85 > 9)
        {
          break;
        }

        v86 = 10 * v68;
        if ((v68 * 10) >> 64 != (10 * v68) >> 63)
        {
          break;
        }

        v68 = v86 + v85;
        if (__OFADD__(v86, v85))
        {
          break;
        }

        ++v84;
        if (!--v62)
        {
LABEL_90:
          LOBYTE(v65) = 0;
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v68 = 0;
    LOBYTE(v65) = 1;
LABEL_92:
    LOBYTE(v106[0]) = v65;
    v87 = v65;

    if ((v87 & 1) == 0)
    {
LABEL_94:
      v106[0] = v48;
      v106[1] = v47;
      sub_260E2EBA8(v98, v102, v55, v57, v106, v68, &v107);

      v88 = v108;
      v89 = v109;
      v90 = v111;
      v91 = v105;
      *v105 = v107;
      *(v91 + 2) = v88;
      *(v91 + 3) = v89;
      v91[2] = v110;
      *(v91 + 6) = v90;
      return;
    }

LABEL_93:
    v68 = 1;
    goto LABEL_94;
  }

  if (v62)
  {
    v65 = (v62 - 1);
    if (v62 != 1)
    {
      v68 = 0;
      v79 = &v107 + 1;
      while (1)
      {
        v80 = *v79 - 48;
        if (v80 > 9)
        {
          break;
        }

        v81 = 10 * v68;
        if ((v68 * 10) >> 64 != (10 * v68) >> 63)
        {
          break;
        }

        v68 = v81 + v80;
        if (__OFADD__(v81, v80))
        {
          break;
        }

        ++v79;
        if (!--v65)
        {
          goto LABEL_92;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_103:
  __break(1u);
}

uint64_t sub_260E24B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a5;
  v8[43] = a6;
  v8[40] = a3;
  v8[41] = a4;
  v8[38] = a1;
  v8[39] = a2;
  sub_260E15E4C(a7, a8);
  sub_260E15E4C(a7, a8);
  sub_260E15E4C(a7, a8);

  return MEMORY[0x2822009F8](sub_260E24BCC, a6, 0);
}

uint64_t sub_260E24BCC()
{
  v26 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v1 = v0[41];
  v3 = sub_260E68E94();
  v0[46] = __swift_project_value_buffer(v3, qword_27FE54540);

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[40];
    v7 = v0[41];
    v9 = v0[39];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v25);
    *(v10 + 22) = 2080;
    v12 = [v7 recordName];
    v13 = sub_260E69024();
    v15 = v14;

    v16 = sub_260E43774(v13, v15, &v25);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s START {cacheName: %s, recordName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v17 = v0[43];
  v18 = v0[40];
  v19 = *(v17 + 320);
  v20 = *(v17 + 328);
  v0[32] = v0[39];
  v0[33] = v18;
  v24 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  v0[47] = v22;
  *v22 = v0;
  v22[1] = sub_260E24EA4;

  return (v24)(v0 + 30, v0 + 32);
}

uint64_t sub_260E24EA4()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_260E2552C;
  }

  else
  {
    v3 = sub_260E24FB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E24FD4()
{
  v56 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  *(v0 + 392) = v2;
  *(v0 + 400) = v3;
  v4 = sub_260E68E74();
  v5 = sub_260E69434();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v9 = *(v0 + 352);
    v8 = *(v0 + 360);

    sub_260E15E4C(v9, v8);
    v10 = swift_task_alloc();
    *(v0 + 432) = v10;
    *v10 = v0;
    v10[1] = sub_260E25CE4;
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    v15 = *(v0 + 320);
    v16 = *(v0 + 328);
    v17 = *(v0 + 312);
    v18 = v0 + 72;
LABEL_11:

    return sub_260E28FF0(v18, v17, v15, v16, v13, v14, v11, v12);
  }

  if (v6)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_260E02000, v4, v5, "Record exists locally. Loading.", v19, 2u);
    MEMORY[0x2666F1EF0](v19, -1, -1);
  }

  v20 = *(v0 + 384);

  v21 = sub_260E686C4();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_260E686B4();
  sub_260E33758();
  sub_260E686A4();
  v24 = v20;
  *(v0 + 408) = v20;
  v25 = *(v0 + 368);
  v26 = *(v0 + 320);

  if (v24)
  {

    v27 = v24;
    v28 = sub_260E68E74();
    v29 = sub_260E69454();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 312);
      v30 = *(v0 + 320);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55[0] = v33;
      *v32 = 136315394;
      *(v0 + 296) = v24;
      v34 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v35 = sub_260E69084();
      v37 = sub_260E43774(v35, v36, v55);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_260E43774(v31, v30, v55);
      _os_log_impl(&dword_260E02000, v28, v29, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v33, -1, -1);
      MEMORY[0x2666F1EF0](v32, -1, -1);
    }

    sub_260E15E4C(*(v0 + 352), *(v0 + 360));
    v38 = swift_task_alloc();
    *(v0 + 416) = v38;
    *v38 = v0;
    v38[1] = sub_260E2575C;
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    v15 = *(v0 + 320);
    v16 = *(v0 + 328);
    v17 = *(v0 + 312);
    v18 = v0 + 184;
    goto LABEL_11;
  }

  v40 = sub_260E68E74();
  v41 = sub_260E69474();

  v42 = os_log_type_enabled(v40, v41);
  v44 = *(v0 + 352);
  v43 = *(v0 + 360);
  if (v42)
  {
    v45 = *(v0 + 312);
    v54 = *(v0 + 320);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v55);
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_260E43774(v45, v54, v55);
    _os_log_impl(&dword_260E02000, v40, v41, "Fetch %s END -- Local load {filename: %s}", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v47, -1, -1);
    MEMORY[0x2666F1EF0](v46, -1, -1);
  }

  sub_260E16168(v2, v3);

  sub_260E15FB4(v44, v43);
  sub_260E15FB4(v44, v43);
  sub_260E15FB4(v44, v43);
  v48 = *(v0 + 304);
  v49 = *(v0 + 144);
  v50 = *(v0 + 152);
  v51 = *(v0 + 176);
  v52 = *(v0 + 160);
  *v48 = *(v0 + 128);
  *(v48 + 16) = v49;
  *(v48 + 24) = v50;
  *(v48 + 32) = v52;
  *(v48 + 48) = v51;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_260E25548()
{
  v26 = v0;
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[40];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[48];
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    v0[34] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v25);
    _os_log_impl(&dword_260E02000, v5, v6, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  sub_260E15E4C(v0[44], v0[45]);
  v16 = swift_task_alloc();
  v0[56] = v16;
  *v16 = v0;
  v16[1] = sub_260E26240;
  v17 = v0[44];
  v18 = v0[45];
  v19 = v0[42];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[41];
  v23 = v0[39];

  return sub_260E28FF0((v0 + 2), v23, v21, v22, v19, v20, v17, v18);
}

uint64_t sub_260E2575C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_260E25A9C;
  }

  else
  {
    v6 = sub_260E25888;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E25888()
{
  v25 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 392);
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  if (v5)
  {
    v11 = *(v0 + 312);
    v22 = *(v0 + 320);
    v12 = swift_slowAlloc();
    v23 = v6;
    v24 = swift_slowAlloc();
    v13 = v24;
    *v12 = 136315394;
    *(v12 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v24);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_260E43774(v11, v22, &v24);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v13, -1, -1);
    MEMORY[0x2666F1EF0](v12, -1, -1);
    sub_260E16168(v8, v7);
    v14 = v23;
  }

  else
  {
    sub_260E16168(*(v0 + 392), *(v0 + 400));
    v14 = v6;
  }

  sub_260E15FB4(v9, v10);
  sub_260E15FB4(v9, v10);
  sub_260E15FB4(v9, v10);
  v15 = *(v0 + 304);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 232);
  v19 = *(v0 + 216);
  *v15 = *(v0 + 184);
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v19;
  *(v15 + 48) = v18;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_260E25A9C()
{
  v26 = v0;
  v1 = v0[53];
  v2 = v0[46];
  v3 = v0[40];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[53];
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v25);
    *(v10 + 12) = 2080;
    v0[36] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, v25);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_260E43774(v9, v8, v25);
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v16 = v0[53];
  v17 = v0[50];
  v18 = v0[51];
  v19 = v0[49];
  swift_willThrow();
  sub_260E16168(v19, v17);

  v20 = v0[53];
  v22 = v0[44];
  v21 = v0[45];
  sub_260E15FB4(v22, v21);
  sub_260E15FB4(v22, v21);
  sub_260E15FB4(v22, v21);
  sub_260E15FB4(v22, v21);
  v23 = v0[1];

  return v23();
}

uint64_t sub_260E25CE4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_260E26004;
  }

  else
  {
    v6 = sub_260E25E10;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E25E10()
{
  v22 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  if (v5)
  {
    v10 = *(v0 + 312);
    v20 = *(v0 + 320);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v21);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_260E43774(v10, v20, &v21);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s END -- load from CloudKit {cacheName: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  sub_260E16168(v7, v6);

  sub_260E15FB4(v8, v9);
  sub_260E15FB4(v8, v9);
  sub_260E15FB4(v8, v9);
  v13 = *(v0 + 304);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v0 + 120);
  v17 = *(v0 + 104);
  *v13 = *(v0 + 72);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v17;
  *(v13 + 48) = v16;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_260E26004()
{
  v25 = v0;
  v1 = v0[55];
  v2 = v0[46];
  v3 = v0[40];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[55];
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v24);
    *(v10 + 12) = 2080;
    v0[35] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, v24);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_260E43774(v9, v8, v24);
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v16 = v0[55];
  v17 = v0[49];
  v18 = v0[50];
  swift_willThrow();
  sub_260E16168(v17, v18);
  v19 = v0[55];
  v21 = v0[44];
  v20 = v0[45];
  sub_260E15FB4(v21, v20);
  sub_260E15FB4(v21, v20);
  sub_260E15FB4(v21, v20);
  sub_260E15FB4(v21, v20);
  v22 = v0[1];

  return v22();
}

uint64_t sub_260E26240()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_260E26558;
  }

  else
  {
    v6 = sub_260E2636C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E2636C()
{
  v21 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  if (v5)
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v20);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_260E43774(v10, v9, &v20);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  sub_260E15FB4(v7, v8);
  sub_260E15FB4(v7, v8);
  sub_260E15FB4(v7, v8);
  v13 = *(v0 + 304);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 64);
  v17 = *(v0 + 48);
  *v13 = *(v0 + 16);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v17;
  *(v13 + 48) = v16;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_260E26558()
{
  v17 = v0;
  v1 = v0[46];
  v2 = v0[40];

  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_260E43774(v6, v5, v16);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v9 = v0[57];
  v10 = v0[48];
  swift_willThrow();

  v11 = v0[57];
  v13 = v0[44];
  v12 = v0[45];
  sub_260E15FB4(v13, v12);
  sub_260E15FB4(v13, v12);
  sub_260E15FB4(v13, v12);
  sub_260E15FB4(v13, v12);
  v14 = v0[1];

  return v14();
}

uint64_t sub_260E26724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2822009F8](sub_260E2674C, a6, 0);
}

uint64_t sub_260E2674C()
{
  v26 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = sub_260E68E94();
  v0[36] = __swift_project_value_buffer(v3, qword_27FE54540);

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v25);
    *(v10 + 22) = 2080;
    v12 = [v7 recordName];
    v13 = sub_260E69024();
    v15 = v14;

    v16 = sub_260E43774(v13, v15, &v25);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s START {cacheName: %s, recordName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
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
  v22[1] = sub_260E26A30;

  return (v24)(v0 + 22, v0 + 24);
}

uint64_t sub_260E26A30()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_260E27060;
  }

  else
  {
    v3 = sub_260E26B44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E26B60()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 312) = v2;
  *(v0 + 320) = v3;
  v4 = sub_260E68E74();
  v5 = sub_260E69434();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_260E27798;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 56;
LABEL_11:

    return sub_260E2B268(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v16 = *(v0 + 304);

  v17 = sub_260E686C4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_260E686B4();
  sub_260E33970();
  sub_260E686A4();
  v20 = v16;
  *(v0 + 328) = v16;
  v21 = *(v0 + 288);
  v22 = *(v0 + 256);

  if (v20)
  {

    v23 = v20;
    v24 = sub_260E68E74();
    v25 = sub_260E69454();

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v31 = sub_260E69084();
      v33 = sub_260E43774(v31, v32, v47);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_260E43774(v27, v26, v47);
      _os_log_impl(&dword_260E02000, v24, v25, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v29, -1, -1);
      MEMORY[0x2666F1EF0](v28, -1, -1);
    }

    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *v34 = v0;
    v34[1] = sub_260E27288;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 136;
    goto LABEL_11;
  }

  v36 = sub_260E68E74();
  v37 = sub_260E69474();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 248);
    v38 = *(v0 + 256);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v47);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_260E43774(v39, v38, v47);
    _os_log_impl(&dword_260E02000, v36, v37, "Fetch %s END -- Local load {filename: %s}", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v41, -1, -1);
    MEMORY[0x2666F1EF0](v40, -1, -1);
  }

  sub_260E16168(v2, v3);

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

uint64_t sub_260E2707C()
{
  v24 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v23);
    _os_log_impl(&dword_260E02000, v5, v6, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[46] = v16;
  *v16 = v0;
  v16[1] = sub_260E27C90;
  v17 = v0[34];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[33];
  v21 = v0[31];

  return sub_260E2B268((v0 + 2), v21, v19, v20, v17, v18);
}

uint64_t sub_260E27288()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E2757C;
  }

  else
  {
    v6 = sub_260E273B4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E273B4()
{
  v20 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

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
    *(v11 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v19);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_260E43774(v10, v9, &v19);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  sub_260E16168(v8, v7);

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

uint64_t sub_260E2757C()
{
  v24 = v0;
  v1 = v0[43];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[43];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v23);
    *(v10 + 12) = 2080;
    v0[28] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, v23);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_260E43774(v9, v8, v23);
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[41];
  v19 = v0[39];
  swift_willThrow();
  sub_260E16168(v19, v17);

  v20 = v0[43];
  v21 = v0[1];

  return v21();
}

uint64_t sub_260E27798()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E27A80;
  }

  else
  {
    v6 = sub_260E278C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E278C4()
{
  v19 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

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
    *(v10 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v18);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v18);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s END -- load from CloudKit {cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  sub_260E16168(v7, v6);

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

uint64_t sub_260E27A80()
{
  v23 = v0;
  v1 = v0[45];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[45];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v22);
    *(v10 + 12) = 2080;
    v0[27] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, v22);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_260E43774(v9, v8, v22);
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v16 = v0[45];
  v17 = v0[39];
  v18 = v0[40];
  swift_willThrow();
  sub_260E16168(v17, v18);
  v19 = v0[45];
  v20 = v0[1];

  return v20();
}

uint64_t sub_260E27C90()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E27F6C;
  }

  else
  {
    v6 = sub_260E27DBC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E27DBC()
{
  v18 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

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
    *(v9 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v7, &v17);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
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

uint64_t sub_260E27F6C()
{
  v15 = v0;
  v1 = v0[36];
  v2 = v0[32];

  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_260E43774(v6, v5, v14);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v9 = v0[47];
  v10 = v0[38];
  swift_willThrow();

  v11 = v0[47];
  v12 = v0[1];

  return v12();
}

uint64_t sub_260E28108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2822009F8](sub_260E28130, a6, 0);
}

uint64_t sub_260E28130()
{
  v26 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = sub_260E68E94();
  v0[36] = __swift_project_value_buffer(v3, qword_27FE54540);

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v25);
    *(v10 + 22) = 2080;
    v12 = [v7 recordName];
    v13 = sub_260E69024();
    v15 = v14;

    v16 = sub_260E43774(v13, v15, &v25);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch %s START {cacheName: %s, recordName: %s}", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
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
  v22[1] = sub_260E28414;

  return (v24)(v0 + 22, v0 + 24);
}

uint64_t sub_260E28414()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_260E28A44;
  }

  else
  {
    v3 = sub_260E28528;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E28544()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 312) = v2;
  *(v0 + 320) = v3;
  v4 = sub_260E68E74();
  v5 = sub_260E69434();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_260E28D98;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 56;
LABEL_11:

    return sub_260E2A2E0(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v16 = *(v0 + 304);

  v17 = sub_260E686C4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_260E686B4();
  sub_260E33970();
  sub_260E686A4();
  v20 = v16;
  *(v0 + 328) = v16;
  v21 = *(v0 + 288);
  v22 = *(v0 + 256);

  if (v20)
  {

    v23 = v20;
    v24 = sub_260E68E74();
    v25 = sub_260E69454();

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v31 = sub_260E69084();
      v33 = sub_260E43774(v31, v32, v47);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_260E43774(v27, v26, v47);
      _os_log_impl(&dword_260E02000, v24, v25, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v29, -1, -1);
      MEMORY[0x2666F1EF0](v28, -1, -1);
    }

    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *v34 = v0;
    v34[1] = sub_260E28C6C;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = v0 + 136;
    goto LABEL_11;
  }

  v36 = sub_260E68E74();
  v37 = sub_260E69474();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 248);
    v38 = *(v0 + 256);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v47);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_260E43774(v39, v38, v47);
    _os_log_impl(&dword_260E02000, v36, v37, "Fetch %s END -- Local load {filename: %s}", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v41, -1, -1);
    MEMORY[0x2666F1EF0](v40, -1, -1);
  }

  sub_260E16168(v2, v3);

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

uint64_t sub_260E28A60()
{
  v24 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[32];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v8, &v23);
    _os_log_impl(&dword_260E02000, v5, v6, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[46] = v16;
  *v16 = v0;
  v16[1] = sub_260E28EC4;
  v17 = v0[34];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[33];
  v21 = v0[31];

  return sub_260E2A2E0((v0 + 2), v21, v19, v20, v17, v18);
}

uint64_t sub_260E28C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E34384;
  }

  else
  {
    v6 = sub_260E3437C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E28D98()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E343B0;
  }

  else
  {
    v6 = sub_260E34394;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E28EC4()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E343AC;
  }

  else
  {
    v6 = sub_260E34378;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E28FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v10 = sub_260E689E4();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E290D8, a6, 0);
}

uint64_t sub_260E290D8()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = sub_260E68E94();
  v5 = __swift_project_value_buffer(v4, qword_27FE54540);
  v0[25] = v5;
  sub_260E69644();

  MEMORY[0x2666F0C00](v3, v2);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v0[26] = 0x8000000260E72840;

  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_260E2926C;
  v7 = v0[17];
  v8 = v0[13];
  v9 = v0[14];

  return sub_260E67AB4(0xD00000000000001FLL, 0x8000000260E72840, v5, v7, v8, v9);
}

uint64_t sub_260E2926C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 112);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_260E293C4, v3, 0);
}

uint64_t sub_260E293C4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[15];
  sub_260E689B4();
  v4 = v3;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch CloudKit Record START {recordID: %@}", v8, 0xCu);
    sub_260E155E4(v9, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
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
  v15[1] = sub_260E295A8;

  return v17(v0 + 9, v0 + 10);
}

uint64_t sub_260E295A8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_260E29E44;
  }

  else
  {
    v3 = sub_260E296BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E296BC()
{
  v1 = v0[17];
  v0[30] = v0[9];
  return MEMORY[0x2822009F8](sub_260E296E0, v1, 0);
}

uint64_t sub_260E296E0()
{
  v87 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  if (!v1)
  {
    v23 = *(v0 + 120);
    v24 = sub_260E68E74();
    v25 = sub_260E69454();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 120);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_260E02000, v24, v25, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v27, 0xCu);
      sub_260E155E4(v28, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v28, -1, -1);
      MEMORY[0x2666F1EF0](v27, -1, -1);
    }

    sub_260E15590();
    v30 = swift_allocError();
    *v31 = xmmword_260E6C9E0;
    *(v31 + 16) = 2;
    swift_willThrow();
    v32 = *(v0 + 200);
    v33 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    v34 = v33;
    v35 = v30;
    v36 = sub_260E68E74();
    v37 = sub_260E69454();

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v43 = sub_260E69084();
      v45 = sub_260E43774(v43, v44, &v85);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v38;
      *v40 = v38;
      v46 = v38;
      _os_log_impl(&dword_260E02000, v36, v37, "### Error fetching from CloudKit {error: %s, recordID: %@}", v39, 0x16u);
      sub_260E155E4(v40, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2666F1EF0](v41, -1, -1);
      MEMORY[0x2666F1EF0](v39, -1, -1);
    }

    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    swift_allocError();
    v50 = v49;
    v51 = v30;
    sub_260E1A348(v30, v50);
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
  v7 = sub_260E68E74();
  v8 = sub_260E69474();

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
    sub_260E689B4();
    sub_260E689A4();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
    *(v16 + 14) = v20;
    _os_log_impl(&dword_260E02000, v7, v8, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v16, 0x16u);
    sub_260E155E4(v17, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v17, -1, -1);
    v22 = v16;
    v3 = (v0 + 16);
    MEMORY[0x2666F1EF0](v22, -1, -1);

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
  v58 = sub_260E68E74();
  v59 = sub_260E69474();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_260E02000, v58, v59, "Will parse public cloudkit record", v60, 2u);
    MEMORY[0x2666F1EF0](v60, -1, -1);
  }

  v61 = *(v0 + 232);
  v63 = *(v0 + 144);
  v62 = *(v0 + 152);

  v85 = v63;
  v86 = v62;
  sub_260E15E4C(v63, v62);
  sub_260E240B4(v6, &v85, v3);
  if (v61)
  {
    v65 = *(v0 + 144);
    v64 = *(v0 + 152);

    v52 = v65;
    v53 = v64;
LABEL_14:
    sub_260E15FB4(v52, v53);
    v67 = *(v0 + 184);
    v66 = *(v0 + 192);
    v68 = *(v0 + 176);

    v69 = *(v0 + 8);

    return v69();
  }

  v71 = *(v0 + 200);
  v72 = sub_260E68E74();
  v73 = sub_260E69474();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_260E02000, v72, v73, "Did parse public cloudkit record", v74, 2u);
    MEMORY[0x2666F1EF0](v74, -1, -1);
  }

  v75 = *(v0 + 136);
  v77 = *(v0 + 104);
  v76 = *(v0 + 112);

  v85 = 0;
  v86 = 0xE000000000000000;
  sub_260E69644();

  v85 = 0xD000000000000018;
  v86 = 0x8000000260E72860;
  MEMORY[0x2666F0C00](v77, v76);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
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
  v81[1] = sub_260E2A0C8;
  v82 = *(v0 + 200);

  return sub_260E67764(v79, v78, dword_260E6D670);
}

uint64_t sub_260E29E60()
{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[15];
  (*(v0[21] + 8))(v0[24], v0[20]);
  v4 = v3;
  v5 = v1;
  v6 = sub_260E68E74();
  v7 = sub_260E69454();

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v27);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v16 = v8;
    _os_log_impl(&dword_260E02000, v6, v7, "### Error fetching from CloudKit {error: %s, recordID: %@}", v9, 0x16u);
    sub_260E155E4(v10, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  v18 = v0[18];
  v17 = v0[19];
  sub_260E15590();
  swift_allocError();
  v20 = v19;
  v21 = v1;
  sub_260E1A348(v1, v20);
  swift_willThrow();

  sub_260E15FB4(v18, v17);
  v23 = v0[23];
  v22 = v0[24];
  v24 = v0[22];

  v25 = v0[1];

  return v25();
}

uint64_t sub_260E2A0C8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 136);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_260E2A218, v4, 0);
}

uint64_t sub_260E2A218()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 96);

  sub_260E15FB4(v5, v4);
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

uint64_t sub_260E2A2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v8 = sub_260E689E4();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E2A3C4, a6, 0);
}

uint64_t sub_260E2A3C4()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = sub_260E68E94();
  v5 = __swift_project_value_buffer(v4, qword_27FE54540);
  v0[21] = v5;
  sub_260E69644();

  MEMORY[0x2666F0C00](v3, v2);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v0[22] = 0x8000000260E72840;

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_260E2A558;
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];

  return sub_260E67AB4(0xD00000000000001FLL, 0x8000000260E72840, v5, v7, v8, v9);
}

uint64_t sub_260E2A558()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_260E2A6B0, v3, 0);
}

uint64_t sub_260E2A6B0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[13];
  sub_260E689B4();
  v4 = v3;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch CloudKit Record START {recordID: %@}", v8, 0xCu);
    sub_260E155E4(v9, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
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
  v15[1] = sub_260E2A894;

  return v17(v0 + 7, v0 + 8);
}

uint64_t sub_260E2A894()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_260E2B0FC;
  }

  else
  {
    v3 = sub_260E2A9A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E2A9A8()
{
  v1 = v0[15];
  v0[26] = v0[7];
  return MEMORY[0x2822009F8](sub_260E2A9CC, v1, 0);
}

uint64_t sub_260E2A9CC()
{
  v76 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (!v1)
  {
    v23 = *(v0 + 104);
    v24 = sub_260E68E74();
    v25 = sub_260E69454();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_260E02000, v24, v25, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v27, 0xCu);
      sub_260E155E4(v28, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v28, -1, -1);
      MEMORY[0x2666F1EF0](v27, -1, -1);
    }

    sub_260E15590();
    v30 = swift_allocError();
    *v31 = xmmword_260E6C9E0;
    *(v31 + 16) = 2;
    swift_willThrow();
    v32 = *(v0 + 168);
    v33 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v34 = v33;
    v35 = v30;
    v36 = sub_260E68E74();
    v37 = sub_260E69454();

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v43 = sub_260E69084();
      v45 = sub_260E43774(v43, v44, v75);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v38;
      *v40 = v38;
      v46 = v38;
      _os_log_impl(&dword_260E02000, v36, v37, "### Error fetching from CloudKit {error: %s, recordID: %@}", v39, 0x16u);
      sub_260E155E4(v40, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2666F1EF0](v41, -1, -1);
      MEMORY[0x2666F1EF0](v39, -1, -1);
    }

    swift_allocError();
    v48 = v47;
    v49 = v30;
    sub_260E1A348(v30, v48);
    swift_willThrow();

    goto LABEL_14;
  }

  v3 = (v0 + 16);
  v4 = *(v0 + 104);
  (*(*(v0 + 136) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
  v5 = v4;
  v6 = v1;
  v7 = sub_260E68E74();
  v8 = sub_260E69474();

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
    sub_260E689B4();
    sub_260E689A4();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
    *(v16 + 14) = v20;
    _os_log_impl(&dword_260E02000, v7, v8, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v16, 0x16u);
    sub_260E155E4(v17, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v17, -1, -1);
    v22 = v16;
    v3 = (v0 + 16);
    MEMORY[0x2666F1EF0](v22, -1, -1);

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
  v54 = sub_260E68E74();
  v55 = sub_260E69474();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_260E02000, v54, v55, "Will parse public cloudkit record", v56, 2u);
    MEMORY[0x2666F1EF0](v56, -1, -1);
  }

  v57 = *(v0 + 200);

  sub_260E23B14(v6, v3);
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
  v64 = sub_260E68E74();
  v65 = sub_260E69474();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_260E02000, v64, v65, "Did parse public cloudkit record", v66, 2u);
    MEMORY[0x2666F1EF0](v66, -1, -1);
  }

  v67 = *(v0 + 120);
  v69 = *(v0 + 88);
  v68 = *(v0 + 96);

  sub_260E69644();

  v75[0] = 0xD000000000000018;
  v75[1] = 0x8000000260E72860;
  MEMORY[0x2666F0C00](v69, v68);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  *(v0 + 216) = 0x8000000260E72860;
  v70 = swift_task_alloc();
  *(v0 + 224) = v70;
  v70[2] = v69;
  v70[3] = v68;
  v70[4] = v3;
  v70[5] = v67;
  v71 = swift_task_alloc();
  *(v0 + 232) = v71;
  *v71 = v0;
  v71[1] = sub_260E2B118;
  v72 = *(v0 + 168);

  return sub_260E67764(0xD000000000000018, 0x8000000260E72860, dword_260E6D6C0);
}

uint64_t sub_260E2B118()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 120);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_260E34380, v4, 0);
}

uint64_t sub_260E2B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v8 = sub_260E689E4();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E2B34C, a6, 0);
}

uint64_t sub_260E2B34C()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = sub_260E68E94();
  v5 = __swift_project_value_buffer(v4, qword_27FE54540);
  v0[21] = v5;
  sub_260E69644();

  MEMORY[0x2666F0C00](v3, v2);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v0[22] = 0x8000000260E72840;

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_260E2B4E0;
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];

  return sub_260E67AB4(0xD00000000000001FLL, 0x8000000260E72840, v5, v7, v8, v9);
}

uint64_t sub_260E2B4E0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_260E2B638, v3, 0);
}

uint64_t sub_260E2B638()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[13];
  sub_260E689B4();
  v4 = v3;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch CloudKit Record START {recordID: %@}", v8, 0xCu);
    sub_260E155E4(v9, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
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
  v15[1] = sub_260E2B81C;

  return v17(v0 + 7, v0 + 8);
}

uint64_t sub_260E2B81C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_260E2C084;
  }

  else
  {
    v3 = sub_260E2B930;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E2B930()
{
  v1 = v0[15];
  v0[26] = v0[7];
  return MEMORY[0x2822009F8](sub_260E2B954, v1, 0);
}

uint64_t sub_260E2B954()
{
  v76 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (!v1)
  {
    v23 = *(v0 + 104);
    v24 = sub_260E68E74();
    v25 = sub_260E69454();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_260E02000, v24, v25, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v27, 0xCu);
      sub_260E155E4(v28, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v28, -1, -1);
      MEMORY[0x2666F1EF0](v27, -1, -1);
    }

    sub_260E15590();
    v30 = swift_allocError();
    *v31 = xmmword_260E6C9E0;
    *(v31 + 16) = 2;
    swift_willThrow();
    v32 = *(v0 + 168);
    v33 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v34 = v33;
    v35 = v30;
    v36 = sub_260E68E74();
    v37 = sub_260E69454();

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v43 = sub_260E69084();
      v45 = sub_260E43774(v43, v44, v75);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v38;
      *v40 = v38;
      v46 = v38;
      _os_log_impl(&dword_260E02000, v36, v37, "### Error fetching from CloudKit {error: %s, recordID: %@}", v39, 0x16u);
      sub_260E155E4(v40, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2666F1EF0](v41, -1, -1);
      MEMORY[0x2666F1EF0](v39, -1, -1);
    }

    swift_allocError();
    v48 = v47;
    v49 = v30;
    sub_260E1A348(v30, v48);
    swift_willThrow();

    goto LABEL_14;
  }

  v3 = (v0 + 16);
  v4 = *(v0 + 104);
  (*(*(v0 + 136) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
  v5 = v4;
  v6 = v1;
  v7 = sub_260E68E74();
  v8 = sub_260E69474();

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
    sub_260E689B4();
    sub_260E689A4();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
    *(v16 + 14) = v20;
    _os_log_impl(&dword_260E02000, v7, v8, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v16, 0x16u);
    sub_260E155E4(v17, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v17, -1, -1);
    v22 = v16;
    v3 = (v0 + 16);
    MEMORY[0x2666F1EF0](v22, -1, -1);

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
  v54 = sub_260E68E74();
  v55 = sub_260E69474();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_260E02000, v54, v55, "Will parse public cloudkit record", v56, 2u);
    MEMORY[0x2666F1EF0](v56, -1, -1);
  }

  v57 = *(v0 + 200);

  sub_260E23B14(v6, v3);
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
  v64 = sub_260E68E74();
  v65 = sub_260E69474();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_260E02000, v64, v65, "Did parse public cloudkit record", v66, 2u);
    MEMORY[0x2666F1EF0](v66, -1, -1);
  }

  v67 = *(v0 + 120);
  v69 = *(v0 + 88);
  v68 = *(v0 + 96);

  sub_260E69644();

  v75[0] = 0xD000000000000018;
  v75[1] = 0x8000000260E72860;
  MEMORY[0x2666F0C00](v69, v68);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  *(v0 + 216) = 0x8000000260E72860;
  v70 = swift_task_alloc();
  *(v0 + 224) = v70;
  v70[2] = v69;
  v70[3] = v68;
  v70[4] = v3;
  v70[5] = v67;
  v71 = swift_task_alloc();
  *(v0 + 232) = v71;
  *v71 = v0;
  v71[1] = sub_260E2C2F4;
  v72 = *(v0 + 168);

  return sub_260E67764(0xD000000000000018, 0x8000000260E72860, &unk_260E6D6D8);
}

uint64_t sub_260E2C0A0()
{
  v26 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[13];
  (*(v0[17] + 8))(v0[20], v0[16]);
  v4 = v3;
  v5 = v1;
  v6 = sub_260E68E74();
  v7 = sub_260E69454();

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v25);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v16 = v8;
    _os_log_impl(&dword_260E02000, v6, v7, "### Error fetching from CloudKit {error: %s, recordID: %@}", v9, 0x16u);
    sub_260E155E4(v10, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  sub_260E15590();
  swift_allocError();
  v18 = v17;
  v19 = v1;
  sub_260E1A348(v1, v18);
  swift_willThrow();

  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[18];

  v23 = v0[1];

  return v23();
}

uint64_t sub_260E2C2F4()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 120);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_260E2C444, v4, 0);
}

uint64_t sub_260E2C444()
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

uint64_t sub_260E2C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = a4;
  *(v4 + 104) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  return MEMORY[0x2822009F8](sub_260E2C528, a4, 0);
}

uint64_t sub_260E2C528()
{
  v26 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_260E68E94();
  v0[16] = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_260E43774(v6, v5, &v25);
    _os_log_impl(&dword_260E02000, v3, v4, "Will cache record {filename: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v9 = sub_260E686F4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_260E686E4();
  sub_260E3386C();
  v12 = sub_260E686D4();
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
  v22[1] = sub_260E2C804;

  return (v24)(v0 + 9, v0 + 11);
}

uint64_t sub_260E2C804()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_260E2CA90;
  }

  else
  {
    v3 = sub_260E2C918;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E2C934()
{
  v15 = v0;
  v1 = v0[16];
  v2 = v0[14];

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

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
    *(v10 + 4) = sub_260E43774(v9, v8, &v14);
    _os_log_impl(&dword_260E02000, v3, v4, "Did cache record {filename: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  sub_260E15FB4(v7, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_260E2CAAC()
{
  sub_260E15FB4(v0[17], v0[18]);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

uint64_t sub_260E2CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 88) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_260E2CB44, a4, 0);
}

uint64_t sub_260E2CB44()
{
  v26 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_260E68E94();
  v0[14] = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_260E43774(v6, v5, &v25);
    _os_log_impl(&dword_260E02000, v3, v4, "Will cache record {filename: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v9 = sub_260E686F4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_260E686E4();
  sub_260E33704();
  v12 = sub_260E686D4();
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
  v22[1] = sub_260E2CE20;

  return (v24)(v0 + 7, v0 + 9);
}

uint64_t sub_260E2CE20()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_260E2D0AC;
  }

  else
  {
    v3 = sub_260E2CF34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E2CF50()
{
  v15 = v0;
  v1 = v0[14];
  v2 = v0[12];

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

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
    *(v10 + 4) = sub_260E43774(v9, v8, &v14);
    _os_log_impl(&dword_260E02000, v3, v4, "Did cache record {filename: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  sub_260E15FB4(v7, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_260E2D0C8()
{
  sub_260E15FB4(v0[15], v0[16]);
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
  sub_260E31FD4(v10);

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
  sub_260E31FD4(v10);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.stableBluetoothIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_260E2D2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000260E726C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_260E69834();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260E2D34C(uint64_t a1)
{
  v2 = sub_260E32004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2D388(uint64_t a1)
{
  v2 = sub_260E32004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545D8, &qword_260E6CA70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32004();
  sub_260E69944();
  sub_260E697C4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545E8, &qword_260E6CA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32004();
  sub_260E69934();
  if (!v2)
  {
    v11 = sub_260E69784();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E2D68C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545D8, &qword_260E6CA70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32004();
  sub_260E69944();
  sub_260E697C4();
  return (*(v4 + 8))(v7, v3);
}

double static PersonalizationAssetManager.PrePairingAssetInfo.fixture_airtag_anusree_AB21.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_260E32058(&unk_28735D508);
  v4 = v3;
  v5 = sub_260E32058(&unk_28735D530);
  *&v12 = v2;
  *(&v12 + 1) = v4;
  v11[3] = MEMORY[0x277CC9318];
  v11[4] = MEMORY[0x277CC9300];
  v11[0] = v5;
  v11[1] = v6;
  v7 = __swift_project_boxed_opaque_existential_0(v11, MEMORY[0x277CC9318]);
  v8 = *v7;
  v9 = v7[1];
  sub_260E15E4C(v2, v4);
  sub_260E3188C(v8, v9);
  sub_260E15FB4(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v11);
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
  result = sub_260E32058(&unk_28735D560);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.scannedBluetoothData.getter()
{
  v1 = *v0;
  sub_260E15E4C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_260E2D8F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
    return sub_260E68964();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_260E2D960@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_260E68F24();
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E69064();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_260E68EF4();
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  v34 = sub_260E2D8F4(4, 17, *v1, v13);
  v35 = v15;
  sub_260E68EE4();
  sub_260E69054();
  v16 = sub_260E69034();
  v18 = v17;

  (*(v6 + 8))(v9, v5);
  if (v18 >> 60 == 15)
  {
    result = sub_260E69704();
    __break(1u);
  }

  else
  {
    v19 = sub_260E2D8F4(0, 3, v14, v13);
    v21 = v20;
    v38 = v16;
    v39 = v18;
    v36 = MEMORY[0x277CC9318];
    v37 = MEMORY[0x277CC9300];
    v34 = v19;
    v35 = v20;
    v22 = __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x277CC9318]);
    v23 = *v22;
    v24 = v22[1];
    sub_260E338C0(v16, v18);
    sub_260E15E4C(v19, v21);
    sub_260E3188C(v23, v24);
    sub_260E15FB4(v19, v21);
    sub_260E16168(v16, v18);
    __swift_destroy_boxed_opaque_existential_0(&v34);
    v25 = v38;
    v26 = v39;
    v34 = v38;
    v35 = v39;
    sub_260E68F04();
    sub_260E68F14();
    (*(v30 + 8))(v4, v32);
    sub_260E68F74();
    sub_260E338D4(&qword_27FE546F8, 255, MEMORY[0x277CC5540]);
    sub_260E3391C();
    sub_260E68F64();
    (*(v29 + 8))(v12, v31);
    return sub_260E15FB4(v25, v26);
  }

  return result;
}

unint64_t PersonalizationAssetManager.PrePairingAssetInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v16 = *v0;
  sub_260E69644();

  v3 = sub_260E2D8F4(0, 3, v1, v2);
  v5 = v4;
  sub_260E2FFA0(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08);
  v6 = sub_260E68FC4();
  v8 = v7;
  sub_260E15FB4(v3, v5);

  MEMORY[0x2666F0C00](v6, v8);

  MEMORY[0x2666F0C00](0x65655379656B202CLL, 0xEB00000000203A64);
  v9 = sub_260E2D8F4(4, 17, v16, v2);
  v11 = v10;
  sub_260E2FFA0(v9, v10);
  v12 = sub_260E68FC4();
  v14 = v13;
  sub_260E15FB4(v9, v11);

  MEMORY[0x2666F0C00](v12, v14);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_260E2DFC4()
{
  sub_260E698F4();
  MEMORY[0x2666F1410](0);
  return sub_260E69914();
}

uint64_t sub_260E2E034()
{
  sub_260E698F4();
  MEMORY[0x2666F1410](0);
  return sub_260E69914();
}

uint64_t sub_260E2E090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000260E726E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_260E69834();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260E2E130(uint64_t a1)
{
  v2 = sub_260E32134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2E16C(uint64_t a1)
{
  v2 = sub_260E32134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545F0, &qword_260E6CA80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E15E4C(v8, v9);
  sub_260E32134();
  sub_260E69944();
  v12 = v8;
  v13 = v9;
  sub_260E32188();
  sub_260E697F4();
  sub_260E15FB4(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54608, &qword_260E6CA88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32134();
  sub_260E69934();
  if (!v2)
  {
    sub_260E321DC();
    sub_260E697B4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E2E4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_260E30318(a1, a2, a3);
  }

  sub_260E69644();
  MEMORY[0x2666F0C00](0xD000000000000012, 0x8000000260E727E0);
  MEMORY[0x2666F0C00](a2, a3);
  MEMORY[0x2666F0C00](0x656372756F537B20, 0xEF203A657079542ELL);
  MEMORY[0x2666F0C00](0x64726F6365524B43, 0xED000065756C6156);
  MEMORY[0x2666F0C00](0x746567726154202CLL, 0xEF203A657079542ELL);
  MEMORY[0x2666F0C00](0x676E69727453, 0xE600000000000000);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  sub_260E15590();
  swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0xE000000000000000;
  *(v6 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_260E2E610()
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

uint64_t sub_260E2E674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260E32380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260E2E6A8(uint64_t a1)
{
  v2 = sub_260E32230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2E6E4(uint64_t a1)
{
  v2 = sub_260E32230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PrivateRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54618, &qword_260E6CA90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v14 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32230();
  sub_260E69944();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_260E697C4();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_260E15E4C(v16, v15);
    sub_260E32188();
    sub_260E697F4();
    sub_260E15FB4(v18, v19);
    LOBYTE(v18) = 2;
    sub_260E697E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationAssetManager.PrivateRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54628, &qword_260E6CA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32230();
  sub_260E69934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_260E69784();
  v21 = v12;
  v24 = 1;
  sub_260E321DC();
  sub_260E697B4();
  v19 = v22;
  v20 = v23;
  LOBYTE(v22) = 2;
  v13 = sub_260E697A4();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v14 = v21;
  *a2 = v11;
  a2[1] = v14;
  v16 = v19;
  a2[2] = v19;
  a2[3] = v15;
  a2[4] = v13;

  sub_260E15E4C(v16, v15);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_260E15FB4(v16, v15);
}

uint64_t sub_260E2EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = a7;
  v98 = a6;
  v109 = a3;
  v12 = sub_260E68F54();
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v12);
  v103 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_260E68EF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v99 = (&v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v94 - v20;
  v22 = a5[1];
  v108 = *a5;
  v112 = v108;
  v113 = v22;
  v114 = v22;
  sub_260E2D960(&v94 - v20);
  sub_260E68ED4();
  v23 = *(v16 + 8);
  v106 = v16 + 8;
  v107 = v15;
  v105 = v23;
  v23(v21, v15);
  v24 = v112;
  v25 = v113;
  v26 = sub_260E68964();
  v28 = v27;
  sub_260E15FB4(v24, v25);
  v29 = sub_260E68984();
  v31 = v30;
  sub_260E15FB4(v26, v28);
  v104 = a4;
  if (v29 == a1 && v31 == a2)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_260E69834();
  }

  v112 = 0;
  v113 = 0xE000000000000000;
  sub_260E69644();
  MEMORY[0x2666F0C00](0xD000000000000028, 0x8000000260E728E0);
  MEMORY[0x2666F0C00](a1, a2);

  MEMORY[0x2666F0C00](0xD00000000000001BLL, 0x8000000260E72910);
  v33 = v108;
  v34 = v114;
  v110 = v108;
  v111 = v114;
  sub_260E2D960(v21);
  sub_260E68ED4();
  v102 = v7;
  v105(v21, v107);
  v35 = v110;
  v36 = v111;
  v37 = sub_260E68964();
  v39 = v38;
  sub_260E15FB4(v35, v36);
  v40 = sub_260E68984();
  v42 = v41;
  sub_260E15FB4(v37, v39);
  MEMORY[0x2666F0C00](v40, v42);

  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v43 = v113;
  if ((v32 & 1) == 0)
  {
    v60 = v112;
    sub_260E15FB4(v33, v34);
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_260E69644();

    v112 = 0xD000000000000016;
    v113 = 0x8000000260E72930;
    MEMORY[0x2666F0C00](v60, v43);

    v61 = v112;
    v62 = v113;
    sub_260E15590();
    swift_allocError();
    *v63 = v61;
    *(v63 + 8) = v62;
    *(v63 + 16) = 0;
    swift_willThrow();
    v58 = v109;
    v59 = v104;
    return sub_260E15FB4(v58, v59);
  }

  v44 = v109;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v45 = sub_260E68E94();
  v46 = __swift_project_value_buffer(v45, qword_27FE54540);
  v47 = v104;
  sub_260E15E4C(v44, v104);
  v96 = v46;
  v48 = sub_260E68E74();
  v49 = sub_260E69434();
  sub_260E15FB4(v44, v47);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v112 = v51;
    *v50 = 136315138;
    sub_260E15E4C(v44, v47);
    v52 = sub_260E68924();
    v54 = v53;
    sub_260E15FB4(v109, v47);
    v55 = sub_260E43774(v52, v54, &v112);

    *(v50 + 4) = v55;
    v44 = v109;
    _os_log_impl(&dword_260E02000, v48, v49, "Decrypting image: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x2666F1EF0](v51, -1, -1);
    MEMORY[0x2666F1EF0](v50, -1, -1);
  }

  v56 = v108;
  sub_260E15E4C(v44, v47);
  v57 = v102;
  sub_260E2F4FC(v44, v47);
  if (v57)
  {
    sub_260E15FB4(v56, v114);
    v58 = v44;
    v59 = v47;
    return sub_260E15FB4(v58, v59);
  }

  v112 = v56;
  v113 = v114;
  v65 = v99;
  sub_260E2D960(v99);
  v66 = v65;
  v67 = sub_260E68F34();
  v69 = v68;
  v105(v66, v107);
  sub_260E15E4C(v67, v69);
  v70 = sub_260E68E74();
  LODWORD(v66) = sub_260E69434();
  v102 = v69;
  sub_260E15FB4(v67, v69);
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
    sub_260E15E4C(v72, v102);
    v76 = sub_260E68924();
    v78 = v77;
    sub_260E15FB4(v72, v75);
    v79 = sub_260E43774(v76, v78, &v112);
    v44 = v109;

    *(v73 + 4) = v79;
    v80 = v103;
    v81 = v99;
    _os_log_impl(&dword_260E02000, v99, v96, "Finished fetching personalized asset: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x2666F1EF0](v74, -1, -1);
    v82 = v73;
    v56 = v108;
    MEMORY[0x2666F1EF0](v82, -1, -1);
  }

  else
  {

    v80 = v103;
  }

  sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  v112 = v56;
  v113 = v114;
  sub_260E2D960(v21);
  sub_260E68ED4();
  v105(v21, v107);
  v83 = v56;
  v84 = v112;
  v85 = v113;
  sub_260E68984();
  sub_260E15FB4(v84, v85);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  sub_260E69484();
  v86 = sub_260E69404();
  v87 = [v86 recordName];

  v88 = sub_260E69024();
  v90 = v89;

  sub_260E15FB4(v44, v104);
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

uint64_t sub_260E2F4FC(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
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
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_0(v30, MEMORY[0x277CC9318]);
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
        v18 = sub_260E68744();
        if (v18)
        {
          v19 = sub_260E68764();
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
        sub_260E30B6C(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_0(v30);
        result = sub_260E68F44();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_260E68744();
        if (!v18)
        {
LABEL_25:
          v24 = sub_260E68754();
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

        v23 = sub_260E68764();
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
  sub_260E15FB4(a1, a2);
  v7 = sub_260E68EC4();
  sub_260E338D4(&qword_27FE546E8, 255, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_260E2F818()
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

uint64_t sub_260E2F8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260E324AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260E2F8D4(uint64_t a1)
{
  v2 = sub_260E32284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2F910(uint64_t a1)
{
  v2 = sub_260E32284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PublicRecord.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54630, &qword_260E6CAA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
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
  __swift_project_boxed_opaque_existential_0(v15, v13);
  sub_260E15E4C(v9, v10);
  sub_260E32284();
  sub_260E69944();
  v26 = v9;
  v27 = v10;
  v28 = 0;
  sub_260E322D8();
  sub_260E697F4();
  sub_260E15FB4(v26, v27);
  if (!v2)
  {
    v19 = v22;
    v18 = v23;
    LOBYTE(v26) = 1;
    sub_260E697C4();
    v26 = v18;
    v27 = v19;
    v28 = 2;
    sub_260E15E4C(v18, v19);
    sub_260E32188();
    sub_260E697F4();
    sub_260E15FB4(v26, v27);
    LOBYTE(v26) = 3;
    sub_260E697E4();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t PersonalizationAssetManager.PublicRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54648, &qword_260E6CAA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32284();
  sub_260E69934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  sub_260E3232C();
  sub_260E697B4();
  v11 = v28;
  v27 = v29;
  LOBYTE(v28) = 1;
  v12 = sub_260E69784();
  v26 = v13;
  v25 = v12;
  v30 = 2;
  sub_260E321DC();
  sub_260E697B4();
  v23 = v28;
  v24 = v29;
  LOBYTE(v28) = 3;
  v15 = sub_260E697A4();
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
  sub_260E15E4C(v16, v18);

  sub_260E15E4C(v21, v20);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_260E15FB4(v16, v18);

  return sub_260E15FB4(v21, v20);
}

uint64_t sub_260E2FED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_260E31DC8(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_260E31E80(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_260E31EFC(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_260E2FFA0(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_260E659E0(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_260E68744();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_260E68764();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_260E68744();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_260E68764();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54708, &qword_260E6D680);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_260E6BDB0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_260E69044();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_260E659E0((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_260E30318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546C8, &qword_260E6D638);
  if (swift_dynamicCast())
  {
    return v8;
  }

  sub_260E69644();

  MEMORY[0x2666F0C00](a2, a3);
  MEMORY[0x2666F0C00](0x7465677261547B20, 0xEF203A657079542ELL);
  MEMORY[0x2666F0C00](0x676E69727453, 0xE600000000000000);
  MEMORY[0x2666F0C00](0x656372756F53202CLL, 0xEA0000000000203ALL);
  swift_unknownObjectRetain();
  v6 = sub_260E69074();
  MEMORY[0x2666F0C00](v6);

  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  sub_260E15590();
  swift_allocError();
  *v7 = 0xD000000000000012;
  *(v7 + 8) = 0x8000000260E72800;
  *(v7 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_260E304C0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_260E30598(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E30690;

  return v7(a1);
}

uint64_t sub_260E30690()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_260E307AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  sub_260E15FB4(v0[8], v0[9]);
  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260E30804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E343A8;

  return sub_260E1F220(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_260E30910()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  sub_260E15FB4(v0[9], v0[10]);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260E30968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E30A3C;

  return sub_260E1FDD8(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_260E30A3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_260E30B30(id a1, char a2)
{
  if (a2)
  {
  }
}

_BYTE *sub_260E30B6C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_260E31DC8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_260E31E80(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_260E31EFC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_260E30C00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_260E68904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  sub_260E4A030();
  v15 = a3 + *(_s19ParentDirectoryCRUDVMa() + 20);
  sub_260E688A4();
  sub_260E68994();
  (*(v8 + 8))(v10, v7);

  v17 = *(v3 + 8);

  return v17();
}

uint64_t sub_260E30D6C(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_260E4A4DC(*a2, a2[1]);
  a1[1] = v4;
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_260E30DFC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_260E68904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  sub_260E4A6EC();
  sub_260E4A030();
  v15 = a3 + *(_s19ParentDirectoryCRUDVMa() + 20);
  sub_260E688A4();
  sub_260E68994();
  (*(v8 + 8))(v10, v7);

  v17 = *(v3 + 8);

  return v17();
}

uint64_t sub_260E30F78(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  sub_260E4A6EC();
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_260E30FFC(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 152) = *a2;
  *(v3 + 160) = v4;
  return MEMORY[0x2822009F8](sub_260E31024, 0, 0);
}

uint64_t sub_260E31024()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E3114C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54738, &qword_260E6D7A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_227;
  v0[14] = v3;
  [v1 saveRecord:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E3114C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_260E343A0;
  }

  else
  {
    v3 = sub_260E34398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E3125C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_260E312FC;

  return sub_260E4B484(v4, v5);
}

uint64_t sub_260E312FC(uint64_t a1)
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

uint64_t sub_260E3140C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 152) = *a2;
  *(v3 + 160) = v4;
  return MEMORY[0x2822009F8](sub_260E31434, 0, 0);
}

uint64_t sub_260E31434()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E3114C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54738, &qword_260E6D7A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_221;
  v0[14] = v3;
  [v1 saveRecord:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E3155C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = *a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_260E31584, 0, 0);
}

uint64_t sub_260E31584()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E316AC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54730, &qword_260E6D7A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v1 deleteRecordWithID:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E316AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_260E31820;
  }

  else
  {
    v3 = sub_260E317BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E317BC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E31820()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_260E3188C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_260E68954();
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

  result = sub_260E319C4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_260E319C4(uint64_t a1, uint64_t a2)
{
  result = sub_260E68744();
  if (!result || (result = sub_260E68764(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_260E68754();
      return sub_260E68954();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_260E31A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  v9 = swift_task_alloc();
  *(v4 + 72) = v9;
  *v9 = v4;
  v9[1] = sub_260E31B20;

  return sub_260E2C4EC(a1, a2, v4 + 16, a4);
}

uint64_t sub_260E31B20()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_260E31C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a3 + 32);
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_260E31CD4;

  return sub_260E2CB10(a1, a2, v4 + 16, a4);
}

uint64_t sub_260E31CD4()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_260E31DC8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_260E31E80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_260E68774();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_260E68734();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_260E68944();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_260E31EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_260E68774();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_260E68734();
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

unint64_t sub_260E31F80()
{
  result = qword_27FE545C0;
  if (!qword_27FE545C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE545C0);
  }

  return result;
}

unint64_t sub_260E32004()
{
  result = qword_27FE545E0;
  if (!qword_27FE545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE545E0);
  }

  return result;
}

uint64_t sub_260E32058(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546B8, &unk_260E6D628);
  v10 = sub_260E335CC(&qword_27FE546C0, &qword_27FE546B8, &unk_260E6D628);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_260E30B6C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_260E32134()
{
  result = qword_27FE545F8;
  if (!qword_27FE545F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE545F8);
  }

  return result;
}

unint64_t sub_260E32188()
{
  result = qword_27FE54600;
  if (!qword_27FE54600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54600);
  }

  return result;
}

unint64_t sub_260E321DC()
{
  result = qword_27FE54610;
  if (!qword_27FE54610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54610);
  }

  return result;
}

unint64_t sub_260E32230()
{
  result = qword_27FE54620;
  if (!qword_27FE54620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54620);
  }

  return result;
}

unint64_t sub_260E32284()
{
  result = qword_27FE54638;
  if (!qword_27FE54638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54638);
  }

  return result;
}

unint64_t sub_260E322D8()
{
  result = qword_27FE54640;
  if (!qword_27FE54640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54640);
  }

  return result;
}

unint64_t sub_260E3232C()
{
  result = qword_27FE54650;
  if (!qword_27FE54650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54650);
  }

  return result;
}

uint64_t sub_260E32380(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x8000000260E726C0 == a2 || (sub_260E69834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_260E69834() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_260E69834();

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

uint64_t sub_260E324AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000260E72700 == a2 || (sub_260E69834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL || (sub_260E69834() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_260E69834() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_260E69834();

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

id _sSo11CKContainerC10ProductKitE16AirTagsContainerABvgZ_0()
{
  if (!sub_260E38D68())
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v5 = sub_260E68E94();
    __swift_project_value_buffer(v5, qword_27FE54540);
    v1 = sub_260E68E74();
    v6 = sub_260E69474();
    if (!os_log_type_enabled(v1, v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v6, "Using production environment", v4, 2u);
    v3 = 1;
    goto LABEL_10;
  }

  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_260E68E94();
  __swift_project_value_buffer(v0, qword_27FE54540);
  v1 = sub_260E68E74();
  v2 = sub_260E69474();
  v3 = 2;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v2, "Using sandbox environment", v4, 2u);
LABEL_10:
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

LABEL_12:

  v7 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v8 = sub_260E68FF4();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v3];

  v10 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  return v10;
}

id _sSo11CKContainerC10ProductKitE31PersonalizationManateeContainerABvgZ_0()
{
  if (!sub_260E38D68())
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v5 = sub_260E68E94();
    __swift_project_value_buffer(v5, qword_27FE54540);
    v1 = sub_260E68E74();
    v6 = sub_260E69474();
    if (!os_log_type_enabled(v1, v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v6, "Using production environment", v4, 2u);
    v3 = 1;
    goto LABEL_10;
  }

  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_260E68E94();
  __swift_project_value_buffer(v0, qword_27FE54540);
  v1 = sub_260E68E74();
  v2 = sub_260E69474();
  v3 = 2;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v2, "Using sandbox environment", v4, 2u);
LABEL_10:
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

LABEL_12:

  v7 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v8 = sub_260E68FF4();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v3];

  v10 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  return v10;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_260E32A80(uint64_t a1, unsigned int a2)
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

uint64_t sub_260E32AC8(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E32B34(uint64_t a1, unsigned int a2)
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

uint64_t sub_260E32B90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PersonalizationAssetManager.Asset.Metadata(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalizationAssetManager.Asset.Metadata(uint64_t result, int a2, int a3)
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

uint64_t sub_260E32C58(uint64_t a1, int a2)
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

uint64_t sub_260E32CA0(uint64_t result, int a2, int a3)
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

uint64_t sub_260E32CEC(uint64_t a1, unsigned int a2)
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

uint64_t sub_260E32D40(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_260E32DB0(uint64_t a1, int a2)
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

uint64_t sub_260E32DF8(uint64_t result, int a2, int a3)
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

uint64_t sub_260E32E6C(uint64_t a1, int a2)
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

uint64_t sub_260E32EB4(uint64_t result, int a2, int a3)
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

uint64_t sub_260E330D4(uint64_t *a1, int a2)
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

uint64_t sub_260E3311C(uint64_t result, int a2, int a3)
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

unint64_t sub_260E331B0()
{
  result = qword_27FE54658;
  if (!qword_27FE54658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54658);
  }

  return result;
}

unint64_t sub_260E33208()
{
  result = qword_27FE54660;
  if (!qword_27FE54660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54660);
  }

  return result;
}

unint64_t sub_260E33260()
{
  result = qword_27FE54668;
  if (!qword_27FE54668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54668);
  }

  return result;
}

unint64_t sub_260E332B8()
{
  result = qword_27FE54670;
  if (!qword_27FE54670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54670);
  }

  return result;
}

unint64_t sub_260E33310()
{
  result = qword_27FE54678;
  if (!qword_27FE54678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54678);
  }

  return result;
}

unint64_t sub_260E33368()
{
  result = qword_27FE54680;
  if (!qword_27FE54680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54680);
  }

  return result;
}

unint64_t sub_260E333C0()
{
  result = qword_27FE54688;
  if (!qword_27FE54688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54688);
  }

  return result;
}

unint64_t sub_260E33418()
{
  result = qword_27FE54690;
  if (!qword_27FE54690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54690);
  }

  return result;
}

unint64_t sub_260E33470()
{
  result = qword_27FE54698;
  if (!qword_27FE54698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54698);
  }

  return result;
}

unint64_t sub_260E334C8()
{
  result = qword_27FE546A0;
  if (!qword_27FE546A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546A0);
  }

  return result;
}

unint64_t sub_260E33520()
{
  result = qword_27FE546A8;
  if (!qword_27FE546A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546A8);
  }

  return result;
}

unint64_t sub_260E33578()
{
  result = qword_27FE546B0;
  if (!qword_27FE546B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546B0);
  }

  return result;
}

uint64_t sub_260E335CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_260E33614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260E3364C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260E343A8;

  return sub_260E30598(a1, v5);
}

unint64_t sub_260E33704()
{
  result = qword_27FE546D0;
  if (!qword_27FE546D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546D0);
  }

  return result;
}

unint64_t sub_260E33758()
{
  result = qword_27FE546D8;
  if (!qword_27FE546D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546D8);
  }

  return result;
}

uint64_t sub_260E337AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260E30A3C;

  return sub_260E31A58(v2, v3, v5, v4);
}

unint64_t sub_260E3386C()
{
  result = qword_27FE546E0;
  if (!qword_27FE546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546E0);
  }

  return result;
}

uint64_t sub_260E338C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260E15E4C(a1, a2);
  }

  return a1;
}

uint64_t sub_260E338D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_260E3391C()
{
  result = qword_27FE54700;
  if (!qword_27FE54700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54700);
  }

  return result;
}

unint64_t sub_260E33970()
{
  result = qword_27FE54728;
  if (!qword_27FE54728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54728);
  }

  return result;
}

uint64_t sub_260E339C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260E343A8;

  return sub_260E31C14(v2, v3, v5, v4);
}

uint64_t sub_260E33A84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}