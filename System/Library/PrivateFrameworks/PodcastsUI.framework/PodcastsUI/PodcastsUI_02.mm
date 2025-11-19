uint64_t sub_21B3A1338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21B4D3B00;
  if (qword_2812003F8 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v20 = v0[30];
  v21 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v22 = v0[18];
  v10 = qword_281200400;
  *(v1 + 32) = qword_281200400;
  v11 = v10;
  sub_21B4C9158();
  sub_21B3F821C(v5 + 40, (v0 + 2));
  (*(v3 + 16))(v2, v20, v4);
  v12 = sub_21B4C8A78();
  v13 = MEMORY[0x277D21F40];
  v0[10] = v12;
  v0[11] = v13;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_21B4C8A68();
  sub_21B4C8E58();
  v14 = MEMORY[0x277D22358];
  v0[15] = v21;
  v0[16] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(v6 + 16))(boxed_opaque_existential_1, v7, v21);
  sub_21B4C8E68();
  v16 = *(v8 + 8);
  v0[38] = v16;
  v0[39] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v9, v22);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v0[40] = sub_21B4C8E98();
  v17 = swift_task_alloc();
  v0[41] = v17;
  *v17 = v0;
  v17[1] = sub_21B3A1B0C;
  v18 = v0[21];

  return MEMORY[0x28217FBF8](v18);
}

uint64_t sub_21B3A1568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for JSPackageLoadingState();
  v5[8] = swift_task_alloc();
  v5[9] = sub_21B4C9A18();
  v5[10] = sub_21B4C9A08();
  v7 = sub_21B4C99C8();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_21B3A1630, v7, v6);
}

uint64_t sub_21B3A1630()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = sub_21B4C9A08();
    v3 = sub_21B4C99C8();

    return MEMORY[0x2822009F8](sub_21B3A1788, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21B3A1724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageLoadingState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B3A1788()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];

  sub_21B3A1724(v2, v3);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v0[5] = v1;
  sub_21B3A18AC();
  sub_21B4C59E8();

  sub_21B3A1A08(v3);

  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x2822009F8](sub_21B3A1A64, v5, v6);
}

unint64_t sub_21B3A18AC()
{
  result = qword_2811FEDB0;
  if (!qword_2811FEDB0)
  {
    type metadata accessor for JSPackageLoadingTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEDB0);
  }

  return result;
}

uint64_t sub_21B3A1904(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker__state;
  swift_beginAccess();
  sub_21B3A19A4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21B3A19A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageLoadingState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B3A1A08(uint64_t a1)
{
  v2 = type metadata accessor for JSPackageLoadingState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B3A1A64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21B3A1B0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_21B4707C8;
  }

  else
  {
    *(v4 + 344) = a1;
    v5 = sub_21B3A1C34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B3A1C34()
{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[17];
  v11 = v0[18];
  v13 = MEMORY[0x277D22148];
  v12[3] = v0[40];
  v12[4] = v13;
  *v12 = v1;
  v2(v10, v11);
  (*(v8 + 8))(v7, v9);
  sub_21B3A1D5C(v6);
  (*(v5 + 8))(v3, v4);

  v14 = v0[1];

  return v14();
}

uint64_t sub_21B3A1D5C(uint64_t a1)
{
  v2 = type metadata accessor for JSPackage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B3A1DB8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 360) = a3;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  *(v3 + 96) = sub_21B4C8C38();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = sub_21B4C8C18();
  *(v3 + 120) = swift_task_alloc();
  v4 = sub_21B4C9238();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v5 = sub_21B4C9388();
  *(v3 + 160) = v5;
  *(v3 + 168) = *(v5 - 8);
  *(v3 + 176) = swift_task_alloc();
  v6 = sub_21B4C8C08();
  *(v3 + 184) = v6;
  *(v3 + 192) = *(v6 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v7 = sub_21B4C9208();
  *(v3 + 240) = v7;
  *(v3 + 248) = *(v7 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v8 = sub_21B3F12CC(0, &qword_281200518);
  *(v3 + 272) = v8;
  v9 = swift_task_alloc();
  *(v3 + 280) = v9;
  *v9 = v3;
  v9[1] = sub_21B3A209C;

  return MEMORY[0x28217F228](v3 + 56, v8, v8);
}

uint64_t sub_21B3A209C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21B4708D0;
  }

  else
  {
    v2 = sub_21B3A21B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3A21B0()
{
  v0[37] = v0[7];
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_21B3A225C;
  v2 = v0[33];
  v3 = v0[30];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_21B3A225C()
{
  v2 = *v1;
  *(v2 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B4709D4, 0, 0);
  }

  else
  {
    v3 = sub_21B3F12CC(0, &qword_2811FCD60);
    v4 = swift_task_alloc();
    *(v2 + 320) = v4;
    *v4 = v2;
    v4[1] = sub_21B3A2AA0;

    return MEMORY[0x28217F228](v2 + 64, v3, v3);
  }
}

uint64_t sub_21B3A2404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_21B4C8448();
  v46 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v44 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = v43 - v5;
  v6 = sub_21B4C5638();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21B4C75F8();
  v52 = *(v53 - 1);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v43 - v15;
  v17 = sub_21B4C5748();
  v51 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v43[0] = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v43 - v20;
  v22 = [objc_opt_self() defaultManager];
  v23 = a1;
  LOBYTE(a1) = sub_21B4C9CB8();

  if ((a1 & 1) == 0)
  {
    sub_21B3A2BB4();
    swift_allocError();
    v26 = v31;
    v30 = v52;
    v32 = v23;
    v28 = v53;
    (*(v52 + 16))(v11, v32, v53);
    v29 = 3;
    goto LABEL_5;
  }

  v24 = *(v52 + 16);
  v24(v13, v23, v53);
  (*(v49 + 104))(v8, *MEMORY[0x277CC91D8], v50);
  sub_21B4687D0(v13, v8, v16);
  if ((*(v51 + 48))(v16, 1, v17) == 1)
  {
    sub_21B3F2D94(v16, &qword_27CD86E60);
    sub_21B3A2BB4();
    swift_allocError();
    v26 = v25;
    v27 = v23;
    v28 = v53;
    v24(v11, v27, v53);
    v29 = 5;
    v30 = v52;
LABEL_5:
    sub_21B4C75B8();
    v33 = sub_21B4C75D8();
    v35 = v34;
    (*(v30 + 8))(v13, v28);
    *v26 = v33;
    *(v26 + 8) = v35;
    *(v26 + 16) = v29;
    return swift_willThrow();
  }

  v37 = v51;
  (*(v51 + 32))(v21, v16, v17);
  v38 = v45;
  v39 = v46;
  v40 = v48;
  (*(v46 + 104))(v45, *MEMORY[0x277D21A70], v48);
  v53 = *(v43[1] + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_process);
  v41 = v53;
  *(swift_allocObject() + 16) = v41;
  (*(v37 + 16))(v43[0], v21, v17);
  (*(v39 + 16))(v44, v38, v40);
  v42 = v53;
  sub_21B4C82F8();
  (*(v39 + 8))(v38, v40);
  return (*(v37 + 8))(v21, v17);
}

uint64_t sub_21B3A29D8()
{
  v0[42] = v0[8];
  v1 = sub_21B3F12CC(0, &unk_2811FCD78);
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_21B3A41D0;

  return MEMORY[0x28217F228](v0 + 9, v1, v1);
}

uint64_t sub_21B3A2AA0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_21B470AE0;
  }

  else
  {
    v2 = sub_21B3A29D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_21B3A2BB4()
{
  result = qword_2811FFE30[0];
  if (!qword_2811FFE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811FFE30);
  }

  return result;
}

uint64_t sub_21B3A2C08(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_21B4C8F48();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B3A2CC8, 0, 0);
}

uint64_t sub_21B3A2CC8()
{
  v0[8] = sub_21B4C8868();
  v0[9] = sub_21B4C8858();
  v1 = sub_21B3F12CC(0, &qword_2811FCD60);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21B3A35B0;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_21B3A2DA0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D50) + 48);
  sub_21B38C458(v6, v3, type metadata accessor for JSPackageLocation);
  *(v3 + v7) = v1;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  sub_21B4C9A38();
  JSPackageLoadingTracker.update(to:priority:)(v3, v4);

  v2(v4, v5);
  sub_21B38CA90(v3, type metadata accessor for JSPackageLoadingState);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_21B3A2EEC()
{
  v0[12] = v0[2];
  v0[13] = sub_21B4C8858();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD880A0);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_21B3A36E8;

  return MEMORY[0x28217F228](v0 + 3, v1, v1);
}

uint64_t sub_21B3A2FBC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v23 = *(v0 + 200);
  v3 = *(v0 + 176);
  v22 = *(v0 + 216) + 1;
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  *(v0 + 72) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  sub_21B38C458(v2, boxed_opaque_existential_1, type metadata accessor for JSPackageLocation);
  sub_21B4C8548();
  sub_21B3F2D94(v0 + 48, &qword_27CD86E70);
  sub_21B4C8568();
  swift_getErrorValue();
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  *(v0 + 104) = v5;
  v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  sub_21B4C8548();
  sub_21B3F2D94(v0 + 80, &qword_27CD86E70);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C92A8();

  sub_21B38CA90(v2, type metadata accessor for JSPackageLocation);
  if (v22 == v23)
  {
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v8 = sub_21B4C94B8();
    __swift_project_value_buffer(v8, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C92A8();

    sub_21B3A2BB4();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 7;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 216) + 1;
    *(v0 + 216) = v13;
    sub_21B38C458(*(v0 + 152) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + v12 * v13, *(v0 + 192), type metadata accessor for JSPackageLocation);
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    v16 = sub_21B4C94B8();
    *(v0 + 224) = v16;
    *(v0 + 232) = __swift_project_value_buffer(v16, qword_2811FCF10);
    *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    v17 = *(sub_21B4C85A8() - 8);
    *(v0 + 248) = *(v17 + 72);
    *(v0 + 276) = *(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    *(v0 + 40) = v15;
    v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_21B38C458(v14, v18, type metadata accessor for JSPackageLocation);
    sub_21B4C8548();
    sub_21B3F2D94(v0 + 16, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C9288();

    v19 = swift_task_alloc();
    *(v0 + 256) = v19;
    *v19 = v0;
    v19[1] = sub_21B3A05F8;
    v20 = *(v0 + 192);
    v21 = *(v0 + 144);

    return JSPackageLoader.load(from:)(v21, v20);
  }
}

uint64_t sub_21B3A35B0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21B47045C;
  }

  else
  {

    v2 = sub_21B3A2EEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_10PodcastsUI14JSPackageErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_21B3A36E8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);

    v4 = sub_21B4704C8;
  }

  else
  {

    *(v2 + 128) = sub_21B3F12CC(0, &unk_2811FCD78);
    v4 = sub_21B3A3844;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21B3A3844()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = [objc_opt_self() mediaApiClientIdentifier];
  v6 = sub_21B4C9708();
  v8 = v7;

  *v1 = v6;
  v1[1] = v8;
  v1[2] = 0;
  v1[3] = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277D22228], v3);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_21B3A3CF8;
  v10 = v0[12];
  v11 = v0[7];

  return MEMORY[0x2821809B0](v10, v4, v11);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B3A3980()
{
  v1 = *(v0[4] + 16);
  sub_21B3A40C8(v0[2]);

  v2 = sub_21B4C9B48();

  [v1 removeDownloadAssetsForEpisodeUuids_];

  sub_21B4C7528();
  v3 = sub_21B4C7538();
  v4 = sub_21B4C9CC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21B365000, v3, v4, "Successfully deleted pending downloads", v5, 2u);
    MEMORY[0x21CEF5710](v5, -1, -1);
  }

  v6 = v0[37];
  v7 = v0[17];
  v8 = v0[15];

  v6(v7, v8);
  sub_21B4C73B8();
  v9 = sub_21B4C73C8();
  sub_21B4C7438();
  v10 = sub_21B4C9E48();
  if (sub_21B4CA148())
  {
    v11 = v0[8];
    v13 = v0[5];
    v12 = v0[6];

    sub_21B4C7468();

    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[6] + 8))(v0[8], v0[5]);
      v14 = "SUCCESS";
    }

    v15 = v0[38];
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v9, v10, v17, "RemovePendingDownloads", v14, v16, 2u);
    MEMORY[0x21CEF5710](v16, -1, -1);
  }

  else
  {
    v15 = v0[38];
  }

  v18 = v0[35];
  v19 = v0[33];
  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[22];
  v23 = v0[19];

  v19(v22, v23);
  v18(v20, v21);

  v24 = v0[1];

  return v24();
}

uint64_t sub_21B3A3CF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_21B47052C;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_21B3A4160;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t JSPackageError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      if (v3 == 2)
      {
        sub_21B4CA338();

        v9[0] = 0xD000000000000019;
        v9[1] = 0x800000021B4E0FD0;
        MEMORY[0x21CEF2F30](v1, v2);
        goto LABEL_10;
      }

      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_21B4CA338();

      v4 = 0x800000021B4E0FB0;
      v5 = 0xD000000000000010;
    }

    else
    {
      if (!*(v0 + 16))
      {
        v9[0] = 0;
        v9[1] = 0xE000000000000000;
        sub_21B4CA338();
        MEMORY[0x21CEF2F30](0xD000000000000014, 0x800000021B4E1010);
        type metadata accessor for AMSBagKey(0);
        sub_21B4CA478();
LABEL_10:
        v6 = 34;
        v7 = 0xE100000000000000;
LABEL_18:
        MEMORY[0x21CEF2F30](v6, v7);
        return v9[0];
      }

      v9[0] = 0;
      v9[1] = 0xE000000000000000;
      sub_21B4CA338();

      v4 = 0x800000021B4E0FF0;
      v5 = 0xD00000000000001BLL;
    }

    goto LABEL_16;
  }

  if (*(v0 + 16) <= 5u)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    if (v3 == 4)
    {
      sub_21B4CA338();

      v4 = 0x800000021B4E0F90;
      v5 = 0xD000000000000017;
    }

    else
    {
      sub_21B4CA338();

      v4 = 0x800000021B4E0F70;
      v5 = 0xD000000000000013;
    }

LABEL_16:
    v9[0] = v5;
    v9[1] = v4;
    goto LABEL_17;
  }

  if (v3 == 6)
  {
    strcpy(v9, "Invalid URL: ");
    HIWORD(v9[1]) = -4864;
LABEL_17:
    v6 = v1;
    v7 = v2;
    goto LABEL_18;
  }

  if (v1 | v2)
  {
    return 0xD00000000000003FLL;
  }

  else
  {
    return 0xD000000000000032;
  }
}

