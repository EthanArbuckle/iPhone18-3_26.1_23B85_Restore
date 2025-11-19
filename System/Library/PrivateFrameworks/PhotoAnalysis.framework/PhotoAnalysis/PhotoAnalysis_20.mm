uint64_t sub_22FC1DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v5[5] = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0);
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v5[8] = *(v9 + 64);
  v5[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[10] = v10;
  sub_22FA2D328(a1, v10);
  sub_22FC1F3B8(a2, v10 + *(v8 + 48), type metadata accessor for MomentGraphResource);

  return MEMORY[0x2822009F8](sub_22FC1DDAC, v4, 0);
}

uint64_t sub_22FC1DDAC()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v19 = v0[2];
  v20 = v0[5];
  sub_22FA4FAA4(v2, v1, &unk_27DAD8FF0);
  v7 = *(v5 + 48);
  v21 = sub_22FC154F0();
  v9 = v8;
  v0[11] = v8;
  sub_22FC1F6C4(v1 + v7, type metadata accessor for MomentGraphResource);
  __swift_destroy_boxed_opaque_existential_0(v1);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_22FA4FAA4(v2, v1, &unk_27DAD8FF0);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[12] = v13;
  *(v13 + 16) = v10;
  sub_22FC1E6D4(v1, v13 + v11);
  v14 = (v13 + v12);
  *v14 = v19;
  v14[1] = v6;
  *(v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_22FC1DF9C;
  v16 = v0[3];
  v17 = v0[2];

  return sub_22FC18A10(v21, v9, v17, v16, &unk_22FCDCD40, v13);
}

uint64_t sub_22FC1DF9C(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  v5 = v4[4];
  if (v1)
  {

    v6 = sub_22FC1E1B8;
  }

  else
  {

    v4[15] = a1;
    v6 = sub_22FC1E12C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FC1E12C()
{
  sub_22FA2B420(v0[10], &unk_27DAD8FF0);

  v1 = v0[1];
  v2 = v0[15];

  return v1(v2);
}

uint64_t sub_22FC1E1B8()
{
  sub_22FA2B420(*(v0 + 80), &unk_27DAD8FF0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC1E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC1E2E8, 0, 0);
}

uint64_t sub_22FC1E2E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    sub_22FA4FAA4(*(v0 + 56), v2, &unk_27DAD8FF0);
    v4 = *(v3 + 48);
    *(v0 + 136) = v4;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_22FC1E470;
    v6 = *(v0 + 96);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    return sub_22FC1E890(v6, v2 + v4, v7, v8);
  }

  else
  {
    v10 = sub_22FCC9904();
    v12 = v11;
    sub_22FAA1C84();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22FC1E470(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_22FC1E640;
  }

  else
  {
    v6 = *(v4 + 136);
    v7 = *(v4 + 96);
    *(v4 + 128) = a1;
    sub_22FC1F6C4(v7 + v6, type metadata accessor for MomentGraphResource);
    __swift_destroy_boxed_opaque_existential_0(v7);
    v5 = sub_22FC1E5C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FC1E5C0()
{
  v1 = v0[16];
  v2 = v0[5];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FC1E640()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  sub_22FC1F6C4(v2 + v1, type metadata accessor for MomentGraphResource);
  __swift_destroy_boxed_opaque_existential_0(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FC1E6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC1E744(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22FA2C21C;

  return sub_22FC1E240(a1, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_22FC1E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[12] = a3;
  type metadata accessor for MomentGraphResource();
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0);
  v5[16] = v8;
  v5[17] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[18] = v9;
  sub_22FA2D328(a1, v9);
  sub_22FC1F3B8(a2, v9 + *(v8 + 48), type metadata accessor for MomentGraphResource);

  return MEMORY[0x2822009F8](sub_22FC1E9C0, v4, 0);
}

uint64_t sub_22FC1E9C0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);
  if (*(v2 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    sub_22FA4FAA4(*(v0 + 144), v3, &unk_27DAD8FF0);
    v6 = *(v5 + 48);
    sub_22FA2CF78(v3, v0 + 16);
    sub_22FC1F244(v3 + v6, v4);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    v9 = (*(*(v7 + 8) + 16))(v8);
    v11 = v10;
    *(v0 + 152) = v10;
    sub_22FA2D328(v0 + 16, v0 + 56);
    v12 = swift_allocObject();
    *(v0 + 160) = v12;
    *(v12 + 16) = v1;
    sub_22FA2CF78((v0 + 56), v12 + 24);

    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_22FC1EC24;
    v14 = *(v0 + 104);
    v15 = *(v0 + 96);

    return sub_22FC16B78(v9, v11, v15, v14, &unk_22FCDCD80, v12);
  }

  else
  {
    v17 = *(v0 + 144);
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    swift_willThrow();

    sub_22FA2B420(v17, &unk_27DAD8FF0);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FC1EC24(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[14];
    v5 = sub_22FC1ED54;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_22FC1EE28;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22FC1ED54()
{
  v1 = v0[18];
  v2 = v0[15];

  sub_22FC1F6C4(v2, type metadata accessor for MomentGraphResource);
  sub_22FA2B420(v1, &unk_27DAD8FF0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FC1EE28()
{
  v1 = v0[22];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = objc_allocWithZone(MEMORY[0x277D3BA40]);
  v5 = sub_22FCC6564();
  v6 = [v4 initWithGraphPersistentStoreURL:v5 photoLibrary:v2 analytics:v3 progressBlock:0];

  type metadata accessor for MomentGraphManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = v6;
  *(v7 + 120) = v1;
  v8 = qword_281480070;
  v9 = v6;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = v0[18];
  v11 = v0[15];
  sub_22FB5A674();

  sub_22FC1F6C4(v11, type metadata accessor for MomentGraphResource);
  sub_22FA2B420(v10, &unk_27DAD8FF0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_22FC1EFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C030;

  return sub_22FC1AC18(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22FC1F08C()
{
  result = qword_27DAD9008;
  if (!qword_27DAD9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9008);
  }

  return result;
}

unint64_t sub_22FC1F0E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](*(a1 + 16));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 40;
    do
    {

      sub_22FCC8B14();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  sub_22FCC9894();
  result = sub_22FCC92A4();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

uint64_t sub_22FC1F244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentGraphResource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FC1F2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FC1A8C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FC1F3B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC1F420(uint64_t a1, uint64_t a2)
{
  v24[3] = type metadata accessor for PhotoLibraryResource(0);
  v24[4] = sub_22FC1F724(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_22FC1F3B8(a1, boxed_opaque_existential_1, type metadata accessor for PhotoLibraryResource);
  v5 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources;
  swift_beginAccess();
  v6 = *(a2 + v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    while (1)
    {
      v10 = sub_22FAA1CD8(v9);
      if (v10)
      {
        break;
      }

      ++v8;
      v9 += 5;
      if (v7 == v8)
      {
        v8 = 0;
        break;
      }
    }

    v11 = v10 ^ 1;
  }

  else
  {
    v8 = 0;
    v11 = 1;
  }

  v12 = v11 & 1;

  if (v12)
  {
    sub_22FA2D328(v24, v23);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446210;
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v17 = sub_22FCC96C4();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(v23);
      v20 = sub_22FA2F600(v17, v19, v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v13, v14, "Skipping deletion of unknown resource: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }

  else
  {
    swift_beginAccess();
    sub_22FC15288(v8, v23);
    __swift_destroy_boxed_opaque_existential_0(v23);
    swift_endAccess();
    sub_22FA631E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_22FC1F6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FC1F724(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22FC1F79C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FC1F7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FC1F82C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_22FC1F870()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_28147D000 = result;
  return result;
}

uint64_t sub_22FC1F8E8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147CFD8);
  __swift_project_value_buffer(v0, qword_28147CFD8);
  if (qword_28147CFF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147D000;
  return sub_22FCC8694();
}

uint64_t sub_22FC1F974(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84F98];
  v3[3] = v2;
  v3[2] = v6;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_22FC1FA30;

  return sub_22FC20140((v3 + 2), a1, a2);
}

uint64_t sub_22FC1FA30()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22FC1FD8C;
  }

  else
  {
    v2 = sub_22FC1FB44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FC1FB44()
{
  v15 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_analytics);
  v2 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADD0);

  v3 = sub_22FCC89C4();

  [v1 sendEvent:v2 withPayload:v3];

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22FA2F600(0xD00000000000002ALL, 0x800000022FCE7FA0, &v14);
    *(v6 + 12) = 2080;

    v8 = sub_22FCC89E4();
    v10 = v9;

    v11 = sub_22FA2F600(v8, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "Reported analytics to %s. Payload: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22FC1FD8C()
{
  v28 = v0;
  v1 = v0[5];
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22FA28000, v3, v4, "Execution failed with error %@, reporting analytics and rethrowing", v6, 0xCu);
    sub_22FA2B420(v7, &unk_27DAD7B10);
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v10 = v0[5];
  v11 = v0[3];

  sub_22FC22F40(v10);
  sub_22FA3A77C(0, &qword_28147ADE0);
  v12 = sub_22FCC9164();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v0[2];
  sub_22FB25940(v12, 0xD000000000000013, 0x800000022FCE7F80, isUniquelyReferenced_nonNull_native);
  v0[2] = v27[0];
  v14 = *(v11 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_analytics);
  v15 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADD0);

  v16 = sub_22FCC89C4();

  [v14 sendEvent:v15 withPayload:v16];

  v17 = sub_22FCC8664();
  v18 = sub_22FCC8F34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_22FA2F600(0xD00000000000002ALL, 0x800000022FCE7FA0, v27);
    *(v19 + 12) = 2080;

    v21 = sub_22FCC89E4();
    v23 = v22;

    v24 = sub_22FA2F600(v21, v23, v27);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_22FA28000, v17, v18, "Reported analytics to %s. Payload: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v20, -1, -1);
    MEMORY[0x23190A000](v19, -1, -1);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_22FC20140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v4[12] = swift_task_alloc();
  v5 = sub_22FCC6794();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC20248, 0, 0);
}

uint64_t sub_22FC20248()
{
  v50 = v0;
  if (qword_28147CFF8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = qword_28147D000;
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  v0[17] = sub_22FCC76C4();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_33;
  v6 = _Block_copy(v0 + 2);
  v7 = objc_opt_self();

  v0[18] = [v7 progressReporterWithProgressBlock_];
  _Block_release(v6);

  v8 = sub_22FCC9014();
  v0[19] = v8;
  v0[20] = v9;
  sub_22FCC90E4();
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_22FA2B420(v12, &qword_27DAD8730);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FA28000, v13, v14, "No scheduled cache invalidation date found.", v15, 2u);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    v16 = v0[8];

    sub_22FA3A77C(0, &qword_28147ADE0);
    v17 = sub_22FCC9154();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v16;
    sub_22FB25940(v17, 0xD000000000000018, 0x800000022FCE8000, isUniquelyReferenced_nonNull_native);
    *v16 = v49;
    v19 = sub_22FCC9154();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v16;
    sub_22FB25940(v19, 0xD000000000000025, 0x800000022FCE8020, v20);
    *v16 = v49;
    v21 = swift_task_alloc();
    v0[24] = v21;
    *v21 = v0;
    v21[1] = sub_22FC20CF0;
    v22 = v0[20];
    v23 = v0[8];

    return sub_22FC21568(v23, v22);
  }

  else
  {
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[11];
    (*(v11 + 32))(v25, v12, v10);
    (*(v11 + 16))(v26, v25, v10);
    v28 = v27;
    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[13];
    if (v31)
    {
      v48 = v30;
      v35 = v0[11];
      v36 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v36 = 136315138;
      v37 = *(v35 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter);
      v38 = sub_22FCC66F4();
      v39 = [v37 stringFromDate_];

      v40 = sub_22FCC8A84();
      v42 = v41;

      v43 = *(v33 + 8);
      v43(v32, v34);
      v44 = sub_22FA2F600(v40, v42, &v49);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_22FA28000, v29, v48, "Scheduled cache invalidation date found: %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v36, -1, -1);
    }

    else
    {

      v43 = *(v33 + 8);
      v43(v32, v34);
    }

    v0[21] = v43;
    v45 = swift_task_alloc();
    v0[22] = v45;
    *v45 = v0;
    v45[1] = sub_22FC208C4;
    v46 = v0[16];

    return sub_22FC210A4(v46, v8);
  }
}

uint64_t sub_22FC208C4(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_22FC20F1C;
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v5 = sub_22FC209F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FC209F0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 64);
  sub_22FA3A77C(0, &qword_28147ADE0);
  v3 = sub_22FCC9154();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v2;
  sub_22FB25940(v3, 0xD000000000000018, 0x800000022FCE8000, isUniquelyReferenced_nonNull_native);
  *v2 = v20;
  v5 = *(v0 + 168);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  if (v1 == 1)
  {
    v9 = sub_22FCC9164();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v8;
    sub_22FB25940(v9, 0xD000000000000012, 0x800000022FCE8050, v10);
    *v8 = v21;
    v5(v6, v7);
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_22FC20CF0;
    v12 = *(v0 + 160);
    v13 = *(v0 + 64);

    return sub_22FC21568(v13, v12);
  }

  else
  {
    v15 = sub_22FCC9154();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v8;
    sub_22FB25940(v15, 0xD000000000000025, 0x800000022FCE8020, v16);
    *v8 = v22;
    v5(v6, v7);
    sub_22FCC9004();
    v17 = *(v0 + 152);
    v18 = *(v0 + 144);

    sub_22FCC76B4();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22FC20CF0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_22FC20FF0;
  }

  else
  {
    v2 = sub_22FC20E04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FC20E04()
{
  sub_22FCC9004();
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  sub_22FCC76B4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FC20F1C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);

  v1(v4, v5);
  sub_22FCC76B4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FC20FF0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  sub_22FCC76B4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FC210A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC6794();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC21180, 0, 0);
}

uint64_t sub_22FC21180()
{
  v39 = v0;
  sub_22FCC6764();
  sub_22FC232F8(&qword_27DAD90B8, MEMORY[0x277CC9578]);
  v1 = sub_22FCC8A34();
  if ((v1 & 1) == 0)
  {
    v2 = v0[7];
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[2];
    v6 = *(v0[6] + 16);
    v6(v0[8], v0[9], v3);
    v6(v2, v5, v3);
    v7 = v4;
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[7];
    v11 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    if (v10)
    {
      log = v8;
      v15 = v0[4];
      v34 = v0[7];
      v16 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v16 = 136315394;
      v17 = *(v15 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter);
      v18 = sub_22FCC66F4();
      v35 = v9;
      v19 = [v17 stringFromDate_];

      v20 = sub_22FCC8A84();
      v22 = v21;

      v23 = *(v13 + 8);
      v23(v11, v14);
      v24 = sub_22FA2F600(v20, v22, v38);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2080;
      v25 = sub_22FCC66F4();
      v26 = [v17 stringFromDate_];

      v27 = sub_22FCC8A84();
      v29 = v28;

      v23(v34, v14);
      v30 = sub_22FA2F600(v27, v29, v38);

      *(v16 + 14) = v30;
      _os_log_impl(&dword_22FA28000, log, v35, "Invalidating the cache because the current date: %s is after the scheduled invalidation date: %s.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v36, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      v31 = *(v13 + 8);
      v31(v12, v14);
      v31(v11, v14);
    }

    sub_22FC21EE8();
  }

  sub_22FCC9004();
  (*(v0[6] + 8))(v0[9], v0[5]);

  v32 = v0[1];

  return v32((v1 & 1) == 0);
}

uint64_t sub_22FC21568(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;

  return MEMORY[0x2822009F8](sub_22FC215FC, 0, 0);
}

uint64_t sub_22FC215FC()
{
  v1 = *(v0[21] + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22FC2175C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22FC21FC0;
  v0[13] = &block_descriptor_11;
  v0[14] = v2;
  [v1 requestCurrentServiceVersionWithCompletionBlock_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FC2175C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_22FC21E50;
  }

  else
  {
    v2 = sub_22FC21898;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FC21898()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  v1 = v0[18];
  v2 = [v1 versionString];
  if (!v2)
  {
    sub_22FCC8A84();
    v2 = sub_22FCC8A54();
  }

  v3 = v0[19];
  v4 = sub_22FCC8A84();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *v3;
  sub_22FB25940(v2, 0xD000000000000014, 0x800000022FCE80B0, isUniquelyReferenced_nonNull_native);
  *v3 = v38[0];
  sub_22FCC8FF4();
  v8 = sub_22FCC90D4();
  v12 = v9;
  if (v9)
  {
    v13 = v0[19];
    v36 = v8;
    v14 = sub_22FCC8A54();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v13;
    sub_22FB25940(v14, 0xD000000000000015, 0x800000022FCE80D0, v15);
    *v13 = v38[0];
    sub_22FCC8FF4();
    if (v36 == v4 && v12 == v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_22FCC9704();
    }

    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38[0] = v37;
      *v29 = 136315650;
      v30 = v21;
      v31 = sub_22FA2F600(v36, v12, v38);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      v32 = sub_22FA2F600(v4, v6, v38);

      *(v29 + 14) = v32;
      *(v29 + 22) = 1024;
      *(v29 + 24) = v30 & 1;
      _os_log_impl(&dword_22FA28000, v27, v28, "Cached version: %s, current version: %s, isCachedServiceVersionValid: %{BOOL}d", v29, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v37, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {
    }

    v33 = v0[19];
    sub_22FA3A77C(0, &qword_28147ADE0);
    v34 = sub_22FCC9154();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v33;
    sub_22FB25940(v34, 0xD000000000000016, 0x800000022FCE80F0, v35);
    *v33 = v38[0];
  }

  else
  {

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38[0] = v19;
      *v18 = 136315138;
      v20 = sub_22FA2F600(v4, v6, v38);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v16, v17, "Writing new service version %s to public events cache", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    else
    {
    }

    v22 = v0[22];
    v0[10] = 0;
    v23 = [v22 setNewCachedServiceVersion:v1 forEventSourceService:1 error:v0 + 10];
    v24 = v0[10];
    if (!v23)
    {
      v26 = v24;
      sub_22FCC6514();

      swift_willThrow();
      v10 = v0[1];
      goto LABEL_4;
    }

    v25 = v24;
  }

  sub_22FCC9004();

  v10 = v0[1];
LABEL_4:

  return v10();
}

uint64_t sub_22FC21E50()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

id sub_22FC21EE8()
{
  v1 = v0;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Performing cache invalidation", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager);
  [v5 invalidateDiskCaches];

  return [v5 invalidateMemoryCaches];
}

uint64_t sub_22FC21FC0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22FC22090()
{
  v2 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22FCC6794();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  sub_22FC22A50(0x20000000000001uLL);
  sub_22FCC8DE4();
  sub_22FCC6764();
  sub_22FCC66E4();
  v13 = *(v4 + 8);
  v13(v10, v3);
  v14 = *(v4 + 16);
  v42 = v12;
  v14(v7, v12, v3);
  v15 = v2;
  v16 = sub_22FCC8664();
  v17 = sub_22FCC8F34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v1;
    v38 = v13;
    v19 = v18;
    v40 = swift_slowAlloc();
    v43[0] = v40;
    *v19 = 136315138;
    v20 = *&v15[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter];
    v39 = v17;
    v21 = sub_22FCC66F4();
    v22 = [v20 stringFromDate_];

    v23 = sub_22FCC8A84();
    v24 = v15;
    v26 = v25;

    v27 = v38;
    v38(v7, v3);
    v28 = sub_22FA2F600(v23, v26, v43);
    v15 = v24;

    *(v19 + 4) = v28;
    _os_log_impl(&dword_22FA28000, v16, v39, "Scheduling cache invalidation for %s", v19, 0xCu);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23190A000](v29, -1, -1);
    MEMORY[0x23190A000](v19, -1, -1);

    v13 = v27;
  }

  else
  {

    v13(v7, v3);
  }

  v30 = *&v15[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager];
  v31 = v42;
  v32 = sub_22FCC66F4();
  v43[0] = 0;
  v33 = [v30 setLatestVersionScheduledInvalidationDate:v32 forEventSourceService:1 error:v43];

  if (v33)
  {
    v34 = v43[0];
  }

  else
  {
    v35 = v43[0];
    sub_22FCC6514();

    swift_willThrow();
  }

  return (v13)(v31, v3);
}

id PublicEventCacheInvalidationTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventCacheInvalidationTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FC22624()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_name);

  return v1;
}

uint64_t sub_22FC22664()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_identifier);

  return v1;
}

uint64_t sub_22FC226BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FC1F974(a2, a3);
}

void sub_22FC22764(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FC22844()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_incrementalKey);

  return v1;
}

uint64_t sub_22FC22884(uint64_t a1)
{
  *(a1 + 8) = sub_22FC232F8(&qword_28147CFA8, type metadata accessor for PublicEventCacheInvalidationTask);
  result = sub_22FC232F8(&qword_28147CFB0, type metadata accessor for PublicEventCacheInvalidationTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PublicEventCacheInvalidationTask()
{
  result = qword_28147CFB8;
  if (!qword_28147CFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC2295C()
{
  result = sub_22FCC8684();
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

unint64_t sub_22FC22A50(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23190A010](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23190A010](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22FC22ADC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22FCC67F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_version] = 0;
  v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_shouldRecordCompletion] = 1;
  v9 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_name];
  *v9 = 0xD000000000000020;
  v9[1] = 0x800000022FCDCF20;
  v10 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_identifier];
  sub_22FCC67E4();
  v11 = sub_22FCC67B4();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *v10 = v11;
  v10[1] = v13;
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_periodicity] = 0x4122750000000000;
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_priority] = 4;
  v14 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_incrementalKey];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR___PHAPublicEventCacheInvalidationTask_logger;
  if (qword_28147CFD0 != -1)
  {
    swift_once();
  }

  v16 = sub_22FCC8684();
  v17 = __swift_project_value_buffer(v16, qword_28147CFD8);
  (*(*(v16 - 8) + 16))(&v2[v15], v17, v16);
  v18 = OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter;
  *&v2[v18] = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v19 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_worker];
  v19[3] = type metadata accessor for MomentGraphWorker();
  v19[4] = sub_22FC232F8(&qword_281480230, type metadata accessor for MomentGraphWorker);
  *v19 = a1;
  v20 = *(a1 + 112);
  v21 = *(v20 + 112);

  v22 = [v21 publicEventManager];
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager] = v22;
  v23 = *(*(v20 + 120) + 120);
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_analytics] = v23;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v24 = v23;
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_22FC22DBC()
{
  v0 = sub_22FCC6DE4();
  v8[3] = v0;
  v8[4] = sub_22FC232F8(qword_28147B080, MEMORY[0x277D3A838]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A808], v0);
  v2 = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v2 & 1) == 0)
  {
    if (qword_28147CFD0 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_28147CFD8);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "PublicEventCacheInvalidationTask not enabled to run due to feature flag being disabled", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t sub_22FC22F40(void *a1)
{
  v2 = sub_22FCC8CF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_22FCC6C94();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v28 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  v17 = swift_dynamicCast();
  v18 = *(v10 + 56);
  if (v17)
  {
    v25 = v5;
    v26 = v3;
    v27 = v2;
    v18(v8, 0, 1, v9);
    (*(v10 + 32))(v15, v8, v9);
    v19 = *(v10 + 104);
    v19(v13, *MEMORY[0x277D54EA0], v9);
    v20 = MEMORY[0x2319060E0](v15, v13);
    v21 = *(v10 + 8);
    v21(v13, v9);
    if (v20)
    {
      v21(v15, v9);
      return 1;
    }

    v19(v13, *MEMORY[0x277D54EA8], v9);
    v24 = MEMORY[0x2319060E0](v15, v13);
    v21(v13, v9);
    v21(v15, v9);
    v3 = v26;
    v2 = v27;
    v5 = v25;
    if (v24)
    {
      return 2;
    }
  }

  else
  {
    v18(v8, 1, 1, v9);
    sub_22FA2B420(v8, &qword_27DAD90B0);
  }

  v28 = a1;
  v23 = a1;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v3 + 8))(v5, v2);
    return 4;
  }

  return result;
}

