uint64_t sub_20B5C1704()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B5C1C74;
  }

  else
  {
    v2 = sub_20B5C1818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C1818()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  (*(v2 + 104))(v1, *MEMORY[0x277D513F8], v4);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  (*(v2 + 16))(v3 + v5[5], v1, v4);
  v7 = v5[6];
  v8 = sub_20C132C14();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = sub_20C134324();
  v11 = v10;
  v12 = v5[8];
  v13 = *MEMORY[0x277D52408];
  v14 = sub_20C135ED4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v3 + v12, v13, v14);
  (*(v15 + 56))(v3 + v12, 0, 1, v14);
  v16 = v5[10];
  v17 = *MEMORY[0x277D51768];
  v18 = sub_20C1352E4();
  (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
  v19 = v5[11];
  v20 = sub_20C136E94();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v22 = (v3 + v5[7]);
  *v22 = v9;
  v22[1] = v11;
  v23 = (v3 + v5[9]);
  *v23 = 0;
  v23[1] = 0;
  *(v3 + v5[12]) = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FAC4(v0[3], v0[10], Strong);
    swift_unknownObjectRelease();
  }

  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];
  sub_20B5DF274(v0[10], type metadata accessor for ShelfMetricAction);
  (*(v26 + 8))(v25, v27);
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = sub_20B5C1B60;
  v29 = v0[16];
  v30 = v0[4];
  v31 = v0[5];

  return sub_20B5C36FC(v29, v30, v31);
}

uint64_t sub_20B5C1B60()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_20B5C1F24;
  }

  else
  {
    v2 = sub_20B5C1E80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C1C74()
{
  v20 = v0;
  v1 = v0[18];
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v18 = v0[8];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to start workout session: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v18, v6);
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20B5C1E80()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C1F24()
{
  v20 = v0;
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[20];
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v18 = v0[8];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to start workout session: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v18, v6);
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20B5C2148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  v9 = sub_20C13BB84();
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for ShelfMetricAction();
  v7[10] = swift_task_alloc();
  v10 = sub_20C134F24();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v11 = sub_20C1344C4();
  v7[14] = v11;
  v7[15] = *(v11 - 8);
  v12 = swift_task_alloc();
  v7[16] = v12;
  v13 = swift_task_alloc();
  v7[17] = v13;
  *v13 = v7;
  v13[1] = sub_20B5C2340;

  return sub_20B5C314C(v12, a5);
}

uint64_t sub_20B5C2340()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B5DF56C;
  }

  else
  {
    v2 = sub_20B5C2454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C2454()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  (*(v2 + 104))(v1, *MEMORY[0x277D513F8], v4);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  (*(v2 + 16))(v3 + v5[5], v1, v4);
  v7 = v5[6];
  v8 = sub_20C132C14();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = sub_20C134324();
  v11 = v10;
  v12 = v5[8];
  v13 = *MEMORY[0x277D52408];
  v14 = sub_20C135ED4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v3 + v12, v13, v14);
  (*(v15 + 56))(v3 + v12, 0, 1, v14);
  v16 = v5[10];
  v17 = *MEMORY[0x277D51768];
  v18 = sub_20C1352E4();
  (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
  v19 = v5[11];
  v20 = sub_20C136E94();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v22 = (v3 + v5[7]);
  *v22 = v9;
  v22[1] = v11;
  v23 = (v3 + v5[9]);
  *v23 = 0;
  v23[1] = 0;
  *(v3 + v5[12]) = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA039C(v0[3], v0[10], Strong);
    swift_unknownObjectRelease();
  }

  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];
  sub_20B5DF274(v0[10], type metadata accessor for ShelfMetricAction);
  (*(v26 + 8))(v25, v27);
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = sub_20B5C279C;
  v29 = v0[16];
  v30 = v0[4];
  v31 = v0[5];

  return sub_20B5C53B8(v29, v30, v31);
}

uint64_t sub_20B5C279C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_20B5DF4F0;
  }

  else
  {
    v2 = sub_20B5DF618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C28B0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_20C1344C4();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764340);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_20C137144();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for StartWorkoutSessionRequest();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5C2A68, 0, 0);
}

uint64_t sub_20B5C2A68()
{
  sub_20B5DF20C(v0[10], v0[22], type metadata accessor for StartWorkoutSessionRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[22];
    v2 = v0[17];
    v3 = v0[11];
    v4 = *v1;
    v5 = v1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = v4;
    v7 = inited + 32;
    *(inited + 40) = v5;
    sub_20BE8C2E8(inited);
    swift_setDeallocating();
    sub_20B5D9804(v7);
    sub_20C137134();
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient), *(v3 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient + 24));
    sub_20C139F24();
    v8 = swift_task_alloc();
    v0[23] = v8;
    *(v8 + 16) = "SeymourUI/CatalogWorkoutDetailShelfButtonActionHandling.swift";
    *(v8 + 24) = 61;
    *(v8 + 32) = 2;
    *(v8 + 40) = 66;
    *(v8 + 48) = v2;
    v9 = swift_task_alloc();
    v0[24] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B8);
    *v9 = v0;
    v9[1] = sub_20B5C2CFC;

    return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5D9858, v8, v10);
  }

  else
  {
    (*(v0[13] + 32))(v0[9], v0[22], v0[12]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20B5C2CFC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_20B5C3084;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];
    v2[26] = v2[8];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B5C2E5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B5C2E5C()
{
  v1 = v0[26];
  if (*(v1 + 16))
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v8 = v0[9];
    (*(v6 + 16))(v5, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    (*(v3 + 8))(v2, v4);
    (*(v6 + 32))(v8, v5, v7);
  }

  else
  {

    v10 = sub_20C133A24();
    sub_20B5DF0C4(&qword_27C7622C0, MEMORY[0x277D50230]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50208], v10);
    swift_willThrow();
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B5C3084()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C314C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_20C1344C4();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764340);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_20C137144();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for StartWorkoutSessionRequest();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5C3304, 0, 0);
}

uint64_t sub_20B5C3304()
{
  sub_20B5DF20C(v0[10], v0[22], type metadata accessor for StartWorkoutSessionRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[22];
    v2 = v0[17];
    v3 = v0[11];
    v4 = *v1;
    v5 = v1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = v4;
    v7 = inited + 32;
    *(inited + 40) = v5;
    sub_20BE8C2E8(inited);
    swift_setDeallocating();
    sub_20B5D9804(v7);
    sub_20C137134();
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_catalogClient), *(v3 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_catalogClient + 24));
    sub_20C139F24();
    v8 = swift_task_alloc();
    v0[23] = v8;
    *(v8 + 16) = "SeymourUI/CatalogWorkoutDetailShelfButtonActionHandling.swift";
    *(v8 + 24) = 61;
    *(v8 + 32) = 2;
    *(v8 + 40) = 66;
    *(v8 + 48) = v2;
    v9 = swift_task_alloc();
    v0[24] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B8);
    *v9 = v0;
    v9[1] = sub_20B5C359C;

    return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5DF62C, v8, v10);
  }

  else
  {
    (*(v0[13] + 32))(v0[9], v0[22], v0[12]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20B5C359C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_20B5DF60C;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];
    v2[26] = v2[8];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B5DF588;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B5C36FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230);
  v4[6] = swift_task_alloc();
  v5 = sub_20C135214();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_20C1344C4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  v4[13] = swift_task_alloc();
  v7 = sub_20C135AE4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v4[17] = swift_task_alloc();
  v8 = sub_20C135C54();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[21] = swift_task_alloc();
  v9 = sub_20C133954();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_20C13BB84();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5C3A6C, 0, 0);
}

uint64_t sub_20B5C3A6C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[5];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient + 24);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient), v5);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_20B5C3B94;
  v8 = v0[21];

  return MEMORY[0x2821ADE88](v8, v5, v6);
}

uint64_t sub_20B5C3B94()
{

  if (v0)
  {

    v1 = sub_20B5C3EB4;
  }

  else
  {
    v1 = sub_20B5C3CAC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C3CAC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C3D9C;
  v6 = v0[24];
  v7 = v0[17];
  v8 = v0[2];

  return sub_20B5CBF7C(v7, v8, v6);
}

uint64_t sub_20B5C3D9C()
{

  if (v0)
  {

    v1 = sub_20B5C41C0;
  }

  else
  {
    v1 = sub_20B5C4298;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C3EB4()
{
  v1 = v0[21];
  (*(v0[23] + 56))(v1, 1, 1, v0[22]);
  sub_20B520158(v1, &unk_27C76A970);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_20B5C3F88;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return sub_20B5CAB64(v5, v4, v3);
}

uint64_t sub_20B5C3F88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B5C41C0()
{
  v1 = v0[17];
  (*(v0[19] + 56))(v1, 1, 1, v0[18]);
  sub_20B520158(v1, &qword_27C76A410);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_20B5C4A84;
  v3 = v0[24];
  v4 = v0[6];
  v5 = v0[2];

  return sub_20B5CEE08(v4, v5, v3);
}

uint64_t sub_20B5C4298()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C4388;
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[13];

  return sub_20B5CCE80(v8, v6, v7);
}

uint64_t sub_20B5C4388()
{

  if (v0)
  {

    v1 = sub_20B5C4718;
  }

  else
  {
    v1 = sub_20B5C44A0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C44A0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_20C135AA4();
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C45A8;
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[12];
  v9 = v0[4];
  v10 = v0[2];

  return sub_20B5CD908(v6, v10, v8, v7, v9);
}

uint64_t sub_20B5C45A8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 264) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20B5C4948;
  }

  else
  {
    v5 = sub_20B5C4814;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B5C4718()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_20B520158(v3, &qword_27C7620C8);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_20B5C4A84;
  v5 = v0[24];
  v6 = v0[6];
  v7 = v0[2];

  return sub_20B5CEE08(v6, v7, v5);
}

uint64_t sub_20B5C4814()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B5C4948()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B5C4A84()
{

  if (v0)
  {

    v1 = sub_20B5C4DA0;
  }

  else
  {
    v1 = sub_20B5C4B9C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C4B9C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C4C8C;
  v6 = v0[24];
  v7 = v0[9];
  v8 = v0[4];
  v9 = v0[2];
  v10 = v0[3];

  return sub_20B5D076C(v7, v6, v9, v10, v8);
}

uint64_t sub_20B5C4C8C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_20B5C509C;
  }

  else
  {
    v2 = sub_20B5C4F88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C4DA0()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v1, 1, 1, v0[7]);
  sub_20B520158(v1, &unk_27C762230);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_20B5C4E74;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return sub_20B5CAB64(v5, v4, v3);
}

uint64_t sub_20B5C4E74()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_20B5C52B4;
  }

  else
  {
    v2 = sub_20B5C51B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C4F88()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C509C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C51B8()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C52B4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C53B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230);
  v4[6] = swift_task_alloc();
  v5 = sub_20C135214();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_20C1344C4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  v4[13] = swift_task_alloc();
  v7 = sub_20C135AE4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v4[17] = swift_task_alloc();
  v8 = sub_20C135C54();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[21] = swift_task_alloc();
  v9 = sub_20C133954();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_20C13BB84();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5C5728, 0, 0);
}

uint64_t sub_20B5C5728()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[5];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient + 24);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient), v5);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_20B5C5854;
  v8 = v0[21];

  return MEMORY[0x2821ADE88](v8, v5, v6);
}

uint64_t sub_20B5C5854()
{

  if (v0)
  {

    v1 = sub_20B5C5B74;
  }

  else
  {
    v1 = sub_20B5C596C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C596C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C5A5C;
  v6 = v0[24];
  v7 = v0[17];
  v8 = v0[2];

  return sub_20B5CC854(v7, v8, v6);
}

uint64_t sub_20B5C5A5C()
{

  if (v0)
  {

    v1 = sub_20B5C5C48;
  }

  else
  {
    v1 = sub_20B5C5D20;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C5B74()
{
  v1 = v0[21];
  (*(v0[23] + 56))(v1, 1, 1, v0[22]);
  sub_20B520158(v1, &unk_27C76A970);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_20B5DF4EC;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return sub_20B5CB644(v5, v4, v3);
}

uint64_t sub_20B5C5C48()
{
  v1 = v0[17];
  (*(v0[19] + 56))(v1, 1, 1, v0[18]);
  sub_20B520158(v1, &qword_27C76A410);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_20B5C629C;
  v3 = v0[24];
  v4 = v0[6];
  v5 = v0[2];

  return sub_20B5CFB24(v4, v5, v3);
}

uint64_t sub_20B5C5D20()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C5E10;
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[13];

  return sub_20B5CD400(v8, v6, v7);
}

uint64_t sub_20B5C5E10()
{

  if (v0)
  {

    v1 = sub_20B5C61A0;
  }

  else
  {
    v1 = sub_20B5C5F28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C5F28()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_20C135AA4();
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C6030;
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[12];
  v9 = v0[4];
  v10 = v0[2];

  return sub_20B5CE3F4(v6, v10, v8, v7, v9);
}

uint64_t sub_20B5C6030()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 264) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20B5DF568;
  }

  else
  {
    v5 = sub_20B5DF4FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B5C61A0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_20B520158(v3, &qword_27C7620C8);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_20B5C629C;
  v5 = v0[24];
  v6 = v0[6];
  v7 = v0[2];

  return sub_20B5CFB24(v6, v7, v5);
}

uint64_t sub_20B5C629C()
{

  if (v0)
  {

    v1 = sub_20B5C65B8;
  }

  else
  {
    v1 = sub_20B5C63B4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C63B4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C64A4;
  v6 = v0[24];
  v7 = v0[9];
  v8 = v0[4];
  v9 = v0[2];
  v10 = v0[3];

  return sub_20B5D1C84(v7, v6, v9, v10, v8);
}

uint64_t sub_20B5C64A4()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_20B5DF580;
  }

  else
  {
    v2 = sub_20B5DF4A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C65B8()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v1, 1, 1, v0[7]);
  sub_20B520158(v1, &unk_27C762230);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_20B5C668C;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return sub_20B5CB644(v5, v4, v3);
}

uint64_t sub_20B5C668C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_20B5DF5E0;
  }

  else
  {
    v2 = sub_20B5DF574;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C67A0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a1;
  *(v8 + 24) = a5;
  v10 = sub_20C13BB84();
  *(v8 + 56) = v10;
  *(v8 + 64) = *(v10 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = type metadata accessor for ShelfMetricAction();
  *(v8 + 88) = swift_task_alloc();
  v11 = sub_20C134F24();
  *(v8 + 96) = v11;
  *(v8 + 104) = *(v11 - 8);
  *(v8 + 112) = swift_task_alloc();
  v12 = sub_20C1344C4();
  *(v8 + 120) = v12;
  *(v8 + 128) = *(v12 - 8);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  v14 = swift_task_alloc();
  *(v8 + 144) = v14;
  *v14 = v8;
  v14[1] = sub_20B5C699C;

  return sub_20B5C28B0(v13, a6);
}

uint64_t sub_20B5C699C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_20B5C6F10;
  }

  else
  {
    v2 = sub_20B5C6AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C6AB0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  (*(v2 + 104))(v1, *MEMORY[0x277D51448], v4);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  (*(v2 + 16))(v3 + v5[5], v1, v4);
  v7 = v5[6];
  v8 = sub_20C132C14();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = sub_20C134324();
  v11 = v10;
  v12 = v5[8];
  v13 = *MEMORY[0x277D52408];
  v14 = sub_20C135ED4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v3 + v12, v13, v14);
  (*(v15 + 56))(v3 + v12, 0, 1, v14);
  v16 = v5[10];
  v17 = *MEMORY[0x277D51768];
  v18 = sub_20C1352E4();
  (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
  v19 = v5[11];
  v20 = sub_20C136E94();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v22 = (v3 + v5[7]);
  *v22 = v9;
  v22[1] = v11;
  v23 = (v3 + v5[9]);
  *v23 = 0;
  v23[1] = 0;
  *(v3 + v5[12]) = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FAC4(v0[3], v0[11], Strong);
    swift_unknownObjectRelease();
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  sub_20B5DF274(v0[11], type metadata accessor for ShelfMetricAction);
  (*(v26 + 8))(v25, v27);
  v28 = swift_task_alloc();
  v0[20] = v28;
  *v28 = v0;
  v28[1] = sub_20B5C6DFC;
  v29 = v0[17];
  v30 = v0[5];
  v31 = v0[6];
  v32 = *(v0 + 4);

  return sub_20B5C7B54(v29, v30, v31, v32);
}

uint64_t sub_20B5C6DFC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_20B5C71C0;
  }

  else
  {
    v2 = sub_20B5C711C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C6F10()
{
  v20 = v0;
  v1 = v0[19];
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v18 = v0[9];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to resume workout session: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v18, v6);
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20B5C711C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5C71C0()
{
  v20 = v0;
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[21];
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v18 = v0[9];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to resume workout session: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v18, v6);
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20B5C73E4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a1;
  *(v8 + 24) = a5;
  v10 = sub_20C13BB84();
  *(v8 + 56) = v10;
  *(v8 + 64) = *(v10 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = type metadata accessor for ShelfMetricAction();
  *(v8 + 88) = swift_task_alloc();
  v11 = sub_20C134F24();
  *(v8 + 96) = v11;
  *(v8 + 104) = *(v11 - 8);
  *(v8 + 112) = swift_task_alloc();
  v12 = sub_20C1344C4();
  *(v8 + 120) = v12;
  *(v8 + 128) = *(v12 - 8);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  v14 = swift_task_alloc();
  *(v8 + 144) = v14;
  *v14 = v8;
  v14[1] = sub_20B5C75E0;

  return sub_20B5C314C(v13, a6);
}

uint64_t sub_20B5C75E0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_20B5DF570;
  }

  else
  {
    v2 = sub_20B5C76F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C76F4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  (*(v2 + 104))(v1, *MEMORY[0x277D51448], v4);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  (*(v2 + 16))(v3 + v5[5], v1, v4);
  v7 = v5[6];
  v8 = sub_20C132C14();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = sub_20C134324();
  v11 = v10;
  v12 = v5[8];
  v13 = *MEMORY[0x277D52408];
  v14 = sub_20C135ED4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v3 + v12, v13, v14);
  (*(v15 + 56))(v3 + v12, 0, 1, v14);
  v16 = v5[10];
  v17 = *MEMORY[0x277D51768];
  v18 = sub_20C1352E4();
  (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
  v19 = v5[11];
  v20 = sub_20C136E94();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  v21 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v22 = (v3 + v5[7]);
  *v22 = v9;
  v22[1] = v11;
  v23 = (v3 + v5[9]);
  *v23 = 0;
  v23[1] = 0;
  *(v3 + v5[12]) = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA039C(v0[3], v0[11], Strong);
    swift_unknownObjectRelease();
  }

  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  sub_20B5DF274(v0[11], type metadata accessor for ShelfMetricAction);
  (*(v26 + 8))(v25, v27);
  v28 = swift_task_alloc();
  v0[20] = v28;
  *v28 = v0;
  v28[1] = sub_20B5C7A40;
  v29 = v0[17];
  v30 = v0[5];
  v31 = v0[6];
  v32 = *(v0 + 4);

  return sub_20B5C9584(v29, v30, v31, v32);
}

