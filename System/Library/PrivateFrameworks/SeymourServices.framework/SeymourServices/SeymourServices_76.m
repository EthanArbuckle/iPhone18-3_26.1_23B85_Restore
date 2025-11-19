uint64_t sub_2276243FC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665100();

  return MEMORY[0x2822009F8](sub_2276244C8, 0, 0);
}

uint64_t sub_2276244C8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static EstimatedCalories.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF990, &qword_22768E0E8);
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
    v26[1] = sub_227624910;

    return sub_22708E1D4(sub_22708E1D4, sub_227646474, v24);
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

uint64_t sub_227624910()
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
    v5 = sub_227624A2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227624A2C()
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
    v21[1] = sub_227624910;

    return sub_22708E1D4(sub_22708E1D4, sub_227646474, v19);
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

uint64_t sub_227624D34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227624DF4, 0, 0);
}

uint64_t sub_227624DF4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_226FC4E64();
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
    v0[2] = &type metadata for HealthKitActivityType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF998, &qword_22768E0F0);
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
    v24[1] = sub_227625210;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464A0, v22);
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

uint64_t sub_227625210()
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
    v5 = sub_22762532C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762532C()
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
    v20[1] = sub_227625210;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464A0, v18);
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

uint64_t sub_2276255FC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666BF0();

  return MEMORY[0x2822009F8](sub_2276256C8, 0, 0);
}

uint64_t sub_2276256C8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static HealthKitMindfulSession.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9A0, &qword_22768E0F8);
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
    v26[1] = sub_227625B10;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464CC, v24);
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

uint64_t sub_227625B10()
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
    v5 = sub_227625C2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227625C2C()
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
    v21[1] = sub_227625B10;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464CC, v19);
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

uint64_t sub_227625F34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668E30();

  return MEMORY[0x2822009F8](sub_227626000, 0, 0);
}

uint64_t sub_227626000()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static HealthKitStandaloneMindfulSessionJob.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9A8, &qword_22768E100);
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
    v26[1] = sub_227626448;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464F8, v24);
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

uint64_t sub_227626448()
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
    v5 = sub_227626564;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227626564()
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
    v21[1] = sub_227626448;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464F8, v19);
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

uint64_t sub_22762686C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276674C0();

  return MEMORY[0x2822009F8](sub_227626938, 0, 0);
}

uint64_t sub_227626938()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static HealthKitSessionReference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9B0, &qword_22768E108);
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
    v26[1] = sub_227626D80;

    return sub_22708E1D4(sub_22708E1D4, sub_227646524, v24);
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

uint64_t sub_227626D80()
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
    v5 = sub_227626E9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227626E9C()
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
    v21[1] = sub_227626D80;

    return sub_22708E1D4(sub_22708E1D4, sub_227646524, v19);
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

uint64_t sub_2276271A4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668390();

  return MEMORY[0x2822009F8](sub_227627270, 0, 0);
}

uint64_t sub_227627270()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static HealthKitStandaloneWorkoutJob.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9B8, &qword_22768E110);
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
    v26[1] = sub_2276276B8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646550, v24);
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

uint64_t sub_2276276B8()
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
    v5 = sub_2276277D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276277D4()
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
    v21[1] = sub_2276276B8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646550, v19);
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

uint64_t sub_227627ADC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664CA0();

  return MEMORY[0x2822009F8](sub_227627BA8, 0, 0);
}

uint64_t sub_227627BA8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static HealthKitWorkout.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9C0, &qword_22768E118);
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
    v26[1] = sub_227627FF0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764657C, v24);
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

uint64_t sub_227627FF0()
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
    v5 = sub_22762810C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762810C()
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
    v21[1] = sub_227627FF0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764657C, v19);
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

uint64_t sub_227628414(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for KeyCertificate();

  return MEMORY[0x2822009F8](sub_2276284E0, 0, 0);
}

uint64_t sub_2276284E0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = _s15SeymourServices14KeyCertificateV21representativeSamplesSayACGyFZ_0();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9C8, &qword_22768E120);
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
    v26[1] = sub_227628928;

    return sub_22708E1D4(sub_22708E1D4, sub_2276465A8, v24);
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

