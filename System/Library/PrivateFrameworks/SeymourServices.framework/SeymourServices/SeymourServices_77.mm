uint64_t sub_22763AD88()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22763AEA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763AEA4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22763AD88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B9C, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22763B1AC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22763B26C, 0, 0);
}

uint64_t sub_22763B26C()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_22709A15C();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = &type metadata for TrainerIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAD8, &qword_22768E238);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_22763B688;

    return sub_22708E1D4(sub_22708E1D4, sub_227646BC8, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_22763B688()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_227646EFC;
  }

  else
  {
    v5 = sub_22763B7A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763B7A4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_22763B688;

    return sub_22708E1D4(sub_22708E1D4, sub_227646BC8, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_22763BA74(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664A10();

  return MEMORY[0x2822009F8](sub_22763BB40, 0, 0);
}

uint64_t sub_22763BB40()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static TrainerMetadata.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAE0, &qword_22768E240);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22763BF88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646BF4, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22763BF88()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22763C0A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763C0A4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22763BF88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646BF4, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22763C3AC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664EB0();

  return MEMORY[0x2822009F8](sub_22763C478, 0, 0);
}

uint64_t sub_22763C478()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static TrainerReference.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAE8, &qword_22768E248);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22763C8C0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646C20, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22763C8C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22763C9DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763C9DC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22763C8C0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646C20, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22763CCE4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664AA0();

  return MEMORY[0x2822009F8](sub_22763CDB0, 0, 0);
}

uint64_t sub_22763CDB0()
{
  v36 = v0;
  v1 = v0[7];
  Queue = static UpNextQueueItem.representativeSamples()();
  v0[9] = Queue;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(Queue + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAF0, &qword_22768E250);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(Queue + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22763D1F8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646C4C, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22763D1F8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22763D314;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763D314()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22763D1F8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646C4C, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22763D61C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22763D6DC, 0, 0);
}

uint64_t sub_22763D6DC()
{
  v34 = v0;
  v1 = v0[7];
  sub_2275B55C8();
  v2 = sub_227665EA0();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = &type metadata for UserAccountNotification;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAF8, &qword_22768E258);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_22763DB0C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646C78, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_22763DB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_227646EFC;
  }

  else
  {
    v5 = sub_22763DC28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763DC28()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_22763DB0C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646C78, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_22763DEF8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22763DFB8, 0, 0);
}

uint64_t sub_22763DFB8()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_22722E810();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = &type metadata for WorkoutIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB00, &qword_22768E260);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_22763E3D4;

    return sub_22708E1D4(sub_22708E1D4, sub_227646CA4, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_22763E3D4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_227646EFC;
  }

  else
  {
    v5 = sub_22763E4F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763E4F0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_22763E3D4;

    return sub_22708E1D4(sub_22708E1D4, sub_227646CA4, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_22763E7C0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276638D0();

  return MEMORY[0x2822009F8](sub_22763E88C, 0, 0);
}

uint64_t sub_22763E88C()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlan.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB08, &qword_22768E268);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22763ECD4;

    return sub_22708E1D4(sub_22708E1D4, sub_227646CD0, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22763ECD4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22763EDF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763EDF0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22763ECD4;

    return sub_22708E1D4(sub_22708E1D4, sub_227646CD0, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22763F0F8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22763F1B8, 0, 0);
}

uint64_t sub_22763F1B8()
{
  v34 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanItemReference.representativeSamples()();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = MEMORY[0x277D52CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB10, &qword_22768E270);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_22763F5D4;

    return sub_22708E1D4(sub_22708E1D4, sub_227646CFC, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_22763F5D4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_22763F9C0;
  }

  else
  {
    v5 = sub_22763F6F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763F6F0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_22763F5D4;

    return sub_22708E1D4(sub_22708E1D4, sub_227646CFC, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_22763F9C0()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[15];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22763FA3C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668480();

  return MEMORY[0x2822009F8](sub_22763FB08, 0, 0);
}

uint64_t sub_22763FB08()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanModalityPreference.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB18, &qword_22768E278);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_22763FF50;

    return sub_22708E1D4(sub_22708E1D4, sub_227646D28, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_22763FF50()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_22764006C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22764006C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_22763FF50;

    return sub_22708E1D4(sub_22708E1D4, sub_227646D28, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_227640374(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667400();

  return MEMORY[0x2822009F8](sub_227640440, 0, 0);
}

uint64_t sub_227640440()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanScheduledItem.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB20, &qword_22768E280);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_227640888;

    return sub_22708E1D4(sub_22708E1D4, sub_227646D54, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_227640888()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_2276409A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276409A4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_227640888;

    return sub_22708E1D4(sub_22708E1D4, sub_227646D54, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_227640CAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227640D6C, 0, 0);
}

uint64_t sub_227640D6C()
{
  v34 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanScheduleFilterProperty.representativeSamples()();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = MEMORY[0x277D537D8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB28, &qword_22768E288);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_227641188;

    return sub_22708E1D4(sub_22708E1D4, sub_227646D80, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_227641188()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_227646EFC;
  }

  else
  {
    v5 = sub_2276412A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276412A4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_227641188;

    return sub_22708E1D4(sub_22708E1D4, sub_227646D80, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_227641574(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665CA0();

  return MEMORY[0x2822009F8](sub_227641640, 0, 0);
}

uint64_t sub_227641640()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanTemplate.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB30, &qword_22768E290);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_227641A88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646DAC, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_227641A88()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_227641BA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227641BA4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_227641A88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646DAC, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_227641EAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665F20();

  return MEMORY[0x2822009F8](sub_227641F78, 0, 0);
}

uint64_t sub_227641F78()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanReference.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB38, &qword_22768E298);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_2276423C0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646DD8, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_2276423C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_2276424DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276424DC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_2276423C0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646DD8, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_2276427E4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667440();

  return MEMORY[0x2822009F8](sub_2276428B0, 0, 0);
}

uint64_t sub_2276428B0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static WorkoutPlanSummaryViewed.representativeSamples()();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v34 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB40, &qword_22768E2A0);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v35);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v34, v7);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v0[3];
  v18 = *(v2 + 16);
  v0[10] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v0[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {
    v27 = v0[9];
    v28 = v0[7];

    v29 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v0[9];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v23 = (2 * v17) | 1;
  v24 = swift_allocObject();
  v0[13] = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = 0;
  v24[5] = v23;
  v25 = *(v19 + v20);
  v0[14] = v25;
  swift_bridgeObjectRetain_n();
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_227642CF8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646E04, v24);
  }

  v30 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51008], v30);
  swift_willThrow();

  v32 = v0[9];
  v33 = v0[7];

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_227642CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_227646EF8;
  }

  else
  {
    v5 = sub_227642E14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227642E14()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v22 = v0[9];
    v23 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[12];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[12] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[10])
  {
    v10 = v0[10];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[9];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[11];
  v16 = v0[4];
  v17 = v12 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v18 = (2 * v10) | 1;
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v12;
  v19[3] = v17;
  v19[4] = v7;
  v19[5] = v18;
  v20 = *(v16 + v15);
  v0[14] = v20;
  swift_bridgeObjectRetain_n();
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_227642CF8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646E04, v19);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v27 = v0[9];
  v28 = v0[7];

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t sub_22764311C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2276431DC, 0, 0);
}

uint64_t sub_2276431DC()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_227088700();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = &type metadata for WorkoutPlanMusicIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB48, &qword_22768E2A8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_2276435F8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646E30, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_2276435F8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_227646EFC;
  }

  else
  {
    v5 = sub_227643714;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227643714()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_2276435F8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646E30, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_2276439E4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227643AA4, 0, 0);
}

uint64_t sub_227643AA4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_22739B77C();
  v0[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v32 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v0[2] = &type metadata for WorkoutPlanTrainerIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB50, &qword_22768E2B0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v33);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v32, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v2 + 16);
  v0[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {
    v26 = v0[7];
    v25 = v0[8];

    v27 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v0[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v0[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_227643EC0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646E5C, v22);
  }

  v28 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51008], v28);
  swift_willThrow();

  v31 = v0[7];
  v30 = v0[8];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_227643EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_227646EFC;
  }

  else
  {
    v5 = sub_227643FDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227643FDC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  if (v3 >= v5)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    goto LABEL_19;
  }

  v7 = v0[11];
  v8 = v0[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  v11 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v9)
  {
    v11 = v10;
  }

  v0[11] = v11;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= v0[9])
  {
    v10 = v0[9];
  }

  if (v10 < v7)
  {
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = v0[8];
  v13 = *(v12 + 16);
  if (v13 < v7 || v13 < v10)
  {
    goto LABEL_25;
  }

  v15 = v0[10];
  v16 = v0[4];
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[12] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[13] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_227643EC0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646E5C, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v27 = v0[7];
  v26 = v0[8];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_2276442AC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2276442D0, 0, 0);
}

uint64_t sub_2276442D0()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_226FCADF8;
  v7 = *(v0 + 48);

  return v9(v7, v2, v3);
}