uint64_t sub_21B3A40C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEF32C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21B444C28(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21B3A4160()
{
  **(v0 + 32) = *(v0 + 152);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B3A41D0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_21B470C0C;
  }

  else
  {
    v2 = sub_21B3A4A90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3A42E4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_21B436784;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_21B3A492C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21B3A4400(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_21B4C82C8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D68);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_21B4C8368();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  sub_21B4C8398();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B3A45C0, 0, 0);
}

uint64_t sub_21B3A45C0()
{
  v1 = sub_21B4C5CE8();
  v0[5] = v1;
  v0[6] = sub_21B38B990(&qword_2811FD620, MEMORY[0x277D3D3D0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3D3C0], v1);
  LOBYTE(v1) = sub_21B4C5A38();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v1)
  {
    sub_21B4C8388();
  }

  else
  {
    sub_21B4C83E8();
    sub_21B4C83D8();
    sub_21B4C8378();
  }

  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  sub_21B4C83B8();
  swift_allocObject();
  v0[26] = sub_21B4C83A8();
  v8 = sub_21B4C8318();
  v0[10] = v8;
  v0[11] = sub_21B38B990(&qword_2811FD228, MEMORY[0x277D219C8]);
  v9 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v8 - 8) + 16))(v9, v7, v8);

  sub_21B4C9178();
  sub_21B4C8358();
  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_loader, v5);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *(v10 + 16) = v3;
  v11 = swift_task_alloc();
  v0[28] = v11;
  v12 = sub_21B4C82D8();
  *v11 = v0;
  v11[1] = sub_21B467A30;
  v13 = v0[20];
  v14 = MEMORY[0x277D21998];

  return MEMORY[0x28217E758](v13, &unk_21B4D6EC8, v10, v12, v14);
}

uint64_t sub_21B3A492C()
{
  v1 = objc_allocWithZone(*(v0 + 48));
  v2 = sub_21B4C6D08();
  *(v0 + 16) = v2;
  v3 = MEMORY[0x277D3D818];
  sub_21B390588(&qword_2811FD4B8, 255, MEMORY[0x277D3D818]);
  sub_21B390588(&qword_2811FD4C0, 255, v3);
  sub_21B4C9D18();

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_21B436828;

  return sub_21B3A4F48();
}

uint64_t sub_21B3A4A90()
{
  v1 = v0[42];
  v2 = v0[37];
  v36 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v32 = v0[30];
  v34 = v0[33];
  v40 = v0[28];
  v39 = v0[27];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];
  v41 = v0[22];
  v42 = v0[21];
  v43 = v0[20];
  v45 = v0[9];
  v9 = sub_21B4C96C8();
  [v1 setTreatmentNamespace_];

  (*(v4 + 16))(v3, v34, v32);
  sub_21B4C8BF8();
  v0[2] = v2;
  v10 = MEMORY[0x277D225B8];
  v0[5] = v36;
  v0[6] = v10;
  v11 = v2;
  sub_21B4C8BB8();
  v12 = *(v8 + 8);
  v12(v5, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_21B4C8BC8();
  v12(v6, v7);
  sub_21B4C8BA8();
  v12(v39, v7);
  sub_21B4C9378();
  sub_21B4C9368();
  (*(v42 + 8))(v41, v43);
  sub_21B4C8BE8();
  v12(v40, v7);
  if ([v45 protocolHandler])
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v15 = v0[28];
      v14 = v0[29];
      v16 = v0[23];
      v17 = v0[24];
      v18 = [v13 tokenService];
      sub_21B4C8BD8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v12(v14, v16);
      (*(v17 + 32))(v14, v15, v16);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v31 = v0[42];
  v33 = v12;
  v35 = v0[37];
  v30 = v0[33];
  v37 = v0[31];
  v38 = v0[30];
  v19 = v0[29];
  v20 = v0[24];
  v21 = v0[23];
  v44 = v0[28];
  v22 = v0[18];
  v23 = v0[16];
  v24 = v0[17];
  v28 = v0[19];
  sub_21B4C9228();
  sub_21B4C9218();
  v29 = *(v24 + 8);
  v29(v22, v23);
  (*(v20 + 16))(v44, v19, v21);
  sub_21B4C8C28();
  v25 = v45;
  sub_21B4C8C48();
  (*(v24 + 16))(v22, v28, v23);
  sub_21B4C9248();

  v29(v28, v23);
  v33(v19, v21);
  (*(v37 + 8))(v30, v38);

  v26 = v0[1];

  return v26();
}

uint64_t sub_21B3A4F48()
{
  v1[6] = v0;
  v2 = sub_21B4C7558();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87738);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87740);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  type metadata accessor for DownloadRemovalObserver();
  v1[18] = sub_21B390588(&qword_2811FEEF0, v5, type metadata accessor for DownloadRemovalObserver);
  v7 = sub_21B4C99C8();
  v1[19] = v7;
  v1[20] = v6;

  return MEMORY[0x2822009F8](sub_21B3A59C0, v7, v6);
}

uint64_t sub_21B3A5144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v42 - v3;
  v49 = sub_21B4C5748();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C8588();
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811FFE18 != -1)
  {
LABEL_32:
    swift_once();
  }

  v7 = off_2811FFE20 + 64;
  v8 = 1 << *(off_2811FFE20 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(off_2811FFE20 + 8);
  v11 = (v8 + 63) >> 6;
  v52 = off_2811FFE20;

  v12 = 0;
  v51 = v7;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
      v15 = (v52[6] + v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = (v52[7] + v14);
      v19 = v18[1];
      v50 = *v18;

      v55 = sub_21B4C5658();
      v56 = v20;
      v58 = v17;
      v59 = v16;
      v21 = sub_21B3A5DF0();
      v22 = sub_21B4CA248();

      if (v22)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      v7 = v51;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v51 = v21;
    v28 = v50;
    v42[0] = v19;
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v43 = sub_21B4C94B8();
    v42[1] = __swift_project_value_buffer(v43, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    v29 = MEMORY[0x277D837D0];
    v57 = MEMORY[0x277D837D0];
    v55 = v17;
    v56 = v16;
    v30 = v16;

    sub_21B4C8548();
    sub_21B3F2D94(&v55, &qword_27CD86E70);
    sub_21B4C8568();
    v57 = v29;
    v31 = v28;
    v55 = v28;
    v32 = v42[0];
    v56 = v42[0];

    sub_21B4C8548();
    sub_21B3F2D94(&v55, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C9288();

    v55 = sub_21B4C5658();
    v56 = v33;
    v58 = v17;
    v59 = v30;
    v53 = v31;
    v54 = v32;
    sub_21B4CA218();

    v34 = v45;
    sub_21B4C5718();

    v35 = v47;
    v36 = v49;
    if ((*(v47 + 48))(v34, 1, v49) == 1)
    {
      sub_21B3F2D94(v34, &qword_27CD86E60);
      sub_21B3A2BB4();
      swift_allocError();
      *v37 = xmmword_21B4D6E30;
      *(v37 + 16) = 7;
      swift_willThrow();
    }

    v38 = *(v35 + 32);
    v38(v46, v34, v36);
    if (sub_21B4C5648() == 0x6B63617074656ALL && v39 == 0xE700000000000000)
    {

      return (v38)(v48, v46, v36);
    }

    v40 = sub_21B4CA608();

    if (v40)
    {

      return (v38)(v48, v46, v36);
    }

    v41 = v46;
    sub_21B4C56A8();

    return (*(v47 + 8))(v41, v36);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *&v7[8 * v13];
      ++v12;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v23 = sub_21B4C94B8();
    __swift_project_value_buffer(v23, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C9298();

    if (sub_21B4C5648() == 0x6B63617074656ALL && v24 == 0xE700000000000000)
    {

      v25 = v49;
      return (*(v47 + 16))(v48, v60, v25);
    }

    v26 = sub_21B4CA608();

    v25 = v49;
    if (v26)
    {
      return (*(v47 + 16))(v48, v60, v25);
    }

    return sub_21B4C56A8();
  }
}

uint64_t sub_21B3A59C0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[6];
  v0[21] = v5[3];
  v0[22] = v5[4];
  v0[23] = v5[5];
  sub_21B4C9D28();
  (*(v4 + 16))(v2, v1, v3);
  v0[24] = swift_getOpaqueTypeConformance2();
  sub_21B4C9AE8();
  v6 = v0[18];
  v7 = v0[6];
  swift_getAssociatedConformanceWitness();
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_21B436990;

  return MEMORY[0x282200310](v0 + 2, v7, v6);
}

uint64_t sub_21B3A5B4C()
{
  v1 = v0[343];
  v2 = v0[307];
  v3 = v0[295];
  v4 = v0[289];
  v5 = MEMORY[0x277D22388];
  v1[16] = v4;
  v1[17] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 13);
  v7 = *(v3 + 16);
  v0[356] = v7;
  v0[357] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(boxed_opaque_existential_1, v2, v4);
  v1[18] = 7628142;
  v1[19] = 0xE300000000000000;
  v8 = v0[301];

  return MEMORY[0x282200930](v0 + 162, v8, sub_21B471138, v0 + 314);
}

unint64_t sub_21B3A5C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F90);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21B36CEF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21B3A5D28()
{
  v0 = sub_21B3A5C14(&unk_282CB2FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D70);
  result = swift_arrayDestroy();
  off_2811FFE20 = v0;
  return result;
}

uint64_t sub_21B3A5DA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21B3A5DF0()
{
  result = qword_281200578;
  if (!qword_281200578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281200578);
  }

  return result;
}

id sub_21B3A5EA8()
{
  sub_21B378230();
  sub_21B4C8808();
  v0 = v9;
  sub_21B4C87E8();
  if (v9)
  {
    sub_21B4C61A8();

    v1 = v7;
  }

  else
  {
    v1 = 0;
  }

  v2 = _s14descr282CB18D9V14JSClientObjectCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCO10PodcastsUI6Legacy14JSClientObject_accountStore] = v9;
  v3[OBJC_IVAR____TtCO10PodcastsUI6Legacy14JSClientObject_isPersonalizationDisabled] = v1;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = v0;
  v5 = objc_msgSendSuper2(&v8, sel_init);

  return v5;
}

uint64_t sub_21B3A5FB0()
{
  v0 = sub_21B4C58F8();
  v22 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B4C5918();
  v23 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D18);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  sub_21B4C91C8();
  sub_21B4C91A8();
  (*(v13 + 8))(v15, v12);
  if (v25)
  {
    return v24;
  }

  sub_21B4C58D8();
  sub_21B4C5908();
  v17 = *(v23 + 8);
  v17(v8, v3);
  sub_21B4C58E8();
  (*(v22 + 8))(v2, v0);
  v18 = sub_21B4C58C8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_21B3F2D94(v11, &qword_27CD87D10);
    sub_21B4C58D8();
    v20 = sub_21B4C58A8();
    v17(v6, v3);
    return v20;
  }

  else
  {
    v21 = sub_21B4C58B8();
    (*(v19 + 8))(v11, v18);
    return v21;
  }
}

uint64_t _s14descr282CB18D9V17JSLocalizerObjectCMa()
{
  result = qword_2811FD908;
  if (!qword_2811FD908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B3A639C()
{
  result = sub_21B4C5918();
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

id sub_21B3A6454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21B4C5918();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCO10PodcastsUI6Legacy17JSLocalizerObject_bundle;
  sub_21B3A6634();
  *&v2[v11] = sub_21B4CA068();
  v12 = OBJC_IVAR____TtCO10PodcastsUI6Legacy17JSLocalizerObject_dateIntervalFormatters;
  *&v3[v12] = sub_21B3A6680(MEMORY[0x277D84F90]);
  v13 = sub_21B3A6694(a1, a2);
  v15 = v14;

  v16 = *&v3[v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B4D2830;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  v18 = v16;
  v19 = sub_21B4CA078();
  v21 = v20;

  v22 = &v3[OBJC_IVAR____TtCO10PodcastsUI6Legacy17JSLocalizerObject_preferredLocalization];
  *v22 = v19;
  v22[1] = v21;

  sub_21B4C5898();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtCO10PodcastsUI6Legacy17JSLocalizerObject_locale], v10, v7);
  v24.receiver = v3;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

unint64_t sub_21B3A6634()
{
  result = qword_2811FCAC0;
  if (!qword_2811FCAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811FCAC0);
  }

  return result;
}

uint64_t sub_21B3A6694(uint64_t a1, uint64_t a2)
{
  v3 = 0x4E435F687ALL;
  if (a1 != 0x736E61485F687ALL || a2 != 0xE700000000000000)
  {
    v6 = sub_21B4CA608();
    v7 = a1 == 0x736E61482D687ALL && a2 == 0xE700000000000000;
    v8 = v7;
    if ((v6 & 1) == 0 && !v8 && (sub_21B4CA608() & 1) == 0)
    {
      v3 = 0x57545F687ALL;
      if (a1 != 0x746E61485F687ALL || a2 != 0xE700000000000000)
      {
        v10 = sub_21B4CA608();
        v12 = a1 == 0x746E61482D687ALL && a2 == 0xE700000000000000;
        if ((v10 & 1) == 0 && !v12 && (sub_21B4CA608() & 1) == 0)
        {

          return a1;
        }
      }
    }
  }

  return v3;
}

id sub_21B3A68D8()
{
  sub_21B378230();
  sub_21B4C8808();
  v0 = v10;
  sub_21B4C87E8();
  if (v9)
  {
    sub_21B4C61A8();

    v1 = v7 ^ 1;
  }

  else
  {
    v1 = 1;
  }

  v2 = _s14descr282CB18D9V12JSUserObjectCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCO10PodcastsUI6Legacy12JSUserObject_accountStore] = v10;
  v3[OBJC_IVAR____TtCO10PodcastsUI6Legacy12JSUserObject_isPersonalizationEnabled] = v1 & 1;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = v0;
  v5 = objc_msgSendSuper2(&v8, sel_init);

  return v5;
}