uint64_t sub_227628928()
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
    v5 = sub_227628A44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227628A44()
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
    v21[1] = sub_227628928;

    return sub_22708E1D4(sub_22708E1D4, sub_2276465A8, v19);
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

uint64_t sub_227628D4C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276655A0();

  return MEMORY[0x2822009F8](sub_227628E18, 0, 0);
}

uint64_t sub_227628E18()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static LanguageDisclaimer.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9D0, &qword_22768E128);
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
    v26[1] = sub_227629260;

    return sub_22708E1D4(sub_22708E1D4, sub_2276465D4, v24);
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

uint64_t sub_227629260()
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
    v5 = sub_22762937C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762937C()
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
    v21[1] = sub_227629260;

    return sub_22708E1D4(sub_22708E1D4, sub_2276465D4, v19);
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

uint64_t sub_227629684(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663680();

  return MEMORY[0x2822009F8](sub_227629750, 0, 0);
}

uint64_t sub_227629750()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static MediaMoment.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9D8, &unk_22768E130);
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
    v26[1] = sub_227629B98;

    return sub_22708E1D4(sub_22708E1D4, sub_227646600, v24);
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

uint64_t sub_227629B98()
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
    v5 = sub_227629CB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227629CB4()
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
    v21[1] = sub_227629B98;

    return sub_22708E1D4(sub_22708E1D4, sub_227646600, v19);
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

uint64_t sub_227629FBC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667170();

  return MEMORY[0x2822009F8](sub_22762A088, 0, 0);
}

uint64_t sub_22762A088()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static MetricsDisplayPreference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9E8, &qword_22768E148);
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
    v26[1] = sub_22762A4D0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466A0, v24);
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

uint64_t sub_22762A4D0()
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
    v5 = sub_22762A5EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762A5EC()
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
    v21[1] = sub_22762A4D0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466A0, v19);
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

uint64_t sub_22762A8F4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22762A9B4, 0, 0);
}

uint64_t sub_22762A9B4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_227065A04();
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
    v0[2] = &type metadata for ModalityIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9F0, &qword_22768E150);
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
    v24[1] = sub_22762ADD0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466CC, v22);
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

uint64_t sub_22762ADD0()
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
    v5 = sub_22762AEEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762AEEC()
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
    v20[1] = sub_22762ADD0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466CC, v18);
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

uint64_t sub_22762B1BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276632A0();

  return MEMORY[0x2822009F8](sub_22762B288, 0, 0);
}

uint64_t sub_22762B288()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static MusicGenre.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9F8, &qword_22768E158);
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
    v26[1] = sub_22762B6D0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466F8, v24);
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

uint64_t sub_22762B6D0()
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
    v5 = sub_22762B7EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762B7EC()
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
    v21[1] = sub_22762B6D0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466F8, v19);
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

uint64_t sub_22762BAF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22762BBB4, 0, 0);
}

uint64_t sub_22762BBB4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_2274F46C8();
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
    v0[2] = &type metadata for MusicGenreIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA00, &qword_22768E160);
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
    v24[1] = sub_22762BFD0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646724, v22);
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

uint64_t sub_22762BFD0()
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
    v5 = sub_22762C0EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762C0EC()
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
    v20[1] = sub_22762BFD0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646724, v18);
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

uint64_t sub_22762C3BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663350();

  return MEMORY[0x2822009F8](sub_22762C488, 0, 0);
}

uint64_t sub_22762C488()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static MusicTrack.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA08, &qword_22768E168);
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
    v26[1] = sub_22762C8D0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646750, v24);
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

uint64_t sub_22762C8D0()
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
    v5 = sub_22762C9EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762C9EC()
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
    v21[1] = sub_22762C8D0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646750, v19);
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

uint64_t sub_22762CCF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22762CDB4, 0, 0);
}

uint64_t sub_22762CDB4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_2272B8B78();
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
    v0[2] = &type metadata for OnboardingModalityIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA10, &qword_22768E170);
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
    v24[1] = sub_22762D1D0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764677C, v22);
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

uint64_t sub_22762D1D0()
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
    v5 = sub_22762D2EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762D2EC()
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
    v20[1] = sub_22762D1D0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764677C, v18);
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

uint64_t sub_22762D5BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666650();

  return MEMORY[0x2822009F8](sub_22762D688, 0, 0);
}