uint64_t sub_227644400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_2276624A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = [objc_opt_self() processInfo];
  v20 = [v19 environment];

  v21 = sub_22766BEB0();
  if (*(v21 + 16))
  {
    v22 = sub_226E92000(0x4F54414C554D4953, 0xEE00544F4F525F52);
    if (v23)
    {
      v24 = (*(v21 + 56) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
    }
  }

  sub_2276623B0();

  v46 = v13;
  v27 = sub_227662400();
  MEMORY[0x28223BE20](v27);
  v47 = v11;
  *(&v41 - 2) = v11;
  v28 = sub_2275F2FE8(sub_227645C2C, (&v41 - 4), a1);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v4 + 8);
    v45 = v29 - 1;
    v49 = MEMORY[0x277D84F90];
    v31 = 0;
    while (v31 < *(v28 + 16))
    {
      (*(v4 + 16))(v8, v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31, v3);
      sub_227644930(v8, &v50);
      (*v30)(v8, v3);
      v32 = v51;
      if (v51)
      {
        v44 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_226EB3F78(0, *(v49 + 2) + 1, 1, v49);
        }

        v34 = *(v49 + 2);
        v33 = *(v49 + 3);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v42 = *(v49 + 2);
          v43 = v34 + 1;
          v38 = sub_226EB3F78((v33 > 1), v34 + 1, 1, v49);
          v34 = v42;
          v35 = v43;
          v49 = v38;
        }

        v36 = v49;
        *(v49 + 2) = v35;
        v37 = &v36[16 * v34];
        *(v37 + 4) = v44;
        *(v37 + 5) = v32;
        if (v45 == v31)
        {
          goto LABEL_17;
        }

        ++v31;
      }

      else if (v29 == ++v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);

    (*v30)(v8, v3);

    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
LABEL_17:

    *(swift_allocObject() + 16) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
    sub_227669280();
    v39 = *(v4 + 8);
    v39(v46, v3);
    return (v39)(v47, v3);
  }

  return result;
}

uint64_t sub_227644930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22766B390();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v48);
  v52 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  sub_22766A730();
  v16 = *(v6 + 16);
  v49 = a1;
  v16(v9, a1, v5);
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  v19 = os_log_type_enabled(v17, v18);
  v51 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v47 = v2;
    v21 = v20;
    v46 = swift_slowAlloc();
    v55 = v46;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    v22 = sub_227662390();
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    v25 = sub_226E97AE8(v22, v24, &v55);
    v10 = v51;

    *(v21 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v17, v18, "Reading %{mask.hash}s", v21, 0x16u);
    v26 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AA9A450](v26, -1, -1);
    v27 = v21;
    v3 = v47;
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v28 = *(v10 + 8);
  v29 = v15;
  v30 = v48;
  v28(v29, v48);
  result = sub_22766BFC0();
  v33 = v52;
  if (v3)
  {
    sub_22766A730();
    v34 = v3;
    v35 = sub_22766B380();
    v36 = sub_22766C890();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136446210;
      swift_getErrorValue();
      v39 = MEMORY[0x22AA995D0](v53, v54);
      v41 = sub_226E97AE8(v39, v40, &v55);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_226E8E000, v35, v36, "Error reading file: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);

      v42 = v52;
    }

    else
    {

      v42 = v33;
    }

    result = (v28)(v42, v30);
    v44 = v50;
    *v50 = 0;
    v44[1] = 0;
  }

  else
  {
    v43 = v50;
    *v50 = result;
    v43[1] = v32;
  }

  return result;
}

uint64_t sub_227644D74(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_22766AF80();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  v6 = sub_22766AF60();
  *(v2 + 56) = v6;
  v7 = *(v6 - 8);
  *(v2 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227644EA0, 0, 0);
}

uint64_t sub_227644EA0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 112);
  sub_22764662C(&qword_27D7BCA58, MEMORY[0x277D544F8]);
  sub_22766AD80();
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4[10];
    v6 = v4[11];
    __swift_project_boxed_opaque_existential_0(v4 + 7, v5);
    v7 = *(v6 + 40);
    v16 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_227645318;
    v10 = *(v0 + 72);
    v11 = *(v0 + 40);
  }

  else
  {
    v5 = v4[15];
    v6 = v4[16];
    __swift_project_boxed_opaque_existential_0(v4 + 12, v5);
    v12 = *(v6 + 40);
    v16 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *v14 = v0;
    v14[1] = sub_22764511C;
    v10 = *(v0 + 72);
    v11 = *(v0 + 48);
  }

  return v16(v11, v10, v5, v6);
}

uint64_t sub_22764511C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_227645514;
  }

  else
  {
    v3 = sub_227645230;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227645230()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = sub_22766AF70();
  v10 = v9;
  (*(v6 + 8))(v3, v7);
  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11(v8, v10);
}

uint64_t sub_227645318()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2276455B0;
  }

  else
  {
    v3 = sub_22764542C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22764542C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = sub_22766AF70();
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);

  v11 = v0[1];

  return v11(v8, v10);
}

uint64_t sub_227645514()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2276455B0()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227645684()
{
  v1[5] = v0;
  v2 = sub_22766B390();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227645744, 0, 0);
}

uint64_t sub_227645744()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  sub_22766A730();
  sub_22766B370();
  v5 = *(v2 + 8);
  v5(v1, v4);
  v6 = *__swift_project_boxed_opaque_existential_0((v3 + 216), *(v3 + 240));
  sub_22766A6B0();
  sub_22766B370();
  v5(v1, v4);
  swift_beginAccess();
  v7 = *(v6 + 352);

  v9 = sub_226F33584(v8);
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_2276458CC;

  return sub_226F0A70C(v9);
}

uint64_t sub_2276458CC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227645A14, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227645A14()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_227645A80(char a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourServices/AdminSystem.swift";
  *(v5 + 24) = 33;
  *(v5 + 32) = 2;
  *(v5 + 40) = 307;
  *(v5 + 48) = &unk_22768DBF0;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);

  return sub_227669270();
}

uint64_t sub_227645B68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E92F34;

  return sub_2276442AC(a1, v4, v5);
}

uint64_t sub_227645C2C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  return sub_227662400();
}

uint64_t sub_22764662C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227646E88(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void))
{
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return a2(v4, v5, v7, v6, v8[1], *(v8 + 16), v8[3]);
}