unint64_t sub_21B3A69E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FC0);
    v3 = sub_21B4CA4E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B36C7AC(v4, &v13, &unk_27CD88000);
      v5 = v13;
      v6 = v14;
      result = sub_21B36CEF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B36D484(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21B3A6B1C(uint64_t a1)
{
  v3 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21B46F3D8, 0, 0);
  }

  else
  {
    sub_21B3F821C(v3[35], (v3 + 2));
    v4 = swift_task_alloc();
    v3[43] = v4;
    *v4 = v3;
    v4[1] = sub_21B46F29C;
    v5 = v3[37];

    return sub_21B3A0C98(v5);
  }
}

uint64_t type metadata accessor for PUITextStyle()
{
  result = qword_2812000A0;
  if (!qword_2812000A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B3A6CF4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21B4C7EE8();
  (*(*(v4 - 8) + 104))(a2, v3, v4);
  v5 = type metadata accessor for PUITextStyle();
  v6 = *(v5 + 20);
  v7 = sub_21B4C7EB8();
  v8 = *(*(v7 - 8) + 56);
  v8(a2 + v6, 1, 1, v7);
  v9 = a2 + *(v5 + 24);
  sub_21B3F2D94(a2 + v6, &qword_27CD88C30);
  result = (v8)(a2 + v6, 1, 1, v7);
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_21B3A6E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PUITextStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B3A6E6C@<X0>(double (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_21B3A6E08(v4, a2);
  v7 = a1(v6);
  result = type metadata accessor for PUITextStyle();
  v9 = a2 + *(result + 24);
  *v9 = v7;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_21B3A6EF8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_21B3A6E08(v4, a2);
  v6 = *(type metadata accessor for PUITextStyle() + 20);
  sub_21B3F2D94(a2 + v6, &qword_27CD88C30);
  v7 = *a1;
  v8 = sub_21B4C7EB8();
  v11 = *(v8 - 8);
  (*(v11 + 104))(a2 + v6, v7, v8);
  v9 = *(v11 + 56);

  return v9(a2 + v6, 0, 1, v8);
}

id PUITextStyle.uiFont.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for PUITextStyle();
  sub_21B3A72AC(v0 + *(v4 + 20), v3);
  v5 = sub_21B4C7EB8();
  v6 = *(v5 - 8);
  v7 = 1;
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    goto LABEL_3;
  }

  v8 = (*(v6 + 88))(v3, v5);
  if (v8 == *MEMORY[0x277CE0A18])
  {
    goto LABEL_3;
  }

  if (v8 == *MEMORY[0x277CE0A10])
  {
    v7 = 0;
    v9 = 0x8000;
  }

  else
  {
    if (v8 != *MEMORY[0x277CE0A08])
    {
      (*(v6 + 8))(v3, v5);
LABEL_3:
      v9 = 0;
      goto LABEL_4;
    }

    v7 = 0;
    v9 = 0x10000;
  }

LABEL_4:
  v10 = *(v0 + *(v4 + 24) + 8);
  sub_21B4C7E58();
  if (v10 == 1)
  {
    sub_21B4C7E88();
  }

  else if (sub_21B4C7E48() & 1) != 0 || (sub_21B4C7E88(), (sub_21B4C7E48()))
  {
    v9 = v9 | 2;
    goto LABEL_11;
  }

  if (v7)
  {
    v11 = objc_opt_self();
    v12 = sub_21B3A731C();
    v13 = [v11 preferredFontForTextStyle_];
LABEL_14:
    v17 = v13;
    goto LABEL_15;
  }

LABEL_11:
  v12 = sub_21B3A731C();
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];

  v16 = objc_opt_self();
  if (!v15)
  {
    v13 = [v16 preferredFontForTextStyle_];
    goto LABEL_14;
  }

  v17 = [v16 fontWithDescriptor:v15 size:0.0];

LABEL_15:
  return v17;
}

uint64_t sub_21B3A72AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21B3A731C()
{
  v1 = v0;
  v2 = sub_21B4C7EE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CE0A50])
  {
    v7 = MEMORY[0x277D769A8];
  }

  else if (v6 == *MEMORY[0x277CE0A70])
  {
    v7 = MEMORY[0x277D76A08];
  }

  else if (v6 == *MEMORY[0x277CE0A80])
  {
    v7 = MEMORY[0x277D76A20];
  }

  else if (v6 == *MEMORY[0x277CE0A90])
  {
    v7 = MEMORY[0x277D76A28];
  }

  else if (v6 == *MEMORY[0x277CE0AC0])
  {
    v7 = MEMORY[0x277D76988];
  }

  else if (v6 == *MEMORY[0x277CE0A58])
  {
    v7 = MEMORY[0x277D769D0];
  }

  else if (v6 == *MEMORY[0x277CE0A68])
  {
    v7 = MEMORY[0x277D76918];
  }

  else if (v6 == *MEMORY[0x277CE0A98])
  {
    v7 = MEMORY[0x277D76920];
  }

  else if (v6 == *MEMORY[0x277CE0AB0])
  {
    v7 = MEMORY[0x277D76968];
  }

  else if (v6 == *MEMORY[0x277CE0AA0])
  {
    v7 = MEMORY[0x277D76938];
  }

  else
  {
    if (v6 != *MEMORY[0x277CE0AA8])
    {
      v10 = *(v3 + 8);
      v11 = *MEMORY[0x277D76918];
      v10(v5, v2);
      return v11;
    }

    v7 = MEMORY[0x277D76940];
  }

  v8 = *v7;

  return v8;
}

double static CGFloat.epsilon.getter()
{
  if (qword_2812005B8 != -1)
  {
    swift_once();
  }

  return *&qword_2812005C0;
}