uint64_t sub_22762D688()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static OnboardingSurveyResult.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA18, &qword_22768E178);
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
    v26[1] = sub_22762DAD0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276467A8, v24);
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

uint64_t sub_22762DAD0()
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
    v5 = sub_22762DBEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762DBEC()
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
    v21[1] = sub_22762DAD0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276467A8, v19);
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

uint64_t sub_22762DEF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668A00();

  return MEMORY[0x2822009F8](sub_22762DFC0, 0, 0);
}

uint64_t sub_22762DFC0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static PersonalizationPrivacyPreference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA20, &qword_22768E180);
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
    v26[1] = sub_22762E408;

    return sub_22708E1D4(sub_22708E1D4, sub_2276467D4, v24);
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

uint64_t sub_22762E408()
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
    v5 = sub_22762E524;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762E524()
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
    v21[1] = sub_22762E408;

    return sub_22708E1D4(sub_22708E1D4, sub_2276467D4, v19);
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

uint64_t sub_22762E82C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664900();

  return MEMORY[0x2822009F8](sub_22762E8F8, 0, 0);
}

uint64_t sub_22762E8F8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static PlaybackVoucher.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA28, &qword_22768E188);
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
    v26[1] = sub_22762ED40;

    return sub_22708E1D4(sub_22708E1D4, sub_227646800, v24);
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

uint64_t sub_22762ED40()
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
    v5 = sub_22762EE5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762EE5C()
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
    v21[1] = sub_22762ED40;

    return sub_22708E1D4(sub_22708E1D4, sub_227646800, v19);
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

uint64_t sub_22762F164(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669480();

  return MEMORY[0x2822009F8](sub_22762F230, 0, 0);
}

uint64_t sub_22762F230()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static Playlist.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA30, &qword_22768E190);
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
    v26[1] = sub_22762F678;

    return sub_22708E1D4(sub_22708E1D4, sub_22764682C, v24);
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

uint64_t sub_22762F678()
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
    v5 = sub_22762F794;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22762F794()
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
    v21[1] = sub_22762F678;

    return sub_22708E1D4(sub_22708E1D4, sub_22764682C, v19);
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

uint64_t sub_22762FA9C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663AB0();

  return MEMORY[0x2822009F8](sub_22762FB68, 0, 0);
}

uint64_t sub_22762FB68()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static PlaylistItem.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA38, &qword_22768E198);
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
    v26[1] = sub_22762FFB0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646858, v24);
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

uint64_t sub_22762FFB0()
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
    v5 = sub_2276300CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276300CC()
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
    v21[1] = sub_22762FFB0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646858, v19);
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

uint64_t sub_2276303D4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666710();

  return MEMORY[0x2822009F8](sub_2276304A0, 0, 0);
}

uint64_t sub_2276304A0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static PrivacyAcknowledgement.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA40, &qword_22768E1A0);
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
    v26[1] = sub_2276308E8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646884, v24);
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

uint64_t sub_2276308E8()
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
    v5 = sub_227630A04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227630A04()
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
    v21[1] = sub_2276308E8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646884, v19);
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

uint64_t sub_227630D0C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276652D0();

  return MEMORY[0x2822009F8](sub_227630DD8, 0, 0);
}

uint64_t sub_227630DD8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static ProgramCompletion.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA48, &qword_22768E1A8);
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
    v26[1] = sub_227631220;

    return sub_22708E1D4(sub_22708E1D4, sub_2276468B0, v24);
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

uint64_t sub_227631220()
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
    v5 = sub_22763133C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763133C()
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
    v21[1] = sub_227631220;

    return sub_22708E1D4(sub_22708E1D4, sub_2276468B0, v19);
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

uint64_t sub_227631644(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276675F0();

  return MEMORY[0x2822009F8](sub_227631710, 0, 0);
}

uint64_t sub_227631710()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static ProgressDisplayPreference.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA50, &qword_22768E1B0);
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
    v26[1] = sub_227631B58;

    return sub_22708E1D4(sub_22708E1D4, sub_2276468DC, v24);
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

uint64_t sub_227631B58()
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
    v5 = sub_227631C74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227631C74()
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
    v21[1] = sub_227631B58;

    return sub_22708E1D4(sub_22708E1D4, sub_2276468DC, v19);
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