uint64_t sub_20B5C7A40()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_20B5DF4F4;
  }

  else
  {
    v2 = sub_20B5DF61C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5C7B54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a4;
  *(v5 + 16) = a1;
  v6 = sub_20C1344C4();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_20C135AE4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = type metadata accessor for WorkoutSessionConfiguration();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  *(v5 + 128) = swift_task_alloc();
  v8 = sub_20C135C54();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  *(v5 + 160) = swift_task_alloc();
  v9 = sub_20C133954();
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v5 + 192) = v10;
  *(v5 + 200) = *(v10 - 8);
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5C7E68, 0, 0);
}

uint64_t sub_20B5C7E68()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[6];
  sub_20C13B454();
  sub_20C13BB64();
  v5 = *(v2 + 8);
  v0[27] = v5;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient + 24);
  v7 = *(v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient), v6);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_20B5C7F9C;
  v9 = v0[20];

  return MEMORY[0x2821ADE88](v9, v6, v7);
}

uint64_t sub_20B5C7F9C()
{

  if (v0)
  {

    v1 = sub_20B5C82BC;
  }

  else
  {
    v1 = sub_20B5C80B4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C80B4()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C81A4;
  v6 = v0[23];
  v7 = v0[16];
  v8 = v0[2];

  return sub_20B5CBF7C(v7, v8, v6);
}

uint64_t sub_20B5C81A4()
{

  if (v0)
  {

    v1 = sub_20B5C8718;
  }

  else
  {
    v1 = sub_20B5C8A10;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C82BC()
{
  v22 = v0[27];
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[20];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[7];
  v6 = v0[8];
  v23 = v0[5];
  v24 = v0[4];
  v8 = v0[3];
  v9 = v0[2];
  (*(v0[22] + 56))(v3, 1, 1, v0[21]);
  sub_20B520158(v3, &unk_27C76A970);
  sub_20C13B454();
  sub_20C13BB64();
  v22(v1, v2);
  (*(v6 + 16))(v4, v9, v7);
  v10 = v5[5];
  v11 = sub_20C137254();
  (*(*(v11 - 8) + 16))(v4 + v10, v23, v11);
  v12 = v5[7];
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  *(v4 + v12) = sub_20C13A314();
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v13 = v5[9];
  v14 = sub_20C13BA24();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = v5[10];
  v16 = sub_20C134A44();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  sub_20B52F9E8(v24, v4 + v5[12], &qword_27C76A410);
  *(v4 + v5[6]) = 1;
  *(v4 + v5[8]) = v8;
  v17 = (v4 + v5[11]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v4 + v5[13]);
  sub_20C13CDA4();
  *v18 = 0;
  v18[1] = 0;
  v0[31] = sub_20C13CD94();
  v20 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5C85B4, v20, v19);
}

uint64_t sub_20B5C85B4()
{
  v1 = *(v0 + 120);

  sub_20B5D5CE4(v1);

  return MEMORY[0x2822009F8](sub_20B5C862C, 0, 0);
}

uint64_t sub_20B5C862C()
{
  sub_20B5DF274(*(v0 + 120), type metadata accessor for WorkoutSessionConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B5C8718()
{
  v1 = v0[16];
  (*(v0[18] + 56))(v1, 1, 1, v0[17]);
  sub_20B520158(v1, &qword_27C76A410);
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[7];
  v8 = v0[8];
  v23 = v0[5];
  v24 = v0[4];
  v9 = v0[3];
  v10 = v0[2];
  sub_20C13B454();
  sub_20C13BB64();
  v2(v3, v4);
  (*(v8 + 16))(v5, v10, v7);
  v11 = v6[5];
  v12 = sub_20C137254();
  (*(*(v12 - 8) + 16))(v5 + v11, v23, v12);
  v13 = v6[7];
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  *(v5 + v13) = sub_20C13A314();
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v14 = v6[9];
  v15 = sub_20C13BA24();
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = v6[10];
  v17 = sub_20C134A44();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  sub_20B52F9E8(v24, v5 + v6[12], &qword_27C76A410);
  *(v5 + v6[6]) = 1;
  *(v5 + v6[8]) = v9;
  v18 = (v5 + v6[11]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v5 + v6[13]);
  sub_20C13CDA4();
  *v19 = 0;
  v19[1] = 0;
  v0[35] = sub_20C13CD94();
  v21 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5C9400, v21, v20);
}

uint64_t sub_20B5C8A10()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C8B00;
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[10];

  return sub_20B5CCE80(v8, v6, v7);
}

uint64_t sub_20B5C8B00()
{

  if (v0)
  {

    v1 = sub_20B5C8E90;
  }

  else
  {
    v1 = sub_20B5C8C18;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C8C18()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_20C135AA4();
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C8D20;
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[9];
  v9 = v0[5];
  v10 = v0[2];

  return sub_20B5CD908(v6, v10, v8, v7, v9);
}

uint64_t sub_20B5C8D20()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 272) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20B5C92CC;
  }

  else
  {
    v5 = sub_20B5C91A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B5C8E90()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_20B520158(v3, &qword_27C7620C8);
  v4 = v0[27];
  v5 = v0[26];
  v6 = v0[24];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[7];
  v10 = v0[8];
  v25 = v0[5];
  v26 = v0[4];
  v11 = v0[3];
  v12 = v0[2];
  sub_20C13B454();
  sub_20C13BB64();
  v4(v5, v6);
  (*(v10 + 16))(v7, v12, v9);
  v13 = v8[5];
  v14 = sub_20C137254();
  (*(*(v14 - 8) + 16))(v7 + v13, v25, v14);
  v15 = v8[7];
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  *(v7 + v15) = sub_20C13A314();
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v16 = v8[9];
  v17 = sub_20C13BA24();
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  v18 = v8[10];
  v19 = sub_20C134A44();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  sub_20B52F9E8(v26, v7 + v8[12], &qword_27C76A410);
  *(v7 + v8[6]) = 1;
  *(v7 + v8[8]) = v11;
  v20 = (v7 + v8[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v7 + v8[13]);
  sub_20C13CDA4();
  *v21 = 0;
  v21[1] = 0;
  v0[35] = sub_20C13CD94();
  v23 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5C9400, v23, v22);
}

uint64_t sub_20B5C91A4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B5C92CC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B5C9400()
{
  v1 = *(v0 + 120);

  sub_20B5D5CE4(v1);

  return MEMORY[0x2822009F8](sub_20B5C9478, 0, 0);
}

uint64_t sub_20B5C9478()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_20B5DF274(v0[15], type metadata accessor for WorkoutSessionConfiguration);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B5C9584(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a4;
  *(v5 + 16) = a1;
  v6 = sub_20C1344C4();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_20C135AE4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = type metadata accessor for WorkoutSessionConfiguration();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  *(v5 + 128) = swift_task_alloc();
  v8 = sub_20C135C54();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  *(v5 + 160) = swift_task_alloc();
  v9 = sub_20C133954();
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v5 + 192) = v10;
  *(v5 + 200) = *(v10 - 8);
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5C9898, 0, 0);
}

uint64_t sub_20B5C9898()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[6];
  sub_20C13B454();
  sub_20C13BB64();
  v5 = *(v2 + 8);
  v0[27] = v5;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient + 24);
  v7 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient), v6);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_20B5C99D0;
  v9 = v0[20];

  return MEMORY[0x2821ADE88](v9, v6, v7);
}

uint64_t sub_20B5C99D0()
{

  if (v0)
  {

    v1 = sub_20B5C9CF0;
  }

  else
  {
    v1 = sub_20B5C9AE8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C9AE8()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_20B5C9BD8;
  v6 = v0[23];
  v7 = v0[16];
  v8 = v0[2];

  return sub_20B5CC854(v7, v8, v6);
}

uint64_t sub_20B5C9BD8()
{

  if (v0)
  {

    v1 = sub_20B5CA060;
  }

  else
  {
    v1 = sub_20B5CA358;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5C9CF0()
{
  v22 = v0[27];
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[20];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[7];
  v6 = v0[8];
  v23 = v0[5];
  v24 = v0[4];
  v8 = v0[3];
  v9 = v0[2];
  (*(v0[22] + 56))(v3, 1, 1, v0[21]);
  sub_20B520158(v3, &unk_27C76A970);
  sub_20C13B454();
  sub_20C13BB64();
  v22(v1, v2);
  (*(v6 + 16))(v4, v9, v7);
  v10 = v5[5];
  v11 = sub_20C137254();
  (*(*(v11 - 8) + 16))(v4 + v10, v23, v11);
  v12 = v5[7];
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  *(v4 + v12) = sub_20C13A314();
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v13 = v5[9];
  v14 = sub_20C13BA24();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = v5[10];
  v16 = sub_20C134A44();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  sub_20B52F9E8(v24, v4 + v5[12], &qword_27C76A410);
  *(v4 + v5[6]) = 1;
  *(v4 + v5[8]) = v8;
  v17 = (v4 + v5[11]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v4 + v5[13]);
  sub_20C13CDA4();
  *v18 = 0;
  v18[1] = 0;
  v0[31] = sub_20C13CD94();
  v20 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5C9FE8, v20, v19);
}

uint64_t sub_20B5C9FE8()
{
  v1 = *(v0 + 120);

  sub_20B5D5CE4(v1);

  return MEMORY[0x2822009F8](sub_20B5DF578, 0, 0);
}

uint64_t sub_20B5CA060()
{
  v1 = v0[16];
  (*(v0[18] + 56))(v1, 1, 1, v0[17]);
  sub_20B520158(v1, &qword_27C76A410);
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[7];
  v8 = v0[8];
  v23 = v0[5];
  v24 = v0[4];
  v9 = v0[3];
  v10 = v0[2];
  sub_20C13B454();
  sub_20C13BB64();
  v2(v3, v4);
  (*(v8 + 16))(v5, v10, v7);
  v11 = v6[5];
  v12 = sub_20C137254();
  (*(*(v12 - 8) + 16))(v5 + v11, v23, v12);
  v13 = v6[7];
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  *(v5 + v13) = sub_20C13A314();
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v14 = v6[9];
  v15 = sub_20C13BA24();
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = v6[10];
  v17 = sub_20C134A44();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  sub_20B52F9E8(v24, v5 + v6[12], &qword_27C76A410);
  *(v5 + v6[6]) = 1;
  *(v5 + v6[8]) = v9;
  v18 = (v5 + v6[11]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v5 + v6[13]);
  sub_20C13CDA4();
  *v19 = 0;
  v19[1] = 0;
  v0[35] = sub_20C13CD94();
  v21 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5CAAEC, v21, v20);
}

uint64_t sub_20B5CA358()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_20B5CA448;
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[10];

  return sub_20B5CD400(v8, v6, v7);
}

uint64_t sub_20B5CA448()
{

  if (v0)
  {

    v1 = sub_20B5CA7D8;
  }

  else
  {
    v1 = sub_20B5CA560;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20B5CA560()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_20C135AA4();
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_20B5CA668;
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[9];
  v9 = v0[5];
  v10 = v0[2];

  return sub_20B5CE3F4(v6, v10, v8, v7, v9);
}

uint64_t sub_20B5CA668()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 272) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20B5DF5E4;
  }

  else
  {
    v5 = sub_20B5DF6D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B5CA7D8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_20B520158(v3, &qword_27C7620C8);
  v4 = v0[27];
  v5 = v0[26];
  v6 = v0[24];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[7];
  v10 = v0[8];
  v25 = v0[5];
  v26 = v0[4];
  v11 = v0[3];
  v12 = v0[2];
  sub_20C13B454();
  sub_20C13BB64();
  v4(v5, v6);
  (*(v10 + 16))(v7, v12, v9);
  v13 = v8[5];
  v14 = sub_20C137254();
  (*(*(v14 - 8) + 16))(v7 + v13, v25, v14);
  v15 = v8[7];
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  *(v7 + v15) = sub_20C13A314();
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  v16 = v8[9];
  v17 = sub_20C13BA24();
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  v18 = v8[10];
  v19 = sub_20C134A44();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  sub_20B52F9E8(v26, v7 + v8[12], &qword_27C76A410);
  *(v7 + v8[6]) = 1;
  *(v7 + v8[8]) = v11;
  v20 = (v7 + v8[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v7 + v8[13]);
  sub_20C13CDA4();
  *v21 = 0;
  v21[1] = 0;
  v0[35] = sub_20C13CD94();
  v23 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5CAAEC, v23, v22);
}

uint64_t sub_20B5CAAEC()
{
  v1 = *(v0 + 120);

  sub_20B5D5CE4(v1);

  return MEMORY[0x2822009F8](sub_20B5DF500, 0, 0);
}

uint64_t sub_20B5CAB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C137254();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = sub_20C1344C4();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v4[14] = v9;
  v4[15] = *(v9 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for WorkoutSessionConfiguration();
  v4[20] = swift_task_alloc();
  v10 = sub_20C13BB84();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CADC4, 0, 0);
}

uint64_t sub_20B5CADC4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v28 = v0[16];
  v4 = v0[10];
  v5 = v0[11];
  v26 = v0[9];
  v27 = v0[12];
  v6 = v0[7];
  v25 = v0[6];
  v23 = v0[13];
  v24 = v0[4];
  v22 = v0[2];
  sub_20C13B454();
  sub_20C13BB64();
  v7 = *(v2 + 8);
  v7(v1, v3);
  sub_20C13B454();
  sub_20C13BB64();
  v7(v1, v3);
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  v0[24] = sub_20C13A314();
  v8 = sub_20C13A324();
  v20 = v9;
  v21 = v8;
  v10 = *(v5 + 16);
  v0[25] = v10;
  v0[26] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v23, v22, v4);
  v11 = *(v6 + 16);
  v0[27] = v11;
  v0[28] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v26, v24, v25);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = (v27 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  *(v14 + 24) = v20;
  (*(v5 + 32))(v14 + v12, v23, v4);
  (*(v6 + 32))(v14 + v13, v26, v25);
  sub_20C137C94();
  v15 = swift_task_alloc();
  v0[29] = v15;
  *(v15 + 16) = "SeymourUI/CatalogWorkoutDetailShelfButtonActionHandling.swift";
  *(v15 + 24) = 61;
  *(v15 + 32) = 2;
  *(v15 + 40) = 374;
  *(v15 + 48) = v28;
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_20B5CB110;
  v18 = v0[17];
  v17 = v0[18];

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5D97EC, v15, v18);
}

uint64_t sub_20B5CB110()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_20B5CB56C;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_20B5CB260;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B5CB260()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  (*(v0 + 200))(v3, *(v0 + 16), *(v0 + 80));
  v1(v3 + v4[5], v8, v6);
  *(v3 + v4[7]) = v2;
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v5, v3 + v4[9], &unk_27C7622A0);
  v9 = v4[10];
  v10 = sub_20C134A44();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  sub_20B52F9E8(v7, v3 + v4[12], &qword_27C76A410);
  *(v3 + v4[6]) = 1;
  *(v3 + v4[8]) = 0;
  v11 = (v3 + v4[11]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + v4[13]);
  sub_20C13CDA4();
  *v12 = 0;
  v12[1] = 0;
  *(v0 + 256) = sub_20C13CD94();
  v14 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5CB424, v14, v13);
}

uint64_t sub_20B5CB424()
{
  v1 = *(v0 + 160);

  sub_20B5D5CE4(v1);

  return MEMORY[0x2822009F8](sub_20B5CB49C, 0, 0);
}

uint64_t sub_20B5CB49C()
{
  sub_20B5DF274(*(v0 + 160), type metadata accessor for WorkoutSessionConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B5CB56C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5CB644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C137254();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = sub_20C1344C4();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v4[14] = v9;
  v4[15] = *(v9 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for WorkoutSessionConfiguration();
  v4[20] = swift_task_alloc();
  v10 = sub_20C13BB84();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CB8A4, 0, 0);
}

uint64_t sub_20B5CB8A4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v28 = v0[16];
  v4 = v0[10];
  v5 = v0[11];
  v26 = v0[9];
  v27 = v0[12];
  v6 = v0[7];
  v25 = v0[6];
  v23 = v0[13];
  v24 = v0[4];
  v22 = v0[2];
  sub_20C13B454();
  sub_20C13BB64();
  v7 = *(v2 + 8);
  v7(v1, v3);
  sub_20C13B454();
  sub_20C13BB64();
  v7(v1, v3);
  sub_20C13CA04();
  sub_20C13A334();
  swift_allocObject();
  v0[24] = sub_20C13A314();
  v8 = sub_20C13A324();
  v20 = v9;
  v21 = v8;
  v10 = *(v5 + 16);
  v0[25] = v10;
  v0[26] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v23, v22, v4);
  v11 = *(v6 + 16);
  v0[27] = v11;
  v0[28] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v26, v24, v25);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = (v27 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  *(v14 + 24) = v20;
  (*(v5 + 32))(v14 + v12, v23, v4);
  (*(v6 + 32))(v14 + v13, v26, v25);
  sub_20C137C94();
  v15 = swift_task_alloc();
  v0[29] = v15;
  *(v15 + 16) = "SeymourUI/CatalogWorkoutDetailShelfButtonActionHandling.swift";
  *(v15 + 24) = 61;
  *(v15 + 32) = 2;
  *(v15 + 40) = 374;
  *(v15 + 48) = v28;
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_20B5CBBF0;
  v18 = v0[17];
  v17 = v0[18];

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5DF628, v15, v18);
}

uint64_t sub_20B5CBBF0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_20B5DF5E8;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_20B5CBD40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B5CBD40()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  (*(v0 + 200))(v3, *(v0 + 16), *(v0 + 80));
  v1(v3 + v4[5], v8, v6);
  *(v3 + v4[7]) = v2;
  sub_20C13A484();
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v5, v3 + v4[9], &unk_27C7622A0);
  v9 = v4[10];
  v10 = sub_20C134A44();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  sub_20B52F9E8(v7, v3 + v4[12], &qword_27C76A410);
  *(v3 + v4[6]) = 1;
  *(v3 + v4[8]) = 0;
  v11 = (v3 + v4[11]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + v4[13]);
  sub_20C13CDA4();
  *v12 = 0;
  v12[1] = 0;
  *(v0 + 256) = sub_20C13CD94();
  v14 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5CBF04, v14, v13);
}

uint64_t sub_20B5CBF04()
{
  v1 = *(v0 + 160);

  sub_20B5D5CE4(v1);

  return MEMORY[0x2822009F8](sub_20B5DF6D8, 0, 0);
}

uint64_t sub_20B5CBF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v4[7] = swift_task_alloc();
  v5 = sub_20C132E94();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CC0E0, 0, 0);
}

