uint64_t sub_22760DB30()
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
    v5 = sub_22760DC4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760DC4C()
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
    v21[1] = sub_22760DB30;

    return sub_22708E1D4(sub_22708E1D4, sub_227645D94, v19);
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

uint64_t sub_22760DF54(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276668A0();

  return MEMORY[0x2822009F8](sub_22760E020, 0, 0);
}

uint64_t sub_22760E020()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetRequestKeyMetadata.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF858, &qword_22768DF90);
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
    v26[1] = sub_22760E468;

    return sub_22708E1D4(sub_22708E1D4, sub_227645DC0, v24);
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

uint64_t sub_22760E468()
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
    v5 = sub_22760E584;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760E584()
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
    v21[1] = sub_22760E468;

    return sub_22708E1D4(sub_22708E1D4, sub_227645DC0, v19);
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

uint64_t sub_22760E88C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276687D0();

  return MEMORY[0x2822009F8](sub_22760E958, 0, 0);
}

uint64_t sub_22760E958()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetRequestMediaStreamMetadata.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF860, &qword_22768DF98);
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
    v26[1] = sub_22760EDA0;

    return sub_22708E1D4(sub_22708E1D4, sub_227645DEC, v24);
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

uint64_t sub_22760EDA0()
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
    v5 = sub_22760EEBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760EEBC()
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
    v21[1] = sub_22760EDA0;

    return sub_22708E1D4(sub_22708E1D4, sub_227645DEC, v19);
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

uint64_t sub_22760F1C4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666070();

  return MEMORY[0x2822009F8](sub_22760F290, 0, 0);
}

uint64_t sub_22760F290()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetRequestReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF868, &qword_22768DFA0);
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
    v26[1] = sub_22760F6D8;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E18, v24);
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

uint64_t sub_22760F6D8()
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
    v5 = sub_22760F7F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22760F7F4()
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
    v21[1] = sub_22760F6D8;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E18, v19);
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

uint64_t sub_22760FAFC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665490();

  return MEMORY[0x2822009F8](sub_22760FBC8, 0, 0);
}

uint64_t sub_22760FBC8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AssetResumableLoad.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF870, &qword_22768DFA8);
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
    v26[1] = sub_227610010;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E44, v24);
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

uint64_t sub_227610010()
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
    v5 = sub_22761012C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761012C()
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
    v21[1] = sub_227610010;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E44, v19);
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

uint64_t sub_227610434(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669040();

  return MEMORY[0x2822009F8](sub_227610500, 0, 0);
}

uint64_t sub_227610500()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AudioLanguageEngagementSheetAcknowledgment.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF878, &qword_22768DFB0);
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
    v26[1] = sub_227610948;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E70, v24);
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

uint64_t sub_227610948()
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
    v5 = sub_227610A64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227610A64()
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
    v21[1] = sub_227610948;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E70, v19);
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

uint64_t sub_227610D6C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276668F0();

  return MEMORY[0x2822009F8](sub_227610E38, 0, 0);
}

uint64_t sub_227610E38()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static AudioLanguagePreference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF880, &qword_22768DFB8);
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
    v26[1] = sub_227611280;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E9C, v24);
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

uint64_t sub_227611280()
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
    v5 = sub_22761139C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761139C()
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
    v21[1] = sub_227611280;

    return sub_22708E1D4(sub_22708E1D4, sub_227645E9C, v19);
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

uint64_t sub_2276116A4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227611764, 0, 0);
}

uint64_t sub_227611764()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_227145CAC();
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
    v0[2] = &type metadata for AvailableAudioLanguageIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF888, &qword_22768DFC0);
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
    v24[1] = sub_227611B80;

    return sub_22708E1D4(sub_22708E1D4, sub_227645EC8, v22);
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

uint64_t sub_227611B80()
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
    v5 = sub_227611C9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227611C9C()
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
    v20[1] = sub_227611B80;

    return sub_22708E1D4(sub_22708E1D4, sub_227645EC8, v18);
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

uint64_t sub_227611F6C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669530();

  return MEMORY[0x2822009F8](sub_227612038, 0, 0);
}