uint64_t sub_227631F7C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664E20();

  return MEMORY[0x2822009F8](sub_227632048, 0, 0);
}

uint64_t sub_227632048()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static RecentSearchTerm.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA58, &qword_22768E1B8);
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
    v26[1] = sub_227632490;

    return sub_22708E1D4(sub_22708E1D4, sub_227646908, v24);
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

uint64_t sub_227632490()
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
    v5 = sub_2276325AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276325AC()
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
    v21[1] = sub_227632490;

    return sub_22708E1D4(sub_22708E1D4, sub_227646908, v19);
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

uint64_t sub_2276328B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664410();

  return MEMORY[0x2822009F8](sub_227632980, 0, 0);
}

uint64_t sub_227632980()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static Recommendation.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA60, &qword_22768E1C0);
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
    v26[1] = sub_227632DC8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646934, v24);
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

uint64_t sub_227632DC8()
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
    v5 = sub_227632EE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227632EE4()
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
    v21[1] = sub_227632DC8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646934, v19);
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

uint64_t sub_2276331EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668700();

  return MEMORY[0x2822009F8](sub_2276332B8, 0, 0);
}

uint64_t sub_2276332B8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static RemoteBrowsingConnectionRecord.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA68, &qword_22768E1C8);
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
    v26[1] = sub_227633700;

    return sub_22708E1D4(sub_22708E1D4, sub_227646960, v24);
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

uint64_t sub_227633700()
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
    v5 = sub_22763381C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763381C()
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
    v21[1] = sub_227633700;

    return sub_22708E1D4(sub_22708E1D4, sub_227646960, v19);
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

uint64_t sub_227633B24(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667E50();

  return MEMORY[0x2822009F8](sub_227633BF0, 0, 0);
}

uint64_t sub_227633BF0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static SampleContentArchivedSession.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA70, &qword_22768E1D0);
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
    v26[1] = sub_227634038;

    return sub_22708E1D4(sub_22708E1D4, sub_22764698C, v24);
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

uint64_t sub_227634038()
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
    v5 = sub_227634154;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227634154()
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
    v21[1] = sub_227634038;

    return sub_22708E1D4(sub_22708E1D4, sub_22764698C, v19);
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

uint64_t sub_22763445C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663C10();

  return MEMORY[0x2822009F8](sub_227634528, 0, 0);
}

uint64_t sub_227634528()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static ScoreSummary.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA78, &qword_22768E1D8);
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
    v26[1] = sub_227634970;

    return sub_22708E1D4(sub_22708E1D4, sub_2276469B8, v24);
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

uint64_t sub_227634970()
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
    v5 = sub_227634A8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227634A8C()
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
    v21[1] = sub_227634970;

    return sub_22708E1D4(sub_22708E1D4, sub_2276469B8, v19);
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

uint64_t sub_227634D94(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276640A0();

  return MEMORY[0x2822009F8](sub_227634E60, 0, 0);
}

uint64_t sub_227634E60()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static SessionScores.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA80, &qword_22768E1E0);
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
    v26[1] = sub_2276352A8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276469E4, v24);
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

uint64_t sub_2276352A8()
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
    v5 = sub_2276353C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276353C4()
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
    v21[1] = sub_2276352A8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276469E4, v19);
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

uint64_t sub_2276356CC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276633A0();

  return MEMORY[0x2822009F8](sub_227635798, 0, 0);
}

uint64_t sub_227635798()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static SkillLevel.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA88, &qword_22768E1E8);
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
    v26[1] = sub_227635BE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A10, v24);
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

uint64_t sub_227635BE0()
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
    v5 = sub_227635CFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227635CFC()
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
    v21[1] = sub_227635BE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A10, v19);
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

uint64_t sub_227636004(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2276360C4, 0, 0);
}

uint64_t sub_2276360C4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_22721814C();
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
    v0[2] = &type metadata for SkillLevelIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA90, &qword_22768E1F0);
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
    v24[1] = sub_2276364E0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A3C, v22);
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

uint64_t sub_2276364E0()
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
    v5 = sub_2276365FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276365FC()
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
    v20[1] = sub_2276364E0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A3C, v18);
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