uint64_t sub_227646F00(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v43 = sub_2276624A0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276653A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v13 = a2 + 56;
  v12 = *(a2 + 56);
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  v54 = MEMORY[0x277D84F90];
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v45 = "ManagedSkillLevelIdentifier";
  v46 = v8 + 16;
  v39 = (v3 + 8);
  v47 = v8;
  v49 = (v8 + 8);
  v50 = a2;

  v19 = 0;
  v40 = v17;
  v41 = a2 + 56;
  v44 = v10;
  if (v16)
  {
LABEL_8:
    while (1)
    {
      (*(v47 + 16))(v10, *(v50 + 48) + *(v47 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v6);
      v21 = objc_opt_self();
      v22 = sub_22766BFD0();
      v23 = [v21 insertNewObjectForEntityForName:v22 inManagedObjectContext:v48];

      type metadata accessor for ManagedSocialMediaHandle();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = sub_227665390();
      v28 = v27;
      v51 = v26;
      v52 = v27;
      v30 = v29 & 1;
      v53 = v29 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF260, &qword_227673F78);
      sub_227663AD0();
      v31 = v6;
      v32 = sub_22766BFD0();
      sub_226EB2DFC(v26, v28, v30);

      [v25 setPlatform_];

      v6 = v31;
      v10 = v44;
      v33 = v42;
      sub_227665370();
      sub_227662390();
      (*v39)(v33, v43);
      v34 = sub_22766BFD0();

      [v25 setUrl_];

      v35 = (*v49)(v10, v6);
      MEMORY[0x22AA985C0](v35);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      v16 &= v16 - 1;
      result = sub_22766C3A0();
      v11 = v54;
      v17 = v40;
      v13 = v41;
      if (!v16)
      {
        goto LABEL_4;
      }
    }

    v36 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
    swift_willThrow();

    (*v49)(v10, v6);

    return v36;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        sub_226F3D608(v11);

        type metadata accessor for ManagedSocialMediaHandle();
        sub_22764D6D0(&qword_27D7B8818, type metadata accessor for ManagedSocialMediaHandle);
        v36 = sub_22766C570();

        return v36;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227647448(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = v3;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      v11 = *(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = objc_opt_self();
      v16 = v12;
      sub_226EB396C(v12, v13, v14);
      v17 = sub_22766BFD0();
      v18 = [v15 insertNewObjectForEntityForName:v17 inManagedObjectContext:a1];

      type metadata accessor for ManagedCatalogAccessibilityFeature();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        break;
      }

      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
      sub_227663AD0();
      v21 = sub_22766BFD0();
      [v20 setFeature_];

      v22 = sub_226EB2DFC(v16, v13, v14);
      MEMORY[0x22AA985C0](v22);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v29;
      v3 = v26;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v24 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51000], v24);
    swift_willThrow();

    sub_226EB2DFC(v16, v13, v14);

    return v24;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D650(v2);

        type metadata accessor for ManagedCatalogAccessibilityFeature();
        sub_22764D6D0(&qword_27D7B8858, type metadata accessor for ManagedCatalogAccessibilityFeature);
        v24 = sub_22766C570();

        return v24;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2276477E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v5 = sub_227668480();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v45 = "ManagedWorkoutPlanItem";
  v46 = v7 + 16;
  v47 = v7;
  v49 = (v7 + 8);
  v50 = a2;

  v17 = 0;
  v42 = v15;
  v43 = a2 + 56;
  v44 = v5;
  if (v14)
  {
    while (1)
    {
      v41 = v10;
LABEL_9:
      (*(v47 + 16))(v9, *(v50 + 48) + *(v47 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v5);
      v19 = objc_opt_self();
      v20 = sub_22766BFD0();
      v21 = v48;
      v22 = [v19 insertNewObjectForEntityForName:v20 inManagedObjectContext:v48];

      type metadata accessor for ManagedWorkoutPlanModalityPreference();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        break;
      }

      v24 = v23;
      v40 = v22;
      sub_227668460();
      v25 = sub_22766BFD0();

      [v24 setModalityIdentifier_];

      v26 = sub_227668470();
      v27 = v3;
      v28 = sub_22747F294(v26);

      v29 = sub_226F3D9D0(v28);

      v30 = sub_2276496D4(v21, v29);
      if (v27)
      {

        v5 = v44;
        goto LABEL_18;
      }

      v31 = v30;

      [v24 setPreferredMusicGenres_];

      v32 = sub_227668440();
      v33 = sub_22747F268(v32);

      v34 = sub_226F3D954(v33);

      v3 = 0;
      v35 = sub_227649A14(v21, v34);

      [v24 setPreferredTrainers_];

      v5 = v44;
      v36 = (*v49)(v9, v44);
      MEMORY[0x22AA985C0](v36);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v14 &= v14 - 1;
      result = sub_22766C3A0();
      v10 = v51;
      v15 = v42;
      v11 = v43;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v26 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v38, *MEMORY[0x277D51000], v26);
    swift_willThrow();

LABEL_18:
    (*v49)(v9, v5);

    return v26;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        sub_226F3D698(v10);

        type metadata accessor for ManagedWorkoutPlanModalityPreference();
        sub_22764D6D0(&qword_27D7B88B0, type metadata accessor for ManagedWorkoutPlanModalityPreference);
        v26 = sub_22766C570();

        return v26;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v41 = v10;
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227647D08(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_227663A30();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v29[1] = "ManagedCatalogSyncAnchor";
  v29[2] = v5 + 16;
  v30 = v5;
  v33 = (v5 + 8);
  v34 = a2;

  v15 = 0;
  v32 = v3;
  if (v12)
  {
LABEL_8:
    while (1)
    {
      (*(v30 + 16))(v7, *(v34 + 48) + *(v30 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v3);
      v17 = objc_opt_self();
      v18 = sub_22766BFD0();
      v19 = [v17 insertNewObjectForEntityForName:v18 inManagedObjectContext:v31];

      type metadata accessor for ManagedCatalogTheme();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        break;
      }

      v21 = v20;
      sub_227663A00();
      v22 = sub_22766BFD0();

      [v21 setIdentifier_];

      sub_227663A10();
      v23 = sub_22766BFD0();

      [v21 setName_];

      [v21 setSortOrder_];
      v3 = v32;
      v24 = v7;
      v25 = (*v33)(v7, v32);
      MEMORY[0x22AA985C0](v25);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v12 &= v12 - 1;
      result = sub_22766C3A0();
      v8 = v35;
      v7 = v24;
      if (!v12)
      {
        goto LABEL_4;
      }
    }

    v27 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51000], v27);
    swift_willThrow();

    (*v33)(v7, v32);

    return v8;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        sub_226F3D6E0(v8);

        type metadata accessor for ManagedCatalogTheme();
        sub_22764D6D0(qword_28139A720, type metadata accessor for ManagedCatalogTheme);
        v8 = sub_22766C570();

        return v8;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227648160(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v24 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v11;
      v12 = v11[1];
      v14 = objc_opt_self();

      v15 = sub_22766BFD0();
      v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a1];

      type metadata accessor for ManagedOnboardingModalityIdentifier();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = sub_22766BFD0();
      [v18 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v27;
      v3 = v24;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v22 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51000], v22);
    swift_willThrow();
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D728(v2);

        type metadata accessor for ManagedOnboardingModalityIdentifier();
        sub_22764D6D0(&qword_27D7B8848, type metadata accessor for ManagedOnboardingModalityIdentifier);
        v21 = sub_22766C570();

        return v21;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2276484A0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = v3;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      v11 = *(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = objc_opt_self();
      v16 = v12;
      sub_226EB396C(v12, v13, v14);
      v17 = sub_22766BFD0();
      v18 = [v15 insertNewObjectForEntityForName:v17 inManagedObjectContext:a1];

      type metadata accessor for ManagedCatalogWorkoutTrait();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        break;
      }

      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
      sub_227663AD0();
      v21 = sub_22766BFD0();
      [v20 setTrait_];

      v22 = sub_226EB2DFC(v16, v13, v14);
      MEMORY[0x22AA985C0](v22);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v29;
      v3 = v26;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v24 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51000], v24);
    swift_willThrow();

    sub_226EB2DFC(v16, v13, v14);

    return v24;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D7A4(v2);

        type metadata accessor for ManagedCatalogWorkoutTrait();
        sub_22764D6D0(&qword_27D7B8840, type metadata accessor for ManagedCatalogWorkoutTrait);
        v24 = sub_22766C570();

        return v24;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227648838(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = v3;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      v11 = *(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = objc_opt_self();
      v16 = v12;
      sub_226EB396C(v12, v13, v14);
      v17 = sub_22766BFD0();
      v18 = [v15 insertNewObjectForEntityForName:v17 inManagedObjectContext:a1];

      type metadata accessor for ManagedCatalogModalityFeature();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        break;
      }

      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
      sub_227663AD0();
      v21 = sub_22766BFD0();
      [v20 setFeature_];

      v22 = sub_226EB2DFC(v16, v13, v14);
      MEMORY[0x22AA985C0](v22);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v29;
      v3 = v26;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v24 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51000], v24);
    swift_willThrow();

    sub_226EB2DFC(v16, v13, v14);

    return v24;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D87C(v2);

        type metadata accessor for ManagedCatalogModalityFeature();
        sub_22764D6D0(qword_281399D10, type metadata accessor for ManagedCatalogModalityFeature);
        v24 = sub_22766C570();

        return v24;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227648BD0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = v3;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      v11 = *(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = objc_opt_self();
      v16 = v12;
      sub_226EB396C(v12, v13, v14);
      v17 = sub_22766BFD0();
      v18 = [v15 insertNewObjectForEntityForName:v17 inManagedObjectContext:a1];

      type metadata accessor for ManagedCatalogFilterPropertyType();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        break;
      }

      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
      sub_227663AD0();
      v21 = sub_22766BFD0();
      [v20 setPropertyType_];

      v22 = sub_226EB2DFC(v16, v13, v14);
      MEMORY[0x22AA985C0](v22);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v29;
      v3 = v26;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v24 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51000], v24);
    swift_willThrow();

    sub_226EB2DFC(v16, v13, v14);

    return v24;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D834(v2);

        type metadata accessor for ManagedCatalogFilterPropertyType();
        sub_22764D6D0(qword_281399B20, type metadata accessor for ManagedCatalogFilterPropertyType);
        v24 = sub_22766C570();

        return v24;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227648F68(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v30 = *(v27 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - v4;
  v6 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;
  v29 = "ManagedAchievementWeeklyStreak";
  v32 = a2;

  v13 = 0;
  v25 = v11;
  v26 = a2 + 56;
  v28 = v5;
  if (v10)
  {
LABEL_8:
    while (1)
    {
      sub_226E93170(*(v32 + 48) + *(v30 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v5, &qword_27D7B86D0, &qword_22768B670);
      v15 = objc_opt_self();
      v16 = sub_22766BFD0();
      v17 = [v15 insertNewObjectForEntityForName:v16 inManagedObjectContext:v31];

      type metadata accessor for ManagedAlternativeActivityType();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        break;
      }

      v19 = v18;
      sub_227663AD0();
      v20 = sub_22766BFD0();
      [v19 setAlternativeActivityType_];

      v21 = sub_226E97D1C(v5, &qword_27D7B86D0, &qword_22768B670);
      MEMORY[0x22AA985C0](v21);
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      v10 &= v10 - 1;
      result = sub_22766C3A0();
      v6 = v33;
      v5 = v28;
      v11 = v25;
      v7 = v26;
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    v22 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51000], v22);
    swift_willThrow();

    sub_226E97D1C(v5, &qword_27D7B86D0, &qword_22768B670);

    return v22;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        sub_226F3D7EC(v6);

        type metadata accessor for ManagedAlternativeActivityType();
        sub_22764D6D0(qword_281399C88, type metadata accessor for ManagedAlternativeActivityType);
        v22 = sub_22766C570();

        return v22;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764936C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = *(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v28 = v14;
      v15 = objc_opt_self();
      sub_226F491FC(v12, v13, v14);
      v16 = sub_22766BFD0();
      v17 = [v15 insertNewObjectForEntityForName:v16 inManagedObjectContext:a1];

      type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v20 = sub_22766BFD0();
      [v19 *off_2785D4128[v28]];

      v21 = sub_226F49200(v12, v13, v28);
      MEMORY[0x22AA985C0](v21);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v29;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v24 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51000], v24);
    swift_willThrow();

    sub_226F49200(v12, v13, v28);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D8C4(v2);

        type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
        sub_22764D6D0(&qword_27D7B8860, type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty);
        v23 = sub_22766C570();

        return v23;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2276496D4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v24 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v11;
      v12 = v11[1];
      v14 = objc_opt_self();

      v15 = sub_22766BFD0();
      v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a1];

      type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = sub_22766BFD0();
      [v18 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v27;
      v3 = v24;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v22 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51000], v22);
    swift_willThrow();
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D988(v2);

        type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
        sub_22764D6D0(&qword_27D7B8830, type metadata accessor for ManagedWorkoutPlanMusicIdentifier);
        v21 = sub_22766C570();

        return v21;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227649A14(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v24 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v11;
      v12 = v11[1];
      v14 = objc_opt_self();

      v15 = sub_22766BFD0();
      v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a1];

      type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = sub_22766BFD0();
      [v18 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v27;
      v3 = v24;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v22 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51000], v22);
    swift_willThrow();
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3D90C(v2);

        type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
        sub_22764D6D0(&qword_27D7B8820, type metadata accessor for ManagedWorkoutPlanTrainerIdentifier);
        v21 = sub_22766C570();

        return v21;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227649D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = sub_227666BF0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v30 = "ManagedHealthKitActivityType";
  v31 = v7 + 16;
  v32 = v7;
  v29 = (v7 + 8);
  v35 = a2;

  v17 = 0;
  v34 = v5;
  if (v14)
  {
    while (1)
    {
LABEL_9:
      v19 = v9;
      (*(v32 + 16))(v9, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v5);
      v20 = objc_opt_self();
      v21 = sub_22766BFD0();
      v22 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:v33];

      type metadata accessor for ManagedHealthKitMindfulSession();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        v26 = v9;

        v19 = sub_227664DD0();
        sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v19 - 8) + 104))(v27, *MEMORY[0x277D51000], v19);
        swift_willThrow();

        goto LABEL_18;
      }

      sub_2275D7AC0(v23);
      if (v3)
      {
        break;
      }

      v5 = v34;
      v24 = (*v29)(v9, v34);
      MEMORY[0x22AA985C0](v24);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
        v5 = v34;
      }

      v14 &= v14 - 1;
      result = sub_22766C3A0();
      v10 = v36;
      v3 = 0;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v26 = v9;