uint64_t sub_227612038()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static BodyFocus.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF890, &qword_22768DFC8);
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
    v26[1] = sub_227612480;

    return sub_22708E1D4(sub_22708E1D4, sub_227645EF4, v24);
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

uint64_t sub_227612480()
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
    v5 = sub_22761259C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761259C()
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
    v21[1] = sub_227612480;

    return sub_22708E1D4(sub_22708E1D4, sub_227645EF4, v19);
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

uint64_t sub_2276128A4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227612964, 0, 0);
}

uint64_t sub_227612964()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_2272B8F18();
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
    v0[2] = &type metadata for BodyFocusIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF898, &qword_22768DFD0);
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
    v24[1] = sub_227612D80;

    return sub_22708E1D4(sub_22708E1D4, sub_227645F20, v22);
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

uint64_t sub_227612D80()
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
    v5 = sub_227612E9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227612E9C()
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
    v20[1] = sub_227612D80;

    return sub_22708E1D4(sub_22708E1D4, sub_227645F20, v18);
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

uint64_t sub_22761316C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669360();

  return MEMORY[0x2822009F8](sub_227613238, 0, 0);
}

uint64_t sub_227613238()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static Bookmark.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8A0, &qword_22768DFD8);
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
    v26[1] = sub_227613680;

    return sub_22708E1D4(sub_22708E1D4, sub_227645F4C, v24);
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

uint64_t sub_227613680()
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
    v5 = sub_22761379C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761379C()
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
    v21[1] = sub_227613680;

    return sub_22708E1D4(sub_22708E1D4, sub_227645F4C, v19);
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

uint64_t sub_227613AA4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666F20();

  return MEMORY[0x2822009F8](sub_227613B70, 0, 0);
}

uint64_t sub_227613B70()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static BurnBarDisplayPreference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8A8, &unk_22768DFE0);
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
    v26[1] = sub_227613FB8;

    return sub_22708E1D4(sub_22708E1D4, sub_227645F78, v24);
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

uint64_t sub_227613FB8()
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
    v5 = sub_2276140D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276140D4()
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
    v21[1] = sub_227613FB8;

    return sub_22708E1D4(sub_22708E1D4, sub_227645F78, v19);
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

uint64_t sub_2276143DC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);

  return MEMORY[0x2822009F8](sub_2276144B4, 0, 0);
}

uint64_t sub_2276144B4()
{
  v35 = v0;
  v1 = v0[7];
  sub_2271E40F0();
  sub_226F51824();
  v2 = sub_227663B50();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v33 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8B0, &unk_22768DFF0);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v34);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v33, v7);
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
    v26 = v0[9];
    v27 = v0[7];

    v28 = v0[1];
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

  v22 = (2 * v17) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v21;
  v23[3] = v21 + 32;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v19 + v20);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_2276148F4;

    return sub_22708E1D4(sub_22708E1D4, sub_227645FA4, v23);
  }

  v29 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51008], v29);
  swift_willThrow();

  v31 = v0[9];
  v32 = v0[7];

  v28 = v0[1];
LABEL_16:

  return v28();
}

uint64_t sub_2276148F4()
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
    v5 = sub_227614A10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227614A10()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v21 = v0[9];
    v22 = v0[7];

    v23 = v0[1];
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
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[13] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[14] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_2276148F4;

    return sub_22708E1D4(sub_22708E1D4, sub_227645FA4, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v26 = v0[9];
  v27 = v0[7];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_227614CE8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);

  return MEMORY[0x2822009F8](sub_227614DC0, 0, 0);
}

uint64_t sub_227614DC0()
{
  v35 = v0;
  v1 = v0[7];
  sub_226FA73A8();
  sub_226EB6784();
  v2 = sub_227663B50();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v33 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8B8, &unk_22768E000);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v34);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v33, v7);
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
    v26 = v0[9];
    v27 = v0[7];

    v28 = v0[1];
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

  v22 = (2 * v17) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v21;
  v23[3] = v21 + 32;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v19 + v20);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227615200;

    return sub_22708E1D4(sub_22708E1D4, sub_227645FD0, v23);
  }

  v29 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51008], v29);
  swift_willThrow();

  v31 = v0[9];
  v32 = v0[7];

  v28 = v0[1];