void UIImage.inMemorySize.getter()
{
  BytesPerRow = &selRef_sendItemEndedNotification;
  [(CGImage *)v0 size];
  v3 = v2;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = [(CGImage *)v0 CGImage];
  if (v4)
  {
    v0 = v4;
    BytesPerRow = CGImageGetBytesPerRow(v4);

    if ((BytesPerRow & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  [v0 *(BytesPerRow + 2296)];
  v6 = v5 * 16.0 + 1.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_19:
    __break(1u);
    return;
  }

  BytesPerRow = v6;
LABEL_11:
  if (!is_mul_ok(v3, BytesPerRow))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_21B3A7750(uint64_t a1)
{
  v2 = sub_21B4C8A38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878A8);
    v9 = sub_21B4CA318();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21B44AF68(&qword_2811FD1B0, MEMORY[0x277D21E98]);
      v16 = sub_21B4C9628();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21B44AF68(&qword_2811FD1A8, MEMORY[0x277D21E98]);
          v23 = sub_21B4C96B8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21B3A7A70(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_21B3A7AE0((a2 + 16), a3, a4, a5);

  os_unfair_lock_unlock((a2 + 40));
}

uint64_t sub_21B3A7AE0(void *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_21B4C7408();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C7388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C73F8();
  result = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = result;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_21B4C73A8();

    v19 = sub_21B4C73C8();
    sub_21B4C7438();
    v31 = sub_21B4C9E48();
    result = sub_21B4CA148();
    if ((result & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      result = (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return result;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_21B4C7468();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == *MEMORY[0x277D85B00])
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] SUCCESS";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_21B36CF74(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_21B4C7368();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_21B365000, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x21CEF5710](v25, -1, -1);
      MEMORY[0x21CEF5710](v24, -1, -1);

      (*(v36 + 8))(v12, v37);
      result = (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void sub_21B3A7F68(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_21B3A8158((a2 + 16), a3, a4, a5);

  os_unfair_lock_unlock((a2 + 40));
}

uint64_t sub_21B3A7FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87900);
  sub_21B4C8A38();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21B4D5C70;
  sub_21B4C8A28();
  sub_21B4C89D8();
  sub_21B4C8978();
  sub_21B4C8A08();
  sub_21B4C89E8();
  sub_21B4C89B8();
  sub_21B4C8988();
  sub_21B4C89F8();
  sub_21B4C89C8();
  sub_21B4C8958();
  sub_21B4C8A18();
  v1 = sub_21B3A7750(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2811FCDA8 = v1;
  return result;
}

uint64_t sub_21B3A8158(void *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_21B4C7408();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C7388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C73F8();
  result = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = result;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_21B4C73A8();

    v19 = sub_21B4C73C8();
    sub_21B4C7438();
    v31 = sub_21B4C9E48();
    result = sub_21B4CA148();
    if ((result & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      result = (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return result;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_21B4C7468();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == *MEMORY[0x277D85B00])
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] SUCCESS";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_21B36CF74(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_21B4C7368();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_21B365000, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x21CEF5710](v25, -1, -1);
      MEMORY[0x21CEF5710](v24, -1, -1);

      (*(v36 + 8))(v12, v37);
      result = (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void sub_21B3A85F0(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 10);
  sub_21B3A8650(&a2[4]);
  os_unfair_lock_unlock(a2 + 10);
}

uint64_t sub_21B3A8674(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, char a5)
{
  v64 = a3;
  v7 = sub_21B4C7408();
  v60 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = sub_21B4C7388();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v61 = &v54 - v17;
  v18 = sub_21B4C73F8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v26 = (&v54 - v25);
  if (*v23)
  {
    v56 = v7;
    v57 = v24;
    v58 = result;
    v59 = v23;
    v27 = v23[2];
    v55 = v23[1];
    if (!a2)
    {
      goto LABEL_7;
    }

    sub_21B4C73A8();

    v26 = sub_21B4C73C8();
    sub_21B4C7438();
    v12 = sub_21B4C9E48();
    result = sub_21B4CA148();
    if ((result & 1) == 0)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();

LABEL_21:

      (*(v62 + 8))(v16, v63);
      result = (*(v57 + 8))(v21, v58);
LABEL_31:
      v53 = v59;
      *v59 = 0;
      v53[1] = 0;
      v53[2] = 0;
      return result;
    }

    if ((a5 & 1) == 0)
    {

      if (!v64)
      {
        __break(1u);
LABEL_7:
        sub_21B4C73A8();

        v16 = sub_21B4C73C8();
        v21 = v61;
        sub_21B4C7438();
        v28 = sub_21B4C9E48();
        result = sub_21B4CA148();
        if ((result & 1) == 0)
        {
          swift_bridgeObjectRelease_n();

          (*(v62 + 8))(v21, v63);
LABEL_30:
          result = (*(v57 + 8))(v26, v58);
          goto LABEL_31;
        }

        v54 = v27;
        if ((a5 & 1) == 0)
        {

          v29 = v56;
          v30 = v60;
          if (!v64)
          {
            __break(1u);
            goto LABEL_11;
          }

          goto LABEL_26;
        }

        v29 = v56;
        v30 = v60;
        if (!(v64 >> 32))
        {
          if ((v64 & 0xFFFFF800) == 0xD800)
          {
LABEL_38:
            __break(1u);
            return result;
          }

          if (v64 >> 16 <= 0x10)
          {

            v64 = &v65;
LABEL_26:

            sub_21B4C7468();

            v43 = v28;
            if ((*(v30 + 88))(v12, v29) == *MEMORY[0x277D85B00])
            {
              v44 = 0;
              v45 = 0;
              v46 = "[Error] Interval already ended";
            }

            else
            {
              (*(v30 + 8))(v12, v29);
              v46 = "[identifier=%{name=identifier}s] EMPTY";
              v45 = 2;
              v44 = 1;
            }

            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v65 = v48;
            *v47 = v45;
            *(v47 + 1) = v44;
            *(v47 + 2) = 2080;
            v49 = v54;

            v50 = sub_21B36CF74(v55, v49, &v65);

            *(v47 + 4) = v50;
            v51 = v61;
            v52 = sub_21B4C7368();
            _os_signpost_emit_with_name_impl(&dword_21B365000, v16, v43, v52, v64, v46, v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x21CEF5710](v48, -1, -1);
            MEMORY[0x21CEF5710](v47, -1, -1);

            (*(v62 + 8))(v51, v63);
            goto LABEL_30;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_17:
      v54 = v27;

      sub_21B4C7468();

      v31 = v60;
      v32 = v56;
      v33 = (*(v60 + 88))(v10, v56);
      v34 = *MEMORY[0x277D85B00];
      LODWORD(v61) = v12;
      if (v33 == v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v10, v32);
        v37 = "[identifier=%{name=identifier}s] FAILURE";
        v36 = 2;
        v35 = 1;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = v36;
      *(v38 + 1) = v35;
      *(v38 + 2) = 2080;
      v40 = v54;

      v41 = sub_21B36CF74(v55, v40, &v65);

      *(v38 + 4) = v41;
      v42 = sub_21B4C7368();
      _os_signpost_emit_with_name_impl(&dword_21B365000, v26, v61, v42, v64, v37, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CEF5710](v39, -1, -1);
      MEMORY[0x21CEF5710](v38, -1, -1);

      goto LABEL_21;
    }

    if (v64 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v64 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v64 >> 16 <= 0x10)
      {

        v64 = &v65;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  return result;
}

void sub_21B3A8DBC(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 10);
  sub_21B3A8D98(&a2[4]);
  os_unfair_lock_unlock(a2 + 10);
}

uint64_t sub_21B3A8E2C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, char a5)
{
  v64 = a3;
  v7 = sub_21B4C7408();
  v60 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = sub_21B4C7388();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v61 = &v54 - v17;
  v18 = sub_21B4C73F8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v26 = (&v54 - v25);
  if (*v23)
  {
    v56 = v7;
    v57 = v24;
    v58 = result;
    v59 = v23;
    v27 = v23[2];
    v55 = v23[1];
    if (!a2)
    {
      goto LABEL_7;
    }

    sub_21B4C73A8();

    v26 = sub_21B4C73C8();
    sub_21B4C7438();
    v12 = sub_21B4C9E48();
    result = sub_21B4CA148();
    if ((result & 1) == 0)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();

LABEL_21:

      (*(v62 + 8))(v16, v63);
      result = (*(v57 + 8))(v21, v58);
LABEL_31:
      v53 = v59;
      *v59 = 0;
      v53[1] = 0;
      v53[2] = 0;
      return result;
    }

    if ((a5 & 1) == 0)
    {

      if (!v64)
      {
        __break(1u);
LABEL_7:
        sub_21B4C73A8();

        v16 = sub_21B4C73C8();
        v21 = v61;
        sub_21B4C7438();
        v28 = sub_21B4C9E48();
        result = sub_21B4CA148();
        if ((result & 1) == 0)
        {
          swift_bridgeObjectRelease_n();

          (*(v62 + 8))(v21, v63);
LABEL_30:
          result = (*(v57 + 8))(v26, v58);
          goto LABEL_31;
        }

        v54 = v27;
        if ((a5 & 1) == 0)
        {

          v29 = v56;
          v30 = v60;
          if (!v64)
          {
            __break(1u);
            goto LABEL_11;
          }

          goto LABEL_26;
        }

        v29 = v56;
        v30 = v60;
        if (!(v64 >> 32))
        {
          if ((v64 & 0xFFFFF800) == 0xD800)
          {
LABEL_38:
            __break(1u);
            return result;
          }

          if (v64 >> 16 <= 0x10)
          {

            v64 = &v65;
LABEL_26:

            sub_21B4C7468();

            v43 = v28;
            if ((*(v30 + 88))(v12, v29) == *MEMORY[0x277D85B00])
            {
              v44 = 0;
              v45 = 0;
              v46 = "[Error] Interval already ended";
            }

            else
            {
              (*(v30 + 8))(v12, v29);
              v46 = "[identifier=%{name=identifier}s] EMPTY";
              v45 = 2;
              v44 = 1;
            }

            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v65 = v48;
            *v47 = v45;
            *(v47 + 1) = v44;
            *(v47 + 2) = 2080;
            v49 = v54;

            v50 = sub_21B36CF74(v55, v49, &v65);

            *(v47 + 4) = v50;
            v51 = v61;
            v52 = sub_21B4C7368();
            _os_signpost_emit_with_name_impl(&dword_21B365000, v16, v43, v52, v64, v46, v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x21CEF5710](v48, -1, -1);
            MEMORY[0x21CEF5710](v47, -1, -1);

            (*(v62 + 8))(v51, v63);
            goto LABEL_30;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_17:
      v54 = v27;

      sub_21B4C7468();

      v31 = v60;
      v32 = v56;
      v33 = (*(v60 + 88))(v10, v56);
      v34 = *MEMORY[0x277D85B00];
      LODWORD(v61) = v12;
      if (v33 == v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v10, v32);
        v37 = "[identifier=%{name=identifier}s] FAILURE";
        v36 = 2;
        v35 = 1;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = v36;
      *(v38 + 1) = v35;
      *(v38 + 2) = 2080;
      v40 = v54;

      v41 = sub_21B36CF74(v55, v40, &v65);

      *(v38 + 4) = v41;
      v42 = sub_21B4C7368();
      _os_signpost_emit_with_name_impl(&dword_21B365000, v26, v61, v42, v64, v37, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CEF5710](v39, -1, -1);
      MEMORY[0x21CEF5710](v38, -1, -1);

      goto LABEL_21;
    }

    if (v64 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v64 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v64 >> 16 <= 0x10)
      {

        v64 = &v65;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  return result;
}

id Color.color.getter(uint64_t a1, char a2)
{
  if (!a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);
    v4 = sel_initWithRed_green_blue_alpha_;

    return [v3 v4];
  }

  if (a2 == 1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);
    v4 = sel_initWithCGColor_;
    v5 = a1;

    return [v3 v4];
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      v7 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    else
    {
      v7 = [objc_opt_self() systemBackgroundColor];
    }
  }

  else if (a1 == 2)
  {
    v7 = [objc_opt_self() tertiarySystemBackgroundColor];
  }

  else
  {
    v7 = [objc_opt_self() clearColor];
  }

  return v7;
}

uint64_t sub_21B3A970C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v17 = *a3;
  v14 = (*(a6 + 8))(a4, a1, &v17, a5, a6);
  (*(v11 + 8))(v13, a5);
  return v14;
}

uint64_t ArtworkModel.joeColor(contrasting:using:selecting:)(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);

  return sub_21B3A970C(a1, v8, a3, v3, v6, v7);
}

char *sub_21B3A98A4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  v5 = *(a2 + 64);
  if (v5 == 255)
  {
    return result;
  }

  v6 = Color.color.getter(*(a2 + 56), v5);
  sub_21B3AA190(v6, v83);
  if (v84)
  {

    return MEMORY[0x277D84F90];
  }

  v80 = v83[1];
  v81 = v83[0];
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = *(a2 + 112);
  v78 = *(a2 + 120);
  v11 = *(a2 + 128);
  v12 = MEMORY[0x277D84F90];
  if ((v3 & 2) != 0)
  {
    v13 = *(a2 + 80);
    if (v13 != 255)
    {
      v14 = Color.color.getter(*(a2 + 72), v13);
      v15 = [v6 CGColor];
      UISColorLuminance();
      v17 = v16;

      v18 = [v14 CGColor];
      UISColorLuminance();
      v20 = v19;

      if (v17 >= v20)
      {
        v21 = v17;
      }

      else
      {
        v21 = v20;
      }

      if (v17 >= v20)
      {
        v17 = v20;
      }

      v22 = v14;
      sub_21B3AA190(v22, v85);
      if (v86)
      {

        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        v23 = (v21 + 0.05) / (v17 + 0.05);
        v71 = v85[1];
        v74 = v85[0];
        v12 = sub_21B3AA250(0, 1, 1, MEMORY[0x277D84F90]);
        v25 = *(v12 + 2);
        v24 = *(v12 + 3);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v70 = sub_21B3AA250((v24 > 1), v25 + 1, 1, v12);
          v26 = v25 + 1;
          v12 = v70;
        }

        *(v12 + 2) = v26;
        v27 = &v12[48 * v25];
        *(v27 + 4) = v22;
        *(v27 + 40) = v74;
        *(v27 + 56) = v71;
        *(v27 + 9) = v23;
        v82 = v12;
      }
    }
  }

  if ((v3 & 4) != 0 && v8 != 255)
  {
    v28 = Color.color.getter(v7, v8);
    v29 = [v6 CGColor];
    UISColorLuminance();
    v31 = v30;

    v32 = [v28 CGColor];
    UISColorLuminance();
    v34 = v33;

    if (v31 >= v34)
    {
      v35 = v31;
    }

    else
    {
      v35 = v34;
    }

    if (v31 < v34)
    {
      v34 = v31;
    }

    v36 = v28;
    sub_21B3AA190(v36, v87);
    if (v88)
    {
    }

    else
    {
      v37 = v34 + 0.05;
      v72 = v87[1];
      v75 = v87[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_21B3AA250(0, *(v12 + 2) + 1, 1, v12);
      }

      v39 = *(v12 + 2);
      v38 = *(v12 + 3);
      if (v39 >= v38 >> 1)
      {
        v12 = sub_21B3AA250((v38 > 1), v39 + 1, 1, v12);
      }

      *(v12 + 2) = v39 + 1;
      v40 = &v12[48 * v39];
      *(v40 + 4) = v36;
      *(v40 + 40) = v75;
      *(v40 + 56) = v72;
      *(v40 + 9) = (v35 + 0.05) / v37;
      v82 = v12;
    }
  }

  if ((v3 & 8) != 0 && v10 != 255)
  {
    v41 = Color.color.getter(v9, v10);
    v42 = [v6 CGColor];
    UISColorLuminance();
    v44 = v43;

    v45 = [v41 CGColor];
    UISColorLuminance();
    v47 = v46;

    if (v44 >= v47)
    {
      v48 = v44;
    }

    else
    {
      v48 = v47;
    }

    if (v44 < v47)
    {
      v47 = v44;
    }

    v49 = v41;
    sub_21B3AA190(v49, v89);
    if (v90)
    {
    }

    else
    {
      v50 = v47 + 0.05;
      v73 = v89[1];
      v76 = v89[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_21B3AA250(0, *(v12 + 2) + 1, 1, v12);
      }

      v52 = *(v12 + 2);
      v51 = *(v12 + 3);
      if (v52 >= v51 >> 1)
      {
        v12 = sub_21B3AA250((v51 > 1), v52 + 1, 1, v12);
      }

      *(v12 + 2) = v52 + 1;
      v53 = &v12[48 * v52];
      *(v53 + 4) = v49;
      *(v53 + 40) = v76;
      *(v53 + 56) = v73;
      *(v53 + 9) = (v48 + 0.05) / v50;
      v82 = v12;
    }
  }

  if ((v3 & 0x10) == 0 || v11 == 255)
  {
LABEL_53:
    if (!*(v12 + 2))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v54 = Color.color.getter(v78, v11);
  v55 = [v6 CGColor];
  UISColorLuminance();
  v57 = v56;

  v58 = [v54 CGColor];
  UISColorLuminance();
  v60 = v59;

  if (v57 >= v60)
  {
    v61 = v57;
  }

  else
  {
    v61 = v60;
  }

  if (v57 < v60)
  {
    v60 = v57;
  }

  v62 = v54;
  sub_21B3AA190(v62, v91);
  if (v92)
  {

    goto LABEL_53;
  }

  v66 = v60 + 0.05;
  v77 = v91[1];
  v79 = v91[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_21B3AA250(0, *(v12 + 2) + 1, 1, v12);
  }

  v68 = *(v12 + 2);
  v67 = *(v12 + 3);
  if (v68 >= v67 >> 1)
  {
    v12 = sub_21B3AA250((v67 > 1), v68 + 1, 1, v12);
  }

  *(v12 + 2) = v68 + 1;
  v69 = &v12[48 * v68];
  *(v69 + 4) = v62;
  *(v69 + 40) = v79;
  *(v69 + 56) = v77;
  *(v69 + 9) = (v61 + 0.05) / v66;
  v82 = v12;
  if (!*(v12 + 2))
  {
    goto LABEL_55;
  }

LABEL_54:
  sub_21B3AA370(&v82);
LABEL_55:
  if (v3)
  {
    v63 = *(v82 + 2);
    v64 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v63 >= *(v64 + 3) >> 1)
    {
      v64 = sub_21B3AA250(isUniquelyReferenced_nonNull_native, v63 + 1, 1, v64);
      v82 = v64;
    }

    v94 = v81;
    v95 = v80;
    v93 = v6;
    v96 = 0;
    sub_21B3AA4DC(0, 0, 1, &v93);

    return v64;
  }

  else
  {

    return v82;
  }
}

void JoeColorClampBrightnessAlgorithm.joeColor(for:contrasting:selecting:)(uint64_t a1, void *a2, char *a3)
{
  v40 = *a3;
  v4 = sub_21B3A98A4(&v40, a1);
  v5 = v4;
  v6 = *(v4 + 2);
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = 0;
  v8 = v4 + 32;
  v39 = v4;
  v37 = v4 + 32;
  v38 = *(v4 + 2);
  while (1)
  {
    if (v7 >= *(v5 + 2))
    {
      __break(1u);
      return;
    }

    v9 = &v8[48 * v7];
    v11 = *(v9 + 1);
    v10 = *(v9 + 2);
    v12 = *(v9 + 3);
    v13 = *(v9 + 4);
    if (v12 <= 0.98 || v10 >= 0.5 && v12 > 0.98)
    {
      break;
    }

LABEL_31:
    if (++v7 == v6)
    {
      goto LABEL_32;
    }
  }

  v14 = *v9;
  v15 = [v14 CGColor];
  UISColorLuminance();
  v17 = v16;

  v18 = [a2 CGColor];
  UISColorLuminance();
  v20 = v19;

  v21 = v17 >= v20 ? v17 : v20;
  v22 = v17 >= v20 ? v20 : v17;
  v23 = (v21 + 0.05) / (v22 + 0.05);

  if (v23 < 4.5)
  {
    v24 = 0;
    v25 = v11 + -0.0277777778;
    if (v11 + -0.0277777778 > 0.127777778)
    {
      v25 = 0.127777778;
    }

    if (v11 > 0.183333333 || v11 < 0.127777778)
    {
      v27 = v11;
    }

    else
    {
      v27 = v25;
    }

    while (1)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v27 saturation:v10 brightness:*(&unk_282CB2BC8 + v24 + 32) alpha:v13];
      v29 = [v28 CGColor];
      UISColorLuminance();
      v31 = v30;

      v32 = [a2 CGColor];
      UISColorLuminance();
      v34 = v33;

      v35 = v31 >= v34 ? v31 : v34;
      v36 = v31 >= v34 ? v34 : v31;
      if ((v35 + 0.05) / (v36 + 0.05) >= 4.5)
      {
        break;
      }

      v24 += 8;
      if (v24 == 32)
      {

        v5 = v39;
        v8 = v37;
        v6 = v38;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_32:
  }
}

void sub_21B3AA190(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0xBFF0000000000000;
  v12[0] = 0xBFF0000000000000;
  v9 = 0xBFF0000000000000;
  v10 = 0xBFF0000000000000;
  v4 = [a1 getHue:v12 saturation:&v11 brightness:&v10 alpha:&v9];

  if (v4)
  {
    v6 = v11;
    v5 = v12[0];
    v8 = v9;
    v7 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v4 ^ 1;
}

char *sub_21B3AA250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21B3AA370(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B4BFE14(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_21B4CA578();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[48 * i + 72];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 2);
          v16 = *(v13 + 3);
          v17 = *(v13 - 8);
          *(v13 + 24) = *(v13 - 24);
          *(v13 + 40) = v17;
          *(v13 + 56) = *(v13 + 8);
          *(v13 - 3) = v14;
          *(v13 - 1) = v15;
          *v13 = v16;
          *(v13 + 2) = v11;
          v13 -= 48;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21B4C9968();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_21B42FF78(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_21B3AA4DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 48 * a3;
      v15 = (v9 + 32 + 48 * a2);
      if (result != v15 || result >= v15 + 48 * v14)
      {
        result = memmove(result, v15, 48 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    v19 = *a4;
    *v10 = *a4;
    *(v10 + 8) = *(a4 + 8);
    *(v10 + 24) = *(a4 + 24);
    *(v10 + 40) = *(a4 + 40);
    result = v19;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double UIColor.hsbaComponents.getter@<D0>(uint64_t a1@<X8>)
{
  sub_21B3AA190(v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_21B3AA668(__n128 a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (qword_281200450 != -1)
  {
    v10 = a3;
    v11 = a1;
    swift_once();
    a1 = v11;
    a3 = v10;
  }

  v13[0] = 0xD000000000000010;
  v13[1] = 0x800000021B4E2B20;
  v14 = qword_281200458;
  LOBYTE(v15[0]) = 1;
  *&v15[1] = a1;
  v16 = 0;
  v17 = a3;
  v18 = 0;
  v19 = 0;
  v6 = qword_2811FFFF8;
  v7 = qword_281200458;
  v8 = v7;
  if (v6 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x28223BE20](v7);
  sub_21B4C7198();

  result = sub_21B3793EC(v13);
  *a5 = v12;
  return result;
}

uint64_t ExplicitContentPresenter.symbol.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  sub_21B3AA934((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 20));
  if (v3)
  {
    return 11768802;
  }

  else
  {
    return 3028656112;
  }
}

void sub_21B3AA934(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (v3 != 2)
  {
    v12 = v3 & 1;
    goto LABEL_14;
  }

  v5 = [objc_opt_self() sharedInstance];
  if (qword_2811FCAB0 != -1)
  {
    swift_once();
  }

  v6 = [v5 syncStringForKey_];

  if (v6)
  {
    v7 = sub_21B4C9708();
    v9 = v8;

    if (v7 == 0x6165726F6BLL && v9 == 0xE500000000000000)
    {
    }

    else
    {
      v11 = sub_21B4CA608();

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v12 = 1;
    *a1 = 1;
    goto LABEL_14;
  }

LABEL_10:
  v12 = 0;
  *a1 = 0;
LABEL_14:
  *a2 = v12;
}

unint64_t sub_21B3AAA84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B4D6A40;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x800000021B4E0BB0;
  *(inited + 48) = 1;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000021B4E0BE0;
  v1 = sub_21B4C5CE8();
  v10 = v1;
  v2 = sub_21B3776D4();
  v11 = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D3D3B8], v1);
  v5 = sub_21B4C5A38();
  __swift_destroy_boxed_opaque_existential_1(v9);
  *(inited + 72) = v5 & 1;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000021B4E0C00;
  *(inited + 96) = 1;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x800000021B4E0C20;
  *(inited + 120) = sub_21B4C5CD8() & 1;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x800000021B4E0C40;
  *(inited + 144) = 1;
  strcpy((inited + 152), "supportsGingko");
  *(inited + 167) = -18;
  *(inited + 168) = 1;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000021B4E0C60;
  *(inited + 192) = 1;
  *(inited + 200) = 0x7374726F70707573;
  *(inited + 208) = 0xEF73746948706F54;
  *(inited + 216) = sub_21B4C5C98() & 1;
  *(inited + 224) = 0xD000000000000026;
  *(inited + 232) = 0x800000021B4E0C80;
  *(inited + 240) = 1;
  *(inited + 248) = 0xD00000000000001FLL;
  *(inited + 256) = 0x800000021B4E0CB0;
  *(inited + 264) = 1;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x800000021B4E0CD0;
  *(inited + 288) = 1;
  *(inited + 296) = 0xD00000000000001ALL;
  *(inited + 304) = 0x800000021B4E0CF0;
  *(inited + 312) = 1;
  *(inited + 320) = 0xD000000000000025;
  *(inited + 328) = 0x800000021B4E0D10;
  *(inited + 336) = 1;
  *(inited + 344) = 0xD000000000000012;
  *(inited + 352) = 0x800000021B4E0D40;
  *(inited + 360) = [objc_opt_self() supportsShowLockup];
  strcpy((inited + 368), "PandoChapters");
  *(inited + 382) = -4864;
  *(inited + 384) = sub_21B4C5CB8() & 1;
  *(inited + 392) = 0x6E694C6F646E6150;
  *(inited + 400) = 0xEA0000000000736BLL;
  *(inited + 408) = sub_21B4C5CA8() & 1;
  *(inited + 416) = 0x6E694C6F646E6150;
  *(inited + 424) = 0xEF6775626544736BLL;
  *(inited + 432) = sub_21B4C5CC8() & 1;
  *(inited + 440) = 0xD000000000000016;
  *(inited + 448) = 0x800000021B4E0D60;
  v10 = v1;
  v11 = v2;
  v6 = __swift_allocate_boxed_opaque_existential_1(v9);
  v4(v6, *MEMORY[0x277D3D3C8], v1);
  LOBYTE(v1) = sub_21B4C5A38();
  __swift_destroy_boxed_opaque_existential_1(v9);
  *(inited + 456) = v1 & 1;
  v7 = sub_21B3AAE3C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D28);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_21B3AAE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F30);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B36CEF8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21B3AAFE0()
{
  if ([objc_opt_self() isRunningOnVisionOS])
  {
    return 0x447974696C616572;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 6578544;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t static AssetCaches.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812006B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssetCaches();
  v3 = __swift_project_value_buffer(v2, qword_281200258);

  return sub_21B36ED6C(v3, a1);
}

uint64_t AssetCaches.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for UnownedImageIssueIdentifier()
{
  result = qword_2811FE410;
  if (!qword_2811FE410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B3AB1D4()
{
  result = sub_21B4C5748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t UnownedImageIssueIdentifier.init(directory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C5748();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_21B3AB2D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTPodcastEpisodeLimit(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B3AB318()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_21B3AB434;
  }

  else
  {

    v2 = sub_21B3AB648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3AB434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B3AB4CC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21B3AB5E0;
  }

  else
  {
    v2 = sub_21B3AB6D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3AB5E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B3AB648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B3AB7D4()
{
  v1 = *(type metadata accessor for UnownedImageIssueIdentifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_21B4C6998();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = sub_21B4C5748();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_21B3AB92C()
{
  v1 = *(type metadata accessor for UnownedImageIssueIdentifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21B4C5748();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21B3ABA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5748();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B3ABA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5748();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B3ABAEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B3ABB0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_21B3ABB68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21B3ABBD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B4C9708();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B3ABC94()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3ABCCC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ABD04()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ABD44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21B3ABD7C()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_21B3ABDC4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21B3ABE04()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3ABE3C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21B3ABE84()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ABEBC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3ABEF8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ABF34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3ABF6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3ABFAC()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21B3ABFF8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AC090()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_21B3AC0D0()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21B3AC120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AssetCaches();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21B3AC238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AssetCaches();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21B3AC3E0()
{
  v1 = sub_21B4C5888();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 32) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_21B3AC4AC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AC4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21B3AC5BC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AC600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B3AC650()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AC688()
{
  v1 = sub_21B4C64F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21B3AC724()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for EffectsArtworkProcessingStep() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_21B4C64F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7(v0 + v3, v5);
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[11], v1);

  v7(v0 + v8, v5);

  return swift_deallocObject();
}

uint64_t sub_21B3AC8AC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AC8E4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_21B3AC92C()
{
  v1 = sub_21B4C64F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21B3ACA18(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AssetCaches();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21B3ACAC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AssetCaches();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B3ACB68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  sub_21B36D4F4(*(v0 + v4), *(v0 + v4 + 8));
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21B3ACCD4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3ACD0C()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3ACD48()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ACD90()
{
  v1 = sub_21B4C67C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21B3ACE58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3ACEA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B4C61A8();
  *a1 = v3;
  return result;
}

void sub_21B3ACEE4(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  os_unfair_lock_lock(*a2 + 5);
  LOBYTE(v3[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v3 + 5);
}

uint64_t sub_21B3AD014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InteractionContext.Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21B3AD0CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InteractionContext.Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21B3AD188()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3AD1C0()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD20C()
{
  sub_21B4C7628();

  return swift_getWitnessTable();
}

uint64_t sub_21B3AD254()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD28C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21B3AD364()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21B3AD3E4()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD41C()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD454()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21B3AD5D8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD614()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD654()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21B3AD69C()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD6DC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD714()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD760()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD7A8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD7F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B3AD840()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD878()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD8B8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AD8F0()
{
  v1 = sub_21B4C5748();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21B3ADA08@<X0>(void *a1@<X8>)
{
  result = sub_21B4C98C8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

__n128 sub_21B3ADA60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21B3ADA78()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ADAB4()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3ADAEC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3ADB34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21B3ADB6C()
{
  v1 = *(type metadata accessor for JSPackageLoadingState() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for JSPackageLocation();
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 == 1)
    {
      v11 = sub_21B4C5748();
    }

    else
    {
      if (v10)
      {
LABEL_23:

        goto LABEL_26;
      }

      v11 = sub_21B4C75F8();
    }

    (*(*(v11 - 8) + 8))(v0 + v2, v11);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    __swift_destroy_boxed_opaque_existential_1(v3 + 40);
    v7 = type metadata accessor for JSPackage();
    v8 = *(v7 + 24);
    type metadata accessor for JSPackageSourceLocation();
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 1)
    {
      if (v9 == 2)
      {
LABEL_17:
        v12 = sub_21B4C75F8();
        goto LABEL_18;
      }

      if (v9 != 3)
      {
        goto LABEL_19;
      }
    }

    else if (v9)
    {
      if (v9 != 1)
      {
LABEL_19:
        v13 = *(v7 + 36);
        v14 = sub_21B4C5858();
        v15 = *(v14 - 8);
        if (!(*(v15 + 48))(v3 + v13, 1, v14))
        {
          (*(v15 + 8))(v3 + v13, v14);
        }

        goto LABEL_26;
      }

      goto LABEL_17;
    }

    v12 = sub_21B4C5748();
LABEL_18:
    (*(*(v12 - 8) + 8))(v3 + v8, v12);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_26;
  }

  type metadata accessor for JSPackageLocation();
  v5 = swift_getEnumCaseMultiPayload();
  if (v5 == 1)
  {
    v6 = sub_21B4C5748();
  }

  else
  {
    if (v5)
    {
      goto LABEL_26;
    }

    v6 = sub_21B4C75F8();
  }

  (*(*(v6 - 8) + 8))(v0 + v2, v6);
LABEL_26:

  return swift_deallocObject();
}

uint64_t sub_21B3ADE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 11);
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a1 + 11);
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21B3ADF28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 11) = a2 + 3;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B3ADFD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B3AE01C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_21B4C85C8();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21B3AE15C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B3AE19C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3AE1D4()
{
  v1 = sub_21B4C9208();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_21B3AE26C@<X0>(void *a1@<X8>)
{
  result = sub_21B474040();
  *a1 = result;
  return result;
}

void sub_21B3AE298(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide);
  *(*a2 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide) = *a1;
  v3 = v2;
}

uint64_t sub_21B3AE2E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88168);
  sub_21B4C7AE8();
  sub_21B47769C();
  return swift_getWitnessTable();
}

uint64_t sub_21B3AE360()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AE3A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21B3AE3D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B3AE418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B4C8D98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21B3AE478@<X0>(void *a1@<X8>)
{
  result = sub_21B4C8D18();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_21B3AE4DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderState.PrimaryDataState(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B3AE548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderState.PrimaryDataState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B3AE5D0()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AE60C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B3AE650()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3AE6A0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3AE6D8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AE728@<X0>(void *a1@<X8>)
{
  sub_21B48DB2C();
  result = sub_21B4C7BC8();
  *a1 = v3;
  return result;
}

uint64_t sub_21B3AE780()
{
  sub_21B4C8158();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21B4C7D58();
  swift_getOpaqueTypeMetadata2();
  sub_21B4C7D58();
  sub_21B4C7D58();
  sub_21B4C80E8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B3AEA34()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for AsyncSelectionConfirmingPicker();
  v16 = *(*(v2 - 1) + 80);
  v3 = (v16 + 72) & ~v16;
  v15 = *(*(v2 - 1) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + v3;

  v7 = sub_21B4C81A8();
  v8 = *(v4 + 8);
  v8(v0 + v3 + *(v7 + 32), v1);

  v8(v0 + v3 + v2[16], v1);
  sub_21B4C8138();

  v9 = v0 + v3 + v2[17];
  v10 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 60), v1);
    v8(v9 + *(v10 + 64), v1);
  }

  v11 = (v3 + v15 + v5) & ~v5;
  sub_21B4CA188();
  sub_21B4C8138();

  v12 = v2[22];
  v13 = sub_21B4C7988();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  v8(v0 + v11, v1);
  v8(v0 + ((v17 + v5 + v11) & ~v5), v1);
  return swift_deallocObject();
}

uint64_t sub_21B3AEDD4()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for AsyncSelectionConfirmingPicker();
  v11 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v11 + 72) & ~v11);

  v4 = sub_21B4C81A8();
  v5 = *(*(v1 - 8) + 8);
  v5(v3 + *(v4 + 32), v1);

  v5(v3 + v2[16], v1);
  sub_21B4C8138();

  v6 = v3 + v2[17];
  v7 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v5(v6 + *(v7 + 60), v1);
    v5(v6 + *(v7 + 64), v1);
  }

  sub_21B4CA188();
  sub_21B4C8138();

  v8 = v2[22];
  v9 = sub_21B4C7988();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_21B3AF11C()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AF1BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88740);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21B3AF278(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88740);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B3AF370()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88698);
  sub_21B3F1314(&qword_27CD886B0, &qword_27CD88698);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B3AF4B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B4C7B58();
  *a1 = result;
  return result;
}

uint64_t sub_21B3AF508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B3AF57C()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AF5BC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AF6B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_21B3AF780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B3AF830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21B3AF8F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B3AF9AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21B4AC830(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_21B4ABCB8(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_21B3AFA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C7EE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21B3AFB04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21B4C7EE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21B3AFC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88C58);
  sub_21B4C7AE8();
  sub_21B4ADE7C();
  return swift_getWitnessTable();
}

uint64_t sub_21B3AFC84()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AFCC4()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AFCFC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AFD4C()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AFE08()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3AFE50()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3AFEA0()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AFEE0()
{

  return swift_deallocObject();
}

uint64_t sub_21B3AFF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B4C8E08();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21B4C8FE8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B3B0044(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_21B4C8E08();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21B4C8FE8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B3B0168()
{
  swift_unknownObjectRelease();

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B3B01E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21B3B0220()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B3B0260()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B3B02A8()
{

  return swift_deallocObject();
}

uint64_t sub_21B3B02E0()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3B0318()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B3B0374()
{

  return swift_deallocObject();
}

uint64_t sub_21B3B03AC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3B03EC()
{

  return swift_deallocObject();
}

uint64_t sub_21B3B0460()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_21B3B0524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_objectGraph;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21B3B0584()
{

  return swift_deallocObject();
}

void __IMAccessibilityValidateInstanceMethodArguments(objc_method *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a2;
  v13 = a3;
  if (method_getNumberOfArguments(a1) - 2 != a4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Argument count is different for method: -[%@ %@]. Actual: %d, Stated: %d", v12, v13, a4, method_getNumberOfArguments(a1)];
  }

  v24 = &a9;
  if (a4 >= 1)
  {
    v14 = 2;
    do
    {
      v15 = v24++;
      v16 = *v15;
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v15];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v17];

      v19 = method_copyArgumentType(a1, v14);
      v20 = v19;
      if (v16)
      {
        v21 = v19 == 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = v21 || v18 == 0;
      if (v22 || strcmp(v16, v19) && strcmp([v18 UTF8String], v20))
      {
        v23 = "_";
        if (v20)
        {
          v23 = v20;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"Argument type is different for method: -[%@ %@]. Actual: '%s', Stated: '%s'", v12, v13, v23, v16];
      }

      free(v20);

      ++v14;
      LODWORD(a4) = a4 - 1;
    }

    while (a4);
  }
}

Class IMAccessibilityInstallSafeCategory(NSString *a1)
{
  result = NSClassFromString(a1);
  if (result)
  {

    return [(objc_class *)result performSelector:sel__initializeSafeCategory];
  }

  return result;
}

void sub_21B3B42DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B3B4798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B3B6C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B3B6E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_21B3B78F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B3B7AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B3BC4DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_21B3BDF30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_21B3C01D8(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x21B3C01B4);
}

void sub_21B3C02AC(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x21B3C0288);
}

void sub_21B3C2C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21B3C3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void IMEnsureCanInitiatePlaybackInBackground()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = *MEMORY[0x277D26B20];
  v8 = 0;
  v4 = [v2 setAttribute:v1 forKey:v3 error:&v8];
  v5 = v8;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v1;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_ERROR, "Error temporarily blessing %@ for playback initialization. %@", buf, 0x16u);
    }
  }
}

void IMRegisterAVSystemControllerNotifications(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = *MEMORY[0x277D26DD0];
  v8 = 0;
  v4 = [v2 setAttribute:v1 forKey:v3 error:&v8];
  v5 = v8;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v1;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_ERROR, "Error registering for notifications: %@. %@", buf, 0x16u);
    }
  }
}

void sub_21B3C7148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGImageSource *CGImageCreateWithURL(const __CFURL *a1)
{
  result = CGImageSourceCreateWithURL(a1, 0);
  if (result)
  {
    v2 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v2);
    return ImageAtIndex;
  }

  return result;
}

CGContext *CGBitmapContextCreateWithImage(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v5 = DeviceRGB;
  v6 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, DeviceRGB, 1u);
  CGColorSpaceRelease(v5);
  if (v6)
  {
    v8.size.width = Width;
    v8.size.height = Height;
    v8.origin.x = 0.0;
    v8.origin.y = 0.0;
    CGContextDrawImage(v6, v8, a1);
  }

  return v6;
}

CGImageRef CGImageCreateFromImageAdjustingHSL(CGImage *a1, float a2, float a3, float a4)
{
  v4 = a2 / 360.0;
  v5 = a3 / 100.0;
  v6 = a4 / 100.0;
  if (v4 >= 0.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1.0;
  }

  v8 = v7 == 0.0;
  if (v7 == 1.0)
  {
    v8 = 1;
  }

  if (v6 != 0.0 || v5 != 0.0 || !v8)
  {
    result = CGBitmapContextCreateWithImage(a1);
    if (!result)
    {
      return result;
    }

    v10 = result;
    Data = CGBitmapContextGetData(result);
    Width = CGBitmapContextGetWidth(v10);
    Height = CGBitmapContextGetHeight(v10);
    if (!Height)
    {
LABEL_87:
      Image = CGBitmapContextCreateImage(v10);
      CFRelease(v10);
      return Image;
    }

    v14 = 0;
    while (!Width)
    {
LABEL_86:
      ++v14;
      Data += Width;
      if (v14 == Height)
      {
        goto LABEL_87;
      }
    }

    v15 = Data;
    v16 = Width;
    while (1)
    {
      v17 = *v15;
      v18 = *v15;
      v19 = v18 / 255.0;
      v20 = BYTE1(*v15) / 255.0;
      v21 = BYTE2(*v15);
      v22 = v21 / 255.0;
      if (v19 < v20 || v19 < v22)
      {
        if (v20 >= v19)
        {
          v24 = v18 / 255.0;
        }

        else
        {
          v24 = BYTE1(v17) / 255.0;
        }

        if (v19 >= v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = v18 / 255.0;
        }

        v26 = v20 < v19 || v20 < v22;
        if (v26)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        if (v26)
        {
          v28 = v22;
        }

        else
        {
          v28 = BYTE1(v17) / 255.0;
        }
      }

      else
      {
        if (v20 >= v22)
        {
          v27 = v21 / 255.0;
        }

        else
        {
          v27 = BYTE1(v17) / 255.0;
        }

        v28 = v18 / 255.0;
      }

      v29 = 0.0;
      if (v28 <= 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v30 = v28 - v27;
        v31 = (v28 - v27) / v28;
        if (v31 != 0.0)
        {
          v32 = (v28 - v20) / v30;
          v33 = (v28 - v22) / v30;
          if (v28 == v19)
          {
            if (v27 == v20)
            {
              v29 = v33 + 5.0;
            }

            else
            {
              v29 = 1.0 - v32;
            }
          }

          else
          {
            v47 = (v28 - v19) / v30;
            if (v28 == v20)
            {
              if (v27 == v22)
              {
                v29 = v47 + 1.0;
              }

              else
              {
                v29 = 3.0 - v33;
              }
            }

            else if (v27 == v19)
            {
              v29 = v32 + 3.0;
            }

            else
            {
              v29 = 5.0 - v47;
            }
          }
        }
      }

      v34 = v7 + (v29 / 6.0);
      if (v34 > 1.0)
      {
        v34 = v34 + -1.0;
      }

      v35 = v31 + ((1.0 - v31) * v5);
      if (v5 <= 0.0)
      {
        v35 = v31;
      }

      v36 = (v5 + 1.0) * v31;
      if (v5 >= 0.0)
      {
        v36 = v35;
      }

      v37 = v28 + ((1.0 - v28) * v6);
      if (v6 <= 0.0)
      {
        v37 = v28;
      }

      v38 = (v6 + 1.0) * v28;
      if (v6 >= 0.0)
      {
        v38 = v37;
      }

      if (v34 == 1.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v34 * 6.0;
      }

      v40 = v39;
      v41 = v39 - v39;
      v42 = (1.0 - v36) * v38;
      v43 = (1.0 - (v36 * v41)) * v38;
      v44 = (1.0 - (v36 * (1.0 - v41))) * v38;
      if (v40 <= 2)
      {
        if (v40)
        {
          if (v40 != 1)
          {
            v45 = v42;
            v46 = v38;
            if (v40 != 2)
            {
              goto LABEL_76;
            }

            goto LABEL_75;
          }

          v45 = v43;
          v46 = v38;
        }

        else
        {
          v45 = v38;
          v46 = v44;
        }

        v44 = v42;
LABEL_75:
        v19 = v45;
        v20 = v46;
        v22 = v44;
        goto LABEL_76;
      }

      if (v40 == 3)
      {
        break;
      }

      if (v40 == 4)
      {
        v45 = v44;
        v46 = v42;
        goto LABEL_74;
      }

      if (v40 == 5)
      {
        v45 = v38;
        v46 = v42;
        v44 = v43;
        goto LABEL_75;
      }

LABEL_76:
      *v15++ = v17 & 0xFF000000 | (v19 * 255.0) | ((v20 * 255.0) << 8) | ((v22 * 255.0) << 16);
      if (!--v16)
      {
        goto LABEL_86;
      }
    }

    v45 = v42;
    v46 = v43;
LABEL_74:
    v44 = v38;
    goto LABEL_75;
  }

  return CGImageRetain(a1);
}

uint64_t CGImageSourcePixelSize(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  if (v1)
  {
    v2 = v1;
    Value = CFDictionaryGetValue(v1, *MEMORY[0x277CD3450]);
    v4 = CFDictionaryGetValue(v2, *MEMORY[0x277CD3448]);
    v8 = 0uLL;
    if (Value)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = v4;
      CFNumberGetValue(Value, kCFNumberNSIntegerType, &v8);
      CFNumberGetValue(v6, kCFNumberNSIntegerType, &v8 + 8);
    }

    CFRelease(v2);
  }

  else
  {
    return CGPixelSizeZero;
  }

  return v8;
}

