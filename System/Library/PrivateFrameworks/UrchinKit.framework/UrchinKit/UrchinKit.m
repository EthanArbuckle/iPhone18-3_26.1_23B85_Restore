_BYTE *sub_2707D793C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = sub_2707D7998(v0);
    v4 = *(v0 + 112);
    *(v0 + 112) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

_BYTE *sub_2707D7998(uint64_t a1)
{
  v2 = sub_2707F1038();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v67 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v65[-v7];
  MEMORY[0x28223BE20](v6);
  v69 = &v65[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382C8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65[-v14];
  MEMORY[0x28223BE20](v13);
  v70 = &v65[-v16];
  v17 = [objc_opt_self() defaultManager];
  v19 = *(a1 + 208);
  v18 = *(a1 + 216);
  v20 = sub_2707F12E8();
  v21 = [v17 containerURLForSecurityApplicationGroupIdentifier_];

  if (v21)
  {
    sub_2707F1028();

    (*(v3 + 56))(v15, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v15, 1, 1, v2);
  }

  v22 = v70;
  sub_2707DC04C(v15, v70);
  sub_2707DC0BC(v22, v12, &qword_2808382C8);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_2707DC124(v12, &qword_2808382C8);
    if (qword_280838228 != -1)
    {
      swift_once();
    }

    v23 = sub_2707F1278();
    __swift_project_value_buffer(v23, qword_28083B2A0);

    v24 = sub_2707F1258();
    v25 = sub_2707F1448();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v71 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2707DAAD4(v19, v18, &v71);
      _os_log_impl(&dword_2707D6000, v24, v25, "Could not find %s url. Using standard defaults.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2743AA810](v27, -1, -1);
      MEMORY[0x2743AA810](v26, -1, -1);
    }

    v28 = [objc_opt_self() standardUserDefaults];
    v29 = v22;
LABEL_23:
    sub_2707DC124(v29, &qword_2808382C8);
    return v28;
  }

  (*(v3 + 32))(v69, v12, v2);
  v30 = objc_opt_self();
  v31 = sub_2707F12E8();
  v32 = sub_2707F1018();
  v33 = [v30 createWithSuiteName:v31 container:v32];

  if (!v33)
  {
    if (qword_280838228 != -1)
    {
      swift_once();
    }

    v50 = sub_2707F1278();
    __swift_project_value_buffer(v50, qword_28083B2A0);
    v51 = v67;
    (*(v3 + 16))(v67, v69, v2);

    v52 = sub_2707F1258();
    v53 = sub_2707F1448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v54 = 136315394;
      v66 = v53;
      v55 = sub_2707F1008();
      v56 = v51;
      v57 = v55;
      v59 = v58;
      v60 = *(v3 + 8);
      v60(v56, v2);
      v61 = sub_2707DAAD4(v57, v59, &v71);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_2707DAAD4(v19, v18, &v71);
      _os_log_impl(&dword_2707D6000, v52, v66, "Could not create user defaults with url: %s and group: %s. Using standard defaults.", v54, 0x16u);
      v62 = v68;
      swift_arrayDestroy();
      MEMORY[0x2743AA810](v62, -1, -1);
      MEMORY[0x2743AA810](v54, -1, -1);
    }

    else
    {

      v60 = *(v3 + 8);
      v60(v51, v2);
    }

    v28 = [objc_opt_self() standardUserDefaults];
    v60(v69, v2);
    v29 = v70;
    goto LABEL_23;
  }

  if (qword_280838228 != -1)
  {
    swift_once();
  }

  v34 = sub_2707F1278();
  __swift_project_value_buffer(v34, qword_28083B2A0);
  v36 = v68;
  v35 = v69;
  (*(v3 + 16))(v68, v69, v2);
  v37 = sub_2707F1258();
  v38 = sub_2707F1458();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v36;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71 = v41;
    *v40 = 136315138;
    v42 = sub_2707F0FF8();
    v67 = v33;
    v43 = v42;
    v45 = v44;
    v46 = *(v3 + 8);
    v46(v39, v2);
    v47 = v43;
    v33 = v67;
    v48 = sub_2707DAAD4(v47, v45, &v71);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_2707D6000, v37, v38, "Creating defaults at: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x2743AA810](v41, -1, -1);
    MEMORY[0x2743AA810](v40, -1, -1);

    v46(v69, v2);
    v49 = v70;
  }

  else
  {

    v63 = *(v3 + 8);
    v63(v36, v2);
    v63(v35, v2);
    v49 = v22;
  }

  sub_2707DC124(v49, &qword_2808382C8);
  return v33;
}

uint64_t sub_2707D8200@<X0>(char **a1@<X8>)
{
  swift_beginAccess();
  sub_2707DC0BC(v1 + 120, &v9, &qword_280838238);
  if (v10)
  {
    return sub_2707DC034(&v9, a1);
  }

  sub_2707DC124(&v9, &qword_280838238);
  v4 = type metadata accessor for NPSManager();
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC9UrchinKit10NPSManager_logger;
  if (qword_280838218 != -1)
  {
    swift_once();
  }

  v7 = sub_2707F1278();
  v8 = __swift_project_value_buffer(v7, qword_28083B270);
  (*(*(v7 - 8) + 16))(&v5[v6], v8, v7);
  *(v5 + 2) = 0xD000000000000017;
  *(v5 + 3) = 0x80000002707F3860;
  *(v5 + 4) = 0xD000000000000011;
  *(v5 + 5) = 0x80000002707F3990;
  a1[3] = v4;
  a1[4] = &protocol witness table for NPSManager;
  *a1 = v5;
  sub_2707DBF60(a1, &v9);
  swift_beginAccess();
  sub_2707DBFC4(&v9, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_2707D83B8()
{
  if (v0[28])
  {
    v1 = v0[28];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2707F1CC0;
    v3 = v0[21];
    *(inited + 32) = v0[20];
    *(inited + 40) = v3;
    v4 = v0[23];
    *(inited + 48) = v0[22];
    *(inited + 56) = v4;
    v5 = v0[25];
    *(inited + 64) = v0[24];
    *(inited + 72) = v5;

    v1 = sub_2707DDA18(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v0[28] = v1;
  }

  return v1;
}

double sub_2707D84A8()
{
  type metadata accessor for SyncedPreferenceManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = 0.0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 160) = 0xD000000000000011;
  *(v0 + 168) = 0x80000002707F3800;
  *(v0 + 176) = 0xD000000000000015;
  *(v0 + 184) = 0x80000002707F3820;
  *(v0 + 192) = 0xD000000000000016;
  *(v0 + 200) = 0x80000002707F3840;
  *(v0 + 208) = 0xD000000000000017;
  *(v0 + 216) = 0x80000002707F3860;
  *(v0 + 224) = 0;
  qword_2808381D0 = v0;
  return result;
}

uint64_t SyncedPreferenceManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 160) = 0xD000000000000011;
  *(v0 + 168) = 0x80000002707F3800;
  *(v0 + 176) = 0xD000000000000015;
  *(v0 + 184) = 0x80000002707F3820;
  *(v0 + 192) = 0xD000000000000016;
  *(v0 + 200) = 0x80000002707F3840;
  *(v0 + 208) = 0xD000000000000017;
  *(v0 + 216) = 0x80000002707F3860;
  *(v0 + 224) = 0;
  return v0;
}

uint64_t static SyncedPreferenceManager.shared.getter()
{
  if (qword_2808381C8 != -1)
  {
    swift_once();
  }
}

uint64_t SyncedPreferenceManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 160) = 0xD000000000000011;
  *(v0 + 168) = 0x80000002707F3800;
  *(v0 + 176) = 0xD000000000000015;
  *(v0 + 184) = 0x80000002707F3820;
  *(v0 + 192) = 0xD000000000000016;
  *(v0 + 200) = 0x80000002707F3840;
  *(v0 + 208) = 0xD000000000000017;
  *(v0 + 216) = 0x80000002707F3860;
  *(v0 + 224) = 0;
  return v0;
}

uint64_t sub_2707D8714()
{
  v1 = sub_2707D83B8();
  v2 = 0;
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        v9 = sub_2707D793C();
        v10 = sub_2707F12E8();

        [v9 removeObjectForKey_];
      }

      while (v6);
      continue;
    }
  }

  sub_2707D8200((v0 + 16));
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v13 = *(v12 + 32);

  v13(v14, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (qword_280838228 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v15 = sub_2707F1278();
  __swift_project_value_buffer(v15, qword_28083B2A0);
  v16 = sub_2707F1258();
  v17 = sub_2707F1458();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2707D6000, v16, v17, "Successfully deleted plist.", v18, 2u);
    MEMORY[0x2743AA810](v18, -1, -1);
  }

  v19 = *(v0 + 8);

  return v19();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t SyncedPreferenceManager.deinit()
{
  sub_2707DC124(v0 + 120, &qword_280838238);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SyncedPreferenceManager.__deallocating_deinit()
{
  SyncedPreferenceManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2707D8A84()
{
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](0);
  return sub_2707F1628();
}

uint64_t sub_2707D8AF0()
{
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](0);
  return sub_2707F1628();
}

uint64_t sub_2707D8B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2707F15D8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2707D8BF4(uint64_t a1)
{
  v2 = sub_2707DBCD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707D8C30(uint64_t a1)
{
  v2 = sub_2707DBCD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707D8C6C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838298);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707DBCD8();
  sub_2707F1648();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838280);
  sub_2707DBD74(&qword_2808382A0, &qword_2808382A8);
  sub_2707F15C8();
  return (*(v5 + 8))(v7, v4);
}

void *sub_2707D8E00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2707DB07C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2707D8E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2707D8F00;

  return sub_2707DB238(a2, a3);
}

uint64_t sub_2707D8F00(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t StaticLocationStore.getLocations(buildSampleLocations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2707DC37C;

  return sub_2707DB238(a2, a3);
}

uint64_t SyncedPreferenceManager.getLocations()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2707DC37C;

  return SyncedPreferenceManager.getLocations(buildSampleLocations:)(1);
}

uint64_t SyncedPreferenceManager.getLocations(buildSampleLocations:)(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2707D9168, v1, 0);
}

uint64_t sub_2707D9168()
{
  v35 = v0;
  v1 = sub_2707D793C();
  v2 = sub_2707F12E8();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    v4 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_11;
  }

  v4 = sub_2707F1058();
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    goto LABEL_10;
  }

  if (v7)
  {
    v8 = v4;
    v9 = v4 >> 32;
LABEL_10:
    if (v8 != v9)
    {
      goto LABEL_24;
    }

LABEL_11:
    if (qword_280838228 != -1)
    {
      swift_once();
    }

    v10 = sub_2707F1278();
    __swift_project_value_buffer(v10, qword_28083B2A0);
    v11 = sub_2707F1258();
    v12 = sub_2707F1458();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2707D6000, v11, v12, "Could not read data from UserDefaults, returning sample locations.", v13, 2u);
      MEMORY[0x2743AA810](v13, -1, -1);
    }

    v14 = *(v0 + 32);

    if (v14 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838240);
      v15 = type metadata accessor for CoastalLocation();
      v16 = *(*(v15 - 8) + 72);
      v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_2707F1CC0;
      v19 = v18 + v17;
      if (qword_2808381D8 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v15, qword_28083B210);
      sub_2707DB3B8(v20, v19);
      if (qword_2808381E0 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v15, qword_28083B228);
      sub_2707DB3B8(v21, v19 + v16);
      v22 = v19 + 2 * v16;
      if (qword_2808381E8 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v15, qword_28083B240);
      sub_2707DB3B8(v23, v22);
      sub_2707DB350(v4, v6);
    }

    else
    {
      sub_2707DB350(v4, v6);
      v18 = MEMORY[0x277D84F90];
    }

    goto LABEL_25;
  }

  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  sub_2707F0FB8();
  swift_allocObject();
  sub_2707F0FA8();
  sub_2707DB41C();
  sub_2707F0F98();

  v18 = *(v0 + 16);
  if (qword_280838228 != -1)
  {
    swift_once();
  }

  v26 = sub_2707F1278();
  __swift_project_value_buffer(v26, qword_28083B2A0);

  v27 = sub_2707F1258();
  v28 = sub_2707F1458();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v29 = 134218243;
    *(v29 + 4) = *(v18 + 16);

    *(v29 + 12) = 2081;
    v31 = sub_2707D97C4(v18);
    v33 = sub_2707DAAD4(v31, v32, &v34);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_2707D6000, v27, v28, "Successfully read %ld locations: %{private}s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x2743AA810](v30, -1, -1);
    MEMORY[0x2743AA810](v29, -1, -1);

    sub_2707DB364(v4, v6);
  }

  else
  {
    sub_2707DB364(v4, v6);
  }

LABEL_25:
  v24 = *(v0 + 8);

  return v24(v18);
}

uint64_t sub_2707D97C4(uint64_t a1)
{
  v2 = type metadata accessor for CoastalLocation();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23 = v4;
    v24 = MEMORY[0x277D84F90];
    sub_2707EE3B0(0, v7, 0);
    v9 = v23;
    v8 = v24;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_2707DB3B8(v10, v6);
      v12 = &v6[*(v9 + 32)];
      v14 = *v12;
      v13 = *(v12 + 1);

      sub_2707DBEA0(v6);
      v24 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2707EE3B0((v15 > 1), v16 + 1, 1);
        v9 = v23;
        v8 = v24;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  v24 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382B8);
  sub_2707DBEFC();
  v18 = sub_2707F12A8();
  v20 = v19;

  v24 = 91;
  v25 = 0xE100000000000000;
  MEMORY[0x2743AA020](v18, v20);

  MEMORY[0x2743AA020](93, 0xE100000000000000);
  return v24;
}

uint64_t SyncedPreferenceManager.set(locations:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2707F10B8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2707D9A70, v1, 0);
}

uint64_t sub_2707D9A70()
{
  v29 = v0;
  v1 = *(v0 + 64);
  sub_2707F0FE8();
  swift_allocObject();
  sub_2707F0FD8();
  *(v0 + 56) = v1;
  sub_2707DB4BC();
  v2 = sub_2707F0FC8();
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = v7;

  v9 = sub_2707D793C();
  v10 = sub_2707F1048();
  v11 = sub_2707F12E8();
  [v9 setValue:v10 forKey:v11];

  v12 = *(v5 + 112);
  sub_2707F1098();
  v13 = sub_2707F1078();
  (*(v4 + 8))(v3, v6);
  v14 = sub_2707F12E8();
  [v12 setValue:v13 forKey:v14];

  sub_2707D8200((v0 + 16));
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2707D83B8();
  (*(v15 + 32))();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (qword_280838228 != -1)
  {
    swift_once();
  }

  v16 = sub_2707F1278();
  __swift_project_value_buffer(v16, qword_28083B2A0);

  v17 = sub_2707F1258();
  v18 = sub_2707F1458();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 64);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 134218243;
    *(v21 + 4) = *(v20 + 16);

    *(v21 + 12) = 2081;
    v23 = sub_2707D97C4(v20);
    v25 = sub_2707DAAD4(v23, v24, &v28);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_2707D6000, v17, v18, "Successfully saved %ld locations: %{private}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x2743AA810](v22, -1, -1);
    MEMORY[0x2743AA810](v21, -1, -1);
    sub_2707DB364(v2, v8);
  }

  else
  {
    sub_2707DB364(v2, v8);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2707D9EF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2707D9F90;

  return SyncedPreferenceManager.set(locations:)(a1);
}

uint64_t sub_2707D9F90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2707DA084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2707DC37C;

  return SyncedPreferenceManager.getLocations(buildSampleLocations:)(1);
}