uint64_t sub_20B5CC0E0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v4);
  sub_20C134324();
  sub_20C132E64();
  v7 = sub_20C1337F4();

  v8 = *(v6 + 8);
  v0[15] = v8;
  v0[16] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = *(v7 + 16);

  if (v9)
  {
    v10 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51180], v10);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[6];
    v15 = sub_20C134324();
    v17 = v16;
    v0[17] = v16;
    sub_20C132E64();
    v0[2] = v14;
    v18 = swift_task_alloc();
    v0[18] = v18;
    v19 = type metadata accessor for TVCatalogWorkoutDetailHeaderShelf();
    v20 = sub_20B5DF0C4(&unk_27C762290, type metadata accessor for TVCatalogWorkoutDetailHeaderShelf);
    *v18 = v0;
    v18[1] = sub_20B5CC3F4;
    v21 = v0[10];
    v22 = v0[5];

    return MEMORY[0x2821AF798](v22, v15, v17, v21, v19, v20);
  }
}

uint64_t sub_20B5CC3F4(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[15];
  v6 = v4[10];
  v7 = v4[8];

  if (v1)
  {
    v5(v6, v7);
    v8 = sub_20B5CC7C8;
  }

  else
  {
    v4[20] = a1;
    v5(v6, v7);
    v8 = sub_20B5CC5A8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20B5CC5A8()
{
  v1 = v0[7];
  sub_20B6C15AC(v0[20], v1);

  v2 = sub_20C135C54();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v0[7], &qword_27C76A410);
    v4 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51180], v4);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[3], v0[7], v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20B5CC7C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B5CC854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v4[7] = swift_task_alloc();
  v5 = sub_20C132E94();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CC9B8, 0, 0);
}

uint64_t sub_20B5CC9B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v4);
  sub_20C134324();
  sub_20C132E64();
  v7 = sub_20C1337F4();

  v8 = *(v6 + 8);
  v0[15] = v8;
  v0[16] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = *(v7 + 16);

  if (v9)
  {
    v10 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51180], v10);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[6];
    v15 = sub_20C134324();
    v17 = v16;
    v0[17] = v16;
    sub_20C132E64();
    v0[2] = v14;
    v18 = swift_task_alloc();
    v0[18] = v18;
    v19 = type metadata accessor for CatalogWorkoutDetailActionsShelf();
    v20 = sub_20B5DF0C4(&unk_27C7623A0, type metadata accessor for CatalogWorkoutDetailActionsShelf);
    *v18 = v0;
    v18[1] = sub_20B5CCCCC;
    v21 = v0[10];
    v22 = v0[5];

    return MEMORY[0x2821AF798](v22, v15, v17, v21, v19, v20);
  }
}

uint64_t sub_20B5CCCCC(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[15];
  v6 = v4[10];
  v7 = v4[8];

  if (v1)
  {
    v5(v6, v7);
    v8 = sub_20B5DF5C0;
  }

  else
  {
    v4[20] = a1;
    v5(v6, v7);
    v8 = sub_20B5DF504;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20B5CCE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CCF50, 0, 0);
}

uint64_t sub_20B5CCF50()
{
  if (*(sub_20C133814() + 16) && (sub_20B65B0BC(v0[4]), (v1 & 1) != 0))
  {
    v2 = v0[8];
    v3 = v0[5];

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient), *(v3 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient + 24));
    sub_20C1367E4();

    sub_20C13A0B4();

    v4 = swift_task_alloc();
    v0[9] = v4;
    *(v4 + 16) = "SeymourUI/CatalogWorkoutDetailShelfButtonActionHandling.swift";
    *(v4 + 24) = 61;
    *(v4 + 32) = 2;
    *(v4 + 40) = 161;
    *(v4 + 48) = v2;
    v5 = swift_task_alloc();
    v0[10] = v5;
    v6 = sub_20C135AE4();
    *v5 = v0;
    v5[1] = sub_20B5CD200;
    v7 = v0[2];

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5D9584, v4, v6);
  }

  else
  {

    v8 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51180], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20B5CD200()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5CD384, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20B5CD384()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5CD400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CD4D0, 0, 0);
}

uint64_t sub_20B5CD4D0()
{
  if (*(sub_20C133814() + 16) && (sub_20B65B0BC(v0[4]), (v1 & 1) != 0))
  {
    v2 = v0[8];
    v3 = v0[5];

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_catalogClient), *(v3 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_catalogClient + 24));
    sub_20C1367E4();

    sub_20C13A0B4();

    v4 = swift_task_alloc();
    v0[9] = v4;
    *(v4 + 16) = "SeymourUI/CatalogWorkoutDetailShelfButtonActionHandling.swift";
    *(v4 + 24) = 61;
    *(v4 + 32) = 2;
    *(v4 + 40) = 161;
    *(v4 + 48) = v2;
    v5 = swift_task_alloc();
    v0[10] = v5;
    v6 = sub_20C135AE4();
    *v5 = v0;
    v5[1] = sub_20B5CD784;
    v7 = v0[2];

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5DF624, v4, v6);
  }

  else
  {

    v8 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51180], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20B5CD784()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5DF5C4, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20B5CD908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_20C137254();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v6[14] = *(v8 + 64);
  v6[15] = swift_task_alloc();
  v9 = sub_20C1344C4();
  v6[16] = v9;
  v10 = *(v9 - 8);
  v6[17] = v10;
  v6[18] = *(v10 + 64);
  v6[19] = swift_task_alloc();
  v11 = sub_20C135C54();
  v6[20] = v11;
  v12 = *(v11 - 8);
  v6[21] = v12;
  v6[22] = *(v12 + 64);
  v6[23] = swift_task_alloc();
  v13 = sub_20C133954();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v6[26] = *(v14 + 64);
  v6[27] = swift_task_alloc();
  v15 = type metadata accessor for PageAlertAction();
  v6[28] = v15;
  v6[29] = *(v15 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CDB6C, 0, 0);
}

uint64_t sub_20B5CDB6C()
{
  v63 = v0[31];
  v53 = v0[30];
  v54 = v0[29];
  v52 = v0[28];
  v1 = v0[27];
  v43 = v0[26];
  v2 = v0[24];
  v3 = v0[25];
  v39 = v2;
  v40 = v1;
  v57 = v0[23];
  v44 = v0[22];
  v4 = v0[21];
  v56 = v0[20];
  v64 = v0[18];
  v65 = v0[17];
  v59 = v0[19];
  v60 = v0[16];
  v61 = v0[15];
  v5 = v0[13];
  v62 = v0[12];
  v42 = v0[10];
  v6 = v0[7];
  v49 = v6;
  v50 = v0[9];
  v48 = v0[6];
  v45 = v0[11];
  v55 = *(v45 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
  v7 = sub_20B5E107C();
  v46 = v8;
  v47 = v7;
  v41 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v48, v2);
  (*(v4 + 16))(v57, v50, v56);
  v51 = *(v65 + 16);
  v51(v59, v6, v60);
  (*(v5 + 16))(v61, v42, v62);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v43 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v11 = *(v65 + 80);
  v12 = (v44 + v11 + v10) & ~v11;
  v13 = (v64 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v41;
  (*(v3 + 32))(v14 + v9, v40, v39);
  (*(v4 + 32))(v14 + v10, v57, v56);
  v58 = *(v65 + 32);
  v58(v14 + v12, v59, v60);
  (*(v5 + 32))(v14 + v13, v61, v62);
  sub_20C132ED4();
  v15 = (v63 + v52[6]);
  *v15 = v47;
  v15[1] = v46;
  *(v63 + v52[5]) = 0;
  v16 = (v63 + v52[7]);
  *v16 = sub_20B5D9188;
  v16[1] = v14;
  __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v45 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
  v17 = sub_20C138D34();
  v19 = v18;
  v20 = swift_allocObject();
  swift_weakInit();
  v51(v59, v49, v60);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v58(v21 + ((v11 + 24) & ~v11), v59, v60);
  sub_20C132ED4();
  v22 = (v53 + v52[6]);
  *v22 = v17;
  v22[1] = v19;
  *(v53 + v52[5]) = 2;
  v23 = (v53 + v52[7]);
  *v23 = sub_20B5D91A0;
  v23[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v24 = *(v54 + 72);
  v25 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v26 = swift_allocObject();
  v0[32] = v26;
  *(v26 + 16) = xmmword_20C14F320;
  v27 = v26 + v25;
  sub_20B5DF20C(v63, v27, type metadata accessor for PageAlertAction);
  sub_20B5DF20C(v53, v27 + v24, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
  v0[2] = sub_20B5E107C();
  v0[3] = v28;
  v0[33] = v28;
  __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
  sub_20B5E107C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14F980;
  v30 = sub_20C134404();
  v32 = v31;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_20B5D91B8();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = sub_20C13C9A4();
  v35 = v34;
  v0[4] = v33;
  v0[5] = v34;

  v0[34] = v35;
  sub_20C13CDA4();
  v0[35] = sub_20C13CD94();
  v37 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5CE170, v37, v36);
}

uint64_t sub_20B5CE170()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[33];
    v3 = v0[34];
    v5 = v0[4];
    v6 = v0[2];
    v7 = v0[32];
    type metadata accessor for DefaultPageAlertPresenter();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 32) = v7;
    *(v8 + 40) = v9;
    *(v8 + 48) = v6;
    *(v8 + 56) = v4;
    *(v8 + 64) = v5;
    *(v8 + 72) = v3;
    *(v8 + 80) = 1;
    *(v8 + 88) = 0;
    v10 = v2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 224);

      v13(v2, v8, &off_2822DD358, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_20B5CE310, 0, 0);
}

uint64_t sub_20B5CE310()
{
  v1 = v0[31];
  sub_20B5DF274(v0[30], type metadata accessor for PageAlertAction);
  sub_20B5DF274(v1, type metadata accessor for PageAlertAction);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20B5CE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_20C137254();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v6[14] = *(v8 + 64);
  v6[15] = swift_task_alloc();
  v9 = sub_20C1344C4();
  v6[16] = v9;
  v10 = *(v9 - 8);
  v6[17] = v10;
  v6[18] = *(v10 + 64);
  v6[19] = swift_task_alloc();
  v11 = sub_20C135C54();
  v6[20] = v11;
  v12 = *(v11 - 8);
  v6[21] = v12;
  v6[22] = *(v12 + 64);
  v6[23] = swift_task_alloc();
  v13 = sub_20C133954();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v6[26] = *(v14 + 64);
  v6[27] = swift_task_alloc();
  v15 = type metadata accessor for PageAlertAction();
  v6[28] = v15;
  v6[29] = *(v15 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CE658, 0, 0);
}

uint64_t sub_20B5CE658()
{
  v63 = v0[31];
  v53 = v0[30];
  v54 = v0[29];
  v52 = v0[28];
  v1 = v0[27];
  v43 = v0[26];
  v2 = v0[24];
  v3 = v0[25];
  v39 = v2;
  v40 = v1;
  v57 = v0[23];
  v44 = v0[22];
  v4 = v0[21];
  v56 = v0[20];
  v64 = v0[18];
  v65 = v0[17];
  v59 = v0[19];
  v60 = v0[16];
  v61 = v0[15];
  v5 = v0[13];
  v62 = v0[12];
  v42 = v0[10];
  v50 = v0[9];
  v6 = v0[7];
  v48 = v0[6];
  v49 = v6;
  v45 = v0[11];
  v55 = *(v45 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
  v7 = sub_20B5E107C();
  v46 = v8;
  v47 = v7;
  v41 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v48, v2);
  (*(v4 + 16))(v57, v50, v56);
  v51 = *(v65 + 16);
  v51(v59, v6, v60);
  (*(v5 + 16))(v61, v42, v62);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v43 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v11 = *(v65 + 80);
  v12 = (v44 + v11 + v10) & ~v11;
  v13 = (v64 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v41;
  (*(v3 + 32))(v14 + v9, v40, v39);
  (*(v4 + 32))(v14 + v10, v57, v56);
  v58 = *(v65 + 32);
  v58(v14 + v12, v59, v60);
  (*(v5 + 32))(v14 + v13, v61, v62);
  sub_20C132ED4();
  v15 = (v63 + v52[6]);
  *v15 = v47;
  v15[1] = v46;
  *(v63 + v52[5]) = 0;
  v16 = (v63 + v52[7]);
  *v16 = sub_20B5DBE60;
  v16[1] = v14;
  __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer), *(v45 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer + 24));
  v17 = sub_20C138D34();
  v19 = v18;
  v20 = swift_allocObject();
  swift_weakInit();
  v51(v59, v49, v60);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v58(v21 + ((v11 + 24) & ~v11), v59, v60);
  sub_20C132ED4();
  v22 = (v53 + v52[6]);
  *v22 = v17;
  v22[1] = v19;
  *(v53 + v52[5]) = 2;
  v23 = (v53 + v52[7]);
  *v23 = sub_20B5DC0E8;
  v23[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v24 = *(v54 + 72);
  v25 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v26 = swift_allocObject();
  v0[32] = v26;
  *(v26 + 16) = xmmword_20C14F320;
  v27 = v26 + v25;
  sub_20B5DF20C(v63, v27, type metadata accessor for PageAlertAction);
  sub_20B5DF20C(v53, v27 + v24, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
  v0[2] = sub_20B5E107C();
  v0[3] = v28;
  v0[33] = v28;
  __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
  sub_20B5E107C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14F980;
  v30 = sub_20C134404();
  v32 = v31;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_20B5D91B8();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = sub_20C13C9A4();
  v35 = v34;
  v0[4] = v33;
  v0[5] = v34;

  v0[34] = v35;
  sub_20C13CDA4();
  v0[35] = sub_20C13CD94();
  v37 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B5CEC68, v37, v36);
}

uint64_t sub_20B5CEC68()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[33];
    v3 = v0[34];
    v5 = v0[4];
    v6 = v0[2];
    v7 = v0[32];
    type metadata accessor for DefaultPageAlertPresenter();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 32) = v7;
    *(v8 + 40) = v9;
    *(v8 + 48) = v6;
    *(v8 + 56) = v4;
    *(v8 + 64) = v5;
    *(v8 + 72) = v3;
    *(v8 + 80) = 1;
    *(v8 + 88) = 0;
    v10 = v2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 224);

      v13(v2, v8, &off_2822DD358, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_20B5DF6B8, 0, 0);
}

uint64_t sub_20B5CEE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C135C54();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v4[10] = swift_task_alloc();
  v6 = sub_20C133154();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v4[14] = swift_task_alloc();
  v7 = sub_20C132E94();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_20C132EE4();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = sub_20C13BB84();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CF0C4, 0, 0);
}

uint64_t sub_20B5CF0C4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[5];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient + 24);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient), v5);
  sub_20C133804();
  v7 = sub_20C134324();
  v9 = v8;
  v0[25] = v8;
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_20B5CF230;
  v11 = v0[21];

  return MEMORY[0x2821ADEC0](v11, v7, v9, v5, v6);
}

uint64_t sub_20B5CF230(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_20B5CFA4C;
  }

  else
  {
    v7 = sub_20B5CF3C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20B5CF3C8()
{
  v50 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  sub_20C133014();
  sub_20C132E64();
  sub_20C133034();
  v8 = *(v2 + 8);
  v8(v1, v3);
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v9 = v0[14];

    sub_20B520158(v9, &qword_27C762AC0);
    v10 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D511B0], v10);
    swift_willThrow();
LABEL_9:

    v32 = v0[1];
LABEL_10:

    return v32();
  }

  v48 = v8;
  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[18];
  v15 = v0[10];
  v16 = v0[6];
  v17 = v0[7];
  v18 = v0[4];
  (*(v0[16] + 32))(v14, v0[14], v0[15]);
  v19 = swift_task_alloc();
  *(v19 + 16) = v18;
  *(v19 + 24) = v14;
  sub_20B6B73F0(sub_20B5D97C8, v12, v15);
  v47 = v13;

  v20 = (*(v17 + 48))(v15, 1, v16);
  v21 = v0[27];
  if (v20 != 1)
  {
    goto LABEL_7;
  }

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[7];
    v24 = sub_20BEDE974(*(v21 + 16), 0);
    v46 = sub_20BEE20FC(&v49, &v24[(*(v23 + 80) + 32) & ~*(v23 + 80)], v22, v21);

    sub_20B583EDC();
    if (v46 != v22)
    {
      __break(1u);
LABEL_7:
      v25 = v0[18];
      v26 = v0[15];
      v27 = v0[10];

      v28 = sub_20C134E24();
      sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51178], v28);
      swift_willThrow();
      sub_20B520158(v27, &qword_27C76A410);
      v30 = v25;
      v31 = v26;
LABEL_8:
      v48(v30, v31);
      goto LABEL_9;
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v49 = v24;
  sub_20B5D5E58(&v49);
  if (!v47)
  {

    if (*(v49 + 2))
    {
      v34 = v0[18];
      v45 = v0[15];
      v35 = v0[9];
      v36 = v0[10];
      v38 = v0[7];
      v37 = v0[8];
      v39 = v0[6];
      (*(v38 + 16))(v37, &v49[(*(v38 + 80) + 32) & ~*(v38 + 80)], v39);

      (*(v38 + 32))(v35, v37, v39);
      sub_20C135C04();
      (*(v38 + 8))(v35, v39);
      sub_20B520158(v36, &qword_27C76A410);
      v48(v34, v45);

      v32 = v0[1];
      goto LABEL_10;
    }

    v40 = v0[18];
    v41 = v0[15];
    v42 = v0[10];

    v43 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51178], v43);
    swift_willThrow();
    sub_20B520158(v42, &qword_27C76A410);
    v30 = v40;
    v31 = v41;
    goto LABEL_8;
  }
}

uint64_t sub_20B5CFA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B5CFB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C135C54();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v4[10] = swift_task_alloc();
  v6 = sub_20C133154();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v4[14] = swift_task_alloc();
  v7 = sub_20C132E94();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_20C132EE4();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = sub_20C13BB84();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5CFDE0, 0, 0);
}

uint64_t sub_20B5CFDE0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[5];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient + 24);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient), v5);
  sub_20C133804();
  v7 = sub_20C134324();
  v9 = v8;
  v0[25] = v8;
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_20B5CFF50;
  v11 = v0[21];

  return MEMORY[0x2821ADEC0](v11, v7, v9, v5, v6);
}

uint64_t sub_20B5CFF50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_20B5DF4F8;
  }

  else
  {
    v7 = sub_20B5D00E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20B5D00E8()
{
  v50 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  sub_20C133014();
  sub_20C132E64();
  sub_20C133034();
  v8 = *(v2 + 8);
  v8(v1, v3);
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v9 = v0[14];

    sub_20B520158(v9, &qword_27C762AC0);
    v10 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D511B0], v10);
    swift_willThrow();
LABEL_9:

    v32 = v0[1];