LABEL_16:

  return v28();
}

uint64_t sub_227615200()
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
    v5 = sub_22761531C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761531C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v21 = v0[9];
    v22 = v0[7];

    v23 = v0[1];
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
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[13] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[14] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_227615200;

    return sub_22708E1D4(sub_22708E1D4, sub_227645FD0, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v26 = v0[9];
  v27 = v0[7];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_2276155F4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);

  return MEMORY[0x2822009F8](sub_2276156CC, 0, 0);
}

uint64_t sub_2276156CC()
{
  v35 = v0;
  v1 = v0[7];
  sub_22733622C();
  sub_226EB60FC();
  v2 = sub_227663B50();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v33 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8C0, &qword_22768E010);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v34);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v33, v7);
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
    v26 = v0[9];
    v27 = v0[7];

    v28 = v0[1];
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

  v22 = (2 * v17) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v21;
  v23[3] = v21 + 32;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v19 + v20);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227615B0C;

    return sub_22708E1D4(sub_22708E1D4, sub_227645FFC, v23);
  }

  v29 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51008], v29);
  swift_willThrow();

  v31 = v0[9];
  v32 = v0[7];

  v28 = v0[1];
LABEL_16:

  return v28();
}

uint64_t sub_227615B0C()
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
    v5 = sub_227615C28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227615C28()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v21 = v0[9];
    v22 = v0[7];

    v23 = v0[1];
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
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[13] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[14] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_227615B0C;

    return sub_22708E1D4(sub_22708E1D4, sub_227645FFC, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v26 = v0[9];
  v27 = v0[7];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_227615F00(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666330();

  return MEMORY[0x2822009F8](sub_227615FCC, 0, 0);
}

uint64_t sub_227615FCC()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogMetadataJournal.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8C8, &qword_22768E018);
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
    v26[1] = sub_227616414;

    return sub_22708E1D4(sub_22708E1D4, sub_227646028, v24);
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

uint64_t sub_227616414()
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
    v5 = sub_227616530;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227616530()
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
    v21[1] = sub_227616414;

    return sub_22708E1D4(sub_22708E1D4, sub_227646028, v19);
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

uint64_t sub_227616838(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666980();

  return MEMORY[0x2822009F8](sub_227616904, 0, 0);
}

uint64_t sub_227616904()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogModalityMetadata.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8D0, &qword_22768E020);
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
    v26[1] = sub_227616D4C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646054, v24);
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

uint64_t sub_227616D4C()
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
    v5 = sub_227616E68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227616E68()
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
    v21[1] = sub_227616D4C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646054, v19);
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

uint64_t sub_227617170(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666FF0();

  return MEMORY[0x2822009F8](sub_22761723C, 0, 0);
}

uint64_t sub_22761723C()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogModalityReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8D8, &qword_22768E028);
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
    v26[1] = sub_227617684;

    return sub_22708E1D4(sub_22708E1D4, sub_227646080, v24);
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

uint64_t sub_227617684()
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
    v5 = sub_2276177A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276177A0()
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
    v21[1] = sub_227617684;

    return sub_22708E1D4(sub_22708E1D4, sub_227646080, v19);
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

uint64_t sub_227617AA8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664210();

  return MEMORY[0x2822009F8](sub_227617B74, 0, 0);
}

uint64_t sub_227617B74()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogPreview.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8E0, &qword_22768E030);
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
    v26[1] = sub_227617FBC;

    return sub_22708E1D4(sub_22708E1D4, sub_2276460AC, v24);
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

uint64_t sub_227617FBC()
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
    v5 = sub_2276180D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276180D8()
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
    v21[1] = sub_227617FBC;

    return sub_22708E1D4(sub_22708E1D4, sub_2276460AC, v19);
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

uint64_t sub_2276183E0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666A40();

  return MEMORY[0x2822009F8](sub_2276184AC, 0, 0);
}