uint64_t sub_2707DA118(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2707DC37C;

  return SyncedPreferenceManager.getLocations(buildSampleLocations:)(a1);
}

uint64_t sub_2707DA1D0()
{
  v18 = v0;
  v1 = sub_2707D793C();
  v2 = sub_2707F12E8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_2707F12F8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (qword_280838228 != -1)
  {
    swift_once();
  }

  v7 = sub_2707F1278();
  __swift_project_value_buffer(v7, qword_28083B2A0);

  v8 = sub_2707F1258();
  v9 = sub_2707F1458();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    if (v6)
    {
      v12 = v4;
    }

    else
    {
      v12 = 7104878;
    }

    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_2707DAAD4(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2707D6000, v8, v9, "Read selectedLocation: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2743AA810](v11, -1, -1);
    MEMORY[0x2743AA810](v10, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15(v4, v6);
}

uint64_t SyncedPreferenceManager.set(selectedLocation:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2707DA410, v2, 0);
}

uint64_t sub_2707DA410()
{
  v20 = v0;
  v1 = *(v0 + 64);
  v2 = sub_2707D793C();
  if (v1)
  {
    v3 = sub_2707F12E8();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_2707F12E8();
  [v2 setValue:v3 forKey:v4];

  swift_unknownObjectRelease();
  sub_2707D8200((v0 + 16));
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2707D83B8();
  (*(v5 + 32))();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (qword_280838228 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 64);
  v7 = sub_2707F1278();
  __swift_project_value_buffer(v7, qword_28083B2A0);

  v8 = sub_2707F1258();
  v9 = sub_2707F1458();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v1 == 0;
    if (v1)
    {
      v14 = v10;
    }

    else
    {
      v14 = 7104878;
    }

    if (v13)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = v6;
    }

    v16 = sub_2707DAAD4(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2707D6000, v8, v9, "Set selected location to: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x2743AA810](v12, -1, -1);
    MEMORY[0x2743AA810](v11, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2707DA670(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707DC378;

  return SyncedPreferenceManager.set(selectedLocation:)(a1, a2);
}

uint64_t sub_2707DA718()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2707DA7A8;

  return SyncedPreferenceManager.getSelectedLocation()();
}

uint64_t sub_2707DA7A8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t SyncedPreferenceManager.getLastUpdated()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2707DA8CC, v1, 0);
}

uint64_t sub_2707DA8CC()
{
  v1 = sub_2707D793C();
  v2 = sub_2707F12E8();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_2707F1478();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  v4 = *(v0 + 48);
  if (*(v0 + 40))
  {
    v5 = sub_2707F10B8();
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v4, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_2707DC124(v0 + 16, &qword_280838260);
    v7 = sub_2707F10B8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2707DAAD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2707DABA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2707DBE40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2707DABA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2707DACAC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2707F14D8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2707DACAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2707DACF8(a1, a2);
  sub_2707DAE28(&unk_2880824D0);
  return v3;
}

uint64_t sub_2707DACF8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2707DAF14(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2707F14D8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2707F1378();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2707DAF14(v10, 0);
        result = sub_2707F1498();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2707DAE28(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2707DAF88(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2707DAF14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2707DAF88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382B0);
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

void *sub_2707DB07C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838270);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707DBCD8();
  sub_2707F1638();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838280);
    sub_2707DBD74(&qword_280838288, &qword_280838290);
    sub_2707F1558();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_2707DB238(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707DC37C;

  return v7(a1, a2);
}

uint64_t sub_2707DB350(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2707DB364(a1, a2);
  }

  return a1;
}

uint64_t sub_2707DB364(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2707DB3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoastalLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2707DB41C()
{
  result = qword_280838248;
  if (!qword_280838248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838248);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2707DB4BC()
{
  result = qword_280838258;
  if (!qword_280838258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838258);
  }

  return result;
}

uint64_t dispatch thunk of SyncedPreferenceManager.deleteAll()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2707DC378;

  return v4();
}

uint64_t dispatch thunk of StaticLocationStore.set(locations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2707D9F90;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of StaticLocationStore.getLocations()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707DC37C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of StaticLocationStore.getLocations(buildSampleLocations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2707D8F00;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SelectedLocationStore.set(selectedLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2707DC378;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SelectedLocationStore.getSelectedLocation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707DA7A8;

  return v7(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CoastalLocation.Coordinate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CoastalLocation.Coordinate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_280838268)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280838268);
    }
  }
}

unint64_t sub_2707DBCD8()
{
  result = qword_280838278;
  if (!qword_280838278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838278);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2707DBD74(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280838280);
    sub_2707DBDFC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2707DBDFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoastalLocation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2707DBE40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2707DBEA0(uint64_t a1)
{
  v2 = type metadata accessor for CoastalLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2707DBEFC()
{
  result = qword_2808382C0;
  if (!qword_2808382C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808382B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808382C0);
  }

  return result;
}

uint64_t sub_2707DBF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2707DBFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838238);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2707DC034(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2707DC04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2707DC0BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2707DC124(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SyncedPreferenceManager.StaticLocationList.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SyncedPreferenceManager.StaticLocationList.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2707DC274()
{
  result = qword_2808382D8;
  if (!qword_2808382D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808382D8);
  }

  return result;
}

unint64_t sub_2707DC2CC()
{
  result = qword_2808382E0;
  if (!qword_2808382E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808382E0);
  }

  return result;
}

unint64_t sub_2707DC324()
{
  result = qword_2808382E8;
  if (!qword_2808382E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808382E8);
  }

  return result;
}

uint64_t static SampleLocationBuilder.buildSampleLocations()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838240);
  v0 = type metadata accessor for CoastalLocation();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2707F1CC0;
  v4 = v3 + v2;
  if (qword_2808381D8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28083B210);
  sub_2707DB3B8(v5, v4);
  if (qword_2808381E0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28083B228);
  sub_2707DB3B8(v6, v4 + v1);
  if (qword_2808381E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_28083B240);
  sub_2707DB3B8(v7, v4 + 2 * v1);
  return v3;
}

uint64_t static SampleLocationBuilder.buildAppleParkLocation()@<X0>(uint64_t a1@<X8>)
{
  if (qword_2808381F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CoastalLocation();
  v3 = __swift_project_value_buffer(v2, qword_28083B258);

  return sub_2707DB3B8(v3, a1);
}

uint64_t sub_2707DC598()
{
  v0 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_2707F1198();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2707F10D8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2707F12D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  __swift_allocate_value_buffer(v0, qword_28083B210);
  v40 = __swift_project_value_buffer(v0, qword_28083B210);
  sub_2707F12C8();
  v17 = sub_2707F12E8();
  v18 = [objc_opt_self() bundleWithIdentifier_];

  v19 = v38;
  (*(v11 + 16))(v14, v16, v10);
  sub_2707F10C8();
  v20 = sub_2707F1318();
  v22 = v21;
  v23 = v16;
  v24 = v39;
  (*(v11 + 8))(v23, v10);
  sub_2707F1168();
  v25 = *(v24 + 48);
  if (v25(v5, 1, v19) == 1)
  {
    sub_2707F1188();
    if (v25(v5, 1, v19) != 1)
    {
      sub_2707DD94C(v5);
    }
  }

  else
  {
    (*(v24 + 32))(v41, v5, v19);
  }

  v26 = sub_2707DDB80(&unk_2880824F8);
  v27 = v0[11];
  v28 = &v2[v0[10]];
  *v2 = v20;
  *(v2 + 1) = v22;
  *(v2 + 1) = xmmword_2707F20C0;
  v29 = v41;
  (*(v24 + 16))(&v2[v0[7]], v41, v19);
  *v28 = 0xD000000000000011;
  *(v28 + 1) = 0x80000002707F3A70;
  v42 = 979595116;
  v43 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2707F20D0;
  v31 = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D83A80];
  *(v30 + 56) = MEMORY[0x277D839F8];
  *(v30 + 64) = v32;
  *(v30 + 32) = 0x4042BF6FFEED15E9;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 72) = 0xC05E9FC6C6000000;
  v33 = sub_2707F1308();
  MEMORY[0x2743AA020](v33);

  v34 = v43;
  v35 = &v2[v0[8]];
  *v35 = v42;
  v35[1] = v34;
  (*(v24 + 8))(v29, v19);
  v2[v0[9]] = 0;
  *&v2[v27] = v26;
  return sub_2707DD9B4(v2, v40);
}

uint64_t sub_2707DCAE0()
{
  v0 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_2707F1198();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2707F10D8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2707F12D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  __swift_allocate_value_buffer(v0, qword_28083B228);
  v40 = __swift_project_value_buffer(v0, qword_28083B228);
  sub_2707F12C8();
  v17 = sub_2707F12E8();
  v18 = [objc_opt_self() bundleWithIdentifier_];

  v19 = v38;
  (*(v11 + 16))(v14, v16, v10);
  sub_2707F10C8();
  v20 = sub_2707F1318();
  v22 = v21;
  v23 = v16;
  v24 = v39;
  (*(v11 + 8))(v23, v10);
  sub_2707F1168();
  v25 = *(v24 + 48);
  if (v25(v5, 1, v19) == 1)
  {
    sub_2707F1188();
    if (v25(v5, 1, v19) != 1)
    {
      sub_2707DD94C(v5);
    }
  }

  else
  {
    (*(v24 + 32))(v41, v5, v19);
  }

  v26 = sub_2707DDB80(&unk_288082520);
  v27 = v0[11];
  v28 = &v2[v0[10]];
  *v2 = v20;
  *(v2 + 1) = v22;
  *(v2 + 1) = xmmword_2707F20E0;
  v29 = v41;
  (*(v24 + 16))(&v2[v0[7]], v41, v19);
  *v28 = 0xD000000000000010;
  *(v28 + 1) = 0x80000002707F3A50;
  v42 = 979595116;
  v43 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2707F20D0;
  v31 = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D83A80];
  *(v30 + 56) = MEMORY[0x277D839F8];
  *(v30 + 64) = v32;
  *(v30 + 32) = 0x403546827814E494;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 72) = 0xC063BA6C456DC85ALL;
  v33 = sub_2707F1308();
  MEMORY[0x2743AA020](v33);

  v34 = v43;
  v35 = &v2[v0[8]];
  *v35 = v42;
  v35[1] = v34;
  (*(v24 + 8))(v29, v19);
  v2[v0[9]] = 0;
  *&v2[v27] = v26;
  return sub_2707DD9B4(v2, v40);
}

uint64_t sub_2707DD02C()
{
  v0 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_2707F1198();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2707F10D8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2707F12D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  __swift_allocate_value_buffer(v0, qword_28083B240);
  v40 = __swift_project_value_buffer(v0, qword_28083B240);
  sub_2707F12C8();
  v17 = sub_2707F12E8();
  v18 = [objc_opt_self() bundleWithIdentifier_];

  v19 = v38;
  (*(v11 + 16))(v14, v16, v10);
  sub_2707F10C8();
  v20 = sub_2707F1318();
  v22 = v21;
  v23 = v16;
  v24 = v39;
  (*(v11 + 8))(v23, v10);
  sub_2707F1168();
  v25 = *(v24 + 48);
  if (v25(v5, 1, v19) == 1)
  {
    sub_2707F1188();
    if (v25(v5, 1, v19) != 1)
    {
      sub_2707DD94C(v5);
    }
  }

  else
  {
    (*(v24 + 32))(v41, v5, v19);
  }

  v26 = sub_2707DDB80(&unk_288082548);
  v27 = v0[11];
  v28 = &v2[v0[10]];
  *v2 = v20;
  *(v2 + 1) = v22;
  *(v2 + 1) = xmmword_2707F20F0;
  v29 = v41;
  (*(v24 + 16))(&v2[v0[7]], v41, v19);
  *v28 = 0xD000000000000011;
  *(v28 + 1) = 0x80000002707F3A10;
  v42 = 979595116;
  v43 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2707F20D0;
  v31 = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D83A80];
  *(v30 + 56) = MEMORY[0x277D839F8];
  *(v30 + 64) = v32;
  *(v30 + 32) = 0xC040F212B360EAFCLL;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 72) = 0x4062E8E2DD7A99FALL;
  v33 = sub_2707F1308();
  MEMORY[0x2743AA020](v33);

  v34 = v43;
  v35 = &v2[v0[8]];
  *v35 = v42;
  v35[1] = v34;
  (*(v24 + 8))(v29, v19);
  v2[v0[9]] = 0;
  *&v2[v27] = v26;
  return sub_2707DD9B4(v2, v40);
}