LABEL_10:

    return v32();
  }

  v48 = v8;
  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[18];
  v15 = v0[10];
  v16 = v0[6];
  v17 = v0[7];
  v18 = v0[4];
  (*(v0[16] + 32))(v14, v0[14], v0[15]);
  v19 = swift_task_alloc();
  *(v19 + 16) = v18;
  *(v19 + 24) = v14;
  sub_20B6B73F0(sub_20B5DF4CC, v12, v15);
  v47 = v13;

  v20 = (*(v17 + 48))(v15, 1, v16);
  v21 = v0[27];
  if (v20 != 1)
  {
    goto LABEL_7;
  }

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[7];
    v24 = sub_20BEDE974(*(v21 + 16), 0);
    v46 = sub_20BEE20FC(&v49, &v24[(*(v23 + 80) + 32) & ~*(v23 + 80)], v22, v21);

    sub_20B583EDC();
    if (v46 != v22)
    {
      __break(1u);
LABEL_7:
      v25 = v0[18];
      v26 = v0[15];
      v27 = v0[10];

      v28 = sub_20C134E24();
      sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51178], v28);
      swift_willThrow();
      sub_20B520158(v27, &qword_27C76A410);
      v30 = v25;
      v31 = v26;
LABEL_8:
      v48(v30, v31);
      goto LABEL_9;
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v49 = v24;
  sub_20B5D5E58(&v49);
  if (!v47)
  {

    if (*(v49 + 2))
    {
      v34 = v0[18];
      v45 = v0[15];
      v35 = v0[9];
      v36 = v0[10];
      v38 = v0[7];
      v37 = v0[8];
      v39 = v0[6];
      (*(v38 + 16))(v37, &v49[(*(v38 + 80) + 32) & ~*(v38 + 80)], v39);

      (*(v38 + 32))(v35, v37, v39);
      sub_20C135C04();
      (*(v38 + 8))(v35, v39);
      sub_20B520158(v36, &qword_27C76A410);
      v48(v34, v45);

      v32 = v0[1];
      goto LABEL_10;
    }

    v40 = v0[18];
    v41 = v0[15];
    v42 = v0[10];

    v43 = sub_20C134E24();
    sub_20B5DF0C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51178], v43);
    swift_willThrow();
    sub_20B520158(v42, &qword_27C76A410);
    v30 = v40;
    v31 = v41;
    goto LABEL_8;
  }
}

uint64_t sub_20B5D076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_20C132CF4();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_20C132CB4();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = sub_20C132D44();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = sub_20C1327F4();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v6[28] = swift_task_alloc();
  v11 = sub_20C133154();
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();
  v12 = sub_20C133594();
  v6[32] = v12;
  v6[33] = *(v12 - 8);
  v6[34] = swift_task_alloc();
  v13 = sub_20C132E94();
  v6[35] = v13;
  v6[36] = *(v13 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v14 = sub_20C137254();
  v6[39] = v14;
  v15 = *(v14 - 8);
  v6[40] = v15;
  v6[41] = *(v15 + 64);
  v6[42] = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v6[43] = v16;
  v6[44] = *(v16 + 64);
  v6[45] = swift_task_alloc();
  v17 = sub_20C1344C4();
  v6[46] = v17;
  v18 = *(v17 - 8);
  v6[47] = v18;
  v6[48] = *(v18 + 64);
  v6[49] = swift_task_alloc();
  v19 = type metadata accessor for PageAlertAction();
  v6[50] = v19;
  v6[51] = *(v19 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v20 = sub_20C13BB84();
  v6[54] = v20;
  v6[55] = *(v20 - 8);
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5D0CB0, 0, 0);
}

uint64_t sub_20B5D0CB0()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v69 = v0[53];
  v70 = v0[52];
  v71 = v0[51];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[46];
  v63 = v0[45];
  v66 = v0[48];
  v67 = v0[44];
  v65 = v0[43];
  v7 = v0[42];
  v57 = v7;
  v58 = v4;
  v68 = v0[50];
  v85 = v0[40];
  v64 = v0[39];
  v82 = v0[36];
  v84 = v0[35];
  v72 = v0[34];
  v76 = v0[33];
  v77 = v0[32];
  v73 = v0[31];
  v74 = v0[30];
  v75 = v0[29];
  v78 = v0[27];
  v79 = v0[28];
  v80 = v0[26];
  v81 = v0[25];
  v8 = v0[13];
  v9 = v0[10];
  v59 = v0[11];
  v60 = v0[12];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v1 + 8))(v2, v3);
  v56 = *(v8 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v56 + 48), *(v56 + 72));
  v10 = sub_20B5E107C();
  v61 = v11;
  v62 = v10;
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v9, v6);
  sub_20B52F9E8(v59, v63, &qword_27C76A410);
  (*(v85 + 16))(v7, v60, v64);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = (v66 + *(v65 + 80) + v13) & ~*(v65 + 80);
  v15 = (v67 + *(v85 + 80) + v14) & ~*(v85 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v5 + 32))(v16 + v13, v58, v6);
  sub_20B5DF134(v63, v16 + v14, &qword_27C76A410);
  (*(v85 + 32))(v16 + v15, v57, v64);
  sub_20C132ED4();
  v17 = (v69 + v68[6]);
  *v17 = v62;
  v17[1] = v61;
  *(v69 + v68[5]) = 0;
  v18 = (v69 + v68[7]);
  *v18 = sub_20B5D959C;
  v18[1] = v16;
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v8 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
  v19 = sub_20C138D34();
  v21 = v20;
  v22 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v23 = (v70 + v68[6]);
  *v23 = v19;
  v23[1] = v21;
  *(v70 + v68[5]) = 2;
  v24 = (v70 + v68[7]);
  *v24 = sub_20B5D95D0;
  v24[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v25 = *(v71 + 72);
  v26 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v27 = swift_allocObject();
  v0[57] = v27;
  *(v27 + 16) = xmmword_20C14F320;
  v28 = v27 + v26;
  sub_20B5DF20C(v69, v28, type metadata accessor for PageAlertAction);
  sub_20B5DF20C(v70, v28 + v25, type metadata accessor for PageAlertAction);
  sub_20C133944();
  sub_20C133014();
  sub_20C133564();
  v29 = *(v74 + 8);
  v29(v73, v75);
  (*(v76 + 8))(v72, v77);
  sub_20C133014();
  sub_20C1351D4();
  sub_20C1330E4();
  (*(v80 + 8))(v78, v81);
  v29(v73, v75);
  if ((*(v82 + 48))(v79, 1, v84) == 1)
  {
    v30 = v0[28];

    sub_20B520158(v30, &qword_27C762AC0);
    v31 = swift_task_alloc();
    v0[63] = v31;
    *v31 = v0;
    v31[1] = sub_20B5D1854;
    v32 = v0[12];
    v34 = v0[10];
    v33 = v0[11];

    return sub_20B5CAB64(v34, v33, v32);
  }

  else
  {
    v36 = v0[23];
    v86 = v0[37];
    v38 = v0[21];
    v37 = v0[22];
    v40 = v0[19];
    v39 = v0[20];
    v42 = v0[17];
    v41 = v0[18];
    v44 = v0[15];
    v43 = v0[16];
    v83 = v0[14];
    v45 = (*(v0[36] + 32))();
    MEMORY[0x20F2EA170](v45);
    sub_20C132CA4();
    sub_20C132C84();
    (*(v41 + 8))(v40, v42);
    v46 = *(v38 + 8);
    v0[58] = v46;
    v0[59] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v37, v39);
    sub_20C132CD4();
    sub_20C132C94();
    (*(v44 + 8))(v43, v83);
    v46(v36, v39);
    sub_20B5DF0C4(&qword_27C762280, MEMORY[0x277CC9428]);
    sub_20C132E74();
    v47 = v0[2];
    v48 = v0[3];
    __swift_project_boxed_opaque_existential_1((v56 + 48), *(v56 + 72));
    sub_20B5E107C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_20C14F980;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_20B5D91B8();
    *(v49 + 32) = v47;
    *(v49 + 40) = v48;
    v50 = sub_20C13C9A4();
    v52 = v51;
    v0[4] = v50;
    v0[5] = v51;

    v0[60] = v52;
    v0[6] = sub_20BAB6038(v86);
    v0[7] = v53;
    v0[61] = v53;
    sub_20C13CDA4();
    v0[62] = sub_20C13CD94();
    v55 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B5D14F8, v55, v54);
  }
}

uint64_t sub_20B5D14F8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[61];
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    v5 = v0[60];
    v6 = v0[4];
    v7 = v0[57];
    type metadata accessor for DefaultPageAlertPresenter();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 32) = v7;
    *(v8 + 40) = v9;
    *(v8 + 48) = v6;
    *(v8 + 56) = v5;
    *(v8 + 64) = v4;
    *(v8 + 72) = v2;
    *(v8 + 80) = 1;
    *(v8 + 88) = 0;
    v10 = v3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 224);

      v13(v3, v8, &off_2822DD358, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_20B5D169C, 0, 0);
}

uint64_t sub_20B5D169C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 192), *(v0 + 160));
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_20B5DF274(v1, type metadata accessor for PageAlertAction);
  sub_20B5DF274(v2, type metadata accessor for PageAlertAction);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20B5D1854()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_20B5D1AF4;
  }

  else
  {
    v2 = sub_20B5D1968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5D1968()
{
  v1 = v0[52];
  v2 = v0[53];
  (*(v0[36] + 8))(v0[38], v0[35]);
  sub_20B5DF274(v1, type metadata accessor for PageAlertAction);
  sub_20B5DF274(v2, type metadata accessor for PageAlertAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_20B5D1AF4()
{
  v2 = v0[52];
  v1 = v0[53];
  (*(v0[36] + 8))(v0[38], v0[35]);
  sub_20B5DF274(v2, type metadata accessor for PageAlertAction);
  sub_20B5DF274(v1, type metadata accessor for PageAlertAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_20B5D1C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_20C132CF4();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_20C132CB4();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = sub_20C132D44();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = sub_20C1327F4();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v6[28] = swift_task_alloc();
  v11 = sub_20C133154();
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();
  v12 = sub_20C133594();
  v6[32] = v12;
  v6[33] = *(v12 - 8);
  v6[34] = swift_task_alloc();
  v13 = sub_20C132E94();
  v6[35] = v13;
  v6[36] = *(v13 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v14 = sub_20C137254();
  v6[39] = v14;
  v15 = *(v14 - 8);
  v6[40] = v15;
  v6[41] = *(v15 + 64);
  v6[42] = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v6[43] = v16;
  v6[44] = *(v16 + 64);
  v6[45] = swift_task_alloc();
  v17 = sub_20C1344C4();
  v6[46] = v17;
  v18 = *(v17 - 8);
  v6[47] = v18;
  v6[48] = *(v18 + 64);
  v6[49] = swift_task_alloc();
  v19 = type metadata accessor for PageAlertAction();
  v6[50] = v19;
  v6[51] = *(v19 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v20 = sub_20C13BB84();
  v6[54] = v20;
  v6[55] = *(v20 - 8);
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5D21C8, 0, 0);
}

uint64_t sub_20B5D21C8()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v69 = v0[53];
  v70 = v0[52];
  v71 = v0[51];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[46];
  v63 = v0[45];
  v66 = v0[48];
  v67 = v0[44];
  v65 = v0[43];
  v7 = v0[42];
  v57 = v7;
  v58 = v4;
  v68 = v0[50];
  v85 = v0[40];
  v64 = v0[39];
  v82 = v0[36];
  v84 = v0[35];
  v72 = v0[34];
  v76 = v0[33];
  v77 = v0[32];
  v73 = v0[31];
  v74 = v0[30];
  v75 = v0[29];
  v78 = v0[27];
  v79 = v0[28];
  v80 = v0[26];
  v81 = v0[25];
  v8 = v0[13];
  v9 = v0[10];
  v59 = v0[11];
  v60 = v0[12];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v1 + 8))(v2, v3);
  v56 = *(v8 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v56 + 48), *(v56 + 72));
  v10 = sub_20B5E107C();
  v61 = v11;
  v62 = v10;
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v9, v6);
  sub_20B52F9E8(v59, v63, &qword_27C76A410);
  (*(v85 + 16))(v7, v60, v64);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = (v66 + *(v65 + 80) + v13) & ~*(v65 + 80);
  v15 = (v67 + *(v85 + 80) + v14) & ~*(v85 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v5 + 32))(v16 + v13, v58, v6);
  sub_20B5DF134(v63, v16 + v14, &qword_27C76A410);
  (*(v85 + 32))(v16 + v15, v57, v64);
  sub_20C132ED4();
  v17 = (v69 + v68[6]);
  *v17 = v62;
  v17[1] = v61;
  *(v69 + v68[5]) = 0;
  v18 = (v69 + v68[7]);
  *v18 = sub_20B5DC924;
  v18[1] = v16;
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer), *(v8 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer + 24));
  v19 = sub_20C138D34();
  v21 = v20;
  v22 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v23 = (v70 + v68[6]);
  *v23 = v19;
  v23[1] = v21;
  *(v70 + v68[5]) = 2;
  v24 = (v70 + v68[7]);
  *v24 = sub_20B5DCAB4;
  v24[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v25 = *(v71 + 72);
  v26 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v27 = swift_allocObject();
  v0[57] = v27;
  *(v27 + 16) = xmmword_20C14F320;
  v28 = v27 + v26;
  sub_20B5DF20C(v69, v28, type metadata accessor for PageAlertAction);
  sub_20B5DF20C(v70, v28 + v25, type metadata accessor for PageAlertAction);
  sub_20C133944();
  sub_20C133014();
  sub_20C133564();
  v29 = *(v74 + 8);
  v29(v73, v75);
  (*(v76 + 8))(v72, v77);
  sub_20C133014();
  sub_20C1351D4();
  sub_20C1330E4();
  (*(v80 + 8))(v78, v81);
  v29(v73, v75);
  if ((*(v82 + 48))(v79, 1, v84) == 1)
  {
    v30 = v0[28];

    sub_20B520158(v30, &qword_27C762AC0);
    v31 = swift_task_alloc();
    v0[63] = v31;
    *v31 = v0;
    v31[1] = sub_20B5D2BBC;
    v32 = v0[12];
    v34 = v0[10];
    v33 = v0[11];

    return sub_20B5CB644(v34, v33, v32);
  }

  else
  {
    v36 = v0[23];
    v86 = v0[37];
    v38 = v0[21];
    v37 = v0[22];
    v40 = v0[19];
    v39 = v0[20];
    v42 = v0[17];
    v41 = v0[18];
    v44 = v0[15];
    v43 = v0[16];
    v83 = v0[14];
    v45 = (*(v0[36] + 32))();
    MEMORY[0x20F2EA170](v45);
    sub_20C132CA4();
    sub_20C132C84();
    (*(v41 + 8))(v40, v42);
    v46 = *(v38 + 8);
    v0[58] = v46;
    v0[59] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v37, v39);
    sub_20C132CD4();
    sub_20C132C94();
    (*(v44 + 8))(v43, v83);
    v46(v36, v39);
    sub_20B5DF0C4(&qword_27C762280, MEMORY[0x277CC9428]);
    sub_20C132E74();
    v47 = v0[2];
    v48 = v0[3];
    __swift_project_boxed_opaque_existential_1((v56 + 48), *(v56 + 72));
    sub_20B5E107C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_20C14F980;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_20B5D91B8();
    *(v49 + 32) = v47;
    *(v49 + 40) = v48;
    v50 = sub_20C13C9A4();
    v52 = v51;
    v0[4] = v50;
    v0[5] = v51;

    v0[60] = v52;
    v0[6] = sub_20BAB6038(v86);
    v0[7] = v53;
    v0[61] = v53;
    sub_20C13CDA4();
    v0[62] = sub_20C13CD94();
    v55 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B5D2A18, v55, v54);
  }
}

uint64_t sub_20B5D2A18()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[61];
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    v5 = v0[60];
    v6 = v0[4];
    v7 = v0[57];
    type metadata accessor for DefaultPageAlertPresenter();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 32) = v7;
    *(v8 + 40) = v9;
    *(v8 + 48) = v6;
    *(v8 + 56) = v5;
    *(v8 + 64) = v4;
    *(v8 + 72) = v2;
    *(v8 + 80) = 1;
    *(v8 + 88) = 0;
    v10 = v3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 224);

      v13(v3, v8, &off_2822DD358, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_20B5DF57C, 0, 0);
}

uint64_t sub_20B5D2BBC()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_20B5DF4A4;
  }

  else
  {
    v2 = sub_20B5DF610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B5D2CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_20B52A9D4;

  return sub_20B5CAB64(a5, a6, a7);
}

uint64_t sub_20B5D2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_20B52AC14;

  return sub_20B5CB644(a5, a6, a7);
}

uint64_t sub_20B5D2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v68 = a4;
  v69 = a5;
  v61 = a3;
  v60 = sub_20C137254();
  v62 = *(v60 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1344C4();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20C135C54();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v67 = v9;
  v71 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C133954();
  v58 = *(v10 - 8);
  v11 = v58[8];
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = v10;
    v16 = v61;
    v17 = v68;
    v64 = result;
    sub_20B5D3EAC(v61, v68, sub_20BF9FAC4);
    v56 = sub_20C13CDF4();
    v18 = *(v56 - 8);
    v55 = *(v18 + 56);
    v57 = v18 + 56;
    v65 = v14;
    v55(v14, 1, 1, v56);
    v19 = v58;
    (v58[2])(&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v10);
    v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v73;
    v21 = v70;
    v49 = v8;
    v22 = *(v70 + 16);
    v53 = v70 + 16;
    v54 = v22;
    v22(v71, v17, v66);
    v47 = v7;
    v23 = *(v20 + 16);
    v50 = v20 + 16;
    v51 = v23;
    v23(v72, v69, v7);
    v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v25 = *(v21 + 80);
    v26 = (v11 + v25 + v24) & ~v25;
    v61 = v6;
    v27 = *(v20 + 80);
    v28 = (v67 + v27 + v26) & ~v27;
    v52 = v25 | v27;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v64;
    (v19[4])(&v29[v24], v46, v48);
    v30 = *(v21 + 32);
    v70 = v21 + 32;
    v58 = v30;
    v31 = v66;
    (v30)(&v29[v26], v71, v66);
    v32 = *(v20 + 32);
    v73 = v20 + 32;
    v48 = v32;
    v33 = v72;
    v34 = v47;
    v32(&v29[v28], v72, v47);

    v35 = v65;
    sub_20B615254(0, 0, v65, &unk_20C14FC60, v29);

    v55(v35, 1, 1, v56);
    v36 = v34;
    v51(v33, v69, v34);
    v37 = v71;
    v38 = v31;
    v54(v71, v68, v31);
    v39 = v62;
    v40 = v59;
    v41 = v60;
    (*(v62 + 16))(v59, v63, v60);
    v42 = (v27 + 40) & ~v27;
    v43 = (v49 + v25 + v42) & ~v25;
    v44 = (v43 + v67 + *(v39 + 80)) & ~*(v39 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    *(v45 + 4) = v64;
    v48(&v45[v42], v72, v36);
    (v58)(&v45[v43], v37, v38);
    (*(v39 + 32))(&v45[v44], v40, v41);
    sub_20B614F94(0, 0, v65, &unk_20C14FC70, v45);
  }

  return result;
}