void sub_21B3CAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __IMAdjustToScale_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = v1;

  IMAdjustToScale___s = v2;
}

id MTImageDownloaderArtworkDidLoadCacheKeys(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"keys"];

  return v2;
}

id MTImageDownloaderArtworkDidLoadEntityUuids(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"uuids"];

  return v2;
}

void sub_21B3D5574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B3D581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MTImageDownloadErrorWithUnderlyingError(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a2;
  v8 = [v6 dictionary];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"An underlying %@ error occurred", v7];

  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA068]];
  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.podcasts.MTImageDownloader" code:a1 userInfo:v8];

  return v10;
}

id MTImageDownloadErrorWithCode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = a2;
    v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];
  }

  else
  {
    v12 = @"An unknown error occurred";
  }

  v13 = [MEMORY[0x277CBEB38] dictionary];
  [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA068]];
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.podcasts.MTImageDownloader" code:a1 userInfo:v13];

  return v14;
}

void sub_21B3D73A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_21B3D7F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B3D9A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B3D9D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B3DA028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B3DA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B3DBE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getkCTFontDescriptorTextStyleRegularSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontDescriptorTextStyleRegular");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782BE9E0;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontDescriptorTextStyleEmphasized");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *_MTMPUFontTextStyleGetDescriptionAndCustomStyleStatus(uint64_t a1, char *a2)
{
  switch(a1)
  {
    case 0:
      v2 = 0;
      result = @"body";
      break;
    case 1:
      v2 = 0;
      result = @"headline";
      break;
    case 2:
      v2 = 0;
      result = @"subheadline";
      break;
    case 3:
      v2 = 0;
      result = @"footnote";
      break;
    case 4:
      v2 = 0;
      result = @"caption-1";
      break;
    case 5:
      v2 = 0;
      result = @"caption-2";
      break;
    case 6:
      v2 = 0;
      result = @"title-0";
      break;
    case 7:
      v2 = 0;
      result = @"title-1";
      break;
    case 8:
      v2 = 0;
      result = @"title-2";
      break;
    case 9:
      v2 = 0;
      result = @"title-3";
      break;
    case 10:
      v2 = 0;
      result = @"headline-1";
      break;
    case 11:
      v2 = 0;
      result = @"headline-2";
      break;
    case 12:
      v2 = 0;
      result = @"subheadline-1";
      break;
    case 13:
      v2 = 0;
      result = @"subheadline-2";
      break;
    case 14:
      v2 = 0;
      result = @"callout";
      break;
    case 15:
      v2 = 0;
      result = @"footnote-1";
      break;
    case 16:
      v2 = 0;
      result = @"footnote-2";
      break;
    case 17:
      v2 = 1;
      result = @"subheadline-3";
      break;
    case 18:
      v2 = 1;
      result = @"now-playing-title-1";
      break;
    case 19:
      v2 = 0;
      result = @"music-title-2";
      break;
    case 20:
      v2 = 0;
      result = @"music-title-2-multiline";
      break;
    case 21:
      v2 = 1;
      result = @"page-header";
      break;
    case 22:
      v2 = 1;
      result = @"page-header-large";
      break;
    case 23:
      v2 = 1;
      result = @"page-header-mid-large";
      break;
    case 24:
      v2 = 1;
      result = @"page-header-small";
      break;
    case 25:
      v2 = 1;
      result = @"page-header-compact-supertitle";
      break;
    case 26:
      v2 = 1;
      result = @"page-header-compact-subtitle";
      break;
    case 27:
      v2 = 1;
      result = @"page-header-regular-subtitle";
      break;
    default:
      v4 = a1 == 1000;
      if (a1 == 1000)
      {
        result = @"system-font";
      }

      else
      {
        result = 0;
      }

      v2 = v4;
      break;
  }

  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

__CFString *MTMPUFontWeightGetDescription(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_2782BEA68[a1];
  }
}