uint64_t sub_2707DD578()
{
  v0 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_2707F1198();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_28083B258);
  v10 = __swift_project_value_buffer(v0, qword_28083B258);
  sub_2707F1168();
  v11 = *(v7 + 48);
  if (v11(v5, 1, v6) == 1)
  {
    sub_2707F1188();
    if (v11(v5, 1, v6) != 1)
    {
      sub_2707DD94C(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v12 = v0[11];
  v13 = &v2[v0[10]];
  strcpy(v2, "AP Duck Pond");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  *(v2 + 1) = xmmword_2707F2100;
  (*(v7 + 16))(&v2[v0[7]], v9, v6);
  *v13 = 0;
  *(v13 + 1) = 0;
  v21 = 979595116;
  v22 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2707F20D0;
  v15 = MEMORY[0x277D839F8];
  v16 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v16;
  *(v14 + 32) = 0x4042AAEBC408D8EDLL;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = 0xC05E809F94855DA2;
  v17 = sub_2707F1308();
  MEMORY[0x2743AA020](v17);

  v18 = v22;
  v19 = &v2[v0[8]];
  *v19 = v21;
  v19[1] = v18;
  (*(v7 + 8))(v9, v6);
  v2[v0[9]] = 0;
  *&v2[v12] = 0;
  return sub_2707DD9B4(v2, v10);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2707DD94C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2707DD9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoastalLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2707DDA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838308);
    v3 = sub_2707F1488();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2707F15E8();

      sub_2707F1348();
      result = sub_2707F1628();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2707F15D8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2707DDB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838300);
    v2 = sub_2707F1488();
    v3 = v2 + 56;
    while (1)
    {
      sub_2707F15E8();
      MEMORY[0x2743AA2B0](0);
      result = sub_2707F1628();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

UrchinKit::UrchinWidgetKind_optional __swiftcall UrchinWidgetKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2707F14E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UrchinWidgetKind.rawValue.getter()
{
  v1 = 0x6C6C657753;
  v2 = 0x4C587365646954;
  if (*v0 != 2)
  {
    v2 = 0x7365646954;
  }

  if (*v0)
  {
    v1 = 0x7478655465646954;
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

unint64_t sub_2707DDD50()
{
  result = qword_280838310;
  if (!qword_280838310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838310);
  }

  return result;
}

uint64_t sub_2707DDDA4()
{
  sub_2707F15E8();
  sub_2707F1348();

  return sub_2707F1628();
}

uint64_t sub_2707DDE60()
{
  sub_2707F1348();
}

uint64_t sub_2707DDF08()
{
  sub_2707F15E8();
  sub_2707F1348();

  return sub_2707F1628();
}

void sub_2707DDFCC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6C657753;
  v4 = 0xE700000000000000;
  v5 = 0x4C587365646954;
  if (*v1 != 2)
  {
    v5 = 0x7365646954;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7478655465646954;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2707DE048()
{
  result = qword_280838318;
  if (!qword_280838318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280838320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UrchinWidgetKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UrchinWidgetKind(uint64_t result, unsigned int a2, unsigned int a3)
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

char *NPSManager.__allocating_init(appGroupName:npsContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC9UrchinKit10NPSManager_logger;
  if (qword_280838218 != -1)
  {
    swift_once();
  }

  v10 = sub_2707F1278();
  v11 = __swift_project_value_buffer(v10, qword_28083B270);
  (*(*(v10 - 8) + 16))(&v8[v9], v11, v10);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

uint64_t NPSManager.appGroupName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NPSManager.npsContainer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

char *NPSManager.init(appGroupName:npsContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC9UrchinKit10NPSManager_logger;
  if (qword_280838218 != -1)
  {
    swift_once();
  }

  v10 = sub_2707F1278();
  v11 = __swift_project_value_buffer(v10, qword_28083B270);
  (*(*(v10 - 8) + 16))(&v4[v9], v11, v10);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  *(v4 + 5) = a4;
  return v4;
}

void sub_2707DE448()
{
  v0 = [objc_allocWithZone(UKNPSManagerBridge) init];
  v1 = sub_2707F12E8();
  v2 = sub_2707F1428();
  v3 = sub_2707F12E8();
  v4 = sub_2707F12E8();
  [v0 synchronizeUserDefaultsDomain:v1 keys:v2 container:v3 appGroupContainer:v4];

  oslog = sub_2707F1258();
  v5 = sub_2707F1458();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2707D6000, oslog, v5, "Finished syncing using NPS.", v6, 2u);
    MEMORY[0x2743AA810](v6, -1, -1);
  }
}

uint64_t NPSManager.deinit()
{

  v1 = OBJC_IVAR____TtC9UrchinKit10NPSManager_logger;
  v2 = sub_2707F1278();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NPSManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9UrchinKit10NPSManager_logger;
  v2 = sub_2707F1278();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2707DE6C8()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_2707DE6FC()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_2707DE730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  type metadata accessor for NPSManager();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC9UrchinKit10NPSManager_logger;
  if (qword_280838218 != -1)
  {
    swift_once();
  }

  v12 = sub_2707F1278();
  v13 = __swift_project_value_buffer(v12, qword_28083B270);
  result = (*(*(v12 - 8) + 16))(&v10[v11], v13, v12);
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  *(v10 + 5) = a4;
  *a5 = v10;
  return result;
}

uint64_t type metadata accessor for NPSManager()
{
  result = qword_280838330;
  if (!qword_280838330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2707DE8E8()
{
  result = sub_2707F1278();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CLAuthorizationStatus.string.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7265746544746F6ELL;
    }

    if (a1 == 1)
    {
      return 0x7463697274736572;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465696E6564;
      case 3:
        return 0xD000000000000010;
      case 4:
        return 0xD000000000000013;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t UrchinFeatureFlags.hashValue.getter()
{
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](0);
  return sub_2707F1628();
}

unint64_t sub_2707DEB58()
{
  result = qword_280838340;
  if (!qword_280838340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838340);
  }

  return result;
}

uint64_t CLLocation.shortDescription.getter()
{
  [v0 coordinate];
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v5 + 16) = xmmword_2707F20D0;
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;

  return sub_2707F1308();
}

BOOL Forecast<>.cachedDataExpired.getter()
{
  v0 = sub_2707F10B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2707F11B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838348);
  sub_2707F11C8();
  sub_2707F11A8();
  (*(v5 + 8))(v7, v4);
  sub_2707F1088();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  return fabs(v9) > 86400.0;
}

uint64_t static UrchinAnalytics.send<A>(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838350);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  sub_2707F13E8();
  v12 = sub_2707F1408();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  (*(v6 + 16))(v8, a1, a2);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  *(v14 + 5) = a3;
  (*(v6 + 32))(&v14[v13], v8, a2);
  sub_2707DF700(0, 0, v11, &unk_2707F23E0, v14);
}

uint64_t sub_2707DF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_2707D9F90;

  return static UrchinAnalytics.asyncSend<A>(event:)(a4, a5, a6);
}

uint64_t sub_2707DF0C4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2707DF180(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2707D9F90;

  return sub_2707DF018(a1, v7, v8, v1 + v6, v4, v5);
}

uint64_t static UrchinAnalytics.asyncSend<A>(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = *(a2 - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2707DF338, 0, 0);
}

uint64_t sub_2707DF338()
{
  v36 = v0;
  if (qword_280838230 != -1)
  {
    swift_once();
  }

  v1 = sub_2707F1278();
  __swift_project_value_buffer(v1, qword_28083B2B8);
  v2 = sub_2707F1258();
  v3 = sub_2707F1438();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    v9 = *(v5 + 8);
    v10 = v9(v6, v5);
    v12 = sub_2707DAAD4(v10, v11, &v35);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2707D6000, v2, v3, "Attempting to send CoreAnalytics event: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2743AA810](v8, -1, -1);
    MEMORY[0x2743AA810](v7, -1, -1);

    v13 = v9;
  }

  else
  {

    v13 = *(v5 + 8);
  }

  v14 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  v34 = v13;
  v13(v17, v16);
  v19 = sub_2707F12E8();

  (*(v15 + 16))(v14, v18, v17);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v16;
  (*(v15 + 32))(v21 + v20, v14, v17);
  v0[6] = sub_2707DFC60;
  v0[7] = v21;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2707DFB54;
  v0[5] = &block_descriptor;
  v22 = _Block_copy(v0 + 2);

  LOBYTE(v14) = AnalyticsSendEventLazy();
  _Block_release(v22);

  if ((v14 & 1) == 0)
  {
    v23 = sub_2707F1258();
    v24 = sub_2707F1448();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[9];
      v26 = v0[10];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      v29 = v34(v25, v26);
      v31 = sub_2707DAAD4(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2707D6000, v23, v24, "Immediately failed to send CoreAnalytics event: %s. The event may not be enabled in the current config.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2743AA810](v28, -1, -1);
      MEMORY[0x2743AA810](v27, -1, -1);
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_2707DF700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838350);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2707DFF28(a3, v25 - v10);
  v12 = sub_2707F1408();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2707DFF98(v11);
  }

  else
  {
    sub_2707F13F8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2707F13D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2707F1328() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2707DFF98(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2707DFF98(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2707DF9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280838230 != -1)
  {
    swift_once();
  }

  v5 = sub_2707F1278();
  __swift_project_value_buffer(v5, qword_28083B2B8);
  v6 = sub_2707F1258();
  v7 = sub_2707F1438();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = (*(a3 + 8))(a2, a3);
    v12 = sub_2707DAAD4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2707D6000, v6, v7, "Successfully sent CoreAnalytics event: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2743AA810](v9, -1, -1);
    MEMORY[0x2743AA810](v8, -1, -1);
  }

  return (*(a3 + 16))(a2, a3);
}

id sub_2707DFB54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2707DFEDC();
    v4 = sub_2707F1288();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2707DFBE0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2707DFCB4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2707DFDAC;

  return v6(a1);
}

uint64_t sub_2707DFDAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2707DFEDC()
{
  result = qword_280838358;
  if (!qword_280838358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280838358);
  }

  return result;
}

uint64_t sub_2707DFF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2707DFF98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2707E0000()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2707E0038(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707DC378;

  return sub_2707DFCB4(a1, v4);
}

uint64_t sub_2707E00F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707D9F90;

  return sub_2707DFCB4(a1, v4);
}

uint64_t DateInterval.simpleString.getter()
{
  v0 = sub_2707F10B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 91;
  v12[1] = 0xE100000000000000;
  sub_2707F0F88();
  v4 = sub_2707F10A8();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v3, v0);
  MEMORY[0x2743AA020](v4, v6);

  MEMORY[0x2743AA020](45, 0xE100000000000000);
  sub_2707F0F68();
  v8 = sub_2707F10A8();
  v10 = v9;
  v7(v3, v0);
  MEMORY[0x2743AA020](v8, v10);

  MEMORY[0x2743AA020](93, 0xE100000000000000);
  return v12[0];
}

uint64_t static DateInterval.createMidnightInterval(for:interval:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_2707F10F8();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2707F1108();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2707F10E8();
  v44 = *(v61 - 8);
  v9 = v44;
  MEMORY[0x28223BE20](v61);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838360);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v43 - v13;
  v48 = sub_2707F10B8();
  v46 = *(v48 - 8);
  v14 = MEMORY[0x28223BE20](v48);
  v59 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v43 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v49 = &v43 - v20;
  v21 = sub_2707F1198();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2707F1158();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707F1138();
  (*(v22 + 16))(v24, a2, v21);
  v27 = a1;
  sub_2707F1148();
  (*(v9 + 104))(v11, *MEMORY[0x277CC9878], v61);
  v28 = v51;
  v29 = v53;
  (*(v51 + 104))(v8, *MEMORY[0x277CC9900], v53);
  v30 = v57;
  v31 = v58;
  v32 = v54;
  (*(v57 + 104))(v54, *MEMORY[0x277CC98E8], v58);
  v33 = v45;
  v43 = v27;
  v47 = v26;
  sub_2707F1118();
  (*(v30 + 8))(v32, v31);
  v34 = v29;
  v35 = v46;
  (*(v28 + 8))(v8, v34);
  v36 = v48;
  (*(v44 + 8))(v11, v61);
  v37 = *(v35 + 48);
  if (v37(v33, 1, v36) == 1)
  {
    v38 = v49;
    (*(v35 + 16))(v49, v43, v36);
    if (v37(v33, 1, v36) != 1)
    {
      sub_2707E0998(v33);
    }
  }

  else
  {
    v38 = v49;
    (*(v35 + 32))(v49, v33, v36);
  }

  v39 = v55;
  sub_2707F1068();
  v40 = *(v35 + 16);
  v40(v56, v38, v36);
  v40(v59, v39, v36);
  sub_2707F0F78();
  v41 = *(v35 + 8);
  v41(v39, v36);
  v41(v38, v36);
  return (*(v50 + 8))(v47, v52);
}

uint64_t sub_2707E0998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DateInterval.createMidnightInterval(for:component:value:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a2;
  v69 = a3;
  v70 = a5;
  v71 = a1;
  v6 = sub_2707F10F8();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2707F1108();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2707F10E8();
  v54 = *(v72 - 8);
  v11 = v54;
  MEMORY[0x28223BE20](v72);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838360);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v67 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = sub_2707F10B8();
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v66 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v65 = &v53 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v64 = &v53 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v63 = &v53 - v27;
  MEMORY[0x28223BE20](v26);
  v73 = &v53 - v28;
  v29 = sub_2707F1198();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2707F1158();
  v61 = *(v33 - 8);
  v62 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707F1138();
  (*(v30 + 16))(v32, a4, v29);
  sub_2707F1148();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9878], v72);
  v36 = v10;
  v37 = v57;
  (*(v8 + 104))(v10, *MEMORY[0x277CC9900], v57);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CC98E8], v60);
  v41 = v55;
  sub_2707F1118();
  (*(v38 + 8))(v39, v40);
  v42 = v36;
  v43 = v73;
  (*(v8 + 8))(v42, v37);
  v44 = v13;
  v45 = v56;
  (*(v54 + 8))(v44, v72);
  v46 = *(v41 + 48);
  if (v46(v18, 1, v45) == 1)
  {
    v47 = *(v41 + 16);
    (v47)(v43, v71, v45);
    if (v46(v18, 1, v45) != 1)
    {
      sub_2707E0998(v18);
    }

    v48 = v64;
  }

  else
  {
    (*(v41 + 32))(v43, v18, v45);
    v47 = *(v41 + 16);
    v48 = v64;
  }

  v49 = v63;
  v47();
  v50 = v67;
  sub_2707F1128();
  if (v46(v50, 1, v45) == 1)
  {
    (v47)(v48, v49, v45);
    if (v46(v50, 1, v45) != 1)
    {
      sub_2707E0998(v50);
    }
  }

  else
  {
    (*(v41 + 32))(v48, v50, v45);
  }

  (v47)(v65, v49, v45);
  (v47)(v66, v48, v45);
  sub_2707F0F78();
  v51 = *(v41 + 8);
  v51(v48, v45);
  v51(v49, v45);
  v51(v73, v45);
  return (*(v61 + 8))(v35, v62);
}

uint64_t DateInterval.clampedDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2707F10B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707F0F88();
  sub_2707E12CC();
  v8 = sub_2707F12B8();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    return sub_2707F0F88();
  }

  sub_2707F0F68();
  v11 = sub_2707F12B8();
  v9(v7, v4);
  if (v11)
  {
    return sub_2707F0F68();
  }

  else
  {
    return (*(v5 + 16))(a2, a1, v4);
  }
}

unint64_t sub_2707E12CC()
{
  result = qword_280838368;
  if (!qword_280838368)
  {
    sub_2707F10B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838368);
  }

  return result;
}

void sub_2707E1324()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_2707F12E8();
  [v0 setDateFormat_];

  qword_280838370 = v0;
}

uint64_t Date.log.getter()
{
  if (qword_2808381F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280838370;
  v1 = sub_2707F1078();
  v2 = [v0 stringFromDate_];

  v3 = sub_2707F12F8();
  return v3;
}

uint64_t Date.shortLog.getter()
{
  if (qword_2808381F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280838370;
  v1 = sub_2707F1078();
  v2 = [v0 stringFromDate_];

  v3 = sub_2707F12F8();
  v5 = v4;

  v6 = sub_2707E153C(6, v3, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x2743A9FF0](v6, v8, v10, v12);

  return v13;
}

uint64_t sub_2707E153C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_2707F1358();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t RevGeoResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RevGeoResult();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707E17F0(v1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      return 0x6D72657465646E75;
    }

    else
    {
      return 0x6F70707553746F6ELL;
    }
  }

  else
  {
    sub_2707E3100(v7, v4, type metadata accessor for CoastalLocation);
    v12[0] = 0x6574726F70707573;
    v12[1] = 0xEB00000000203A64;
    MEMORY[0x2743AA020](*v4, v4[1]);
    v11 = v12[0];
    sub_2707E3B28(v4, type metadata accessor for CoastalLocation);
    return v11;
  }
}

uint64_t type metadata accessor for RevGeoResult()
{
  result = qword_2808383F8;
  if (!qword_2808383F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2707E17F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RevGeoResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2707E186C()
{
  v1 = *v0;
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](v1);
  return sub_2707F1628();
}

uint64_t sub_2707E18E0()
{
  v1 = *v0;
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](v1);
  return sub_2707F1628();
}

uint64_t sub_2707E1924()
{
  v1 = 0x6F70707553746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6574726F70707573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D72657465646E75;
  }
}