uint64_t sub_20B5D34D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v68 = a4;
  v69 = a5;
  v61 = a3;
  v60 = sub_20C137254();
  v62 = *(v60 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1344C4();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20C135C54();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v67 = v9;
  v71 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C133954();
  v58 = *(v10 - 8);
  v11 = v58[8];
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = v10;
    v16 = v61;
    v17 = v68;
    v64 = result;
    sub_20B5D3EAC(v61, v68, sub_20BFA039C);
    v56 = sub_20C13CDF4();
    v18 = *(v56 - 8);
    v55 = *(v18 + 56);
    v57 = v18 + 56;
    v65 = v14;
    v55(v14, 1, 1, v56);
    v19 = v58;
    (v58[2])(&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v10);
    v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v73;
    v21 = v70;
    v49 = v8;
    v22 = *(v70 + 16);
    v53 = v70 + 16;
    v54 = v22;
    v22(v71, v17, v66);
    v47 = v7;
    v23 = *(v20 + 16);
    v50 = v20 + 16;
    v51 = v23;
    v23(v72, v69, v7);
    v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v25 = *(v21 + 80);
    v26 = (v11 + v25 + v24) & ~v25;
    v61 = v6;
    v27 = *(v20 + 80);
    v28 = (v67 + v27 + v26) & ~v27;
    v52 = v25 | v27;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v64;
    (v19[4])(&v29[v24], v46, v48);
    v30 = *(v21 + 32);
    v70 = v21 + 32;
    v58 = v30;
    v31 = v66;
    (v30)(&v29[v26], v71, v66);
    v32 = *(v20 + 32);
    v73 = v20 + 32;
    v48 = v32;
    v33 = v72;
    v34 = v47;
    v32(&v29[v28], v72, v47);

    v35 = v65;
    sub_20B615254(0, 0, v65, &unk_20C14FE10, v29);

    v55(v35, 1, 1, v56);
    v36 = v34;
    v51(v33, v69, v34);
    v37 = v71;
    v38 = v31;
    v54(v71, v68, v31);
    v39 = v62;
    v40 = v59;
    v41 = v60;
    (*(v62 + 16))(v59, v63, v60);
    v42 = (v27 + 40) & ~v27;
    v43 = (v49 + v25 + v42) & ~v25;
    v44 = (v43 + v67 + *(v39 + 80)) & ~*(v39 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    *(v45 + 4) = v64;
    v48(&v45[v42], v72, v36);
    (v58)(&v45[v43], v37, v38);
    (*(v39 + 32))(&v45[v44], v40, v41);
    sub_20B614F94(0, 0, v65, &unk_20C14FE20, v45);
  }

  return result;
}

uint64_t sub_20B5D3B68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t))
{
  v5 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C134324();
    v10 = *MEMORY[0x277D52B40];
    v11 = sub_20C136664();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v7, v10, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = v5[5];
    v14 = *MEMORY[0x277D51468];
    v15 = sub_20C134F24();
    (*(*(v15 - 8) + 104))(&v7[v13], v14, v15);
    v16 = v5[6];
    v17 = sub_20C132C14();
    (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
    v18 = v5[8];
    v19 = sub_20C135ED4();
    (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
    v20 = v5[10];
    v21 = *MEMORY[0x277D51768];
    v22 = sub_20C1352E4();
    (*(*(v22 - 8) + 104))(&v7[v20], v21, v22);
    v23 = v5[11];
    v24 = sub_20C136E94();
    (*(*(v24 - 8) + 56))(&v7[v23], 1, 1, v24);
    v25 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v7[v5[7]] = xmmword_20C14F9A0;
    v26 = &v7[v5[9]];
    *v26 = 0;
    *(v26 + 1) = 0;
    *&v7[v5[12]] = v25;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      a4(v9, v7, Strong);
      swift_unknownObjectRelease();
    }

    sub_20B5DF274(v7, type metadata accessor for ShelfMetricAction);
  }

  return result;
}

uint64_t sub_20B5D3EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C133814();
  if (*(v15 + 16) && (v16 = sub_20B65B0BC(a2), (v17 & 1) != 0))
  {
    v42[0] = a3;
    v42[1] = *(*(v15 + 56) + 16 * v16);

    sub_20C135C04();
    sub_20C133894();
    (*(v9 + 8))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    *(inited + 32) = 10;
    v46 = sub_20C132D84();
    sub_20C13DC04();
    *(inited + 80) = 13;
    v19 = sub_20C1367E4();
    v21 = v20;

    v46 = v19;
    v47 = v21;
    sub_20C13DC04();
    v22 = sub_20B6B29D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762260);
    swift_arrayDestroy();
    v23 = *MEMORY[0x277D52B40];
    v24 = sub_20C136664();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v7, v23, v24);
    (*(v25 + 56))(v7, 0, 1, v24);
    v26 = v5[5];
    v27 = *MEMORY[0x277D51488];
    v28 = sub_20C134F24();
    (*(*(v28 - 8) + 104))(&v7[v26], v27, v28);
    v29 = v5[6];
    v30 = sub_20C132C14();
    (*(*(v30 - 8) + 56))(&v7[v29], 1, 1, v30);
    v31 = v5[8];
    v32 = sub_20C135ED4();
    (*(*(v32 - 8) + 56))(&v7[v31], 1, 1, v32);
    v33 = v5[10];
    v34 = *MEMORY[0x277D51768];
    v35 = sub_20C1352E4();
    (*(*(v35 - 8) + 104))(&v7[v33], v34, v35);
    v36 = v5[11];
    v37 = sub_20C136E94();
    (*(*(v37 - 8) + 56))(&v7[v36], 1, 1, v37);
    *&v7[v5[7]] = xmmword_20C14F9B0;
    v38 = &v7[v5[9]];
    *v38 = 0;
    *(v38 + 1) = 0;
    *&v7[v5[12]] = v22;
    v39 = v45;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      (v42[0])(v39, v7, Strong);
      swift_unknownObjectRelease();
    }

    sub_20B5DF274(v7, type metadata accessor for ShelfMetricAction);
    return (*(v43 + 8))(v14, v44);
  }

  else
  {
  }
}

uint64_t sub_20B5D4440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_20C132EE4();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5D4508, 0, 0);
}

uint64_t sub_20B5D4508()
{
  v1 = (v0[3] + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_20C133804();
  v4 = sub_20C134324();
  v6 = v5;
  v0[10] = v5;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_20B5D4610;
  v8 = v0[9];
  v9 = v0[5];
  v10 = v0[2];

  return MEMORY[0x2821ADF10](v10, v8, v9, v4, v6, v2, v3);
}

uint64_t sub_20B5D4610()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5D47E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20B5D47E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B5D484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_20C132EE4();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5D4914, 0, 0);
}

uint64_t sub_20B5D4914()
{
  v1 = (v0[3] + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_20C133804();
  v4 = sub_20C134324();
  v6 = v5;
  v0[10] = v5;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_20B5D4A20;
  v8 = v0[9];
  v9 = v0[5];
  v10 = v0[2];

  return MEMORY[0x2821ADF10](v10, v8, v9, v4, v6, v2, v3);
}

uint64_t sub_20B5D4A20()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5DF604, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20B5D4BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5D4C98, 0, 0);
}

uint64_t sub_20B5D4C98()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_20C135C54();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_20B5D4DCC;
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];

  return sub_20B5CAB64(v8, v6, v7);
}

uint64_t sub_20B5D4DCC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_20B520158(v2, &qword_27C76A410);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5D4F40, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20B5D4F40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B5D4FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5D5044, 0, 0);
}

uint64_t sub_20B5D5044()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_20C135C54();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_20B5D5178;
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];

  return sub_20B5CB644(v8, v6, v7);
}

uint64_t sub_20B5D5178()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_20B520158(v2, &qword_27C76A410);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5DF608, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20B5D52EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v67 = a7;
  v68 = sub_20C137254();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v59 = *(v14 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = &v57 - v15;
  v16 = sub_20C1344C4();
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v16);
  v70 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v18 - 8);
  v71 = &v57 - v19;
  v20 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v69 = a8;
  if (Strong)
  {
    v24 = Strong;
    v57 = a6;
    v58 = a3;
    v25 = a4;
    v26 = a5;
    v27 = *MEMORY[0x277D52B40];
    v28 = sub_20C136664();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v22, v27, v28);
    (*(v29 + 56))(v22, 0, 1, v28);
    v30 = v20[5];
    v31 = *MEMORY[0x277D513F8];
    v32 = sub_20C134F24();
    (*(*(v32 - 8) + 104))(&v22[v30], v31, v32);
    v33 = v20[6];
    v34 = sub_20C132C14();
    (*(*(v34 - 8) + 56))(&v22[v33], 1, 1, v34);
    v35 = v20[8];
    v36 = sub_20C135ED4();
    (*(*(v36 - 8) + 56))(&v22[v35], 1, 1, v36);
    v37 = v20[10];
    v38 = *MEMORY[0x277D51768];
    v39 = sub_20C1352E4();
    (*(*(v39 - 8) + 104))(&v22[v37], v38, v39);
    v40 = v20[11];
    v41 = sub_20C136E94();
    (*(*(v41 - 8) + 56))(&v22[v40], 1, 1, v41);
    v42 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v22[v20[7]] = xmmword_20C14F9C0;
    v43 = &v22[v20[9]];
    *v43 = 0;
    *(v43 + 1) = 0;
    *&v22[v20[12]] = v42;
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v57(v24, v22, v44);
      swift_unknownObjectRelease();
    }

    sub_20B5DF274(v22, type metadata accessor for ShelfMetricAction);

    a5 = v26;
    a4 = v25;
    a3 = v58;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v58 = result;
    v46 = sub_20C13CDF4();
    (*(*(v46 - 8) + 56))(v71, 1, 1, v46);
    v47 = v61;
    v48 = v62;
    (*(v61 + 16))(v70, a3, v62);
    v49 = v63;
    sub_20B52F9E8(a4, v63, &qword_27C76A410);
    v51 = v64;
    v50 = v65;
    v52 = v68;
    (*(v64 + 16))(v65, a5, v68);
    v53 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v54 = (v17 + *(v59 + 80) + v53) & ~*(v59 + 80);
    v55 = (v60 + *(v51 + 80) + v54) & ~*(v51 + 80);
    v56 = swift_allocObject();
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    *(v56 + 4) = v58;
    (*(v47 + 32))(&v56[v53], v70, v48);
    sub_20B5DF134(v49, &v56[v54], &qword_27C76A410);
    (*(v51 + 32))(&v56[v55], v50, v52);
    sub_20B614F94(0, 0, v71, v69, v56);
  }

  return result;
}

uint64_t sub_20B5D59B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t))
{
  v4 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *MEMORY[0x277D52B40];
    v10 = sub_20C136664();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v6, v9, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v12 = v4[5];
    v13 = *MEMORY[0x277D51468];
    v14 = sub_20C134F24();
    (*(*(v14 - 8) + 104))(&v6[v12], v13, v14);
    v15 = v4[6];
    v16 = sub_20C132C14();
    (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
    v17 = v4[8];
    v18 = sub_20C135ED4();
    (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
    v19 = v4[10];
    v20 = *MEMORY[0x277D51768];
    v21 = sub_20C1352E4();
    (*(*(v21 - 8) + 104))(&v6[v19], v20, v21);
    v22 = v4[11];
    v23 = sub_20C136E94();
    (*(*(v23 - 8) + 56))(&v6[v22], 1, 1, v23);
    v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v6[v4[7]] = xmmword_20C14F9A0;
    v25 = &v6[v4[9]];
    *v25 = 0;
    *(v25 + 1) = 0;
    *&v6[v4[12]] = v24;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      a3(v8, v6, Strong);
      swift_unknownObjectRelease();
    }

    sub_20B5DF274(v6, type metadata accessor for ShelfMetricAction);
  }

  return result;
}

uint64_t sub_20B5D5CE4(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 112))(v7, a1, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B5D5E58(void **a1)
{
  v2 = *(sub_20C135C54() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EAC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20B5D5F00(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20B5D5F00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
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
        sub_20C135C54();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C135C54() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B5D62F0(v8, v9, a1, v4);
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
    return sub_20B5D602C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20B5D602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C135C54();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_20B5DF0C4(&qword_27C762288, MEMORY[0x277D51FE0]);
      v26 = sub_20C13C834();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20B5D62F0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_20C135C54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_20B6A07A0(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_20B5D6D18(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20B6A07A0(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_20B6A0714(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_20B5DF0C4(&qword_27C762288, MEMORY[0x277D51FE0]);
      LODWORD(v133) = sub_20C13C834();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_20C13C834() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20BC05740(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_20BC05740((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_20B5D6D18(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20B6A07A0(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_20B6A0714(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_20B5DF0C4(&qword_27C762288, MEMORY[0x277D51FE0]);
    v109 = sub_20C13C834();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_20B5D6D18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_20C135C54();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_20B5DF0C4(&qword_27C762288, MEMORY[0x277D51FE0]);
          LOBYTE(v35) = sub_20C13C834();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_20B5DF0C4(&qword_27C762288, MEMORY[0x277D51FE0]);
        LOBYTE(v22) = sub_20C13C834();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_20B6A08D0(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_20B5D7324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, uint64_t))
{
  v50 = a5;
  v51 = a4;
  v49 = a1;
  v7 = sub_20C135ED4();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for ShelfMetricAction();
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  sub_20B52F9E8(a3, v12, &unk_27C7622D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C7622D0);
    v20 = a2;
    CatalogLockup.metricDestination.getter(v9);
    v21 = sub_20C136664();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = v13[5];
    v23 = *MEMORY[0x277D51488];
    v24 = sub_20C134F24();
    (*(*(v24 - 8) + 104))(&v17[v22], v23, v24);
    v25 = v13[6];
    v26 = sub_20C132C14();
    (*(*(v26 - 8) + 56))(&v17[v25], 1, 1, v26);
    v27 = sub_20C133E44();
    v29 = v28;
    v30 = v13[8];
    v32 = v47;
    v31 = v48;
    (*(v47 + 16))(&v17[v30], v9, v48);
    (*(v32 + 56))(&v17[v30], 0, 1, v31);
    v33 = v13[10];
    v34 = *MEMORY[0x277D51778];
    v35 = sub_20C1352E4();
    (*(*(v35 - 8) + 104))(&v17[v33], v34, v35);
    v36 = v13[11];
    v37 = sub_20C136E94();
    (*(*(v37 - 8) + 56))(&v17[v36], 1, 1, v37);
    v38 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v39 = &v17[v13[7]];
    *v39 = v27;
    v39[1] = v29;
    v40 = &v17[v13[9]];
    *v40 = 0;
    *(v40 + 1) = 0;
    *&v17[v13[12]] = v38;
    v41 = v51;
    v50(v49, v17, v51);
    sub_20B5DF274(v17, type metadata accessor for ShelfMetricAction);
    (*(v32 + 8))(v9, v31);
    a2 = v20;
  }

  else
  {
    sub_20B5D9970(v12, v19, type metadata accessor for ShelfMetricAction);
    v41 = v51;
    v50(v49, v19, v51);
    sub_20B5DF274(v19, type metadata accessor for ShelfMetricAction);
  }

  v42 = v41 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v44 = *(v42 + 8);
    ObjectType = swift_getObjectType();
    (*(v44 + 40))(v41, a2, ObjectType, v44);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B5D785C(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = v7;

  return sub_20C137C94();
}

void sub_20B5D7900(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, char *), uint64_t a4, char *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_20B583FB8(v6, 0);
}

uint64_t sub_20B5D799C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C132FE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C133154();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row;
  sub_20B5D8060(v32);
  v12 = v32[9];
  *(v11 + 128) = v32[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v33;
  v13 = v32[5];
  *(v11 + 64) = v32[4];
  *(v11 + 80) = v13;
  v14 = v32[7];
  *(v11 + 96) = v32[6];
  *(v11 + 112) = v14;
  v15 = v32[1];
  *v11 = v32[0];
  *(v11 + 16) = v15;
  v16 = v32[3];
  *(v11 + 32) = v32[2];
  *(v11 + 48) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  v18 = sub_20C135AE4();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession;
  v20 = sub_20C134D54();
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_multiUserEligibilitySubscription) = 0;
  v21 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer;
  v22 = sub_20C138894();
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_config;
  v24 = sub_20C134104();
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_serviceSubscription;
  v26 = sub_20C135734();
  (*(*(v26 - 8) + 56))(v2 + v25, 1, 1, v26);
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_matchingDeviceSubscriberAccount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceSubscriberAccount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceCloudAccount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_eventHub) = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bag) = *&v31[0];
  v27 = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks) = MEMORY[0x277D84FA0];
  (*(v5 + 104))(v7, *MEMORY[0x277CC9830], v4);
  sub_20C132FF4();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_calendar, v10, v30);
  sub_20C13B704();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_multiUserEligibilityObserver) = sub_20C13B6F4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_accountHasSupportedDevice) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_accountHasWatch) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions) = v27;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v31, v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanStringBuilder) = *&v31[0];
  return v2;
}

double sub_20B5D8060(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_20B5D8080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = (&v67 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = (&v67 - v5);
  v6 = sub_20C1344C4();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135AE4();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x28223BE20](v13);
  v78 = &v67 - v14;
  v15 = type metadata accessor for ButtonAction.ActionType(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  v24 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ButtonAction(0);
  v74 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v75 = v29;
  v76 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = (&v67 - v30);
  sub_20B5DF20C(a1, v26, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B5D9970(v26, v31, type metadata accessor for ButtonAction);
    v32 = *(v27 + 28);
    sub_20B5DF20C(v31 + v32, v23, type metadata accessor for ButtonAction.ActionType);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 64);
      sub_20B5DAA24(v31, &unk_282290318, &unk_20C14FBE8, &unk_2822902F0, &unk_20C14FBD8);
      sub_20B5DF274(v31, type metadata accessor for ButtonAction);
      v36 = sub_20C137254();
      (*(*(v36 - 8) + 8))(&v23[v35], v36);
      sub_20B520158(&v23[v34], &qword_27C76A410);
      v37 = type metadata accessor for StartWorkoutSessionRequest;
      v38 = v23;
    }

    else
    {
      v67 = v23;
      v39 = v31;
      sub_20B5DF20C(v31 + v32, v18, type metadata accessor for ButtonAction.ActionType);
      v40 = v82;
      swift_beginAccess();
      sub_20B700440(v21, v18);
      sub_20B5DF274(v21, type metadata accessor for ButtonAction.ActionType);
      swift_endAccess();
      sub_20B598280(129);
      v41 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
      swift_beginAccess();
      sub_20B52F9E8(v40 + v41, v12, &qword_27C7620C8);
      v43 = v72;
      v42 = v73;
      if ((*(v72 + 48))(v12, 1, v73))
      {
        sub_20B520158(v12, &qword_27C7620C8);
        v44 = 0;
        v45 = 0;
      }

      else
      {
        v46 = v68;
        (*(v43 + 16))(v68, v12, v42);
        sub_20B520158(v12, &qword_27C7620C8);
        v47 = v69;
        sub_20C135AA4();
        (*(v43 + 8))(v46, v42);
        v44 = sub_20C134324();
        v45 = v48;
        (*(v70 + 8))(v47, v71);
      }

      v49 = *MEMORY[0x277D52408];
      v50 = sub_20C135ED4();
      v51 = *(v50 - 8);
      v52 = v77;
      (*(v51 + 104))(v77, v49, v50);
      (*(v51 + 56))(v52, 0, 1, v50);
      v53 = *MEMORY[0x277D51768];
      v54 = sub_20C1352E4();
      v55 = *(v54 - 8);
      v56 = v79;
      (*(v55 + 104))(v79, v53, v54);
      (*(v55 + 56))(v56, 0, 1, v54);
      v57 = v78;
      sub_20B5A8768(v39, v44, v45, v52, 0, 0, v56, &unk_282290750, v78, sub_20B5DF58C, &unk_282290728, sub_20B5DF58C, &unk_2822906D8, sub_20B5DF58C, &unk_2822905C0, sub_20B5DF58C, &unk_282290598, sub_20B5D99D8, sub_20B5AE8D0, sub_20BF9FAC4, &unk_282290570, sub_20B5D9954, &unk_282290700, sub_20B5DF58C, sub_20BF9FAC4, &OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarkClient, sub_20BF9FAC4, &unk_282290638, sub_20B5DF630, &unk_282290660, &unk_282290688, sub_20B5DF508, &unk_2822906B0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient, &unk_2822905E8, &unk_282290610, sub_20B5DF634, sub_20B5DF638, &unk_2822904D0, sub_20B5DF630, &unk_2822904F8, &unk_282290520, sub_20B5DF508, &unk_282290548, sub_20B5D98D0, sub_20B5D98D8, &unk_282290480, &unk_2822904A8, sub_20B5D9890, sub_20B5D98A8);

      sub_20B520158(v56, &unk_27C765D50);
      sub_20B520158(v52, &unk_27C7621D0);
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v76;
      sub_20B5DF20C(v39, v76, type metadata accessor for ButtonAction);
      v60 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v61 = (v75 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      sub_20B5D9970(v59, v62 + v60, type metadata accessor for ButtonAction);
      *(v62 + v61) = v58;
      v63 = v81;
      v64 = sub_20C137CB4();
      v65 = swift_allocObject();
      *(v65 + 16) = sub_20B5D8D40;
      *(v65 + 24) = v62;

      v64(sub_20B52347C, v65);

      (*(v80 + 8))(v57, v63);
      sub_20B5DF274(v39, type metadata accessor for ButtonAction);
      v37 = type metadata accessor for ButtonAction.ActionType;
      v38 = v67;
    }
  }

  else
  {
    v37 = type metadata accessor for ShelfItemAction;
    v38 = v26;
  }

  return sub_20B5DF274(v38, v37);
}

uint64_t sub_20B5D8D40(uint64_t a1)
{
  v3 = *(type metadata accessor for ButtonAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20B5AD914(a1, v4);
}

uint64_t sub_20B5D8DDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StartWorkoutSessionRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v7);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_20B52A9D4;

  return sub_20B5C67A0(v16, a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_20B5D8FC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StartWorkoutSessionRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5C150C(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_20B5D91B8()
{
  result = qword_27C762250;
  if (!qword_27C762250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762250);
  }

  return result;
}

uint64_t sub_20B5D920C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C133954() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C135C54() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C1344C4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52A9D4;

  return sub_20B5D4440(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_20B5D93C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1344C4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C135C54() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5D4BF8(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_20B5D9600(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1344C4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5D2CD0(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_20B5D9900()
{
  result = qword_27C7622F8;
  if (!qword_27C7622F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7622F8);
  }

  return result;
}

uint64_t sub_20B5D9970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B5D9A20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, __n128))
{
  v4 = *(sub_20C137254() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + v6);
  v11.n128_u64[0] = *(v2 + v7);
  v12 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return a2(a1, v9, v2 + v5, v10, v12, v11);
}

unint64_t sub_20B5D9BA8()
{
  result = qword_27C762310;
  if (!qword_27C762310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762310);
  }

  return result;
}

unint64_t sub_20B5D9D0C()
{
  result = qword_27C762348;
  if (!qword_27C762348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C762330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762348);
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

void sub_20B5D9EF0(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceCloudAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceCloudAccount) = *a1;
  v4 = v2;
}

void sub_20B5D9F60(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_deviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5D9FA0(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_matchingDeviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_matchingDeviceSubscriberAccount) = *a1;
  v4 = v2;
}

uint64_t sub_20B5DA0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, void, void, void, char *, void, void, char *, void, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0) - 8);
  v14 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50) - 8);
  v17 = (v15 + *(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a6(a1, a2, *(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5), &v6[v14], *&v6[v15], *&v6[v15 + 8], &v6[v17], *&v6[v18], *&v6[v18 + 8], a3, a4, a5);
}

uint64_t sub_20B5DA27C(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void, unint64_t, void, void, unint64_t, void, void))
{
  v5 = *(type metadata accessor for ButtonAction(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0) - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50) - 8);
  v12 = (v10 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + v9, *(v2 + v10), *(v2 + v10 + 8), v2 + v12, *(v2 + v13), *(v2 + v13 + 8));
}