LABEL_18:
    (*v29)(v26, v34);

    return v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        sub_226F3DA04(v10);

        type metadata accessor for ManagedHealthKitMindfulSession();
        sub_22764D6D0(&qword_27D7B8798, type metadata accessor for ManagedHealthKitMindfulSession);
        v19 = sub_22766C570();

        return v19;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764A174(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = sub_227663AB0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v30 = "oucher";
  v31 = v7 + 16;
  v32 = v7;
  v29 = (v7 + 8);
  v35 = a2;

  v17 = 0;
  v34 = v5;
  if (v14)
  {
    while (1)
    {
LABEL_9:
      v19 = v9;
      (*(v32 + 16))(v9, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v5);
      v20 = objc_opt_self();
      v21 = sub_22766BFD0();
      v22 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:v33];

      type metadata accessor for ManagedPlaylistItem();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        v26 = v9;

        v19 = sub_227664DD0();
        sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v19 - 8) + 104))(v27, *MEMORY[0x277D51000], v19);
        swift_willThrow();

        goto LABEL_18;
      }

      sub_227000224(v23);
      if (v3)
      {
        break;
      }

      v5 = v34;
      v24 = (*v29)(v9, v34);
      MEMORY[0x22AA985C0](v24);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
        v5 = v34;
      }

      v14 &= v14 - 1;
      result = sub_22766C3A0();
      v10 = v36;
      v3 = 0;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v26 = v9;

LABEL_18:
    (*v29)(v26, v34);

    return v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        sub_226F3DA4C(v10);

        type metadata accessor for ManagedPlaylistItem();
        sub_22764D6D0(&qword_27D7B8780, type metadata accessor for ManagedPlaylistItem);
        v19 = sub_22766C570();

        return v19;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764A594(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_227663C90();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v38 = "ManagedThemeIdentifier";
  v39 = v5 + 16;
  v40 = v5;
  v42 = (v5 + 8);
  v43 = a2;

  v15 = 0;
  v35 = v13;
  v36 = a2 + 56;
  v37 = v7;
  if (v12)
  {
LABEL_8:
    while (1)
    {
      (*(v40 + 16))(v7, *(v43 + 48) + *(v40 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v3);
      v17 = objc_opt_self();
      v18 = sub_22766BFD0();
      v19 = [v17 insertNewObjectForEntityForName:v18 inManagedObjectContext:v41];

      type metadata accessor for ManagedTrainerEvent();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        break;
      }

      v21 = v20;
      sub_227663C30();
      v22 = sub_22766BFD0();

      [v21 setIdentifier_];

      v23 = sub_227663C50();
      v25 = v24;
      v44 = v23;
      v45 = v24;
      v26 = v3;
      v28 = v27 & 1;
      v46 = v27 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9F8, &qword_22767FA38);
      sub_227663AD0();
      v29 = sub_22766BFD0();
      v30 = v28;
      v3 = v26;
      v7 = v37;
      sub_226EB2DFC(v23, v25, v30);

      [v21 setType_];

      sub_227663C80();
      [v21 setStartTime_];
      sub_227663C60();
      [v21 setDuration_];
      sub_227663C40();
      [v21 setLeadDuration_];
      v31 = (*v42)(v7, v3);
      MEMORY[0x22AA985C0](v31);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      v12 &= v12 - 1;
      result = sub_22766C3A0();
      v8 = v47;
      v13 = v35;
      v9 = v36;
      if (!v12)
      {
        goto LABEL_4;
      }
    }

    v32 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
    swift_willThrow();

    (*v42)(v7, v3);

    return v32;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        sub_226F3DD64(v8);

        type metadata accessor for ManagedTrainerEvent();
        sub_22764D6D0(&qword_27D7B88A8, type metadata accessor for ManagedTrainerEvent);
        v32 = sub_22766C570();

        return v32;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764AA60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = sub_227663350();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v30 = "ManagedMusicGenreIdentifier";
  v31 = v7 + 16;
  v32 = v7;
  v29 = (v7 + 8);
  v35 = a2;

  v17 = 0;
  v34 = v5;
  if (v14)
  {
    while (1)
    {
LABEL_9:
      v19 = v9;
      (*(v32 + 16))(v9, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v5);
      v20 = objc_opt_self();
      v21 = sub_22766BFD0();
      v22 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:v33];

      type metadata accessor for ManagedMusicTrack();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        v26 = v9;

        v19 = sub_227664DD0();
        sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v19 - 8) + 104))(v27, *MEMORY[0x277D51000], v19);
        swift_willThrow();

        goto LABEL_18;
      }

      sub_2275D53A4(v23);
      if (v3)
      {
        break;
      }

      v5 = v34;
      v24 = (*v29)(v9, v34);
      MEMORY[0x22AA985C0](v24);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
        v5 = v34;
      }

      v14 &= v14 - 1;
      result = sub_22766C3A0();
      v10 = v36;
      v3 = 0;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v26 = v9;

LABEL_18:
    (*v29)(v26, v34);

    return v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        sub_226F3DD1C(v10);

        type metadata accessor for ManagedMusicTrack();
        sub_22764D6D0(&qword_27D7B88A0, type metadata accessor for ManagedMusicTrack);
        v19 = sub_22766C570();

        return v19;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764AE80(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v44 = sub_227669180();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227663680();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v14 = a2 + 56;
  v13 = *(a2 + 56);
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  v53 = MEMORY[0x277D84F90];
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v47 = "ManagedLanguageDisclaimer";
  v48 = v9 + 16;
  v43 = (v3 + 8);
  v49 = v9;
  v46 = (v9 + 8);
  v51 = a2;

  v20 = 0;
  v40 = v18;
  v41 = v14;
  v45 = v7;
  v42 = v6;
  if (v17)
  {
    while (1)
    {
LABEL_8:
      (*(v49 + 16))(v11, *(v51 + 48) + *(v49 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v7);
      v22 = objc_opt_self();
      v23 = sub_22766BFD0();
      v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:v50];

      type metadata accessor for ManagedMediaMoment();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {

        v28 = sub_227664DD0();
        sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v28 - 8) + 104))(v38, *MEMORY[0x277D51000], v28);
        swift_willThrow();

        goto LABEL_17;
      }

      v26 = v25;
      v39 = v12;
      sub_227663630();
      v27 = sub_22766BFD0();

      [v26 setIdentifier_];

      sub_227663670();
      [v26 setStartTime_];
      sub_227663650();
      [v26 setDuration_];
      sub_227663640();
      sub_22764D6D0(&qword_27D7BB870, MEMORY[0x277D53A78]);
      v28 = v6;
      v29 = v44;
      v30 = v52;
      v31 = sub_2276683C0();
      v52 = v30;
      if (v30)
      {
        break;
      }

      v33 = v31;
      v34 = v32;
      (*v43)(v28, v29);
      v35 = sub_227662560();
      sub_226EDC420(v33, v34);
      [v26 setArtwork_];

      v7 = v45;
      v36 = (*v46)(v11, v45);
      MEMORY[0x22AA985C0](v36);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
        v7 = v45;
      }

      v17 &= v17 - 1;
      result = sub_22766C3A0();
      v12 = v53;
      v14 = v41;
      v6 = v42;
      v18 = v40;
      if (!v17)
      {
        goto LABEL_4;
      }
    }

    (*v43)(v28, v29);

    v7 = v45;
LABEL_17:
    (*v46)(v11, v7);

    return v28;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        sub_226F3DCD4(v12);

        type metadata accessor for ManagedMediaMoment();
        sub_22764D6D0(&qword_27D7B8898, type metadata accessor for ManagedMediaMoment);
        v28 = sub_22766C570();

        return v28;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764B438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v5 = sub_227663610();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v31 = "ManagedConfiguration";
  v32 = v7 + 16;
  v33 = v7;
  v30 = (v7 + 8);
  v36 = a2;

  v17 = 0;
  v35 = v5;
  if (v14)
  {
    while (1)
    {
      v29 = v10;
LABEL_9:
      v19 = v9;
      (*(v33 + 16))(v9, *(v36 + 48) + *(v33 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v5);
      v20 = objc_opt_self();
      v21 = sub_22766BFD0();
      v22 = v34;
      v23 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:{v34, v29}];

      type metadata accessor for ManagedContributor();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        v27 = v9;

        v19 = sub_227664DD0();
        sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v19 - 8) + 104))(v28, *MEMORY[0x277D51000], v19);
        swift_willThrow();

        goto LABEL_18;
      }

      sub_2270A7BF0(v24, v22);
      if (v3)
      {
        break;
      }

      v5 = v35;
      v25 = (*v30)(v9, v35);
      MEMORY[0x22AA985C0](v25);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
        v5 = v35;
      }

      v14 &= v14 - 1;
      result = sub_22766C3A0();
      v10 = v37;
      v3 = 0;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v27 = v9;