uint64_t sub_2707E198C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2707E3994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2707E19C0(uint64_t a1)
{
  v2 = sub_2707E2F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707E19FC(uint64_t a1)
{
  v2 = sub_2707E2F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707E1A44@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2707E1A74(uint64_t a1)
{
  v2 = sub_2707E3004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707E1AB0(uint64_t a1)
{
  v2 = sub_2707E3004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707E1B04()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2707E1B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_2707F15D8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2707F15D8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2707E1BF8(uint64_t a1)
{
  v2 = sub_2707E2F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707E1C34(uint64_t a1)
{
  v2 = sub_2707E2F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707E1C70(uint64_t a1)
{
  v2 = sub_2707E3058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707E1CAC(uint64_t a1)
{
  v2 = sub_2707E3058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RevGeoResult.encode(to:)(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838380);
  v29 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - v2;
  v30 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v30);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838388);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838390);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for RevGeoResult();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838398);
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707E2F08();
  sub_2707F1648();
  sub_2707E17F0(v34, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
  v17 = (*(*(v16 - 8) + 48))(v12, 2, v16);
  if (v17)
  {
    if (v17 == 1)
    {
      v37 = 0;
      sub_2707E3058();
      sub_2707F1578();
      (*(v26 + 8))(v9, v7);
    }

    else
    {
      v38 = 1;
      sub_2707E3004();
      sub_2707F1578();
      (*(v27 + 8))(v6, v28);
    }

    return (*(v35 + 8))(v15, v13);
  }

  else
  {
    v18 = v29;
    v19 = v12[*(v16 + 48)];
    v20 = v31;
    sub_2707E3100(v12, v31, type metadata accessor for CoastalLocation);
    v42 = 2;
    sub_2707E2F5C();
    v21 = v32;
    sub_2707F1578();
    v41 = 0;
    sub_2707DBDFC(&qword_2808382A8);
    v22 = v33;
    v23 = v36;
    sub_2707F15C8();
    if (!v23)
    {
      v40 = v19;
      v39 = 1;
      sub_2707E2FB0();
      sub_2707F15C8();
    }

    (*(v18 + 8))(v21, v22);
    sub_2707E3B28(v20, type metadata accessor for CoastalLocation);
    return (*(v35 + 8))(v15, v13);
  }
}

uint64_t RevGeoResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808383C8);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808383D0);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808383D8);
  v53 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808383E0);
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for RevGeoResult();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2707E2F08();
  v20 = v57;
  sub_2707F1638();
  if (!v20)
  {
    v22 = v53;
    v21 = v54;
    v45 = v16;
    v46 = v18;
    v57 = 0;
    v23 = v55;
    v24 = sub_2707F1568();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
    {
      v28 = sub_2707F14C8();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808383E8);
      *v30 = v13;
      sub_2707F1508();
      sub_2707F14B8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v56 + 8))(v12, v10);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    if (*(v24 + 32))
    {
      v53 = v24;
      if (v26 == 1)
      {
        v60 = 1;
        sub_2707E3004();
        v32 = v10;
        v33 = v57;
        sub_2707F14F8();
        v34 = v56;
        if (v33)
        {
          (*(v56 + 8))(v12, v32);
          goto LABEL_9;
        }

        (*(v48 + 8))(v21, v49);
        (*(v34 + 8))(v12, v32);
        swift_unknownObjectRelease();
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
        v39 = v46;
        (*(*(v38 - 8) + 56))(v46, 2, 2, v38);
LABEL_21:
        sub_2707E3100(v39, v23, type metadata accessor for RevGeoResult);
        return __swift_destroy_boxed_opaque_existential_1Tm(v58);
      }

      v63 = 2;
      sub_2707E2F5C();
      v36 = v57;
      sub_2707F14F8();
      v37 = v56;
      if (!v36)
      {
        v57 = v10;
        type metadata accessor for CoastalLocation();
        v62 = 0;
        sub_2707DBDFC(&qword_280838290);
        v41 = v45;
        v42 = v50;
        v43 = v52;
        sub_2707F1558();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
        v61 = 1;
        sub_2707E30AC();
        sub_2707F1558();
        (*(v51 + 8))(v43, v42);
        (*(v37 + 8))(v12, v57);
        swift_unknownObjectRelease();
        (*(*(v44 - 8) + 56))(v41, 0, 2, v44);
        v39 = v46;
        sub_2707E3100(v41, v46, type metadata accessor for RevGeoResult);
        goto LABEL_21;
      }
    }

    else
    {
      v59 = 0;
      sub_2707E3058();
      v35 = v57;
      sub_2707F14F8();
      if (!v35)
      {
        (*(v22 + 8))(v9, v47);
        (*(v56 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
        v39 = v46;
        (*(*(v40 - 8) + 56))(v46, 1, 2, v40);
        goto LABEL_21;
      }
    }

    (*(v56 + 8))(v12, v10);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

uint64_t sub_2707E2AD4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s9UrchinKit12RevGeoResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RevGeoResult();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838460);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  v14 = &v29 + *(v11 + 56) - v12;
  sub_2707E17F0(a1, &v29 - v12);
  sub_2707E17F0(a2, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 2, v15);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(v14, 2, v15) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_2707E3B28(v13, type metadata accessor for RevGeoResult);
      return 1;
    }

    if (v16(v14, 2, v15) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_2707E3AC0(v13);
    return 0;
  }

  sub_2707E17F0(v13, v9);
  v18 = *(v15 + 48);
  v19 = v9[v18];
  if (v16(v14, 2, v15))
  {
    sub_2707E3B28(v9, type metadata accessor for CoastalLocation);
    goto LABEL_9;
  }

  v21 = v14[v18];
  sub_2707E3100(v14, v6, type metadata accessor for CoastalLocation);
  v22 = *v9 == *v6 && *(v9 + 1) == *(v6 + 1);
  if (!v22 && (sub_2707F15D8() & 1) == 0 || *(v9 + 2) != *(v6 + 2) || *(v9 + 3) != *(v6 + 3))
  {
    sub_2707E3B28(v6, type metadata accessor for CoastalLocation);
    sub_2707E3B28(v9, type metadata accessor for CoastalLocation);
    goto LABEL_25;
  }

  v23 = *(v4 + 32);
  v24 = *&v9[v23];
  v25 = *&v9[v23 + 8];
  v26 = &v6[v23];
  if (v24 != *v26 || v25 != *(v26 + 1))
  {
    v28 = sub_2707F15D8();
    sub_2707E3B28(v6, type metadata accessor for CoastalLocation);
    sub_2707E3B28(v9, type metadata accessor for CoastalLocation);
    if (v28)
    {
      goto LABEL_27;
    }

LABEL_25:
    sub_2707E3B28(v13, type metadata accessor for RevGeoResult);
    return 0;
  }

  sub_2707E3B28(v6, type metadata accessor for CoastalLocation);
  sub_2707E3B28(v9, type metadata accessor for CoastalLocation);
LABEL_27:
  sub_2707E3B28(v13, type metadata accessor for RevGeoResult);
  return v19 == v21;
}

unint64_t sub_2707E2F08()
{
  result = qword_2808383A0;
  if (!qword_2808383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808383A0);
  }

  return result;
}

unint64_t sub_2707E2F5C()
{
  result = qword_2808383A8;
  if (!qword_2808383A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808383A8);
  }

  return result;
}

unint64_t sub_2707E2FB0()
{
  result = qword_2808383B0;
  if (!qword_2808383B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808383B0);
  }

  return result;
}

unint64_t sub_2707E3004()
{
  result = qword_2808383B8;
  if (!qword_2808383B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808383B8);
  }

  return result;
}

unint64_t sub_2707E3058()
{
  result = qword_2808383C0;
  if (!qword_2808383C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808383C0);
  }

  return result;
}

unint64_t sub_2707E30AC()
{
  result = qword_2808383F0;
  if (!qword_2808383F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808383F0);
  }

  return result;
}

uint64_t sub_2707E3100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2707E317C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2707E3208(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838378);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2707E3298()
{
  sub_2707E32F0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2707E32F0()
{
  if (!qword_280838408)
  {
    type metadata accessor for CoastalLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280838408);
    }
  }
}

uint64_t getEnumTagSinglePayload for RevGeoResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RevGeoResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RevGeoResult.SupportedCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RevGeoResult.SupportedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2707E3628()
{
  result = qword_280838410;
  if (!qword_280838410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838410);
  }

  return result;
}

unint64_t sub_2707E3680()
{
  result = qword_280838418;
  if (!qword_280838418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838418);
  }

  return result;
}

unint64_t sub_2707E36D8()
{
  result = qword_280838420;
  if (!qword_280838420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838420);
  }

  return result;
}

unint64_t sub_2707E3730()
{
  result = qword_280838428;
  if (!qword_280838428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838428);
  }

  return result;
}

unint64_t sub_2707E3788()
{
  result = qword_280838430;
  if (!qword_280838430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838430);
  }

  return result;
}

unint64_t sub_2707E37E0()
{
  result = qword_280838438;
  if (!qword_280838438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838438);
  }

  return result;
}

unint64_t sub_2707E3838()
{
  result = qword_280838440;
  if (!qword_280838440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838440);
  }

  return result;
}

unint64_t sub_2707E3890()
{
  result = qword_280838448;
  if (!qword_280838448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838448);
  }

  return result;
}

unint64_t sub_2707E38E8()
{
  result = qword_280838450;
  if (!qword_280838450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838450);
  }

  return result;
}

unint64_t sub_2707E3940()
{
  result = qword_280838458;
  if (!qword_280838458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838458);
  }

  return result;
}

uint64_t sub_2707E3994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D72657465646E75 && a2 == 0xEC00000064656E69;
  if (v4 || (sub_2707F15D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_2707F15D8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_2707F15D8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2707E3AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2707E3B28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static String.urchinKit(localized:comment:)(uint64_t a1)
{
  v2 = sub_2707F10D8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2707F12D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2707F12E8();
  v8 = [objc_opt_self() bundleWithIdentifier_];

  (*(v4 + 16))(v6, a1, v3);
  sub_2707F10C8();
  return sub_2707F1318();
}

unint64_t CLServiceSession.Diagnostic.message.getter()
{
  if ((sub_2707F1228() & 1) == 0)
  {
    v0 = MEMORY[0x277D84F90];
    if ((sub_2707F11F8() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v0 = sub_2707E438C(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_2707E438C((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  v3 = &v0[16 * v2];
  *(v3 + 4) = 0xD000000000000019;
  *(v3 + 5) = 0x80000002707F3C60;
  if (sub_2707F11F8())
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
    }

    v5 = *(v0 + 2);
    v4 = *(v0 + 3);
    if (v5 >= v4 >> 1)
    {
      v0 = sub_2707E438C((v4 > 1), v5 + 1, 1, v0);
    }

    *(v0 + 2) = v5 + 1;
    v6 = &v0[16 * v5];
    *(v6 + 4) = 0xD000000000000013;
    *(v6 + 5) = 0x80000002707F3C40;
  }

LABEL_12:
  if (sub_2707F1238())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
    }

    v11 = *(v0 + 2);
    v10 = *(v0 + 3);
    if (v11 >= v10 >> 1)
    {
      v0 = sub_2707E438C((v10 > 1), v11 + 1, 1, v0);
    }

    *(v0 + 2) = v11 + 1;
    v12 = &v0[16 * v11];
    *(v12 + 4) = 0xD00000000000001BLL;
    *(v12 + 5) = 0x80000002707F3C20;
    if ((sub_2707F1248() & 1) == 0)
    {
LABEL_14:
      if ((sub_2707F1218() & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((sub_2707F1248() & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
  }

  v14 = *(v0 + 2);
  v13 = *(v0 + 3);
  if (v14 >= v13 >> 1)
  {
    v0 = sub_2707E438C((v13 > 1), v14 + 1, 1, v0);
  }

  *(v0 + 2) = v14 + 1;
  v15 = &v0[16 * v14];
  *(v15 + 4) = 0xD00000000000001ELL;
  *(v15 + 5) = 0x80000002707F3C00;
  if ((sub_2707F1218() & 1) == 0)
  {
LABEL_15:
    if ((sub_2707F11E8() & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
  }

  v17 = *(v0 + 2);
  v16 = *(v0 + 3);
  if (v17 >= v16 >> 1)
  {
    v0 = sub_2707E438C((v16 > 1), v17 + 1, 1, v0);
  }

  *(v0 + 2) = v17 + 1;
  v18 = &v0[16 * v17];
  *(v18 + 4) = 0xD000000000000017;
  *(v18 + 5) = 0x80000002707F3BE0;
  if ((sub_2707F11E8() & 1) == 0)
  {
LABEL_16:
    if ((sub_2707F1208() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
    }

    v23 = *(v0 + 2);
    v22 = *(v0 + 3);
    if (v23 >= v22 >> 1)
    {
      v0 = sub_2707E438C((v22 > 1), v23 + 1, 1, v0);
    }

    *(v0 + 2) = v23 + 1;
    v24 = &v0[16 * v23];
    *(v24 + 4) = 0xD000000000000013;
    *(v24 + 5) = 0x80000002707F3BA0;
    if (sub_2707F11D8())
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
  }

  v20 = *(v0 + 2);
  v19 = *(v0 + 3);
  if (v20 >= v19 >> 1)
  {
    v0 = sub_2707E438C((v19 > 1), v20 + 1, 1, v0);
  }

  *(v0 + 2) = v20 + 1;
  v21 = &v0[16 * v20];
  *(v21 + 4) = 0xD000000000000012;
  *(v21 + 5) = 0x80000002707F3BC0;
  if (sub_2707F1208())
  {
    goto LABEL_43;
  }

LABEL_17:
  if (sub_2707F11D8())
  {
LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_2707E438C(0, *(v0 + 2) + 1, 1, v0);
    }

    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_2707E438C((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[16 * v8];
    *(v9 + 4) = 0xD000000000000016;
    *(v9 + 5) = 0x80000002707F3B80;
    goto LABEL_49;
  }

LABEL_48:
  if (*(v0 + 2))
  {
LABEL_49:
    sub_2707F14A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382B8);
    sub_2707DBEFC();
    v25 = sub_2707F12A8();
    v27 = v26;

    MEMORY[0x2743AA020](v25, v27);

    MEMORY[0x2743AA020](93, 0xE100000000000000);
    return 0xD00000000000001FLL;
  }

  return 0;
}

char *sub_2707E438C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382D0);
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

size_t sub_2707E4498(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838240);
  v10 = *(type metadata accessor for CoastalLocation() - 8);
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
  v15 = *(type metadata accessor for CoastalLocation() - 8);
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

size_t sub_2707E4670(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838468);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470) - 8);
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

uint64_t sub_2707E488C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v2 = [v1 authorizationStatus];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2707E4938()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v2 = [v1 authorizationStatus];

  if (v2 - 3 > 1)
  {
    v3 = 1;
  }

  else
  {
    static CoastalLocation.dummyCurrentLocation()(*(v0 + 16));
    v3 = 0;
  }

  v4 = *(v0 + 16);
  v5 = type metadata accessor for CoastalLocation();
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t CoastalLocation.init(displayName:category:coordinate:timezone:id:mapkitIdentifier:locationOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, uint64_t a11)
{
  v20 = type metadata accessor for CoastalLocation();
  v21 = (a8 + v20[10]);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a10;
  v22 = v20[7];
  v23 = sub_2707F1198();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a8 + v22, a3, v23);
  *v21 = a6;
  v21[1] = a7;
  if (a5)
  {
    v25 = (a8 + v20[8]);
    *v25 = a4;
    v25[1] = a5;
    if (a4 == 0x746E6572727563 && a5 == 0xE700000000000000)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_2707F15D8();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2707F20D0;
    v28 = MEMORY[0x277D839F8];
    v29 = MEMORY[0x277D83A80];
    *(v27 + 56) = MEMORY[0x277D839F8];
    *(v27 + 64) = v29;
    *(v27 + 32) = a9;
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 72) = a10;
    v30 = sub_2707F1308();
    MEMORY[0x2743AA020](v30);

    v26 = 0;
    v31 = (a8 + v20[8]);
    *v31 = 979595116;
    v31[1] = 0xE400000000000000;
  }

  v32 = v20[11];
  result = (*(v24 + 8))(a3, v23);
  *(a8 + v20[9]) = v26 & 1;
  *(a8 + v32) = a11;
  return result;
}

uint64_t sub_2707E4C4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E79616C70736964;
  v4 = a1;
  v5 = 0xD000000000000010;
  v6 = 0x80000002707F37D0;
  if (a1 != 5)
  {
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0xEF736E6F6974704FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E6F7A656D6974;
  if (a1 != 3)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x79726F6765746163;
  if (a1 != 1)
  {
    v10 = 0x616E6964726F6F63;
    v9 = 0xEA00000000006574;
  }

  if (!a1)
  {
    v10 = 0x4E79616C70736964;
    v9 = 0xEB00000000656D61;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x79726F6765746163)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEA00000000006574;
        if (v11 != 0x616E6964726F6F63)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000002707F37D0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF736E6F6974704FLL;
        if (v11 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x656E6F7A656D6974)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE200000000000000;
    v3 = 25705;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_2707F15D8();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_2707E4E74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6C657753;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4C587365646954;
    }

    else
    {
      v4 = 0x7365646954;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7478655465646954;
    }

    else
    {
      v4 = 0x6C6C657753;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x4C587365646954;
  if (a2 != 2)
  {
    v8 = 0x7365646954;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x7478655465646954;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2707F15D8();
  }

  return v11 & 1;
}

uint64_t sub_2707E4FAC()
{
  sub_2707F15E8();
  sub_2707F1348();

  return sub_2707F1628();
}

uint64_t static CoastalLocation.dummyCurrentLocation()@<X0>(uint64_t *a1@<X8>)
{
  v26[0] = sub_2707F1198();
  v2 = *(v26[0] - 8);
  MEMORY[0x28223BE20](v26[0]);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2707F10D8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2707F12D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  sub_2707F12C8();
  v13 = sub_2707F12E8();
  v14 = [objc_opt_self() bundleWithIdentifier_];

  (*(v7 + 16))(v10, v12, v6);
  sub_2707F10C8();
  v15 = sub_2707F1318();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  v18 = *MEMORY[0x277CE4278];
  v19 = *(MEMORY[0x277CE4278] + 8);
  sub_2707F1188();
  v20 = type metadata accessor for CoastalLocation();
  v21 = v20[11];
  v22 = (a1 + v20[10]);
  *a1 = v15;
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
  v23 = v26[0];
  (*(v2 + 16))(a1 + v20[7], v4, v26[0]);
  *v22 = 0;
  v22[1] = 0;
  v24 = (a1 + v20[8]);
  *v24 = 0x746E6572727563;
  v24[1] = 0xE700000000000000;
  result = (*(v2 + 8))(v4, v23);
  *(a1 + v20[9]) = 1;
  *(a1 + v21) = 0;
  return result;
}

uint64_t CoastalLocation.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoastalLocation.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CoastalLocation.timezone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoastalLocation() + 28);
  v4 = sub_2707F1198();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoastalLocation.timezone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CoastalLocation() + 28);
  v4 = sub_2707F1198();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CoastalLocation.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for CoastalLocation() + 32));

  return v1;
}

uint64_t CoastalLocation.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CoastalLocation() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CoastalLocation.isCurrent.setter(char a1)
{
  result = type metadata accessor for CoastalLocation();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t CoastalLocation.mapkitIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CoastalLocation() + 40));

  return v1;
}