void sub_20B5DA45C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(sub_20C138B94() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_20C138894() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  sub_20B5C11B0(a1, v4 + v10, v4 + v13, *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

void sub_20B5DA6EC(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_deviceCloudAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_deviceCloudAccount) = *a1;
  v4 = v2;
}

void sub_20B5DA730(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_deviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_deviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DA774(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_matchingDeviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_matchingDeviceSubscriberAccount) = *a1;
  v4 = v2;
}

uint64_t sub_20B5DAA24(uint64_t (*a1)(), uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v77 = a3;
  v78 = a5;
  v75 = a2;
  v76 = a4;
  v86 = a1;
  v5 = sub_20C13BB84();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v71 - v9;
  v10 = sub_20C137254();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v82 = *(v14 - 8);
  v15 = *(v82 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v87 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  started = type metadata accessor for StartWorkoutSessionRequest();
  v81 = *(started - 8);
  v20 = *(v81 + 64);
  v21 = MEMORY[0x28223BE20](started - 8);
  v83 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  v24 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ButtonAction(0);
  sub_20B5DF20C(v86 + *(v27 + 28), v26, type metadata accessor for ButtonAction.ActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
    v47 = *&v26[v46[12]];
    v48 = v46[16];
    v49 = v46[20];
    v86 = type metadata accessor for StartWorkoutSessionRequest;
    sub_20B5D9970(v26, v23, type metadata accessor for StartWorkoutSessionRequest);
    v72 = v18;
    sub_20B5DF134(&v26[v48], v18, &qword_27C76A410);
    v50 = v80;
    v79 = v23;
    v75 = v11;
    v77 = *(v80 + 32);
    v51 = &v26[v49];
    v52 = v88;
    v53 = v10;
    v71 = v10;
    v77(v88, v51, v10);
    v54 = sub_20C13CDF4();
    (*(*(v54 - 8) + 56))(v89, 1, 1, v54);
    v55 = v83;
    sub_20B5DF20C(v23, v83, type metadata accessor for StartWorkoutSessionRequest);
    sub_20B52F9E8(v18, v87, &qword_27C76A410);
    v56 = v84;
    (*(v50 + 16))(v84, v52, v53);
    v57 = (*(v81 + 80) + 40) & ~*(v81 + 80);
    v58 = (v20 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (*(v82 + 80) + v58 + 8) & ~*(v82 + 80);
    v60 = (v15 + *(v50 + 80) + v59) & ~*(v50 + 80);
    v61 = swift_allocObject();
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    v62 = v86;
    *(v61 + 4) = v85;
    sub_20B5D9970(v55, &v61[v57], v62);
    *&v61[v58] = v47;
    sub_20B5DF134(v87, &v61[v59], &qword_27C76A410);
    v63 = v56;
    v64 = v71;
    v77(&v61[v60], v63, v71);

    sub_20B6383D0(0, 0, v89, v78, v61);

    (*(v50 + 8))(v88, v64);
    v45 = v72;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 12)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 64);
    v86 = type metadata accessor for StartWorkoutSessionRequest;
    v79 = v23;
    sub_20B5D9970(v26, v23, type metadata accessor for StartWorkoutSessionRequest);
    v72 = v18;
    sub_20B5DF134(&v26[v30], v18, &qword_27C76A410);
    v32 = v80;
    v78 = *(v80 + 32);
    v33 = &v26[v31];
    v34 = v88;
    v35 = v10;
    v78(v88, v33, v10);
    v36 = sub_20C13CDF4();
    (*(*(v36 - 8) + 56))(v89, 1, 1, v36);
    v37 = v83;
    sub_20B5DF20C(v79, v83, type metadata accessor for StartWorkoutSessionRequest);
    sub_20B52F9E8(v18, v87, &qword_27C76A410);
    v38 = v84;
    v39 = v35;
    (*(v32 + 16))(v84, v34, v35);
    v40 = (*(v81 + 80) + 40) & ~*(v81 + 80);
    v41 = (v20 + *(v82 + 80) + v40) & ~*(v82 + 80);
    v42 = (v15 + *(v32 + 80) + v41) & ~*(v32 + 80);
    v43 = swift_allocObject();
    *(v43 + 2) = 0;
    *(v43 + 3) = 0;
    v44 = v86;
    *(v43 + 4) = v85;
    sub_20B5D9970(v37, &v43[v40], v44);
    sub_20B5DF134(v87, &v43[v41], &qword_27C76A410);
    v78(&v43[v42], v38, v39);

    sub_20B6383D0(0, 0, v89, v77, v43);

    (*(v32 + 8))(v88, v39);
    v45 = v72;
LABEL_5:
    sub_20B520158(v45, &qword_27C76A410);
    v65 = type metadata accessor for StartWorkoutSessionRequest;
    v66 = v79;
    return sub_20B5DF274(v66, v65);
  }

  sub_20C13B534();
  v67 = sub_20C13BB74();
  v68 = sub_20C13D1D4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_20B517000, v67, v68, "[CatalogWorkoutDetailActionsShelf] Unexpected action type for start workout shelf item action", v69, 2u);
    MEMORY[0x20F2F6A40](v69, -1, -1);
  }

  (*(v73 + 8))(v7, v74);
  v65 = type metadata accessor for ButtonAction.ActionType;
  v66 = v26;
  return sub_20B5DF274(v66, v65);
}

uint64_t objectdestroy_93Tm()
{
  v1 = *(type metadata accessor for StartWorkoutSessionRequest() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v18 = *(v5 + 64);
  v8 = sub_20C137254();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  swift_unknownObjectRelease();

  v12 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v13 = sub_20C1344C4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = sub_20C135C54();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  v16 = (v7 + v18 + v10) & ~v10;
  (*(v9 + 8))(v0 + v16, v8);

  return MEMORY[0x2821FE8E8](v0, v16 + v11, v2 | v6 | v10 | 7);
}

uint64_t sub_20B5DB5B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StartWorkoutSessionRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v7);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_20B52AC14;

  return sub_20B5C73E4(v16, a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_97Tm()
{
  v1 = *(type metadata accessor for StartWorkoutSessionRequest() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v18 = *(v5 + 64);
  v8 = sub_20C137254();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  swift_unknownObjectRelease();

  v12 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v13 = sub_20C1344C4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = sub_20C135C54();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  v16 = (v7 + v18 + v10) & ~v10;
  (*(v9 + 8))(v0 + v16, v8);

  return MEMORY[0x2821FE8E8](v0, v16 + v11, v2 | v6 | v10 | 7);
}

uint64_t sub_20B5DBA30(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StartWorkoutSessionRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5C2148(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_115Tm()
{
  v22 = sub_20C133954();
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v21 = sub_20C135C54();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v6 = (((v2 + 24) & ~v2) + v3 + v5) & ~v5;
  v18 = v6;
  v7 = *(v4 + 64);
  v20 = sub_20C1344C4();
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v19 = sub_20C137254();
  v12 = *(v19 - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v17 = *(v12 + 64);
  v15 = v2 | v5 | v9 | v13;

  (*(v1 + 8))(v0 + ((v2 + 24) & ~v2), v22);
  (*(v4 + 8))(v0 + v18, v21);
  (*(v8 + 8))(v0 + v10, v20);
  (*(v12 + 8))(v0 + v14, v19);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v15 | 7);
}

uint64_t sub_20B5DBE78(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_20C133954() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20C135C54() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20C1344C4() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_20C137254() - 8);
  v14 = *(v2 + 16);
  v15 = v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return a2(a1, v14, v2 + v5, v2 + v8, v2 + v11, v15);
}

uint64_t objectdestroy_119Tm()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5DC178(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C133954() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C135C54() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C1344C4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5D484C(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_122Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v20 = a1(0);
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v19 = sub_20C135C54();
  v8 = *(v19 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = a2(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v10 + v11 + v14) & ~v14;
  v18 = *(v13 + 64);
  v16 = v5 | v9 | v14;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v20);
  (*(v8 + 8))(v2 + v10, v19);
  (*(v13 + 8))(v2 + v15, v12);

  return MEMORY[0x2821FE8E8](v2, v15 + v18, v16 | 7);
}

uint64_t sub_20B5DC528(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1344C4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C135C54() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5D4FA4(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_137Tm()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v18 = *(v6 + 64);
  v9 = sub_20C137254();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v17 = *(v10 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_20C135C54();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  v14 = v3 | v7 | v11;
  v15 = (v8 + v18 + v11) & ~v11;
  (*(v10 + 8))(v0 + v15, v9);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_20B5DC958(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = *(sub_20C1344C4() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v13 = (v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_20C137254() - 8);
  return sub_20B5D52EC(a1, *(v4 + 16), v4 + v10, v4 + v13, v4 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80)), a2, a3, a4);
}

uint64_t objectdestroy_143Tm()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v18 = *(v6 + 64);
  v9 = sub_20C137254();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v17 = *(v10 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_20C135C54();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  v14 = v3 | v7 | v11;
  v15 = (v8 + v18 + v11) & ~v11;
  (*(v10 + 8))(v0 + v15, v9);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_20B5DCD2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1344C4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B5D2D84(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_189Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 16) & ~v6;
  v8 = *(v5 + 64);

  v9 = sub_20C135ED4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_20C1352E4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x2821FE8E8](v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t objectdestroy_167Tm()
{
  v1 = sub_20C137254();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v7 = *(v6 + 80);
  v8 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_20C135C54();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_20B5DD724(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, unint64_t, void, unint64_t, double))
{
  v5 = *(sub_20C1344C4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137254() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  return a2(a1, *(v2 + 16), v2 + v6, v2 + v9, *(v2 + v10), v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 8) & ~*(v11 + 80)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_242Tm()
{
  v1 = (type metadata accessor for ButtonAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50) - 8);
  v10 = *(v9 + 80);
  v48 = v8 + v10 + 16;
  v11 = *(v9 + 64);

  v12 = v0 + v3 + v1[9];
  type metadata accessor for ButtonAction.ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v11;
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v20 = sub_20C134284();
        (*(*(v20 - 8) + 8))(v12, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200);

        goto LABEL_43;
      }

      if (EnumCaseMultiPayload == 12)
      {
        type metadata accessor for StartWorkoutSessionRequest();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
        }

        else
        {
          v32 = sub_20C1344C4();
          (*(*(v32 - 8) + 8))(v12, v32);
        }

        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
        v33 = *(v47 + 48);
        v34 = sub_20C135C54();
        v35 = *(v34 - 8);
        if (!(*(v35 + 48))(v12 + v33, 1, v34))
        {
          (*(v35 + 8))(v12 + v33, v34);
        }

        v36 = *(v47 + 64);
        v37 = sub_20C137254();
        (*(*(v37 - 8) + 8))(v12 + v36, v37);
        goto LABEL_43;
      }

      if (EnumCaseMultiPayload != 13)
      {
        goto LABEL_43;
      }

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
      v16 = sub_20C132C14();
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        type metadata accessor for StartWorkoutSessionRequest();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
        }

        else
        {
          v26 = sub_20C1344C4();
          (*(*(v26 - 8) + 8))(v12, v26);
        }

        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
        v27 = *(v46 + 64);
        v28 = sub_20C135C54();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(v12 + v27, 1, v28))
        {
          (*(v29 + 8))(v12 + v27, v28);
        }

        v30 = *(v46 + 80);
        v31 = sub_20C137254();
        (*(*(v31 - 8) + 8))(v12 + v30, v31);
        goto LABEL_43;
      }

      if (EnumCaseMultiPayload == 8)
      {

        goto LABEL_43;
      }

      v14 = sub_20C138B94();
      (*(*(v14 - 8) + 8))(v12, v14);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
      v16 = sub_20C138894();
    }

    (*(*(v16 - 8) + 8))(v12 + v15, v16);
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v19 = sub_20C134014();
        break;
      case 4:
        v19 = sub_20C133954();
        break;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_43;
    }

    (*(*(v19 - 8) + 8))(v12, v19);
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_43;
      }

LABEL_14:

      goto LABEL_43;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
    v21 = *(v45 + 48);
    v22 = sub_20C138B94();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v12 + v21, 1, v22))
    {
      (*(v23 + 8))(v12 + v21, v22);
    }

    v24 = *(v45 + 64);
    v25 = sub_20C138894();
    v44 = *(v25 - 8);
    v7 = (v4 + v6 + 16) & ~v6;
    if (!(*(v44 + 48))(v12 + v24, 1, v25))
    {
      (*(v44 + 8))(v12 + v24, v25);
    }
  }

  else
  {
    v17 = sub_20C135814();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v12, 1, v17))
    {
      (*(v18 + 8))(v12, v17);
    }
  }

LABEL_43:
  v38 = v48 & ~v10;

  v39 = sub_20C135ED4();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v0 + v7, 1, v39))
  {
    (*(v40 + 8))(v0 + v7, v39);
  }

  v41 = sub_20C1352E4();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v0 + v38, 1, v41))
  {
    (*(v42 + 8))(v0 + v38, v41);
  }

  return MEMORY[0x2821FE8E8](v0, ((v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | v10 | 7);
}

uint64_t objectdestroy_256Tm()
{
  v1 = sub_20C138B94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C138894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t objectdestroy_153Tm()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B5DE598(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20C1344C4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137254() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_20BAA536C(a1, a2, v9, v10, v2 + v6, v11);
}

uint64_t objectdestroy_177Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = *(v3 + 80);
  v4 = (v19 + 24) & ~v19;
  v5 = *(v3 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  v12 = *(v11 + 80);
  v13 = (((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  v17 = *(v11 + 64);

  (*(v3 + 8))(v1 + v4, v18);
  (*(v7 + 8))(v1 + v9, v6);

  v14 = sub_20C135C54();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v1 + v13, 1, v14))
  {
    (*(v15 + 8))(v1 + v13, v14);
  }

  return MEMORY[0x2821FE8E8](v1, v13 + v17, v19 | v8 | v12 | 7);
}

uint64_t sub_20B5DE8E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, unint64_t, unint64_t, void, unint64_t, double)@<X1>, _BYTE *a3@<X8>)
{
  v8 = *(sub_20C135AE4() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C137254() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410) - 8);
  result = a2(a1, *(v3 + 16), v3 + v9, v3 + v12, *(v3 + v13), v3 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 8) & ~*(v14 + 80)), *(v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
  if (!v4)
  {
    *a3 = result & 1;
  }

  return result;
}