uint64_t sub_2276184AC()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogProgramReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8E8, &qword_22768E038);
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
    v26[1] = sub_2276188F4;

    return sub_22708E1D4(sub_22708E1D4, sub_2276460D8, v24);
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

uint64_t sub_2276188F4()
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
    v5 = sub_227618A10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227618A10()
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
    v21[1] = sub_2276188F4;

    return sub_22708E1D4(sub_22708E1D4, sub_2276460D8, v19);
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

uint64_t sub_227618D18(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665030();

  return MEMORY[0x2822009F8](sub_227618DE4, 0, 0);
}

uint64_t sub_227618DE4()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogSyncAnchor.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8F0, &qword_22768E040);
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
    v26[1] = sub_22761922C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646104, v24);
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

uint64_t sub_22761922C()
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
    v5 = sub_227619348;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227619348()
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
    v21[1] = sub_22761922C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646104, v19);
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

uint64_t sub_227619650(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663A30();

  return MEMORY[0x2822009F8](sub_22761971C, 0, 0);
}

uint64_t sub_22761971C()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogTheme.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF8F8, &qword_22768E048);
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
    v26[1] = sub_227619B64;

    return sub_22708E1D4(sub_22708E1D4, sub_227646130, v24);
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

uint64_t sub_227619B64()
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
    v5 = sub_227619C80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227619C80()
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
    v21[1] = sub_227619B64;

    return sub_22708E1D4(sub_22708E1D4, sub_227646130, v19);
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

uint64_t sub_227619F88(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665D70();

  return MEMORY[0x2822009F8](sub_22761A054, 0, 0);
}

uint64_t sub_22761A054()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogThemeCategory.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF900, &qword_22768E050);
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
    v26[1] = sub_22761A49C;

    return sub_22708E1D4(sub_22708E1D4, sub_22764615C, v24);
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

uint64_t sub_22761A49C()
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
    v5 = sub_22761A5B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761A5B8()
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
    v21[1] = sub_22761A49C;

    return sub_22708E1D4(sub_22708E1D4, sub_22764615C, v19);
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

uint64_t sub_22761A8C0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22761A980, 0, 0);
}

uint64_t sub_22761A980()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_2274B4338();
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
    v0[2] = &type metadata for CatalogTipCategoryIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF908, &qword_22768E058);
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
    v24[1] = sub_22761AD9C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646188, v22);
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

uint64_t sub_22761AD9C()
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
    v5 = sub_22761AEB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761AEB8()
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
    v20[1] = sub_22761AD9C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646188, v18);
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

uint64_t sub_22761B188(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667B30();

  return MEMORY[0x2822009F8](sub_22761B254, 0, 0);
}

uint64_t sub_22761B254()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogTipCategoryReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF910, &qword_22768E060);
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
    v26[1] = sub_22761B69C;

    return sub_22708E1D4(sub_22708E1D4, sub_2276461B4, v24);
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

uint64_t sub_22761B69C()
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
    v5 = sub_22761B7B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761B7B8()
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
    v21[1] = sub_22761B69C;

    return sub_22708E1D4(sub_22708E1D4, sub_2276461B4, v19);
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

uint64_t sub_22761BAC0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276650A0();

  return MEMORY[0x2822009F8](sub_22761BB8C, 0, 0);
}

uint64_t sub_22761BB8C()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogTipJournal.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF918, &qword_22768E068);
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
    v26[1] = sub_22761BFD4;

    return sub_22708E1D4(sub_22708E1D4, sub_2276461E0, v24);
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

uint64_t sub_22761BFD4()
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
    v5 = sub_22761C0F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761C0F0()
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
    v21[1] = sub_22761BFD4;

    return sub_22708E1D4(sub_22708E1D4, sub_2276461E0, v19);
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

uint64_t sub_22761C3F8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276658B0();

  return MEMORY[0x2822009F8](sub_22761C4C4, 0, 0);
}

uint64_t sub_22761C4C4()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogTipReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF920, &qword_22768E070);
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
    v26[1] = sub_22761C90C;

    return sub_22708E1D4(sub_22708E1D4, sub_22764620C, v24);
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