uint64_t CoastalLocation.mapkitIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CoastalLocation() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CoastalLocation.locationOptions.getter()
{
  type metadata accessor for CoastalLocation();
}

uint64_t CoastalLocation.locationOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CoastalLocation() + 44);

  *(v1 + v3) = a1;
  return result;
}

id CoastalLocation.cllocation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x277CE41F8]);

  return [v3 initWithLatitude:v1 longitude:v2];
}

uint64_t CoastalLocation.currentLocation()@<X0>(uint64_t a1@<X8>)
{
  sub_2707DB3B8(v1, a1);
  v3 = type metadata accessor for CoastalLocation();
  *(a1 + *(v3 + 36)) = 1;
  v4 = (a1 + *(v3 + 32));

  *v4 = 0x746E6572727563;
  v4[1] = 0xE700000000000000;
  return result;
}

uint64_t CoastalLocation.with(id:mapkitIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v39 = a4;
  v36 = a3;
  v9 = sub_2707F1198();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5[1];
  v33 = *v5;
  v37 = v13;
  v14 = v5[2];
  v15 = v5[3];
  v16 = type metadata accessor for CoastalLocation();
  v17 = *(v10 + 16);
  v18 = v5 + v16[7];
  v38 = v9;
  v17(v12, v18, v9);
  v35 = a2;
  if (a2)
  {
    v34 = a1;
  }

  else
  {
    v19 = (v5 + v16[8]);
    a2 = v19[1];
    v34 = *v19;
  }

  v20 = v16[10];
  v21 = v39;
  if (!v39)
  {
    v21 = *(v5 + v20 + 8);
    v36 = *(v5 + v20);
  }

  v22 = *(v5 + v16[11]);
  v23 = &a5[v20];
  v25 = v37;
  v24 = v38;
  *a5 = v33;
  *(a5 + 1) = v25;
  *(a5 + 2) = v14;
  *(a5 + 3) = v15;
  v17(&a5[v16[7]], v12, v24);
  *v23 = v36;
  *(v23 + 1) = v21;
  v26 = &a5[v16[8]];
  v27 = v34;
  *v26 = v34;
  *(v26 + 1) = a2;
  if (v27 == 0x746E6572727563 && a2 == 0xE700000000000000)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_2707F15D8();
  }

  v29 = v16[11];
  v30 = *(v10 + 8);

  result = v30(v12, v38);
  a5[v16[9]] = v28 & 1;
  *&a5[v29] = v22;
  return result;
}