uint64_t sub_2276368CC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276653A0();

  return MEMORY[0x2822009F8](sub_227636998, 0, 0);
}

uint64_t sub_227636998()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static SocialMediaHandle.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA98, &qword_22768E1F8);
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
    v26[1] = sub_227636DE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A68, v24);
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

uint64_t sub_227636DE0()
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
    v5 = sub_227636EFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227636EFC()
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
    v21[1] = sub_227636DE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A68, v19);
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

uint64_t sub_227637204(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2276372C4, 0, 0);
}

uint64_t sub_2276372C4()
{
  v34 = v0;
  v1 = v0[7];
  v2 = _s15SeymourServices17StreamingKeyNonceV21representativeSamplesSayACGyFZ_0();
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
    v0[2] = &type metadata for StreamingKeyNonce;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAA0, &qword_22768E200);
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
    v24[1] = sub_2276376E0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A94, v22);
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

uint64_t sub_2276376E0()
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
    v5 = sub_2276377FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276377FC()
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
    v20[1] = sub_2276376E0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A94, v18);
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

uint64_t sub_227637ACC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SyncChangeTag();

  return MEMORY[0x2822009F8](sub_227637B98, 0, 0);
}

uint64_t sub_227637B98()
{
  v36 = v0;
  v1 = v0[7];
  v2 = sub_227336B08();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAA8, &qword_22768E208);
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
    v26[1] = sub_227637FE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646AC0, v24);
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

uint64_t sub_227637FE0()
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
    v5 = sub_2276380FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2276380FC()
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
    v21[1] = sub_227637FE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646AC0, v19);
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

uint64_t sub_227638404(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SyncZoneChangeWindow();

  return MEMORY[0x2822009F8](sub_2276384D0, 0, 0);
}

uint64_t sub_2276384D0()
{
  v36 = v0;
  v1 = v0[7];
  v2 = sub_226F5DC58();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAB0, &qword_22768E210);
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
    v26[1] = sub_227638918;

    return sub_22708E1D4(sub_22708E1D4, sub_227646AEC, v24);
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

uint64_t sub_227638918()
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
    v5 = sub_227638A34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227638A34()
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
    v21[1] = sub_227638918;

    return sub_22708E1D4(sub_22708E1D4, sub_227646AEC, v19);
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

uint64_t sub_227638D3C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SyncEncryptionKey();

  return MEMORY[0x2822009F8](sub_227638E08, 0, 0);
}

uint64_t sub_227638E08()
{
  v36 = v0;
  v1 = v0[7];
  v2 = sub_22745B5BC();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAB8, &qword_22768E218);
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
    v26[1] = sub_227639250;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B18, v24);
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

uint64_t sub_227639250()
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
    v5 = sub_22763936C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763936C()
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
    v21[1] = sub_227639250;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B18, v19);
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

uint64_t sub_227639674(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664140();

  return MEMORY[0x2822009F8](sub_227639740, 0, 0);
}

uint64_t sub_227639740()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static SyncOperation.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAC0, &qword_22768E220);
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
    v26[1] = sub_227639B88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B44, v24);
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

uint64_t sub_227639B88()
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
    v5 = sub_227639CA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227639CA4()
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
    v21[1] = sub_227639B88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B44, v19);
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

uint64_t sub_227639FAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22763A06C, 0, 0);
}

uint64_t sub_22763A06C()
{
  v34 = v0;
  v1 = v0[7];
  v2 = sub_2274B45A4();
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
    v0[2] = &type metadata for ThemeIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAC8, &qword_22768E228);
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
    v24[1] = sub_22763A488;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B70, v22);
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

uint64_t sub_22763A488()
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
    v5 = sub_22763A5A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22763A5A4()
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
    v20[1] = sub_22763A488;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B70, v18);
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

uint64_t sub_22763A874(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663C90();

  return MEMORY[0x2822009F8](sub_22763A940, 0, 0);
}

uint64_t sub_22763A940()
{
  v36 = v0;
  v1 = v0[7];
  v2 = static TrainerEvent.representativeSamples()();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAD0, &qword_22768E230);
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
    v26[1] = sub_22763AD88;

    return sub_22708E1D4(sub_22708E1D4, sub_227646B9C, v24);
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