uint64_t sub_22761C90C()
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
    v5 = sub_22761CA28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761CA28()
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
    v21[1] = sub_22761C90C;

    return sub_22708E1D4(sub_22708E1D4, sub_22764620C, v19);
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

uint64_t sub_22761CD30(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276664D0();

  return MEMORY[0x2822009F8](sub_22761CDFC, 0, 0);
}

uint64_t sub_22761CDFC()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogWorkoutMetadata.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF928, &qword_22768E078);
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
    v26[1] = sub_22761D244;

    return sub_22708E1D4(sub_22708E1D4, sub_227646238, v24);
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

uint64_t sub_22761D244()
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
    v5 = sub_22761D360;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761D360()
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
    v21[1] = sub_22761D244;

    return sub_22708E1D4(sub_22708E1D4, sub_227646238, v19);
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

uint64_t sub_22761D668(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666B60();

  return MEMORY[0x2822009F8](sub_22761D734, 0, 0);
}

uint64_t sub_22761D734()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CatalogWorkoutReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF930, &unk_22768E080);
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
    v26[1] = sub_22761DB7C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646264, v24);
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

uint64_t sub_22761DB7C()
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
    v5 = sub_22761DC98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761DC98()
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
    v21[1] = sub_22761DB7C;

    return sub_22708E1D4(sub_22708E1D4, sub_227646264, v19);
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

uint64_t sub_22761DFA0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);

  return MEMORY[0x2822009F8](sub_22761E078, 0, 0);
}

uint64_t sub_22761E078()
{
  v35 = v0;
  v1 = v0[7];
  sub_2274332E4();
  sub_226F50E1C();
  v2 = sub_227663B50();
  v0[9] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v33 = v0[7];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v2 + 16);

    *(v8 + 12) = 2080;
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF938, &qword_22768E090);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v34);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v33, v7);
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
    v26 = v0[9];
    v27 = v0[7];

    v28 = v0[1];
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

  v22 = (2 * v17) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v21;
  v23[3] = v21 + 32;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v19 + v20);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22761E4B8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646290, v23);
  }

  v29 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51008], v29);
  swift_willThrow();

  v31 = v0[9];
  v32 = v0[7];

  v28 = v0[1];
LABEL_16:

  return v28();
}

uint64_t sub_22761E4B8()
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
    v5 = sub_22761E5D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761E5D4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  if (v3 >= v5)
  {
    v21 = v0[9];
    v22 = v0[7];

    v23 = v0[1];
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
  v17 = (2 * v10) | 1;
  v18 = swift_allocObject();
  v0[13] = v18;
  v18[2] = v12;
  v18[3] = v12 + 32;
  v18[4] = v7;
  v18[5] = v17;
  v19 = *(v16 + v15);
  v0[14] = v19;
  swift_bridgeObjectRetain_n();
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_22761E4B8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646290, v18);
  }

  v24 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51008], v24);
  swift_willThrow();

  v26 = v0[9];
  v27 = v0[7];

  v23 = v0[1];
LABEL_19:

  return v23();
}

uint64_t sub_22761E8AC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663E50();

  return MEMORY[0x2822009F8](sub_22761E978, 0, 0);
}

uint64_t sub_22761E978()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CoachingEvent.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF940, &qword_22768E098);
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
    v26[1] = sub_22761EDC0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276462BC, v24);
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

uint64_t sub_22761EDC0()
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
    v5 = sub_22761EEDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761EEDC()
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
    v21[1] = sub_22761EDC0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276462BC, v19);
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

uint64_t sub_22761F1E4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664650();

  return MEMORY[0x2822009F8](sub_22761F2B0, 0, 0);
}

uint64_t sub_22761F2B0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static CommentaryEvent.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF948, &qword_22768E0A0);
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
    v26[1] = sub_22761F6F8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276462E8, v24);
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

uint64_t sub_22761F6F8()
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
    v5 = sub_22761F814;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22761F814()
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
    v21[1] = sub_22761F6F8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276462E8, v19);
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

uint64_t sub_22761FB1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666170();

  return MEMORY[0x2822009F8](sub_22761FBE8, 0, 0);
}