uint64_t CoastalLocation.staticLocation()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CoastalLocation();
  v4 = (v1 + *(v3 + 32));
  v5 = *v4 == 0x746E6572727563 && v4[1] == 0xE700000000000000;
  if (v5 || (sub_2707F15D8() & 1) != 0)
  {
    sub_2707DB3B8(v1, a1);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2707F20D0;
    v9 = MEMORY[0x277D839F8];
    v10 = MEMORY[0x277D83A80];
    *(v8 + 56) = MEMORY[0x277D839F8];
    *(v8 + 64) = v10;
    *(v8 + 32) = v6;
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = v7;
    v11 = sub_2707F1308();
    MEMORY[0x2743AA020](v11);

    v12 = (a1 + *(v3 + 32));

    *v12 = 979595116;
    v12[1] = 0xE400000000000000;
    *(a1 + *(v3 + 36)) = 0;
  }

  else
  {

    return sub_2707DB3B8(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for CoastalLocation()
{
  result = qword_280838548;
  if (!qword_280838548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CoastalLocation.makeCurrentLocation(displayName:category:coordinate:timezone:mapkitIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v40 = a1;
  v41 = sub_2707F1198();
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2707F10D8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_2707F12D8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v42 = a2;
  if (a2)
  {
    v23 = a2;
    v24 = v40;
  }

  else
  {
    sub_2707F12C8();
    v25 = sub_2707F12E8();
    v26 = [objc_opt_self() bundleWithIdentifier_];

    (*(v17 + 16))(v20, v22, v16);
    sub_2707F10C8();
    v24 = sub_2707F1318();
    v23 = v27;
    (*(v17 + 8))(v22, v16);
  }

  v28 = *(v12 + 16);
  v29 = v14;
  v30 = v14;
  v31 = v41;
  v28(v30, v43, v41);
  v32 = type metadata accessor for CoastalLocation();
  v33 = v32[10];
  v43 = v32[11];
  v34 = (a6 + v33);
  *a6 = v24;
  *(a6 + 8) = v23;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  v28((a6 + v32[7]), v29, v31);
  v35 = v45;
  *v34 = v44;
  v34[1] = v35;
  v36 = (a6 + v32[8]);
  *v36 = 0x746E6572727563;
  v36[1] = 0xE700000000000000;
  v37 = *(v12 + 8);

  result = v37(v29, v31);
  *(a6 + v32[9]) = 1;
  *(a6 + v43) = 0;
  return result;
}

uint64_t sub_2707E619C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t CoastalLocation.hash(into:)(uint64_t a1)
{
  sub_2707F1348();
  sub_2707F1348();
  v3 = *(v1 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x2743AA2D0](*&v3);
  v4 = *(v1 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2743AA2D0](*&v4);
  v5 = type metadata accessor for CoastalLocation();
  sub_2707F1198();
  sub_2707E970C(&qword_2808384B0, MEMORY[0x277CC9A70]);
  sub_2707F1298();
  sub_2707F1348();
  sub_2707F1608();
  if (*(v1 + *(v5 + 40) + 8))
  {
    sub_2707F1608();
    sub_2707F1348();
  }

  else
  {
    sub_2707F1608();
  }

  v6 = *(v1 + *(v5 + 44));
  if (!v6)
  {
    return sub_2707F1608();
  }

  sub_2707F1608();

  return sub_2707E91DC(a1, v6);
}

uint64_t CoastalLocation.hashValue.getter()
{
  sub_2707F15E8();
  CoastalLocation.hash(into:)(v1);
  return sub_2707F1628();
}

uint64_t sub_2707E6398()
{
  sub_2707F15E8();
  CoastalLocation.hash(into:)(v1);
  return sub_2707F1628();
}

uint64_t sub_2707E63DC()
{
  sub_2707F15E8();
  CoastalLocation.hash(into:)(v1);
  return sub_2707F1628();
}

uint64_t CoastalLocation.CategoryType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2707F14E8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2707E6484()
{
  sub_2707F15E8();
  sub_2707F1348();
  return sub_2707F1628();
}

uint64_t sub_2707E64E8()
{
  sub_2707F15E8();
  sub_2707F1348();
  return sub_2707F1628();
}

uint64_t sub_2707E6534@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2707F14E8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CoastalLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v52 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v52);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2707F1198();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808384B8);
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2707E939C();
  v15 = v53;
  sub_2707F1638();
  if (!v15)
  {
    v47 = v4;
    v48 = v8;
    v53 = v10;
    v17 = v51;
    v16 = v52;
    LOBYTE(v55) = 0;
    v18 = sub_2707F1538();
    v20 = v19;
    v46 = v18;
    LOBYTE(v55) = 1;
    sub_2707E93F0();
    sub_2707F1558();
    v57 = 2;
    sub_2707E9444();
    sub_2707F1558();
    v45 = v20;
    v22 = v55;
    v23 = v56;
    LOBYTE(v55) = 3;
    sub_2707E970C(&qword_2808384D8, MEMORY[0x277CC9A70]);
    sub_2707F1558();
    LOBYTE(v55) = 4;
    v43 = sub_2707F1538();
    v44 = v24;
    LOBYTE(v55) = 5;
    v41 = sub_2707F1518();
    v42 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808384E0);
    v57 = 6;
    sub_2707E9594(&qword_2808384E8, sub_2707E9498);
    sub_2707F1528();
    v40 = v55;
    v26 = *(v50 + 16);
    v26(v48, v53, v5);
    v27 = v26;
    v29 = v47;
    v28 = v48;
    v30 = (v47 + v16[10]);
    v31 = v45;
    *v47 = v46;
    v29[1] = v31;
    v29[2] = v22;
    v29[3] = v23;
    v27(v29 + v16[7], v28, v5);
    v32 = v42;
    *v30 = v41;
    v30[1] = v32;
    v33 = (v29 + v16[8]);
    v34 = v43;
    v35 = v44;
    *v33 = v43;
    v33[1] = v35;
    if (v34 == 0x746E6572727563 && v35 == 0xE700000000000000)
    {
      LODWORD(v46) = 1;
    }

    else
    {
      LODWORD(v46) = sub_2707F15D8();
    }

    v36 = v16[11];
    v37 = *(v50 + 8);
    v37(v48, v5);
    v37(v53, v5);
    (*(v17 + 8))(v13, v11);
    v38 = v47;
    *(v47 + v16[9]) = v46 & 1;
    *(v38 + v36) = v40;
    sub_2707DD9B4(v38, v49);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t CoastalLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808384F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707E939C();
  sub_2707F1648();
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  LOBYTE(v15) = 0;
  sub_2707F15A8();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_2707E94EC();
    sub_2707F15C8();
    v15 = v9;
    v16 = v10;
    v14 = 2;
    sub_2707E9540();
    sub_2707F15C8();
    v11 = type metadata accessor for CoastalLocation();
    LOBYTE(v15) = 3;
    sub_2707F1198();
    sub_2707E970C(&qword_280838510, MEMORY[0x277CC9A70]);
    sub_2707F15C8();
    LOBYTE(v15) = 4;
    sub_2707F15A8();
    LOBYTE(v15) = 5;
    sub_2707F1588();
    v15 = *(v3 + *(v11 + 44));
    v14 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808384E0);
    sub_2707E9594(&qword_280838518, sub_2707E960C);
    sub_2707F1598();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2707E7060(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838590);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707E9F98();
  sub_2707F1648();
  v10 = 0;
  sub_2707F15B8();
  if (!v1)
  {
    v9 = 1;
    sub_2707F15B8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2707E7200()
{
  sub_2707F1348();
}

uint64_t sub_2707E7328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707E9D9C();
  *a1 = result;
  return result;
}

void sub_2707E7358(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E79616C70736964;
  v5 = 0x80000002707F37D0;
  v6 = 0xD000000000000010;
  if (v2 != 5)
  {
    v6 = 0x6E6F697461636F6CLL;
    v5 = 0xEF736E6F6974704FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E6F7A656D6974;
  if (v2 != 3)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v10 = 0x616E6964726F6F63;
    v9 = 0xEA00000000006574;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_2707E7448()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  v4 = 0x656E6F7A656D6974;
  if (v1 != 3)
  {
    v4 = 25705;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 1)
  {
    v5 = 0x616E6964726F6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2707E7534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707E9D9C();
  *a1 = result;
  return result;
}

uint64_t sub_2707E7568(uint64_t a1)
{
  v2 = sub_2707E939C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707E75A4(uint64_t a1)
{
  v2 = sub_2707E939C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707E75E0()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_2707E7620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2707F15D8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2707F15D8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2707E7704(uint64_t a1)
{
  v2 = sub_2707E9F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707E7740(uint64_t a1)
{
  v2 = sub_2707E9F98();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2707E777C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2707E9DE8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_2707E77F4()
{
  v0 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v0);
  v2 = &v17[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_2707F1198();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2707F10D8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2707F12D8();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_allocate_value_buffer(v0, qword_280838478);
  v9 = __swift_project_value_buffer(v0, qword_280838478);
  sub_2707F12C8();
  sub_2707F10C8();
  v10 = sub_2707F1318();
  v12 = v11;
  sub_2707F1188();
  v13 = &v2[v0[10]];
  *v2 = v10;
  *(v2 + 1) = v12;
  *(v2 + 1) = xmmword_2707F29A0;
  (*(v4 + 16))(&v2[v0[7]], v6, v3);
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[v0[8]];
  *v14 = 0x746E6572727563;
  v14[1] = 0xE700000000000000;
  v15 = v0[11];
  (*(v4 + 8))(v6, v3);
  v2[v0[9]] = 1;
  *&v2[v15] = 0;
  return sub_2707DD9B4(v2, v9);
}

uint64_t sub_2707E7AC4()
{
  v0 = type metadata accessor for CoastalLocation();
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_2707F1198();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_280838490);
  v10 = __swift_project_value_buffer(v0, qword_280838490);
  sub_2707F1168();
  v11 = *(v7 + 48);
  if (v11(v5, 1, v6) == 1)
  {
    sub_2707F1178();
    if (v11(v5, 1, v6) != 1)
    {
      sub_2707DD94C(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v12 = v0[11];
  v13 = &v2[v0[10]];
  strcpy(v2, "Wilder Beach");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  *(v2 + 1) = xmmword_2707F29B0;
  (*(v7 + 16))(&v2[v0[7]], v9, v6);
  *v13 = 0;
  *(v13 + 1) = 0;
  v21 = 979595116;
  v22 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2707F20D0;
  v15 = MEMORY[0x277D839F8];
  v16 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v16;
  *(v14 + 32) = 0x40427A0A17B0F6ADLL;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = 0xC05E850196D8F4F9;
  v17 = sub_2707F1308();
  MEMORY[0x2743AA020](v17);

  v18 = v22;
  v19 = &v2[v0[8]];
  *v19 = v21;
  v19[1] = v18;
  (*(v7 + 8))(v9, v6);
  v2[v0[9]] = 0;
  *&v2[v12] = 0;
  return sub_2707DD9B4(v2, v10);
}

uint64_t sub_2707E7E3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CoastalLocation();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_2707DB3B8(v6, a3);
}

uint64_t sub_2707E7E9C()
{
  v0 = type metadata accessor for CoastalLocation();
  v163 = *(v0 - 1);
  v1 = v163;
  MEMORY[0x28223BE20](v0);
  v3 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v152 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v149 = &v140 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v146 = &v140 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v144 = &v140 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v140 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v140 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v140 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v140 - v20;
  v22 = sub_2707F1198();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v140 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v147 = &v140 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v140 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v143 = &v140 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v154 = &v140 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v140 = &v140 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v140 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838240);
  v41 = *(v1 + 72);
  v42 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v162 = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2707F29C0;
  v151 = v43;
  v163 = v43 + v42;
  sub_2707F1168();
  v44 = *(v23 + 48);
  v45 = v44(v21, 1, v22);
  v155 = v23;
  v156 = v44;
  v150 = v28;
  v148 = v23 + 48;
  if (v45 == 1)
  {
    sub_2707F1178();
    if (v44(v21, 1, v22) != 1)
    {
      sub_2707DD94C(v21);
    }
  }

  else
  {
    (*(v23 + 32))(v40, v21, v22);
  }

  v46 = v0[11];
  v47 = &v3[v0[10]];
  strcpy(v3, "Wilder Beach");
  v3[13] = 0;
  *(v3 + 7) = -5120;
  *(v3 + 1) = xmmword_2707F29B0;
  v48 = v155;
  v49 = &v3[v0[7]];
  v160 = *(v155 + 16);
  v161 = v155 + 16;
  v160(v49, v40, v22);
  *v47 = 0;
  *(v47 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v50 = swift_allocObject();
  v158 = xmmword_2707F20D0;
  *(v50 + 16) = xmmword_2707F20D0;
  v51 = MEMORY[0x277D839F8];
  v52 = MEMORY[0x277D83A80];
  *(v50 + 56) = MEMORY[0x277D839F8];
  *(v50 + 64) = v52;
  *(v50 + 32) = 0x40427A0A17B0F6ADLL;
  *(v50 + 96) = v51;
  *(v50 + 104) = v52;
  *(v50 + 72) = 0xC05E850196D8F4F9;
  v53 = sub_2707F1308();
  MEMORY[0x2743AA020](v53);
  v54 = v48;

  v55 = v165;
  v56 = &v3[v0[8]];
  *v56 = v164;
  v56[1] = v55;
  v57 = (v48 + 8);
  v157 = *(v48 + 8);
  v157(v40, v22);
  v3[v0[9]] = 0;
  *&v3[v46] = 0;
  sub_2707DD9B4(v3, v163);
  sub_2707F1168();
  v58 = v156;
  if (v156(v19, 1, v22) == 1)
  {
    v59 = v140;
    sub_2707F1178();
    if (v58(v19, 1, v22) != 1)
    {
      sub_2707DD94C(v19);
    }
  }

  else
  {
    v59 = v140;
    (*(v54 + 32))(v140, v19, v22);
  }

  v60 = v0[11];
  v61 = &v3[v0[10]];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000002707F3CA0;
  *(v3 + 1) = xmmword_2707F29D0;
  v160(&v3[v0[7]], v59, v22);
  *v61 = 0;
  *(v61 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v62 = swift_allocObject();
  *(v62 + 16) = v158;
  v63 = MEMORY[0x277D839F8];
  *(v62 + 56) = MEMORY[0x277D839F8];
  v64 = MEMORY[0x277D83A80];
  *(v62 + 32) = 0x40427B4E7401599CLL;
  *(v62 + 96) = v63;
  *(v62 + 104) = v64;
  *(v62 + 64) = v64;
  *(v62 + 72) = 0xC05E80827BDB42B1;
  v65 = sub_2707F1308();
  MEMORY[0x2743AA020](v65);

  v66 = v165;
  v67 = &v3[v0[8]];
  *v67 = v164;
  v67[1] = v66;
  v157(v59, v22);
  v3[v0[9]] = 0;
  *&v3[v60] = 0;
  sub_2707DD9B4(v3, v163 + v162);
  v68 = v141;
  sub_2707F1168();
  if (v58(v68, 1, v22) == 1)
  {
    v69 = v154;
    sub_2707F1178();
    if (v58(v68, 1, v22) != 1)
    {
      sub_2707DD94C(v68);
    }
  }

  else
  {
    v69 = v154;
    (*(v155 + 32))(v154, v68, v22);
  }

  v70 = v163 + 2 * v162;
  v71 = v0[11];
  v72 = &v3[v0[10]];
  *v3 = 0x1000000000000010;
  *(v3 + 1) = 0x80000002707F3CC0;
  *(v3 + 1) = xmmword_2707F29E0;
  v160(&v3[v0[7]], v69, v22);
  *v72 = 0;
  *(v72 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v73 = swift_allocObject();
  *(v73 + 16) = v158;
  v74 = MEMORY[0x277D839F8];
  *(v73 + 56) = MEMORY[0x277D839F8];
  v75 = MEMORY[0x277D83A80];
  *(v73 + 32) = 0x40427B165F0877E3;
  *(v73 + 96) = v74;
  *(v73 + 104) = v75;
  *(v73 + 64) = v75;
  *(v73 + 72) = 0xC05E81900C000000;
  v76 = sub_2707F1308();
  MEMORY[0x2743AA020](v76);

  v77 = v165;
  v78 = &v3[v0[8]];
  *v78 = v164;
  v78[1] = v77;
  v154 = v57;
  v157(v69, v22);
  v3[v0[9]] = 0;
  *&v3[v71] = 0;
  sub_2707DD9B4(v3, v70);
  v79 = v142;
  sub_2707F1168();
  v80 = v156;
  if (v156(v79, 1, v22) == 1)
  {
    v81 = v145;
    v82 = v143;
    sub_2707F1178();
    if (v80(v79, 1, v22) != 1)
    {
      sub_2707DD94C(v79);
    }
  }

  else
  {
    v81 = v145;
    v82 = v143;
    (*(v155 + 32))(v143, v79, v22);
  }

  v83 = 3 * v162;
  v84 = v0[11];
  v85 = &v3[v0[10]];
  strcpy(v3, "Capitola Beach");
  v3[15] = -18;
  *(v3 + 1) = xmmword_2707F29F0;
  v160(&v3[v0[7]], v82, v22);
  *v85 = 0;
  *(v85 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v86 = swift_allocObject();
  *(v86 + 16) = v158;
  v87 = MEMORY[0x277D839F8];
  *(v86 + 56) = MEMORY[0x277D839F8];
  v88 = MEMORY[0x277D83A80];
  *(v86 + 32) = 0x40427C58D659DC94;
  *(v86 + 96) = v87;
  *(v86 + 104) = v88;
  *(v86 + 64) = v88;
  *(v86 + 72) = 0xC05E7CE02A000000;
  v89 = sub_2707F1308();
  MEMORY[0x2743AA020](v89);

  v90 = v165;
  v91 = &v3[v0[8]];
  *v91 = v164;
  v91[1] = v90;
  v157(v82, v22);
  v3[v0[9]] = 0;
  *&v3[v84] = 0;
  sub_2707DD9B4(v3, v163 + v83);
  v92 = v144;
  sub_2707F1168();
  v93 = v156;
  if (v156(v92, 1, v22) == 1)
  {
    sub_2707F1178();
    if (v93(v92, 1, v22) != 1)
    {
      sub_2707DD94C(v92);
    }
  }

  else
  {
    (*(v155 + 32))(v81, v92, v22);
  }

  v94 = v163 + 4 * v162;
  v95 = v0[11];
  v96 = &v3[v0[10]];
  *v3 = 0xD000000000000016;
  *(v3 + 1) = 0x80000002707F3CE0;
  *(v3 + 1) = xmmword_2707F2A00;
  v160(&v3[v0[7]], v81, v22);
  *v96 = 0;
  *(v96 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v97 = swift_allocObject();
  *(v97 + 16) = v158;
  v98 = MEMORY[0x277D839F8];
  *(v97 + 56) = MEMORY[0x277D839F8];
  v99 = MEMORY[0x277D83A80];
  *(v97 + 32) = 0x40427B281190A89ALL;
  *(v97 + 96) = v98;
  *(v97 + 104) = v99;
  *(v97 + 64) = v99;
  *(v97 + 72) = 0xC05E7FEC1B000000;
  v100 = sub_2707F1308();
  MEMORY[0x2743AA020](v100);

  v101 = v165;
  v102 = &v3[v0[8]];
  *v102 = v164;
  v102[1] = v101;
  v157(v81, v22);
  v3[v0[9]] = 0;
  *&v3[v95] = 0;
  sub_2707DD9B4(v3, v94);
  v103 = v146;
  sub_2707F1168();
  v104 = v156;
  if (v156(v103, 1, v22) == 1)
  {
    v105 = v147;
    sub_2707F1178();
    if (v104(v103, 1, v22) != 1)
    {
      sub_2707DD94C(v103);
    }
  }

  else
  {
    v105 = v147;
    (*(v155 + 32))(v147, v103, v22);
  }

  v106 = 5 * v162;
  v107 = v0[11];
  v108 = &v3[v0[10]];
  *v3 = 0xD000000000000014;
  *(v3 + 1) = 0x80000002707F3D00;
  *(v3 + 1) = xmmword_2707F2A10;
  v160(&v3[v0[7]], v105, v22);
  *v108 = 0;
  *(v108 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v109 = swift_allocObject();
  *(v109 + 16) = v158;
  v110 = MEMORY[0x277D839F8];
  *(v109 + 56) = MEMORY[0x277D839F8];
  v111 = MEMORY[0x277D83A80];
  *(v109 + 32) = 0x40427C653220606BLL;
  *(v109 + 96) = v110;
  *(v109 + 104) = v111;
  *(v109 + 64) = v111;
  *(v109 + 72) = 0xC05E7A7B0A000000;
  v112 = sub_2707F1308();
  MEMORY[0x2743AA020](v112);

  v113 = v165;
  v114 = &v3[v0[8]];
  *v114 = v164;
  v114[1] = v113;
  v157(v105, v22);
  v3[v0[9]] = 0;
  *&v3[v107] = 0;
  sub_2707DD9B4(v3, v163 + v106);
  v115 = v149;
  sub_2707F1168();
  v116 = v156;
  if (v156(v115, 1, v22) == 1)
  {
    v117 = v150;
    sub_2707F1178();
    if (v116(v115, 1, v22) != 1)
    {
      sub_2707DD94C(v115);
    }
  }

  else
  {
    v117 = v150;
    (*(v155 + 32))(v150, v115, v22);
  }

  v118 = v163 + 6 * v162;
  v119 = v0[11];
  v120 = &v3[v0[10]];
  *v3 = 0xD000000000000010;
  *(v3 + 1) = 0x80000002707F3D20;
  *(v3 + 1) = xmmword_2707F2A20;
  v160(&v3[v0[7]], v117, v22);
  *v120 = 0;
  *(v120 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v121 = swift_allocObject();
  *(v121 + 16) = v158;
  v122 = MEMORY[0x277D839F8];
  *(v121 + 56) = MEMORY[0x277D839F8];
  v123 = MEMORY[0x277D83A80];
  *(v121 + 32) = 0x40427AF2F9873FFBLL;
  *(v121 + 96) = v122;
  *(v121 + 104) = v123;
  *(v121 + 64) = v123;
  *(v121 + 72) = 0xC05E7F539DA16617;
  v124 = sub_2707F1308();
  MEMORY[0x2743AA020](v124);

  v125 = v165;
  v126 = &v3[v0[8]];
  *v126 = v164;
  v126[1] = v125;
  v157(v117, v22);
  v3[v0[9]] = 0;
  *&v3[v119] = 0;
  sub_2707DD9B4(v3, v118);
  v127 = v152;
  sub_2707F1168();
  v128 = v156;
  if (v156(v127, 1, v22) == 1)
  {
    v129 = v153;
    sub_2707F1178();
    if (v128(v127, 1, v22) != 1)
    {
      sub_2707DD94C(v127);
    }
  }

  else
  {
    v129 = v153;
    (*(v155 + 32))(v153, v127, v22);
  }

  v130 = v163 - v162 + 8 * v162;
  v131 = v0[11];
  v132 = &v3[v0[10]];
  *v3 = 0x6B6F6F4820656854;
  *(v3 + 1) = 0xE800000000000000;
  *(v3 + 1) = xmmword_2707F2A30;
  v160(&v3[v0[7]], v129, v22);
  *v132 = 0;
  *(v132 + 1) = 0;
  v164 = 979595116;
  v165 = 0xE400000000000000;
  v133 = swift_allocObject();
  *(v133 + 16) = v158;
  v134 = MEMORY[0x277D839F8];
  *(v133 + 56) = MEMORY[0x277D839F8];
  v135 = MEMORY[0x277D83A80];
  *(v133 + 32) = 0x40427AD379AC52B0;
  *(v133 + 96) = v134;
  *(v133 + 104) = v135;
  *(v133 + 64) = v135;
  *(v133 + 72) = -4585089087079680000;
  v136 = sub_2707F1308();
  MEMORY[0x2743AA020](v136);

  v137 = v165;
  v138 = &v3[v0[8]];
  *v138 = v164;
  v138[1] = v137;
  v157(v129, v22);
  v3[v0[9]] = 0;
  *&v3[v131] = 0;
  result = sub_2707DD9B4(v3, v130);
  qword_2808384A8 = v151;
  return result;
}

uint64_t static CoastalLocation.testLocations.getter()
{
  if (qword_280838210 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2707E91DC(uint64_t a1, uint64_t a2)
{
  result = sub_2707F1628();
  v4 = 0;
  v5 = 0;
  v8 = *(a2 + 56);
  v7 = a2 + 56;
  v6 = v8;
  v9 = 1 << *(v7 - 24);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_4:
    v11 &= v11 - 1;
    sub_2707F15E8();
    MEMORY[0x2743AA2B0](0);
    result = sub_2707F1628();
    v4 ^= result;
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return MEMORY[0x2743AA2B0](v4);
    }

    v11 = *(v7 + 8 * v13);
    ++v5;
    if (v11)
    {
      v5 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9UrchinKit15CoastalLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_2707F15D8() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(type metadata accessor for CoastalLocation() + 32);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_2707F15D8();
}

unint64_t sub_2707E939C()
{
  result = qword_2808384C0;
  if (!qword_2808384C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808384C0);
  }

  return result;
}

unint64_t sub_2707E93F0()
{
  result = qword_2808384C8;
  if (!qword_2808384C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808384C8);
  }

  return result;
}

unint64_t sub_2707E9444()
{
  result = qword_2808384D0;
  if (!qword_2808384D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808384D0);
  }

  return result;
}

unint64_t sub_2707E9498()
{
  result = qword_2808384F0;
  if (!qword_2808384F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808384F0);
  }

  return result;
}

unint64_t sub_2707E94EC()
{
  result = qword_280838500;
  if (!qword_280838500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838500);
  }

  return result;
}

unint64_t sub_2707E9540()
{
  result = qword_280838508;
  if (!qword_280838508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838508);
  }

  return result;
}

uint64_t sub_2707E9594(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808384E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2707E960C()
{
  result = qword_280838520;
  if (!qword_280838520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838520);
  }

  return result;
}

uint64_t sub_2707E9660(uint64_t a1)
{
  result = sub_2707E970C(&qword_280838528, type metadata accessor for CoastalLocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2707E970C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2707E9758()
{
  result = qword_280838538;
  if (!qword_280838538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838538);
  }

  return result;
}

unint64_t sub_2707E97B0()
{
  result = qword_280838540;
  if (!qword_280838540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838540);
  }

  return result;
}

uint64_t sub_2707E9818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2707F1198();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2707E98D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2707F1198();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2707E997C()
{
  type metadata accessor for CLLocationCoordinate2D();
  if (v0 <= 0x3F)
  {
    sub_2707F1198();
    if (v1 <= 0x3F)
    {
      sub_2707E9A58();
      if (v2 <= 0x3F)
      {
        sub_2707E9AA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2707E9A58()
{
  if (!qword_280838558)
  {
    v0 = sub_2707F1468();
    if (!v1)
    {
      atomic_store(v0, &qword_280838558);
    }
  }
}

void sub_2707E9AA8()
{
  if (!qword_280838560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808384E0);
    v0 = sub_2707F1468();
    if (!v1)
    {
      atomic_store(v0, &qword_280838560);
    }
  }
}

uint64_t getEnumTagSinglePayload for CoastalLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoastalLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2707E9C98()
{
  result = qword_280838568;
  if (!qword_280838568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838568);
  }

  return result;
}

unint64_t sub_2707E9CF0()
{
  result = qword_280838570;
  if (!qword_280838570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838570);
  }

  return result;
}

unint64_t sub_2707E9D48()
{
  result = qword_280838578;
  if (!qword_280838578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838578);
  }

  return result;
}

uint64_t sub_2707E9D9C()
{
  v0 = sub_2707F14E8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

double sub_2707E9DE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838580);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707E9F98();
  sub_2707F1638();
  v9[15] = 0;
  sub_2707F1548();
  v7 = v6;
  v9[14] = 1;
  sub_2707F1548();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_2707E9F98()
{
  result = qword_280838588;
  if (!qword_280838588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838588);
  }

  return result;
}

unint64_t sub_2707E9FEC()
{
  result = qword_280838598;
  if (!qword_280838598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838598);
  }

  return result;
}

unint64_t sub_2707EA040()
{
  result = qword_2808385A0;
  if (!qword_2808385A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808385A0);
  }

  return result;
}

unint64_t sub_2707EA0A8()
{
  result = qword_2808385A8;
  if (!qword_2808385A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808385A8);
  }

  return result;
}

unint64_t sub_2707EA100()
{
  result = qword_2808385B0;
  if (!qword_2808385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808385B0);
  }

  return result;
}

unint64_t sub_2707EA158()
{
  result = qword_2808385B8;
  if (!qword_2808385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808385B8);
  }

  return result;
}

uint64_t SelectedLocationManager.__allocating_init(currentLocationProvider:staticLocationProvider:selectedLocationProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC9UrchinKit23SelectedLocationManager_logger;
  if (qword_280838220 != -1)
  {
    swift_once();
  }

  v8 = sub_2707F1278();
  v9 = __swift_project_value_buffer(v8, qword_28083B288);
  (*(*(v8 - 8) + 16))(v6 + v7, v9, v8);
  sub_2707DC034(a1, v6 + 112);
  sub_2707DC034(a2, v6 + 152);
  sub_2707DC034(a3, v6 + 192);
  return v6;
}

uint64_t SelectedLocationManager.init(currentLocationProvider:staticLocationProvider:selectedLocationProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC9UrchinKit23SelectedLocationManager_logger;
  if (qword_280838220 != -1)
  {
    swift_once();
  }

  v8 = sub_2707F1278();
  v9 = __swift_project_value_buffer(v8, qword_28083B288);
  (*(*(v8 - 8) + 16))(v3 + v7, v9, v8);
  sub_2707DC034(a1, v3 + 112);
  sub_2707DC034(a2, v3 + 152);
  sub_2707DC034(a3, v3 + 192);
  return v3;
}

char *SelectedLocationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC9UrchinKit23SelectedLocationManager_logger;
  if (qword_280838220 != -1)
  {
    swift_once();
  }

  v2 = sub_2707F1278();
  v3 = __swift_project_value_buffer(v2, qword_28083B288);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  if (qword_2808381C8 != -1)
  {
    swift_once();
  }

  v4 = qword_2808381D0;
  *(v0 + 17) = &type metadata for AuthCurrentLocationProvider;
  *(v0 + 18) = &off_288082DE0;
  v5 = type metadata accessor for SyncedPreferenceManager();
  *(v0 + 22) = v5;
  *(v0 + 23) = &protocol witness table for SyncedPreferenceManager;
  *(v0 + 19) = v4;
  *(v0 + 27) = v5;
  *(v0 + 28) = &protocol witness table for SyncedPreferenceManager;
  *(v0 + 24) = v4;
  swift_retain_n();
  return v0;
}

char *SelectedLocationManager.init()()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC9UrchinKit23SelectedLocationManager_logger;
  if (qword_280838220 != -1)
  {
    swift_once();
  }

  v2 = sub_2707F1278();
  v3 = __swift_project_value_buffer(v2, qword_28083B288);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  if (qword_2808381C8 != -1)
  {
    swift_once();
  }

  v4 = qword_2808381D0;
  *(v0 + 17) = &type metadata for AuthCurrentLocationProvider;
  *(v0 + 18) = &off_288082DE0;
  v5 = type metadata accessor for SyncedPreferenceManager();
  *(v0 + 22) = v5;
  *(v0 + 23) = &protocol witness table for SyncedPreferenceManager;
  *(v0 + 19) = v4;
  *(v0 + 27) = v5;
  *(v0 + 28) = &protocol witness table for SyncedPreferenceManager;
  *(v0 + 24) = v4;
  swift_retain_n();
  return v0;
}

uint64_t sub_2707EA638()
{
  sub_2707DBF60(v0[15] + 192, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2707EA76C;

  return v5(v1, v2);
}

uint64_t sub_2707EA76C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[15];
  v4[17] = a2;

  return MEMORY[0x2822009F8](sub_2707EA888, v5, 0);
}

uint64_t sub_2707EA888()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_2707DBF60(v1 + 112, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2707EA9C4;

  return v6(v2, v3);
}

uint64_t sub_2707EA9C4(int a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_2707EAADC, v2, 0);
}

uint64_t sub_2707EAADC()
{
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 104);
    v4 = *(v0 + 8);

    return v4(v3, v2);
  }

  else
  {
    v6 = sub_2707F1258();
    v7 = sub_2707F1458();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2707D6000, v6, v7, "SelectedLocation is nil, determining default...", v8, 2u);
      MEMORY[0x2743AA810](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_2707EAC44;
    v10 = *(v0 + 160);

    return sub_2707ED57C(v10);
  }
}