__CFString *MTMPUFontLeadingAdjustmentGetDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2782BEAB0[a1];
  }
}

void *__getkCTFontDescriptorTextStyleHeavySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleHeavy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleHeavySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782BEA50;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!CoreTextLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkCTFontDescriptorTextStyleBoldSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleBold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleBoldSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleSemiboldSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleSemibold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleSemiboldSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleMediumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleMedium");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleMediumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleRegularSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleRegular");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleLightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleLight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleLightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleUltraLightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleUltraLight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleUltraLightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleThinSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleThin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleThinSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double MTMPUFloatGetSafeScaleForValue(double result)
{
  if (vabdd_f64(0.0, result) < 0.00000011920929)
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 scale];
    v3 = v2;

    return v3;
  }

  return result;
}

CGFloat MTMPURectByApplyingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (primaryLayoutDirection() == 1)
  {
    v20.origin.x = a5;
    v20.origin.y = a6;
    v20.size.width = a7;
    v20.size.height = a8;
    MaxX = CGRectGetMaxX(v20);
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v17 = MaxX - CGRectGetMinX(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    v18 = v17 - CGRectGetWidth(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetMinY(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetHeight(v25);
    return v18;
  }

  return a1;
}

uint64_t primaryLayoutDirection()
{
  v0 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 userInterfaceLayoutDirection];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CGFloat MTMPURectByRemovingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (primaryLayoutDirection() == 1)
  {
    v19.origin.x = a5;
    v19.origin.y = a6;
    v19.size.width = a7;
    v19.size.height = a8;
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    v17 = MaxX - CGRectGetMaxX(v20);
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    CGRectGetMinY(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetWidth(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetHeight(v23);
    return v17;
  }

  return a1;
}

CGFloat MTMPUEdgeInsetsRectInsets(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18 = a6 - a2;
  CGRectGetMaxY(*&a1);
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetMaxY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMaxX(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMaxX(v21);
  return v18;
}

void sub_21B3E09E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::insert(__n128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1->n128_u64[1];
  v7 = a1[1].n128_u64[0];
  if (v6 >= v7)
  {
    v11 = a1->n128_u64[0];
    v12 = ((v6 - a1->n128_u64[0]) >> 5) + 1;
    if (v12 >> 59)
    {
      std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v7 - v11;
    v15 = v14 >> 4;
    if (v14 >> 4 <= v12)
    {
      v15 = ((v6 - a1->n128_u64[0]) >> 5) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 5;
    v19[4] = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>>(a1, v16);
    }

    v19[0] = 0;
    v19[1] = (32 * v17);
    v19[2] = (32 * v17);
    v19[3] = 0;
    std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::emplace_back<MTMPU::LayoutInterpolator::EntriesContainer const&>(v19, a3);
    v4 = std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__swap_out_circular_buffer(a1, v19, v4);
    std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::~__split_buffer(v19);
  }

  else if (a2 == v6)
  {
    std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__construct_one_at_end[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer const&>(a1, a3);
  }

  else
  {
    std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__move_range(a1, a2, v6, a2 + 32);
    v8 = a1->n128_u64[1] <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    if (v4 != (a3 + v9))
    {
      std::vector<MTMPU::LayoutInterpolator::Entry>::__assign_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(v4, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 4);
    }

    v4[3] = *(v10 + 24);
  }

  return v4;
}

void sub_21B3E0B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_21B3E0E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double MTMPULayoutInterpolatorScaledValueFromTraitEnvironment(void *a1, void *a2, double a3)
{
  v5 = a2;
  [a1 valueForReferenceMetric:a3];
  v7 = v6;
  v8 = [v5 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = MTMPUFloatRoundForScale(v7, v10);
  return v11;
}

void sub_21B3E1308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21B3E1508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 *std::vector<MTMPU::Point3D>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::Point3D>>(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    std::__split_buffer<MTMPU::Point3D>::emplace_back<MTMPU::Point3D const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    v6[1].n128_u64[0] = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = (__src + 24);
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1].n128_i8[8];
      v10 = *(v6 - 24);
      v6[1].n128_u64[0] = v6[-1].n128_u64[1];
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_21B3E1718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__assign_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer*,MTMPU::LayoutInterpolator::EntriesContainer*>(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer *,MTMPU::LayoutInterpolator::EntriesContainer *,MTMPU::LayoutInterpolator::EntriesContainer *>(&v20, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v15 - 24) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer *,MTMPU::LayoutInterpolator::EntriesContainer *,MTMPU::LayoutInterpolator::EntriesContainer *>(&v19, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*,MTMPU::LayoutInterpolator::EntriesContainer*,MTMPU::LayoutInterpolator::EntriesContainer*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>>(a1, a2);
  }

  std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*,MTMPU::LayoutInterpolator::EntriesContainer*,MTMPU::LayoutInterpolator::EntriesContainer*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<MTMPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v4[3] = v6[3];
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<MTMPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTMPU::LayoutInterpolator::Entry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21B3E1AFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTMPU::LayoutInterpolator::Entry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::Entry>>(a1, a2);
  }

  std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::Entry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2782BD8C0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer *,MTMPU::LayoutInterpolator::EntriesContainer *,MTMPU::LayoutInterpolator::EntriesContainer *>(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<MTMPU::LayoutInterpolator::Entry>::__assign_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
      }

      a4[3] = *(v5 + 24);
      v5 += 32;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<MTMPU::LayoutInterpolator::Entry>::__assign_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTMPU::LayoutInterpolator::Entry>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__construct_one_at_end[abi:ne200100]<MTMPU::LayoutInterpolator::EntriesContainer const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  std::vector<MTMPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 32;
  return result;
}

double std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      result = *(v6 + 24);
      *(v7 + 24) = result;
      v6 += 32;
      v7 += 32;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      std::vector<MTMPU::LayoutInterpolator::Entry>::__move_assign(v4 + v9 - 32, (v5 + v9 - 32));
      result = *(v5 + v9 - 8);
      *(v4 + v9 - 8) = result;
      v9 -= 32;
    }

    while (v10 != v9);
  }

  return result;
}

double std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::emplace_back<MTMPU::LayoutInterpolator::EntriesContainer const&>(__n128 **a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4 - *a1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>>(a1[4], v9);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = &v6[-2 * (((v7 >> 5) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        std::vector<MTMPU::LayoutInterpolator::Entry>::__move_assign(v5, v6);
        v5[1].n128_u64[1] = v6[1].n128_u64[1];
        v6 += 2;
        v5 += 2;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[2 * v8];
    a1[2] = v5;
  }

  v5->n128_u64[0] = 0;
  v5->n128_u64[1] = 0;
  v5[1].n128_u64[0] = 0;
  std::vector<MTMPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  result = *(a2 + 24);
  v5[1].n128_f64[1] = result;
  a1[2] += 2;
  return result;
}

uint64_t std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__swap_out_circular_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

__n128 std::vector<MTMPU::LayoutInterpolator::Entry>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = *(v6 + 24);
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTMPU::LayoutInterpolator::EntriesContainer>,MTMPU::LayoutInterpolator::EntriesContainer*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTMPU::LayoutInterpolator::EntriesContainer>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

__n128 std::__split_buffer<MTMPU::Point3D>::emplace_back<MTMPU::Point3D const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::Point3D>>(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = (v5 + 24 * v7);
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::Point3D>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(__int128 *result, double *a2, double *a3, double *a4)
{
  v4 = a4[1];
  v5 = (v4 - a2[1]) * (v4 - a2[1]) + (*a4 - *a2) * (*a4 - *a2);
  v6 = (v4 - a3[1]) * (v4 - a3[1]) + (*a4 - *a3) * (*a4 - *a3);
  if (v5 >= (v4 - *(result + 1)) * (v4 - *(result + 1)) + (*a4 - *result) * (*a4 - *result))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      v13 = a4[1];
      if ((v13 - a2[1]) * (v13 - a2[1]) + (*a4 - *a2) * (*a4 - *a2) < (v13 - *(result + 1)) * (v13 - *(result + 1)) + (*a4 - *result) * (*a4 - *result))
      {
        v14 = *(result + 2);
        v15 = *result;
        v16 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v16;
        *a2 = v15;
        *(a2 + 2) = v14;
      }
    }
  }

  else
  {
    if (v6 >= v5)
    {
      v17 = *(result + 2);
      v18 = *result;
      v19 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v19;
      *a2 = v18;
      *(a2 + 2) = v17;
      v20 = a4[1];
      if ((v20 - a3[1]) * (v20 - a3[1]) + (*a4 - *a3) * (*a4 - *a3) >= (v20 - a2[1]) * (v20 - a2[1]) + (*a4 - *a2) * (*a4 - *a2))
      {
        return result;
      }

      v7 = *(a2 + 2);
      v8 = *a2;
      v21 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v21;
    }

    else
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
    }

    *a3 = v8;
    *(a3 + 2) = v7;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(a1, a2, a3, a6);
  result.n128_f64[0] = *a6;
  v13 = a6[1];
  if ((v13 - *(a4 + 8)) * (v13 - *(a4 + 8)) + (*a6 - *a4) * (*a6 - *a4) < (v13 - *(a3 + 8)) * (v13 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3))
  {
    v14 = *(a3 + 16);
    result = *a3;
    v15 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = result;
    *(a4 + 16) = v14;
    result.n128_f64[0] = *a6;
    v13 = a6[1];
    if ((v13 - *(a3 + 8)) * (v13 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3) < (v13 - *(a2 + 8)) * (v13 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2))
    {
      v16 = *(a2 + 16);
      result = *a2;
      v17 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v17;
      *a3 = result;
      *(a3 + 16) = v16;
      result.n128_f64[0] = *a6;
      v13 = a6[1];
      if ((v13 - *(a2 + 8)) * (v13 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2) < (v13 - *(a1 + 8)) * (v13 - *(a1 + 8)) + (*a6 - *a1) * (*a6 - *a1))
      {
        v18 = *(a1 + 16);
        result = *a1;
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *a2 = result;
        *(a2 + 16) = v18;
        result.n128_f64[0] = *a6;
        v13 = a6[1];
      }
    }
  }

  v20 = (v13 - *(a5 + 8)) * (v13 - *(a5 + 8)) + (result.n128_f64[0] - *a5) * (result.n128_f64[0] - *a5);
  result.n128_f64[0] = (v13 - *(a4 + 8)) * (v13 - *(a4 + 8)) + (result.n128_f64[0] - *a4) * (result.n128_f64[0] - *a4);
  if (v20 < result.n128_f64[0])
  {
    v21 = *(a4 + 16);
    result = *a4;
    v22 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v22;
    *a5 = result;
    *(a5 + 16) = v21;
    v23 = a6[1];
    result.n128_f64[0] = (v23 - *(a4 + 8)) * (v23 - *(a4 + 8)) + (*a6 - *a4) * (*a6 - *a4);
    if (result.n128_f64[0] < (v23 - *(a3 + 8)) * (v23 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3))
    {
      v24 = *(a3 + 16);
      result = *a3;
      v25 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v25;
      *a4 = result;
      *(a4 + 16) = v24;
      v26 = a6[1];
      result.n128_f64[0] = (v26 - *(a3 + 8)) * (v26 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3);
      if (result.n128_f64[0] < (v26 - *(a2 + 8)) * (v26 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2))
      {
        v27 = *(a2 + 16);
        result = *a2;
        v28 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v28;
        *a3 = result;
        *(a3 + 16) = v27;
        v29 = a6[1];
        result.n128_f64[0] = (v29 - *(a2 + 8)) * (v29 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2);
        if (result.n128_f64[0] < (v29 - *(a1 + 8)) * (v29 - *(a1 + 8)) + (*a6 - *a1) * (*a6 - *a1))
        {
          v30 = *(a1 + 16);
          result = *a1;
          v31 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v31;
          *a2 = result;
          *(a2 + 16) = v30;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *>(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(a1, (a1 + 24), (a2 - 24), a3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(a1, (a1 + 24), (a1 + 48), a3);
        v24 = *(a2 - 24);
        v25 = *(a2 - 16);
        v23 = a2 - 24;
        v26 = a3[1];
        if ((v26 - v25) * (v26 - v25) + (*a3 - v24) * (*a3 - v24) < (v26 - *(a1 + 56)) * (v26 - *(a1 + 56)) + (*a3 - *(a1 + 48)) * (*a3 - *(a1 + 48)))
        {
          v27 = *(a1 + 64);
          v28 = *(a1 + 48);
          v29 = *(v23 + 16);
          *(a1 + 48) = *v23;
          *(a1 + 64) = v29;
          *v23 = v28;
          *(v23 + 16) = v27;
          v30 = a3[1];
          if ((v30 - *(a1 + 56)) * (v30 - *(a1 + 56)) + (*a3 - *(a1 + 48)) * (*a3 - *(a1 + 48)) < (v30 - *(a1 + 32)) * (v30 - *(a1 + 32)) + (*a3 - *(a1 + 24)) * (*a3 - *(a1 + 24)))
          {
            v31 = *(a1 + 40);
            v32 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v32;
            *(a1 + 64) = v31;
            v33 = a3[1];
            if ((v33 - *(a1 + 32)) * (v33 - *(a1 + 32)) + (*a3 - *(a1 + 24)) * (*a3 - *(a1 + 24)) < (v33 - *(a1 + 8)) * (v33 - *(a1 + 8)) + (*a3 - *a1) * (*a3 - *a1))
            {
              v34 = *(a1 + 16);
              v35 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v35;
              *(a1 + 40) = v34;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    v8 = a3[1];
    if ((v8 - *(a2 - 16)) * (v8 - *(a2 - 16)) + (*a3 - *(a2 - 24)) * (*a3 - *(a2 - 24)) < (v8 - *(a1 + 8)) * (v8 - *(a1 + 8)) + (*a3 - *a1) * (*a3 - *a1))
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      v11 = *(a2 - 8);
      *a1 = *v7;
      *(a1 + 16) = v11;
      *v7 = v10;
      *(a2 - 8) = v9;
    }

    return 1;
  }

LABEL_11:
  v12 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MTMPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_2 &,MTMPU::Point3D *,0>(a1, (a1 + 24), (a1 + 48), a3);
  v13 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    v17 = *(v13 + 8);
    v18 = a3[1];
    if ((v18 - *&v17) * (v18 - *&v17) + (*a3 - *v13) * (*a3 - *v13) < (v18 - v12[1]) * (v18 - v12[1]) + (*a3 - *v12) * (*a3 - *v12))
    {
      v19 = v14;
      while (1)
      {
        v20 = a1 + v19;
        *(v20 + 72) = *(a1 + v19 + 48);
        *(v20 + 88) = *(a1 + v19 + 64);
        if (v19 == -48)
        {
          break;
        }

        v21 = a3[1];
        v19 -= 24;
        if ((v21 - *&v17) * (v21 - *&v17) + (*a3 - v16) * (*a3 - v16) >= (v21 - *(v20 + 32)) * (v21 - *(v20 + 32)) + (*a3 - *(v20 + 24)) * (*a3 - *(v20 + 24)))
        {
          v22 = a1 + v19 + 72;
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      *v22 = v16;
      *(v22 + 8) = v17;
      if (++v15 == 8)
      {
        return v13 + 24 == a2;
      }
    }

    v12 = v13;
    v14 += 24;
    v13 += 24;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

void std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTMPU::LayoutInterpolator::EntriesContainer>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t MTMPU::LayoutInterpolator::_EntriesContainerMakeInsertionError@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *(a3 + 31) = 0;
  *(a3 + 8) = 0;
  v14 = a3 + 8;
  *a3 = a2;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Error: Attempting to insert ", 28);
      MTMPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v25, a4, a5);
      v15 = " with a specified secondary reference metric with another entry present that does not have a specified secondary reference metric: ";
      v16 = 131;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_12;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Error: Attempting to insert ", 28);
      MTMPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v25, a4, a5);
      v15 = " without a specified secondary reference metric with another entry present that does have a specified secondary reference metric: ";
      v16 = 130;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Error: Found inconsistent duplicate entry while trying to insert ", 65);
    MTMPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v25, a4, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, ". ", 2);
    v15 = "Already have ";
    v16 = 13;
LABEL_10:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v15, v16);
    MTMPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v25, a6, a7);
    v17 = ".";
    v18 = 1;
    goto LABEL_11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Found perfect duplicate entry while trying to insert ", 53);
  MTMPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v25, a4, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, ". ", 2);
  v17 = "Doing nothing.";
  v18 = 14;
LABEL_11:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v17, v18);
LABEL_12:
  if ((v32 & 0x10) != 0)
  {
    v20 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v20 = v28;
    }

    locale = v27[4].__locale_;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v19 = 0;
      HIBYTE(v24) = 0;
      goto LABEL_25;
    }

    locale = v27[1].__locale_;
    v20 = v27[3].__locale_;
  }

  v19 = v20 - locale;
  if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = v20 - locale;
  if (v19)
  {
    memmove(&v23, locale, v19);
  }

LABEL_25:
  *(&v23 + v19) = 0;
  if (*(a3 + 31) < 0)
  {
    operator delete(*v14);
  }

  *v14 = v23;
  *(v14 + 16) = v24;
  v25 = *MEMORY[0x277D82828];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
  v26 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x21CEF4920](&v33);
}

void sub_21B3E3D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ostringstream::~ostringstream(&a12, MEMORY[0x277D82828]);
  MEMORY[0x21CEF4920](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_21B3E3E78(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x21CEF4920](v1);
  _Unwind_Resume(a1);
}

void *MTMPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "(referenceMetric: ", 18);
  MEMORY[0x21CEF48C0](v8, *(a1 + 24));
  if (!MTMPUFloatEqualToFloat(a3, -1.13427449e38))
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", secondaryReferenceMetric: ", 28);
    MEMORY[0x21CEF48C0](v9, a3);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", value: ", 9);
  v11 = MEMORY[0x21CEF48C0](v10, a4);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ")", 1);
}