void sub_20B5DEAF0(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_deviceCloudAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_deviceCloudAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEB34(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_deviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_deviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEB78(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_matchingDeviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_matchingDeviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEC7C(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceCloudAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceCloudAccount) = *a1;
  v4 = v2;
}

void sub_20B5DECC0(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_deviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DED04(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_matchingDeviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_matchingDeviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEE08(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceCloudAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceCloudAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEE4C(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEE90(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_matchingDeviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_matchingDeviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEF94(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceCloudAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceCloudAccount) = *a1;
  v4 = v2;
}

void sub_20B5DEFD8(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceSubscriberAccount) = *a1;
  v4 = v2;
}

void sub_20B5DF01C(void **a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_matchingDeviceSubscriberAccount);
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_matchingDeviceSubscriberAccount) = *a1;
  v4 = v2;
}

id sub_20B5DF090()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t sub_20B5DF0C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B5DF134(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B5DF20C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B5DF274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B5DF2D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B5DF33C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5DF3DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20B5DF704(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_onVolumeChanged];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView;
  type metadata accessor for SliderView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_stackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_styleProvider];
  strcpy(&v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_styleProvider], "speaker.fill");
  v14[13] = 0;
  *(v14 + 7) = -5120;
  strcpy(v14 + 16, "speaker.3.fill");
  v14[31] = -18;
  *(v14 + 2) = xmmword_20C14FE80;
  *(v14 + 6) = 0x4024000000000000;
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_timerProvider];
  v16 = sub_20C13AD04();
  v17 = MEMORY[0x277D4F358];
  v15[3] = v16;
  v15[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_20C13ACF4();
  v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_isTracking] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_route] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeCommitTimer] = 0;
  v18 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController;
  v19 = [objc_allocWithZone(MEMORY[0x277CD6100]) init];
  v20 = [objc_allocWithZone(MEMORY[0x277CD60F0]) initWithDataSource_];

  *&v4[v18] = v20;
  v63.receiver = v4;
  v63.super_class = type metadata accessor for VolumeSlider();
  v21 = objc_msgSendSuper2(&v63, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = *&v21[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController];
  v23 = v21;
  [v22 setDelegate_];
  v24 = *&v23[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView];
  v25 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView;
  v59 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = &v24[OBJC_IVAR____TtC9SeymourUI10SliderView_onValueChanged];
  v28 = *&v24[OBJC_IVAR____TtC9SeymourUI10SliderView_onValueChanged];
  *v27 = sub_20B5E0E98;
  v27[1] = v26;
  v29 = v24;

  sub_20B583ECC(v28);

  v30 = *&v23[v25];
  v31 = v23;
  v32 = v30;
  v33 = sub_20C0D7EF8();

  [v31 addGestureRecognizer_];
  v34 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_stackView;
  [*&v31[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_stackView] setAxis_];
  [*&v31[v34] setAlignment_];
  [v31 addSubview_];
  v35 = &v31[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_styleProvider];
  v36 = [objc_opt_self() configurationWithPointSize_];

  v37 = v36;
  v38 = sub_20C13C914();

  v39 = objc_opt_self();
  v62 = [v39 systemImageNamed:v38 withConfiguration:v37];

  v40 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v41 = sub_20C13C914();

  v61 = v37;
  v42 = [v39 systemImageNamed:v41 withConfiguration:v37];

  v43 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [*&v31[v34] addArrangedSubview_];
  [*&v31[v34] addArrangedSubview_];
  [*&v31[v34] addArrangedSubview_];
  [*&v31[v34] setCustomSpacing:v40 afterView:v35[5]];
  [*&v31[v34] setCustomSpacing:*&v59[v23] afterView:v35[6]];
  sub_20B5E010C();
  v60 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C14FE90;
  v45 = [*&v31[v34] leadingAnchor];
  v46 = [v31 leadingAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v44 + 32) = v47;
  v48 = [*&v31[v34] trailingAnchor];
  v49 = [v31 trailingAnchor];

  v50 = [v48 constraintEqualToAnchor_];
  *(v44 + 40) = v50;
  v51 = [*&v31[v34] topAnchor];
  v52 = [v31 topAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v44 + 48) = v53;
  v54 = [*&v31[v34] bottomAnchor];
  v55 = [v31 bottomAnchor];

  v56 = [v54 constraintEqualToAnchor_];
  *(v44 + 56) = v56;
  sub_20B51C88C(0, &qword_281100500);
  v57 = sub_20C13CC54();

  [v60 activateConstraints_];

  return v31;
}

void sub_20B5DFDF8(char a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_20B5E03B0(a1 & 1, a2);
  }
}

void sub_20B5DFEB0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VolumeSlider();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = &selRef_addVolumeDisplay_;
  }

  else
  {
    v2 = &selRef_removeVolumeDisplay_;
  }

  v3 = [objc_opt_self() sharedInstance];
  [v3 *v2];
}

void sub_20B5DFFA4(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_route;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_route);
  if (v4)
  {
    if (a1)
    {
      sub_20B51C88C(0, &qword_27C762500);
      v5 = v4;
      v6 = a1;
      v7 = sub_20C13D5F4();

      if (v7)
      {
        return;
      }

      v4 = *(v1 + v3);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  v9 = [objc_allocWithZone(MEMORY[0x277CD6100]) init];
  v10 = [objc_allocWithZone(MEMORY[0x277CD60F0]) initWithDataSource_];

  v11 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController);
  *(v1 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController) = v10;
  v13 = v10;

  [v13 setDelegate_];
  [*(v1 + v11) updateVolumeValue];

  sub_20B5E010C();
}

void sub_20B5E010C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController;
  v3 = [*(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController) isVolumeControlAvailable];
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView);
  if (v3)
  {
    [*(v1 + v2) volumeValue];
    v6 = v5;
    v7 = v5 < 0.0;
    v8 = 0.0;
    if (!v7)
    {
      v8 = v6;
    }

    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = OBJC_IVAR____TtC9SeymourUI10SliderView_value;
    if (v9 != *&v4[OBJC_IVAR____TtC9SeymourUI10SliderView_value])
    {
      v11 = *&v4[OBJC_IVAR____TtC9SeymourUI10SliderView_elapsedTrackWidthConstraint];
      [v4 bounds];
      [v11 setConstant_];

      v12 = swift_allocObject();
      *(v12 + 16) = v4;
      v13 = vabdd_f64(*&v4[v10], v9) * 0.25;
      if (v13 > 0.1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0.1;
      }

      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_20B5E0E88;
      *(v16 + 24) = v12;
      aBlock[4] = sub_20B5E0E90;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor;
      v17 = _Block_copy(aBlock);
      v18 = v4;

      [v15 animateWithDuration:4 delay:v17 options:0 animations:v14 completion:0.0];

      _Block_release(v17);
      *&v4[v10] = v9;
    }

    v19 = OBJC_IVAR____TtC9SeymourUI10SliderView_isEnabled;
    v4[OBJC_IVAR____TtC9SeymourUI10SliderView_isEnabled] = 1;
    v20 = sub_20C0D7EF8();
    [v20 setEnabled_];
  }

  else
  {
    sub_20C0D89B8(0, 0.0);
    v21 = OBJC_IVAR____TtC9SeymourUI10SliderView_isEnabled;
    v4[OBJC_IVAR____TtC9SeymourUI10SliderView_isEnabled] = 0;
    v22 = sub_20C0D7EF8();
    [v22 setEnabled_];
  }
}

id sub_20B5E03B0(char a1, double a2)
{
  v3 = v2;
  v6 = a1 & 1;
  v7 = sub_20C13C4A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_isTracking;
  if (v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_isTracking] != v6)
  {
    if (a1)
    {
      CGAffineTransformMakeScale(&v29, 1.05, 1.05);
      v14 = *&v29.a;
      v13 = *&v29.c;
      v15 = *&v29.tx;
    }

    else
    {
      v13 = xmmword_20C14FEA0;
      v14 = xmmword_20C14FEB0;
      v15 = 0uLL;
    }

    *&v29.a = v14;
    *&v29.c = v13;
    *&v29.tx = v15;
    [v3 setTransform_];
    v16 = *&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_stackView];
    if (a1)
    {
      v17 = [objc_opt_self() labelColor];
    }

    else
    {
      v17 = 0;
    }

    [v16 setTintColor_];

    v3[v12] = a1 & 1;
  }

  v18 = *&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_onVolumeChanged];
  if (v18)
  {

    v18(v19);
    sub_20B583ECC(v18);
  }

  v20 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeCommitTimer;
  v21 = *&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeCommitTimer];
  v22 = &off_277D9A000;
  if (a1)
  {
    if (!v21)
    {
      v23 = *&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_timerProvider + 24];
      v28[1] = *&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_timerProvider + 32];
      v28[0] = __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_timerProvider], v23);
      *v11 = 0;
      (*(v8 + 104))(v11, *MEMORY[0x277D85168], v7);
      sub_20B51C88C(0, &qword_281100530);
      v24 = sub_20C13D374();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v25 = sub_20C13AE04();

      v22 = &off_277D9A000;

      (*(v8 + 8))(v11, v7);

      *&v3[v20] = v25;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v21)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20C13D3D4();
      swift_unknownObjectRelease();
    }

    *&v3[v20] = 0;
    swift_unknownObjectRelease();
    v26 = *(*&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView] + OBJC_IVAR____TtC9SeymourUI10SliderView_value);
    *&v26 = v26;
    [*&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController] setVolumeValue_];
  }

  *&v9 = a2;
  return [*&v3[OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController] v22[108]];
}

void sub_20B5E0730()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView);

    v3 = *&v2[OBJC_IVAR____TtC9SeymourUI10SliderView_value];
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController);

      *&v7 = v3;
      LODWORD(v8) = 1.0;
      [v6 setVolume:v7 withNotificationDelay:v8];
    }
  }
}

id sub_20B5E0810()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSlider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_20B5E0B80(uint64_t a1, int a2)
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

uint64_t sub_20B5E0BC8(uint64_t result, int a2, int a3)
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

void sub_20B5E0C24()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_onVolumeChanged);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView;
  type metadata accessor for SliderView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_stackView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_styleProvider;
  strcpy((v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_styleProvider), "speaker.fill");
  *(v6 + 13) = 0;
  *(v6 + 14) = -5120;
  strcpy((v6 + 16), "speaker.3.fill");
  *(v6 + 31) = -18;
  *(v6 + 32) = xmmword_20C14FE80;
  *(v6 + 48) = 0x4024000000000000;
  v7 = (v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_timerProvider);
  v8 = sub_20C13AD04();
  v9 = MEMORY[0x277D4F358];
  v7[3] = v8;
  v7[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_20C13ACF4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_isTracking) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_route) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeCommitTimer) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI12VolumeSlider_volumeController;
  v11 = [objc_allocWithZone(MEMORY[0x277CD6100]) init];
  v12 = [objc_allocWithZone(MEMORY[0x277CD60F0]) initWithDataSource_];

  *(v0 + v10) = v12;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B5E0DF8()
{
  if ((*(*(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView) + OBJC_IVAR____TtC9SeymourUI10SliderView_currentState) & 1) == 0)
  {
    sub_20B5E010C();
    v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_onVolumeChanged);
    if (v1)
    {

      v1(v2);

      sub_20B583ECC(v1);
    }
  }
}

uint64_t sub_20B5E0EB0(uint64_t a1, int a2)
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

uint64_t sub_20B5E0EF8(uint64_t result, int a2, int a3)
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

uint64_t sub_20B5E0F88()
{
  v0 = sub_20C138CC4();

  return v0;
}

uint64_t sub_20B5E10E8()
{
  v0 = sub_20C138CB4();

  return v0;
}

char *sub_20B5E128C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  v14 = objc_opt_self();
  v15 = *MEMORY[0x277D76940];
  v16 = [v14 preferredFontForTextStyle_];
  [v13 setFont_];

  [v13 setAllowsDefaultTighteningForTruncation_];
  v17 = [objc_opt_self() whiteColor];
  [v13 setTextColor_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  *&v5[v12] = v13;
  v18 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_bottomFocusGuide;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_20C132964();
  v23 = v22;

  if (_UISolariumEnabled())
  {
    v24 = [v14 smu:*MEMORY[0x277D76918] preferredFontForTextStyle:1024 variant:0xE000000000000000];
  }

  else
  {
    v24 = [v14 preferredFontForTextStyle_];
  }

  v25 = v24;
  v26 = _UISolariumEnabled();
  v27 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v28 = TVButtonTextContentView.init(title:)(v21, v23);
  v29 = v28;
  if (v25)
  {
    [*&v28[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v30 = objc_allocWithZone(type metadata accessor for TVButton());
  v31 = sub_20BB87F6C(v29, v26, 0, v30, 0.0, 0.0, 0.0, 0.0);

  v32 = sub_20B9E1660(1uLL, 0);
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton;
  *&v5[OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton] = v32;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v34 = *&v5[v33];
    sub_20B9DDC1C(15.0, 20.0, 15.0, 20.0);

    v35 = *&v5[v33];
    *&v35[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4028000000000000;
    v36 = v35;
    sub_20B9DE3E4();
  }

  v85.receiver = v5;
  v85.super_class = type metadata accessor for TVFilterResultActionsCell();
  v37 = objc_msgSendSuper2(&v85, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = *&v37[OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_bottomFocusGuide];
  v39 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_bottomFocusGuide;
  v83 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_bottomFocusGuide;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C14F580;
  v41 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton;
  v42 = *&v37[OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton];
  *(v40 + 32) = v42;
  v43 = v37;
  v44 = v38;
  v45 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v46 = sub_20C13CC54();

  [v44 setPreferredFocusEnvironments_];

  v47 = v43;
  v48 = *&v37[v39];
  v49 = v47;
  [v49 addLayoutGuide_];
  [*&v37[v41] addTarget:v49 action:sel_sortButtonTapped forControlEvents:0x2000];
  [v49 addSubview_];
  v50 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_titleLabel;
  [v49 addSubview_];
  v84 = objc_opt_self();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C14FF90;
  v52 = [*&v49[v50] leadingAnchor];
  v53 = [v49 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v51 + 32) = v54;
  v55 = [*&v49[v50] centerYAnchor];
  v56 = [v49 centerYAnchor];

  v57 = [v55 constraintEqualToAnchor_];
  *(v51 + 40) = v57;
  v58 = [*&v49[v50] trailingAnchor];
  v59 = [*&v37[v41] leadingAnchor];
  v60 = [v58 constraintLessThanOrEqualToAnchor_];

  *(v51 + 48) = v60;
  v61 = [*&v37[v41] trailingAnchor];
  v62 = [v49 trailingAnchor];

  v63 = [v61 constraintEqualToAnchor_];
  *(v51 + 56) = v63;
  v64 = [*&v37[v41] topAnchor];
  v65 = [v49 topAnchor];

  v66 = [v64 constraintEqualToAnchor_];
  *(v51 + 64) = v66;
  v67 = [*&v37[v41] bottomAnchor];
  v68 = [v49 bottomAnchor];

  v69 = [v67 constraintEqualToAnchor_];
  *(v51 + 72) = v69;
  v70 = [*&v37[v83] bottomAnchor];
  v71 = [v49 bottomAnchor];

  v72 = [v70 &selRef:v71 alertControllerReleasedDictationButton:? + 5];
  *(v51 + 80) = v72;
  v73 = [*&v37[v83] leadingAnchor];
  v74 = [v49 leadingAnchor];

  v75 = [v73 &selRef:v74 alertControllerReleasedDictationButton:? + 5];
  *(v51 + 88) = v75;
  v76 = [*&v37[v83] trailingAnchor];
  v77 = [v49 trailingAnchor];

  v78 = [v76 &selRef:v77 alertControllerReleasedDictationButton:? + 5];
  *(v51 + 96) = v78;
  v79 = [*&v37[v83] heightAnchor];
  v80 = [v79 constraintEqualToConstant_];

  *(v51 + 104) = v80;
  sub_20B5E29D0();
  v81 = sub_20C13CC54();

  [v84 activateConstraints_];

  return v49;
}

uint64_t sub_20B5E1D54()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v10);
    *(&v13 - 4) = 0;
    *(&v13 - 24) = 1;
    *(&v13 - 2) = v7;
    *(&v13 - 1) = v9;
    v11 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v11)
    {
      v12 = v11;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20B5E1F80()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = v10;
    v7[24] = 64;
    v11 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v11);
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v7;
    *(&v16 - 1) = v9;
    v12 = *(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v13 = v10;
    v14 = [v12 indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E275C);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

id sub_20B5E21D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterResultActionsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFilterResultActionsCell()
{
  result = qword_27C762538;
  if (!qword_27C762538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B5E22E0()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B5E238C()
{
  if (!qword_281103340)
  {
    type metadata accessor for ShelfCellItemInfo();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_281103340);
    }
  }
}

uint64_t sub_20B5E23E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B5E2430@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B5E2488(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B5E24EC(unint64_t a1)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x17)
  {
    v2 = v1;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v5 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

    v6 = TVButtonTextContentView.init(title:)(v3, v4);
    v7 = *&v6[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
    v8 = objc_opt_self();
    v9 = *MEMORY[0x277D76940];
    v10 = v7;
    v11 = [v8 preferredFontForTextStyle_];
    [v10 setFont_];

    v12 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton);
    v13 = v6;
    sub_20BB88C24(v13, v12);

    v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_titleLabel);
    v15 = sub_20C13C914();
    [v14 setText_];
  }
}

uint64_t sub_20B5E267C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5E26EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5E2760(uint64_t a1)
{
  v2 = type metadata accessor for ShelfItemAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B5E27CC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setAllowsDefaultTighteningForTruncation_];
  v6 = [objc_opt_self() whiteColor];
  [v4 setTextColor_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_bottomFocusGuide;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B5E29D0()
{
  result = qword_281100500;
  if (!qword_281100500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281100500);
  }

  return result;
}

uint64_t sub_20B5E2A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20B5E2A88()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762558);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20C14F980;
    v4 = *MEMORY[0x277CD8950];
    *(v3 + 32) = *MEMORY[0x277CD8950];
    v5 = objc_allocWithZone(MEMORY[0x277CD89D8]);
    type metadata accessor for NLTagScheme(0);
    v6 = v4;
    v7 = sub_20C13CC54();

    v8 = [v5 initWithTagSchemes_];

    v9 = *(v0 + 16);
    *(v0 + 16) = v8;
    v2 = v8;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