uint64_t sub_22FC232F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FC23340(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x231908810](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject rankedItems];
      sub_22FA3A77C(0, &qword_27DAD90E8);
      v7 = sub_22FCC8C44();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_22FCC92C4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22FCC92C4();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_22FCC92C4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22FCC93C4();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22FCC92C4();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_22FC2527C();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90F0);
              v18 = sub_22FA881E8(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22FCC92C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22FC236B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_28147CEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FCC8684();
  v3 = __swift_project_value_buffer(v2, qword_28147CEC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ECRPersonGroundingProcessorHelper.groundPerson(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_22FC23814;

  return sub_22FC23DDC(a1, a2, 0, 0, 0);
}

uint64_t sub_22FC23814(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FC23948, 0, 0);
  }
}

uint64_t sub_22FC23948()
{
  v14 = v0;
  if (*(v0[6] + 16))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {

    v3 = sub_22FCC8664();
    v4 = sub_22FCC8EF4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[2];
      v5 = v0[3];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_22FA2F600(v6, v5, &v13);
      _os_log_impl(&dword_22FA28000, v3, v4, "Retry fetching ECR results that only match with person relationship by removing possessive pronoun my and our from person name: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v9 = sub_22FCC7D34();
    v11 = v10;
    v0[7] = v10;
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_22FC23B34;

    return sub_22FC23DDC(v9, v11, 0, 1, 0);
  }
}

uint64_t sub_22FC23B34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FC23C8C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FC23C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC23CF0()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  sub_22FCC6E94();
  result = sub_22FCC91C4();
  qword_28147CEF0 = result;
  return result;
}

uint64_t sub_22FC23D50()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147CEC8);
  __swift_project_value_buffer(v0, qword_28147CEC8);
  if (qword_28147CEE8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147CEF0;
  return sub_22FCC8694();
}

uint64_t sub_22FC23DDC(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 40) = a2;
  *(v6 + 48) = v5;
  *(v6 + 138) = a5;
  *(v6 + 137) = a4;
  *(v6 + 136) = a3;
  *(v6 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90C8);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_22FCC7C14();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC23EE4, 0, 0);
}

uint64_t sub_22FC23EE4()
{
  *(v0 + 16) = *(v0 + 32);
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  *(v0 + 24) = v2;

  if ((v1 & 1) == 0)
  {
    MEMORY[0x231907FA0](32, 0xE100000000000000);
    v2 = *(v0 + 24);
  }

  *(v0 + 88) = v2;
  if (*(v0 + 138))
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D1F418]);
  v5 = sub_22FCC8A54();
  v6 = sub_22FCC8C24();
  v7 = [v4 initWithText:v5 entityClassFilter:v6 spans:0 mode:v3 constraint:0 includeInferredNames:1];
  *(v0 + 96) = v7;

  v8 = objc_allocWithZone(sub_22FCC83D4());
  *(v0 + 104) = sub_22FCC83C4();
  v11 = (*MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8]);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22FC240E0;

  return v11(v7);
}

uint64_t sub_22FC240E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {

    v4 = sub_22FC248A4;
  }

  else
  {
    v4 = sub_22FC241FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FC241FC()
{
  v65 = v0;
  v1 = *(v0 + 120);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F04();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v64[0] = v6;
    *v5 = 136380675;
    v7 = v4;
    v8 = [v7 description];
    v9 = sub_22FCC8A84();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, v64);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v2, v3, "Fetched ECR result: %{private}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v13 = *(v0 + 128);
  v58 = v0;
  v14 = *(v0 + 137);
  v15 = [*(v0 + 120) rankedResults];
  sub_22FA3A77C(0, &qword_27DAD90D0);
  v16 = sub_22FCC8C44();

  v17 = sub_22FC23340(v16);

  if (v14 == 1)
  {
    v64[0] = MEMORY[0x277D84F90];
    if (v17 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
    {
      v62 = v13;
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x231908810](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v13 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if ([v20 isRelationshipMatch])
        {
          sub_22FCC93F4();
          sub_22FCC9424();
          sub_22FCC9434();
          sub_22FCC9404();
        }

        else
        {
        }

        ++v19;
        if (v13 == i)
        {
          v13 = v62;
          v22 = v64[0];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_22:
  }

  else
  {
    v22 = v17;
  }

  v23 = *(v58 + 48);
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  v25 = sub_22FC4C7CC(sub_22FC251F8, v24, v22);

  if (v13)
  {
    v26 = *(v58 + 120);
    v28 = *(v58 + 96);
    v27 = *(v58 + 104);

    v29 = *(v58 + 8);

    return v29();
  }

  else
  {

    v31 = sub_22FCC8664();
    v32 = sub_22FCC8EF4();

    v63 = v25;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64[0] = v34;
      *v33 = 136642819;
      v35 = sub_22FA3A77C(0, &qword_27DAD90D8);
      v36 = MEMORY[0x2319080B0](v25, v35);
      v38 = sub_22FA2F600(v36, v37, v64);

      *(v33 + 4) = v38;
      v25 = v63;
      _os_log_impl(&dword_22FA28000, v31, v32, "Grounded person to %{sensitive}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23190A000](v34, -1, -1);
      MEMORY[0x23190A000](v33, -1, -1);
    }

    if (v25 >> 62)
    {
      goto LABEL_47;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_22FCC92C4())
    {
      v40 = 0;
      v41 = *(v58 + 72);
      v60 = v25 & 0xFFFFFFFFFFFFFF8;
      v61 = v25 & 0xC000000000000001;
      v42 = (v41 + 48);
      v59 = v41;
      v43 = (v41 + 32);
      v44 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v61)
        {
          v45 = MEMORY[0x231908810](v40, v25);
        }

        else
        {
          if (v40 >= *(v60 + 16))
          {
            goto LABEL_46;
          }

          v45 = *(v25 + 8 * v40 + 32);
        }

        v46 = v45;
        v47 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        v49 = *(v58 + 56);
        v48 = *(v58 + 64);
        sub_22FC249FC(v45, v49);

        if ((*v42)(v49, 1, v48) == 1)
        {
          sub_22FC25214(*(v58 + 56));
        }

        else
        {
          v50 = *v43;
          (*v43)(*(v58 + 80), *(v58 + 56), *(v58 + 64));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_22FAC2C5C(0, *(v44 + 2) + 1, 1, v44);
          }

          v52 = *(v44 + 2);
          v51 = *(v44 + 3);
          if (v52 >= v51 >> 1)
          {
            v44 = sub_22FAC2C5C(v51 > 1, v52 + 1, 1, v44);
          }

          v53 = *(v58 + 80);
          v54 = *(v58 + 64);
          *(v44 + 2) = v52 + 1;
          v50(&v44[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v52], v53, v54);
        }

        v25 = v63;
        ++v40;
        if (v47 == j)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

    v44 = MEMORY[0x277D84F90];
LABEL_49:
    v55 = *(v58 + 120);
    v56 = *(v58 + 104);

    v57 = *(v58 + 8);

    return v57(v44);
  }
}

uint64_t sub_22FC248A4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22FC24920(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_22FCC83B4();
  v5 = sub_22FCC83A4();
  v6 = sub_22FCC8394();

  if (!v2)
  {
    v7 = [v4 entityID];
    v8 = [v7 stringValue];
    if (v8)
    {
      v9 = v8;

      v10 = [v6 personForIdentifier_];
      swift_unknownObjectRelease();
      *a2 = v10;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_22FC249FC@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = [a1 visualIdentifierObjects];
  sub_22FA3A77C(0, &qword_27DAD90E0);
  v4 = sub_22FCC8C44();

  if (v4 >> 62)
  {
LABEL_26:
    v36 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_22FCC92C4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_27:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v36 = v4 & 0xFFFFFFFFFFFFFF8;
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_3:
  v6 = 0;
  v35 = MEMORY[0x277D84F90];
  v33 = a2;
  do
  {
    a2 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231908810](a2, v4);
      }

      else
      {
        if (a2 >= *(v36 + 16))
        {
          goto LABEL_25;
        }

        v7 = *(v4 + 8 * a2 + 32);
      }

      v8 = v7;
      v6 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = [v7 visualIdentifier];
      v10 = sub_22FCC8A84();
      v12 = v11;

      v37[0] = v10;
      v37[1] = v12;
      v37[5] = 47;
      v37[6] = 0xE100000000000000;
      sub_22FA7FD88();
      v13 = sub_22FCC9204();

      if (v13[2])
      {
        break;
      }

LABEL_6:
      ++a2;
      if (v6 == v5)
      {
        a2 = v33;
        goto LABEL_28;
      }
    }

    v14 = v13[4];
    v15 = v13[5];

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {

      goto LABEL_6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_22FAC1D0C(0, *(v35 + 2) + 1, 1, v35);
    }

    v18 = *(v35 + 2);
    v17 = *(v35 + 3);
    if (v18 >= v17 >> 1)
    {
      v35 = sub_22FAC1D0C((v17 > 1), v18 + 1, 1, v35);
    }

    *(v35 + 2) = v18 + 1;
    v19 = &v35[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v15;
    a2 = v33;
  }

  while (v6 != v5);
LABEL_28:

  v20 = sub_22FAA99B0(v35);

  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_31;
  }

  v22 = sub_22FA86B08(*(v20 + 16), 0);
  v23 = sub_22FA88270(v37, v22 + 4, v21, v20);
  sub_22FA72BC8();
  if (v23 != v21)
  {
    __break(1u);
LABEL_31:

    v22 = MEMORY[0x277D84F90];
  }

  v24 = [a1 contactIdentifiers];
  v25 = sub_22FCC8C44();

  v26 = [a1 names];
  v27 = sub_22FCC8C44();

  v28 = [a1 phoneNumbers];
  sub_22FCC8C44();

  v29 = [a1 emails];
  sub_22FCC8C44();

  if (*(v27 + 16) || *(v25 + 16) || v22[2])
  {
    sub_22FCC7C04();
    v30 = sub_22FCC7C14();
    return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
  }

  else
  {
    v32 = sub_22FCC7C14();
    (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }
}

uint64_t ECRPersonGroundingProcessor.groundPerson(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA52F04;

  return ECRPersonGroundingProcessorHelper.groundPerson(_:)(a1, a2);
}

uint64_t sub_22FC24F40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FAA31A4;

  return ECRPersonGroundingProcessorHelper.groundPerson(_:)(a1, a2);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22FC25188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FC25214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FC2527C()
{
  result = qword_27DAD90F8;
  if (!qword_27DAD90F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD90F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD90F8);
  }

  return result;
}

uint64_t sub_22FC252E4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_22FCC69A4();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_22FCC85D4();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v6 = sub_22FCC8604();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = sub_22FCC8684();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC254D4, 0, 0);
}

uint64_t sub_22FC254D4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  sub_22FCC8674();
  (*(v4 + 16))(v2, v1, v3);
  sub_22FCC85E4();
  sub_22FCC85C4();
  v5 = sub_22FCC85F4();
  v6 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v5, v6, v8, "GraphSearchEntityRankingDonationTask.execute", "", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  v14 = v0[19];
  v13 = v0[20];

  (*(v12 + 16))(v9, v10, v11);
  sub_22FCC8644();
  swift_allocObject();
  v0[36] = sub_22FCC8634();
  (*(v12 + 8))(v10, v11);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v15;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_34;
  v16 = _Block_copy(v0 + 2);
  v17 = objc_opt_self();

  v0[37] = [v17 progressReporterWithProgressBlock_];
  _Block_release(v16);

  v18 = sub_22FCC9014();
  v0[38] = v18;
  v0[39] = v19;
  v20 = sub_22FCC8664();
  v21 = sub_22FCC8F34();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22FA28000, v20, v21, "GraphSearchEntityRankingDonationTask.execute - Will rank graph search entities", v22, 2u);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v23 = v0[35];
  v24 = v0[21];

  v0[18] = MEMORY[0x277D84F90];
  v25 = *(v24 + 168);
  v0[40] = v25;
  v26 = swift_task_alloc();
  v0[41] = v26;
  v26[2] = v0 + 18;
  v26[3] = v18;
  v26[4] = v23;

  return MEMORY[0x2822009F8](sub_22FC2584C, v25, 0);
}

uint64_t sub_22FC2584C()
{
  v1 = [*(*(v0 + 320) + 112) workingContext];
  sub_22FCC9124();

  return MEMORY[0x2822009F8](sub_22FC25900, 0, 0);
}

uint64_t sub_22FC25900()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F34();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "GraphSearchEntityRankingDonationTask.execute - will persist ranked graph search entities", v5, 2u);
      MEMORY[0x23190A000](v5, -1, -1);
    }

    v6 = *(v0 + 320);

    v7 = *(*(v6 + 120) + 112);
    sub_22FCC6984();

    sub_22FCC6994();

    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v1 + 16);
      _os_log_impl(&dword_22FA28000, v8, v9, "GraphSearchEntityRankingDonationTask.execute - completed with %ld ranked entities", v11, 0xCu);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    v12 = *(v0 + 168);

    sub_22FA2E6E4(v12 + 128, v0 + 104);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 296);
    v16 = *(v0 + 184);
    if (*(v0 + 128))
    {
      v34 = *(v0 + 304);
      v35 = *(v0 + 176);
      v17 = *(v0 + 168);
      v36 = *(v0 + 192);
      sub_22FA2D89C((v0 + 104), v0 + 64);
      v18 = *(v0 + 88);
      v19 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v18);
      (*(v19 + 16))(v2, *(v17 + 32), *(v17 + 40), v18, v19);

      (*(v16 + 8))(v36, v35);
      __swift_destroy_boxed_opaque_existential_0(v0 + 64);
    }

    else
    {
      (*(v16 + 8))(*(v0 + 192), *(v0 + 176));

      sub_22FA518B4(v0 + 104);
    }
  }

  else
  {
    sub_22FCC9004();
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22FA28000, v20, v21, "GraphSearchEntityRankingDonationTask.execute - completed with no ranked entities to persist", v23, 2u);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    v24 = *(v0 + 312);
    v25 = *(v0 + 296);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 264);
  v29 = *(v0 + 248);
  v28 = *(v0 + 256);
  v30 = *(v0 + 232);
  v31 = *(v0 + 240);
  sub_22FC25DC8(v29, *(v0 + 288), *(v0 + 168));

  (*(v31 + 8))(v29, v30);
  (*(v27 + 8))(v26, v28);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22FC25DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FCC8614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22FCC85D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v12 = sub_22FCC85F4();
  sub_22FCC8624();
  v21 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {

    sub_22FCC8654();

    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D85B00])
    {
      v13 = 0;
      v14 = 0;
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v15 = "%{public}s";
      v14 = 2;
      v13 = 1;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = v14;
    *(v16 + 1) = v13;
    *(v16 + 2) = 2082;
    *(v16 + 4) = sub_22FA2F600(*(a3 + 48), *(a3 + 56), &v22);
    v18 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v12, v21, v18, "GraphSearchEntityRankingDonationTask.execute", v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22FC26084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a2;
  v15[1] = a4;
  v4 = sub_22FCC6794();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FCC69D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC69F4();
  swift_allocObject();
  sub_22FCC69E4();
  sub_22FCC69C4();
  v12 = [objc_opt_self() currentLocalDate];
  sub_22FCC6754();

  v13 = sub_22FCC69B4();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  *v15[0] = v13;
}