uint64_t sub_2707EAC44(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_2707EAD48(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for CoastalLocation();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[34] = v4;
  *v4 = v2;
  v4[1] = sub_2707EAED8;

  return sub_2707EA618();
}

uint64_t sub_2707EAED8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;

  return MEMORY[0x2822009F8](sub_2707EAFF0, v4, 0);
}

uint64_t sub_2707EAFF0()
{
  sub_2707DBF60(v0[20] + 112, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_2707EB124;

  return v5(v1, v2);
}

uint64_t sub_2707EB124(int a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 328) = a1;

  return MEMORY[0x2822009F8](sub_2707EB23C, v2, 0);
}

uint64_t sub_2707EB23C()
{
  v1 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (!v1)
  {
    v5 = sub_2707F1258();
    v6 = sub_2707F1458();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2707D6000, v5, v6, "SelectedLocationID is nil", v7, 2u);
      MEMORY[0x2743AA810](v7, -1, -1);
    }

    v2 = *(v0 + 328);
    goto LABEL_18;
  }

  v2 = *(v0 + 328);
  if (*(v0 + 280) == 0x746E6572727563 && *(v0 + 288) == 0xE700000000000000)
  {
    if ((v2 - 3) < 2)
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v2)
    {
      goto LABEL_19;
    }

LABEL_22:

    v17 = sub_2707F1258();
    v18 = sub_2707F1458();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2707D6000, v17, v18, "Prefer current location, but auth is not determined.", v19, 2u);
      MEMORY[0x2743AA810](v19, -1, -1);
    }

    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    v22 = *(v0 + 152);

    (*(v21 + 56))(v22, 1, 1, v20);

    v23 = *(v0 + 8);

    return v23();
  }

  if ((sub_2707F15D8() & 1) == 0 || (v2 - 3) >= 2)
  {
    v4 = *(v0 + 328);
    if ((sub_2707F15D8() & 1) == 0 || v4)
    {
LABEL_19:
      sub_2707DBF60(*(v0 + 160) + 152, v0 + 56);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v14);
      v25 = (*(v15 + 16) + **(v15 + 16));
      v16 = swift_task_alloc();
      *(v0 + 304) = v16;
      *v16 = v0;
      v16[1] = sub_2707EB724;

      return v25(v14, v15);
    }

    goto LABEL_22;
  }

LABEL_15:
  v8 = *(v0 + 160);

  sub_2707DBF60(v8 + 112, v0 + 96);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  v24 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  *v11 = v0;
  v11[1] = sub_2707EC0FC;
  v12 = *(v0 + 152);

  return v24(v12, v9, v10);
}

uint64_t sub_2707EB724(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_2707EB83C, v2, 0);
}

void sub_2707EB83C()
{
  v93 = v0;
  v1 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  if (v1)
  {
    v2 = v0[35] == 0x746E6572727563 && v0[36] == 0xE700000000000000;
    if (v2 || (sub_2707F15D8() & 1) != 0)
    {
      v3 = v0[39];

      if (*(v3 + 16))
      {
        v4 = *(v0[22] + 80);
        sub_2707DB3B8(v0[39] + ((v4 + 32) & ~v4), v0[29]);
        v5 = 0;
      }

      else
      {
        v5 = 1;
      }

      v42 = v0[28];
      v41 = v0[29];
      v43 = v0[21];
      v44 = v0[22];

      (*(v44 + 56))(v41, v5, 1, v43);
      sub_2707EE268(v41, v42);
      v45 = sub_2707F1258();
      v46 = sub_2707F1458();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[28];
      if (v47)
      {
        v49 = v0[27];
        v50 = v0[21];
        v51 = v0[22];
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v92 = v53;
        *v52 = 136315138;
        sub_2707EE268(v48, v49);
        v54 = (*(v51 + 48))(v49, 1, v50);
        v55 = v0[27];
        if (v54 == 1)
        {
          v56 = 7104878;
          sub_2707EE2D8(v0[27]);
          v57 = 0xE300000000000000;
        }

        else
        {
          v72 = (v55 + *(v0[21] + 32));
          v56 = *v72;
          v57 = v72[1];

          sub_2707DBEA0(v55);
        }

        sub_2707EE2D8(v0[28]);
        v73 = sub_2707DAAD4(v56, v57, &v92);

        *(v52 + 4) = v73;
        _os_log_impl(&dword_2707D6000, v45, v46, "Prefer selected current location, but we don't have a current location, falling back to first static location: %s.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x2743AA810](v53, -1, -1);
        MEMORY[0x2743AA810](v52, -1, -1);
      }

      else
      {

        sub_2707EE2D8(v48);
      }

      sub_2707EE340(v0[29], v0[19]);
      goto LABEL_46;
    }
  }

  v6 = v0[39];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v10 = v0[21];
    v9 = v0[22];
    v11 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    while (v8 < *(v6 + 16))
    {
      v12 = v0[36];
      v13 = v0[26];
      sub_2707DB3B8(v11 + *(v9 + 72) * v8, v13);
      if (v12)
      {
        v14 = (v13 + *(v10 + 32));
        v15 = *v14 == v0[35] && v0[36] == v14[1];
        if (v15 || (sub_2707F15D8() & 1) != 0)
        {
          v16 = v0[33];
          v17 = v0[26];

          sub_2707DD9B4(v17, v16);
          v18 = 0;
          goto LABEL_21;
        }
      }

      ++v8;
      sub_2707DBEA0(v0[26]);
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_20:

  v18 = 1;
LABEL_21:
  v19 = v0[32];
  v20 = v0[33];
  v21 = v0[21];
  v22 = v0[22];
  v23 = *(v22 + 56);
  v23(v20, v18, 1, v21);
  sub_2707EE268(v20, v19);
  v24 = *(v22 + 48);
  if (v24(v19, 1, v21) == 1)
  {
    v25 = v0[33];
    v26 = v0[31];
    sub_2707EE2D8(v0[32]);
    sub_2707EE268(v25, v26);
    v27 = sub_2707F1258();
    v28 = sub_2707F1458();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[31];
    if (v29)
    {
      v90 = v23;
      v31 = v0[30];
      v88 = v0[21];
      v32 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v92 = v89;
      *v32 = 136315138;
      sub_2707EE268(v30, v31);
      v33 = v24(v31, 1, v88);
      v34 = v0[30];
      if (v33 == 1)
      {
        v35 = 7104878;
        sub_2707EE2D8(v0[30]);
        v36 = 0xE300000000000000;
      }

      else
      {
        v79 = (v34 + *(v0[21] + 32));
        v35 = *v79;
        v36 = v79[1];

        sub_2707DBEA0(v34);
      }

      sub_2707EE2D8(v0[31]);
      v80 = sub_2707DAAD4(v35, v36, &v92);

      *(v32 + 4) = v80;
      _os_log_impl(&dword_2707D6000, v27, v28, "Could not find selected locationID: %s in location list.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x2743AA810](v89, -1, -1);
      MEMORY[0x2743AA810](v32, -1, -1);

      v23 = v90;
      if (!v7)
      {
        goto LABEL_42;
      }
    }

    else
    {

      sub_2707EE2D8(v30);
      if (!v7)
      {
LABEL_42:

        v81 = sub_2707F1258();
        v82 = sub_2707F1448();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_2707D6000, v81, v82, "Tried to default to first static location but could not find any, returning nil.", v83, 2u);
          MEMORY[0x2743AA810](v83, -1, -1);
        }

        v84 = v0[33];
        v85 = v0[21];
        v86 = v0[19];

        sub_2707EE2D8(v84);
        v76 = v86;
        v77 = 1;
        v78 = v85;
LABEL_45:
        v23(v76, v77, 1, v78);
        goto LABEL_46;
      }
    }

    if (!*(v6 + 16))
    {
LABEL_50:
      __break(1u);
      return;
    }

    v59 = v0[23];
    v58 = v0[24];
    v60 = *(v0[22] + 80);
    sub_2707DB3B8(v0[39] + ((v60 + 32) & ~v60), v58);

    sub_2707DB3B8(v58, v59);
    v61 = sub_2707F1258();
    v62 = sub_2707F1458();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v0[33];
    v65 = v0[23];
    if (v63)
    {
      v66 = swift_slowAlloc();
      v91 = v23;
      v67 = swift_slowAlloc();
      v92 = v67;
      *v66 = 136315138;
      v0[17] = 0;
      v0[18] = 0xE000000000000000;
      MEMORY[0x2743AA020](40, 0xE100000000000000);
      sub_2707F1418();
      MEMORY[0x2743AA020](44, 0xE100000000000000);
      sub_2707F1418();
      MEMORY[0x2743AA020](41, 0xE100000000000000);
      v68 = v0[17];
      v69 = v0[18];
      sub_2707DBEA0(v65);
      v70 = sub_2707DAAD4(v68, v69, &v92);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_2707D6000, v61, v62, "Defaulting to first static location: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      v71 = v67;
      v23 = v91;
      MEMORY[0x2743AA810](v71, -1, -1);
      MEMORY[0x2743AA810](v66, -1, -1);
    }

    else
    {

      sub_2707DBEA0(v65);
    }

    sub_2707EE2D8(v64);
    v74 = v0[21];
    v75 = v0[19];
    sub_2707DD9B4(v0[24], v75);
    v76 = v75;
    v77 = 0;
    v78 = v74;
    goto LABEL_45;
  }

  v37 = v0[32];
  v38 = v0[25];
  v39 = v0[21];
  v40 = v0[19];
  sub_2707EE2D8(v0[33]);

  sub_2707DD9B4(v37, v38);
  sub_2707DD9B4(v38, v40);
  v23(v40, 0, 1, v39);
LABEL_46:

  v87 = v0[1];

  v87();
}

uint64_t sub_2707EC0FC()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_2707EC20C, v1, 0);
}