uint64_t MTMPU::LayoutInterpolator::EntriesContainer::EntriesContainer(uint64_t this, double a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

uint64_t MTMPU::LayoutInterpolator::EntriesContainer::copyEntriesVector@<X0>(MTMPU::LayoutInterpolator::EntriesContainer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<MTMPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MTMPU::LayoutInterpolator::Entry*,MTMPU::LayoutInterpolator::Entry*>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 4);
}

void MTMPU::LayoutInterpolator::EntriesContainer::insertEntry(MTMPU::LayoutInterpolator::EntriesContainer *this@<X0>, __n128 a2@<0:D0, 8:D1>, uint64_t a3@<X8>)
{
  v3 = a2.n128_f64[1];
  v4 = a2.n128_f64[0];
  v27 = a2;
  *a3 = 0;
  *(a3 + 31) = 0;
  *(a3 + 8) = 0;
  v7 = a3 + 8;
  v9 = *this;
  v8 = *(this + 1);
  if (MTMPUFloatEqualToFloat(a2.n128_f64[0], -1.13427449e38))
  {
    if (v8 != v9)
    {
      v11 = **this;
      v10 = *(*this + 8);
      if (MTMPUFloatEqualToFloat(v11, -1.13427449e38))
      {
        if (MTMPUFloatEqualToFloat(v10, v3))
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        MTMPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, v12, &v24, v4, v3, v11, v10);
      }

      else
      {
        MTMPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, 4, &v24, v4, v3, v11, v10);
      }

LABEL_12:
      v15 = v24;
      *a3 = v24;
      *v7 = v25;
      *(v7 + 16) = v26;
      if (v15)
      {
        return;
      }
    }
  }

  else if (v8 != v9)
  {
    v13 = **this;
    v14 = *(*this + 8);
    if (MTMPUFloatEqualToFloat(v13, -1.13427449e38))
    {
      MTMPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, 3, &v24, v4, v3, v13, v14);
      goto LABEL_12;
    }
  }

  v17 = *this;
  v16 = *(this + 1);
  if (v16 == *this)
  {
    v17 = *(this + 1);
  }

  else
  {
    v18 = (v16 - *this) >> 4;
    do
    {
      v19 = v18 >> 1;
      n128_f64 = v17[v18 >> 1].n128_f64;
      v22 = *n128_f64;
      v21 = (n128_f64 + 2);
      v18 += ~(v18 >> 1);
      if (v22 < v4)
      {
        v17 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
  }

  if (v16 == v17 || !MTMPUFloatEqualToFloat(v17->n128_f64[0], v4))
  {
    std::vector<MTMPU::LayoutInterpolator::Entry>::insert(this, v17, &v27);
  }

  else
  {
    if (MTMPUFloatEqualToFloat(v17->n128_f64[1], v27.n128_f64[1]))
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    MTMPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, v23, &v24, v27.n128_f64[0], v27.n128_f64[1], v17->n128_f64[0], v17->n128_f64[1]);
    *a3 = v24;
    if (*(a3 + 31) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v25;
    *(v7 + 16) = v26;
  }
}

__n128 *std::vector<MTMPU::LayoutInterpolator::Entry>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<MTMPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::Entry>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<MTMPU::LayoutInterpolator::Entry>::emplace_back<MTMPU::LayoutInterpolator::Entry const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_21B3E4380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double MTMPU::LayoutInterpolator::EntriesContainer::valueForSecondaryReferenceMetric(double **this, double a2)
{
  v3 = *this;
  v2 = this[1];
  v4 = (v2 - *this) >> 4;
  if (v4 == 1)
  {
    return v3[1];
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(exception, "Can't query value from empty entries container.");
  }

  if (v2 == v3)
  {
    v3 = this[1];
  }

  else
  {
    do
    {
      v7 = v4 >> 1;
      v8 = &v3[2 * (v4 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v4 += ~(v4 >> 1);
      if (v10 < a2)
      {
        v3 = v9;
      }

      else
      {
        v4 = v7;
      }
    }

    while (v4);
  }

  if (v2 == v3)
  {
    v12 = *(v3 - 4);
    v13 = *(v3 - 3);
    v14 = *(v3 - 2);
    v15 = *(v3 - 1);
  }

  else
  {
    if (MTMPUFloatEqualToFloat(*v3, a2))
    {
      return v3[1];
    }

    if (*this == v3)
    {
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[2];
      v15 = v3[3];
    }

    else
    {
      v12 = *(v3 - 2);
      v13 = *(v3 - 1);
      v14 = *v3;
      v15 = v3[1];
    }
  }

  v16 = MTMPULayoutLinearRelationMake(v12, v13, v14, v15);

  return MTMPULayoutLinearRelationEvaluate(v16, v17, a2);
}

std::string *std::string::basic_string[abi:ne200100]<0>(std::string *a1, char *__s)
{
  v4 = strlen(__s);
  std::string::__init(a1, __s, v4);
  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

__n128 std::__split_buffer<MTMPU::LayoutInterpolator::Entry>::emplace_back<MTMPU::LayoutInterpolator::Entry const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMPU::LayoutInterpolator::Entry>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CEF4890](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x21CEF48A0](v13);
  return a1;
}

void sub_21B3E48AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x21CEF48A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x21B3E488CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_21B3E4AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21CEF48D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_21B3E4B90(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

double *MTMPU::Point3D::Point3D(double *this, double a2, double a3, double a4)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

BOOL MTMPU::Point3D::operator==(double *a1, double *a2)
{
  if (!MTMPUFloatEqualToFloat(*a1, *a2) || !MTMPUFloatEqualToFloat(a1[1], a2[1]))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];

  return MTMPUFloatEqualToFloat(v4, v5);
}

uint64_t MTMPU::Point3D::resolveEquationOfPlaneDefinedByFirstThreePointsInVector(double **a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v15 = **a1;
  v16 = (*a1)[1];
  v17 = (*a1)[2];
  v18 = (*a1)[4];
  v19 = (*a1)[5];
  v20 = (*a1)[6];
  v21 = (*a1)[7];
  v22 = (*a1)[8];
  v34 = (*a1)[3];
  if (MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v15, v16, v17, v34, v18, v19, a11, a12, v20, v21, v22) & 1) != 0 || (MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v15, v16, v17, v20, v21, v22, v23, v24, v34, v18, v19) & 1) != 0 || (MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v34, v18, v19, v15, v16, v17, v25, v26, v20, v21, v22) & 1) != 0 || (MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v34, v18, v19, v20, v21, v22, v27, v28, v15, v16, v17) & 1) != 0 || (MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v20, v21, v22, v15, v16, v17, v29, v30, v34, v18, v19))
  {
    return 1;
  }

  else
  {
    return MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v20, v21, v22, v34, v18, v19, v31, v32, v15, v16, v17);
  }
}