uint64_t sub_22FC263D8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  sub_22FA518B4(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_22FC2646C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = sub_22FA3A77C(0, &qword_28147AE30);
  return v0;
}

uint64_t sub_22FC264D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FC252E4(a2, a3);
}

void sub_22FC26580(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FC26684(uint64_t a1)
{
  *(a1 + 8) = sub_22FC266EC(qword_28147C790);
  result = sub_22FC266EC(&qword_27DAD9100);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FC266EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GraphSearchEntityRankingDonationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FC26740()
{
  sub_22FA812F8();
  result = sub_22FCC91C4();
  qword_28147B780 = result;
  return result;
}

uint64_t sub_22FC267A8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147B6A8);
  __swift_project_value_buffer(v0, qword_28147B6A8);
  if (qword_28147B778 != -1)
  {
    swift_once();
  }

  v1 = qword_28147B780;
  return sub_22FCC8694();
}

uint64_t sub_22FC26834()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = OBJC_IVAR____TtC13PhotoAnalysis26StoryDiagnosticCleanUpTask_oldestAllowedDate;
  v2 = sub_22FCC6794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoryDiagnosticCleanUpTask()
{
  result = qword_28147DD68;
  if (!qword_28147DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC26954()
{
  result = sub_22FCC6794();
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

uint64_t sub_22FC26A2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FC26BE0();
}

uint64_t sub_22FC26AD0(uint64_t result)
{
  if (result)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FC26B34(uint64_t a1)
{
  *(a1 + 8) = sub_22FC26B9C(&qword_28147DD80);
  result = sub_22FC26B9C(&qword_28147DD88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FC26B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoryDiagnosticCleanUpTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FC26C00()
{
  sub_22FCC7F84();
  sub_22FCC7F64();
  sub_22FCC7F74();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC26D70(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_22FA37D64();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22FC26E50(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_22FB050C4(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FC26F30(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22FB04E04(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FC27034(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
      result = 0x502E736F746F6850;
      break;
    case 2:
      result = 0x4D2E736F746F6850;
      break;
    case 3:
    case 7:
    case 9:
      result = 0x532E736F746F6850;
      break;
    case 4:
      result = 0x452E736F746F6850;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x462E736F746F6850;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000023;
      break;
    default:
      result = sub_22FCC9744();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_22FC27298@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FC2CF58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_22FC272DC()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_27DAE29E0 = result;
  return result;
}

uint64_t sub_22FC27358()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAE29E8);
  __swift_project_value_buffer(v0, qword_27DAE29E8);
  if (qword_27DAD6F38 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAE29E0;
  return sub_22FCC8694();
}

id sub_22FC274F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v7 = a3();
  sub_22FC26D70(v7, a4, a5);
  v8 = sub_22FCC8C24();

  return v8;
}

uint64_t sub_22FC27744(uint64_t (*a1)(void), uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = a2(*(v5 + 16), 0);
  v9 = a3(&v11, v8 + 32, v7, v6);
  sub_22FA37D64();
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

id sub_22FC27838(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = *(type metadata accessor for UserAnalyticsOutputSample(0) + 240);
  v7 = type metadata accessor for UserAnalyticsInputSample(0);
  v8 = *(v7 + 20);
  v9 = sub_22FCC6794();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a1 + v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v11 = sub_22FC2FEA4(v1 + v6, v5);
  sub_22FA2B420(v5, &qword_27DAD8730);
  v12 = 0;
  v13 = *(v1 + 8);
  v62 = *v1;
  v65 = v13;
  v14 = (a1 + *(v7 + 32));
  v16 = *v14;
  v15 = v14[1];
  v64 = v16;
  v61 = v15;
  if (*(v1 + 32) != 2)
  {
    v12 = sub_22FCC8CB4();
  }

  v17 = *(v1 + 40);
  v69 = v12;
  if (v17)
  {
    v68 = 0;
  }

  else
  {
    v68 = sub_22FCC9824();
  }

  if (*(v1 + 41) == 2)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_22FCC8CB4();
  }

  if (*(v1 + 42) == 2)
  {
    v66 = 0;
  }

  else
  {
    v66 = sub_22FCC8CB4();
  }

  if (*(v1 + 43) == 2)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_22FCC8CB4();
  }

  if (*(v1 + 44) == 2)
  {
    v91 = 0;
  }

  else
  {
    v91 = sub_22FCC8CB4();
  }

  if (*(v1 + 45) == 2)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_22FCC8CB4();
  }

  if (*(v1 + 46) == 2)
  {
    v60 = 0;
  }

  else
  {
    v60 = sub_22FCC8CB4();
  }

  if (*(v1 + 47) == 2)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_22FCC8CB4();
  }

  if (*(v1 + 48) == 2)
  {
    v102 = 0;
  }

  else
  {
    v102 = sub_22FCC8CB4();
  }

  if (*(v1 + 49) == 2)
  {
    v101 = 0;
  }

  else
  {
    v101 = sub_22FCC8CB4();
  }

  if (*(v1 + 50) == 2)
  {
    v100 = 0;
  }

  else
  {
    v100 = sub_22FCC8CB4();
  }

  if (*(v1 + 51) == 2)
  {
    v99 = 0;
  }

  else
  {
    v99 = sub_22FCC8CB4();
  }

  if (*(v1 + 52) == 2)
  {
    v98 = 0;
  }

  else
  {
    v98 = sub_22FCC8CB4();
  }

  if (*(v1 + 53) == 2)
  {
    v97 = 0;
    if ((*(v1 + 64) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v97 = sub_22FCC8CB4();
    if ((*(v1 + 64) & 1) == 0)
    {
LABEL_44:
      v96 = sub_22FCC9824();
      if ((*(v1 + 72) & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      v95 = 0;
      if ((*(v1 + 80) & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }
  }

  v96 = 0;
  if (*(v1 + 72))
  {
    goto LABEL_49;
  }

LABEL_45:
  v95 = sub_22FCC9824();
  if ((*(v1 + 80) & 1) == 0)
  {
LABEL_46:
    v94 = sub_22FCC9824();
    goto LABEL_51;
  }

LABEL_50:
  v94 = 0;
LABEL_51:
  if (*(v1 + 81) == 2)
  {
    v93 = 0;
  }

  else
  {
    v93 = sub_22FCC8CB4();
  }

  if (*(v1 + 82) == 2)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_22FCC8CB4();
  }

  if (*(v1 + 83) == 2)
  {
    v90 = 0;
  }

  else
  {
    v90 = sub_22FCC8CB4();
  }

  if (*(v1 + 84) == 2)
  {
    v89 = 0;
  }

  else
  {
    v89 = sub_22FCC8CB4();
  }

  if (*(v1 + 85) == 2)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_22FCC8CB4();
  }

  if (*(v1 + 86) == 2)
  {
    v87 = 0;
  }

  else
  {
    v87 = sub_22FCC8CB4();
  }

  if (*(v1 + 87) == 2)
  {
    v86 = 0;
  }

  else
  {
    v86 = sub_22FCC8CB4();
  }

  if (*(v1 + 88) == 2)
  {
    v85 = 0;
  }

  else
  {
    v85 = sub_22FCC8CB4();
  }

  if (*(v1 + 89) == 2)
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_22FCC8CB4();
  }

  if (*(v1 + 90) == 2)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_22FCC8CB4();
  }

  if (*(v1 + 91) == 2)
  {
    v82 = 0;
  }

  else
  {
    v82 = sub_22FCC8CB4();
  }

  if (*(v1 + 92) == 2)
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_22FCC8CB4();
  }

  if (*(v1 + 93) == 2)
  {
    v80 = 0;
  }

  else
  {
    v80 = sub_22FCC8CB4();
  }

  if (*(v1 + 94) == 2)
  {
    v79 = 0;
  }

  else
  {
    v79 = sub_22FCC8CB4();
  }

  if (*(v1 + 95) == 2)
  {
    v78 = 0;
  }

  else
  {
    v78 = sub_22FCC8CB4();
  }

  if (*(v1 + 96) == 2)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_22FCC8CB4();
  }

  if (*(v1 + 97) == 2)
  {
    v76 = 0;
  }

  else
  {
    v76 = sub_22FCC8CB4();
  }

  if (*(v1 + 99) == 2)
  {
    v71 = 0;
    v75 = 0;
  }

  else
  {
    v75 = sub_22FCC8CB4();
    v71 = sub_22FCC8CB4();
  }

  if (*(v1 + 100) == 2)
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_22FCC8CB4();
  }

  if (*(v1 + 101) == 2)
  {
    v73 = 0;
  }

  else
  {
    v73 = sub_22FCC8CB4();
  }

  if (*(v1 + 102) == 2)
  {
    v72 = 0;
  }

  else
  {
    v72 = sub_22FCC8CB4();
  }

  if (*(v1 + 103) == 2)
  {
    v70 = 0;
  }

  else
  {
    v70 = sub_22FCC8CB4();
  }

  if (*(v1 + 104) == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_22FCC8CB4();
  }

  if (*(v1 + 105) == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22FCC8CB4();
  }

  if (*(v1 + 106) == 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_22FCC8CB4();
  }

  if (*(v1 + 107) == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_22FCC8CB4();
  }

  if (*(v1 + 108) == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_22FCC8CB4();
  }

  if (*(v1 + 109) == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_22FCC8CB4();
  }

  if (*(v1 + 110) != 2)
  {
    v24 = sub_22FCC8CB4();
    if ((*(v1 + 116) & 1) == 0)
    {
      goto LABEL_137;
    }

LABEL_139:
    v25 = 0;
    goto LABEL_140;
  }

  v24 = 0;
  if (*(v1 + 116))
  {
    goto LABEL_139;
  }

LABEL_137:
  v25 = sub_22FCC8E54();
LABEL_140:
  v50 = v25;
  v26 = objc_allocWithZone(MEMORY[0x277CF1410]);
  v62 = sub_22FCC8A54();
  v27 = sub_22FCC8A54();
  v49 = v25;
  LODWORD(v48) = 0;
  v57 = v24;
  v47 = v24;
  v56 = v23;
  v46 = v23;
  v55 = v22;
  v45 = v22;
  v54 = v21;
  v44 = v21;
  v53 = v20;
  v43 = v20;
  v52 = v19;
  v42 = v19;
  v51 = v18;
  v41 = v18;
  v40 = v11;
  v28 = v59;
  v29 = v60;
  v30 = v63;
  v31 = v58;
  v32 = v26;
  v33 = v62;
  v34 = v27;
  v35 = v69;
  v36 = v68;
  v37 = v67;
  v38 = v66;
  v65 = [v32 initWithIdentifier:v62 userEvent:v27 containsVIP:v69 faceCount:v68 containsPets:v67 capturedAtHome:v66 capturedAtWork:v58 capturedAtFrequentLocation:v91 capturedOnTrip:v63 capturedOnShortTrip:v60 isDocument:v59 isMeme:v102 isScreenshot:v101 isFavorite:v100 isCapturedOnWeekend:v99 isCapturedAtPrivateEvent:v98 isCapturedOnHoliday:v97 mediaType:0 importSource:v40 assetAge:v96 userLibrarySize:v95 userNumTrips:v94 userNumVIPPeople:v93 userNumFavorites:v92 userHasVIP:v90 userHasHome:v89 userHasPet:v88 containsBaby:v87 containsSocialGroup:v86 containsMyPet:v85 containsCoWorker:v84 containsFamily:v83 containsFriends:v82 containsPartner:v81 containsParent:v80 containsSibling:v79 containsChild:v78 isCoupon:v77 isRecipe:v76 isReceipt:v75 isRecentView:v71 isRecentEdit:v74 isRecentShare:v73 isRecentFavorite:v72 isContainedInSharedAlbum:v70 isContainedInOnThisDay:v41 capturedAtAOI:v42 capturedAtPOI:v43 capturedAtROI:v44 capturedAtBusiness:v45 isCapturedAtPublicEvent:v46 isContainedInVisualTrend:v47 isContainedInActivity:v48 isContainedInChildActivity:v49 userLibraryAgeInDays:? userisDAU:?];

  return v65;
}

id sub_22FC284A0()
{
  v1 = *(v0 + 24);
  v24 = *(v0 + 32);
  v27 = *(v0 + 49);
  v28 = *(v0 + 48);
  v26 = *(v0 + 56);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  LODWORD(v17) = *(v0 + 108);
  HIDWORD(v17) = *(v0 + 116);
  v5 = *(v0 + 120);
  v6 = *(v0 + 160);
  v21 = *(v0 + 176);
  v22 = *(v0 + 192);
  if (*(v0 + 72))
  {

    v25 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v25 = sub_22FCC8ED4();
    if ((v2 & 1) == 0)
    {
LABEL_3:
      v23 = sub_22FCC8ED4();
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v23 = 0;
  if ((v3 & 1) == 0)
  {
LABEL_4:
    v7 = sub_22FCC8ED4();
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v8 = sub_22FCC9824();
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v8 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = sub_22FCC9824();
  if ((v6 & 1) == 0)
  {
LABEL_7:
    v10 = sub_22FCC8ED4();
    goto LABEL_14;
  }

LABEL_13:
  v10 = 0;
LABEL_14:
  v20 = sub_22FCC8A54();
  if (v1)
  {
    v19 = sub_22FCC8A54();
  }

  else
  {
    v19 = 0;
  }

  sub_22FA3A77C(0, &qword_28147ADE0);
  v18 = sub_22FCC8C24();

  if (v21)
  {
    v11 = sub_22FCC8A54();
    if (v22)
    {
LABEL_19:
      v12 = sub_22FCC8A54();
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v12 = 0;
LABEL_22:
  if (v24)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v24 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CF1408]) initWithIdentifier:v20 styleChoice:v19 styleSelectionType:v14 sliderValues:v18 userLibrarySize:v28 userLibraryAgeInDays:v27 brightnessValue:v26 stillImageProcessingFlags:v25 camera:v23 stillImageCaptureType:v7 faceCount:v8 petCount:v9 version:v10 sceneForAsset:v11 subjectForAsset:{v12, v17}];

  return v15;
}

uint64_t sub_22FC2875C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22FCC6794();
  v290 = *(v6 - 8);
  v291 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v288 = &v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v286 = &v282 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v287 = &v282 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v284 = &v282 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v285 = &v282 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v283 = &v282 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v282 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v282 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v282 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v282 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v282 - v32;
  MEMORY[0x28223BE20](v31);
  v292 = &v282 - v34;
  result = [a1 respondsToSelector_];
  if (result)
  {
    v289 = [a1 eventBody];
    if ([a1 respondsToSelector_])
    {
      [a1 timestamp];
      v36 = v292;
      sub_22FCC6694();
      v297 = 0;
      memset(v296, 0, sizeof(v296));
      v37 = v291;
      v38 = v290;
      switch(a2)
      {
        case 0:
        case 16:
          (*(v290 + 8))(v36, v291);
          result = swift_unknownObjectRelease();
          goto LABEL_139;
        case 1:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v78 = swift_dynamicCastObjCClass();
          if (!v78)
          {
            goto LABEL_66;
          }

          v79 = v78;
          v80 = [v78 identifier];
          if (v80)
          {
            v81 = v80;
            v82 = sub_22FCC8A84();
            v84 = v83;
          }

          else
          {
            v82 = 1280070990;
            v84 = 0xE400000000000000;
          }

          (*(v38 + 16))(v33, v36, v37);
          v195 = [v79 subset];
          if (v195)
          {
            v196 = v195;
            v197 = sub_22FCC8A84();
            v199 = v198;
          }

          else
          {
            v197 = 0;
            v199 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v200 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v200;
          v295 = &off_2844AA178;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *boxed_opaque_existential_1 = v82;
          boxed_opaque_existential_1[1] = v84;
          result = (*(v38 + 32))(boxed_opaque_existential_1 + v200[5], v33, v37);
          v202 = (boxed_opaque_existential_1 + v200[6]);
          *v202 = v197;
          v202[1] = v199;
          v203 = boxed_opaque_existential_1 + v200[7];
          *v203 = 0;
          v203[4] = 1;
          v163 = (boxed_opaque_existential_1 + v200[8]);
          v164 = 0x72656B636950;
          goto LABEL_97;
        case 2:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v92 = swift_dynamicCastObjCClass();
          if (!v92)
          {
            goto LABEL_66;
          }

          v93 = v92;
          v94 = [v92 identifier];
          if (v94)
          {
            v95 = v94;
            v96 = sub_22FCC8A84();
            v98 = v97;
          }

          else
          {
            v96 = 1280070990;
            v98 = 0xE400000000000000;
          }

          (*(v38 + 16))(v27, v36, v37);
          v214 = [v93 subset];
          if (v214)
          {
            v215 = v214;
            v216 = sub_22FCC8A84();
            v218 = v217;
          }

          else
          {
            v216 = 0;
            v218 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v219 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v219;
          v295 = &off_2844AA178;
          v220 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v220 = v96;
          v220[1] = v98;
          result = (*(v38 + 32))(v220 + v219[5], v27, v37);
          v221 = (v220 + v219[6]);
          *v221 = v216;
          v221[1] = v218;
          v222 = v220 + v219[7];
          *v222 = 0;
          v222[4] = 1;
          v163 = (v220 + v219[8]);
          v164 = 1936744781;
          v165 = 0xE400000000000000;
          goto LABEL_137;
        case 3:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v59 = swift_dynamicCastObjCClass();
          if (!v59)
          {
            goto LABEL_66;
          }

          v60 = v59;
          v61 = [v59 identifier];
          if (v61)
          {
            v62 = v61;
            v63 = sub_22FCC8A84();
            v65 = v64;
          }

          else
          {
            v63 = 1280070990;
            v65 = 0xE400000000000000;
          }

          (*(v38 + 16))(v30, v36, v37);
          v175 = [v60 subset];
          if (v175)
          {
            v176 = v175;
            v177 = sub_22FCC8A84();
            v179 = v178;
          }

          else
          {
            v177 = 0;
            v179 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v180 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v180;
          v295 = &off_2844AA178;
          v181 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v181 = v63;
          v181[1] = v65;
          result = (*(v38 + 32))(v181 + v180[5], v30, v37);
          v182 = (v181 + v180[6]);
          *v182 = v177;
          v182[1] = v179;
          v183 = v181 + v180[7];
          *v183 = 0;
          v183[4] = 1;
          v163 = (v181 + v180[8]);
          v164 = 0x686372616553;
LABEL_97:
          v165 = 0xE600000000000000;
          goto LABEL_137;
        case 4:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v106 = swift_dynamicCastObjCClass();
          if (!v106)
          {
            goto LABEL_66;
          }

          v107 = v106;
          v108 = [v106 identifier];
          if (v108)
          {
            v109 = v108;
            v110 = sub_22FCC8A84();
            v112 = v111;
          }

          else
          {
            v110 = 1280070990;
            v112 = 0xE400000000000000;
          }

          (*(v38 + 16))(v24, v36, v37);
          v233 = [v107 subset];
          if (v233)
          {
            v234 = v233;
            v235 = sub_22FCC8A84();
            v237 = v236;

            v36 = v292;
          }

          else
          {
            v235 = 0;
            v237 = 0;
          }

          v238 = [v107 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v239 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v239;
          v295 = &off_2844AA178;
          v240 = __swift_allocate_boxed_opaque_existential_1(&v293);
          v241 = v37;
          v242 = v240;
          *v240 = v110;
          v240[1] = v112;
          result = (*(v38 + 32))(v240 + v239[5], v24, v241);
          v243 = (v242 + v239[6]);
          *v243 = v235;
          v243[1] = v237;
          v244 = v242 + v239[7];
          *v244 = v238;
          v244[4] = 0;
          v163 = (v242 + v239[8]);
          v164 = 0x6445736F746F6850;
          v165 = 0xEA00000000007469;
          goto LABEL_137;
        case 5:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v119 = swift_dynamicCastObjCClass();
          if (!v119)
          {
            goto LABEL_66;
          }

          v120 = v119;
          v121 = [v119 identifier];
          if (v121)
          {
            v122 = v121;
            v288 = sub_22FCC8A84();
            v124 = v123;
          }

          else
          {
            v288 = 1280070990;
            v124 = 0xE400000000000000;
          }

          (*(v38 + 16))(v21, v36, v37);
          v249 = [v120 subset];
          if (v249)
          {
            v250 = v249;
            v251 = sub_22FCC8A84();
            v253 = v252;

            v36 = v292;
          }

          else
          {
            v251 = 0;
            v253 = 0;
          }

          v254 = [v120 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          v255 = v290;
          (*(v290 + 8))(v36, v37);
          v256 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v256;
          v295 = &off_2844AA178;
          v257 = __swift_allocate_boxed_opaque_existential_1(&v293);
          v258 = v37;
          v259 = v257;
          *v257 = v288;
          v257[1] = v124;
          result = (*(v255 + 32))(v257 + v256[5], v21, v258);
          v260 = (v259 + v256[6]);
          *v260 = v251;
          v260[1] = v253;
          v261 = v259 + v256[7];
          *v261 = v254;
          v261[4] = 0;
          v262 = (v259 + v256[8]);
          *v262 = 0xD000000000000010;
          v262[1] = 0x800000022FCE83F0;
          goto LABEL_138;
        case 6:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v99 = swift_dynamicCastObjCClass();
          if (!v99)
          {
            goto LABEL_66;
          }

          v100 = v99;
          v101 = [v99 identifier];
          if (v101)
          {
            v102 = v101;
            v103 = sub_22FCC8A84();
            v105 = v104;
          }

          else
          {
            v103 = 1280070990;
            v105 = 0xE400000000000000;
          }

          (*(v38 + 16))(v283, v36, v37);
          v223 = [v100 subset];
          if (v223)
          {
            v224 = v223;
            v225 = sub_22FCC8A84();
            v227 = v226;
          }

          else
          {
            v225 = 0;
            v227 = 0;
          }

          v228 = [v100 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v229 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v229;
          v295 = &off_2844AA178;
          v230 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v230 = v103;
          v230[1] = v105;
          result = (*(v38 + 32))(v230 + v229[5], v283, v37);
          v231 = (v230 + v229[6]);
          *v231 = v225;
          v231[1] = v227;
          v232 = v230 + v229[7];
          *v232 = v228;
          v232[4] = 0;
          v163 = (v230 + v229[8]);
          v164 = 0x6146736F746F6850;
          v165 = 0xEE00657469726F76;
          goto LABEL_137;
        case 7:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v133 = swift_dynamicCastObjCClass();
          if (!v133)
          {
            goto LABEL_66;
          }

          v134 = v133;
          v135 = [v133 identifier];
          if (v135)
          {
            v136 = v135;
            v137 = sub_22FCC8A84();
            v139 = v138;
          }

          else
          {
            v137 = 1280070990;
            v139 = 0xE400000000000000;
          }

          (*(v38 + 16))(v285, v36, v37);
          v271 = [v134 subset];
          if (v271)
          {
            v272 = v271;
            v273 = sub_22FCC8A84();
            v275 = v274;
          }

          else
          {
            v273 = 0;
            v275 = 0;
          }

          v276 = [v134 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v277 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v277;
          v295 = &off_2844AA178;
          v278 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v278 = v137;
          v278[1] = v139;
          result = (*(v38 + 32))(v278 + v277[5], v285, v37);
          v279 = (v278 + v277[6]);
          *v279 = v273;
          v279[1] = v275;
          v280 = v278 + v277[7];
          *v280 = v276;
          v280[4] = 0;
          v163 = (v278 + v277[8]);
          v164 = 0x6853736F746F6850;
          v213 = 6648417;
          goto LABEL_136;
        case 8:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v72 = swift_dynamicCastObjCClass();
          if (!v72)
          {
            goto LABEL_66;
          }

          v73 = [v72 identifier];
          if (v73)
          {
            v74 = v73;
            v75 = sub_22FCC8A84();
            v77 = v76;
          }

          else
          {
            v75 = 1280070990;
            v77 = 0xE400000000000000;
          }

          v191 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v191;
          v295 = &off_2844AA178;
          v192 = __swift_allocate_boxed_opaque_existential_1(&v293);
          (*(v38 + 16))(v192 + v191[5], v36, v37);
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          result = (*(v38 + 8))(v36, v37);
          *v192 = v75;
          v192[1] = v77;
          v193 = (v192 + v191[6]);
          *v193 = 0;
          v193[1] = 0;
          v194 = v192 + v191[7];
          *v194 = 0;
          v194[4] = 1;
          v188 = (v192 + v191[8]);
          v189 = 0x6C616E4172657355;
          v190 = 0xED00007363697479;
          goto LABEL_120;
        case 9:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v125 = swift_dynamicCastObjCClass();
          if (!v125)
          {
            goto LABEL_66;
          }

          v126 = v125;
          v127 = 1280070990;
          v128 = [v125 identifier];
          if (v128)
          {
            v129 = v128;
            v130 = sub_22FCC8A84();
            v132 = v131;
          }

          else
          {
            v132 = 0xE400000000000000;
            v130 = 1280070990;
          }

          v263 = [v126 styleChoice];
          if (v263)
          {
            v264 = v263;
            v127 = sub_22FCC8A84();
            v266 = v265;
          }

          else
          {
            v266 = 0xE400000000000000;
          }

          v267 = [v126 styleSelectionType];
          v268 = [v126 sliderValues];
          sub_22FA3A77C(0, &qword_28147ADE0);
          v269 = sub_22FCC8C44();

          v270 = swift_allocObject();
          swift_unknownObjectRelease();
          *(v270 + 16) = v130;
          *(v270 + 24) = v132;
          *(v270 + 32) = v127;
          *(v270 + 40) = v266;
          *(v270 + 48) = v267;
          *(v270 + 56) = v269;
          sub_22FA2B420(v296, &qword_27DAD9140);
          result = (*(v38 + 8))(v292, v291);
          *(v296 + 8) = v293;
          *&v296[0] = v270;
          *(&v296[1] + 1) = &type metadata for PhotoStyleInputSample;
          v297 = &off_2844A90F0;
          goto LABEL_139;
        case 10:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (!v52)
          {
            goto LABEL_66;
          }

          v53 = v52;
          v54 = [v52 identifier];
          if (v54)
          {
            v55 = v54;
            v56 = sub_22FCC8A84();
            v58 = v57;
          }

          else
          {
            v56 = 1280070990;
            v58 = 0xE400000000000000;
          }

          (*(v38 + 16))(v284, v36, v37);
          v166 = [v53 subset];
          if (v166)
          {
            v167 = v166;
            v168 = sub_22FCC8A84();
            v170 = v169;
          }

          else
          {
            v168 = 0;
            v170 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v171 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v171;
          v295 = &off_2844AA178;
          v172 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v172 = v56;
          v172[1] = v58;
          result = (*(v38 + 32))(v172 + v171[5], v284, v37);
          v173 = (v172 + v171[6]);
          *v173 = v168;
          v173[1] = v170;
          v174 = v172 + v171[7];
          *v174 = 0;
          v174[4] = 1;
          v163 = (v172 + v171[8]);
          v164 = 0x685379726F6D654DLL;
          v165 = 0xEC00000064657261;
          goto LABEL_137;
        case 11:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v66 = swift_dynamicCastObjCClass();
          if (!v66)
          {
            goto LABEL_66;
          }

          v67 = [v66 identifier];
          if (v67)
          {
            v68 = v67;
            v69 = sub_22FCC8A84();
            v71 = v70;
          }

          else
          {
            v69 = 1280070990;
            v71 = 0xE400000000000000;
          }

          v184 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v184;
          v295 = &off_2844AA178;
          v185 = __swift_allocate_boxed_opaque_existential_1(&v293);
          (*(v38 + 16))(v185 + v184[5], v36, v37);
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          result = (*(v38 + 8))(v36, v37);
          *v185 = v69;
          v185[1] = v71;
          v186 = (v185 + v184[6]);
          *v186 = 0;
          v186[1] = 0;
          v187 = v185 + v184[7];
          *v187 = 0;
          v187[4] = 1;
          v188 = (v185 + v184[8]);
          v189 = 0x695679726F6D654DLL;
          v190 = 0xEC00000064657765;
          goto LABEL_120;
        case 12:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v113 = swift_dynamicCastObjCClass();
          if (!v113)
          {
            goto LABEL_66;
          }

          v114 = [v113 identifier];
          if (v114)
          {
            v115 = v114;
            v116 = sub_22FCC8A84();
            v118 = v117;
          }

          else
          {
            v116 = 1280070990;
            v118 = 0xE400000000000000;
          }

          v245 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v245;
          v295 = &off_2844AA178;
          v246 = __swift_allocate_boxed_opaque_existential_1(&v293);
          (*(v38 + 16))(v246 + v245[5], v36, v37);
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          result = (*(v38 + 8))(v36, v37);
          *v246 = v116;
          v246[1] = v118;
          v247 = (v246 + v245[6]);
          *v247 = 0;
          v247[1] = 0;
          v248 = v246 + v245[7];
          *v248 = 0;
          v248[4] = 1;
          v188 = (v246 + v245[8]);
          v189 = 0x724379726F6D654DLL;
          v190 = 0xEE006E6F69746165;
LABEL_120:
          *v188 = v189;
          v188[1] = v190;
          v296[0] = v293;
          v296[1] = v294;
          v297 = v295;
          goto LABEL_139;
        case 13:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v45 = swift_dynamicCastObjCClass();
          if (!v45)
          {
            goto LABEL_66;
          }

          v46 = v45;
          v47 = [v45 identifier];
          if (v47)
          {
            v48 = v47;
            v49 = sub_22FCC8A84();
            v51 = v50;
          }

          else
          {
            v49 = 1280070990;
            v51 = 0xE400000000000000;
          }

          (*(v38 + 16))(v287, v36, v37);
          v153 = [v46 subset];
          if (v153)
          {
            v154 = v153;
            v155 = sub_22FCC8A84();
            v157 = v156;
          }

          else
          {
            v155 = 0;
            v157 = 0;
          }

          v158 = [v46 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v159 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v159;
          v295 = &off_2844AA178;
          v160 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v160 = v49;
          v160[1] = v51;
          result = (*(v38 + 32))(v160 + v159[5], v287, v37);
          v161 = (v160 + v159[6]);
          *v161 = v155;
          v161[1] = v157;
          v162 = v160 + v159[7];
          *v162 = v158;
          v162[4] = 0;
          v163 = (v160 + v159[8]);
          v164 = 0x754379726F6D654DLL;
          v165 = 0xEE006E6F69746172;
          goto LABEL_137;
        case 14:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v85 = swift_dynamicCastObjCClass();
          if (!v85)
          {
            goto LABEL_66;
          }

          v86 = v85;
          v87 = [v85 identifier];
          if (v87)
          {
            v88 = v87;
            v89 = sub_22FCC8A84();
            v91 = v90;
          }

          else
          {
            v89 = 1280070990;
            v91 = 0xE400000000000000;
          }

          (*(v38 + 16))(v286, v36, v37);
          v204 = [v86 subset];
          if (v204)
          {
            v205 = v204;
            v206 = sub_22FCC8A84();
            v208 = v207;
          }

          else
          {
            v206 = 0;
            v208 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v296, &qword_27DAD9140);
          (*(v38 + 8))(v36, v37);
          v209 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v294 + 1) = v209;
          v295 = &off_2844AA178;
          v210 = __swift_allocate_boxed_opaque_existential_1(&v293);
          *v210 = v89;
          v210[1] = v91;
          result = (*(v38 + 32))(v210 + v209[5], v286, v37);
          v211 = (v210 + v209[6]);
          *v211 = v206;
          v211[1] = v208;
          v212 = v210 + v209[7];
          *v212 = 0;
          v212[4] = 1;
          v163 = (v210 + v209[8]);
          v164 = 0x616C506569766F4DLL;
          v213 = 6579577;
LABEL_136:
          v165 = v213 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_137:
          *v163 = v164;
          v163[1] = v165;
          goto LABEL_138;
        case 15:
          if (!v289)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v39 = swift_dynamicCastObjCClass();
          if (v39)
          {
            v40 = v39;
            v41 = [v39 identifier];
            if (v41)
            {
              v42 = v41;
              v287 = sub_22FCC8A84();
              v44 = v43;
            }

            else
            {
              v287 = 1280070990;
              v44 = 0xE400000000000000;
            }

            (*(v38 + 16))(v288, v36, v37);
            v140 = [v40 subset];
            if (v140)
            {
              v141 = v140;
              v142 = sub_22FCC8A84();
              v144 = v143;
            }

            else
            {
              v142 = 0;
              v144 = 0;
            }

            v145 = [v40 type];
            swift_unknownObjectRelease();
            sub_22FA2B420(v296, &qword_27DAD9140);
            v146 = v291;
            (*(v38 + 8))(v36, v291);
            v147 = type metadata accessor for UserAnalyticsInputSample(0);
            *(&v294 + 1) = v147;
            v295 = &off_2844AA178;
            v148 = __swift_allocate_boxed_opaque_existential_1(&v293);
            v149 = v288;
            *v148 = v287;
            v148[1] = v44;
            result = (*(v38 + 32))(v148 + v147[5], v149, v146);
            v150 = (v148 + v147[6]);
            *v150 = v142;
            v150[1] = v144;
            v151 = v148 + v147[7];
            *v151 = v145;
            v151[4] = 0;
            v152 = (v148 + v147[8]);
            *v152 = 0xD000000000000012;
            v152[1] = 0x800000022FCE83D0;
LABEL_138:
            v297 = v295;
            v296[0] = v293;
            v296[1] = v294;
          }

          else
          {
LABEL_66:
            swift_unknownObjectRelease();
LABEL_67:
            result = (*(v38 + 8))(v36, v37);
          }

LABEL_139:
          v281 = v296[1];
          *a3 = v296[0];
          *(a3 + 16) = v281;
          *(a3 + 32) = v297;
          break;
        default:
          goto LABEL_142;
      }
    }

    else
    {
      __break(1u);
LABEL_142:
      *&v293 = a2;
      result = sub_22FCC9744();
      __break(1u);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22FC2A1A4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7 - 8];
  v9 = type metadata accessor for UserAnalyticsInputSample(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-v14 - 8];
  type metadata accessor for BiomeUtilities();
  sub_22FC2875C(a1, a2, v23);
  if (!v24)
  {
    sub_22FA2B420(v23, &qword_27DAD9140);
    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_22FA2B420(v8, &qword_27DAD9108);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9148);
  v16 = swift_dynamicCast();
  (*(v10 + 56))(v8, v16 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FA2B420(v8, &qword_27DAD9108);
  }

  sub_22FC2E18C(v8, v15, type metadata accessor for UserAnalyticsInputSample);
  sub_22FC2E124(v15, v13, type metadata accessor for UserAnalyticsInputSample);
  swift_beginAccess();
  v17 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_22FAC2CAC(0, v17[2] + 1, 1, v17);
    *(a3 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_22FAC2CAC(v19 > 1, v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  sub_22FC2E18C(v13, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, type metadata accessor for UserAnalyticsInputSample);
  *(a3 + 16) = v17;
  swift_endAccess();
  return sub_22FC2E1F4(v15, type metadata accessor for UserAnalyticsInputSample);
}

uint64_t sub_22FC2A4C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v9 = sub_22FC2C430();
  v10 = *(v9 + 16);
  v45 = a4;
  if (v10)
  {
    v11 = sub_22FA86B8C(v10, 0);
    v12 = sub_22FA8861C(&aBlock, v11 + 4, v10, v9);
    sub_22FA37D64();
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v13 = sub_22FAA9A78(v11);

  v14 = sub_22FC2C854();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_22FA86B8C(*(v14 + 16), 0);
    v18 = sub_22FA8861C(&aBlock, v17 + 4, v16, v15);
    sub_22FA37D64();
    if (v18 == v16)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_9:
  v19 = sub_22FAA9A78(v17);

  v20 = sub_22FC26E50(v19, v13);
  v21 = sub_22FC2CBC4();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = sub_22FA86B8C(*(v21 + 16), 0);
    v25 = sub_22FA8861C(&aBlock, v24 + 4, v23, v22);
    sub_22FA37D64();
    if (v25 == v23)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v24 = MEMORY[0x277D84F90];
LABEL_13:
  v26 = sub_22FAA9A78(v24);

  v27 = sub_22FC26E50(v26, v20);
  v28 = sub_22FAB5D0C(a1, v27);

  if (v28)
  {
    v29 = BiomeLibrary();
    sub_22FC27034(a1);
    v30 = sub_22FCC8A54();

    aBlock = 0;
    v31 = [v29 streamWithIdentifier:v30 error:&aBlock];
    swift_unknownObjectRelease();

    if (v31)
    {
      v32 = aBlock;
      v42 = sub_22FCC8A54();
      v33 = [v31 publisherWithUseCase_];
      v50 = nullsub_1;
      v51 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_22FC2E314;
      v49 = &block_descriptor_35;
      v34 = _Block_copy(&aBlock);
      v35 = swift_allocObject();
      v35[2] = a1;
      v35[3] = v44;
      v35[4] = v8;
      v35[5] = a2;
      v35[6] = a3;
      v35[7] = v45;
      v50 = sub_22FC2CF70;
      v51 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_22FC2A4C4;
      v49 = &block_descriptor_3;
      v36 = _Block_copy(&aBlock);
      v37 = v45;
      v38 = v8;

      v39 = [v33 sinkWithCompletion:v34 receiveInput:v36];
      _Block_release(v36);
      _Block_release(v34);

      sub_22FCC9004();
      if (v4)
      {
      }
    }

    else
    {
      v40 = aBlock;
      sub_22FCC6514();

      swift_willThrow();
      v33 = v8;
    }
  }

  return v8;
}

void sub_22FC2AA90(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v58 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for UserAnalyticsInputSample(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 16)
  {
    type metadata accessor for BiomeUtilities();
    sub_22FC2875C(a1, a2, v63);
    sub_22FC2E26C(v63, &v60);
    if (v61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9148);
      v37 = swift_dynamicCast();
      (*(v16 + 56))(v14, v37 ^ 1u, 1, v15);
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        sub_22FC2E18C(v14, v18, type metadata accessor for UserAnalyticsInputSample);
        if (a6)
        {
          v38 = &v18[*(v15 + 24)];
          v39 = *(v38 + 1);
          if (!v39 || (*v38 == a5 ? (v40 = v39 == a6) : (v40 = 0), !v40 && (sub_22FCC9704() & 1) == 0))
          {
            sub_22FC2E1F4(v18, type metadata accessor for UserAnalyticsInputSample);
LABEL_51:
            sub_22FA2B420(v63, &qword_27DAD9140);
            return;
          }
        }

        if (a7)
        {
          v41 = &v18[*(v15 + 28)];
          v42 = *v41;
          v43 = v41[4];
          v44 = [a7 intValue];
          sub_22FC2E1F4(v18, type metadata accessor for UserAnalyticsInputSample);
          if ((v43 & 1) != 0 || v42 != v44)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_22FC2E1F4(v18, type metadata accessor for UserAnalyticsInputSample);
        }

LABEL_36:
        sub_22FC2E26C(v63, &v60);
        v45 = v61;
        if (!v61)
        {
          sub_22FA2B420(v63, &qword_27DAD9140);
          sub_22FA2B420(&v60, &qword_27DAD9140);
          return;
        }

        v46 = v62;
        __swift_project_boxed_opaque_existential_1(&v60, v61);
        v47 = (*(v46 + 8))(v45, v46);
        v49 = v48;
        __swift_destroy_boxed_opaque_existential_0(&v60);
        if (v47 == 1280070990 && v49 == 0xE400000000000000 || (sub_22FCC9704() & 1) != 0)
        {
          sub_22FA2B420(v63, &qword_27DAD9140);

          return;
        }

        v50 = sub_22FCC8A54();

        [v58 addObject_];

        goto LABEL_51;
      }
    }

    else
    {
      sub_22FA2B420(&v60, &qword_27DAD9140);
      (*(v16 + 56))(v14, 1, 1, v15);
    }

    sub_22FA2B420(v14, &qword_27DAD9108);
    goto LABEL_36;
  }

  if ([a1 respondsToSelector_])
  {
    v19 = [a1 eventBody];
    if (v19)
    {
      v20 = v19;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = [v21 presentedAssets];
        sub_22FA3A77C(0, &qword_27DAD9110);
        v23 = sub_22FCC8C44();

        if (v23 >> 62)
        {
          v24 = sub_22FCC92C4();
          v57 = v20;
          if (v24)
          {
LABEL_7:
            v25 = 0;
            v59 = (v23 & 0xC000000000000001);
            v26 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v59)
              {
                v27 = MEMORY[0x231908810](v25, v23);
              }

              else
              {
                if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_54;
                }

                v27 = *(v23 + 8 * v25 + 32);
              }

              v28 = v27;
              v29 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              v30 = [v27 assetUUID];
              if (v30)
              {
                v31 = v30;
                v32 = sub_22FCC8A84();
                v34 = v33;

                v61 = MEMORY[0x277D837D0];
                *&v60 = v32;
                *(&v60 + 1) = v34;
                sub_22FA4FE00(&v60, v63);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v26 = sub_22FAC2CD4(0, *(v26 + 2) + 1, 1, v26);
                }

                v36 = *(v26 + 2);
                v35 = *(v26 + 3);
                if (v36 >= v35 >> 1)
                {
                  v26 = sub_22FAC2CD4((v35 > 1), v36 + 1, 1, v26);
                }

                *(v26 + 2) = v36 + 1;
                sub_22FA4FE00(v63, &v26[32 * v36 + 32]);
              }

              else
              {
              }

              ++v25;
              if (v29 == v24)
              {
                goto LABEL_57;
              }
            }

            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v57 = v20;
          if (v24)
          {
            goto LABEL_7;
          }
        }

LABEL_57:

        v55 = sub_22FCC8C24();

        [v58 addObjectsFromArray_];
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_27DAD6F40 != -1)
  {
LABEL_55:
    swift_once();
  }

  v51 = sub_22FCC8684();
  __swift_project_value_buffer(v51, qword_27DAE29E8);
  v59 = sub_22FCC8664();
  v52 = sub_22FCC8F14();
  if (os_log_type_enabled(v59, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_22FA28000, v59, v52, "Invalid event for Photos Search Session", v53, 2u);
    MEMORY[0x23190A000](v53, -1, -1);
  }

  v54 = v59;
}

uint64_t sub_22FC2B3EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for BiomeUtilities();
  sub_22FC2875C(a1, 9, v24);
  if (!v25)
  {
    return sub_22FA2B420(v24, &qword_27DAD9140);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9148);
  result = swift_dynamicCast();
  if (result)
  {

    if (v23)
    {
      v13 = sub_22FCC8A54();

      PFAdjustmentStyleCastFromString();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FCD17F0;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      *(inited + 48) = v21;
      *(inited + 56) = v22;
      *(inited + 64) = a4;
      *(inited + 72) = a5;

      *(inited + 80) = sub_22FCC96C4();
      *(inited + 88) = v15;
      v16 = sub_22FA4D474(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8288);
      swift_arrayDestroy();
      swift_beginAccess();
      v17 = *(a6 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a6 + 16) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_22FAC2DE4(0, v17[2] + 1, 1, v17);
        *(a6 + 16) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_22FAC2DE4((v19 > 1), v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      v17[v20 + 4] = v16;
      *(a6 + 16) = v17;
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

void static BiomeUtilities.sendBiomAssetSharedEventForTesting(for:progressReporter:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v35 = type metadata accessor for UserAnalyticsInputSample(0);
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v43 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v34 = [v11 Share];
  swift_unknownObjectRelease();
  if (a1 >> 62)
  {
LABEL_24:
    v13 = sub_22FCC92C4();
    v12 = sub_22FCC92C4();
    v14 = v35;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v12;
    v14 = v35;
    if (v12)
    {
LABEL_3:
      v15 = 0;
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = a1 & 0xC000000000000001;
      v39 = v12;
      v40 = (v9 + 56);
      v31 = v8;
      v32 = a1;
      v33 = a2;
      v30 = v13;
      do
      {
        if (v42)
        {
          v9 = MEMORY[0x231908810](v15, a1);
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          if (v15 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          v9 = *(a1 + 8 * v15 + 32);
          swift_unknownObjectRetain();
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_21;
          }
        }

        v44 = v9;
        swift_unknownObjectRetain();
        v17 = swift_dynamicCast();
        v18 = *v40;
        if (v17)
        {
          v18(v8, 0, 1, v14);
          v19 = v43;
          sub_22FC2E18C(v8, v43, type metadata accessor for UserAnalyticsInputSample);
          v20 = *(v14 + 24);
          v21 = v19 + *(v14 + 28);
          if (*(v21 + 4))
          {
            v22 = 0;
          }

          else
          {
            v22 = *v21;
          }

          v36 = v22;
          v23 = *(v19 + v20 + 8);
          v37 = v3;
          if (v23)
          {
            v38 = *(v19 + v20);
          }

          else
          {
            v38 = 1280070990;
          }

          v24 = v43;
          v25 = objc_allocWithZone(MEMORY[0x277CF1400]);

          v26 = sub_22FCC8A54();
          v27 = sub_22FCC8A54();

          v28 = [v25 initWithIdentifier:v26 subset:v27 type:{v36, v30}];

          v29 = [v34 source];
          [v29 sendEvent_];

          sub_22FC2E1F4(v24, type metadata accessor for UserAnalyticsInputSample);
          v3 = v37;
          a1 = v32;
          a2 = v33;
          v8 = v31;
          v14 = v35;
        }

        else
        {
          v18(v8, 1, 1, v14);
          sub_22FA2B420(v8, &qword_27DAD9108);
        }

        sub_22FCC8FE4();
        if (v3)
        {
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
        ++v15;
      }

      while (v16 != v39);
    }
  }

  sub_22FCC9004();
}

void static BiomeUtilities.sendBiomeMemorySharedEventForTesting(for:subset:isThirdPartyShareDestination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v6 = [v5 Memories];
  swift_unknownObjectRelease();
  v7 = [v6 Shared];
  swift_unknownObjectRelease();

  v8 = sub_22FCC8CB4();

  v9 = sub_22FCC8A54();

  if (a4)
  {
    v10 = sub_22FCC8A54();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CF13C8]) initWithIdentifier:v9 subset:v10 isThirdPartyShareDestination:v8];

  v12 = [v7 source];
  [v12 sendEvent_];
}

void static BiomeUtilities.sendBiomeSearchSessionEventForTesting(for:queryEmbedding:assetUUIDs:language:region:version:libraryProcessingProgress:librarySize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v14 = [v13 RawEvent];
  swift_unknownObjectRelease();
  v15 = [v14 PhotosSearchSession];
  swift_unknownObjectRelease();
  v34 = [v15 source];
  v35 = MEMORY[0x277D84F90];
  v16 = *(a4 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = a4 + 40;
    do
    {

      v19 = sub_22FCC8ED4();
      v20 = objc_allocWithZone(MEMORY[0x277CF0FD0]);
      v21 = sub_22FCC8A54();

      v22 = [v20 initWithAssetUUID:v21 rankingIndex:v19 cosDistance:0];

      v23 = v22;
      MEMORY[0x231908070]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
      }

      ++v17;
      sub_22FCC8C84();

      v18 += 16;
    }

    while (v16 != v17);
  }

  if (a12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a12 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = sub_22FCC8ED4();
  v25 = objc_allocWithZone(MEMORY[0x277CF0FC8]);
  v26 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADE0);
  v27 = sub_22FCC8C24();
  sub_22FA3A77C(0, &qword_27DAD9110);
  v28 = sub_22FCC8C24();

  v29 = sub_22FCC8A54();
  v30 = sub_22FCC8A54();
  v31 = sub_22FCC8A54();
  LODWORD(v33) = a12;
  v32 = [v25 initWithQueryRaw:v26 queryEmbedding:v27 presentedAssets:v28 language:v29 region:v30 version:v31 libraryProcessingProgress:v24 librarySizeBucket:v33];

  [v34 sendEvent_];
}

uint64_t static BiomeUtilities.numberOfRecordsForPhotosSearchSessionStream()()
{
  v0 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v1 = [v0 RawEvent];
  swift_unknownObjectRelease();
  v2 = [v1 PhotosSearchSession];
  swift_unknownObjectRelease();
  v3 = sub_22FCC8A54();
  v4 = [v2 publisherWithUseCase_];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v15 = nullsub_1;
  v16 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_22FC2E314;
  v14 = &block_descriptor_10_0;
  v6 = _Block_copy(&v11);
  v15 = sub_22FC2E028;
  v16 = v5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_22FC2E314;
  v14 = &block_descriptor_13_0;
  v7 = _Block_copy(&v11);

  v8 = [v4 sinkWithCompletion:v6 receiveInput:v7];

  _Block_release(v7);
  _Block_release(v6);

  swift_beginAccess();
  v9 = *(v5 + 16);

  return v9;
}

uint64_t sub_22FC2C300(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v6;
  }

  return result;
}

id BiomeUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BiomeUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22FC2C430()
{
  sub_22FA4DBE0(MEMORY[0x277D84F90]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCDD300;
  *(inited + 32) = 8;
  v1 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v2 = [v1 UserAnalytics];
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8230);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = 1;
  v4 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v5 = [v4 Picker];
  swift_unknownObjectRelease();
  *(inited + 80) = v5;
  *(inited + 104) = v3;
  *(inited + 112) = 3;
  v6 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v7 = [v6 Search];
  swift_unknownObjectRelease();
  *(inited + 120) = v7;
  *(inited + 144) = v3;
  *(inited + 152) = 2;
  v8 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v9 = [v8 Map];
  swift_unknownObjectRelease();
  *(inited + 160) = v9;
  *(inited + 184) = v3;
  *(inited + 192) = 7;
  v10 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v11 = [v10 Share];
  swift_unknownObjectRelease();
  *(inited + 200) = v11;
  *(inited + 224) = v3;
  *(inited + 232) = 6;
  v12 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v13 = [v12 Favorite];
  swift_unknownObjectRelease();
  *(inited + 240) = v13;
  *(inited + 264) = v3;
  *(inited + 272) = 4;
  v14 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v15 = [v14 Edit];
  swift_unknownObjectRelease();
  *(inited + 280) = v15;
  *(inited + 304) = v3;
  *(inited + 312) = 5;
  v16 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v17 = [v16 Engagement];
  swift_unknownObjectRelease();
  *(inited + 344) = v3;
  *(inited + 320) = v17;
  v18 = sub_22FA4DBE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72E0);
  swift_arrayDestroy();
  v23 = v18;
  v19 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v20 = [v19 Style];
  swift_unknownObjectRelease();
  v22[3] = v3;
  v22[0] = v20;
  sub_22FC31D98(v22, 9);
  return v23;
}

uint64_t sub_22FC2C854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2670;
  *(inited + 32) = 11;
  v1 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v2 = [v1 Memories];
  swift_unknownObjectRelease();
  v3 = [v2 Viewed];
  swift_unknownObjectRelease();
  *(inited + 40) = v3;
  *(inited + 48) = 10;
  v4 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v5 = [v4 Memories];
  swift_unknownObjectRelease();
  v6 = [v5 Shared];
  swift_unknownObjectRelease();
  *(inited + 56) = v6;
  *(inited + 64) = 12;
  v7 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v8 = [v7 MemoryCreation];
  swift_unknownObjectRelease();
  *(inited + 72) = v8;
  *(inited + 80) = 13;
  v9 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v10 = [v9 Memories];
  swift_unknownObjectRelease();
  v11 = [v10 Curation];
  swift_unknownObjectRelease();
  *(inited + 88) = v11;
  *(inited + 96) = 15;
  v12 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v13 = [v12 Memories];
  swift_unknownObjectRelease();
  v14 = [v13 Notification];
  swift_unknownObjectRelease();
  *(inited + 104) = v14;
  *(inited + 112) = 14;
  v15 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v16 = [v15 Memories];
  swift_unknownObjectRelease();
  v17 = [v16 MoviePlayed];
  swift_unknownObjectRelease();
  *(inited + 120) = v17;
  v18 = sub_22FA4DCFC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9170);
  swift_arrayDestroy();
  v19 = sub_22FAC7414(v18);

  return v19;
}

uint64_t sub_22FC2CBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 16;
  v1 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v2 = [v1 RawEvent];
  swift_unknownObjectRelease();
  v3 = [v2 PhotosSearchSession];
  swift_unknownObjectRelease();
  *(inited + 40) = v3;
  v4 = sub_22FA4DD10(inited);
  swift_setDeallocating();
  sub_22FA2B420(inited + 32, &qword_27DAD9160);
  v5 = sub_22FAC7684(v4);

  return v5;
}

void sub_22FC2CCE8(uint64_t a1)
{
  v2 = v1;
  v4 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v41 = [v4 Style];
  swift_unknownObjectRelease();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = qword_281481B40;

      if (v10 != -1)
      {
        swift_once();
      }

      ++v6;
      swift_beginAccess();
      v11 = off_281481B48;
      if (*(off_281481B48 + 2) && (v12 = sub_22FA2DB54(v8, v9), (v13 & 1) != 0))
      {
        v14 = v11[7] + 200 * v12;
        v28 = *v14;
        v15 = *(v14 + 48);
        v16 = *(v14 + 64);
        v17 = *(v14 + 32);
        v29 = *(v14 + 16);
        v30 = v17;
        v31 = v15;
        v32 = v16;
        v18 = *(v14 + 80);
        v19 = *(v14 + 96);
        v20 = *(v14 + 128);
        v35 = *(v14 + 112);
        v36 = v20;
        v33 = v18;
        v34 = v19;
        v21 = *(v14 + 144);
        v22 = *(v14 + 160);
        v23 = *(v14 + 176);
        v40 = *(v14 + 192);
        v38 = v22;
        v39 = v23;
        v37 = v21;
        swift_endAccess();
        sub_22FA72B60(&v28, v26);

        v26[10] = v38;
        v26[11] = v39;
        v27 = v40;
        v26[6] = v34;
        v26[7] = v35;
        v26[8] = v36;
        v26[9] = v37;
        v26[2] = v30;
        v26[3] = v31;
        v26[4] = v32;
        v26[5] = v33;
        v26[0] = v28;
        v26[1] = v29;
        v24 = sub_22FC284A0();
        v25 = [v41 source];
        [v25 sendEvent_];
        sub_22FCC8FE4();

        sub_22FA89F5C(&v28);
        if (v2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        swift_endAccess();
      }

      v7 += 2;
    }

    while (v5 != v6);
  }

  sub_22FCC9004();
LABEL_12:
}

unint64_t sub_22FC2CF58(unint64_t result)
{
  if (result > 0x10)
  {
    return 0;
  }

  return result;
}

void sub_22FC2CF80(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for UserAnalyticsOutputSample(0);
  v39 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - v6;
  v7 = type metadata accessor for UserAnalyticsInputSample(0);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9130);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = (&v38 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9138);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v38 - v17);
  v19 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v41 = [v19 UserAnalytics];
  swift_unknownObjectRelease();
  v20 = 0;
  v44 = a1;
  v21 = *(a1 + 16);
  v22 = v10;
  v47 = (v11 + 48);
  v48 = (v11 + 56);
  while (1)
  {
    if (v20 == v21)
    {
      v23 = 1;
      v20 = v21;
      goto LABEL_9;
    }

    if (v20 >= v21)
    {
      break;
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_20;
    }

    v24 = v42;
    v25 = v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v20;
    v26 = *(v22 + 48);
    *v42 = v20;
    sub_22FC2E124(v25, v24 + v26, type metadata accessor for UserAnalyticsInputSample);
    sub_22FA4F224(v24, v16, &qword_27DAD9130);
    v23 = 0;
    ++v20;
LABEL_9:
    (*v48)(v16, v23, 1, v22);
    sub_22FA4F224(v16, v18, &qword_27DAD9138);
    if ((*v47)(v18, 1, v22) == 1)
    {
      sub_22FCC9004();

      return;
    }

    v49 = *v18;
    v27 = v22;
    sub_22FC2E18C(v18 + *(v22 + 48), v9, type metadata accessor for UserAnalyticsInputSample);
    if (qword_28147F598 != -1)
    {
      swift_once();
    }

    v28 = *v9;
    v29 = v9[1];
    swift_beginAccess();
    v30 = qword_281487E68;
    if (*(qword_281487E68 + 16) && (v31 = sub_22FA2DB54(v28, v29), (v32 & 1) != 0))
    {
      v33 = *(v30 + 56);
      v34 = v38;
      sub_22FC2E124(v33 + *(v39 + 72) * v31, v38, type metadata accessor for UserAnalyticsOutputSample);
      sub_22FC2E18C(v34, v45, type metadata accessor for UserAnalyticsOutputSample);
      swift_endAccess();
      v35 = sub_22FC27838(v9);
      v36 = [v41 source];
      [v36 sendEvent_];
      if (__OFADD__(v49, 1))
      {
        goto LABEL_21;
      }

      v37 = v46;
      sub_22FCC8FE4();
      v46 = v37;
      if (v37)
      {

        sub_22FC2E1F4(v45, type metadata accessor for UserAnalyticsOutputSample);
        sub_22FC2E1F4(v9, type metadata accessor for UserAnalyticsInputSample);
        return;
      }

      sub_22FC2E1F4(v45, type metadata accessor for UserAnalyticsOutputSample);
    }

    else
    {
      swift_endAccess();
    }

    sub_22FC2E1F4(v9, type metadata accessor for UserAnalyticsInputSample);
    v22 = v27;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_22FC2D538()
{
  v1 = v0;
  v34 = *MEMORY[0x277D85DE8];
  v2 = sub_22FCC8FD4();
  v3 = 0;
  v33 = MEMORY[0x277D84F90];
  v23 = v2 & 0xC000000000000001;
  v24 = v2;
  v22 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v26 = v1;
    v4 = qword_2844A5CA8[v3 + 4];
    v5 = BiomeLibrary();
    sub_22FC27034(v4);
    v6 = sub_22FCC8A54();

    aBlock = 0;
    v7 = [v5 streamWithIdentifier:v6 error:&aBlock];
    swift_unknownObjectRelease();

    if (!v7)
    {
      v20 = aBlock;

      sub_22FCC6514();

      return swift_willThrow();
    }

    if (v23)
    {
      v19 = aBlock;
      v10 = MEMORY[0x231908810](v3, v24);
    }

    else
    {
      if (v3 >= *(v22 + 16))
      {
        __break(1u);
      }

      v8 = *(v24 + 8 * v3 + 32);
      v9 = aBlock;
      v10 = v8;
    }

    v25 = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x277D84F90];
    v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:10 lastN:10 reversed:0];
    v13 = [v7 publisherWithOptions_];
    v31 = nullsub_1;
    v32 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22FC2E314;
    v30 = &block_descriptor_21;
    v14 = _Block_copy(&aBlock);
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v11;
    v31 = sub_22FC2E254;
    v32 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22FC2A4C4;
    v30 = &block_descriptor_27;
    v16 = _Block_copy(&aBlock);

    v17 = [v13 sinkWithCompletion:v14 receiveInput:v16];
    _Block_release(v16);
    _Block_release(v14);

    sub_22FCC9004();
    v1 = v26;
    if (v26)
    {
      break;
    }

    ++v3;

    swift_beginAccess();
    v18 = *(v11 + 16);

    sub_22FA68B20(v18);

    if (v3 == 3)
    {

      return v33;
    }
  }
}

uint64_t sub_22FC2D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v16 = [v7 Style];
  swift_unknownObjectRelease();
  v8 = sub_22FCC8A54();
  v9 = [v16 publisherWithUseCase_];
  v23 = nullsub_1;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22FC2E314;
  v22 = &block_descriptor_36;
  v10 = _Block_copy(&aBlock);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v6;
  v23 = sub_22FC2E25C;
  v24 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22FC2E314;
  v22 = &block_descriptor_42;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 sinkWithCompletion:v10 receiveInput:v12];

  _Block_release(v12);
  _Block_release(v10);

  swift_beginAccess();
  v14 = *(v6 + 16);

  return v14;
}

uint64_t _s13PhotoAnalysis14BiomeUtilitiesC11biomeStream3forAA0cF0OSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000022FCE8410 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x4D2E736F746F6850 && a2 == 0xEA00000000007061 || (sub_22FCC9704() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x502E736F746F6850 && a2 == 0xED000072656B6369 || (sub_22FCC9704() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x532E736F746F6850 && a2 == 0xED00006863726165 || (sub_22FCC9704() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x452E736F746F6850 && a2 == 0xEB00000000746964 || (sub_22FCC9704() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0xD000000000000011 && 0x800000022FCE8430 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x462E736F746F6850 && a2 == 0xEF657469726F7661 || (sub_22FCC9704() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x532E736F746F6850 && a2 == 0xEC00000065726168 || (sub_22FCC9704() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x532E736F746F6850 && a2 == 0xEC000000656C7974 || (sub_22FCC9704() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000016 && 0x800000022FCE8450 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0xD000000000000016 && 0x800000022FCE8470 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 11;
  }

  if (a1 == 0xD000000000000015 && 0x800000022FCE8490 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 12;
  }

  if (a1 == 0xD000000000000018 && 0x800000022FCE84B0 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 13;
  }

  if (a1 == 0xD00000000000001BLL && 0x800000022FCE84D0 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 14;
  }

  if (a1 == 0xD00000000000001CLL && 0x800000022FCE84F0 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 15;
  }

  if (a1 == 0xD000000000000023 && 0x800000022FCE8510 == a2)
  {
    return 16;
  }

  if (sub_22FCC9704())
  {
    return 16;
  }

  return 0;
}

unint64_t sub_22FC2E058()
{
  result = qword_27DAD9118;
  if (!qword_27DAD9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9118);
  }

  return result;
}

unint64_t sub_22FC2E0B0()
{
  result = qword_27DAD9120;
  if (!qword_27DAD9120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD9128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9120);
  }

  return result;
}

uint64_t sub_22FC2E124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC2E18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC2E1F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FC2E26C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC2E318(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22FB04E04(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
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
      goto LABEL_9;
    }
  }
}

id UserAnalyticsUtilities.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id UserAnalyticsUtilities.init(photoLibrary:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserAnalyticsUtilities();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_22FC2E53C(void *a1)
{
  v3 = [*&v1[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] librarySpecificFetchOptions];
  [v3 setPersonContext_];
  v4 = [objc_opt_self() fetchPersonsGroupedByAssetLocalIdentifierForAssets:a1 options:v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9188);
  v5 = sub_22FCC89D4();

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v9[4] = sub_22FC30254;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22FA862D0;
  v9[3] = &block_descriptor_36;
  v7 = _Block_copy(v9);
  v8 = v1;

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v7);
  sub_22FCC9004();
}

void sub_22FC2E6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  sub_22FC2E744(a4, a1, a5);

  objc_autoreleasePoolPop(v8);
}

id sub_22FC2E744(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UserAnalyticsOutputSample(0);
  v43 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  result = [a2 uuid];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = result;
  v15 = sub_22FCC8A84();
  v17 = v16;

  sub_22FC30264(v15, v17);

  if (qword_28147F598 != -1)
  {
    swift_once();
  }

  v41 = v7;
  result = [a2 uuid];
  if (!result)
  {
    goto LABEL_17;
  }

  v18 = result;
  v19 = sub_22FCC8A84();
  v21 = v20;

  swift_beginAccess();
  v22 = qword_281487E68;
  if (!*(qword_281487E68 + 16))
  {

    return swift_endAccess();
  }

  v23 = sub_22FA2DB54(v19, v21);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    return swift_endAccess();
  }

  v26 = v43;
  sub_22FC2E124(*(v22 + 56) + *(v43 + 72) * v23, v10, type metadata accessor for UserAnalyticsOutputSample);
  sub_22FC305F8(v10, v12);
  swift_endAccess();
  v27 = [a2 localIdentifier];
  v28 = sub_22FCC8A84();
  v30 = v29;

  v31 = v42;
  if (*(v42 + 16))
  {
    v32 = sub_22FA2DB54(v28, v30);
    v34 = v33;

    if (v34)
    {
      v35 = [*(*(v31 + 56) + 8 * v32) count] > 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v35 = 0;
LABEL_14:
  v12[32] = v35;
  result = [a2 uuid];
  if (result)
  {
    v36 = result;
    v37 = sub_22FCC8A84();
    v39 = v38;

    sub_22FC2E124(v12, v6, type metadata accessor for UserAnalyticsOutputSample);
    (*(v26 + 56))(v6, 0, 1, v41);
    swift_beginAccess();
    sub_22FC31E9C(v6, v37, v39);
    swift_endAccess();
    return sub_22FC2E1F4(v12, type metadata accessor for UserAnalyticsOutputSample);
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_22FC2EB18(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v35 = type metadata accessor for UserAnalyticsOutputSample(0);
  v6 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  result = [a2 uuid];
  if (result)
  {
    v13 = result;
    v14 = sub_22FCC8A84();
    v16 = v15;

    sub_22FC30264(v14, v16);

    if (qword_28147F598 != -1)
    {
      swift_once();
    }

    result = [a2 uuid];
    if (result)
    {
      v17 = result;
      v18 = sub_22FCC8A84();
      v20 = v19;

      swift_beginAccess();
      v21 = qword_281487E68;
      if (*(qword_281487E68 + 16))
      {
        v22 = sub_22FA2DB54(v18, v20);
        v24 = v23;

        if (v24)
        {
          sub_22FC2E124(*(v21 + 56) + *(v6 + 72) * v22, v9, type metadata accessor for UserAnalyticsOutputSample);
          sub_22FC305F8(v9, v11);
          swift_endAccess();
          v25 = [*(v36 + OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary) librarySpecificFetchOptions];
          sub_22FC306BC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_22FCD17F0;
          *(v26 + 56) = MEMORY[0x277D837D0];
          *(v26 + 64) = sub_22FA4EF4C();
          *(v26 + 32) = 1701869940;
          *(v26 + 40) = 0xE400000000000000;
          v27 = MEMORY[0x277D84CB8];
          *(v26 + 96) = MEMORY[0x277D84C58];
          *(v26 + 104) = v27;
          *(v26 + 72) = 5;
          v28 = sub_22FCC8EE4();
          [v25 setPredicate_];

          v29 = [objc_opt_self() fetchAssetCollectionsContainingAsset:a2 withType:6 options:v25];
          v11[45] = [v29 count] > 0;
          result = [a2 uuid];
          if (result)
          {
            v30 = result;
            v31 = sub_22FCC8A84();
            v33 = v32;

            sub_22FC2E124(v11, v5, type metadata accessor for UserAnalyticsOutputSample);
            (*(v6 + 56))(v5, 0, 1, v35);
            swift_beginAccess();
            sub_22FC31E9C(v5, v31, v33);
            swift_endAccess();

            return sub_22FC2E1F4(v11, type metadata accessor for UserAnalyticsOutputSample);
          }

          goto LABEL_13;
        }
      }

      else
      {
      }

      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_22FC2EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = objc_autoreleasePoolPush();
  a5(a4, a1);

  objc_autoreleasePoolPop(v8);
}

void sub_22FC2EFE8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_22FCC6794();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for UserAnalyticsOutputSample(0);
  v50 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = [a2 uuid];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = sub_22FCC8A84();
  v21 = v20;

  sub_22FC30264(v19, v21);

  if (qword_28147F598 != -1)
  {
    swift_once();
  }

  v22 = [a2 uuid];
  if (!v22)
  {
    goto LABEL_17;
  }

  v23 = v22;
  v24 = sub_22FCC8A84();
  v26 = v25;

  swift_beginAccess();
  v27 = qword_281487E68;
  if (!*(qword_281487E68 + 16))
  {

    goto LABEL_10;
  }

  v46 = v11;
  v28 = v5;
  v29 = sub_22FA2DB54(v24, v26);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_10:
    swift_endAccess();
    return;
  }

  sub_22FC2E124(*(v27 + 56) + *(v50 + 72) * v29, v14, type metadata accessor for UserAnalyticsOutputSample);
  sub_22FC305F8(v14, v16);
  swift_endAccess();
  v32 = [a2 creationDate];
  if (v32)
  {
    v33 = v47;
    v34 = v32;
    sub_22FCC6754();

    v36 = v48;
    v35 = v49;
    (*(v48 + 32))(v10, v33, v49);
    v37 = 0;
    v38 = v46;
  }

  else
  {
    v37 = 1;
    v38 = v46;
    v36 = v48;
    v35 = v49;
  }

  (*(v36 + 56))(v10, v37, 1, v35);
  sub_22FA2F4C8(v10, &v16[*(v38 + 240)]);
  v39 = [a2 mediaAnalysisProperties];
  v40 = [v39 faceCount];

  if (v40 >> 31)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v16 + 9) = v40;
  v16[40] = 0;
  v16[50] = [a2 isFavorite];
  v41 = [a2 uuid];
  if (v41)
  {
    v42 = v41;
    v43 = sub_22FCC8A84();
    v45 = v44;

    sub_22FC2E124(v16, v28, type metadata accessor for UserAnalyticsOutputSample);
    (*(v50 + 56))(v28, 0, 1, v38);
    swift_beginAccess();
    sub_22FC31E9C(v28, v43, v45);
    swift_endAccess();
    sub_22FC2E1F4(v16, type metadata accessor for UserAnalyticsOutputSample);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_22FC2F4E0()
{
  v2 = v0;
  v3 = [*&v0[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FCD2240;
  *(v4 + 32) = sub_22FCC8A84();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_22FCC8A84();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_22FCC8A84();
  *(v4 + 72) = v7;
  v8 = sub_22FCC8C24();

  [v3 setFetchPropertySets_];

  v9 = sub_22FCC9024();
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = sub_22FCC8C24();
  v16 = [v14 fetchAssetsWithUUIDs:v15 options:v3];

  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    v27 = sub_22FC3065C;
    v28 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_22FA862D0;
    v26 = &block_descriptor_13_1;
    v18 = _Block_copy(&aBlock);
    v19 = v2;

    [v16 enumerateObjectsUsingBlock_];
    _Block_release(v18);
    sub_22FCC9004();
    if (!v1)
    {
      sub_22FC2E53C(v16);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v27 = sub_22FC3068C;
      v28 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_22FA862D0;
      v26 = &block_descriptor_19_0;
      v21 = _Block_copy(&aBlock);
      v22 = v19;

      [v16 enumerateObjectsUsingBlock_];
      _Block_release(v21);
      sub_22FCC9004();
      sub_22FCC9004();
    }
  }

  else
  {
  }
}

void sub_22FC2F83C()
{
  v2 = v1;
  v3 = type metadata accessor for UserAnalyticsInputSample(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22FCC9034();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v52 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84FA0];
  sub_22FC30820();
  if (v1)
  {
    goto LABEL_2;
  }

  v46 = v4;
  v41[1] = v0;
  v48 = v14;

  sub_22FA68B20(v48);
  v15 = *(v48 + 16);
  v47 = v11;
  if (v15)
  {
    v42 = v7;
    v43 = v9;
    v44 = v13;
    v45 = 0;
    v50 = MEMORY[0x277D84F90];
    v16 = v48;
    sub_22FA86EA8(0, v15, 0);
    v17 = v50;
    v18 = v16 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v49 = *(v46 + 72);
    do
    {
      sub_22FC2E124(v18, v6, type metadata accessor for UserAnalyticsInputSample);
      v19 = *v6;
      v20 = v6[1];

      sub_22FC2E1F4(v6, type metadata accessor for UserAnalyticsInputSample);
      v50 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22FA86EA8((v21 > 1), v22 + 1, 1);
        v17 = v50;
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v18 += v49;
      --v15;
    }

    while (v15);

    v13 = v44;
    v2 = v45;
    v7 = v42;
    v9 = v43;
    v11 = v47;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  sub_22FC2FE34(v17);

  v24 = sub_22FC2D538();
  if (v2)
  {

    goto LABEL_25;
  }

  v25 = v24;

  sub_22FA68B20(v26);
  v27 = *(v25 + 16);
  if (v27)
  {
    v42 = v7;
    v43 = v9;
    v44 = v13;
    v45 = 0;
    v50 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v27, 0);
    v28 = v25;
    v29 = v50;
    v30 = v28 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v31 = *(v46 + 72);
    v48 = v28;
    v49 = v31;
    do
    {
      sub_22FC2E124(v30, v6, type metadata accessor for UserAnalyticsInputSample);
      v32 = *v6;
      v33 = v6[1];

      sub_22FC2E1F4(v6, type metadata accessor for UserAnalyticsInputSample);
      v50 = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22FA86EA8((v34 > 1), v35 + 1, 1);
        v29 = v50;
      }

      *(v29 + 16) = v35 + 1;
      v36 = v29 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v30 += v49;
      --v27;
    }

    while (v27);

    v13 = v44;
    v2 = v45;
    v7 = v42;
    v9 = v43;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  sub_22FC2FE34(v29);

  v37 = v51;
  v38 = *(v51 + 16);
  if (!v38)
  {
    goto LABEL_22;
  }

  v39 = sub_22FA86B08(*(v51 + 16), 0);
  v40 = sub_22FA88270(&v50, v39 + 4, v38, v37);
  sub_22FA72BC8();
  if (v40 != v38)
  {
    __break(1u);
LABEL_22:
  }

  v11 = v47;
  sub_22FC2F4E0();
  if (!v2)
  {

    sub_22FC2CF80(v52, v13);

LABEL_2:

    return;
  }

LABEL_25:
}

id UserAnalyticsUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserAnalyticsUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserAnalyticsUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FC2FE34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22FB04E04(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22FC2FEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_22FCC6794();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  sub_22FA83914(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = v9;
LABEL_5:
    sub_22FA2B420(v18, &qword_27DAD8730);
    return 0;
  }

  v19 = v9;
  v20 = *(v11 + 32);
  v20(v16, v19, v10);
  sub_22FA83914(a2, v7);
  if (v17(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    v18 = v7;
    goto LABEL_5;
  }

  v20(v14, v7, v10);
  sub_22FCC66A4();
  v23 = v22;
  sub_22FCC66A4();
  v25 = v24;
  v26 = *(v11 + 8);
  v26(v14, v10);
  v26(v16, v10);
  v27 = (v23 - v25) / 60.0 / 60.0;
  v28 = v27 < 24.0;
  if (v27 < 24.0)
  {
    return 1;
  }

  v29 = v27 / 24.0;
  if (!v28 && v29 < 7.0)
  {
    return 2;
  }

  if (v29 > 7.0 && v29 < 30.0)
  {
    return 3;
  }

  v31 = v29 <= 30.0;
  v32 = v29 / 365.0;
  if (!v31 && v32 < 1.0)
  {
    return 4;
  }

  if (v32 > 1.0 && v32 < 5.0)
  {
    return 5;
  }

  if (v32 <= 5.0)
  {
    return 0;
  }

  return 6;
}

uint64_t sub_22FC30264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (qword_28147F598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_281487E68;
  if (*(qword_281487E68 + 16) && (v11 = sub_22FA2DB54(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for UserAnalyticsOutputSample(0);
    v16 = *(v15 - 8);
    sub_22FC2E124(v14 + *(v16 + 72) * v13, v9, type metadata accessor for UserAnalyticsOutputSample);
    (*(v16 + 56))(v9, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for UserAnalyticsOutputSample(0);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  swift_endAccess();
  type metadata accessor for UserAnalyticsOutputSample(0);
  v17 = *(v15 - 8);
  v18 = (*(v17 + 48))(v9, 1, v15);
  result = sub_22FA2B420(v9, &qword_27DAD9190);
  if (v18 == 1)
  {
    v20 = *(v15 + 240);
    v21 = sub_22FCC6794();
    (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
    *v7 = a1;
    *(v7 + 1) = a2;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v7[32] = 2;
    *(v7 + 9) = 0;
    v7[40] = 1;
    *(v7 + 41) = 0x202020202020202;
    *(v7 + 46) = 0x202020202020202;
    *(v7 + 15) = 0;
    *(v7 + 54) = 0;
    v7[64] = 1;
    *(v7 + 17) = 0;
    v7[72] = 1;
    *(v7 + 19) = 0;
    v7[80] = 1;
    *(v7 + 81) = 0x202020202020202;
    *(v7 + 89) = 0x202020202020202;
    *(v7 + 97) = 0x202020202020202;
    *(v7 + 103) = 0x202020202020202;
    v7[111] = 0;
    *(v7 + 28) = 0;
    v7[116] = 1;
    (*(v17 + 56))(v7, 0, 1, v15);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_22FC31E9C(v7, a1, a2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22FC305F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAnalyticsOutputSample(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FC306BC()
{
  result = qword_28147AEF0;
  if (!qword_28147AEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28147AEF0);
  }

  return result;
}

uint64_t sub_22FC30718()
{
  sub_22FA680B4(&unk_2844A4E38);
  sub_22FA680B4(&unk_2844A4ED8);
  sub_22FA680B4(&unk_2844A5058);
  sub_22FA680B4(&unk_2844A51E8);
  sub_22FA680B4(&unk_2844A5458);
  result = sub_22FA680B4(&unk_2844A5488);
  qword_27DAD9198 = &unk_2844A4D68;
  return result;
}

uint64_t static PromptSuggestionBlockList.allPrompts.getter()
{
  if (qword_27DAD6F50 != -1)
  {
    swift_once();
  }
}

void sub_22FC30820()
{
  v1 = sub_22FCC8FD4();
  v10 = MEMORY[0x277D84F90];
  sub_22FA87308(0, 7, 0);
  v2 = 0;
  while (1)
  {
    v3 = byte_2844A5D38[v2 + 32];
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x231908810](v2, v1);
      goto LABEL_6;
    }

    if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v1 + 8 * v2 + 32);
LABEL_6:
    v5 = v4;
    sub_22FC309F8(v3, v4);
    if (v0)
    {

      return;
    }

    v7 = v6;

    v9 = *(v10 + 16);
    v8 = *(v10 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_22FA87308((v8 > 1), v9 + 1, 1);
    }

    ++v2;
    *(v10 + 16) = v9 + 1;
    *(v10 + 8 * v9 + 32) = v7;
    if (v2 == 7)
    {

      sub_22FC31424(v10);

      return;
    }
  }

  __break(1u);
}

id sub_22FC309A0(char a1)
{
  v1 = [objc_opt_self() *off_2788B15C0[a1]];

  return v1;
}

void sub_22FC309F8(int a1, uint64_t a2)
{
  v3 = v2;
  v87[4] = *MEMORY[0x277D85DE8];
  v76 = sub_22FCC6794();
  v6 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v79 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UserAnalyticsInputSample(0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_opt_self();
  v10 = [v9 KnowledgeStore];
  v11 = [v9 CoreDuetEventQuery];
  if (v11)
  {
    v12 = v11;
    v82 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
    v13 = swift_allocObject();
    v83 = xmmword_22FCD1F90;
    *(v13 + 16) = xmmword_22FCD1F90;
    v14 = a1;
    *(v13 + 32) = sub_22FC309A0(a1);
    sub_22FA3A77C(0, &qword_28147AEB8);
    v15 = sub_22FCC8C24();

    [v12 setEventStreams_];

    v16 = swift_allocObject();
    *(v16 + 16) = v83;
    v17 = [objc_opt_self() startDateSortDescriptorAscending_];
    if (v17)
    {
      *(v16 + 32) = v17;
      sub_22FA3A77C(0, &qword_28147AEB0);
      v18 = sub_22FCC8C24();

      [v12 setSortDescriptors_];

      [v12 setLimit_];
      if (v10)
      {
        v86[0] = 0;
        v19 = [v10 executeQuery:v12 error:v86];
        v20 = v86[0];
        if (!v19)
        {
          v62 = v86[0];
          sub_22FCC6514();

          swift_willThrow();
          swift_unknownObjectRelease();
          return;
        }

        v21 = v19;
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        v86[0] = 0;
        sub_22FA3A77C(0, &qword_28147ADB0);
        v22 = v20;
        sub_22FCC8C34();
        v23 = v86[0];
        if (v86[0])
        {

          a1 = v14;
          v6 = v82;
          goto LABEL_8;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_70;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_8:
  v80 = v10;
  if (!(v23 >> 62))
  {
    *&v83 = v23 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v24;
    v81 = a2;
    if (v24)
    {
      goto LABEL_10;
    }

LABEL_63:
    v82 = MEMORY[0x277D84F90];
    goto LABEL_64;
  }

  *&v83 = v23 & 0xFFFFFFFFFFFFFF8;
  v25 = sub_22FCC92C4();
  v24 = sub_22FCC92C4();
  v81 = a2;
  if (!v24)
  {
    goto LABEL_63;
  }

LABEL_10:
  v72 = v25;
  v73 = a1;
  v26 = 0;
  v71 = 0x800000022FCE85B0;
  v69 = 0x800000022FCE85D0;
  v68 = 0x800000022FCE85F0;
  v67 = 0x800000022FCE8610;
  v70 = (v6 + 4);
  v82 = MEMORY[0x277D84F90];
  while (2)
  {
    v77 = v3;
    v27 = v26;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x231908810](v27, v23);
      }

      else
      {
        if (v27 >= *(v83 + 16))
        {
          goto LABEL_60;
        }

        v28 = *(v23 + 8 * v27 + 32);
      }

      v25 = v28;
      v26 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = [v28 metadata];
      if (!v29)
      {
        __break(1u);
      }

      v30 = v29;
      v31 = sub_22FCC89D4();

      v84 = 0xD00000000000001FLL;
      v85 = 0x800000022FCE8590;
      sub_22FCC9324();
      if (*(v31 + 16))
      {
        v32 = sub_22FA69EBC(v86);
        if (v33)
        {
          break;
        }
      }

      sub_22FA3A7C4(v86);
LABEL_13:
      ++v27;
      if (v26 == v24)
      {
        v3 = v77;
        goto LABEL_64;
      }
    }

    sub_22FA2F7D8(*(v31 + 56) + 32 * v32, v87);
    sub_22FA3A7C4(v86);

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_13;
    }

    v34 = v84;
    v66 = v85;
    v35 = [v25 startDate];
    if (!v35)
    {
      goto LABEL_72;
    }

    v36 = v35;
    sub_22FCC6754();

    v37 = [v25 metadata];
    if (!v37)
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    v38 = v37;
    v39 = sub_22FCC89D4();

    v87[0] = 0xD00000000000001BLL;
    v87[1] = v71;
    sub_22FCC9324();
    if (*(v39 + 16) && (v40 = sub_22FA69EBC(v86), (v41 & 1) != 0))
    {
      sub_22FA2F7D8(*(v39 + 56) + 32 * v40, v87);
      sub_22FA3A7C4(v86);

      v42 = swift_dynamicCast();
      v43 = v84;
      if (!v42)
      {
        v43 = 0;
      }

      v64 = v43;
      if (v42)
      {
        v44 = v85;
      }

      else
      {
        v44 = 0;
      }

      v63 = v44;
    }

    else
    {

      sub_22FA3A7C4(v86);
      v64 = 0;
      v63 = 0;
    }

    v45 = v34;
    if (v73 <= 2u)
    {
      if (v73)
      {
        if (v73 != 1)
        {
          v46 = 0x657469726F766146;
          v47 = 0xEF746E6563655220;
          goto LABEL_49;
        }

        v65 = 0xE500000000000000;
        v46 = 0x6572616853;
      }

      else
      {
        v65 = 0xE400000000000000;
        v46 = 1953064005;
      }
    }

    else
    {
      if (v73 > 4u)
      {
        v46 = 0xD000000000000013;
        if (v73 == 5)
        {
          v48 = &v89;
        }

        else
        {
          v48 = &v90;
        }
      }

      else
      {
        if (v73 == 3)
        {
          v46 = 0x657469726F766146;
          v47 = 0xEC000000646C4F20;
          goto LABEL_49;
        }

        v46 = 0xD000000000000013;
        v48 = &v88;
      }

      v47 = *(v48 - 32);
LABEL_49:
      v65 = v47;
    }

    v49 = v66;
    v51 = v78;
    v50 = v79;
    *v78 = v45;
    *(v51 + 1) = v49;
    v52 = v75;
    (*v70)(&v51[*(v75 + 20)], v50, v76);
    v53 = &v51[v52[6]];
    v54 = v63;
    *v53 = v64;
    v53[1] = v54;
    v55 = &v51[v52[7]];
    *v55 = 0;
    v55[4] = 1;
    v56 = &v51[v52[8]];
    v57 = v65;
    *v56 = v46;
    v56[1] = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_22FAC2CAC(0, v82[2] + 1, 1, v82);
    }

    v59 = v82[2];
    v58 = v82[3];
    if (v59 >= v58 >> 1)
    {
      v82 = sub_22FAC2CAC(v58 > 1, v59 + 1, 1, v82);
    }

    v60 = v82;
    v82[2] = v59 + 1;
    sub_22FC319EC(v78, v60 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v59);
    v61 = v77;
    sub_22FCC8FE4();
    v3 = v61;
    if (v61)
    {
LABEL_61:

      swift_unknownObjectRelease();

      return;
    }

    if (v26 != v24)
    {
      continue;
    }

    break;
  }

LABEL_64:

  sub_22FCC9004();
  swift_unknownObjectRelease();
  if (v3)
  {
  }
}

uint64_t sub_22FC31424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v42 - v6;
  v7 = type metadata accessor for UserAnalyticsInputSample(0);
  result = MEMORY[0x28223BE20](v7);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v53 = 0;
  v10 = 0;
  v44 = *(v11 + 80);
  v12 = (v44 + 32) & ~v44;
  v13 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90] + v12;
  v14 = (v11 + 56);
  v45 = v11 + 48;
  v46 = v11;
  v47 = v12;
LABEL_4:
  v17 = *(a1 + 16);
  if (v10 != v17)
  {
    if (v10 < v17)
    {
      while (1)
      {
        v18 = *(a1 + 32 + 8 * v10);

        if (v18)
        {
          break;
        }

LABEL_9:
        ++v10;
        v19 = *(a1 + 16);
        if (v10 == v19)
        {
          goto LABEL_36;
        }

        if (v10 >= v19)
        {
          goto LABEL_42;
        }
      }

      v15 = *(v18 + 16);
      if (!v15)
      {
        (*v14)(v5, 1, 1, v7);
        result = sub_22FC318B0(v5);
        goto LABEL_9;
      }

      v16 = 0;
      ++v10;
      while (1)
      {
        if (v16 >= v15)
        {
          goto LABEL_43;
        }

        v49 = v13;
        v20 = v18 + v12;
        v21 = v46;
        v22 = *(v46 + 72);
        v53 = v16;
        sub_22FC31918(v20 + v22 * v16, v5);
        (*(v21 + 56))(v5, 0, 1, v7);
        v23 = v48;
        sub_22FC3197C(v5, v48);
        if ((*(v21 + 48))(v23, 1, v7) == 1)
        {
          v13 = v49;
          goto LABEL_37;
        }

        result = sub_22FC319EC(v23, v50);
        v24 = v49;
        v25 = v52;
        if (!v52)
        {
          break;
        }

LABEL_34:
        v36 = __OFSUB__(v25, 1);
        v37 = v25 - 1;
        if (v36)
        {
          goto LABEL_44;
        }

        v52 = v37;
        ++v53;
        v38 = v51;
        result = sub_22FC319EC(v50, v51);
        v51 = v38 + v22;
        v13 = v24;
        v12 = v47;
        v15 = *(v18 + 16);
        v16 = v53;
        if (v53 == v15)
        {
          (*v14)(v5, 1, 1, v7);
          result = sub_22FC318B0(v5);
          goto LABEL_4;
        }
      }

      v26 = v49[3];
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD80F8);
      v29 = v47;
      v52 = v28;
      v24 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v24);
      if (!v22)
      {
        goto LABEL_47;
      }

      v30 = result - v29;
      if (result - v29 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_48;
      }

      v32 = v30 / v22;
      v24[2] = v52;
      v24[3] = 2 * (v30 / v22);
      v33 = v24 + v29;
      v34 = v49[3] >> 1;
      v35 = v34 * v22;
      if (!v49[2])
      {
LABEL_33:
        v51 = v33 + v35;
        v25 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        goto LABEL_34;
      }

      if (v24 < v49 || v33 >= v49 + v47 + v35)
      {
        v51 = v33;
        v52 = v30 / v22;
        v43 = v34 * v22;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v24 == v49)
        {
LABEL_32:
          v49[2] = 0;
          goto LABEL_33;
        }

        v51 = v33;
        v52 = v30 / v22;
        v43 = v34 * v22;
        swift_arrayInitWithTakeBackToFront();
      }

      v35 = v43;
      v33 = v51;
      v32 = v52;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v23 = v48;
  (*v14)(v48, 1, 1, v7);
LABEL_37:

  result = sub_22FC318B0(v23);
  v39 = v13[3];
  if (v39 < 2)
  {
    return v13;
  }

  v40 = v39 >> 1;
  v36 = __OFSUB__(v40, v52);
  v41 = v40 - v52;
  if (!v36)
  {
    v13[2] = v41;
    return v13;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_22FC318B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FC31918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAnalyticsInputSample(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC3197C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC319EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAnalyticsInputSample(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC31A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_22FCC7FF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22FA2B420(a1, &qword_27DAD82A0);
    v13 = sub_22FA6A110(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FA6FF24();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_22FB04584(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22FA2B420(v8, &qword_27DAD82A0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_22FB257D8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_22FC31CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22FB25A00(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_22FA2DB54(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22FA70358();
        v14 = v16;
      }

      result = sub_22FB04730(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

_OWORD *sub_22FC31D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_22FA4FE00(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_22FB260F8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_22FA2B420(a1, &qword_27DAD7BB8);
    v7 = sub_22FA6A110(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_22FA70D98();
        v11 = v13;
      }

      sub_22FA4FE00((*(v11 + 56) + 32 * v9), v14);
      sub_22FB048F0(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_22FA2B420(v14, &qword_27DAD7BB8);
  }

  return result;
}

uint64_t sub_22FC31E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for UserAnalyticsOutputSample(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22FA2B420(a1, &qword_27DAD9190);
    sub_22FB043BC(a2, a3, v9);

    return sub_22FA2B420(v9, &qword_27DAD9190);
  }

  else
  {
    sub_22FC3B2C0(a1, v12, type metadata accessor for UserAnalyticsOutputSample);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22FB26C40(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_22FC32070(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B388();
  sub_22FCC98B4();
  v8[15] = 0;
  sub_22FCC9674();
  if (!v1)
  {
    type metadata accessor for TaskRecord(0);
    v8[14] = 1;
    sub_22FCC6794();
    sub_22FC3B3DC(&qword_281482538, MEMORY[0x277CC9578]);
    sub_22FCC9694();
    v8[13] = 2;
    sub_22FCC9664();
    v8[12] = 3;
    sub_22FCC9614();
    v8[11] = 4;
    sub_22FCC9614();
    v8[10] = 5;
    sub_22FCC9624();
    v8[9] = 6;
    sub_22FCC9634();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22FC32328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_22FCC6794();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91B0);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = type metadata accessor for TaskRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B388();
  v38 = v7;
  v11 = v39;
  sub_22FCC98A4();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = a1;
  v12 = v35;
  v13 = v36;
  v46 = 0;
  v14 = sub_22FCC95D4();
  v33 = v10;
  *v10 = v14;
  v45 = 1;
  sub_22FC3B3DC(&qword_281482530, MEMORY[0x277CC9578]);
  sub_22FCC95F4();
  v15 = *(v13 + 32);
  v16 = v33;
  v15(v33 + v8[5], v5, v3);
  v44 = 2;
  v17 = v16;
  *(v16 + v8[6]) = sub_22FCC95C4() & 1;
  v43 = 3;
  v18 = sub_22FCC9574();
  v19 = v39;
  v20 = v16 + v8[7];
  *v20 = v18;
  *(v20 + 8) = v21 & 1;
  v42 = 4;
  v22 = sub_22FCC9574();
  v23 = v16 + v8[8];
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  v41 = 5;
  v25 = sub_22FCC9584();
  v26 = v16 + v8[9];
  *v26 = v25;
  *(v26 + 8) = v27 & 1;
  v40 = 6;
  v28 = sub_22FCC9594();
  LOBYTE(v16) = v29;
  (*(v12 + 8))(v38, v37);
  v30 = v17 + v8[10];
  *v30 = v28;
  *(v30 + 8) = v16 & 1;
  sub_22FC3B658(v17, v34, type metadata accessor for TaskRecord);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return sub_22FC3B328(v17, type metadata accessor for TaskRecord);
}

unint64_t sub_22FC327C0()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x4365727574616566;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7265746E49657466;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6974656C706D6F63;
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

uint64_t sub_22FC328BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FC3BFEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FC328F0(uint64_t a1)
{
  v2 = sub_22FC3B388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FC3292C(uint64_t a1)
{
  v2 = sub_22FC3B388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FC32998(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B838();
  sub_22FCC98B4();
  v8[15] = 0;
  sub_22FCC9674();
  if (!v1)
  {
    type metadata accessor for Metadata(0);
    v8[14] = 1;
    sub_22FCC6794();
    sub_22FC3B3DC(&qword_281482538, MEMORY[0x277CC9578]);
    sub_22FCC9694();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22FC32B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_22FCC6794();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91E0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B838();
  sub_22FCC98A4();
  if (!v2)
  {
    v19 = v8;
    v12 = v22;
    v11 = v23;
    v26 = 0;
    v13 = v24;
    v14 = sub_22FCC95D4();
    v18 = v10;
    *v10 = v14;
    v25 = 1;
    sub_22FC3B3DC(&qword_281482530, MEMORY[0x277CC9578]);
    sub_22FCC95F4();
    (*(v12 + 8))(v7, v13);
    v15 = v18;
    (*(v20 + 32))(v18 + *(v19 + 20), v5, v11);
    sub_22FC3B2C0(v15, v21, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22FC32E4C()
{
  if (*v0)
  {
    return 0x4465646172677075;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_22FC32E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_22FCC9704() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4465646172677075 && a2 == 0xEB00000000657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FCC9704();

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

uint64_t sub_22FC32F70(uint64_t a1)
{
  v2 = sub_22FC3B838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FC32FAC(uint64_t a1)
{
  v2 = sub_22FC3B838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FC33018(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Metadata(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TaskRecords(0);
  sub_22FA4FAA4(v1 + *(v10 + 28), v5, &qword_27DAD91A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22FA2B420(v5, &qword_27DAD91A0);
    return sub_22FC332C8(3, a1);
  }

  else
  {
    sub_22FC3B2C0(v5, v9, type metadata accessor for Metadata);
    v12 = *v9;
    if (*v9 <= 2)
    {
      if (qword_281481648 != -1)
      {
        swift_once();
      }

      v13 = sub_22FCC8684();
      __swift_project_value_buffer(v13, qword_281488038);
      v14 = sub_22FCC8664();
      v15 = sub_22FCC8EF4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134218240;
        *(v16 + 4) = v12;
        *(v16 + 12) = 2048;
        *(v16 + 14) = 3;
        _os_log_impl(&dword_22FA28000, v14, v15, "Update Metadata due to version change from version %ld to version %ld", v16, 0x16u);
        MEMORY[0x23190A000](v16, -1, -1);
      }

      if (v12 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 3;
      }

      if (v12 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      sub_22FC332C8(v18, a1);
    }

    return sub_22FC3B328(v9, type metadata accessor for Metadata);
  }
}

uint64_t sub_22FC332C8(int a1, void *a2)
{
  v3 = v2;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v47[-v9];
  v11 = sub_22FCC6794();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v47[-v19];
  if (!a2)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_7:
    sub_22FA2B420(v10, &qword_27DAD8730);
    if (qword_281481648 != -1)
    {
      swift_once();
    }

    v23 = sub_22FCC8684();
    __swift_project_value_buffer(v23, qword_281488038);
    v24 = sub_22FCC8664();
    v25 = sub_22FCC8F14();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = a2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22FA28000, v24, v25, "No migrationDate in photos db, using current date", v27, 2u);
      v28 = v27;
      a2 = v26;
      MEMORY[0x23190A000](v28, -1, -1);
    }

    sub_22FCC6784();
    goto LABEL_18;
  }

  v21 = [a2 migrationDate];
  if (v21)
  {
    v22 = v21;
    sub_22FCC6754();

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  sub_22FA4F224(v8, v10, &qword_27DAD8730);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v52 = a2;
  v51 = *(v12 + 32);
  v51(v18, v10, v11);
  if (qword_281481648 != -1)
  {
    swift_once();
  }

  v29 = sub_22FCC8684();
  __swift_project_value_buffer(v29, qword_281488038);
  (*(v12 + 16))(v15, v18, v11);
  v30 = sub_22FCC8664();
  v31 = sub_22FCC8F34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v49 = v32;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v32 = 136315138;
    sub_22FC3B3DC(&qword_281482528, MEMORY[0x277CC9578]);
    v48 = v31;
    v33 = sub_22FCC96C4();
    v35 = v34;
    (*(v12 + 8))(v15, v11);
    v36 = sub_22FA2F600(v33, v35, &v54);

    v37 = v49;
    *(v49 + 1) = v36;
    v38 = v37;
    _os_log_impl(&dword_22FA28000, v30, v48, "Initialize metadata with migration date: %s", v37, 0xCu);
    v39 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x23190A000](v39, -1, -1);
    MEMORY[0x23190A000](v38, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v51(v20, v18, v11);
  a2 = v52;
LABEL_18:
  v40 = v3 + *(type metadata accessor for TaskRecords(0) + 28);
  sub_22FA2B420(v40, &qword_27DAD91A0);
  v41 = type metadata accessor for Metadata(0);
  (*(v12 + 16))(&v40[*(v41 + 20)], v20, v11);
  *v40 = 3;
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  if (v53 != 3)
  {
    if (!v53)
    {
      v42 = MEMORY[0x277D84F90];
      v43 = sub_22FA4D6AC(MEMORY[0x277D84F90]);

      *v3 = v43;
      v44 = sub_22FA4D6AC(v42);

      v3[1] = v44;
      v45 = sub_22FA4D894(v42);

      v3[2] = v45;
LABEL_22:
      sub_22FC33934(a2);
      return (*(v12 + 8))(v20, v11);
    }

    if (v53 <= 1u)
    {
      goto LABEL_22;
    }
  }

  return (*(v12 + 8))(v20, v11);
}

void sub_22FC33934(uint64_t a1)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22FCC65F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  if (v13)
  {
    v62[0] = 0;
    v16 = [v13 urlForApplicationDataFolderIdentifier:1 error:v62];
    v17 = v62[0];
    if (v16)
    {
      v18 = v16;
      sub_22FCC65A4();
      v19 = v17;

      (*(v3 + 32))(v15, v12, v2);
      sub_22FCC6574();
      v20 = objc_opt_self();
      v21 = [v20 defaultManager];
      sub_22FCC65B4();
      v22 = sub_22FCC8A54();

      v23 = [v21 fileExistsAtPath_];

      if (!v23)
      {
LABEL_10:
        v33 = *(v3 + 8);
LABEL_11:
        v33(v9, v2);
        v33(v15, v2);
        return;
      }

      v24 = [v20 defaultManager];
      v25 = sub_22FCC6564();
      v62[0] = 0;
      v26 = [v24 removeItemAtURL:v25 error:v62];

      if (v26)
      {
        v27 = qword_281481648;
        v28 = v62[0];
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = sub_22FCC8684();
        __swift_project_value_buffer(v29, qword_281488038);
        v30 = sub_22FCC8664();
        v31 = sub_22FCC8EF4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_22FA28000, v30, v31, "Removed existing ftemetrics", v32, 2u);
          MEMORY[0x23190A000](v32, -1, -1);
        }

        goto LABEL_10;
      }

      v44 = v62[0];
      v45 = sub_22FCC6514();

      swift_willThrow();
      if (qword_281481648 != -1)
      {
        swift_once();
      }

      v46 = sub_22FCC8684();
      __swift_project_value_buffer(v46, qword_281488038);
      (*(v3 + 16))(v6, v9, v2);
      v47 = sub_22FCC8664();
      v48 = sub_22FCC8F14();
      if (!os_log_type_enabled(v47, v48))
      {

        v33 = *(v3 + 8);
        v33(v6, v2);
        goto LABEL_11;
      }

      v49 = swift_slowAlloc();
      v58 = v49;
      v60 = swift_slowAlloc();
      v62[0] = v60;
      *v49 = 136315138;
      sub_22FC3B3DC(&qword_27DAD73F8, MEMORY[0x277CC9260]);
      v50 = sub_22FCC96C4();
      v59 = v45;
      v52 = v51;
      v53 = *(v3 + 8);
      v53(v6, v2);
      v54 = sub_22FA2F600(v50, v52, v62);

      v55 = v58;
      *(v58 + 1) = v54;
      _os_log_impl(&dword_22FA28000, v47, v48, "Failed to remove existing ftemetrics at %s", v55, 0xCu);
      v56 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x23190A000](v56, -1, -1);
      MEMORY[0x23190A000](v55, -1, -1);

      v53(v9, v2);
      v53(v15, v2);
    }

    else
    {
      v34 = v62[0];
      v35 = sub_22FCC6514();

      swift_willThrow();
      v62[0] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
      sub_22FA3A77C(0, &qword_28147ADF0);
      swift_dynamicCast();
      v36 = v61;
      if (qword_281481648 != -1)
      {
        swift_once();
      }

      v37 = sub_22FCC8684();
      __swift_project_value_buffer(v37, qword_281488038);
      v38 = v36;
      v39 = sub_22FCC8664();
      v40 = sub_22FCC8F14();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&dword_22FA28000, v39, v40, "Failed to access the graphServicePath %@", v41, 0xCu);
        sub_22FA2B420(v42, &unk_27DAD7B10);
        MEMORY[0x23190A000](v42, -1, -1);
        MEMORY[0x23190A000](v41, -1, -1);
        v38 = v39;
        v39 = v43;
      }
    }
  }
}

uint64_t sub_22FC3405C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B424();
  sub_22FCC98B4();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91C8);
  sub_22FC3B6C0();
  sub_22FCC9694();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_22FCC9694();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91D0);
    sub_22FC3B77C();
    sub_22FCC9694();
    type metadata accessor for TaskRecords(0);
    LOBYTE(v11) = 3;
    type metadata accessor for Metadata(0);
    sub_22FC3B3DC(&qword_28147B398, type metadata accessor for Metadata);
    sub_22FCC9644();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22FC3430C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91C0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F98];
  *v12 = MEMORY[0x277D84F98];
  *(v12 + 1) = v13;
  *(v12 + 2) = v13;
  v15 = *(v14 + 36);
  v16 = type metadata accessor for Metadata(0);
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  v17 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_22FC3B424();
  sub_22FCC98A4();
  if (!v2)
  {
    v23 = v15;
    v24 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91C8);
    v29 = 0;
    sub_22FC3B478();
    v18 = v27;
    sub_22FCC95F4();
    *v12 = v30;
    v29 = 1;
    sub_22FCC95F4();
    *(v12 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91D0);
    v29 = 2;
    sub_22FC3B534();
    sub_22FCC95F4();
    v20 = v26;
    *(v12 + 2) = v30;
    LOBYTE(v30) = 3;
    sub_22FC3B3DC(&qword_28147B390, type metadata accessor for Metadata);
    v21 = v24;
    sub_22FCC95A4();
    (*(v20 + 8))(v9, v18);
    sub_22FC3B5F0(v21, &v12[v23], &qword_27DAD91A0);
    sub_22FC3B658(v12, v25, type metadata accessor for TaskRecords);
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  return sub_22FC3B328(v12, type metadata accessor for TaskRecords);
}

unint64_t sub_22FC34728()
{
  v1 = 0x7364726F636572;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_22FC347B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FC3C250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FC347D8(uint64_t a1)
{
  v2 = sub_22FC3B424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FC34814(uint64_t a1)
{
  v2 = sub_22FC3B424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FC34880()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281488038);
  __swift_project_value_buffer(v0, qword_281488038);
  return sub_22FCC8674();
}

uint64_t sub_22FC34900@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8D30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords;
  swift_beginAccess();
  sub_22FA4FAA4(v1 + v9, v8, &qword_27DAD8D30);
  v10 = type metadata accessor for TaskRecords(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_22FC3B2C0(v8, a1, type metadata accessor for TaskRecords);
  }

  sub_22FA2B420(v8, &qword_27DAD8D30);
  sub_22FC357D0(a1);
  sub_22FC3B658(a1, v6, type metadata accessor for TaskRecords);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_22FC3B5F0(v6, v1 + v9, &qword_27DAD8D30);
  return swift_endAccess();
}

uint64_t sub_22FC34B08()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder);
  }

  else
  {
    v3 = v0;
    sub_22FCC64F4();
    swift_allocObject();
    v2 = sub_22FCC64E4();
    sub_22FCC64C4();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_22FC34B90()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  [v0 setZeroFormattingBehavior_];
  result = [v0 setAllowedUnits_];
  qword_281488058 = v0;
  return result;
}

uint64_t sub_22FC34C08()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    sub_22FCC64B4();
    swift_allocObject();
    v2 = sub_22FCC64A4();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22FC34C84(char *a1)
{
  v2 = v1;
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v39 - v5;
  v6 = sub_22FCC8684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FCC65F4();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_logger;
  if (qword_281481648 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_281488038);
  v17 = *(v7 + 16);
  v17(v2 + v15, v16, v6);
  v18 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords;
  v19 = type metadata accessor for TaskRecords(0);
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder) = 0;
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder) = 0;
  v20 = *(a1 + 14);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary) = v20;
  v39 = v15;
  v21 = a1;
  v22 = *(a1 + 15);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_analytics) = v22;
  v44[0] = 0;
  v23 = v20;
  v24 = v22;
  v25 = [v23 urlForApplicationDataFolderIdentifier:1 error:v44];
  v26 = v44[0];
  if (v25)
  {
    v27 = v25;
    sub_22FCC65A4();
    v28 = v26;

    v30 = v42;
    v29 = v43;
    (*(v42 + 32))(v14, v12, v43);
    v31 = v41;
    sub_22FCC6574();

    (*(v30 + 8))(v14, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    sub_22FA4F224(v31, v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, &qword_27DAD7470);
  }

  else
  {
    v41 = v21;
    v32 = v44[0];
    v33 = sub_22FCC6514();

    swift_willThrow();
    v34 = v40;
    v17(v40, v2 + v39, v6);
    v35 = sub_22FCC8664();
    v36 = sub_22FCC8F14();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22FA28000, v35, v36, "Unable to find GraphService directory", v37, 2u);
      MEMORY[0x23190A000](v37, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v34, v6);
    (*(v42 + 56))(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, 1, 1, v43);
  }

  return v2;
}

uint64_t sub_22FC35168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for TaskRecord(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FC34900(v5);
  v13 = *v5;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 40))(v14, v15);
  if (*(v13 + 16))
  {
    v18 = sub_22FA2DB54(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_22FC3B658(*(v13 + 56) + *(v10 + 72) * v18, v8, type metadata accessor for TaskRecord);
      v21 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 1;
LABEL_6:
  v22 = *(v10 + 56);
  v22(v8, v21, 1, v9);
  sub_22FC3B328(v5, type metadata accessor for TaskRecords);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22FA2B420(v8, &qword_27DAD84B8);
LABEL_11:
    v28 = 1;
    v27 = v31;
    return (v22)(v27, v28, 1, v9);
  }

  sub_22FC3B2C0(v8, v12, type metadata accessor for TaskRecord);
  v23 = *v12;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  if (v23 != (*(v25 + 56))(v24, v25))
  {
    sub_22FC3B328(v12, type metadata accessor for TaskRecord);
    goto LABEL_11;
  }

  v26 = v31;
  sub_22FC3B2C0(v12, v31, type metadata accessor for TaskRecord);
  v27 = v26;
  v28 = 0;
  return (v22)(v27, v28, 1, v9);
}

uint64_t sub_22FC3549C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for TaskRecord(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FC34900(v5);
  v13 = *(v5 + 1);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 40))(v14, v15);
  if (*(v13 + 16))
  {
    v18 = sub_22FA2DB54(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_22FC3B658(*(v13 + 56) + *(v10 + 72) * v18, v8, type metadata accessor for TaskRecord);
      v21 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 1;
LABEL_6:
  v22 = *(v10 + 56);
  v22(v8, v21, 1, v9);
  sub_22FC3B328(v5, type metadata accessor for TaskRecords);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22FA2B420(v8, &qword_27DAD84B8);
LABEL_11:
    v28 = 1;
    v27 = v31;
    return (v22)(v27, v28, 1, v9);
  }

  sub_22FC3B2C0(v8, v12, type metadata accessor for TaskRecord);
  v23 = *v12;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  if (v23 != (*(v25 + 56))(v24, v25))
  {
    sub_22FC3B328(v12, type metadata accessor for TaskRecord);
    goto LABEL_11;
  }

  v26 = v31;
  sub_22FC3B2C0(v12, v31, type metadata accessor for TaskRecord);
  v27 = v26;
  v28 = 0;
  return (v22)(v27, v28, 1, v9);
}

uint64_t sub_22FC357D0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22FCC6324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8D30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v59 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = v50 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v50 - v14;
  v16 = sub_22FCC65F4();
  MEMORY[0x28223BE20](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19;
  v22 = v21;
  sub_22FA4FAA4(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, v15, &qword_27DAD7470);
  if ((*(v22 + 48))(v15, 1, v20) == 1)
  {
    sub_22FA2B420(v15, &qword_27DAD7470);
    v23 = sub_22FCC8664();
    v24 = sub_22FCC8F14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22FA28000, v23, v24, "Cannot read records, not a valid libraryScopedPreferencesURL", v25, 2u);
      MEMORY[0x23190A000](v25, -1, -1);
    }

    v26 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary);
    v27 = MEMORY[0x277D84F98];
    *a1 = MEMORY[0x277D84F98];
    *(a1 + 1) = v27;
    *(a1 + 2) = v27;
    v28 = *(type metadata accessor for TaskRecords(0) + 28);
    v29 = type metadata accessor for Metadata(0);
    (*(*(v29 - 8) + 56))(&a1[v28], 1, 1, v29);
    return sub_22FC33018(v26);
  }

  else
  {
    v50[1] = v5;
    v58 = v2;
    v55 = a1;
    v56 = v22;
    v31 = *(v22 + 32);
    v53 = v20;
    v31(v18, v15, v20);
    v32 = type metadata accessor for TaskRecords(0);
    v51 = *(v32 - 8);
    v33 = *(v51 + 56);
    v54 = v12;
    v33();
    v52 = v18;
    v34 = sub_22FCC6614();
    v36 = v35;
    sub_22FC34C08();
    sub_22FC3B3DC(&qword_2814817E0, type metadata accessor for TaskRecords);
    v37 = v57;
    sub_22FCC6494();
    v38 = v37;
    v39 = v54;
    sub_22FA2B420(v54, &qword_27DAD8D30);

    sub_22FA7E6C4(v34, v36);
    (v33)(v38, 0, 1, v32);
    v40 = v39;
    sub_22FA4F224(v38, v39, &qword_27DAD8D30);
    v42 = v55;
    v41 = v56;
    v43 = v58;
    v44 = v52;
    v45 = v59;
    sub_22FA4FAA4(v40, v59, &qword_27DAD8D30);
    if ((*(v51 + 48))(v45, 1, v32) == 1)
    {
      sub_22FA2B420(v45, &qword_27DAD8D30);
      v46 = *(v43 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary);
      v47 = MEMORY[0x277D84F98];
      *v42 = MEMORY[0x277D84F98];
      *(v42 + 1) = v47;
      *(v42 + 2) = v47;
      v48 = *(v32 + 28);
      v49 = type metadata accessor for Metadata(0);
      (*(*(v49 - 8) + 56))(&v42[v48], 1, 1, v49);
      sub_22FC33018(v46);
    }

    else
    {
      sub_22FC3B2C0(v45, v42, type metadata accessor for TaskRecords);
      sub_22FC33018(*(v43 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary));
    }

    sub_22FA2B420(v40, &qword_27DAD8D30);
    return (*(v41 + 8))(v44, v53);
  }
}

uint64_t sub_22FC36058()
{
  v1 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  v8 = sub_22FCC65F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  sub_22FA4FAA4(v1 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, v7, &qword_27DAD7470);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v7, v8);
    v16 = [objc_opt_self() defaultManager];
    sub_22FCC6594();
    sub_22FCC65C4();
    v17 = sub_22FCC8A54();

    v18 = [v16 directoryExistsAtPath_];

    if (v18)
    {
      v19 = *(v9 + 8);
      v19(v12, v8);
    }

    else
    {
      v37[0] = v14;
      sub_22FCC65C4();
      v20 = sub_22FCC8A54();

      v38[0] = 0;
      v21 = [v16 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:v38];

      if (!v21)
      {
        v26 = v38[0];
        v27 = sub_22FCC6514();

        swift_willThrow();
        v28 = *(v9 + 8);
        v28(v12, v8);
        v29 = v27;
        v30 = sub_22FCC8664();
        v31 = sub_22FCC8F14();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138543362;
          v34 = v27;
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v35;
          *v33 = v35;
          _os_log_impl(&dword_22FA28000, v30, v31, "Failed to write directories for the records: %{public}@", v32, 0xCu);
          sub_22FA2B420(v33, &unk_27DAD7B10);
          MEMORY[0x23190A000](v33, -1, -1);
          MEMORY[0x23190A000](v32, -1, -1);
        }

        else
        {
        }

        v28(v37[0], v8);
        return 0;
      }

      v19 = *(v9 + 8);
      v22 = v38[0];
      v19(v12, v8);
      v14 = v37[0];
    }

    sub_22FC34B08();
    sub_22FC34900(v4);
    sub_22FC3B3DC(&qword_2814817E8, type metadata accessor for TaskRecords);
    v23 = sub_22FCC64D4();
    v25 = v24;
    sub_22FC3B328(v4, type metadata accessor for TaskRecords);

    sub_22FCC6674();
    v19(v14, v8);
    sub_22FA7E6C4(v23, v25);
    return 1;
  }

  sub_22FA2B420(v7, &qword_27DAD7470);
  sub_22FCC8F14();
  sub_22FA3A77C(0, &qword_28147ADA0);
  v15 = sub_22FCC91B4();
  sub_22FCC85A4();

  return 0;
}

uint64_t sub_22FC36750()
{
  sub_22FA2B420(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, &qword_27DAD7470);

  v1 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22FA2B420(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords, &qword_27DAD8D30);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22FC36870()
{
  sub_22FC369C8(319, &qword_281482550, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_22FCC8684();
    if (v1 <= 0x3F)
    {
      sub_22FC369C8(319, qword_281481798, type metadata accessor for TaskRecords);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22FC369C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FCC91F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}