LABEL_18:
    (*v30)(v27, v35);

    return v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        sub_226F3DC8C(v10);

        type metadata accessor for ManagedContributor();
        sub_22764D6D0(&qword_27D7B8890, type metadata accessor for ManagedContributor);
        v19 = sub_22766C570();

        return v19;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v29 = v10;
        v17 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764B860(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_227664650();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v38 = "ManagedCoachingEvent";
  v39 = v5 + 16;
  v40 = v5;
  v42 = (v5 + 8);
  v43 = a2;

  v15 = 0;
  v35 = v13;
  v36 = a2 + 56;
  v37 = v7;
  if (v12)
  {
LABEL_8:
    while (1)
    {
      (*(v40 + 16))(v7, *(v43 + 48) + *(v40 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v3);
      v17 = objc_opt_self();
      v18 = sub_22766BFD0();
      v19 = [v17 insertNewObjectForEntityForName:v18 inManagedObjectContext:v41];

      type metadata accessor for ManagedCommentaryEvent();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v22 = sub_227664600();
      v24 = v23;
      v44 = v22;
      v45 = v23;
      v25 = v3;
      v27 = v26 & 1;
      v46 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F78, &qword_22768BA10);
      sub_227663AD0();
      v28 = sub_22766BFD0();
      v29 = v27;
      v3 = v25;
      v7 = v37;
      sub_226EB2DFC(v22, v24, v29);

      [v21 setTopic_];

      sub_227664640();
      [v21 setStartTime_];
      sub_227664620();
      [v21 setDuration_];
      sub_2276645F0();
      v30 = sub_22766BFD0();

      [v21 setTopicIdentifier_];

      v31 = (*v42)(v7, v3);
      MEMORY[0x22AA985C0](v31);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      v12 &= v12 - 1;
      result = sub_22766C3A0();
      v8 = v47;
      v13 = v35;
      v9 = v36;
      if (!v12)
      {
        goto LABEL_4;
      }
    }

    v32 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
    swift_willThrow();

    (*v42)(v7, v3);

    return v32;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        sub_226F3DC44(v8);

        type metadata accessor for ManagedCommentaryEvent();
        sub_22764D6D0(&qword_27D7B8888, type metadata accessor for ManagedCommentaryEvent);
        v32 = sub_22766C570();

        return v32;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276655A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v38 = "ManagedKeyCertificate";
  v39 = v6 + 16;
  v40 = v6;
  v41 = a2;
  v36 = (v6 + 8);

  v16 = 0;
  v34 = v14;
  v35 = v10;
  v37 = v4;
  if (v13)
  {
    while (1)
    {
      v33 = v9;
LABEL_9:
      (*(v40 + 16))(v8, *(v41 + 48) + *(v40 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v4);
      v18 = objc_opt_self();
      v19 = sub_22766BFD0();
      v20 = [v18 insertNewObjectForEntityForName:v19 inManagedObjectContext:{a1, v33}];

      type metadata accessor for ManagedLanguageDisclaimer();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {

        v31 = sub_227664DD0();
        sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51000], v31);
        swift_willThrow();

        goto LABEL_18;
      }

      v22 = v21;
      sub_227665570();
      v23 = sub_22766BFD0();

      [v22 setName_];

      sub_227665560();
      v24 = sub_22766BFD0();

      [v22 setLanguageCode_];

      [v22 setIsPrimary_];
      v25 = sub_227665550();
      v26 = v42;
      v27 = sub_227647448(a1, v25);
      v42 = v26;
      if (v26)
      {
        break;
      }

      v28 = v27;

      [v22 setCapabilities_];

      v4 = v37;
      v29 = (*v36)(v8, v37);
      MEMORY[0x22AA985C0](v29);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v13 &= v13 - 1;
      result = sub_22766C3A0();
      v9 = v43;
      v14 = v34;
      v10 = v35;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    (*v36)(v8, v37);

    return v8;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        sub_226F3DBFC(v9);

        type metadata accessor for ManagedLanguageDisclaimer();
        sub_22764D6D0(&qword_27D7B8880, type metadata accessor for ManagedLanguageDisclaimer);
        v8 = sub_22766C570();

        return v8;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v33 = v9;
        v16 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764C1DC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_227663E50();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v30 = "ManagedCatalogWorkoutTrait";
  v31 = v5 + 16;
  v32 = v5;
  v34 = (v5 + 8);
  v35 = a2;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v29 = v8;
LABEL_9:
      (*(v32 + 16))(v7, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v3);
      v17 = objc_opt_self();
      v18 = sub_22766BFD0();
      v19 = v7;
      v20 = v3;
      v21 = [v17 insertNewObjectForEntityForName:v18 inManagedObjectContext:v33];

      type metadata accessor for ManagedCoachingEvent();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        break;
      }

      sub_226F5EA8C(v22);
      v23 = v19;
      v24 = (*v34)(v19, v20);
      MEMORY[0x22AA985C0](v24);
      v3 = v20;
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v12 &= v12 - 1;
      result = sub_22766C3A0();
      v8 = v36;
      v7 = v23;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v26 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51000], v26);
    swift_willThrow();

    (*v34)(v19, v20);

    return v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        sub_226F3DBB4(v8);

        type metadata accessor for ManagedCoachingEvent();
        sub_22764D6D0(&qword_27D7B8878, type metadata accessor for ManagedCoachingEvent);
        v19 = sub_22766C570();

        return v19;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v29 = v8;
        v15 = v16;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22764C5CC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v24 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v11;
      v12 = v11[1];
      v14 = objc_opt_self();

      v15 = sub_22766BFD0();
      v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a1];

      type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = sub_22766BFD0();
      [v18 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v6 &= v6 - 1;
      result = sub_22766C3A0();
      v2 = v27;
      v3 = v24;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v22 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51000], v22);
    swift_willThrow();
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        sub_226F3DA94(v2);

        type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
        sub_22764D6D0(&qword_27D7B8868, type metadata accessor for ManagedAvailableAudioLanguageIdentifier);
        v21 = sub_22766C570();

        return v21;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22764C90C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  v10 = [a1 sessionIdentifier];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_22766C000();

  v13 = [a1 catalogWorkoutIdentifier];
  if (!v13)
  {

LABEL_7:
    v21 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
    swift_willThrow();

    return;
  }

  v14 = v13;
  v34[5] = sub_22766C000();
  v16 = v15;

  v17 = [a1 sessions];
  if (!v17)
  {
    v23 = sub_227664DD0();
    sub_22764D6D0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();

    goto LABEL_9;
  }

  v18 = v17;
  v34[4] = v12;
  v34[7] = v16;
  v19 = MEMORY[0x22AA99A00]();
  v20 = sub_227156234(v18);
  if (v1)
  {
    objc_autoreleasePoolPop(v19);

    a1 = v18;
LABEL_9:

    return;
  }

  v25 = v20;
  objc_autoreleasePoolPop(v19);
  v26 = sub_226F3EF74(v25);

  v27 = [a1 queueIdentifier];
  if (v27)
  {
    v28 = v27;
    v34[3] = sub_22766C000();

    v29 = [a1 playlistIdentifier];
    if (v29)
    {
      v30 = v29;
      sub_22766C000();
      v34[1] = v31;
      v34[2] = v26;
    }

    sub_227664920();
    v33 = sub_227664950();
    (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
  }

  else
  {
    v32 = sub_227664950();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  }

  sub_226E93170(v9, v7, &qword_27D7B8CC8, &unk_227689B50);
  sub_227668DF0();

  sub_226E97D1C(v9, &qword_27D7B8CC8, &unk_227689B50);
}

void sub_22764CD64(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_227668E00();
  v12 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_227668E10();
  v13 = sub_22766BFD0();

  [a1 setCatalogWorkoutIdentifier_];

  v14 = sub_227668E20();
  v15 = sub_227649D54(a2, v14);

  if (!v2)
  {
    v27 = v9;
    [a1 setSessions_];

    sub_227668DE0();
    v16 = sub_227664950();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v18(v11, 1, v16);
    v26 = v17;
    if (v19 == 1)
    {
      sub_226E97D1C(v11, &qword_27D7B8CC8, &unk_227689B50);
      v20 = 0;
    }

    else
    {
      sub_227664930();
      v25 = v18;
      (*(v17 + 8))(v11, v16);
      v20 = sub_22766BFD0();
      v18 = v25;
    }

    [a1 setQueueIdentifier_];

    v21 = v27;
    sub_227668DE0();
    if (v18(v21, 1, v16) == 1)
    {
      sub_226E97D1C(v21, &qword_27D7B8CC8, &unk_227689B50);
    }

    else
    {
      sub_227664940();
      v23 = v22;
      (*(v26 + 8))(v21, v16);
      if (v23)
      {
        v24 = sub_22766BFD0();

        [a1 setPlaylistIdentifier_];
      }
    }
  }
}