uint64_t sub_22761FBE8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static MarketingVideoJournal.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF950, &qword_22768E0A8);
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
    v26[1] = sub_227620030;

    return sub_22708E1D4(sub_22708E1D4, sub_227646314, v24);
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

uint64_t sub_227620030()
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
    v5 = sub_22762014C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762014C()
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
    v21[1] = sub_227620030;

    return sub_22708E1D4(sub_22708E1D4, sub_227646314, v19);
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

uint64_t sub_227620454(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663FA0();

  return MEMORY[0x2822009F8](sub_227620520, 0, 0);
}

uint64_t sub_227620520()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static Configuration.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF958, &qword_22768E0B0);
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
    v26[1] = sub_227620968;

    return sub_22708E1D4(sub_22708E1D4, sub_227646340, v24);
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

uint64_t sub_227620968()
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
    v5 = sub_227620A84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227620A84()
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
    v21[1] = sub_227620968;

    return sub_22708E1D4(sub_22708E1D4, sub_227646340, v19);
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

uint64_t sub_227620D8C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663610();

  return MEMORY[0x2822009F8](sub_227620E58, 0, 0);
}

uint64_t sub_227620E58()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static Contributor.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF960, &qword_22768E0B8);
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
    v26[1] = sub_2276212A0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764636C, v24);
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

uint64_t sub_2276212A0()
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
    v5 = sub_2276213BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276213BC()
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
    v21[1] = sub_2276212A0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764636C, v19);
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

uint64_t sub_2276216C4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227621784, 0, 0);
}

uint64_t sub_227621784()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_22706F134();
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
    v0[2] = &type metadata for ContributorIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF968, &qword_22768E0C0);
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
    v24[1] = sub_227621BA0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646398, v22);
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

uint64_t sub_227621BA0()
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
    v5 = sub_227621CBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227621CBC()
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
    v20[1] = sub_227621BA0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646398, v18);
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

uint64_t sub_227621F8C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DirtySyncZone();

  return MEMORY[0x2822009F8](sub_227622058, 0, 0);
}

uint64_t sub_227622058()
{
  v36 = v0;
  v1 = v0[7];
  v2 = sub_227399BC0();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF970, &qword_22768E0C8);
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
    v26[1] = sub_2276224A0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276463C4, v24);
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

uint64_t sub_2276224A0()
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
    v5 = sub_2276225BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276225BC()
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
    v21[1] = sub_2276224A0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276463C4, v19);
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

uint64_t sub_2276228C4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276646D0();

  return MEMORY[0x2822009F8](sub_227622990, 0, 0);
}

uint64_t sub_227622990()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static EngagementBadge.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF978, &qword_22768E0D0);
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
    v26[1] = sub_227622DD8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276463F0, v24);
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

uint64_t sub_227622DD8()
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
    v5 = sub_227622EF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227622EF4()
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
    v21[1] = sub_227622DD8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276463F0, v19);
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

uint64_t sub_2276231FC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669580();

  return MEMORY[0x2822009F8](sub_2276232C8, 0, 0);
}

uint64_t sub_2276232C8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static Equipment.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF980, &qword_22768E0D8);
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
    v26[1] = sub_227623710;

    return sub_22708E1D4(sub_22708E1D4, sub_22764641C, v24);
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

uint64_t sub_227623710()
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
    v5 = sub_22762382C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762382C()
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
    v21[1] = sub_227623710;

    return sub_22708E1D4(sub_22708E1D4, sub_22764641C, v19);
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

uint64_t sub_227623B34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227623BF4, 0, 0);
}

uint64_t sub_227623BF4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_2272BA1AC();
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
    v0[2] = &type metadata for EquipmentIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF988, &qword_22768E0E0);
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
    v24[1] = sub_227624010;

    return sub_22708E1D4(sub_22708E1D4, sub_227646448, v22);
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

uint64_t sub_227624010()
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
    v5 = sub_22762412C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762412C()
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
    v20[1] = sub_227624010;

    return sub_22708E1D4(sub_22708E1D4, sub_227646448, v18);
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