uint64_t MTMPU::_ResolveEquationOfPlaneDefinedBy3DPoints(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v26 = a8 - a5;
  if (MTMPUFloatEqualToFloat(a8 - a5, 0.0))
  {
    return 0;
  }

  v27 = a13 - a8;
  v28 = a7 - a4;
  v29 = -v27 / v26;
  v30 = a12 - a7 + v29 * (a7 - a4);
  if (MTMPUFloatEqualToFloat(v30, 0.0))
  {
    return 0;
  }

  v32 = (a14 - a9 + v29 * (a9 - a6)) / v30;
  if (a1)
  {
    *a1 = v32;
  }

  v33 = (a9 - a6 - v32 * v28) / v26;
  if (a2)
  {
    *a2 = v33;
  }

  if (a3)
  {
    *a3 = a6 - v32 * a4 - v33 * a5;
  }

  return 1;
}

uint64_t MTMPUDeviceGetGraphicsQuality()
{
  if (MTMPUDeviceGetGraphicsQuality_sOnceToken[0] != -1)
  {
    MTMPUDeviceGetGraphicsQuality_cold_1();
  }

  return MTMPUDeviceGetGraphicsQuality_sGraphicsQuality;
}

void __MTMPUDeviceGetGraphicsQuality_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 _graphicsQuality];

  if (v1 == 10)
  {
    v2 = 100;
LABEL_3:
    MTMPUDeviceGetGraphicsQuality_sGraphicsQuality = v2;
    return;
  }

  v2 = 500;
  v3 = MGGetProductType();
  if (v3 == 1517755655 || v3 == 3953847432 || v3 == 1549248876)
  {
    goto LABEL_3;
  }
}

uint64_t AMPGetBidiClass(uint64_t a1, uint64_t a2)
{
  if (a1 == 65532)
  {
    return 12;
  }

  v3 = MEMORY[0x21CEF5860](a1, a2);
  if (v3 > 0x16)
  {
    return 0;
  }

  else
  {
    return qword_21B4D1BC8[v3];
  }
}

void AMPAddOverridesForSupportingLayoutDirectionOnUIView()
{
  if (sOverride_UIView_traitCollection != -1)
  {
    AMPAddOverridesForSupportingLayoutDirectionOnUIView_cold_1();
  }
}

id swizzle_UIView_traitCollection(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = sOriginal_UIView_traitCollection();
  v3 = [v1 _layoutDirectionValue];
  if (v3 && (v4 = [v1 _layoutDirectionFromLayoutDirectionValue:v3], v4 != objc_msgSend(v2, "layoutDirection")))
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:v4];
    v10[0] = v2;
    v10[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v5 = [MEMORY[0x277D75C80] traitCollectionWithTraitsFromCollections:v7];
  }

  else
  {
    v5 = v2;
  }

  v8 = v5;

  return v5;
}

uint64_t isTV()
{
  if (isTV_onceToken != -1)
  {
    isTV_cold_1();
  }

  return isTV___isTV;
}

void __isTV_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isTV___isTV = v1 == 2;
}

uint64_t isPad()
{
  if (isPad_onceToken != -1)
  {
    isPad_cold_1();
  }

  return isPad___isPad;
}

void __isPad_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isPad___isPad = v1 == 1;
}

uint64_t isPhone()
{
  if (isPhone_onceToken != -1)
  {
    isPhone_cold_1();
  }

  return isPhone___isPhone;
}

void __isPhone_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isPhone___isPhone = v1 == 0;
}

uint64_t isMac()
{
  if (isMac_onceToken != -1)
  {
    isMac_cold_1();
  }

  return isMac___isMac;
}

void __isMac_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isMac___isMac = v1 == 5;
}

BOOL isTouch()
{
  if (isTouch_onceToken != -1)
  {
    isTouch_cold_1();
  }

  return isTouch_result == 0;
}

uint64_t __isTouch_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPod", 4uLL);
  isTouch_result = result;
  return result;
}

BOOL isTallPhone()
{
  if (isPhone_onceToken != -1)
  {
    isPhone_cold_1();
  }

  if (isPhone___isPhone != 1)
  {
    return 0;
  }

  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 nativeBounds];
  Height = CGRectGetHeight(v6);
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 nativeScale];
  v4 = Height / v3 >= 568.0;

  return v4;
}

BOOL isShortPhone()
{
  if (isPhone_onceToken != -1)
  {
    isPhone_cold_1();
  }

  return isPhone___isPhone == 1 && !isTallPhone();
}

uint64_t isMultitaskingSupported()
{
  if ((isMultitaskingSupported___checked & 1) == 0)
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    if (objc_opt_respondsToSelector())
    {
      isMultitaskingSupported___isMultitaskingSupported = [v0 isMultitaskingSupported];
    }

    isMultitaskingSupported___checked = 1;
  }

  return isMultitaskingSupported___isMultitaskingSupported;
}

BOOL isWildcatOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x75F9;
}

BOOL isWildcat()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 30200;
}

BOOL isWildcatOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version >> 3 > 0xEBE;
}

BOOL isApexOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x9C41;
}

BOOL isApex()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 40000;
}

BOOL isApexOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version >> 6 > 0x270;
}

BOOL isBakerOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x9CA5;
}

BOOL isBaker()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 40100;
}

BOOL isBakerOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x9CA3;
}

BOOL isJasperOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x9D09;
}

BOOL isJasper()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 40200;
}

BOOL isJasperOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x9D07;
}

BOOL isDurangoOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x9D6D;
}

BOOL isDurango()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 40300;
}

BOOL isDurangoOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x9D6B;
}

BOOL isTellurideOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0xC351;
}

BOOL isTelluride()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 50000;
}

BOOL isTellurideOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version >> 4 > 0xC34;
}

BOOL isHoodooOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0xC3B5;
}

BOOL isHoodoo()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 50100;
}

BOOL isHoodooOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0xC3B3;
}

BOOL isSundanceOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0xEA61;
}

BOOL isSundance()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 60000;
}

BOOL isSundanceOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version >> 5 > 0x752;
}

BOOL isBrightonOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0xEE49;
}

BOOL isBrighton()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 61000;
}

BOOL isBrightonOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0xEE47;
}

BOOL isInnsbruckOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x11171;
}

BOOL isInnsbruck()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 70000;
}

BOOL isInnsbruckOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x1116F;
}

BOOL isSochiOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x111D5;
}

BOOL isSochi()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 70100;
}

BOOL isSochiOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x111D3;
}

BOOL isOkemoOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x13881;
}

BOOL isOkemo()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 80000;
}

BOOL isOkemoOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version >> 7 > 0x270;
}

BOOL isOkemoTaosOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x138E5;
}

BOOL isOkemoTaos()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 80100;
}

BOOL isOkemoTaosOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x138E3;
}

BOOL isOkemoZursOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x13949;
}

BOOL isOkemoZurs()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 80200;
}

BOOL isOkemoZursOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x13947;
}

BOOL isStoweOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x139AD;
}