uint64_t static HealthKitStandaloneMindfulSessionJob.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v39 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v37 = v29 - v4;
  v38 = sub_227668E30();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766C090();
  v9 = sub_22766C330();

  v10 = sub_22766C090();
  sub_227666BF0();
  v11 = MEMORY[0x277D528B8];
  sub_22764D6D0(&qword_2813A5658, MEMORY[0x277D528B8]);
  sub_22764D6D0(&qword_2813A5660, v11);
  v12 = sub_22766C590();
  v13 = sub_227664950();
  v14 = sub_22766C320();
  v53 = v10;
  v54[0] = v9;
  v54[1] = v54;
  v54[2] = &v53;
  v51 = v14;
  v52 = v12;
  v54[3] = &v52;
  v54[4] = &v51;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB58, &qword_22768E2B8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D00, &qword_227671E58);
  v43 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v44 = v43;
  v45 = sub_226F5BF60(&qword_27D7BFB60, &qword_27D7BFB58, &qword_22768E2B8);
  v46 = sub_226F5BF60(&qword_27D7B8D20, &qword_27D7B8D00, &qword_227671E58);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    sub_226F1FE88(0, v16, 0);
    v17 = v42;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFB68, &qword_22768E2C0);
    v19 = 0;
    v32 = result;
    v31 = *(result - 8);
    v30 = v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v29[1] = v13 - 8;
    v29[0] = v5 + 32;
    v36 = v5;
    v35 = v13;
    v34 = v15;
    v33 = v16;
    while (v19 < *(v15 + 16))
    {
      v20 = (v30 + *(v31 + 72) * v19);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 3);
      v40 = *(v20 + 2);
      v41 = v21;
      v24 = *(v20 + 4);
      v25 = *(v13 - 8);
      v26 = v37;
      (*(v25 + 16))(v37, &v20[*(v32 + 80)], v13);
      (*(v25 + 56))(v26, 0, 1, v13);
      sub_226E93170(v26, v39, &qword_27D7B8CC8, &unk_227689B50);

      sub_227668DF0();
      sub_226E97D1C(v26, &qword_27D7B8CC8, &unk_227689B50);
      v42 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1FE88(v27 > 1, v28 + 1, 1);
        v17 = v42;
      }

      ++v19;
      *(v17 + 16) = v28 + 1;
      result = (*(v36 + 32))(v17 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, v8, v38);
      v13 = v35;
      v15 = v34;
      if (v33 == v19)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22764D678(uint64_t a1)
{
  result = sub_22764D6D0(&qword_2813A5528, MEMORY[0x277D538B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22764D6D0(unint64_t *a1, void (*a2)(uint64_t))
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

id ManagedAchievementEnvironmentCache.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAchievementEnvironmentCache.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAchievementEnvironmentCache();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAchievementEnvironmentCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAchievementEnvironmentCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAchievementEnvironmentCache.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22764D880(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_22764D8E4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_22766BFD0();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_22764D954@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAchievementEnvironmentCache();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAchievementNotificationRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAchievementNotificationRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAchievementNotificationRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAchievementNotificationRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAchievementNotificationRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22764DB64(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 templateUniqueName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22764DBCC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTemplateUniqueName_];
}

id static ManagedAchievementNotificationRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764DCA8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 datePresented];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22764DD4C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDatePresented_];
}

uint64_t sub_22764DE78@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAchievementNotificationRecord();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAchievementWeeklyStreak.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAchievementWeeklyStreak.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAchievementWeeklyStreak();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAchievementWeeklyStreak.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAchievementWeeklyStreak();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAchievementWeeklyStreak.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764E0A0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 firstWeekdayOfStreakEnd];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22764E144(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setFirstWeekdayOfStreakEnd_];
}

uint64_t sub_22764E270@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAchievementWeeklyStreak();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAlternativeActivityType.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAlternativeActivityType.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAlternativeActivityType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAlternativeActivityType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAlternativeActivityType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22764E3C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 alternativeActivityType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22764E430(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setAlternativeActivityType_];
}

id static ManagedAlternativeActivityType.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764E50C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAlternativeActivityType();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedArchivedSession.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedArchivedSession.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedArchivedSession();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedArchivedSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedArchivedSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22764E6C8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 startDate];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22764E76C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setStartDate_];
}

id sub_22764E898@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_22764E8E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 percentageCompleted];
  *a2 = v4;
  return result;
}

id static ManagedArchivedSession.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764E9C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedArchivedSession();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedArchivedWorkoutPlanSession.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedArchivedWorkoutPlanSession.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedArchivedWorkoutPlanSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedArchivedWorkoutPlanSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22764EBA4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sessionIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22764EC0C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setSessionIdentifier_];
}

uint64_t sub_22764EC7C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 planIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_2276627B0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2276627D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22764ED20(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_22764EF4C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_227662790();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPlanIdentifier_];
}

id sub_22764EE4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reference];
  *a2 = result;
  return result;
}

id static ManagedArchivedWorkoutPlanSession.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764EF08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

uint64_t sub_22764EF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ManagedAssetBundle.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetBundle.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetBundle();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetBundle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetBundle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22764F128@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 reason];
  *a2 = result;
  return result;
}

id sub_22764F1A0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 loadStatus];
  *a2 = result;
  return result;
}

id static ManagedAssetBundle.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764F254@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateRequested];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22764F2F8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateRequested_];
}

uint64_t sub_22764F424@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetBundle();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetBundleLoadFailure.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetBundleLoadFailure.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetBundleLoadFailure();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetBundleLoadFailure.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetBundleLoadFailure();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAssetBundleLoadFailure.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764F688@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 date];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22764F72C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDate_];
}

uint64_t sub_22764F858@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetBundleLoadFailure();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetEntry.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetEntry.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetEntry();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAssetEntry.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22764FA98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetEntry();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetLoadFailure.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetLoadFailure.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetLoadFailure();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetLoadFailure.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetLoadFailure();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAssetLoadFailure.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22764FCCC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDate_];
}

uint64_t sub_22764FDF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetLoadFailure();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetRequestKeyMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetRequestKeyMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetRequestKeyMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetRequestKeyMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetRequestKeyMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22764FFA8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 renewDate];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22765004C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRenewDate_];
}

id static ManagedAssetRequestKeyMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276501FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetRequestKeyMetadata();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetRequestMediaStreamMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetRequestMediaStreamMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetRequestMediaStreamMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAssetRequestMediaStreamMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765043C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetRequestReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetRequestReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetRequestReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetRequestReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetRequestReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_227650604@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 expirationTime];
  *a2 = v4;
  return result;
}

id static ManagedAssetRequestReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276506D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetRequestReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAssetResumableLoad.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAssetResumableLoad.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAssetResumableLoad();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAssetResumableLoad.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAssetResumableLoad();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAssetResumableLoad.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227650904@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAssetResumableLoad();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAudioLanguageEngagementSheetAcknowledgment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAudioLanguageEngagementSheetAcknowledgment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAudioLanguageEngagementSheetAcknowledgment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_227650AC0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id static ManagedAudioLanguageEngagementSheetAcknowledgment.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227650B74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAudioLanguagePreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAudioLanguagePreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAudioLanguagePreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAudioLanguagePreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAudioLanguagePreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227650D24(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 languageIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227650D8C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setLanguageIdentifier_];
}

id static ManagedAudioLanguagePreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227650E68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAudioLanguagePreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedAvailableAudioLanguageIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAvailableAudioLanguageIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAvailableAudioLanguageIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedAvailableAudioLanguageIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227651090(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2276510F8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setIdentifier_];
}

uint64_t sub_227651168@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedBodyFocus.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBodyFocus.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedBodyFocus();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBodyFocus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedBodyFocus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedBodyFocus.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227651314@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedBodyFocus();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedBodyFocusIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBodyFocusIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedBodyFocusIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBodyFocusIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedBodyFocusIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedBodyFocusIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276514C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedBodyFocusIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedBookmark.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBookmark.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedBookmark();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBookmark.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedBookmark();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2276516AC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateBookmarked];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_227651750(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateBookmarked_];
}

id static ManagedBookmark.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276518F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedBookmark();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedBurnBarDisplayPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBurnBarDisplayPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedBurnBarDisplayPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBurnBarDisplayPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedBurnBarDisplayPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedBurnBarDisplayPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227651B24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedBurnBarDisplayPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogAccessibilityFeature.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogAccessibilityFeature.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogAccessibilityFeature();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogAccessibilityFeature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogAccessibilityFeature();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227651CE0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 feature];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227651D48(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setFeature_];
}

id static ManagedCatalogAccessibilityFeature.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227651E24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogAccessibilityFeature();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogFilterPropertyType.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogFilterPropertyType.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogFilterPropertyType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogFilterPropertyType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogFilterPropertyType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227651F70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 propertyType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227651FD8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setPropertyType_];
}

id static ManagedCatalogFilterPropertyType.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276520B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogFilterPropertyType();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogMetadataJournal.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogMetadataJournal.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogMetadataJournal();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogMetadataJournal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogMetadataJournal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_227652270@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id static ManagedCatalogMetadataJournal.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227652324@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogMetadataJournal();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogModalityFeature.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogModalityFeature.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogModalityFeature();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogModalityFeature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogModalityFeature();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogModalityFeature.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276524C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogModalityFeature();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogModalityMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogModalityMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogModalityMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogModalityMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogModalityMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogModalityMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2276526E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 artwork];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227652748(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setArtwork_];
}

uint64_t sub_2276527C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogModalityMetadata();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogModalityReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogModalityReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogModalityReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogModalityReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogModalityReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogModalityReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276529B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogModalityReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogPreview.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogPreview.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogPreview();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogPreview.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogPreview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogPreview.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227652C00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogPreview();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogProgramMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogProgramMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogProgramMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogProgramMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogProgramMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogProgramMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227652E4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogProgramMetadata();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogProgramReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogProgramReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogProgramReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogProgramReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogProgramReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogProgramReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227653098@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogProgramReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogSyncAnchor.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogSyncAnchor.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogSyncAnchor();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogSyncAnchor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogSyncAnchor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogSyncAnchor.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227653320(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDate_];
}