uint64_t sub_2707EC20C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2707EC2FC(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = type metadata accessor for CoastalLocation();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470) - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2707EC448, v2, 0);
}

uint64_t sub_2707EC448()
{
  if (v0[25])
  {
    sub_2707DBF60(v0[26] + 112, (v0 + 7));
    v1 = v0[10];
    v2 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
    v13 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    v0[35] = v3;
    *v3 = v0;
    v3[1] = sub_2707EC718;
    v4 = v0[34];

    return v13(v4, v1, v2);
  }

  else
  {
    v6 = sub_2707F1258();
    v7 = sub_2707F1458();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2707D6000, v6, v7, "Clearing selected location", v8, 2u);
      MEMORY[0x2743AA810](v8, -1, -1);
    }

    v9 = v0[26];

    sub_2707DBF60(v9 + 192, (v0 + 2));
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v14 = (*(v11 + 8) + **(v11 + 8));
    v12 = swift_task_alloc();
    v0[39] = v12;
    *v12 = v0;
    v12[1] = sub_2707ED1C4;

    return v14(0, 0, v10, v11);
  }
}

uint64_t sub_2707EC718()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_2707EC828, v1, 0);
}

uint64_t sub_2707EC828()
{
  v1 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  sub_2707DBF60(v1 + 152, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_2707EC964;

  return v6(v2, v3);
}

uint64_t sub_2707EC964(uint64_t a1)
{
  v2 = *(*v1 + 208);
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_2707ECA7C, v2, 0);
}

uint64_t sub_2707ECA7C()
{
  v53 = v0;
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[31];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838468);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2707F30D0;
  sub_2707EE268(v2, v6 + v5);
  v7 = sub_2707ED36C(v1);

  v52 = v6;
  sub_2707EE6EC(v7);
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v0[28];
    v10 = v52 + v5;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v13 = v0[32];
      v12 = v0[33];
      v14 = v0[27];
      sub_2707EE268(v10, v12);
      sub_2707EE340(v12, v13);
      v15 = (*(v9 + 48))(v13, 1, v14);
      v16 = v0[32];
      if (v15 == 1)
      {
        sub_2707EE2D8(v16);
      }

      else
      {
        sub_2707DD9B4(v16, v0[30]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2707E4498(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          v11 = sub_2707E4498(v17 > 1, v18 + 1, 1, v11);
        }

        v19 = v0[30];
        v11[2] = v18 + 1;
        sub_2707DD9B4(v19, v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
      }

      v10 += v4;
      --v8;
    }

    while (v8);

    v20 = v11[2];
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_18:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v11 = MEMORY[0x277D84F90];
  v20 = *(MEMORY[0x277D84F90] + 16);
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_12:
  v21 = v0[28];
  v50 = v0[27];
  v52 = MEMORY[0x277D84F90];
  sub_2707EE3B0(0, v20, 0);
  v22 = v52;
  v23 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v24 = *(v21 + 72);
  do
  {
    v25 = v0[29];
    sub_2707DB3B8(v23, v25);
    v26 = (v25 + *(v50 + 32));
    v28 = *v26;
    v27 = v26[1];

    sub_2707DBEA0(v25);
    v52 = v22;
    v30 = *(v22 + 16);
    v29 = *(v22 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_2707EE3B0((v29 > 1), v30 + 1, 1);
      v22 = v52;
    }

    *(v22 + 16) = v30 + 1;
    v31 = v22 + 16 * v30;
    *(v31 + 32) = v28;
    *(v31 + 40) = v27;
    v23 += v24;
    --v20;
  }

  while (v20);

LABEL_19:
  v32 = v0[25];
  v0[22] = v0[24];
  v0[23] = v32;
  v33 = swift_task_alloc();
  *(v33 + 16) = v0 + 22;
  v34 = sub_2707EE824(sub_2707EE8D0, v33, v22);

  if (v34)
  {
    sub_2707DBF60(v0[26] + 192, (v0 + 17));
    v35 = v0[20];
    v36 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v35);
    v51 = (*(v36 + 8) + **(v36 + 8));
    v37 = swift_task_alloc();
    v0[38] = v37;
    *v37 = v0;
    v37[1] = sub_2707ED014;
    v39 = v0[24];
    v38 = v0[25];

    return v51(v39, v38, v35, v36);
  }

  else
  {

    v41 = sub_2707F1258();
    v42 = sub_2707F1448();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[34];
    if (v43)
    {
      v46 = v0[24];
      v45 = v0[25];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_2707DAAD4(v46, v45, &v52);
      _os_log_impl(&dword_2707D6000, v41, v42, "Selected location %s is not contained the location list.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x2743AA810](v48, -1, -1);
      MEMORY[0x2743AA810](v47, -1, -1);
    }

    sub_2707EE2D8(v44);

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_2707ED014()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_2707ED124, v1, 0);
}

uint64_t sub_2707ED124()
{
  sub_2707EE2D8(*(v0 + 272));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2707ED1C4()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_2707ED2D4, v1, 0);
}

uint64_t sub_2707ED2D4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2707ED36C(uint64_t a1)
{
  v16 = type metadata accessor for CoastalLocation();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2707EE3D0(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_2707DB3B8(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2707EE3D0(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_2707EE340(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_2707ED57C(int a1)
{
  *(v2 + 56) = v1;
  *(v2 + 136) = a1;
  v3 = type metadata accessor for CoastalLocation();
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2707ED640, v1, 0);
}

uint64_t sub_2707ED640()
{
  v1 = *(v0 + 136);
  if ((v1 - 3) > 1)
  {
    if (v1)
    {
      sub_2707DBF60(*(v0 + 56) + 152, v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v14 = (*(v8 + 16) + **(v8 + 16));
      v9 = swift_task_alloc();
      *(v0 + 96) = v9;
      *v9 = v0;
      v9[1] = sub_2707EDA6C;

      return v14(v7, v8);
    }

    else
    {
      v10 = sub_2707F1258();
      v11 = sub_2707F1458();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2707D6000, v10, v11, "Undetermined location auth; return nil.", v12, 2u);
        MEMORY[0x2743AA810](v12, -1, -1);
      }

      v13 = *(v0 + 8);

      return v13(0, 0);
    }
  }

  else
  {
    v2 = sub_2707F1258();
    v3 = sub_2707F1458();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2707D6000, v2, v3, "Using current location as default.", v4, 2u);
      MEMORY[0x2743AA810](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_2707ED948;

    return sub_2707EC2FC(0x746E6572727563, 0xE700000000000000);
  }
}

uint64_t sub_2707ED948()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0x746E6572727563, 0xE700000000000000);
}

uint64_t sub_2707EDA6C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2707EDB84, v2, 0);
}

uint64_t sub_2707EDB84()
{
  v21 = v0;
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = v0[8];
    v4 = *(v0[9] + 80);
    sub_2707DB3B8(v0[13] + ((v4 + 32) & ~v4), v2);

    v5 = (v2 + *(v3 + 32));
    v6 = *v5;
    v0[14] = *v5;
    v7 = v5[1];
    v0[15] = v7;

    sub_2707DBEA0(v2);

    v8 = sub_2707F1258();
    v9 = sub_2707F1458();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_2707DAAD4(v6, v7, &v20);
      _os_log_impl(&dword_2707D6000, v8, v9, "Setting default location to: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2743AA810](v11, -1, -1);
      MEMORY[0x2743AA810](v10, -1, -1);
    }

    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_2707EDE94;

    return sub_2707EC2FC(v6, v7);
  }

  else
  {

    v14 = sub_2707F1258();
    v15 = sub_2707F1458();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446210;
      v18 = sub_2707DAAD4(7104878, 0xE300000000000000, &v20);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_2707D6000, v14, v15, "No location auth, using first static location as default: %{public}s.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2743AA810](v17, -1, -1);
      MEMORY[0x2743AA810](v16, -1, -1);
    }

    v19 = v0[1];

    return v19(0, 0);
  }
}

uint64_t sub_2707EDE94()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2707EDFC0, v1, 0);
}

uint64_t sub_2707EDFC0()
{
  v13 = v0;
  v2 = v0[14];
  v1 = v0[15];

  v3 = sub_2707F1258();
  v4 = sub_2707F1458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    if (v1)
    {
      v7 = v2;
    }

    else
    {
      v7 = 7104878;
    }

    if (v1)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = sub_2707DAAD4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2707D6000, v3, v4, "No location auth, using first static location as default: %{public}s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2743AA810](v6, -1, -1);
    MEMORY[0x2743AA810](v5, -1, -1);
  }

  v10 = v0[1];

  return v10(v2, v1);
}

uint64_t SelectedLocationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);
  v1 = OBJC_IVAR____TtC9UrchinKit23SelectedLocationManager_logger;
  v2 = sub_2707F1278();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SelectedLocationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);
  v1 = OBJC_IVAR____TtC9UrchinKit23SelectedLocationManager_logger;
  v2 = sub_2707F1278();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2707EE268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2707EE2D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2707EE340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2707EE3B0(char *a1, int64_t a2, char a3)
{
  result = sub_2707EE3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2707EE3D0(size_t a1, int64_t a2, char a3)
{
  result = sub_2707EE4FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2707EE3F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382D0);
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

size_t sub_2707EE4FC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838468);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470) - 8);
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

uint64_t sub_2707EE6EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2707E4670(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2707EE824(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2707EE8D0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2707F15D8() & 1;
  }
}

uint64_t type metadata accessor for SelectedLocationManager()
{
  result = qword_2808385C8;
  if (!qword_2808385C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2707EE97C()
{
  result = sub_2707F1278();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SelectedLocationManager.getSelectedLocationID()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2707DA7A8;

  return v4();
}

uint64_t dispatch thunk of SelectedLocationManager.getSelectedLocation()(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2707DC378;

  return v6(a1);
}

uint64_t dispatch thunk of SelectedLocationManager.set(selectedLocation:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2707DC378;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CurrentLocationProvider.currentLocationAuthStatus()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2707D8F00;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CurrentLocationProvider.getCurrentLocation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2707D9F90;

  return v9(a1, a2, a3);
}

uint64_t sub_2707EF040(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808382F8);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_2707F20D0;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = a2;

  return sub_2707F1308();
}

uint64_t CLLocationCoordinate2D.description.getter()
{
  MEMORY[0x2743AA020](40, 0xE100000000000000);
  sub_2707F1418();
  MEMORY[0x2743AA020](44, 0xE100000000000000);
  sub_2707F1418();
  MEMORY[0x2743AA020](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2707EF18C()
{
  MEMORY[0x2743AA020](40, 0xE100000000000000);
  sub_2707F1418();
  MEMORY[0x2743AA020](44, 0xE100000000000000);
  sub_2707F1418();
  MEMORY[0x2743AA020](41, 0xE100000000000000);
  return 0;
}

Swift::Bool __swiftcall CLLocationCoordinate2D.isValidMarineCoordinate()()
{
  result = 0;
  if (v0 != 0.0 && v1 != 0.0)
  {
    return CLLocationCoordinate2DIsValid(*&v0);
  }

  return result;
}

uint64_t LocationRule.LocationSupport.description.getter()
{
  v1 = 0x79627261656ELL;
  if (*v0 != 1)
  {
    v1 = 0x79617761726166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t LocationRule.LocationSupport.imageName.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t LocationRule.LocationSupport.genericDisplayText.getter()
{
  v1 = sub_2707F10D8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2707F12D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  if (!*v0 || (v9 = 0, *v0 == 1))
  {
    sub_2707F12C8();
    v10 = sub_2707F12E8();
    v11 = [objc_opt_self() bundleWithIdentifier_];

    (*(v3 + 16))(v6, v8, v2);
    sub_2707F10C8();
    v9 = sub_2707F1318();
    (*(v3 + 8))(v8, v2);
  }

  return v9;
}

UrchinKit::LocationRule::LocationSupport_optional __swiftcall LocationRule.LocationSupport.init(currentLocation:supportedLocation:)(CLLocation_optional currentLocation, CLLocation_optional supportedLocation)
{
  internal = currentLocation.value._internal;
  v4 = v2;
  if (currentLocation.value.super.isa)
  {
    if (currentLocation.value._internal)
    {
      isa = currentLocation.value.super.isa;
      [(objc_class *)currentLocation.value.super.isa distanceFromLocation:currentLocation.value._internal, supportedLocation.value.super.isa, supportedLocation.value._internal, *&supportedLocation.is_nil];
      v7 = v6;

      if (v7 <= 3000.0)
      {
        v9 = 0;
      }

      else if (v7 <= 100000.0)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {

      v9 = 3;
    }
  }

  else
  {

    v9 = 3;
  }

  *v4 = v9;
  return result;
}

UrchinKit::LocationRule::LocationSupport __swiftcall LocationRule.LocationSupport.init(currentLocation:supportedLocation:)(CLLocation currentLocation, CLLocation supportedLocation)
{
  internal = currentLocation._internal;
  isa = currentLocation.super.isa;
  v5 = v2;
  [(objc_class *)currentLocation.super.isa distanceFromLocation:currentLocation._internal, supportedLocation._internal];
  v7 = v6;

  if (v7 <= 100000.0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 <= 3000.0)
  {
    v9 = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t LocationRule.LocationSupport.init(currentLocation:supportedLocation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CoastalLocation();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2707EE268(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2707EE2D8(a1);

    result = sub_2707EE2D8(v8);
LABEL_10:
    v17 = 3;
    goto LABEL_11;
  }

  sub_2707DD9B4(v8, v12);
  if (*(v12 + *(v9 + 36)) != 1)
  {

    sub_2707EE2D8(a1);
    result = sub_2707DBEA0(v12);
    goto LABEL_10;
  }

  if (a2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v12[2] longitude:v12[3]];
    [v14 distanceFromLocation_];
    v16 = v15;

    sub_2707EE2D8(a1);
    result = sub_2707DBEA0(v12);
    if (v16 <= 3000.0)
    {
      v17 = 0;
    }

    else if (v16 <= 100000.0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    sub_2707EE2D8(a1);
    result = sub_2707DBEA0(v12);
    v17 = 1;
  }

LABEL_11:
  *a3 = v17;
  return result;
}

uint64_t sub_2707EF940()
{
  v1 = 0x79627261656ELL;
  if (*v0 != 1)
  {
    v1 = 0x79617761726166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_2707EF998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2707F0C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2707EF9C0(uint64_t a1)
{
  v2 = sub_2707EFF0C();

  return MEMORY[0x2821FE718](a1, v2);
}