void *sub_20B5E2B78()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5E2E18();
  *v5 = sub_20C13D374();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_20C13C584();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = sub_20B5E2A88();
    v9 = sub_20C13C914();
    [v8 setString_];

    v14 = 0;
    MEMORY[0x28223BE20](v10);
    *&v13[-16] = &v14;
    v12 = v11;
    sub_20C13D5B4();

    [*(v1 + 16) setString_];
    if (v14)
    {
      return &unk_282287100;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B5E2DB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a1)
  {
    return 1;
  }

  sub_20C13C954();
  v5 = sub_20C132F44();

  result = 1;
  if (v5 == 2)
  {
    *a4 = 1;
    return 0;
  }

  return result;
}

unint64_t sub_20B5E2E18()
{
  result = qword_281100530;
  if (!qword_281100530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281100530);
  }

  return result;
}

id sub_20B5E2E94(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PhoneSessionWatchDiscoveryView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = v1;
  [v4 bounds];
  v9 = sub_20BF6C784(v3, v5, v6, v7, v8);
  if (v9)
  {
    v10 = 14.0;
  }

  else
  {
    v10 = 50.0;
  }

  sub_20C078A14(v9, MEMORY[0x277D84F90], a1);
  [*&v4[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton] setContentEdgeInsets_];

  return [v4 setNeedsUpdateConstraints];
}

id sub_20B5E2FF0(uint64_t a1, double a2, double a3)
{
  v7 = *&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton];
  [v3 convertPoint:v7 toCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  [v7 frame];
  v14.x = v9;
  v14.y = v11;
  if (CGRectContainsPoint(v15, v14))
  {
    return v7;
  }

  v13 = *&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView];
  [v3 convertPoint:v13 toCoordinateSpace:{a2, a3}];
  return [v13 hitTest:a1 withEvent:?];
}

id sub_20B5E3214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionWatchDiscoveryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B5E3368(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView);
  if (*(a1 + 8))
  {
    type metadata accessor for RemoteBrowsingDiscoveryPresenter(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = *(a1 + 64);
    v7 = sub_20C13C914();
    v8 = objc_opt_self();
    if (v6)
    {
      v9 = [v8 smm:v7 systemImageNamed:?];
    }

    else
    {
      v9 = [v8 imageNamed:v7 inBundle:v5 compatibleWithTraitCollection:0];
    }

    v13 = v9;

    [v3 setImage_];
    v10 = &selRef_stopAnimating;
    v11 = 0.0;
    v12 = 1.0;
  }

  else
  {
    v10 = &selRef_startAnimating;
    v11 = 1.0;
    v12 = 0.0;
  }

  [v3 setAlpha_];
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView);
  [v14 setAlpha_];
  [v14 *v10];
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView);
  v16 = [v3 image];
  if (v16)
  {

    v17 = 0;
  }

  else
  {
    v17 = [v14 isAnimating] ^ 1;
  }

  [v15 setHidden_];
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel);
  v19 = sub_20C13C914();
  [v18 setText_];

  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel);
  v21 = sub_20C13C914();
  [v20 setText_];

  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton);
  v23 = sub_20C13C914();
  [v22 setTitle:v23 forState:0];

  return [v22 setContentEdgeInsets_];
}

void sub_20B5E35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v18 = sub_20B5E4144;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B7B548C;
  v17 = &block_descriptor_39;
  v11 = _Block_copy(&v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v18 = sub_20B5E4150;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B5E3874;
  v17 = &block_descriptor_45;
  v13 = _Block_copy(&v14);

  [v8 animateWithDuration:v11 animations:v13 completion:0.25];
  _Block_release(v13);
  _Block_release(v11);
}

void sub_20B5E37B4(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAlpha_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton);

    [v5 setUserInteractionEnabled_];
  }
}

uint64_t sub_20B5E3874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_20B5E38C8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 88) = v3;
  aBlock[4] = sub_20B5E40D4;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_28;
  v7 = _Block_copy(aBlock);
  sub_20B5E40E0(a1, v10);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_20B5E413C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B5E3874;
  v10[3] = &block_descriptor_32;
  v9 = _Block_copy(v10);

  [v2 animateWithDuration:v7 animations:v9 completion:0.25];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_20B5E3AA4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView);

      v4 = sub_20C13C914();
      v5 = [objc_opt_self() systemImageNamed_];

      [v3 setImage_];
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel);

    v9 = sub_20C13C914();
    [v8 setText_];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel);

    v13 = sub_20C13C914();
    [v12 setText_];
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton);

    v17 = sub_20C13C914();
    [v16 setTitle:v17 forState:0];
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = *(v18 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton);

    [v20 setContentEdgeInsets_];
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v23 = *(v21 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView);

    [v23 setAlpha_];
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView);

    [v26 setAlpha_];
  }
}

void sub_20B5E3DB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView);

    [v2 stopAnimating];
  }
}

void sub_20B5E3E2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_messageStackView;
    v2 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel;
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_messageStackView) removeArrangedSubview_];
    [*&v3[v2] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint] setConstant_];
    [*&v3[v1] setCustomSpacing:*&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView] afterView:10.0];
    v4 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView;
    [*&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView] setCustomSpacing:*&v3[v1] afterView:10.0];
    [*&v3[v4] setCustomSpacing:*&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton] afterView:15.0];
    [*&v3[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_productPlacementView] setHidden_];
    [v3 layoutIfNeeded];
  }
}

uint64_t sub_20B5E3F7C()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_productPlacementView;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_productPlacementView);
  v3 = *(v1 + 8);
  v4 = v2;
  return sub_20B7F9F58(v2, v3);
}

void sub_20B5E3FC8()
{
  [v0 layoutIfNeeded];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_20B5E40CC;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20B7B548C;
  v4[3] = &block_descriptor_0;
  v3 = _Block_copy(v4);

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

char *sub_20B5E4178(uint64_t a1)
{
  v2 = v1;
  v216 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v3 - 8);
  v213 = &v208 - v4;
  v5 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_landscapeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_portraitConstraints] = v5;
  v6 = &v1[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_previousBounds];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView;
  v8 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v215 = v7;
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v212 = *MEMORY[0x277D76918];
  v11 = *MEMORY[0x277D74420];
  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v212 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v214 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v14 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v15 = swift_initStackObject();
  v16 = MEMORY[0x277D74430];
  *(v15 + 16) = v214;
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = v11;
  v18 = v14;
  v19 = v17;
  v20 = sub_20B6B134C(v15);
  swift_setDeallocating();
  sub_20B520158(v15 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v20;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v21 = sub_20C13C744();

  v22 = [v12 fontDescriptorByAddingAttributes_];

  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v22 size:0.0];

  [v10 setFont_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v10 setTextColor_];

  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setTextAlignment_];
  v26 = v10;
  LODWORD(v27) = 1148846080;
  [v26 setContentCompressionResistancePriority:0 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v28];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v214 = v9;
  *&v2[v9] = v26;
  v29 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v31 = [v23 preferredFontForTextStyle_];
  [v30 setFont_];

  v32 = objc_opt_self();
  v33 = [v32 labelColor];
  [v30 setTextColor_];

  [v30 setTextAlignment_];
  v34 = v30;
  LODWORD(v35) = 1132068864;
  [v34 setContentCompressionResistancePriority:1 forAxis:v35];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];

  v211 = v29;
  *&v2[v29] = v34;
  v36 = [v32 whiteColor];
  type metadata accessor for RoundedButton();
  v37 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v37 setTitle:0 forState:0];
  v38 = v37;
  v39 = [v38 titleLabel];
  if (v39)
  {
    v40 = v39;
    [v39 setAdjustsFontForContentSizeCategory_];
  }

  v41 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton;
  sub_20BD4F054(0, 0, 1, 0);
  [v38 setTintColor_];

  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = [v32 systemBackgroundColor];
  [v38 setTintColor_];

  v210 = v41;
  *&v2[v41] = v38;
  v43 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView;
  v44 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v45) = 1148846080;
  [v44 setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [v44 setContentCompressionResistancePriority:1 forAxis:v46];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v2[v43] = v44;
  v47 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView;
  v48 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v48 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = v47;
  *&v2[v47] = v48;
  v50 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint;
  *&v2[v50] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v51 = v216;
  *&v2[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_presenter] = v216;
  sub_20C0134C0(*(v51 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_platform), v218);
  v52 = v219;
  v53 = v220;
  __swift_project_boxed_opaque_existential_1(v218, v219);
  v54 = *(v53 + 136);

  v55 = v54(v52, v53);
  v56 = &v2[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_productPlacementView];
  *v56 = v55;
  *(v56 + 1) = v57;
  __swift_destroy_boxed_opaque_existential_1(v218);
  v209 = v56;
  [*v56 setHidden_];
  v58 = *&v2[v43];
  v59 = sub_20C13C914();
  v60 = [objc_opt_self() systemImageNamed_];

  [v58 setImage_];
  v61 = *&v2[v43];
  v62 = objc_opt_self();
  v63 = v61;
  v64 = [v62 configurationWithPointSize:4 weight:47.0];
  [v63 setPreferredSymbolConfiguration_];

  v65 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_catalogWorkout;
  v66 = *&v2[v43];
  v67 = sub_20C1344B4();
  v212 = v65;
  if (v69)
  {
    if (v67 == 2)
    {
      v70 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
      goto LABEL_8;
    }
  }

  else
  {
    sub_20B583F4C(v67, v68, 0);
  }

  v70 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
LABEL_8:
  v71 = v70;
  [v66 setTintColor_];

  v72 = v49;
  [*&v2[v49] addSubview_];
  [*&v2[v49] addSubview_];
  [*&v2[v43] setAlpha_];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v74 = swift_allocObject();
  v208 = xmmword_20C150040;
  *(v74 + 16) = xmmword_20C150040;
  v75 = *&v2[v49];
  v76 = *&v2[v214];
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  v77 = *&v2[v211];
  *(v74 + 48) = v77;
  v78 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B5E5C28();
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = sub_20C13CC54();

  v83 = [v78 initWithArrangedSubviews_];

  [v83 setAlignment_];
  [v83 setAxis_];
  [v83 setTranslatesAutoresizingMaskIntoConstraints_];
  v84 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_messageStackView;
  *&v2[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_messageStackView] = v83;
  v215 = v73;
  v85 = swift_allocObject();
  v86 = *&v2[v210];
  *(v85 + 16) = v208;
  *(v85 + 32) = v83;
  *(v85 + 40) = v86;
  v87 = *v209;
  *(v85 + 48) = *v209;
  v88 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v89 = v83;
  v90 = v86;
  v91 = v87;
  v92 = sub_20C13CC54();

  v93 = [v88 initWithArrangedSubviews_];

  [v93 setAlignment_];
  [v93 setAxis_];
  [v93 setTranslatesAutoresizingMaskIntoConstraints_];
  v94 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView;
  *&v2[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView] = v93;
  [*&v2[v84] setCustomSpacing:*&v2[v72] afterView:13.0];
  [*&v2[v84] setCustomSpacing:*&v2[v214] afterView:8.0];
  [*&v2[v94] setCustomSpacing:*&v2[v84] afterView:23.0];
  v95 = type metadata accessor for PhoneSessionWatchDiscoveryView();
  v217.receiver = v2;
  v217.super_class = v95;
  v96 = objc_msgSendSuper2(&v217, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_project_boxed_opaque_existential_1((v216 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v216 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
  v97 = v96;
  v98 = v213;
  sub_20C13B184();
  v99 = sub_20C135174();
  v100 = *(v99 - 8);
  if ((*(v100 + 48))(v98, 1, v99) == 1)
  {
    sub_20B520158(v98, &unk_27C76BC00);
  }

  else
  {
    v101 = sub_20C1350F4();
    (*(v100 + 8))(v98, v99);
    v102 = v101;
    if (v101 != 4)
    {
      goto LABEL_12;
    }
  }

  v102 = 1;
LABEL_12:
  sub_20B59046C(v102, 4u, v218);
  v103 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel;
  v104 = *(v97 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel);
  v105 = sub_20C13C914();
  [v104 setText_];

  v106 = *(v97 + v103);
  v107 = sub_20C1344B4();
  if (v109)
  {
    if (v107 == 2)
    {
      v110 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
      goto LABEL_17;
    }
  }

  else
  {
    sub_20B583F4C(v107, v108, 0);
  }

  v110 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
LABEL_17:
  v111 = v110;
  [v106 setTextColor_];

  v112 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel;
  v113 = *(v97 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel);
  v114 = sub_20C13C914();
  sub_20B5E5C74(v218);
  [v113 setText_];

  [*(v97 + v112) setNumberOfLines_];
  [*(v97 + v112) setAdjustsFontSizeToFitWidth_];
  [*(v97 + v112) setAllowsDefaultTighteningForTruncation_];
  [*(v97 + v112) setMinimumScaleFactor_];
  v115 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton;
  v116 = *(v97 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton);
  v117 = sub_20C1344B4();
  if (v119)
  {
    if (v117 == 2)
    {
      v120 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
      goto LABEL_22;
    }
  }

  else
  {
    sub_20B583F4C(v117, v118, 0);
  }

  v120 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
LABEL_22:
  v121 = v120;
  [v116 setBackgroundColor_];

  v122 = qword_27C7609B8;
  v123 = *(v97 + v115);
  if (v122 != -1)
  {
    swift_once();
  }

  v124 = sub_20C13C914();
  [v123 setTitle:v124 forState:0];

  [*(v97 + v115) addTarget:v97 action:sel_didTapStartStandaloneButton_ forControlEvents:64];
  v125 = *(v97 + v115);
  sub_20BD4F054(0, 0, 1, 0);

  [*(v97 + v115) setContentEdgeInsets_];
  *&v214 = v115;
  [*(v97 + v115) setUserInteractionEnabled_];
  v213 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView;
  [*(v97 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView) startAnimating];
  v126 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView;
  v127 = *(v97 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackView);
  v128 = v97;
  [v128 addSubview_];
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_20C150050;
  v130 = [*&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_messageStackView] widthAnchor];
  v131 = [v128 &selRef_traitCollection + 6];
  v132 = [v130 constraintLessThanOrEqualToAnchor:v131 multiplier:0.5];

  *(v129 + 32) = v132;
  v133 = [*(v97 + v126) leadingAnchor];
  v134 = [v128 safeAreaLayoutGuide];

  v135 = [v134 leadingAnchor];
  v136 = [v133 constraintGreaterThanOrEqualToAnchor_];

  *(v129 + 40) = v136;
  v137 = [*(v97 + v126) trailingAnchor];
  v138 = [v128 safeAreaLayoutGuide];

  v139 = [v138 trailingAnchor];
  v140 = [v137 constraintLessThanOrEqualToAnchor_];

  *(v129 + 48) = v140;
  v141 = [*(v97 + v126) centerYAnchor];
  v142 = [v128 centerYAnchor];

  v143 = [v141 constraintEqualToAnchor_];
  *(v129 + 56) = v143;
  v144 = [*&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_productPlacementView] widthAnchor];
  v145 = [v144 constraintEqualToConstant_];

  *(v129 + 64) = v145;
  *&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_landscapeConstraints] = v129;

  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_20C14FE90;
  v147 = [*(v97 + v126) leadingAnchor];
  v148 = [v128 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v149 = [v147 constraintEqualToAnchor:v148 constant:*&qword_27C799F40];

  *(v146 + 32) = v149;
  v150 = [*(v97 + v126) trailingAnchor];
  v151 = [v128 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v152 = [v150 constraintEqualToAnchor:v151 constant:-*&qword_27C799F50];

  *(v146 + 40) = v152;
  v153 = v214;
  v154 = [*(v97 + v214) leadingAnchor];
  v155 = [*(v97 + v126) leadingAnchor];
  v156 = [v154 constraintEqualToAnchor_];

  *(v146 + 48) = v156;
  v157 = [*(v97 + v153) trailingAnchor];
  v158 = [*(v97 + v126) trailingAnchor];
  v159 = [v157 &selRef:v158 alertControllerReleasedDictationButton:? + 5];

  *(v146 + 56) = v159;
  *&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_portraitConstraints] = v146;

  v160 = [*(v97 + v126) centerYAnchor];
  v161 = [v128 centerYAnchor];

  v162 = [v160 &selRef:v161 alertControllerReleasedDictationButton:? + 5];
  v163 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint;
  v164 = *&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint];
  *&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint] = v162;

  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_20C150060;
  v166 = [*(v97 + v126) centerXAnchor];
  v167 = [v128 &selRef_handleMenuButtonTapped + 2];

  v168 = [v166 &selRef:v167 alertControllerReleasedDictationButton:? + 5];
  *(v165 + 32) = v168;
  v169 = *&v128[v163];
  *(v165 + 40) = v169;
  v170 = *(v97 + v126);
  v171 = v169;
  v172 = [v170 topAnchor];
  v173 = [v128 safeAreaLayoutGuide];

  v174 = [v173 topAnchor];
  v175 = [v172 constraintGreaterThanOrEqualToAnchor:v174 constant:4.0];

  *(v165 + 48) = v175;
  v176 = [*(v97 + v126) bottomAnchor];
  v177 = [v128 safeAreaLayoutGuide];

  v178 = [v177 bottomAnchor];
  v179 = [v176 constraintLessThanOrEqualToAnchor:v178 constant:-4.0];

  *(v165 + 56) = v179;
  v180 = v213;
  v181 = [*&v213[v97] &selRef_handleMenuButtonTapped + 2];
  v182 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView;
  v183 = [*&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView] &selRef_handleMenuButtonTapped + 2];
  v184 = [v181 &selRef:v183 alertControllerReleasedDictationButton:? + 5];

  *(v165 + 64) = v184;
  v185 = [*&v180[v97] centerYAnchor];
  v186 = [*&v128[v182] centerYAnchor];
  v187 = [v185 &selRef:v186 alertControllerReleasedDictationButton:? + 5];

  *(v165 + 72) = v187;
  v188 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView;
  v189 = [*&v128[OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView] centerXAnchor];
  v190 = [*&v128[v182] centerXAnchor];
  v191 = [v189 &selRef:v190 alertControllerReleasedDictationButton:? + 5];

  *(v165 + 80) = v191;
  v192 = [*&v128[v188] centerYAnchor];
  v193 = [*&v128[v182] centerYAnchor];
  v194 = [v192 &selRef:v193 alertControllerReleasedDictationButton:? + 5];

  *(v165 + 88) = v194;
  v195 = [*&v128[v182] heightAnchor];
  v196 = [*&v128[v188] heightAnchor];
  v197 = [v195 &selRef:v196 alertControllerReleasedDictationButton:? + 5];

  *(v165 + 96) = v197;
  v198 = [v128 traitCollection];
  v199 = v128;
  [v199 bounds];
  v204 = sub_20BF6C784(v198, v200, v201, v202, v203);
  if (v204)
  {
    v205 = 14.0;
  }

  else
  {
    v205 = 50.0;
  }

  if (v204)
  {
    v206 = 8.0;
  }

  else
  {
    v206 = 50.0;
  }

  sub_20C078A14(v204, v165, 0);

  [*(v97 + v214) setContentEdgeInsets_];

  [v199 setAlpha_];
  *(v216 + 40) = &off_2822963F8;
  swift_unknownObjectWeakAssign();

  return v199;
}