uint64_t sub_22765344C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogSyncAnchor();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogTheme.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogTheme.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogTheme();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogTheme.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogTheme();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogTheme.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227653680@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogTheme();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogThemeCategory.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogThemeCategory.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogThemeCategory();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogThemeCategory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogThemeCategory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogThemeCategory.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276538B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogThemeCategory();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogTipCategoryIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogTipCategoryIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogTipCategoryIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogTipCategoryIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogTipCategoryIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogTipCategoryIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227653ADC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogTipCategoryIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogTipCategoryReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogTipCategoryReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogTipCategoryReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogTipCategoryReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogTipCategoryReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogTipCategoryReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227653D04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogTipCategoryReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogTipJournal.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogTipJournal.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogTipJournal();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogTipJournal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogTipJournal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogTipJournal.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227653F50(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDate_];
}

uint64_t sub_22765407C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogTipJournal();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogTipReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogTipReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogTipReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogTipReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogTipReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogTipReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276542B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogTipReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogWorkoutMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogWorkoutMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogWorkoutMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogWorkoutMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogWorkoutMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogWorkoutMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276544D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogWorkoutMetadata();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogWorkoutReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogWorkoutReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogWorkoutReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogWorkoutReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogWorkoutReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCatalogWorkoutReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276547CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogWorkoutReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCatalogWorkoutTrait.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCatalogWorkoutTrait.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCatalogWorkoutTrait();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCatalogWorkoutTrait.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCatalogWorkoutTrait();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2276549AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 trait];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227654A14(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTrait_];
}

id static ManagedCatalogWorkoutTrait.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227654AF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCatalogWorkoutTrait();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCoachingEvent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCoachingEvent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCoachingEvent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCoachingEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCoachingEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCoachingEvent.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227654D18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCoachingEvent();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCommentaryEvent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCommentaryEvent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCommentaryEvent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCommentaryEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCommentaryEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCommentaryEvent.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227654F7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCommentaryEvent();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedCompletedMarketingVideo.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCompletedMarketingVideo.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedCompletedMarketingVideo();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCompletedMarketingVideo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCompletedMarketingVideo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227655144@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateWatched];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2276551E8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateWatched_];
}

id static ManagedCompletedMarketingVideo.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227655380@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedCompletedMarketingVideo();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedConfiguration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedConfiguration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedConfiguration();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedConfiguration.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227655520(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227655588(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setData_];
}

uint64_t sub_227655600@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedConfiguration();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedContributor.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedContributor.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedContributor();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedContributor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedContributor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedContributor.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227655828@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedContributor();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedContributorIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedContributorIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedContributorIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedContributorIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedContributorIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedContributorIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276559EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedContributorIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedDirtySyncZone.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedDirtySyncZone.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedDirtySyncZone();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedDirtySyncZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedDirtySyncZone();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227655BB4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_227655C58(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

void sub_227655D84(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 zoneName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227655DEC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setZoneName_];
}

id static ManagedDirtySyncZone.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227655EC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedDirtySyncZone();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedEnergyBurnedRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedEnergyBurnedRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedEnergyBurnedRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedEnergyBurnedRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedEnergyBurnedRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedEnergyBurnedRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2276560E4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 modalityIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765614C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setModalityIdentifier_];
}

uint64_t sub_2276561BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedEnergyBurnedRecord();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedEngagementBadge.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedEngagementBadge.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedEngagementBadge();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedEngagementBadge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedEngagementBadge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedEngagementBadge.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276563E4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 receivedDate];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_227656488(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setReceivedDate_];
}

uint64_t sub_2276565B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedEngagementBadge();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedEquipment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedEquipment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedEquipment();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedEquipment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedEquipment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedEquipment.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276567F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedEquipment();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedEquipmentIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedEquipmentIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedEquipmentIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedEquipmentIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedEquipmentIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedEquipmentIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227656994@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedEquipmentIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedEstimatedCalories.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedEstimatedCalories.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedEstimatedCalories();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedEstimatedCalories.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedEstimatedCalories();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_227656B5C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id static ManagedEstimatedCalories.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227656C10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedEstimatedCalories();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedGuidedWorkoutCount.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedGuidedWorkoutCount.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedGuidedWorkoutCount();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedGuidedWorkoutCount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedGuidedWorkoutCount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedGuidedWorkoutCount.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227656E44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedGuidedWorkoutCount();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedHealthKitActivityType.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedHealthKitActivityType.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedHealthKitActivityType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedHealthKitActivityType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHealthKitActivityType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedHealthKitActivityType.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227656FF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedHealthKitActivityType();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedHealthKitMindfulSession.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedHealthKitMindfulSession.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedHealthKitMindfulSession();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedHealthKitMindfulSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHealthKitMindfulSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedHealthKitMindfulSession.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227657230@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_227662710();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_227662750();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_2276572D0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_226EDDC60(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_227662750();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_2276626A0();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_2276573FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedHealthKitMindfulSession();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedHealthKitSessionReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedHealthKitSessionReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedHealthKitSessionReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedHealthKitSessionReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHealthKitSessionReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedHealthKitSessionReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227657648@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedHealthKitSessionReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedHealthKitStandaloneMindfulSessionJob.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedHealthKitStandaloneMindfulSessionJob.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedHealthKitStandaloneMindfulSessionJob.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedHealthKitStandaloneMindfulSessionJob.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227657870@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedHealthKitStandaloneWorkoutJob.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedHealthKitStandaloneWorkoutJob.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedHealthKitStandaloneWorkoutJob.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedHealthKitStandaloneWorkoutJob.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227657AA4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226E93170(a1, &v12 - v6, &unk_27D7BB9D0, &qword_227671550);
  v8 = *a2;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_227662790();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setHealthKitWorkoutIdentifier_];
}

uint64_t sub_227657BE0@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_227657C98(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226E93170(a1, &v12 - v6, &qword_27D7B9690, qword_227670B50);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setStartDate_];
}

uint64_t sub_227657DD4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedHealthKitWorkout.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedHealthKitWorkout.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedHealthKitWorkout();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedHealthKitWorkout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHealthKitWorkout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227657F9C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setStartDate_];
}

id static ManagedHealthKitWorkout.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227658134@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedHealthKitWorkout();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedKeyCertificate.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedKeyCertificate.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedKeyCertificate();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedKeyCertificate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedKeyCertificate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2276582FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 remoteURL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227658364(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setRemoteURL_];
}

id static ManagedKeyCertificate.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227658440@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedKeyCertificate();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedLanguageDisclaimer.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedLanguageDisclaimer.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedLanguageDisclaimer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedLanguageDisclaimer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedLanguageDisclaimer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedLanguageDisclaimer.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765865C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedLanguageDisclaimer();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedMediaMoment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedMediaMoment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedMediaMoment();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedMediaMoment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedMediaMoment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedMediaMoment.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765889C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedMediaMoment();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedMetricsDisplayPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedMetricsDisplayPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedMetricsDisplayPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedMetricsDisplayPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedMetricsDisplayPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedMetricsDisplayPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227658AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedMetricsDisplayPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedModalityIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedModalityIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedModalityIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedModalityIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedModalityIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedModalityIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227658C58@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedModalityIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedModalityWorkoutCount.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedModalityWorkoutCount.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedModalityWorkoutCount();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedModalityWorkoutCount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedModalityWorkoutCount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedModalityWorkoutCount.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227658E8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedModalityWorkoutCount();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedMusicGenre.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedMusicGenre.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedMusicGenre();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedMusicGenre.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedMusicGenre();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedMusicGenre.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227659084@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedMusicGenre();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedMusicGenreIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedMusicGenreIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedMusicGenreIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedMusicGenreIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedMusicGenreIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedMusicGenreIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227659224@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedMusicGenreIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedMusicTrack.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedMusicTrack.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedMusicTrack();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedMusicTrack.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedMusicTrack();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedMusicTrack.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227659458@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedMusicTrack();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedNoticePrivacyPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedNoticePrivacyPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedNoticePrivacyPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedNoticePrivacyPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedNoticePrivacyPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedNoticePrivacyPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765968C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 version];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2276596F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setVersion_];
}

uint64_t sub_227659764@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedNoticePrivacyPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedNoticePrivacyPreferenceJournal.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedNoticePrivacyPreferenceJournal.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedNoticePrivacyPreferenceJournal();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedNoticePrivacyPreferenceJournal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedNoticePrivacyPreferenceJournal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedNoticePrivacyPreferenceJournal.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227659980(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

uint64_t sub_227659AAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedNoticePrivacyPreferenceJournal();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedOnboardingModalityIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOnboardingModalityIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedOnboardingModalityIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOnboardingModalityIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedOnboardingModalityIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOnboardingModalityIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227659CC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedOnboardingModalityIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedOnboardingSurveyResult.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOnboardingSurveyResult.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedOnboardingSurveyResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOnboardingSurveyResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedOnboardingSurveyResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOnboardingSurveyResult.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227659EF0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 completedDate];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_227659F94(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCompletedDate_];
}

uint64_t sub_22765A0C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedOnboardingSurveyResult();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedOptInPrivacyPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOptInPrivacyPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedOptInPrivacyPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOptInPrivacyPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedOptInPrivacyPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOptInPrivacyPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765A2F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedOptInPrivacyPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedOptInPrivacyPreferenceJournal.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOptInPrivacyPreferenceJournal.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedOptInPrivacyPreferenceJournal();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOptInPrivacyPreferenceJournal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedOptInPrivacyPreferenceJournal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOptInPrivacyPreferenceJournal.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765A510(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

uint64_t sub_22765A63C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedOptInPrivacyPreferenceJournal();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedPersonalizationPrivacyPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPersonalizationPrivacyPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedPersonalizationPrivacyPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPersonalizationPrivacyPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedPersonalizationPrivacyPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPersonalizationPrivacyPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765A858@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedPersonalizationPrivacyPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedPlaybackVoucher.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPlaybackVoucher.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedPlaybackVoucher();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPlaybackVoucher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedPlaybackVoucher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPlaybackVoucher.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765AA8C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_227662590();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_22765AAF0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v7 = sub_227662560();
  }

  v9 = v7;
  [v6 *a5];
}

uint64_t sub_22765AB68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedPlaybackVoucher();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedPlaylist.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPlaylist.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedPlaylist();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPlaylist.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedPlaylist();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPlaylist.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765AD8C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateCreated];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22765AE30(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateCreated_];
}

uint64_t sub_22765AF5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedPlaylist();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedPlaylistItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPlaylistItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedPlaylistItem();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPlaylistItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedPlaylistItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPlaylistItem.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765B184@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedPlaylistItem();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedPrivacyAcknowledgement.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPrivacyAcknowledgement.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedPrivacyAcknowledgement();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPrivacyAcknowledgement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedPrivacyAcknowledgement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPrivacyAcknowledgement.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765B3B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedPrivacyAcknowledgement();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedProgramCompletion.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedProgramCompletion.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedProgramCompletion();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedProgramCompletion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedProgramCompletion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22765B598@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 completionDate];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22765B63C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCompletionDate_];
}

id static ManagedProgramCompletion.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765B7D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedProgramCompletion();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedProgressDisplayPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedProgressDisplayPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedProgressDisplayPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedProgressDisplayPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedProgressDisplayPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedProgressDisplayPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765B9F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedProgressDisplayPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedRecentSearchTerm.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedRecentSearchTerm.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedRecentSearchTerm();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedRecentSearchTerm.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedRecentSearchTerm();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22765BBA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 term];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765BC08(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTerm_];
}

id sub_22765BC78@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 platform];
  *a2 = result;
  return result;
}

void sub_22765BCC0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateCreated_];
}

id static ManagedRecentSearchTerm.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765BE58@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedRecentSearchTerm();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedRecommendation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedRecommendation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedRecommendation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedRecommendation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedRecommendation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedRecommendation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765C08C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedRecommendation();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedRemoteBrowsingConnectionRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedRemoteBrowsingConnectionRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedRemoteBrowsingConnectionRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedRemoteBrowsingConnectionRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765C2B4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 participantIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765C31C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setParticipantIdentifier_];
}

void sub_22765C38C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

uint64_t sub_22765C4B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSampleContentArchivedSession.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSampleContentArchivedSession.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSampleContentArchivedSession();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSampleContentArchivedSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSampleContentArchivedSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSampleContentArchivedSession.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765C6E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSampleContentArchivedSession();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedScoreSummary.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedScoreSummary.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedScoreSummary();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedScoreSummary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedScoreSummary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedScoreSummary.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765C8FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedScoreSummary();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedServerOperation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedServerOperation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedServerOperation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedServerOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedServerOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedServerOperation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765CB6C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 request];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765CBD4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setRequest_];
}

uint64_t sub_22765CC4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedServerOperation();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSessionScores.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSessionScores.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSessionScores();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSessionScores.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSessionScores();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSessionScores.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765CE74(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 scores];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765CEDC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setScores_];
}

uint64_t sub_22765CF54@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSessionScores();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSkillLevel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSkillLevel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSkillLevel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSkillLevel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSkillLevel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSkillLevel.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765D188@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSkillLevel();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSkillLevelIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSkillLevelIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSkillLevelIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSkillLevelIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSkillLevelIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSkillLevelIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765D3A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSkillLevelIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSocialMediaHandle.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSocialMediaHandle.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSocialMediaHandle();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSocialMediaHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSocialMediaHandle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSocialMediaHandle.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765D5CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSocialMediaHandle();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedStreamingKeyNonce.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedStreamingKeyNonce.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedStreamingKeyNonce();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedStreamingKeyNonce.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedStreamingKeyNonce();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22765D794(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 workoutIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765D7FC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setWorkoutIdentifier_];
}

id static ManagedStreamingKeyNonce.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765D8D8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 seed];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765D940(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setSeed_];
}

uint64_t sub_22765D9B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedStreamingKeyNonce();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSyncChangeTag.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSyncChangeTag.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSyncChangeTag();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSyncChangeTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSyncChangeTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSyncChangeTag.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765DC10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSyncChangeTag();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSyncEncryptionKey.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSyncEncryptionKey.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSyncEncryptionKey();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSyncEncryptionKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSyncEncryptionKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSyncEncryptionKey.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765DE44@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_2276627B0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2276627D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22765DEE8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_22764EF4C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_227662790();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

void sub_22765E014(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 key];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765E07C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setKey_];
}

uint64_t sub_22765E0F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSyncEncryptionKey();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSyncOperation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSyncOperation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSyncOperation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSyncOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSyncOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22765E2B0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 domain];
  *a2 = result;
  return result;
}

id static ManagedSyncOperation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765E364@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSyncOperation();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedSyncZoneChangeWindow.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSyncZoneChangeWindow.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSyncZoneChangeWindow();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSyncZoneChangeWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSyncZoneChangeWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedSyncZoneChangeWindow.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22765E58C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 changeWindow];
  if (v3)
  {
    v4 = v3;
    v5 = sub_227662590();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765E5F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_227662560();
  }

  v5 = v3;
  [v2 setChangeWindow_];
}

uint64_t sub_22765E66C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSyncZoneChangeWindow();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedThemeIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedThemeIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedThemeIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedThemeIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedThemeIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedThemeIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765E818@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedThemeIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedTrainerEvent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTrainerEvent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedTrainerEvent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTrainerEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedTrainerEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTrainerEvent.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765EA4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedTrainerEvent();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedTrainerIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTrainerIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedTrainerIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTrainerIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedTrainerIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTrainerIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765EBEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedTrainerIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedTrainerMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTrainerMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedTrainerMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTrainerMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedTrainerMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTrainerMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765EE20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedTrainerMetadata();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedTrainerReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTrainerReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedTrainerReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTrainerReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedTrainerReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTrainerReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765F054@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedTrainerReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedUpNextQueueItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedUpNextQueueItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedUpNextQueueItem();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedUpNextQueueItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedUpNextQueueItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedUpNextQueueItem.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765F270@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateAdded];
  if (v3)
  {
    v4 = v3;
    sub_227662710();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_22765F314(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226EDDC60(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateAdded_];
}

uint64_t sub_22765F440@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedUpNextQueueItem();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedUserAccountNotification.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedUserAccountNotification.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedUserAccountNotification();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedUserAccountNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedUserAccountNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedUserAccountNotification.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765F668@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedUserAccountNotification();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765F814@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlan.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlan.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlan();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlan.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlan();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22765FA2C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_226E93170(a1, &v16 - v10, &unk_27D7BB9D0, &qword_227671550);
  v12 = *a2;
  v13 = sub_2276627D0();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_227662790();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_22765FB68(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 startDate];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22765FBD0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setStartDate_];
}

id static ManagedWorkoutPlan.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22765FCAC@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_22765FD64(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226E93170(a1, &v12 - v6, &qword_27D7B9690, qword_227670B50);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateCreated_];
}

uint64_t sub_22765FEA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlan();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanItem();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanItem.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2276600D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 workout];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22766013C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setWorkout_];
}

uint64_t sub_2276601AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanItem();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanItemIndex.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanItemIndex.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanItemIndex();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanItemIndex.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanItemIndex();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanItemIndex.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2276603C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 offset];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227660430(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setOffset_];
}

uint64_t sub_2276604A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanItemIndex();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanModalityPreference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanModalityPreference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanModalityPreference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanModalityPreference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanModalityPreference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanModalityPreference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276606E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanModalityPreference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanMusicIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanMusicIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanMusicIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanMusicIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227660920@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227660ADC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dateOffset];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227660B44(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setDateOffset_];
}

id sub_227660BB4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id static ManagedWorkoutPlanReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227660C68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanReference();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanScheduledItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanScheduledItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanScheduledItem();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanScheduledItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanScheduledItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanScheduledItem.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227660E90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanScheduledItem();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanScheduledItemIndex.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanScheduledItemIndex.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanScheduledItemIndex.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanScheduledItemIndex.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276610B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanScheduleFilterProperty.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanScheduleFilterProperty.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanScheduleFilterProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanScheduleFilterProperty.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276612D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanSummaryViewed.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanSummaryViewed.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanSummaryViewed.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2276614E8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226E93170(a1, &v12 - v6, &qword_27D7B9690, qword_227670B50);
  v8 = *a2;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2276626A0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateViewed_];
}

uint64_t sub_227661658@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_227661710(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_226E93170(a1, &v12 - v6, &unk_27D7BB9D0, &qword_227671550);
  v8 = *a2;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_227662790();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPlanIdentifier_];
}

id static ManagedWorkoutPlanSummaryViewed.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2276618B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanTemplate.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanTemplate.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanTemplate();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanTemplate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanTemplate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_227661A68(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_22764EF4C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_227662790();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

id static ManagedWorkoutPlanTemplate.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_227661C00(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22766C000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_227661C68(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_22766BFD0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setName_];
}

uint64_t sub_227661CD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanTemplate();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}

id ManagedWorkoutPlanTrainerIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWorkoutPlanTrainerIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWorkoutPlanTrainerIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedWorkoutPlanTrainerIdentifier.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22766BFD0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_227661F0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
  result = sub_22766CE40();
  *a1 = result;
  return result;
}