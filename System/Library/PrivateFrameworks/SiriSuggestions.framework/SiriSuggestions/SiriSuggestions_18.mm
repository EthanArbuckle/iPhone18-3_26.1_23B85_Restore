void *TrialConfigRefresher.__allocating_init(refreshableService:trialNameSpace:bookkeepingXPCClient:)()
{
  OUTLINED_FUNCTION_5_32();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_9_29();

  return sub_231349790(v0, v1, v2, v3, v4, v5, v6);
}

void *TrialConfigRefresher.init(refreshableService:trialNameSpace:bookkeepingXPCClient:)()
{
  OUTLINED_FUNCTION_5_32();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_9_29();

  return sub_231349804(v0, v1, v2, v3, v4, v5, v6);
}

uint64_t TrialConfigRefresher.start(container:)()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_2313698C0();
  OUTLINED_FUNCTION_16_27(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231348314, v0, 0);
}

uint64_t sub_231348314()
{
  v1 = v0[5];
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "TrialConfigRefresher start called", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  (*(v6 + 8))(v5, v8);
  v9 = v7[17];
  v10 = v7[18];
  __swift_project_boxed_opaque_existential_1(v7 + 14, v9);
  v11 = v7[22];
  v12 = v7[23];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(v10 + 8);

  v15 = v14(v11, v12, sub_23134989C, v13, v9, v10);

  v16 = v7[21];
  v7[21] = v15;
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v17();
}

uint64_t sub_2313484B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_2313698C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v9 = sub_2313698A0();
  v10 = sub_23136A390();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2311CB000, v9, v10, "trial has updated the asset on device ..", v11, 2u);
    MEMORY[0x23192B930](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  sub_231271090(0, 0, v3, &unk_231378BD0, v14);
}

uint64_t sub_2313486F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_2313698C0();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313487C4, 0, 0);
}

uint64_t sub_2313487C4()
{
  v55 = v1;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_11_27();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 176);
    v0 = *(Strong + 184);
    sub_231369EE0();

    if (v3 == 0xD00000000000001ALL && 0x800000023137A5A0 == v0)
    {
    }

    else
    {
      v5 = sub_23136A900();

      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_11_27();
    v6 = swift_weakLoadStrong();
    *(v1 + 248) = v6;
    if (v6)
    {
      sub_2311CF324(v6 + 192, v1 + 56);

      v7 = *(v1 + 88);
      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      v8 = *(v7 + 40);
      v53 = v8 + *v8;
      v9 = v8[1];
      v10 = swift_task_alloc();
      *(v1 + 256) = v10;
      *v10 = v1;
      v10[1] = sub_231348BC0;
      OUTLINED_FUNCTION_7();

      __asm { BRAA            X3, X16 }
    }

    v13 = *(v1 + 240);
    sub_231369100();
    v0 = sub_2313698A0();
    v14 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_18_0(v14))
    {
      v15 = *(v1 + 240);
      v16 = *(v1 + 216);
      v17 = *(v1 + 224);
      v18 = *(v1 + 248) == 0;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v54 = v20;
      *v19 = 136315138;
      *(v1 + 192) = 0;
      *(v1 + 200) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44CD8, qword_231378BD8);
      v21 = sub_23136A010();
      v23 = sub_2311CFD58(v21, v22, &v54);

      *(v19 + 4) = v23;
      OUTLINED_FUNCTION_19_1(&dword_2311CB000, v24, v25, "BuildAutoCompleteIndex on trial asset update. Added %s phrases into the DB");
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v26 = *(v17 + 8);
      v27 = OUTLINED_FUNCTION_28_0();
      v28(v27);
    }

    else
    {
      v29 = *(v1 + 240);
      v30 = *(v1 + 216);
      v31 = *(v1 + 224);

      v32 = *(v31 + 8);
      v33 = OUTLINED_FUNCTION_28_0();
      v34(v33);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_11_27();
  v35 = swift_weakLoadStrong();
  *(v1 + 280) = v35;
  if (v35)
  {
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2822009F8](v36, v37, v38);
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    v40 = swift_weakLoadStrong();
    if (!v40 || (OUTLINED_FUNCTION_3_39(v40), , !v0))
    {
      v49 = *(v1 + 232);
      v48 = *(v1 + 240);

      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_7();

      __asm { BRAA            X1, X16 }
    }

    swift_getObjectType();
    v41 = *(MEMORY[0x277D607F0] + 4);
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_15_28(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_0_41(v43);
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C6518](v45, v46);
  }
}

uint64_t sub_231348BC0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 264) = v0;

  if (v0)
  {
    v8 = sub_231349204;
  }

  else
  {
    *(v4 + 272) = v3;
    v8 = sub_231348CDC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_231348CDC()
{
  v41 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  sub_231369100();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v39 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    v7 = *(v0 + 248) == 0;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315138;
    *(v0 + 192) = v1;
    *(v0 + 200) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44CD8, qword_231378BD8);
    v10 = sub_23136A010();
    v12 = sub_2311CFD58(v10, v11, &v40);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_19_1(&dword_2311CB000, v13, v14, "BuildAutoCompleteIndex on trial asset update. Added %s phrases into the DB");
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v6 + 8))(v39, v5);
  }

  else
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);

    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_28_0();
    v20(v19);
  }

  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_11_27();
  Strong = swift_weakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    v26 = swift_weakLoadStrong();
    if (!v26 || (OUTLINED_FUNCTION_3_39(v26), , !v3))
    {
      v35 = *(v0 + 232);
      v34 = *(v0 + 240);

      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_7();

      __asm { BRAA            X1, X16 }
    }

    swift_getObjectType();
    v27 = *(MEMORY[0x277D607F0] + 4);
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_15_28(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_0_41(v29);
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C6518](v31, v32);
  }
}

uint64_t sub_231348F38()
{
  OUTLINED_FUNCTION_8();
  sub_2311CF324(*(v0 + 280) + 112, v0 + 16);

  return MEMORY[0x2822009F8](sub_231348FAC, 0, 0);
}

uint64_t sub_231348FAC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[6];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 24);
  v4 = v2;
  v5 = OUTLINED_FUNCTION_28_0();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_2_31();
  Strong = swift_weakLoadStrong();
  if (Strong && (OUTLINED_FUNCTION_3_39(Strong), , v4))
  {
    swift_getObjectType();
    v8 = *(MEMORY[0x277D607F0] + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_15_28(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_0_41(v10);

    return MEMORY[0x2821C6518](v12, v13);
  }

  else
  {
    v15 = v0[29];
    v14 = v0[30];

    OUTLINED_FUNCTION_56_0();

    return v16();
  }
}

uint64_t sub_2313490C0()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = *(v1 + 240);
  v7 = *(v1 + 232);

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_231349204()
{
  v1 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3B0();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  v5 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Error when trying to BuildAutoCompleteIndex on trial asset update", v9, 2u);
    OUTLINED_FUNCTION_29();
  }

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_28_0();
  v12(v11);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_11_27();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {
    v14 = OUTLINED_FUNCTION_1_45();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    v17 = swift_weakLoadStrong();
    if (v17 && (OUTLINED_FUNCTION_3_39(v17), , v2))
    {
      swift_getObjectType();
      v18 = *(MEMORY[0x277D607F0] + 4);
      v19 = swift_task_alloc();
      v20 = OUTLINED_FUNCTION_15_28(v19);
      *v20 = v21;
      v22 = OUTLINED_FUNCTION_0_41(v20);

      return MEMORY[0x2821C6518](v22, v23);
    }

    else
    {
      v25 = v0[29];
      v24 = v0[30];

      OUTLINED_FUNCTION_56_0();

      return v26();
    }
  }
}

uint64_t TrialConfigRefresher.destroy()()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_2313698C0();
  OUTLINED_FUNCTION_16_27(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231349494, v0, 0);
}

uint64_t sub_231349494()
{
  v1 = v0[2];
  if (*(v1 + 168))
  {
    v2 = v0[5];
    v3 = *(v1 + 168);
    swift_unknownObjectRetain();
    sub_231369100();
    v4 = sub_2313698A0();
    v5 = sub_23136A390();
    if (OUTLINED_FUNCTION_18_0(v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2311CB000, v4, v5, "unsubscribing from update handler", v6, 2u);
      OUTLINED_FUNCTION_29();
    }

    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];

    (*(v8 + 8))(v7, v9);
    v11 = v10[18];
    __swift_project_boxed_opaque_existential_1(v10 + 14, v10[17]);
    v12 = *(v11 + 16);
    v13 = OUTLINED_FUNCTION_28_0();
    v14(v13);
    swift_unknownObjectRelease();
  }

  v15 = v0[5];

  OUTLINED_FUNCTION_56_0();

  return v16();
}

uint64_t *TrialConfigRefresher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[21];
  swift_unknownObjectRelease();
  v3 = v0[23];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t TrialConfigRefresher.__deallocating_deinit()
{
  TrialConfigRefresher.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231349670()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2313499A4;

  return TrialConfigRefresher.start(container:)();
}

uint64_t sub_231349700()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23122C690;

  return TrialConfigRefresher.destroy()();
}

void *sub_231349790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_5_32();
  v13 = swift_allocObject();

  return sub_231349804(v10, v9, v8, v7, v13, a6, a7);
}

void *sub_231349804(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  a5[20] = a7;
  a5[21] = 0;
  a5[19] = a1;
  type metadata accessor for DefaultTrialClientProvider();
  swift_initStackObject();
  sub_231343BB8(v14);
  sub_2311D38A8(v14, (a5 + 14));
  a5[22] = a2;
  a5[23] = a3;
  sub_2311D38A8(a4, (a5 + 24));
  return a5;
}

uint64_t sub_2313498F4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23122C690;

  return sub_2313486F8(v3, v4, v5, v6);
}

uint64_t sub_2313499BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_231349B04;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_231349B04(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_231349C48()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_231349C68()
{
  sub_231349C48();

  return swift_deallocClassInstance();
}

uint64_t sub_231349CB4(uint64_t a1)
{
  v74 = sub_231367DC0();
  v2 = *(v74 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v5 = (v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D48, &qword_231378D70);
  v6 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v72 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v77 = v60 - v9;
  MEMORY[0x28223BE20](v10);
  v68 = (v60 - v11);
  v13 = a1 + 64;
  v12 = *(a1 + 64);
  v75 = MEMORY[0x277D84F98];
  v86 = MEMORY[0x277D84F98];
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v67 = v2 + 16;
  v66 = v2 + 88;
  HIDWORD(v65) = *MEMORY[0x277D60C48];
  LODWORD(v65) = *MEMORY[0x277D60C38];
  HIDWORD(v62) = *MEMORY[0x277D60C40];
  v63 = (v2 + 8);
  *&v70 = v2;
  v61 = (v2 + 96);
  v71 = a1;
  result = sub_231369EE0();
  v19 = 0;
  v64 = a1 + 64;
  *(&v70 + 1) = v17;
  v69 = v5;
  if (v16)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v20 >= v17)
    {

      return v75;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
  }

  while (!v16);
  v19 = v20;
LABEL_9:
  while (1)
  {
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(v71 + 56);
    v24 = (*(v71 + 48) + 16 * v22);
    v25 = v24[1];
    v76 = *v24;
    v26 = v70;
    v27 = v73;
    v28 = *(v70 + 16);
    v29 = v68;
    v30 = v74;
    v28(v68 + *(v73 + 48), v23 + *(v70 + 72) * v22, v74);
    *v29 = v76;
    v29[1] = v25;
    v76 = v25;
    v31 = v77;
    sub_2311F0440(v29, v77, &qword_27DD44D48, &qword_231378D70);
    v32 = v31 + *(v27 + 48);
    v33 = v69;
    v28(v69, v32, v30);
    v34 = (*(v26 + 88))(v33, v30);
    if (v34 == HIDWORD(v65) || v34 == v65)
    {
      break;
    }

    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    if (v34 != HIDWORD(v62))
    {
      v36 = *v63;
      sub_231369EE0();
      v36(v33, v30);
      goto LABEL_19;
    }

    sub_231369EE0();
    v17 = *(&v70 + 1);
LABEL_24:
    sub_2311D1F18(v77, &qword_27DD44D48, &qword_231378D70);
    result = sub_2311D1F18(&v81, &qword_27DD44D50, &qword_231378D78);
LABEL_33:
    v13 = v64;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  (*v61)(v33, v30);
  sub_2311D9ECC(v33, &v84);
  sub_2311D9ECC(&v84, &v78);
  sub_231369EE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D40, &unk_231378D60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
  }

LABEL_19:
  v17 = *(&v70 + 1);
  if (!*(&v82 + 1))
  {
    goto LABEL_24;
  }

  sub_2311D9EB8(&v81, &v85);
  sub_2311F0440(v77, v72, &qword_27DD44D48, &qword_231378D70);
  sub_2311D9EB8(&v85, &v84);
  v43 = v75[2];
  if (v75[3] <= v43)
  {
    sub_2312B6740(v43 + 1, 1, v37, v38, v39, v40, v41, v42, v60[0], v60[1], v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78.n128_i64[0], v78.n128_i64[1], v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1));
  }

  v44 = v86;
  v45 = *v72;
  v46 = v72[1];
  v47 = v86[5];
  sub_23136A9D0();
  sub_23136A060();
  result = sub_23136AA00();
  v48 = v44 + 8;
  v75 = v44;
  v49 = -1 << *(v44 + 32);
  v50 = result & ~v49;
  v51 = v50 >> 6;
  if (((-1 << v50) & ~v44[(v50 >> 6) + 8]) != 0)
  {
    v52 = __clz(__rbit64((-1 << v50) & ~v44[(v50 >> 6) + 8])) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    v57 = *(v73 + 48);
    *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v58 = v75;
    v59 = (v75[6] + 16 * v52);
    *v59 = v45;
    v59[1] = v46;
    sub_2311D9EB8(&v84, (v58[7] + 40 * v52));
    ++v58[2];
    result = (*v63)(v72 + v57, v74);
    goto LABEL_33;
  }

  v53 = 0;
  v54 = (63 - v49) >> 6;
  while (++v51 != v54 || (v53 & 1) == 0)
  {
    v55 = v51 == v54;
    if (v51 == v54)
    {
      v51 = 0;
    }

    v53 |= v55;
    v56 = v48[v51];
    if (v56 != -1)
    {
      v52 = __clz(__rbit64(~v56)) + (v51 << 6);
      goto LABEL_32;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_23134A360()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44CE0, &qword_231378CC0);
  OUTLINED_FUNCTION_11(v63);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_2();
  v62 = v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44CE8, &qword_231378CC8);
  OUTLINED_FUNCTION_11(v61);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_2();
  v60 = v9;
  v10 = sub_231367E10();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v64 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44CF0, &qword_231378CD0);
  v18 = OUTLINED_FUNCTION_11(v59);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  v58 = v21 - v22;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_0();
  v57 = v24;
  v65 = v1;
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44CF8, &unk_231378CD8);
    v25 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v27 = *(v1 + 64);
  v26 = v1 + 64;
  v28 = *(v1 + 32);
  OUTLINED_FUNCTION_0_28();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v34 = v25 + 8;

  sub_231369EE0();
  v35 = 0;
  v56 = v1 + 64;
  v55 = v33;
  if (!v31)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v37 = __clz(__rbit64(v31)) | (v35 << 6);
    v66 = *(v64 + 72);
    (*(v64 + 16))(v57, *(v65 + 48) + v66 * v37, v10);
    *(v57 + *(v59 + 48)) = *(*(v65 + 56) + 8 * v37);
    sub_2311F0440(v57, v58, &qword_27DD44CF0, &qword_231378CD0);
    v38 = *(v59 + 48);
    v39 = (v62 + *(v63 + 48));
    v40 = *(v64 + 32);
    v40(v62, v58, v10);
    v41 = *(v58 + v38);
    v39[3] = type metadata accessor for StaticConfiguratorProvider();
    v39[4] = sub_2311D11B4(qword_280F7F9A8, type metadata accessor for StaticConfiguratorProvider);
    *v39 = v41;
    v42 = *(v61 + 48);
    v40(v60, v62, v10);
    sub_2311D9EB8(v39, (v60 + v42));
    v40(v17, v60, v10);
    sub_2311D9EB8(v60 + v42, v67);
    v43 = v25[5];
    sub_2311D11B4(&qword_280F7CA28, MEMORY[0x277D60C78]);

    v44 = sub_231369F30();
    OUTLINED_FUNCTION_31_24(v44);
    v48 = (v47 << v45) & ~v34[v46];
    if (!v48)
    {
      OUTLINED_FUNCTION_51();
      while (++v50 != v52 || (v51 & 1) == 0)
      {
        v53 = v50 == v52;
        if (v50 == v52)
        {
          v50 = 0;
        }

        v51 |= v53;
        v54 = v34[v50];
        if (v54 != -1)
        {
          v49 = __clz(__rbit64(~v54)) + (v50 << 6);
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v49 = __clz(__rbit64(v48)) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
    v31 &= v31 - 1;
    *(v34 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v40(v25[6] + v49 * v66, v17, v10);
    sub_2311D9EB8(v67, (v25[7] + 40 * v49));
    ++v25[2];
    v26 = v56;
    v33 = v55;
  }

  while (v31);
LABEL_5:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v33)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v31 = *(v26 + 8 * v36);
    ++v35;
    if (v31)
    {
      v35 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_23134A858()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_231369D00();
  v79 = OUTLINED_FUNCTION_0_0(v2);
  v80 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_1_4();
  v78 = v7 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43390, &qword_23136C330);
  OUTLINED_FUNCTION_11(v77);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_2();
  v76 = v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D00, &unk_231378CE8);
  OUTLINED_FUNCTION_11(v75);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_2();
  v74 = v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v16 = OUTLINED_FUNCTION_0_0(v73);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  v71 = v23;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D08, &qword_231378CF8);
  v24 = OUTLINED_FUNCTION_11(v70);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22();
  v69 = (v27 - v28);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17_0();
  v68 = v30;
  v81 = v1;
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D10, &qword_231378D00);
    v31 = sub_23136A790();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v33 = *(v1 + 64);
  v32 = v1 + 64;
  v34 = *(v1 + 32);
  OUTLINED_FUNCTION_37_6();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;

  sub_231369EE0();
  v40 = 0;
  v67 = v31;
  v72 = v21;
  while (v37)
  {
    v41 = v40;
LABEL_10:
    OUTLINED_FUNCTION_32_3();
    v43 = v42 | (v41 << 6);
    v44 = (*(v81 + 48) + 16 * v43);
    v46 = *v44;
    v45 = v44[1];
    (*(v80 + 16))(&v68[*(v70 + 48)], *(v81 + 56) + *(v80 + 72) * v43, v79);
    *v68 = v46;
    *(v68 + 1) = v45;
    sub_2311F0440(v68, v69, &qword_27DD44D08, &qword_231378CF8);
    v47 = *(v77 + 48);
    v48 = *v69;
    v49 = v69[1];
    (*(v80 + 32))(v78, v69 + *(v70 + 48), v79);
    sub_231369EE0();
    v50 = v49;
    swift_dynamicCast();
    v51 = *(v75 + 48);
    sub_2311F0440(v76 + v47, v74 + v51, &qword_27DD43358, &qword_23136FA90);
    sub_2311F0440(v74 + v51, v71, &qword_27DD43358, &qword_23136FA90);
    sub_2311F0440(v71, v72, &qword_27DD43358, &qword_23136FA90);
    v52 = sub_231215F6C(v48, v49);
    v53 = v52;
    if (v54)
    {
      v55 = (*(v67 + 48) + 16 * v52);
      v56 = v55[1];
      *v55 = v48;
      v55[1] = v49;

      v57 = OUTLINED_FUNCTION_29_16();
      sub_23134D2B4(v57, v58);
      v40 = v41;
      v32 = v81 + 64;
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      v32 = v81 + 64;
      if (v59)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_155();
      OUTLINED_FUNCTION_12_25(v60);
      v62 = (v61 + 16 * v53);
      *v62 = v48;
      v62[1] = v50;
      v63 = OUTLINED_FUNCTION_29_16();
      sub_2311F0440(v63, v64, &qword_27DD43358, &qword_23136FA90);
      OUTLINED_FUNCTION_18_24();
      if (v66)
      {
        goto LABEL_18;
      }

      *(v67 + 16) = v65;
      v40 = v41;
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v37 = *(v32 + 8 * v41);
    ++v40;
    if (v37)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_23134AD1C(uint64_t a1)
{
  OUTLINED_FUNCTION_42_16(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    v8 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_34_14();
  sub_231369EE0();
  v11 = 0;
  while (v6)
  {
    v12 = v11;
LABEL_10:
    OUTLINED_FUNCTION_10_32();
    v29.n128_u64[0] = v4;
    v29.n128_u64[1] = v5;
    v27[2] = v29;
    v28[0] = v30;
    v28[1] = v31;
    v13 = v5;
    sub_2311D9ECC(v28, v23);
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
    swift_dynamicCast();
    sub_2311D9ECC(v24, v26);
    sub_2311D9ECC(v26, v27);
    sub_2311D9ECC(v27, &v25);
    v5 = sub_231215F6C(v4, v5);
    if (v14)
    {
      OUTLINED_FUNCTION_23_19();
      v16 = v15[1];
      *v15 = v4;
      v15[1] = v13;

      OUTLINED_FUNCTION_33_17();
      sub_2311D9ECC(&v25, v4);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      if (v17)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_14_30();
      *(v3 + v18) |= v19;
      OUTLINED_FUNCTION_23_19();
      *v20 = v4;
      v20[1] = v13;
      sub_2311D9ECC(&v25, (*(v8 + 56) + 32 * v5));
      OUTLINED_FUNCTION_18_24();
      if (v22)
      {
        goto LABEL_18;
      }

      *(v8 + 16) = v21;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return;
    }

    v6 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_23134AF10(uint64_t a1)
{
  OUTLINED_FUNCTION_42_16(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D38, &qword_231378D58);
    v8 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_34_14();
  sub_231369EE0();
  v11 = 0;
  while (v6)
  {
    v12 = v11;
LABEL_10:
    OUTLINED_FUNCTION_10_32();
    v29.n128_u64[0] = v4;
    v29.n128_u64[1] = v5;
    v27[2] = v29;
    v28[0] = v30;
    v28[1] = v31;
    v13 = v5;
    sub_2311D9ECC(v28, v23);
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
    swift_dynamicCast();
    sub_2311D9ECC(v24, v26);
    sub_2311D9ECC(v26, v27);
    sub_2311D9ECC(v27, &v25);
    v5 = sub_231215F6C(v4, v5);
    if (v14)
    {
      OUTLINED_FUNCTION_23_19();
      v16 = v15[1];
      *v15 = v4;
      v15[1] = v13;

      OUTLINED_FUNCTION_33_17();
      sub_2311D9ECC(&v25, v4);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      if (v17)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_14_30();
      *(v3 + v18) |= v19;
      OUTLINED_FUNCTION_23_19();
      *v20 = v4;
      v20[1] = v13;
      sub_2311D9ECC(&v25, (*(v8 + 56) + 32 * v5));
      OUTLINED_FUNCTION_18_24();
      if (v22)
      {
        goto LABEL_18;
      }

      *(v8 + 16) = v21;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return;
    }

    v6 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_23134B104(uint64_t a1)
{
  OUTLINED_FUNCTION_42_16(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    v8 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_35_14();
  sub_231369EE0();
  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_41_17(v13);
    v26 = *(v15 + 8 * v14);
    sub_231369EE0();
    swift_dynamicCast();
    sub_2311D9ECC(v27, v29);
    sub_2311D9ECC(v29, v30);
    sub_2311D9ECC(v30, &v28);
    v16 = sub_231215F6C(v5, v4);
    if (v17)
    {
      OUTLINED_FUNCTION_38_13();
      v19 = v18[1];
      *v18 = v5;
      v18[1] = v4;

      v4 = (*(v8 + 56) + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      sub_2311D9ECC(&v28, v4);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      if (v20)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_155();
      *(v3 + v22) |= v21 << v16;
      OUTLINED_FUNCTION_38_13();
      *v23 = v5;
      v23[1] = v4;
      sub_2311D9ECC(&v28, (*(v8 + 56) + 32 * v16));
      OUTLINED_FUNCTION_18_24();
      if (v25)
      {
        goto LABEL_18;
      }

      *(v8 + 16) = v24;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v7 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_23134B2DC(uint64_t a1)
{
  OUTLINED_FUNCTION_42_16(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    v8 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_35_14();
  sub_231369EE0();
  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_41_17(v13);
    v26 = *(v15 + 8 * v14);
    sub_231369EE0();
    swift_dynamicCast();
    sub_2311D9ECC(v27, v29);
    sub_2311D9ECC(v29, v30);
    sub_2311D9ECC(v30, &v28);
    v16 = sub_231215F6C(v5, v4);
    if (v17)
    {
      OUTLINED_FUNCTION_38_13();
      v19 = v18[1];
      *v18 = v5;
      v18[1] = v4;

      v4 = (*(v8 + 56) + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      sub_2311D9ECC(&v28, v4);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      if (v20)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_155();
      *(v3 + v22) |= v21 << v16;
      OUTLINED_FUNCTION_38_13();
      *v23 = v5;
      v23[1] = v4;
      sub_2311D9ECC(&v28, (*(v8 + 56) + 32 * v16));
      OUTLINED_FUNCTION_18_24();
      if (v25)
      {
        goto LABEL_18;
      }

      *(v8 + 16) = v24;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v7 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_23134B4B4()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D08, &qword_231378CF8);
  v2 = OUTLINED_FUNCTION_11(v48);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_22();
  v47 = (v5 - v6);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v46 = v8;
  v49 = v1;
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D18, &unk_231378D08);
    v9 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v11 = *(v1 + 64);
  v10 = v1 + 64;
  v12 = *(v49 + 32);
  OUTLINED_FUNCTION_37_6();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;

  sub_231369EE0();
  for (i = 0; v15; v10 = v49 + 64)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = *(v49 + 56);
    v23 = (*(v49 + 48) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = sub_231369D00();
    OUTLINED_FUNCTION_0_0(v26);
    v28 = v27;
    (*(v27 + 16))(&v46[*(v48 + 48)], v22 + *(v29 + 72) * v21, v26);
    *v46 = v25;
    *(v46 + 1) = v24;
    sub_2311F0440(v46, v47, &qword_27DD44D08, &qword_231378CF8);
    v30 = *(v48 + 48);
    v31 = *v47;
    v32 = v47[1];
    v50[3] = v26;
    v50[4] = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(v28 + 32))(boxed_opaque_existential_1, v47 + v30, v26);
    sub_2311D9EB8(v50, v52);
    sub_2311D9EB8(v52, v53);
    sub_2311D9EB8(v53, &v51);
    sub_231369EE0();
    v34 = sub_231215F6C(v31, v32);
    v35 = v34;
    if (v36)
    {
      v37 = (v9[6] + 16 * v34);
      v38 = v37[1];
      *v37 = v31;
      v37[1] = v32;

      v39 = (v9[7] + 40 * v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      sub_2311D9EB8(&v51, v39);
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      if (v40)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_155();
      OUTLINED_FUNCTION_12_25(v41);
      v43 = (v42 + 16 * v35);
      *v43 = v31;
      v43[1] = v32;
      sub_2311D9EB8(&v51, (v9[7] + 40 * v35));
      OUTLINED_FUNCTION_18_24();
      if (v45)
      {
        goto LABEL_19;
      }

      v9[2] = v44;
    }

    i = v19;
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v15 = *(v10 + 8 * v19);
    ++i;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_23134B810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    v1 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_37_6();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  sub_231369EE0();
  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2311F03B0(*(a1 + 56) + 32 * v12, &v33, &qword_27DD443C0, &unk_23136E000);
    v31 = v15;
    v32 = v14;
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
    swift_dynamicCast();
    sub_2311D9ECC(v27, v29);
    sub_2311D9ECC(v29, v30);
    sub_2311D9ECC(v30, &v28);
    v16 = sub_231215F6C(v15, v14);
    if (v17)
    {
      OUTLINED_FUNCTION_23_19();
      v19 = v18[1];
      *v18 = v15;
      v18[1] = v14;

      OUTLINED_FUNCTION_33_17();
      sub_2311D9ECC(&v28, v14);
      v9 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_19_22();
      if (v20)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_14_30();
      OUTLINED_FUNCTION_12_25(v21);
      v23 = (v22 + 16 * v16);
      *v23 = v15;
      v23[1] = v14;
      sub_2311D9ECC(&v28, (*(v1 + 56) + 32 * v16));
      OUTLINED_FUNCTION_18_24();
      if (v25)
      {
        goto LABEL_18;
      }

      *(v1 + 16) = v24;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_23134BA40()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v104 = sub_2313696B0();
  v2 = OUTLINED_FUNCTION_0_0(v104);
  v106 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v103 = v7 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B20, &unk_231378450);
  OUTLINED_FUNCTION_11(v102);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_2();
  v101 = v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D20, &qword_231378D18);
  OUTLINED_FUNCTION_11(v100);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_2();
  v99 = v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_0_0(v98);
  v85 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - v20;
  v22 = sub_231369DD0();
  v23 = OUTLINED_FUNCTION_0_0(v22);
  v105 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D28, &qword_231378D28);
  v30 = OUTLINED_FUNCTION_11(v95);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22();
  v94 = v33 - v34;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_0();
  v93 = v36;
  v107 = v1;
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D30, &qword_231378D30);
    v37 = OUTLINED_FUNCTION_8_29();
  }

  else
  {
    v37 = MEMORY[0x277D84F98];
  }

  v39 = *(v107 + 64);
  v38 = v107 + 64;
  v40 = *(v107 + 32);
  OUTLINED_FUNCTION_0_28();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v89 = v105 + 16;
  v88 = v106 + 16;
  v110 = v105 + 32;
  v87 = v106 + 32;

  sub_231369EE0();
  v46 = 0;
  v91 = v38;
  v92 = v37;
  v96 = v29;
  v97 = v21;
  v90 = v45;
  v86 = v37 + 64;
  if (!v43)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v48 = __clz(__rbit64(v43)) | (v46 << 6);
    v49 = v107;
    v50 = *(v107 + 48);
    v51 = v105;
    v108 = *(v105 + 72);
    v52 = v93;
    (*(v105 + 16))(v93, v50 + v108 * v48, v22);
    v53 = v106;
    v54 = *(v49 + 56) + *(v106 + 72) * v48;
    v55 = v95;
    v56 = v104;
    (*(v106 + 16))(v52 + *(v95 + 48), v54, v104);
    v57 = v52;
    v58 = v94;
    sub_2311F0440(v57, v94, &qword_27DD44D28, &qword_231378D28);
    v59 = *(v55 + 48);
    v109 = *(v102 + 48);
    v60 = *(v51 + 32);
    v61 = v22;
    v62 = v101;
    v60(v101, v58, v61);
    (*(v53 + 32))(v103, v58 + v59, v56);
    v63 = v109;
    swift_dynamicCast();
    v64 = v99;
    v65 = *(v100 + 48);
    v60(v99, v62, v61);
    v66 = v63 + v62;
    v22 = v61;
    sub_2311F0440(v66, v64 + v65, &qword_27DD43C68, &qword_231378D20);
    v67 = v96;
    v109 = v60;
    v60(v96, v64, v22);
    v68 = v64 + v65;
    v69 = v97;
    sub_2311F0440(v68, v97, &qword_27DD43C68, &qword_231378D20);
    v70 = v92;
    v71 = v92[5];
    sub_2311D11B4(&qword_27DD437D8, MEMORY[0x277D73148]);
    v72 = sub_231369F30();
    OUTLINED_FUNCTION_31_24(v72);
    v74 = v86;
    v77 = (v76 << v73) & ~*(v86 + 8 * v75);
    if (!v77)
    {
      OUTLINED_FUNCTION_51();
      v45 = v90;
      v38 = v91;
      while (++v79 != v81 || (v80 & 1) == 0)
      {
        v82 = v79 == v81;
        if (v79 == v81)
        {
          v79 = 0;
        }

        v80 |= v82;
        v83 = *(v74 + 8 * v79);
        if (v83 != -1)
        {
          v78 = __clz(__rbit64(~v83)) + (v79 << 6);
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v78 = __clz(__rbit64(v77)) | v73 & 0x7FFFFFFFFFFFFFC0;
    v45 = v90;
    v38 = v91;
LABEL_18:
    v43 &= v43 - 1;
    *(v74 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
    v109(v70[6] + v78 * v108, v67, v22);
    sub_2311F0440(v69, v70[7] + *(v85 + 72) * v78, &qword_27DD43C68, &qword_231378D20);
    ++v70[2];
  }

  while (v43);
LABEL_5:
  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      OUTLINED_FUNCTION_9_0();
      return;
    }

    v43 = *(v38 + 8 * v47);
    ++v46;
    if (v43)
    {
      v46 = v47;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

unint64_t sub_23134C094(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D38, &qword_231378D58);
    v2 = sub_23136A790();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_231369EE0();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_2311CF324(*(a1 + 56) + 40 * v11, v32);
    v31.n128_u64[0] = v13;
    v31.n128_u64[1] = v14;
    v28[2] = v31;
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v15 = v31;
    sub_2311D9EB8(v29, v24);
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D40, &unk_231378D60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
    swift_dynamicCast();
    sub_2311D9ECC(v25, v27);
    sub_2311D9ECC(v27, v28);
    sub_2311D9ECC(v28, &v26);
    result = sub_231215F6C(v15.n128_i64[0], v15.n128_i64[1]);
    v16 = result;
    if (v17)
    {
      v18 = v2[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      result = sub_2311D9ECC(&v26, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_2311D9ECC(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23134C338()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 224) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23134C424()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[6];
  if (v0[28])
  {
    v5 = v0[28];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);
  v0[29] = v6;
  v0[30] = 0;
  if (!v6)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);

    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_55();

    __asm { BRAA            X1, X16 }
  }

  if (*(v5 + 16))
  {
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[10];
    sub_2311F03B0(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v7, &qword_27DD43DC0, &unk_231370710);
    v0[31] = *(v7 + *(v2 + 48));
    (*(v3 + 32))(v8, v7, v9);
    v10 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
    v11 = *(MEMORY[0x277D60558] + 4);
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_5_33(v12);
    OUTLINED_FUNCTION_55();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821C5F80]();
}

uint64_t sub_23134C5DC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    if (*(v3 + 224))
    {
      v9 = *(v3 + 224);
    }

    v10 = sub_23134CB24;
  }

  else
  {
    v10 = sub_23134C6F4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_23134C6F4()
{
  v1 = v0[31];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[6] + 64), *(v0[6] + 88));
  v6 = sub_231369040();
  v8 = v7;
  v0[34] = v7;
  sub_2313676F0();
  v9 = sub_231368170();
  v0[35] = v9;
  (*(v4 + 8))(v3, v5);
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_23134C80C;

  return sub_2311FA448(v6, v8, v9);
}

uint64_t sub_23134C80C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[34];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23134C928()
{
  v1 = v0[31];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[29];
  v6 = v0[30] + 1;
  v0[30] = v6;
  v7 = v0[28];
  if (v6 == v5)
  {
    if (v7)
    {
      v8 = v0[28];
    }

    (*(v0[25] + 8))(v0[26], v0[24]);

    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_55();

    __asm { BRAA            X1, X16 }
  }

  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v6 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[6];
    sub_2311F03B0(v7 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v6, v11, &qword_27DD43DC0, &unk_231370710);
    v0[31] = *(v11 + *(v13 + 48));
    (*(v15 + 32))(v12, v11, v14);
    v17 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v16[6]);
    v18 = *(MEMORY[0x277D60558] + 4);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_5_33();
    OUTLINED_FUNCTION_55();
  }

  return MEMORY[0x2821C5F80]();
}

uint64_t sub_23134CB24()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v14 = v0[18];
  v15 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  v16 = v0[9];

  (*(v8 + 8))(v9, v10);
  (*(v3 + 8))(v2, v4);

  v11 = v0[1];
  v12 = v0[33];

  return v11();
}

void sub_23134CC3C(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v1)
  {
  }

  else
  {
    v11 = v5[25];
    v12 = v5[26];

    v13 = v5[24];
    v14 = v5[21];
    v15 = v5[18];

    v16 = *(v9 + 8);

    v16(a1);
  }
}

uint64_t sub_23134CD90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = sub_231367490();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_231368180();
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = sub_2313698C0();
  v4[12] = v13;
  v14 = *(v13 - 8);
  v4[13] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *a2;
  v4[14] = v16;
  v4[15] = v17;

  return MEMORY[0x2822009F8](sub_23134CF4C, 0, 0);
}

uint64_t sub_23134CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[14];
  v28 = v24[15];
  sub_2313690F0();

  v29 = sub_2313698A0();
  v30 = sub_23136A3A0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v24[15];
    v32 = v24[13];
    a11 = v24[12];
    a12 = v24[14];
    v34 = v24[10];
    v33 = v24[11];
    a10 = v24[9];
    v35 = OUTLINED_FUNCTION_60();
    v36 = OUTLINED_FUNCTION_29_0();
    a13 = v36;
    *v35 = 136315138;
    sub_2313676F0();
    v37 = sub_231368130();
    v39 = v38;
    (*(v34 + 8))(v33, a10);
    v40 = sub_2311CFD58(v37, v39, &a13);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_2311CB000, v29, v30, "[EngagementService] Using Suggestion: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v32 + 8))(a12, a11);
  }

  else
  {
    v42 = v24[13];
    v41 = v24[14];
    v43 = v24[12];

    (*(v42 + 8))(v41, v43);
  }

  v44 = *(MEMORY[0x277D61188] + 4);
  v45 = swift_task_alloc();
  v24[16] = v45;
  *v45 = v24;
  v45[1] = sub_23134D128;
  v46 = v24[15];
  v47 = v24[3];
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C7438](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_23134D128()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *EngagementService.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t EngagementService.__deallocating_deinit()
{
  EngagementService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23134D2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23134D324(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2311D44D4;

  return sub_23134CD90(a1, a2, v7, v6);
}

uint64_t OUTLINED_FUNCTION_5_33(uint64_t a1)
{
  *(a1 + 8) = sub_23134C5DC;
  v2 = v1[26];
  v3 = v1[5];
  return v1[12];
}

uint64_t sub_23134D444(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23134D4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23134D444(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23134D510(uint64_t a1)
{
  v2 = sub_23134D6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23134D54C(uint64_t a1)
{
  v2 = sub_23134D6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriSuggestionsOverridesConfig.SignalOverrides.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D58, &qword_231378D80);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[3];
  v35 = v24[4];
  OUTLINED_FUNCTION_9_17(v24);
  sub_23134D6F0();
  sub_231369EE0();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D60, &qword_231378D88);
  sub_23134D8FC(&qword_27DD44D68, sub_23134D744);
  OUTLINED_FUNCTION_6_31();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134D6F0()
{
  result = qword_280F85030;
  if (!qword_280F85030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85030);
  }

  return result;
}

unint64_t sub_23134D744()
{
  result = qword_27DD44D70;
  if (!qword_27DD44D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44D70);
  }

  return result;
}

void SiriSuggestionsOverridesConfig.SignalOverrides.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_21_0();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D78, &qword_231378D90);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v18);
  v19 = v12[3];
  v20 = v12[4];
  OUTLINED_FUNCTION_9_17(v12);
  sub_23134D6F0();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D60, &qword_231378D88);
    sub_23134D8FC(&qword_280F7C860, sub_23134D970);
    OUTLINED_FUNCTION_4_32();
    v21 = OUTLINED_FUNCTION_9_31();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_23134D8FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44D60, &qword_231378D88);
    a2();
    result = OUTLINED_FUNCTION_10_33();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23134D970()
{
  result = qword_280F84FD0;
  if (!qword_280F84FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FD0);
  }

  return result;
}

uint64_t sub_23134DA04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23134DAC8(char a1)
{
  if (a1)
  {
    return 0x737574617473;
  }

  else
  {
    return 1802396018;
  }
}

uint64_t sub_23134DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23134DA04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23134DB24(uint64_t a1)
{
  v2 = sub_23134DCF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23134DB60(uint64_t a1)
{
  v2 = sub_23134DCF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriSuggestionsOverridesConfig.SuggestionSignalOverride.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21_0();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D80, &qword_231378D98);
  OUTLINED_FUNCTION_0_0(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = *v24;
  a10 = *(v24 + 8);
  v39 = v29[3];
  v40 = v29[4];
  OUTLINED_FUNCTION_9_17(v29);
  sub_23134DCF8();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  a14 = 0;
  sub_23136A880();
  if (!v25)
  {
    a13 = a10;
    a12 = 1;
    sub_23134DD4C();
    sub_23136A890();
  }

  (*(v32 + 8))(v37, v30);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134DCF8()
{
  result = qword_280F84FE8;
  if (!qword_280F84FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FE8);
  }

  return result;
}

unint64_t sub_23134DD4C()
{
  result = qword_27DD44D88;
  if (!qword_27DD44D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44D88);
  }

  return result;
}

void SiriSuggestionsOverridesConfig.SuggestionSignalOverride.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21_0();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D90, &qword_231378DA0);
  OUTLINED_FUNCTION_0_0(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = v28[3];
  v40 = v28[4];
  OUTLINED_FUNCTION_9_17(v28);
  sub_23134DCF8();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (!v24)
  {
    a14 = 0;
    v41 = sub_23136A810();
    a12 = 1;
    sub_23134DF30();
    sub_23136A820();
    (*(v33 + 8))(v38, v31);
    v42 = a13;
    *v30 = v41;
    *(v30 + 8) = v42;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134DF30()
{
  result = qword_280F84FF0;
  if (!qword_280F84FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FF0);
  }

  return result;
}

SiriSuggestions::SiriSuggestionsOverridesConfig::SuggestionStatus_optional __swiftcall SiriSuggestionsOverridesConfig.SuggestionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SiriSuggestionsOverridesConfig.SuggestionStatus.rawValue.getter()
{
  if (*v0)
  {
    result = 0x64656C6261736964;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_23134E084@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsOverridesConfig.SuggestionStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23134E15C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x764F6C616E676973 && a2 == 0xEF73656469727265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23134E204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23134E15C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23134E230(uint64_t a1)
{
  v2 = sub_23134E410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23134E26C(uint64_t a1)
{
  v2 = sub_23134E410();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriSuggestionsOverridesConfig.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D98, &qword_231378DA8);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[3];
  v35 = v24[4];
  OUTLINED_FUNCTION_9_17(v24);
  sub_23134E410();
  sub_231369EE0();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DA0, &qword_231378DB0);
  sub_23134E464(&qword_27DD44DA8, sub_23134E4D8);
  OUTLINED_FUNCTION_6_31();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134E410()
{
  result = qword_280F85010;
  if (!qword_280F85010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85010);
  }

  return result;
}

uint64_t sub_23134E464(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44DA0, &qword_231378DB0);
    a2();
    result = OUTLINED_FUNCTION_10_33();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23134E4D8()
{
  result = qword_27DD44DB0;
  if (!qword_27DD44DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DB0);
  }

  return result;
}

void SiriSuggestionsOverridesConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_21_0();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DB8, &qword_231378DB8);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v18);
  v19 = v12[3];
  v20 = v12[4];
  OUTLINED_FUNCTION_9_17(v12);
  sub_23134E410();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DA0, &qword_231378DB0);
    sub_23134E464(&qword_280F7C868, sub_23134E690);
    OUTLINED_FUNCTION_4_32();
    v21 = OUTLINED_FUNCTION_9_31();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134E690()
{
  result = qword_280F85018;
  if (!qword_280F85018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85018);
  }

  return result;
}

unint64_t sub_23134E6E8()
{
  result = qword_27DD44DC0;
  if (!qword_27DD44DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DC0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsOverridesConfig.SuggestionSignalOverride(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriSuggestionsOverridesConfig.SuggestionSignalOverride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_23134E840(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_23134E91C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_23134E9CC()
{
  result = qword_27DD44DC8;
  if (!qword_27DD44DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DC8);
  }

  return result;
}

unint64_t sub_23134EA24()
{
  result = qword_27DD44DD0;
  if (!qword_27DD44DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DD0);
  }

  return result;
}

unint64_t sub_23134EA7C()
{
  result = qword_27DD44DD8;
  if (!qword_27DD44DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DD8);
  }

  return result;
}

unint64_t sub_23134EAD4()
{
  result = qword_280F85000;
  if (!qword_280F85000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85000);
  }

  return result;
}

unint64_t sub_23134EB2C()
{
  result = qword_280F85008;
  if (!qword_280F85008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85008);
  }

  return result;
}

unint64_t sub_23134EB84()
{
  result = qword_280F84FD8;
  if (!qword_280F84FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FD8);
  }

  return result;
}

unint64_t sub_23134EBDC()
{
  result = qword_280F84FE0;
  if (!qword_280F84FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FE0);
  }

  return result;
}

unint64_t sub_23134EC34()
{
  result = qword_280F85020;
  if (!qword_280F85020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85020);
  }

  return result;
}

unint64_t sub_23134EC8C()
{
  result = qword_280F85028;
  if (!qword_280F85028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85028);
  }

  return result;
}

unint64_t sub_23134ECE0()
{
  result = qword_280F84FF8;
  if (!qword_280F84FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FF8);
  }

  return result;
}

uint64_t static Normalizers.identity()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for IdentityNormalizer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for IdentityNormalizer;
  *a1 = result;
  return result;
}

uint64_t sub_23134EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = sub_231369330();
  v7 = OUTLINED_FUNCTION_0_0(v46);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010);
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v44 = v16;
  v45 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v38 = a4;
    v39 = v4;
    v51 = MEMORY[0x277D84F90];
    sub_2311F5DD0(0, v21, 0);
    v22 = v51;
    v24 = *(v9 + 16);
    v23 = v9 + 16;
    v25 = (a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v41 = *(v23 + 56);
    v42 = v24;
    v43 = v23;
    v40 = (v23 - 8);
    v26 = v46;
    do
    {
      v27 = v42;
      v42(v13, v25, v26);
      v28 = &v20[*(v45 + 48)];
      v27(v20, v13, v26);
      v49 = v47;
      v50 = v48;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);
      v29 = sub_231369300();
      MEMORY[0x23192A730](v29);

      MEMORY[0x23192A730](0x666463652ELL, 0xE500000000000000);
      v30 = v49;
      v31 = v50;
      (*v40)(v13, v26);
      *v28 = v30;
      *(v28 + 1) = v31;
      v51 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        v34 = OUTLINED_FUNCTION_37(v32);
        sub_2311F5DD0(v34, v33 + 1, 1);
        v22 = v51;
      }

      *(v22 + 16) = v33 + 1;
      sub_231351B54(v20, v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33);
      v25 += v41;
      --v21;
    }

    while (v21);
    a4 = v38;
  }

  v35 = sub_23127DFEC(v22);
  sub_23134F08C(v35, a4);
}

uint64_t sub_23134F08C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v3 = sub_231369330();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v71 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DE8, &qword_231379560);
  result = sub_23136A770();
  v14 = result;
  v15 = 0;
  v80 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v78 = v6 + 16;
  v81 = v6;
  v86 = v6 + 32;
  v74 = 0x8000000231382290;
  v73 = result + 64;
  v77 = result;
  v76 = v3;
  v75 = v11;
  if (v21)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v82 = (v21 - 1) & v21;
LABEL_10:
      v26 = v23 | (v15 << 6);
      v27 = v80;
      v28 = *(v80 + 48);
      v29 = v81;
      v30 = *(v81 + 16);
      v84 = *(v81 + 72) * v26;
      v31 = v79;
      v30(v79, v28 + v84, v3);
      v32 = *(v27 + 56);
      v85 = v26;
      v33 = (v32 + 16 * v26);
      v35 = *v33;
      v34 = v33[1];
      v83 = *(v29 + 32);
      v83(v11, v31, v3);
      type metadata accessor for IdentityNormalizer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v37 = objc_opt_self();
      sub_231369EE0();
      result = sub_231353224([v37 bundleForClass_]);
      if (!v38)
      {
        goto LABEL_22;
      }

      *&v88 = v35;
      *(&v88 + 1) = v34;
      v93 = v38;
      v94 = 0xD00000000000001FLL;
      v95 = v74;
      v92 = result;
      sub_231207C1C();
      v39 = sub_23136A500();
      v41 = v40;

      v42 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
      v43 = sub_231369FA0();
      v44 = [v42 contentsAtPath_];

      if (!v44)
      {
        break;
      }

      sub_2313666C0();

      v45 = OUTLINED_FUNCTION_9_32();
      sub_23122527C(v45, v46);

      OUTLINED_FUNCTION_9_32();
      v47 = v87;
      sub_2313697E0();
      if (v47)
      {
        v67 = OUTLINED_FUNCTION_9_32();
        sub_231225224(v67, v68);
        v69 = OUTLINED_FUNCTION_9_32();
        sub_231225224(v69, v70);
        goto LABEL_19;
      }

      v49 = v48;
      v87 = 0;
      v50 = OUTLINED_FUNCTION_9_32();
      sub_231225224(v50, v51);
      v52 = sub_231369770();
      sub_231369EE0();
      v53 = sub_231369760();

      v54 = OUTLINED_FUNCTION_9_32();
      sub_231225224(v54, v55);

      v56 = v85;
      *(v73 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
      v14 = v77;
      v11 = v75;
      v3 = v76;
      result = (v83)(*(v77 + 48) + v84, v75, v76);
      v57 = *(v14 + 56) + 48 * v56;
      *v57 = v53;
      *(v57 + 8) = v89;
      *(v57 + 24) = v52;
      *(v57 + 32) = MEMORY[0x277D60798];
      *(v57 + 40) = v49;
      v58 = *(v14 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_21;
      }

      *(v14 + 16) = v60;
      v21 = v82;
      if (!v82)
      {
        goto LABEL_5;
      }
    }

    sub_231351BC4();
    swift_allocError();
    *v66 = v39;
    v66[1] = v41;
    swift_willThrow();
LABEL_19:
    (*(v81 + 8))(v75, v76);
  }

LABEL_5:
  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      v61 = sub_2313697B0();
      v62 = sub_2313697A0();
      v90 = v61;
      v91 = MEMORY[0x277D607B8];
      *&v89 = v62;
      __swift_project_boxed_opaque_existential_1(&v89, v61);
      sub_231369720();
      v63 = type metadata accessor for ScaledECDFNormalizer();
      v64 = swift_allocObject();
      *(v64 + 16) = v14;
      sub_2311D38A8(&v88, v64 + 24);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      v65 = v72;
      v72[3] = v63;
      v65[4] = &off_2845F7788;
      *v65 = v64;
      return result;
    }

    v25 = *(v17 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v82 = (v25 - 1) & v25;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t IdentityNormalizer.normalize(candidatesWithScores:interaction:environment:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14();
  v3 = v0;
  v1 = sub_231369EE0();

  return v3(v1);
}

uint64_t sub_23134F700()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return IdentityNormalizer.normalize(candidatesWithScores:interaction:environment:)();
}

uint64_t dispatch thunk of Normalizer.normalize(candidatesWithScores:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2311DDECC;

  return v15(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for Normalizers(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_23134F994()
{
  OUTLINED_FUNCTION_8();
  v2 = *v0;
  v1[2] = v3;
  v1[3] = v2;
  v4 = sub_231368FE0();
  v1[4] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[5] = v5;
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23134FA5C()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_23134FAF0(v1, v0[2]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_23134FAF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2311F5B90(0, v4, 0);
    v5 = v17;
    v6 = a2 + 32;
    do
    {
      sub_2313518DC(v6, v15);
      v14[0] = v15[0];
      v14[1] = v15[1];
      v14[2] = v16;
      v7 = *(&v16 + 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v17 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_37(v8);
        sub_2311F5B90(v10, v9 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
      v6 += 48;
      --v4;
    }

    while (v4);
  }

  sub_231367FC0();

  MEMORY[0x28223BE20](v11);
  v13[2] = a1;
  return sub_23132B974(sub_23135194C, v13, a2);
}

double sub_23134FC3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2313518DC(a1, v11);
  sub_2311D38A8(v11, a2);
  v4 = *(a1 + 40);
  sub_231368FD0();
  v6 = v4 - v5;
  sub_231368FC0();
  v8 = v7;
  sub_231368FD0();
  result = v6 / (v8 - v9);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_23134FCE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_23134F994();
}

uint64_t sub_23134FD78(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23134FDA0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = &unk_231379528;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23134FE84;
  v4 = v0[2];

  return (sub_2313125F8)(&unk_231379538, v2, v4);
}

void sub_23134FE84()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v5 + 32);

    v10 = *(v7 + 8);

    v10(v3);
  }
}

uint64_t sub_23134FFB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 136) = a3;
  *(v4 + 128) = a4;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  v5 = sub_2313698C0();
  *(v4 + 144) = v5;
  v6 = *(v5 - 8);
  *(v4 + 152) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v8 = sub_231369050();
  *(v4 + 176) = v8;
  v9 = *(v8 - 8);
  *(v4 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v12 = sub_231367F40();
  *(v4 + 232) = v12;
  v13 = *(v12 - 8);
  *(v4 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v15 = sub_231369330();
  *(v4 + 256) = v15;
  v16 = *(v15 - 8);
  *(v4 + 264) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231350200, 0, 0);
}

uint64_t sub_231350200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 224);
  v20 = *(v18 + 120);
  v21 = *(v20 + 24);
  v22 = *(v20 + 32);
  v23 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_2313682B0();
  v25 = sub_2313676B0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v25) == 1)
  {
    sub_231228E9C(*(v18 + 224), &qword_27DD432D8, &unk_23136BED0);
LABEL_8:
    v52 = *(v20 + 24);
    v51 = *(v20 + 32);
    __swift_project_boxed_opaque_existential_1(*(v18 + 120), v52);
    v53 = *(MEMORY[0x277D60F68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v18 + 296) = v59;
    *v59 = v60;
    v59[1] = sub_231350AB4;
    v61 = *(v18 + 200);
LABEL_9:

    return MEMORY[0x2821C6E60](v61, v52, v51, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v27 = *(v18 + 240);
  v26 = *(v18 + 248);
  v28 = *(v18 + 224);
  v29 = *(v18 + 232);
  sub_231367680();
  (*(*(v25 - 8) + 8))(v28, v25);
  v30 = *(v27 + 88);
  v31 = OUTLINED_FUNCTION_54_0();
  if (v32(v31) != *MEMORY[0x277D60D38])
  {
    (*(*(v18 + 240) + 8))(*(v18 + 248), *(v18 + 232));
    goto LABEL_8;
  }

  v33 = *(v18 + 280);
  v34 = *(v18 + 256);
  v35 = *(v18 + 264);
  v36 = *(v18 + 248);
  v37 = *(v18 + 136);
  (*(*(v18 + 240) + 96))(v36, *(v18 + 232));
  (*(v35 + 32))(v33, v36, v34);
  sub_2312111B8(v33, *(v37 + 16));
  if (!*(v18 + 88))
  {
    v62 = *(v18 + 120);
    sub_231228E9C(v18 + 64, &qword_27DD44DE0, &qword_231379548);
    v52 = *(v20 + 24);
    v51 = *(v20 + 32);
    __swift_project_boxed_opaque_existential_1(v62, v52);
    v63 = *(MEMORY[0x277D60F68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v18 + 288) = v64;
    *v64 = v65;
    v64[1] = sub_231350618;
    v61 = *(v18 + 216);
    goto LABEL_9;
  }

  v38 = *(v18 + 128);
  v39 = *(v18 + 96);
  *(v18 + 32) = *(v18 + 80);
  *(v18 + 48) = v39;
  *(v18 + 16) = *(v18 + 64);
  v40 = *(v18 + 48);
  __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
  v41 = *(v40 + 8);
  v42 = OUTLINED_FUNCTION_28_0();
  v43(v42);
  v44 = *(v18 + 280);
  v45 = *(v18 + 256);
  v46 = *(v18 + 264);
  if (v47)
  {
    v48 = *(v46 + 8);
    v49 = OUTLINED_FUNCTION_28_0();
    v50(v49);
  }

  else
  {
    v66 = *(v18 + 136);
    v67 = v66[7];
    __swift_project_boxed_opaque_existential_1(v66 + 3, v66[6]);
    v68 = *(v67 + 16);
    v69 = OUTLINED_FUNCTION_54_0();
    v71 = COERCE_DOUBLE(v70(v69));
    v73 = v72;
    v74 = *(v46 + 8);
    v75 = OUTLINED_FUNCTION_28_0();
    v76(v75);
    if ((v73 & 1) == 0)
    {
      v78 = *(v18 + 112);
      sub_2311CF324(*(v18 + 120), v78);
      v79 = *(v18 + 56) * v71;
      sub_231351ADC(v18 + 16);
      *(v78 + 40) = v79;
      goto LABEL_16;
    }
  }

  v77 = *(v18 + 112);
  sub_231351ADC(v18 + 16);
  *v77 = 0u;
  v77[1] = 0u;
  v77[2] = 0u;
LABEL_16:
  OUTLINED_FUNCTION_2_32();

  OUTLINED_FUNCTION_56_0();

  return v80();
}

uint64_t sub_231350618()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 288);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2313506FC()
{
  v49 = v0;
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];
  sub_2313690F0();
  (*(v4 + 16))(v1, v2, v3);
  (*(v8 + 16))(v6, v5, v7);
  v10 = sub_2313698A0();
  v11 = sub_23136A3B0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[33];
  v17 = v0[26];
  v18 = v0[23];
  v46 = v0[22];
  v47 = v0[27];
  v19 = v0[18];
  v20 = v0[19];
  v44 = v19;
  v45 = v0[21];
  if (v12)
  {
    v41 = v11;
    v21 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v21 = 136315394;
    sub_231351B0C(&qword_280F7C8E0, MEMORY[0x277D61310]);
    v42 = v15;
    v43 = v14;
    v22 = sub_23136A8B0();
    v23 = v15;
    v25 = v24;
    log = v10;
    v26 = *(v16 + 8);
    v26(v13, v23);
    v27 = sub_2311CFD58(v22, v25, &v48);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    OUTLINED_FUNCTION_3_40();
    sub_231351B0C(v28, v29);
    v30 = sub_23136A8B0();
    v32 = v31;
    v33 = *(v18 + 8);
    v33(v17, v46);
    v34 = sub_2311CFD58(v30, v32, &v48);

    *(v21 + 14) = v34;
    _os_log_impl(&dword_2311CB000, log, v41, "No ECDF for channel: %s. Skipping candidate: %s.", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v20 + 8))(v45, v44);
    v33(v47, v46);
    v26(v43, v42);
  }

  else
  {

    v35 = *(v18 + 8);
    v35(v17, v46);
    v36 = *(v16 + 8);
    v36(v13, v15);
    (*(v20 + 8))(v45, v44);
    v35(v47, v46);
    v36(v14, v15);
  }

  v37 = v0[14];
  v37[1] = 0u;
  v37[2] = 0u;
  *v37 = 0u;
  OUTLINED_FUNCTION_2_32();

  OUTLINED_FUNCTION_56_0();

  return v38();
}

uint64_t sub_231350AB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231350B98()
{
  v34 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  sub_2313690F0();
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_2313698A0();
  v7 = sub_23136A3B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  if (v8)
  {
    v32 = v0[20];
    v16 = swift_slowAlloc();
    v31 = v15;
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    OUTLINED_FUNCTION_3_40();
    sub_231351B0C(v18, v19);
    v29 = v7;
    v20 = sub_23136A8B0();
    v30 = v10;
    v22 = v21;
    v23 = *(v12 + 8);
    v23(v9, v11);
    v24 = sub_2311CFD58(v20, v22, &v33);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_2311CB000, v6, v29, "ECDF normalizer is called for candidate without channel info: %s. Skipping candidate.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v13 + 8))(v32, v31);
    v23(v30, v11);
  }

  else
  {

    v25 = *(v12 + 8);
    v25(v9, v11);
    (*(v13 + 8))(v14, v15);
    v25(v10, v11);
  }

  v26 = v0[14];
  v26[1] = 0u;
  v26[2] = 0u;
  *v26 = 0u;
  OUTLINED_FUNCTION_2_32();

  OUTLINED_FUNCTION_56_0();

  return v27();
}

uint64_t sub_231350E30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 40);
  v11 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_231275DA4;
  v9.n128_u64[0] = v6;

  return v11(a1, a2, v9);
}

uint64_t sub_231350F68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311E6A24;

  return sub_23134FD78(a1);
}

uint64_t sub_231351000(double a1)
{
  result = v1;
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_231351024()
{
  OUTLINED_FUNCTION_8();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = sub_2313667A0();
  v1[29] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[30] = v5;
  v7 = *(v6 + 64);
  v1[31] = OUTLINED_FUNCTION_43();
  v8 = sub_231369500();
  v1[32] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[33] = v9;
  v11 = *(v10 + 64);
  v1[34] = OUTLINED_FUNCTION_43();
  v12 = sub_2313698C0();
  v1[35] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[36] = v13;
  v15 = *(v14 + 64);
  v1[37] = OUTLINED_FUNCTION_43();
  v16 = sub_231368FE0();
  v1[38] = v16;
  OUTLINED_FUNCTION_0(v16);
  v1[39] = v17;
  v19 = *(v18 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2313511D0()
{
  v90 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  v88 = v2;
  if (v2)
  {
    v89 = MEMORY[0x277D84F90];
    sub_2311F5B90(0, v2, 0);
    v3 = v89;
    v4 = v1 + 32;
    v5 = v2;
    do
    {
      sub_2313518DC(v4, v0 + 16);
      v6 = *(v0 + 48);
      *(v0 + 80) = *(v0 + 32);
      *(v0 + 96) = v6;
      *(v0 + 64) = *(v0 + 16);
      v7 = *(v0 + 104);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
      v89 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_37(v8);
        sub_2311F5B90(v10, v9 + 1, 1);
        v3 = v89;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v7;
      v4 += 48;
      --v5;
    }

    while (v5);
  }

  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  sub_231367FC0();

  sub_2313690F0();
  v16 = *(v13 + 16);
  v16(v12, v11, v14);
  v17 = sub_2313698A0();
  v18 = sub_23136A3A0();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 328);
  if (v19)
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 320);
    v83 = v18;
    v23 = *(v0 + 304);
    v84 = *(v0 + 288);
    v85 = *(v0 + 280);
    v86 = *(v0 + 296);
    v24 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v89 = v82;
    *v24 = 136315138;
    v16(v22, v20, v23);
    v25 = sub_23136A010();
    v27 = v26;
    v87 = *(v21 + 8);
    v87(v20, v23);
    v28 = sub_2311CFD58(v25, v27, &v89);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v17, v83, "StochasticNormalizer: computed stats: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v84 + 8))(v86, v85);
  }

  else
  {
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    v32 = *(v0 + 288);
    v31 = *(v0 + 296);
    v33 = *(v0 + 280);

    v87 = *(v29 + 8);
    v87(v20, v30);
    v34 = *(v32 + 8);
    v35 = OUTLINED_FUNCTION_54_0();
    v36(v35);
  }

  v37 = *(v0 + 272);
  v38 = *(v0 + 240);
  v39 = *(v0 + 248);
  v40 = *(v0 + 232);
  v41 = *(v0 + 216);
  v42 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_2313677C0();
  sub_231367720();
  v43 = *(v38 + 8);
  v44 = OUTLINED_FUNCTION_54_0();
  v45(v44);
  sub_2313694F0();
  v46 = MEMORY[0x277D84F90];
  if (v88)
  {
    v47 = *(v0 + 224);
    v48 = *(v0 + 208);
    v89 = MEMORY[0x277D84F90];
    sub_2311F5B70(0, v88, 0);
    v49 = 0;
    v50 = v48 + 32;
    v46 = v89;
    v51 = *(v47 + 16);
    while (1)
    {
      v52 = *(v0 + 336);
      sub_2313518DC(v50 + 48 * v49, v0 + 160);
      v53 = *(v0 + 200);
      sub_231368FD0();
      v55 = v54;
      result = sub_231368FC0();
      if (v55 > v57)
      {
        break;
      }

      v58 = v57;
      v59 = v57 - v55;
      if (COERCE__INT64(fabs(v57 - v55)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_25;
      }

      v60 = *(v0 + 272);
      v61 = *(v0 + 256);
      sub_231351B0C(&qword_280F7C8B8, MEMORY[0x277D613A0]);
      while (1)
      {
        v64 = sub_231369F20();
        if ((0x20000000000001 * v64) >= 0x1FFFFFFFFFF801)
        {
          break;
        }

        v62 = *(v0 + 272);
        v63 = *(v0 + 256);
      }

      v65 = (v64 * 0x20000000000001uLL) >> 64;
      v66 = v55 + v59 * vcvtd_n_f64_u64(v65, 0x35uLL);
      if (v65 == 0x20000000000000)
      {
        v66 = v58;
      }

      v67 = v51 * v53 + (1.0 - v51) * v66;
      sub_2311CF324(v0 + 160, v0 + 112);
      *(v0 + 152) = v67;
      sub_231228E9C(v0 + 160, &qword_27DD434E8, &unk_23136E480);
      v89 = v46;
      v69 = *(v46 + 16);
      v68 = *(v46 + 24);
      if (v69 >= v68 >> 1)
      {
        v73 = OUTLINED_FUNCTION_37(v68);
        sub_2311F5B70(v73, v69 + 1, 1);
        v46 = v89;
      }

      ++v49;
      *(v46 + 16) = v69 + 1;
      v70 = (v46 + 48 * v69);
      v71 = *(v0 + 112);
      v72 = *(v0 + 144);
      v70[3] = *(v0 + 128);
      v70[4] = v72;
      v70[2] = v71;
      if (v49 == v88)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_21:
    v74 = *(v0 + 328);
    v75 = *(v0 + 336);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v79 = *(v0 + 296);
    v78 = *(v0 + 304);
    v80 = *(v0 + 248);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    v87(v75, v78);

    OUTLINED_FUNCTION_14();

    return v81(v46);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23135179C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2313517DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_231351834()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_231351024();
}

uint64_t sub_2313518DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135196C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_2311D05C8;

  return sub_23134FFB0(v7, v5, v0, v3);
}

uint64_t sub_231351A18(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v3 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_2311D05C8;

  return sub_231350E30(a1, a2, v7);
}

uint64_t sub_231351B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231351B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231351BC4()
{
  result = qword_27DD44DF0;
  if (!qword_27DD44DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DF0);
  }

  return result;
}

uint64_t sub_231351C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_23125008C();
  v5 = sub_231253034(&v7, v4 + 32, v1, a1);
  sub_231369EE0();
  sub_2311D3BBC();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v7 = v4;
  sub_231255C38(&v7);
  return v7;
}

void DefaultEngagementEstimatorModelProvider.__allocating_init()()
{
  swift_allocObject();
  OUTLINED_FUNCTION_5_34();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  OUTLINED_FUNCTION_4_33();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
}

uint64_t DictModelRepository.__allocating_init(models:)(uint64_t a1)
{
  OUTLINED_FUNCTION_54();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_231351D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_231215F6C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_231351DD0()
{
  v1 = *(v0 + 16);
  v2 = sub_231369EE0();
  v3 = sub_231351C30(v2);

  return v3;
}

uint64_t DictModelRepository.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DictModelRepository.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

void loadModel(modelFolderPath:modelType:)()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2313698C0();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  sub_231369EE0();
  v17 = sub_231369710();
  if (v17 == 2)
  {
    sub_231369100();
    sub_231369EE0();
    v18 = sub_2313698A0();
    v19 = sub_23136A3B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_60();
      v21 = OUTLINED_FUNCTION_29_0();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2311CFD58(v3, v1, &v24);
      _os_log_impl(&dword_2311CB000, v18, v19, "Failed to map %s to enum, unable to load", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v11 + 8))(v16, v8);
    sub_231326378();
    OUTLINED_FUNCTION_42_3();
    *v22 = 0;
  }

  else
  {
    if (v17)
    {
      [objc_allocWithZone(sub_231369780()) init];
      goto LABEL_8;
    }

    if (v5)
    {
      sub_2313697D0();
      sub_23136A650();
      sub_231369EE0();

      v24 = v7;
      MEMORY[0x23192A730](0xD00000000000001FLL, 0x80000002313822B0);
      sub_2313697C0();

      goto LABEL_8;
    }

    sub_231326378();
    OUTLINED_FUNCTION_42_3();
    *v23 = 1;
  }

  swift_willThrow();
LABEL_8:
  OUTLINED_FUNCTION_22_0();
}

void DefaultEngagementEstimatorModelProvider.init()()
{
  OUTLINED_FUNCTION_5_34();
  v0[2] = v2;
  v0[3] = v1;
  OUTLINED_FUNCTION_4_33();
  v0[4] = v3;
  v0[5] = v4;
}

void DefaultEngagementEstimatorModelProvider.getEngagementEstimatorModels()()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_2313698C0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  type metadata accessor for SuggestionsForHelpDefinitionFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_231353224(v15);
  if (v16)
  {
    v17 = v2[3];
    v33[0] = v2[2];
    v33[1] = v17;
    OUTLINED_FUNCTION_5_34();
    sub_231207C1C();
    sub_23136A500();
  }

  else
  {
    sub_231369100();

    v18 = sub_2313698A0();
    v19 = sub_23136A3B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_60();
      v34 = v4;
      v21 = OUTLINED_FUNCTION_29_0();
      v33[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2311CFD58(v2[2], v2[3], v33);
      _os_log_impl(&dword_2311CB000, v18, v19, "Unable to find the SiriSuggestions.framework location. Unable to replace any substitutions in model framework path: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v4 = v34;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v8 + 8))(v13, v5);
    v22 = v2[2];
    v23 = v2[3];
    sub_231369EE0();
  }

  loadModel(modelFolderPath:modelType:)();
  if (v1)
  {
  }

  else
  {
    v25 = v24;

    loadModel(modelFolderPath:modelType:)();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DF8, &qword_2313795E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23136C1C0;
    v29 = v2[5];
    *(inited + 32) = v2[4];
    *(inited + 40) = v29;
    *(inited + 48) = v25;
    strcpy((inited + 56), "identityModel");
    *(inited + 70) = -4864;
    *(inited + 72) = v27;
    sub_231369EE0();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E00, &qword_2313795F0);
    v30 = sub_231369EC0();
    v31 = type metadata accessor for DictModelRepository();
    OUTLINED_FUNCTION_54();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v4[3] = v31;
    v4[4] = &protocol witness table for DictModelRepository;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v4 = v32;
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t DefaultEngagementEstimatorModelProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DefaultEngagementEstimatorModelProvider.__deallocating_deinit()
{
  DefaultEngagementEstimatorModelProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_231352570()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v71 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v71);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v12 = sub_231366690();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E00, &qword_2313795F0);
  v21 = sub_231369EC0();
  v22 = 0;
  v23 = *(v2 + 16);
  v74 = v2;
  v75 = v23;
  v72 = v15 + 16;
  v73 = v15;
  v69 = v15 + 8;
  v70 = (v5 + 8);
  *&v24 = 136315138;
  v66 = v24;
  v67 = v12;
  v68 = v11;
  v76 = v20;
  while (1)
  {
    if (v75 == v22)
    {
      loadModel(modelFolderPath:modelType:)();
      if (v0)
      {
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v21;
        sub_23125A350();
      }

      goto LABEL_24;
    }

    (*(v73 + 16))(v20, v74 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v22, v12);
    v81[0] = sub_2313665E0();
    v81[1] = v25;
    v79 = 95;
    v80 = 0xE100000000000000;
    sub_231207C1C();
    v26 = sub_23136A4E0();

    if (v26[2] != 2)
    {

      v50 = v65;
      sub_231369100();
      sub_231369EE0();
      v51 = sub_2313698A0();
      v52 = sub_23136A3B0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_60();
        v54 = OUTLINED_FUNCTION_29_0();
        v81[0] = v54;
        *v53 = v66;
        v55 = MEMORY[0x23192A860](v26, MEMORY[0x277D837D0]);
        v57 = v56;

        v58 = sub_2311CFD58(v55, v57, v81);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_2311CB000, v51, v52, "Error separating modelName and modelType, expecting <modelName>_<modelType>, got %s, falling back to using default model", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      else
      {
      }

      (*v70)(v50, v71);
      sub_231326378();
      OUTLINED_FUNCTION_42_3();
      *v61 = 2;
      swift_willThrow();
      v62 = OUTLINED_FUNCTION_1_46();
      v63(v62);
      goto LABEL_24;
    }

    v77 = v22;
    v27 = v26[4];
    v28 = v26[5];
    v29 = v26[7];
    v78 = v26[6];
    sub_231369EE0();
    sub_231369EE0();

    sub_231369100();
    sub_231369EE0();
    v30 = sub_2313698A0();
    v31 = sub_23136A3A0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_60();
      v33 = OUTLINED_FUNCTION_29_0();
      v81[0] = v33;
      *v32 = v66;
      *(v32 + 4) = sub_2311CFD58(v27, v28, v81);
      _os_log_impl(&dword_2311CB000, v30, v31, "loading %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v12 = v67;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*v70)(v11, v71);
    sub_231366670();
    loadModel(modelFolderPath:modelType:)();
    if (v0)
    {
      v59 = OUTLINED_FUNCTION_1_46();
      v60(v59);

LABEL_24:
      OUTLINED_FUNCTION_22_0();
      return;
    }

    v35 = v34;

    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v21;
    v36 = sub_231215F6C(v27, v28);
    if (__OFADD__(v21[2], (v37 & 1) == 0))
    {
      break;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E98, &unk_231370AE8);
    if (sub_23136A700())
    {
      v40 = sub_231215F6C(v27, v28);
      v20 = v76;
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_28;
      }

      v38 = v40;
    }

    else
    {
      v20 = v76;
    }

    v21 = v81[0];
    if (v39)
    {
      v42 = *(v81[0] + 56);
      v43 = *(v42 + 8 * v38);
      *(v42 + 8 * v38) = v35;

      swift_unknownObjectRelease();
    }

    else
    {
      *(v81[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v44 = (v21[6] + 16 * v38);
      *v44 = v27;
      v44[1] = v28;
      *(v21[7] + 8 * v38) = v35;
      v45 = v21[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_27;
      }

      v21[2] = v47;
    }

    v48 = OUTLINED_FUNCTION_1_46();
    v49(v48);
    v22 = v77 + 1;
    v11 = v68;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_23136A970();
  __break(1u);
}

void TrialEngagementEstimatorModelProvider.getEngagementEstimatorModels()()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v69 = v3;
  v77 = *MEMORY[0x277D85DE8];
  v4 = sub_231366690();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v71 = v6;
  v72 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v70 = v10 - v9;
  v11 = sub_2313698C0();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v68 = v17;
  MEMORY[0x28223BE20](v18);
  v67 = &v64 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v23 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_231343BB8(v74);
  sub_231369100();
  v24 = sub_2313698A0();
  v25 = sub_23136A3A0();
  if (os_log_type_enabled(v24, v25))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_33(&dword_2311CB000, v26, v27, "fetching EngagementEstimator weights from trial");
    OUTLINED_FUNCTION_29();
  }

  v28 = *(v14 + 8);
  v28(v22, v11);
  v29 = v11;
  v30 = v75;
  v31 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v32 = (*(v31 + 48))(0xD000000000000017, 0x800000023137C220, 0xD000000000000019, 0x800000023137A580, v30, v31);
  static TrialUtils.getDirectoryPath(triLevel:)(v32);
  v34 = v33;

  if (!v1)
  {
    v65 = v29;
    v66 = v28;
    if (v34)
    {
      v36 = [objc_opt_self() defaultManager];
      v37 = v70;
      sub_2313665D0();

      v38 = sub_2313665F0();
      v73 = 0;
      v39 = [v36 contentsOfDirectoryAtURL:v38 includingPropertiesForKeys:0 options:0 error:&v73];

      v40 = v73;
      v41 = v66;
      if (v39)
      {
        sub_23136A1A0();
        v42 = v40;

        sub_231352570();
        v57 = v56;

        v58 = type metadata accessor for DictModelRepository();
        OUTLINED_FUNCTION_54();
        v59 = swift_allocObject();
        *(v59 + 16) = v57;
        v60 = v69;
        v69[3] = v58;
        v60[4] = &protocol witness table for DictModelRepository;

        *v60 = v59;
        v61 = OUTLINED_FUNCTION_8_30();
        v63(v61, v62);
      }

      else
      {
        v49 = v73;
        v50 = sub_231366570();

        swift_willThrow();
        v51 = v67;
        sub_231369100();
        v52 = sub_2313698A0();
        LOBYTE(v49) = sub_23136A3B0();
        if (os_log_type_enabled(v52, v49))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_33(&dword_2311CB000, v53, v54, "Estimator model subfolders are empty, falling back to using default model");
          v41 = v66;
          OUTLINED_FUNCTION_29();
        }

        v41(v51, v65);
        sub_231326378();
        OUTLINED_FUNCTION_42_3();
        *v55 = 2;
        swift_willThrow();

        (*(v71 + 8))(v37, v72);
      }
    }

    else
    {
      v43 = v68;
      sub_231369100();
      v44 = sub_2313698A0();
      v45 = sub_23136A3A0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2311CB000, v44, v45, "User did not set estimator model in trial rollout/experiment, falling back to using default model", v46, 2u);
        OUTLINED_FUNCTION_29();
      }

      v66(v43, v65);
      v47 = v2[10];
      v48 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v47);
      (*(v48 + 8))(v47, v48);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();
}

uint64_t TrialEngagementEstimatorModelProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t TrialEngagementEstimatorModelProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_231353224(void *a1)
{
  v2 = [a1 resourcePath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for EngagementProviderErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2313534E8()
{
  result = qword_27DD44E08;
  if (!qword_27DD44E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44E08);
  }

  return result;
}

uint64_t CurrentAppViewActionsGenerator.channel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_channel;
  v4 = sub_231369330();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t CurrentAppViewActionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[16] = *v0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v6 = sub_2313694E0();
  v1[18] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[19] = v7;
  v9 = *(v8 + 64);
  v1[20] = OUTLINED_FUNCTION_43();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50) - 8) + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v11 = sub_231367550();
  v1[22] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[23] = v12;
  v14 = *(v13 + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v15 = sub_2313698C0();
  v1[25] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[26] = v16;
  v18 = *(v17 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v19 = sub_231367C70();
  v1[34] = v19;
  OUTLINED_FUNCTION_0(v19);
  v1[35] = v20;
  v22 = *(v21 + 64);
  v1[36] = OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_231353830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = *(v22 + 280);
  v25 = *(v22 + 288);
  v27 = *(v22 + 272);
  v28 = *(v22 + 96);
  v29 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2313677D0();
  v30 = *(v26 + 88);
  v31 = OUTLINED_FUNCTION_28_0();
  v33 = v32(v31);
  v34 = *(v22 + 280);
  v35 = *(v22 + 288);
  v36 = *(v22 + 272);
  if (v33 == *MEMORY[0x277D60AC0])
  {
    (*(v34 + 96))(*(v22 + 288), v36);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v38 = *(sub_2313681A0() - 8);
    v39 = *(v38 + 88);
    v40 = OUTLINED_FUNCTION_27();
    v42 = v41(v40);
    v43 = *MEMORY[0x277D60DB8];
    v44 = sub_231368210();
    OUTLINED_FUNCTION_11(v44);
    (*(v45 + 8))(v35 + v37);
    v47 = *(v38 + 8);
    v46 = v38 + 8;
    v48 = OUTLINED_FUNCTION_27();
    v49(v48);
    if (v42 == v43)
    {
      sub_231355ABC(*(v22 + 120) + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_featureFlagProvider, v22 + 56);
      if (*(v22 + 80))
      {
        sub_2311D38A8((v22 + 56), v22 + 16);
        v50 = *(v22 + 48);
        __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
        OUTLINED_FUNCTION_28_0();
        if ((sub_231368430() & 1) == 0)
        {
          v77 = *(v22 + 264);
          sub_231369170();
          v78 = sub_2313698A0();
          v79 = sub_23136A390();
          v80 = OUTLINED_FUNCTION_43_1(v79);
          v81 = *(v22 + 264);
          v82 = *(v22 + 200);
          v83 = *(v22 + 208);
          if (v80)
          {
            v84 = *(v22 + 128);
            OUTLINED_FUNCTION_60();
            v85 = OUTLINED_FUNCTION_14_31();
            a11 = v85;
            *v46 = 136315138;
            v86 = sub_23136AA70();
            v88 = sub_2311CFD58(v86, v87, &a11);

            *(v46 + 4) = v88;
            OUTLINED_FUNCTION_19_1(&dword_2311CB000, v89, v90, "%s will not generate any suggestions because currentAppViewActions flag is off");
            __swift_destroy_boxed_opaque_existential_1Tm(v85);
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_29();
          }

          v91 = *(v83 + 8);
          v92 = OUTLINED_FUNCTION_28_0();
          v93(v92);
          __swift_destroy_boxed_opaque_existential_1Tm((v22 + 16));
          goto LABEL_7;
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v22 + 16));
      }

      else
      {
        sub_2311D1F18(v22 + 56, &qword_27DD44E10, &qword_231379830);
      }

      v62 = *(v22 + 256);
      sub_231369170();
      v63 = sub_2313698A0();
      v64 = sub_23136A3A0();
      v65 = OUTLINED_FUNCTION_43_1(v64);
      v66 = *(v22 + 256);
      v67 = *(v22 + 200);
      v68 = *(v22 + 208);
      if (v65)
      {
        OUTLINED_FUNCTION_60();
        v69 = OUTLINED_FUNCTION_14_31();
        a11 = v69;
        *v46 = 136315138;
        *(v46 + 4) = sub_2311CFD58(0xD00000000000003ELL, 0x8000000231381F20, &a11);
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v70, v71, "Function: %s > Fetching Link Action from the annotated view.");
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_29();
      }

      v72 = *(v68 + 8);
      v73 = OUTLINED_FUNCTION_28_0();
      v72(v73);
      *(v22 + 296) = v72;
      v74 = *(v22 + 120);
      if (*(v74 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID + 8))
      {
        v75 = *(v74 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID);
        v76 = *(v74 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID + 8);
LABEL_20:
        *(v22 + 304) = v75;
        *(v22 + 312) = v76;
        __swift_project_boxed_opaque_existential_1((v74 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService), *(v74 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService + 24));
        swift_bridgeObjectRetain_n();
        v97 = swift_task_alloc();
        *(v22 + 320) = v97;
        *v97 = v22;
        v97[1] = sub_231353DF4;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_7();

        return sub_2313552F4();
      }

      v94 = *(v22 + 104);
      v95 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      OUTLINED_FUNCTION_28_0();
      sub_2313683A0();
      v96 = sub_23136A1F0();

      if (v96[2])
      {
        v75 = v96[4];
        v76 = v96[5];
        swift_bridgeObjectRetain_n();

        v74 = *(v22 + 120);
        goto LABEL_20;
      }

      v99 = *(v22 + 248);

      sub_231369170();
      v100 = sub_2313698A0();
      v101 = sub_23136A390();
      v102 = OUTLINED_FUNCTION_43_1(v101);
      v103 = *(v22 + 248);
      v105 = *(v22 + 200);
      v104 = *(v22 + 208);
      if (v102)
      {
        v106 = *(v22 + 128);
        OUTLINED_FUNCTION_60();
        v107 = OUTLINED_FUNCTION_14_31();
        a11 = v107;
        *v103 = 136315138;
        v108 = sub_23136AA70();
        v110 = sub_2311CFD58(v108, v109, &a11);

        *(v103 + 4) = v110;
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v111, v112, "%s will not generate any suggestions because salient entities don't contain app in view.");
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_29();
      }

      (v72)(v103, v105);
    }
  }

  else
  {
    (*(v34 + 8))(*(v22 + 288), v36);
  }

LABEL_7:
  OUTLINED_FUNCTION_1_47();
  v113 = v52;
  v114 = v51;

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, v113, v114, a11, a12, a13, a14);
}

uint64_t sub_231353DF4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *(v2 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;
  *(v9 + 328) = v8;

  v10 = *(v2 + 312);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231353F38()
{
  v73 = v0;
  result = sub_23125D7A0(*(v0 + 328));
  *(v0 + 336) = result;
  if (!result)
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 312);

    if (*(MEMORY[0x277D84F90] + 16))
    {
      v12 = *(v0 + 216);
      sub_231369170();
      v13 = sub_2313698A0();
      v14 = sub_23136A390();
      v15 = OUTLINED_FUNCTION_23_20(v14);
      v16 = *(v0 + 296);
      v17 = *(v0 + 208);
      v18 = *(v0 + 216);
      v19 = *(v0 + 200);
      if (v15)
      {
        v69 = *(v0 + 296);
        v20 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v20 = 136315394;
        *(v20 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v59, v60, v61, v62, v18, v69);
        *(v20 + 12) = 2080;
        v21 = MEMORY[0x277D84F90];
        sub_231369EE0();
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
        v23 = MEMORY[0x23192A860](v21, v22);
        v25 = v24;

        v26 = sub_2311CFD58(v23, v25, &v72);

        *(v20 + 14) = v26;
        _os_log_impl(&dword_2311CB000, v13, v1, "Function: %s > AppIntent donated from view create these suggestions %s", v20, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_29();

        v70(v65, v19);
      }

      else
      {

        v16(v18, v19);
      }
    }

    else
    {
      v45 = *(v0 + 224);
      sub_231369170();
      v46 = sub_2313698A0();
      v47 = sub_23136A390();
      v48 = OUTLINED_FUNCTION_43_1(v47);
      v49 = *(v0 + 296);
      v50 = *(v0 + 224);
      v51 = *(v0 + 200);
      v52 = *(v0 + 208);
      if (v48)
      {
        OUTLINED_FUNCTION_60();
        v53 = OUTLINED_FUNCTION_14_31();
        v72 = v53;
        *v1 = 136315138;
        *(v1 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v59, v60, v61, v62, v64, v67);
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v54, v55, "Function: %s > No donated AppIntent from the view donated Suggestion AppIntent, no suggestions generated");
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_29();
      }

      v56 = OUTLINED_FUNCTION_28_0();
      v49(v56);
    }

    OUTLINED_FUNCTION_1_47();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  if (result >= 1)
  {
    v3 = *(v0 + 328);
    v4 = *MEMORY[0x277D60948];
    *(v0 + 392) = v4;
    v5 = *MEMORY[0x277D60920];
    *(v0 + 396) = v5;
    v6 = *MEMORY[0x277D61380];
    *(v0 + 400) = v6;
    v7 = *MEMORY[0x277D60B78];
    *(v0 + 404) = *MEMORY[0x277D60B78];
    v8 = MEMORY[0x277D84F90];
    *(v0 + 352) = MEMORY[0x277D84F90];
    *(v0 + 360) = v8;
    *(v0 + 344) = 0;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23192AD10](0);
      v68 = *(v0 + 404);
      v6 = *(v0 + 400);
      v5 = *(v0 + 396);
      v4 = *(v0 + 392);
    }

    else
    {
      v68 = v7;
      v9 = *(v3 + 32);
    }

    *(v0 + 368) = v9;
    v63 = *(v0 + 312);
    v66 = v9;
    v27 = *(v0 + 184);
    v28 = *(v0 + 192);
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = OUTLINED_FUNCTION_28_20(v9, *(v0 + 304));
    OUTLINED_FUNCTION_11(v35);
    (*(v36 + 104))(v28, v4);
    (*(v27 + 104))(v28, v5, v30);
    v37 = sub_231369330();
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v37);
    (*(v32 + 104))(v61, v6);
    v38 = sub_231367D80();
    OUTLINED_FUNCTION_11(v38);
    (*(v39 + 104))(v34, v68, v38);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v38);
    v40 = *(MEMORY[0x277D61200] + 4);
    v71 = *MEMORY[0x277D61200] + MEMORY[0x277D61200];
    sub_231369EE0();
    v41 = v66;
    v42 = swift_task_alloc();
    *(v0 + 376) = v42;
    *v42 = v0;
    OUTLINED_FUNCTION_2_33(v42);
    OUTLINED_FUNCTION_31();

    __asm { BR              X4 }
  }

  __break(1u);
  return result;
}

uint64_t sub_231354434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v25 = v22[39];
  v26 = v22[30];
  sub_231369170();
  sub_231369EE0();
  v27 = sub_2313698A0();
  v28 = sub_23136A3B0();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v22[39];
  if (v29)
  {
    v31 = v22[38];
    v59 = v22[37];
    v32 = v22[30];
    v33 = v22[25];
    v34 = v22[26];
    v35 = OUTLINED_FUNCTION_60();
    v36 = OUTLINED_FUNCTION_29_0();
    a11 = v36;
    *v35 = 136315138;
    v37 = sub_2311CFD58(v31, v30, &a11);

    *(v35 + 4) = v37;
    OUTLINED_FUNCTION_13_25(&dword_2311CB000, v38, v39, "Could not call LNConnection function fetchSuggestedActionsFromView in app: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    v40 = OUTLINED_FUNCTION_28_0();
    v59(v40);
  }

  else
  {
    v41 = v22[37];
    v42 = v22[30];
    v43 = v22[25];
    v44 = v22[26];
    v45 = v22[39];

    v46 = OUTLINED_FUNCTION_28_0();
    v41(v46);
  }

  OUTLINED_FUNCTION_1_47();
  v58 = v48;
  v60 = v47;

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v51(v49, v50, v51, v52, v53, v54, v55, v56, v58, v60, a11, a12, a13, a14);
}

uint64_t sub_231354600()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = v4[47];
  v6 = v4[24];
  v7 = v4[23];
  v8 = v4[22];
  v9 = v4[21];
  v10 = v4[20];
  v11 = v4[19];
  v12 = v4[18];
  v13 = v4[17];
  v14 = *v0;
  OUTLINED_FUNCTION_9();
  *v15 = v14;
  *(v17 + 384) = v16;

  sub_2311D1F18(v13, &qword_27DD42F18, &unk_23136B810);
  (*(v11 + 8))(v10, v12);
  sub_2311D1F18(v9, &qword_27DD43F00, &unk_231375F50);
  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_27();
  v20(v19);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_23135480C()
{
  v127 = v0;
  v1 = *(v0 + 384);
  v2 = swift_dynamicCast;
  if (!v1)
  {
    v17 = *(v0 + 368);
    v18 = *(v0 + 232);
    sub_231369170();
    v19 = v17;
    v20 = sub_2313698A0();
    v21 = sub_23136A3B0();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 368);
    v24 = *(v0 + 296);
    v25 = *(v0 + 232);
    v26 = *(v0 + 200);
    v123 = *(v0 + 208) + 8;
    if (v22)
    {
      v117 = *(v0 + 296);
      v27 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_2311CFD58(0xD00000000000003ELL, 0x8000000231381F20, &v126);
      *(v27 + 12) = 2080;
      v113 = v26;
      v28 = [v23 description];
      v112 = v25;
      v29 = sub_231369FD0();
      v31 = v30;

      v32 = sub_2311CFD58(v29, v31, &v126);

      *(v27 + 14) = v32;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
      swift_arrayDestroy();
      v2 = swift_dynamicCast;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v117(v25, v113);
    }

    else
    {

      v24(v25, v26);
    }

    v9 = *(v0 + 352);
    v38 = *(v0 + 360);
LABEL_19:
    v39 = *(v0 + 344) + 1;
    if (v39 == *(v0 + 336))
    {
      v40 = *(v0 + 328);
      v41 = *(v0 + 312);

      v124 = v9;
      if (*(v38 + 16))
      {
        v42 = *(v0 + 216);
        sub_231369170();
        v43 = sub_2313698A0();
        v44 = sub_23136A390();
        v45 = OUTLINED_FUNCTION_23_20(v44);
        v46 = *(v0 + 296);
        v47 = *(v0 + 208);
        v118 = *(v0 + 216);
        v48 = *(v0 + 200);
        if (v45)
        {
          v49 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *v49 = *(v2 + 209);
          *(v49 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v110, v111, v112, v46, v118, v9);
          *(v49 + 12) = 2080;
          sub_231369EE0();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
          v51 = MEMORY[0x23192A860](v9, v50);
          v53 = v52;

          v54 = sub_2311CFD58(v51, v53, &v126);

          *(v49 + 14) = v54;
          OUTLINED_FUNCTION_25();
          _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_15();

          v114(v119, v48);
        }

        else
        {

          v46(v118, v48);
        }
      }

      else
      {
        v62 = *(v0 + 224);
        sub_231369170();
        v63 = sub_2313698A0();
        v64 = sub_23136A390();
        v65 = OUTLINED_FUNCTION_23_20(v64);
        v66 = *(v0 + 296);
        v67 = *(v0 + 224);
        v68 = *(v0 + 200);
        v69 = *(v0 + 208);
        if (v65)
        {
          v70 = OUTLINED_FUNCTION_60();
          v71 = OUTLINED_FUNCTION_29_0();
          v126 = v71;
          *v70 = 136315138;
          *(v70 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v110, v111, v112, v113, v117, v124);
          OUTLINED_FUNCTION_25();
          _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_15();
        }

        v66(v67, v68);
      }

      v98 = *(v0 + 288);
      v100 = *(v0 + 256);
      v99 = *(v0 + 264);
      v102 = *(v0 + 240);
      v101 = *(v0 + 248);
      v104 = *(v0 + 224);
      v103 = *(v0 + 232);
      v105 = *(v0 + 216);
      v106 = *(v0 + 192);
      v107 = *(v0 + 168);
      v116 = *(v0 + 160);
      v122 = *(v0 + 136);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X2, X16 }
    }

    *(v0 + 352) = v9;
    *(v0 + 360) = v38;
    *(v0 + 344) = v39;
    v60 = *(v0 + 328);
    if ((v60 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x23192AD10]();
    }

    else
    {
      v61 = *(v60 + 8 * v39 + 32);
    }

    v77 = v61;
    *(v0 + 368) = v61;
    v120 = *(v0 + 404);
    v115 = *(v0 + 400);
    v78 = *(v0 + 396);
    v79 = *(v0 + 392);
    v125 = *(v0 + 312);
    v80 = *(v0 + 184);
    v81 = *(v0 + 192);
    v82 = *(v0 + 168);
    v83 = *(v0 + 176);
    v85 = *(v0 + 152);
    v84 = *(v0 + 160);
    v87 = *(v0 + 136);
    v86 = *(v0 + 144);
    v88 = OUTLINED_FUNCTION_28_20(v61, *(v0 + 304));
    OUTLINED_FUNCTION_11(v88);
    (*(v89 + 104))(v81, v79);
    (*(v80 + 104))(v81, v78, v83);
    v90 = sub_231369330();
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v90);
    (*(v85 + 104))(v112, v115);
    v91 = sub_231367D80();
    OUTLINED_FUNCTION_11(v91);
    (*(v92 + 104))(v87, v120, v91);
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v91);
    v93 = *(MEMORY[0x277D61200] + 4);
    v121 = *MEMORY[0x277D61200] + MEMORY[0x277D61200];
    sub_231369EE0();
    v94 = v77;
    v95 = swift_task_alloc();
    *(v0 + 376) = v95;
    *v95 = v0;
    OUTLINED_FUNCTION_2_33();
    OUTLINED_FUNCTION_31();

    __asm { BR              X4 }
  }

  v3 = *(v0 + 360);
  v4 = *(v1 + 16);
  v5 = *(v3 + 16);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(v0 + 360);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 360);
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v9 + 24) >> 1, v10 < v6))
  {
    if (*(v3 + 16) > v6)
    {
      v11 = *(v3 + 16);
    }

    v12 = *(v0 + 360);
    sub_23126DF64();
    v9 = v13;
    v10 = *(v13 + 24) >> 1;
  }

  if (!*(v1 + 16))
  {

    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  if (v10 - *(v9 + 16) < v4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_16:

    v38 = v9;
    goto LABEL_19;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v4);
  v16 = v14 + v4;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_16;
  }

LABEL_39:
  __break(1u);
}

uint64_t CurrentAppViewActionsGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_channel;
  v2 = sub_231369330();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  sub_2311D1F18(v0 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_featureFlagProvider, &qword_27DD44E10, &qword_231379830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService));
  v4 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID + 8);

  return v0;
}

uint64_t CurrentAppViewActionsGenerator.__deallocating_deinit()
{
  CurrentAppViewActionsGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23135506C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23135511C;

  return CurrentAppViewActionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_23135511C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_9();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(v2);
}

uint64_t sub_23135520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D60D18] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_231355EF0(&qword_280F7E558);
  *v10 = v4;
  v10[1] = sub_231355F94;

  return MEMORY[0x2821C6C08](a1, a2, a3, a4, v11);
}

uint64_t sub_2313552F4()
{
  OUTLINED_FUNCTION_8();
  v12 = *MEMORY[0x277D85DE8];
  v0[20] = v1;
  v0[21] = v2;
  v3 = sub_2313698C0();
  v0[22] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[23] = v4;
  v6 = *(v5 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2313553DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v56 = *MEMORY[0x277D85DE8];
  v15 = v14[20];
  v16 = v14[21];
  v17 = objc_opt_self();
  v18 = sub_231369FA0();
  v19 = [v17 policyWithBundleIdentifier_];

  v14[18] = 0;
  v20 = [v19 connectionWithError_];
  v14[26] = v20;

  v21 = v14[18];
  if (v20)
  {
    v14[2] = v14;
    v14[7] = v14 + 19;
    v14[3] = sub_2313556D8;
    v22 = swift_continuation_init();
    v14[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E18, &qword_2313799D8);
    v14[10] = MEMORY[0x277D85DD0];
    v14[11] = 1107296256;
    v14[12] = sub_231355A24;
    v14[13] = &block_descriptor_4;
    v14[14] = v22;
    v23 = v21;
    [v20 fetchSuggestedActionsFromViewWithCompletionHandler_];
    v24 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_7();

    return MEMORY[0x282200938](v25);
  }

  else
  {
    v27 = v14[24];
    v28 = v14[21];
    v29 = v21;
    v30 = sub_231366570();

    swift_willThrow();
    sub_231369170();
    sub_231369EE0();
    v31 = sub_2313698A0();
    LOBYTE(v29) = sub_23136A3B0();

    v32 = os_log_type_enabled(v31, v29);
    v34 = v14[23];
    v33 = v14[24];
    v35 = v14[22];
    if (v32)
    {
      v37 = v14[20];
      v36 = v14[21];
      v38 = OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_29_0();
      *(v38 + 4) = OUTLINED_FUNCTION_27_16(4.8149e-34, a10);
      OUTLINED_FUNCTION_13_25(&dword_2311CB000, v39, v40, "Could not open connection to app: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(a10);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
    }

    v41 = *(v34 + 8);
    v42 = OUTLINED_FUNCTION_28_0();
    v43(v42);
    v45 = v14[24];
    v44 = v14[25];

    OUTLINED_FUNCTION_14();
    v46 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_7();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v56, a12, a13, a14);
  }
}

uint64_t sub_2313556D8()
{
  OUTLINED_FUNCTION_8();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 216) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231355808()
{
  v7 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 152);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];

  return v4(v1);
}

uint64_t sub_2313558B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v44 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 216);
  v16 = *(v14 + 200);
  v17 = *(v14 + 168);
  swift_willThrow();

  sub_231369170();
  sub_231369EE0();
  v18 = sub_2313698A0();
  v19 = sub_23136A3B0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v14 + 200);
  v22 = *(v14 + 176);
  v23 = *(v14 + 184);
  if (v20)
  {
    v25 = *(v14 + 160);
    v24 = *(v14 + 168);
    v26 = OUTLINED_FUNCTION_60();
    a10 = OUTLINED_FUNCTION_29_0();
    *(v26 + 4) = OUTLINED_FUNCTION_27_16(4.8149e-34, a10);
    OUTLINED_FUNCTION_13_25(&dword_2311CB000, v27, v28, "Could not call LNConnection function fetchSuggestedActionsFromView in app: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();
  }

  v29 = *(v23 + 8);
  v30 = OUTLINED_FUNCTION_28_0();
  v31(v30);

  v33 = *(v14 + 192);
  v32 = *(v14 + 200);

  OUTLINED_FUNCTION_14();
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v44, a12, a13, a14);
}

uint64_t sub_231355A24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_2311FA174(v4, v5);
  }

  else
  {
    sub_231355F50();
    v7 = sub_23136A1A0();

    return sub_2311FA178(v4, v7);
  }
}

uint64_t sub_231355ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E10, &qword_231379830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CurrentAppViewActionsGenerator()
{
  result = qword_280F7E538;
  if (!qword_280F7E538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231355BE8()
{
  result = sub_231369330();
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

uint64_t sub_231355CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_231355DDC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_231355DDC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_9();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(v2);
}

uint64_t sub_231355EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrentAppViewActionsGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231355F50()
{
  result = qword_27DD44E20;
  if (!qword_27DD44E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD44E20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_29@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_2311CFD58(0xD00000000000003ELL, a1 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_13_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_23_20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = v2;

  return sub_231367560();
}

uint64_t sub_231356014()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_231367490();
  v1[13] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v7 = sub_2313698C0();
  v1[16] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v11 = sub_231369D00();
  v1[19] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v15);
  v17 = *(v16 + 64);
  v1[22] = OUTLINED_FUNCTION_67();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_231356194()
{
  v1 = *(v0 + 96);
  v2 = sub_231367440();
  *(v0 + 200) = v2;
  *(v0 + 264) = *(v2 + 32);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_20_24();
  v6 = MEMORY[0x277D84F98];
  *(v0 + 208) = MEMORY[0x277D84F98];
  *(v0 + 216) = v6;
  v9 = v8 & v7;
  if (v9)
  {
    v10 = 0;
LABEL_6:
    *(v0 + 224) = v9;
    *(v0 + 232) = v10;
    v13 = __clz(__rbit64(v9)) | (v10 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    *(v0 + 240) = *v14;
    v15 = v14[1];
    *(v0 + 248) = v15;
    sub_23123EA8C(*(v4 + 56) + 32 * v13, v0 + 16, &qword_27DD443C0, &unk_23136E000);
    v29 = *(v0 + 32);
    v30 = *(v0 + 16);
    sub_231369EE0();
    if (v15)
    {
      *(v0 + 64) = v29;
      *(v0 + 48) = v30;
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v0 + 256) = v16;
      *v16 = v17;
      OUTLINED_FUNCTION_3_41(v16);

      return sub_23135842C();
    }

    v19 = *(v0 + 200);
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v5) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v4 + 8 * v11++ + 72);
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  v20 = *(v0 + 184);
  v21 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);

  sub_23134A858();
  v27 = v26;

  OUTLINED_FUNCTION_14();

  return v28(v27);
}

uint64_t sub_2313563AC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231356490()
{
  v98 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  sub_23123EA8C(*(v0 + 192), v1, &qword_27DD43358, &qword_23136FA90);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 184);
  if (EnumTagSinglePayload == 1)
  {
    v7 = *(v0 + 216);
    sub_2311D1F18(*(v0 + 184), &qword_27DD43358, &qword_23136FA90);
    v8 = sub_231215F6C(v4, v5);
    if (v9)
    {
      v10 = v8;
      v11 = *(v0 + 208);
      v12 = *(v0 + 176);
      v13 = *(v0 + 152);
      v14 = *(v0 + 160);
      swift_isUniquelyReferenced_nonNull_native();
      v97 = v11;
      v15 = v11[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B98, &qword_231378750);
      sub_23136A700();
      v16 = v11;
      v17 = *(v11[6] + 16 * v10 + 8);

      (*(v14 + 32))(v12, v11[7] + *(v14 + 72) * v10, v13);
      sub_23136A720();
      v18 = 0;
      v19 = v11;
    }

    else
    {
      v16 = *(v0 + 208);
      v19 = *(v0 + 216);
      v18 = 1;
    }

    v30 = *(v0 + 176);
    __swift_storeEnumTagSinglePayload(v30, v18, 1, *(v0 + 152));
    sub_2311D1F18(v30, &qword_27DD43358, &qword_23136FA90);
  }

  else
  {
    v20 = *(v0 + 208);
    v21 = *(*(v0 + 160) + 32);
    v21(*(v0 + 168), *(v0 + 184), *(v0 + 152));
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v20;
    result = sub_231215F6C(v4, v5);
    if (__OFADD__(*(v20 + 16), (v23 & 1) == 0))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v24 = result;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B98, &qword_231378750);
    if (sub_23136A700())
    {
      v26 = *(v0 + 80);
      v27 = sub_231215F6C(*(v0 + 240), *(v0 + 248));
      if ((v25 & 1) != (v28 & 1))
      {
        OUTLINED_FUNCTION_47();

        return sub_23136A970();
      }

      v24 = v27;
    }

    v16 = *(v0 + 80);
    if (v25)
    {
      (*(*(v0 + 160) + 40))(v16[7] + *(*(v0 + 160) + 72) * v24, *(v0 + 168), *(v0 + 152));
    }

    else
    {
      v32 = *(v0 + 240);
      v31 = *(v0 + 248);
      v34 = *(v0 + 160);
      v33 = *(v0 + 168);
      v35 = *(v0 + 152);
      v16[(v24 >> 6) + 8] |= 1 << v24;
      v36 = (v16[6] + 16 * v24);
      *v36 = v32;
      v36[1] = v31;
      result = v21(v16[7] + *(v34 + 72) * v24, v33, v35);
      v37 = v16[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
LABEL_45:
        __break(1u);
        return result;
      }

      v40 = *(v0 + 248);
      v16[2] = v39;
      sub_231369EE0();
    }

    v19 = v16;
  }

  if (*(v0 + 72) && __swift_getEnumTagSinglePayload(*(v0 + 192), 1, *(v0 + 152)) == 1)
  {
    v41 = *(v0 + 248);
    v42 = *(v0 + 144);
    v44 = *(v0 + 112);
    v43 = *(v0 + 120);
    v46 = *(v0 + 96);
    v45 = *(v0 + 104);
    sub_231369130();
    (*(v44 + 16))(v43, v46, v45);
    sub_231369EE0();
    v47 = sub_2313698A0();
    v48 = sub_23136A3B0();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 248);
    if (v49)
    {
      v95 = *(v0 + 144);
      v92 = *(v0 + 136);
      v93 = *(v0 + 128);
      v91 = v48;
      v52 = *(v0 + 112);
      v51 = *(v0 + 120);
      v89 = *(v0 + 104);
      v90 = *(v0 + 240);
      v53 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v53 = 136315650;
      v54 = sub_231367470();
      if (v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = 0x3E6C696E3CLL;
      }

      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      (*(v52 + 8))(v51, v89);
      v58 = sub_2311CFD58(v56, v57, &v97);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = sub_2311CFD58(v90, v50, &v97);

      *(v53 + 14) = v59;
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_2311CFD58(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v97);
      _os_log_impl(&dword_2311CB000, v47, v91, "Unable to convert IntentQuery's parameter value to TypedValue instance on toolId: %s | paramKey: %s | paramValue type: %s", v53, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v92 + 8))(v95, v93);
    }

    else
    {
      v83 = *(v0 + 136);
      v82 = *(v0 + 144);
      v85 = *(v0 + 120);
      v84 = *(v0 + 128);
      v86 = v47;
      v88 = *(v0 + 104);
      v87 = *(v0 + 112);

      (*(v87 + 8))(v85, v88);
      (*(v83 + 8))(v82, v84);
    }
  }

  else
  {
    v60 = *(v0 + 248);
  }

  v61 = *(v0 + 192);
  sub_2311D1F18(v0 + 48, &qword_27DD443C0, &unk_23136E000);
  result = sub_2311D1F18(v61, &qword_27DD43358, &qword_23136FA90);
  v63 = *(v0 + 224);
  v62 = *(v0 + 232);
  *(v0 + 208) = v16;
  *(v0 + 216) = v19;
  v64 = (v63 - 1) & v63;
  if (!v64)
  {
    while (1)
    {
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v66 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        goto LABEL_39;
      }

      v65 = *(v0 + 200);
      v64 = *(v65 + 8 * v66 + 64);
      ++v62;
      if (v64)
      {
        v62 = v66;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v65 = *(v0 + 200);
LABEL_35:
  *(v0 + 224) = v64;
  *(v0 + 232) = v62;
  v67 = __clz(__rbit64(v64)) | (v62 << 6);
  v68 = (*(v65 + 48) + 16 * v67);
  *(v0 + 240) = *v68;
  v69 = v68[1];
  *(v0 + 248) = v69;
  sub_23123EA8C(*(v65 + 56) + 32 * v67, v0 + 16, &qword_27DD443C0, &unk_23136E000);
  v94 = *(v0 + 16);
  v96 = *(v0 + 32);
  sub_231369EE0();
  if (!v69)
  {
LABEL_39:
    v74 = *(v0 + 192);
    v73 = *(v0 + 200);
    v76 = *(v0 + 176);
    v75 = *(v0 + 184);
    v77 = *(v0 + 168);
    v78 = *(v0 + 144);
    v79 = *(v0 + 120);

    sub_23134A858();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 48) = v94;
  *(v0 + 64) = v96;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 256) = v70;
  *v70 = v71;
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_47();

  return sub_23135842C();
}

uint64_t sub_231356BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v73 = *(v2 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v62 - v4;
  v6 = sub_231369D00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43390, &qword_23136C330);
  v10 = *(*(v74 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v64 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v62 - v15;
  v65 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v66 = (v7 + 8);
  v67 = (v7 + 32);
  v75 = a1;
  result = sub_231369EE0();
  v22 = 0;
  v69 = a1 + 64;
  v70 = v20;
  v72 = v6;
  if (v19)
  {
    while (1)
    {
      v23 = v5;
LABEL_10:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v74;
      v28 = (*(v75 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = v71;
      sub_23123EA8C(*(v75 + 56) + *(v73 + 72) * v26, &v71[*(v74 + 48)], &qword_27DD43358, &qword_23136FA90);
      *v31 = v30;
      v31[1] = v29;
      v32 = v76;
      sub_23123E9F8(v31, v76, &qword_27DD43390, &qword_23136C330);
      v33 = v32 + *(v27 + 48);
      v5 = v23;
      sub_23123EA8C(v33, v23, &qword_27DD43358, &qword_23136FA90);
      v34 = v23;
      v35 = v72;
      if (__swift_getEnumTagSinglePayload(v34, 1, v72) == 1)
      {
        break;
      }

      v36 = v68;
      (*v67)(v68, v5, v35);
      sub_231369EE0();
      sub_2312BC3E0();
      v38 = v37;
      v40 = v39;
      (*v66)(v36, v35);
      v20 = v70;
      if (!v40)
      {
        goto LABEL_13;
      }

      sub_23123E9F8(v76, v64, &qword_27DD43390, &qword_23136C330);
      v44 = v65[2];
      if (v65[3] <= v44)
      {
        sub_2312B639C(v44 + 1);
      }

      v45 = v77;
      v46 = *v64;
      v63 = v64[1];
      v47 = *(v77 + 40);
      sub_23136A9D0();
      v62 = v46;
      sub_23136A060();
      result = sub_23136AA00();
      v48 = v45 + 64;
      v65 = v45;
      v49 = -1 << *(v45 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*(v45 + 64 + 8 * (v50 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v49) >> 6;
        while (++v51 != v54 || (v53 & 1) == 0)
        {
          v55 = v51 == v54;
          if (v51 == v54)
          {
            v51 = 0;
          }

          v53 |= v55;
          v56 = *(v48 + 8 * v51);
          if (v56 != -1)
          {
            v52 = __clz(__rbit64(~v56)) + (v51 << 6);
            goto LABEL_27;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v52 = __clz(__rbit64((-1 << v50) & ~*(v45 + 64 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      v57 = *(v74 + 48);
      *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v58 = v65;
      v59 = (v65[6] + 16 * v52);
      v60 = v63;
      *v59 = v62;
      v59[1] = v60;
      v61 = (v58[7] + 16 * v52);
      *v61 = v38;
      v61[1] = v40;
      ++v58[2];
      v41 = v64 + v57;
      v42 = &qword_27DD43358;
      v43 = &qword_23136FA90;
LABEL_14:
      result = sub_2311D1F18(v41, v42, v43);
      v16 = v69;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    sub_231369EE0();
    sub_2311D1F18(v5, &qword_27DD43358, &qword_23136FA90);
    v20 = v70;
LABEL_13:
    v41 = v76;
    v42 = &qword_27DD43390;
    v43 = &qword_23136C330;
    goto LABEL_14;
  }

  while (1)
  {
LABEL_6:
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v24 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      v23 = v5;
      v22 = v24;
      goto LABEL_10;
    }
  }

  return v65;
}

uint64_t sub_231357148(uint64_t a1)
{
  v84 = sub_2313698C0();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_231369D00();
  v5 = *(v82 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231369D60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v95 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
  v12 = *(*(v93 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v93);
  v74[0] = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = v74 - v16;
  MEMORY[0x28223BE20](v15);
  v91 = v74 - v17;
  v76 = MEMORY[0x277D84F98];
  v100 = MEMORY[0x277D84F98];
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v89 = v9 + 88;
  v90 = v9 + 16;
  v88 = *MEMORY[0x277D72E38];
  v80 = (v2 + 8);
  v85 = (v9 + 8);
  v92 = v9;
  v79 = (v9 + 96);
  v78 = (v5 + 32);
  v77 = (v5 + 8);
  v94 = a1;
  result = sub_231369EE0();
  v24 = 0;
  *&v25 = 136315138;
  v75 = v25;
  v98 = v8;
  v87 = a1 + 64;
  v86 = v22;
  if (v21)
  {
LABEL_9:
    while (1)
    {
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v93;
      v30 = *(v94 + 56);
      v31 = (*(v94 + 48) + 16 * v28);
      v32 = v31[1];
      v96 = *v31;
      v34 = v91;
      v33 = v92;
      v35 = *(v92 + 16);
      v36 = v98;
      v35(&v91[*(v93 + 48)], v30 + *(v92 + 72) * v28, v98);
      *v34 = v96;
      v34[1] = v32;
      v96 = v32;
      v37 = v97;
      sub_23123E9F8(v34, v97, &qword_27DD44630, qword_231374C28);
      v38 = v37 + *(v29 + 48);
      v39 = v95;
      v35(v95, v38, v36);
      v40 = (*(v33 + 88))(v39, v36);
      if (v40 != v88)
      {
        break;
      }

      (*v79)(v39, v98);
      v41 = v81;
      v42 = v39;
      v43 = v82;
      (*v78)(v81, v42, v82);
      sub_231369EE0();
      sub_2312BC3E0();
      v45 = v44;
      v47 = v46;
      (*v77)(v41, v43);
      if (!v47)
      {
        goto LABEL_18;
      }

      sub_23123E9F8(v97, v74[0], &qword_27DD44630, qword_231374C28);
      v48 = v76[2];
      if (v76[3] <= v48)
      {
        sub_2312B639C(v48 + 1);
      }

      v49 = v100;
      v50 = *v74[0];
      v51 = *(v74[0] + 8);
      v52 = *(v100 + 40);
      sub_23136A9D0();
      sub_23136A060();
      result = sub_23136AA00();
      v53 = v49 + 64;
      v76 = v49;
      v54 = -1 << *(v49 + 32);
      v55 = result & ~v54;
      v56 = v55 >> 6;
      if (((-1 << v55) & ~*(v49 + 64 + 8 * (v55 >> 6))) == 0)
      {
        v66 = 0;
        v67 = (63 - v54) >> 6;
        while (++v56 != v67 || (v66 & 1) == 0)
        {
          v68 = v56 == v67;
          if (v56 == v67)
          {
            v56 = 0;
          }

          v66 |= v68;
          v69 = *(v53 + 8 * v56);
          if (v69 != -1)
          {
            v57 = __clz(__rbit64(~v69)) + (v56 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v57 = __clz(__rbit64((-1 << v55) & ~*(v49 + 64 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v70 = *(v93 + 48);
      *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      v71 = v76;
      v72 = (v76[6] + 16 * v57);
      *v72 = v50;
      v72[1] = v51;
      v73 = (v71[7] + 16 * v57);
      *v73 = v45;
      v73[1] = v47;
      ++v71[2];
      result = (*v85)(v74[0] + v70, v98);
LABEL_19:
      v18 = v87;
      v22 = v86;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    sub_231369EE0();
    v58 = v83;
    sub_231369130();
    v59 = sub_2313698A0();
    v60 = sub_23136A3A0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v99[0] = v62;
      *v61 = v75;
      v99[9] = &type metadata for ToolKitUtils;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44620, &qword_231374C18);
      v63 = sub_23136A010();
      v65 = sub_2311CFD58(v63, v64, v99);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_2311CB000, v59, v60, "displayStringForConcreteResolvable(): not handling for case: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x23192B930](v62, -1, -1);
      MEMORY[0x23192B930](v61, -1, -1);
    }

    (*v80)(v58, v84);
    (*v85)(v95, v98);
LABEL_18:
    result = sub_2311D1F18(v97, &qword_27DD44630, qword_231374C28);
    goto LABEL_19;
  }

LABEL_5:
  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      return v76;
    }

    v21 = *(v18 + 8 * v26);
    ++v24;
    if (v21)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231357934()
{
  OUTLINED_FUNCTION_8();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_231369D90();
  v1[12] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[13] = v4;
  v6 = *(v5 + 64);
  v1[14] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v7);
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v10 = sub_231367960();
  v1[16] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v14 = sub_2313673A0();
  v1[19] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[20] = v15;
  v17 = *(v16 + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v18 = sub_231369990();
  v1[22] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[23] = v19;
  v21 = *(v20 + 64);
  v1[24] = OUTLINED_FUNCTION_67();
  v1[25] = swift_task_alloc();
  v22 = sub_231369A00();
  v1[26] = v22;
  OUTLINED_FUNCTION_0(v22);
  v1[27] = v23;
  v25 = *(v24 + 64);
  v1[28] = OUTLINED_FUNCTION_67();
  v1[29] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_231357B4C()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v85 = v0[19];
  v7 = v0[10];
  v8 = v0[11];
  sub_2313699B0();
  sub_231369980();
  v9 = *(v4 + 8);
  v0[30] = v9;
  v0[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_54_0();
  v9(v10);
  sub_2313699B0();
  v83 = sub_231369970();
  v84 = v9;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_54_0();
  v9(v13);
  sub_231367430();
  v14 = (*(v6 + 88))(v5, v85);
  if (v14 == *MEMORY[0x277D60878])
  {
    v15 = v0[21];
    (*(v0[20] + 96))(v15, v0[19]);
    if (!*(v15 + 8))
    {
      goto LABEL_21;
    }

    v17 = v0[28];
    v16 = v0[29];
    v18 = v0[26];
    v19 = v0[27];

    v20 = MEMORY[0x277D723F0];
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    if (v14 != *MEMORY[0x277D60868])
    {

      v39 = *(v22 + 8);
      v40 = OUTLINED_FUNCTION_67_0();
      v41(v40);
      goto LABEL_17;
    }

    v24 = *(v22 + 96);
    v25 = OUTLINED_FUNCTION_67_0();
    v26(v25);
    if (!*(v21 + 8))
    {
      goto LABEL_21;
    }

    v17 = v0[28];
    v27 = v0[29];
    v18 = v0[26];
    v19 = v0[27];

    v20 = MEMORY[0x277D723E8];
  }

  (*(v19 + 104))(v17, *v20, v18);
  v28 = OUTLINED_FUNCTION_67_0();
  v30 = sub_2313122BC(v28, v29);
  v31 = *(v19 + 8);
  v32 = OUTLINED_FUNCTION_54_0();
  v33(v32);
  if ((v30 & 1) == 0 || (v34 = v0[11], v35 = sub_231367470(), !v36))
  {

    goto LABEL_17;
  }

  if (v83 != v35 || v36 != v12)
  {
    v38 = sub_23136A900();

    if ((v38 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:

LABEL_22:
  v52 = v0[15];
  v51 = v0[16];
  v53 = v0[11];
  sub_231367450();
  if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
  {
    sub_2311D1F18(v0[15], &qword_27DD43F08, &qword_231370CD0);
LABEL_31:
    v78 = v0[25];
    v79 = v0[10];
    sub_2313699B0();
    v80 = swift_task_alloc();
    v0[32] = v80;
    *v80 = v0;
    v80[1] = sub_231358020;
    v81 = v0[25];
    v82 = v0[11];

    return sub_231356014();
  }

  v54 = v0[24];
  v55 = v0[22];
  v57 = v0[13];
  v56 = v0[14];
  v58 = v0[12];
  v59 = v0[10];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  v60 = sub_231367930();
  v62 = v61;
  sub_2313699B0();
  sub_231369930();
  v63 = OUTLINED_FUNCTION_54_0();
  v84(v63);
  v64 = sub_231369D70();
  v66 = v65;
  (*(v57 + 8))(v56, v58);
  v68 = v0[17];
  v67 = v0[18];
  v69 = v0[16];
  if (v60 == v64 && v62 == v66)
  {

    v75 = *(v68 + 8);
    v76 = OUTLINED_FUNCTION_67_0();
    v77(v76);
    goto LABEL_31;
  }

  v71 = sub_23136A900();

  v72 = *(v68 + 8);
  v73 = OUTLINED_FUNCTION_67_0();
  v74(v73);
  if (v71)
  {
    goto LABEL_31;
  }

LABEL_17:
  v42 = v0[28];
  v44 = v0[24];
  v43 = v0[25];
  v45 = v0[21];
  v46 = v0[18];
  v48 = v0[14];
  v47 = v0[15];
  (*(v0[27] + 8))(v0[29], v0[26]);

  OUTLINED_FUNCTION_14();

  return v49(0);
}

uint64_t sub_231358020()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[32];
  v3 = v1[31];
  v4 = v1[30];
  v5 = v1[25];
  v6 = v1[22];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 264) = v9;

  v4(v5, v6);
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231358174()
{
  v1 = *(v0 + 80);
  v2 = sub_231356BBC(*(v0 + 264));

  v3 = sub_2313699D0();
  v4 = sub_231357148(v3);

  v5 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v8 = -1 << *(v4 + 32);
  OUTLINED_FUNCTION_20_24();
  v11 = v10 & v9;
  v13 = (63 - v12) >> 6;
  v39 = v4;
  while (v11)
  {
LABEL_7:
    v15 = __clz(__rbit64(v11)) | (v5 << 6);
    v16 = (*(v4 + 56) + 16 * v15);
    v17 = v16[1];
    v40 = *v16;
    if (*(v2 + 16))
    {
      v18 = (*(v4 + 48) + 16 * v15);
      v19 = *v18;
      v20 = v18[1];
      sub_231369EE0();
      sub_231369EE0();
      v21 = sub_231215F6C(v19, v20);
      v22 = v2;
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        v26 = 0;
        v27 = 0;
        v2 = v22;
        v4 = v39;
        goto LABEL_13;
      }

      v25 = (*(v22 + 56) + 16 * v21);
      v26 = *v25;
      v27 = v25[1];
      v2 = v22;
      v4 = v39;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    sub_231369EE0();
LABEL_13:
    v28 = MEMORY[0x277D837D0];
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v40;
    *(v0 + 24) = v17;
    if (v27)
    {
      *(v0 + 72) = v28;
      *(v0 + 48) = v26;
      *(v0 + 56) = v27;
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v11 &= v11 - 1;
    v29 = sub_231369470();
    sub_2311D1F18(v0 + 48, &qword_27DD443C0, &unk_23136E000);
    sub_2311D1F18(v0 + 16, &qword_27DD443C0, &unk_23136E000);
    if ((v29 & 1) == 0)
    {

      v30 = 0;
LABEL_19:

      v31 = *(v0 + 224);
      v33 = *(v0 + 192);
      v32 = *(v0 + 200);
      v34 = *(v0 + 168);
      v35 = *(v0 + 144);
      v37 = *(v0 + 112);
      v36 = *(v0 + 120);
      (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));

      OUTLINED_FUNCTION_14();

      v38(v30);
      return;
    }
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      v30 = 1;
      goto LABEL_19;
    }

    v11 = *(v7 + 8 * v14);
    ++v5;
    if (v11)
    {
      v5 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_23135842C()
{
  OUTLINED_FUNCTION_8();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = sub_231369D90();
  v1[25] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[26] = v6;
  v8 = *(v7 + 64);
  v1[27] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v9);
  v11 = *(v10 + 64);
  v1[28] = OUTLINED_FUNCTION_43();
  v12 = sub_231369D00();
  v1[29] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[30] = v13;
  v15 = *(v14 + 64);
  v1[31] = OUTLINED_FUNCTION_67();
  v1[32] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E28, &qword_2313799F8);
  OUTLINED_FUNCTION_40_0(v16);
  v18 = *(v17 + 64);
  v1[33] = OUTLINED_FUNCTION_43();
  v19 = sub_231369D60();
  v1[34] = v19;
  OUTLINED_FUNCTION_0(v19);
  v1[35] = v20;
  v22 = *(v21 + 64);
  v1[36] = OUTLINED_FUNCTION_67();
  v1[37] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2313585DC()
{
  sub_23123EA8C(v0[22], (v0 + 2), &qword_27DD443C0, &unk_23136E000);
  v1 = v0[33];
  v2 = v0[34];
  if (!v0[5])
  {
    sub_2311D1F18((v0 + 2), &qword_27DD443C0, &unk_23136E000);
    v24 = OUTLINED_FUNCTION_8_31();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v2);
    goto LABEL_6;
  }

  v3 = OUTLINED_FUNCTION_22_22();
  OUTLINED_FUNCTION_9_34(v3);
  if (v4)
  {
LABEL_6:
    sub_2311D1F18(v0[33], &qword_27DD44E28, &qword_2313799F8);
    goto LABEL_7;
  }

  v5 = v0[36];
  v6 = v0[34];
  v7 = v0[35];
  v8 = *(v7 + 32);
  (v8)(v0[37], v0[33], v6);
  v9 = OUTLINED_FUNCTION_64();
  v8(v9);
  v10 = (*(v7 + 88))(v5, v6);
  v11 = v0[35];
  v12 = v0[36];
  v13 = v0[34];
  if (v10 == *MEMORY[0x277D72E38])
  {
    v14 = v0[32];
    v15 = v0[29];
    v16 = v0[30];
    v17 = v0[21];
    (*(v11 + 96))(v0[36], v13);
    v18 = *(v16 + 32);
    v19 = OUTLINED_FUNCTION_64();
    v18(v19);
    (v18)(v17, v14, v15);
    OUTLINED_FUNCTION_62_2();
    goto LABEL_23;
  }

  (*(v11 + 8))(v0[36], v13);
LABEL_7:
  sub_23123EA8C(v0[22], (v0 + 6), &qword_27DD443C0, &unk_23136E000);
  v27 = v0[28];
  v28 = v0[29];
  if (v0[9])
  {
    v29 = OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_9_34(v29);
    if (!v4)
    {
      v30 = v0[31];
      v31 = v0[29];
      v32 = v0[21];
      v33 = *(v0[30] + 32);
      v33(v30, v0[28], v31);
      v33(v32, v30, v31);
      v20 = v32;
      v21 = 0;
      v22 = 1;
      v23 = v31;
      goto LABEL_23;
    }
  }

  else
  {
    sub_2311D1F18((v0 + 6), &qword_27DD443C0, &unk_23136E000);
    v34 = OUTLINED_FUNCTION_8_31();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v28);
  }

  v37 = v0[22];
  sub_2311D1F18(v0[28], &qword_27DD43358, &qword_23136FA90);
  sub_23123EA8C(v37, (v0 + 10), &qword_27DD443C0, &unk_23136E000);
  if (!v0[13])
  {
    sub_2311D1F18((v0 + 10), &qword_27DD443C0, &unk_23136E000);
    goto LABEL_17;
  }

  sub_231207BDC(0, &qword_27DD44E30, 0x277D23958);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_23123EA8C(v0[22], (v0 + 14), &qword_27DD443C0, &unk_23136E000);
    if (v0[17])
    {
      if (swift_dynamicCast())
      {
        sub_23135936C(v0[18], v0[19], v0[21]);

LABEL_24:
        OUTLINED_FUNCTION_23_21();

        OUTLINED_FUNCTION_56_0();

        return v45();
      }
    }

    else
    {
      sub_2311D1F18((v0 + 14), &qword_27DD443C0, &unk_23136E000);
    }

    v23 = v0[29];
    v20 = v0[21];
    v21 = 1;
    v22 = 1;
LABEL_23:
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_24;
  }

  v38 = v0[27];
  v39 = v0[23];
  v0[38] = v0[20];
  sub_231369930();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[39] = v40;
  *v40 = v41;
  v40[1] = sub_231358A30;
  v42 = v0[27];
  v43 = v0[21];

  return sub_231358C14();
}

uint64_t sub_231358A30()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[39];
  v3 = v1[27];
  v4 = v1[26];
  v5 = v1[25];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231358B74()
{
  OUTLINED_FUNCTION_23_21();

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231358C14()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2313698C0();
  v1[10] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_43();
  v8 = sub_231369D90();
  v1[13] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v12 = sub_23136A440();
  v1[16] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v16 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231358D54()
{
  v1 = [*(v0 + 72) value];
  sub_23136A540();
  swift_unknownObjectRelease();
  sub_231207BDC(0, &qword_27DD44E38, 0x277D23918);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = sub_231369CA0();
    v5 = swift_allocBox();
    v7 = v6;
    v8 = [v2 term];
    v9 = sub_231369FD0();
    v11 = v10;

    *v7 = v9;
    v7[1] = v11;
    (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D729B8], v4);
    *v3 = v5;
    v12 = *MEMORY[0x277D72A58];
    v13 = sub_231369D00();
    OUTLINED_FUNCTION_11(v13);
    (*(v14 + 104))(v3, v12, v13);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_12_26();

    OUTLINED_FUNCTION_56_0();

    return v19();
  }

  else
  {
    v21 = *(v0 + 144);
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 64), *(v0 + 104));
    sub_23136A430();
    v22 = *(MEMORY[0x277D7C060] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 152) = v23;
    *v23 = v24;
    v23[1] = sub_231358FCC;
    v25 = *(v0 + 144);
    v26 = *(v0 + 72);
    v27 = *(v0 + 56);

    return MEMORY[0x2821E49D8](v27, v25);
  }
}

uint64_t sub_231358FCC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = *(v2 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_23135916C;
  }

  else
  {
    v7 = sub_2313590D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2313590D0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v2 = sub_231369D00();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  OUTLINED_FUNCTION_12_26();

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_23135916C()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[9];
  sub_231369130();
  v4 = v3;
  v5 = v1;
  v6 = sub_2313698A0();
  v7 = sub_23136A3A0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_2311CB000, v6, v7, "Cannot convert LNValue %@ to TypedValue from error: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B0, &unk_23136EDC0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v15 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[16];
  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[10];
  v22 = v0[7];

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  v23 = sub_231369D00();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  OUTLINED_FUNCTION_12_26();

  OUTLINED_FUNCTION_56_0();

  return v24();
}

uint64_t sub_23135936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v4 || (sub_23136A900() & 1) != 0)
  {
    v7 = 1;
LABEL_7:
    v8 = sub_231369CA0();
    v9 = swift_allocBox();
    *v10 = v7;
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D72988], v8);
    *a3 = v9;
    v11 = *MEMORY[0x277D72A58];
    v12 = sub_231369D00();
    OUTLINED_FUNCTION_11(v12);
    (*(v13 + 104))(a3, v11, v12);
    OUTLINED_FUNCTION_62_2();
    goto LABEL_8;
  }

  v19 = a1 == 0x65736C6166 && a2 == 0xE500000000000000;
  if (v19 || (sub_23136A900() & 1) != 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  sub_231369D00();
  v14 = OUTLINED_FUNCTION_8_31();
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t OUTLINED_FUNCTION_23_21()
{
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
}

uint64_t sub_231359524(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2(v11, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t AppUsageDataService.createDataProvider(candidates:generationId:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = sub_2313698C0();
  v1[16] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[17] = v5;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = sub_231368FB0();
  v1[20] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[21] = v9;
  v11 = *(v10 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v13 = sub_231367960();
  v1[25] = v13;
  OUTLINED_FUNCTION_0(v13);
  v1[26] = v14;
  v16 = *(v15 + 64) + 15;
  v1[27] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2313597C0()
{
  v3 = *(v0 + 112);
  v4 = MEMORY[0x277D837E0];
  *(v0 + 224) = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
  v5 = sub_231369EC0();
  *(v0 + 88) = v5;
  v6 = *(v3 + 16);
  *(v0 + 232) = v6;
  if (v6)
  {
    v7 = *(v0 + 112);
    *(v0 + 296) = *MEMORY[0x277D61258];
    *(v0 + 240) = 0;
    sub_2311CF324(v7 + 32, v0 + 16);
    v8 = OUTLINED_FUNCTION_1_5();
    v10 = v9;
    *(v0 + 248) = v8;
    *(v0 + 256) = v9;
    *(v0 + 264) = swift_getObjectType();
    v11 = *(*(v10 + 8) + 8);
    sub_23136A260();
    v12 = OUTLINED_FUNCTION_1_48();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    *(v0 + 272) = v5;
    if (*(v5 + 16))
    {
      v15 = *(v0 + 120);
      v16 = v15[6];
      __swift_project_boxed_opaque_existential_1(v15 + 2, v15[5]);
      v17 = *(MEMORY[0x277D61080] + 4);
      v18 = swift_task_alloc();
      *(v0 + 280) = v18;
      *v18 = v0;
      v19 = OUTLINED_FUNCTION_0_42(v18);

      return MEMORY[0x2821C7270](v19);
    }

    else
    {
      v20 = *(v0 + 152);

      sub_2313690B0();
      v21 = sub_2313698A0();
      v22 = sub_23136A3A0();
      if (os_log_type_enabled(v21, v22))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        OUTLINED_FUNCTION_57(&dword_2311CB000, v23, v24, "No third party app ids found, skipping Biome query");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_10_34();
      (*(v1 + 8))(v4, v3);
      v25 = sub_231369EC0();
      v26 = type metadata accessor for AppUsageDataProvider();
      OUTLINED_FUNCTION_54();
      *(swift_allocObject() + 16) = v25;
      *(v2 + 24) = v26;
      *(v2 + 32) = &off_2845F7948;

      OUTLINED_FUNCTION_4_34();

      OUTLINED_FUNCTION_56_0();

      return v27();
    }
  }
}

uint64_t sub_231359A80()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[24];
  sub_231369420();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231359AEC()
{
  v6 = *(v1 + 192);
  v5 = *(v1 + 200);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) != 1)
  {
    v0 = *(v1 + 296);
    v2 = *(v1 + 216);
    isUniquelyReferenced_nonNull_native = *(v1 + 176);
    v3 = *(v1 + 184);
    v7 = *(v1 + 160);
    v8 = *(v1 + 168);
    (*(*(v1 + 208) + 32))(v2, v6, v5);
    sub_231367940();
    (*(v8 + 104))(isUniquelyReferenced_nonNull_native, v0, v7);
    v9 = sub_231368FA0();
    v10 = *(v8 + 8);
    v10(isUniquelyReferenced_nonNull_native, v7);
    v10(v3, v7);
    if ((v9 & 1) == 0)
    {
LABEL_25:
      (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));
      goto LABEL_26;
    }

    v11 = *(v1 + 216);
    v0 = sub_231367930();
    v13 = v12;
    v14 = *(v1 + 88);
    if (*(v14 + 16))
    {
      v15 = *(v1 + 88);
      sub_231369EE0();
      sub_231215F6C(v0, v13);
      v2 = v16;

      if (v2)
      {
        goto LABEL_19;
      }

      v14 = *(v1 + 88);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 96) = v14;
    v17 = sub_231215F6C(v0, v13);
    v19 = *(v14 + 16);
    v20 = (v18 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      __break(1u);
      goto LABEL_40;
    }

    v22 = v17;
    v3 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E48, &qword_231379A20);
    if (sub_23136A700())
    {
      v23 = *(v1 + 96);
      v24 = sub_231215F6C(v0, v13);
      if ((v3 & 1) != (v25 & 1))
      {
        OUTLINED_FUNCTION_5_35();

        return sub_23136A970();
      }

      v22 = v24;
    }

    v28 = *(v1 + 96);
    if (v3)
    {
      v29 = v28[7];
      v30 = *(v29 + 8 * v22);
      *(v29 + 8 * v22) = MEMORY[0x277D84F90];
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v28[6] + 16 * v22);
      *v31 = v0;
      v31[1] = v13;
      *(v28[7] + 8 * v22) = MEMORY[0x277D84F90];
      v32 = v28[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        __break(1u);
        return MEMORY[0x2821C7270]();
      }

      v28[2] = v34;
      sub_231369EE0();
    }

    *(v1 + 88) = v28;
LABEL_19:
    v2 = v1 + 56;
    v0 = sub_23135A744((v1 + 56), v0, v13);
    if (!*v35)
    {
LABEL_24:
      (v0)(v2, 0);

      goto LABEL_25;
    }

    v3 = v35;
    v36 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v14 = sub_231368320();
    isUniquelyReferenced_nonNull_native = v37;
    v21 = *v3;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v21;
    if (v38)
    {
LABEL_21:
      v39 = *(v21 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v21 + 24) >> 1)
      {
        v73 = v39 + 1;
        v71 = *(v21 + 16);
        sub_23126DC90();
        v39 = v71;
        v40 = v73;
        v21 = v72;
        *v3 = v72;
      }

      *(v21 + 16) = v40;
      v41 = v21 + 16 * v39;
      *(v41 + 32) = v14;
      *(v41 + 40) = isUniquelyReferenced_nonNull_native;
      goto LABEL_24;
    }

LABEL_40:
    v69 = *(v21 + 16);
    sub_23126DC90();
    v21 = v70;
    *v3 = v70;
    goto LABEL_21;
  }

  sub_23135AE78(v6);
LABEL_26:
  v42 = *(v1 + 232);
  v43 = *(v1 + 240) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  if (v43 == v42)
  {
    v44 = *(v1 + 88);
    *(v1 + 272) = v44;
    if (!*(v44 + 16))
    {
      v60 = *(v1 + 152);

      sub_2313690B0();
      v61 = sub_2313698A0();
      v62 = sub_23136A3A0();
      if (os_log_type_enabled(v61, v62))
      {
        v0 = swift_slowAlloc();
        *v0 = 0;
        OUTLINED_FUNCTION_57(&dword_2311CB000, v63, v64, "No third party app ids found, skipping Biome query");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_10_34();
      (v3[1])(v0, v2);
      v65 = sub_231369EC0();
      v66 = type metadata accessor for AppUsageDataProvider();
      OUTLINED_FUNCTION_54();
      *(swift_allocObject() + 16) = v65;
      *(isUniquelyReferenced_nonNull_native + 24) = v66;
      *(isUniquelyReferenced_nonNull_native + 32) = &off_2845F7948;

      OUTLINED_FUNCTION_4_34();

      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_5_35();

      __asm { BRAA            X1, X16 }
    }

    v45 = *(v1 + 120);
    v46 = v45[6];
    __swift_project_boxed_opaque_existential_1(v45 + 2, v45[5]);
    v47 = *(MEMORY[0x277D61080] + 4);
    v48 = swift_task_alloc();
    *(v1 + 280) = v48;
    *v48 = v1;
    OUTLINED_FUNCTION_0_42(v48);
    OUTLINED_FUNCTION_5_35();

    return MEMORY[0x2821C7270]();
  }

  v50 = *(v1 + 240);
  *(v1 + 240) = v50 + 1;
  sub_2311CF324(*(v1 + 112) + 40 * v50 + 72, v1 + 16);
  v51 = OUTLINED_FUNCTION_1_5();
  v53 = v52;
  *(v1 + 248) = v51;
  *(v1 + 256) = v52;
  *(v1 + 264) = swift_getObjectType();
  v54 = *(*(v53 + 8) + 8);
  v55 = sub_23136A260();
  OUTLINED_FUNCTION_1_48(v55);
  OUTLINED_FUNCTION_5_35();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

uint64_t sub_23135A098()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 280);
  v7 = *v0;
  *(*v0 + 288) = v2;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_23135A18C()
{
  v75 = v0;
  v1 = 0;
  v2 = v0[34];
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  v6 = v0[36];
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v7 = v4 & *(v2 + 64);
  v8 = (63 - v5) >> 6;
  v9 = v0[28];
  v71 = v0[34];
LABEL_4:
  v10 = v1;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v1 = v10;
LABEL_9:
    v11 = __clz(__rbit64(v7)) | (v1 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    if (*(v6 + 16))
    {
      v13 = v9;
      v14 = v6;
      v15 = (*(v2 + 48) + 16 * v11);
      v16 = v73[36];
      v18 = *v15;
      v17 = v15[1];
      v19 = v12;
      sub_231369EE0();
      v20 = v19;
      sub_231369EE0();
      v21 = sub_231215F6C(v18, v17);
      if (v22)
      {
        v6 = v14;
        v23 = *(*(v14 + 56) + 8 * v21);

        v24 = v20;
      }

      else
      {

        v23 = 0;
        v24 = v19;
        v6 = v14;
      }

      v9 = v13;
      v2 = v71;
    }

    else
    {
      v24 = sub_231369EE0();
      v23 = 0;
    }

    v7 &= v7 - 1;
    if (*(v24 + 16))
    {
      v25 = 0;
      v26 = (v24 + 40);
      v67 = v6;
      v68 = v3;
      v69 = *(v24 + 16);
      v70 = v24;
      while (1)
      {
        if (v25 >= *(v24 + 16))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        sub_231369EE0();
        sub_23136A650();

        v74[0] = 0x70417473616C5F5FLL;
        v74[1] = 0xEF5F656761735570;
        MEMORY[0x23192A730](v28, v27);

        if (v9[2] && (sub_231369EE0(), sub_231215F6C(0x70417473616C5F5FLL, 0xEF5F656761735570), v30 = v29, , (v30 & 1) != 0))
        {
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          v74[0] = v9;
          v31 = sub_231215F6C(0x70417473616C5F5FLL, 0xEF5F656761735570);
          if (__OFADD__(v9[2], (v32 & 1) == 0))
          {
            goto LABEL_45;
          }

          v33 = v31;
          v34 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E40, &qword_231379A18);
          if (sub_23136A700())
          {
            v35 = sub_231215F6C(0x70417473616C5F5FLL, 0xEF5F656761735570);
            if ((v34 & 1) != (v36 & 1))
            {

              sub_23136A970();
              return;
            }

            v33 = v35;
          }

          if (v34)
          {

            v9 = v74[0];
            *(*(v74[0] + 56) + 8 * v33) = v23;
          }

          else
          {
            v9 = v74[0];
            *(v74[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
            v37 = (v9[6] + 16 * v33);
            *v37 = 0x70417473616C5F5FLL;
            v37[1] = 0xEF5F656761735570;
            *(v9[7] + 8 * v33) = v23;
            v38 = v9[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_46;
            }

            v9[2] = v40;
          }

          v6 = v67;
          v3 = v68;
        }

        ++v25;
        v26 += 2;
        v24 = v70;
        if (v69 == v25)
        {

          v2 = v71;
          v8 = v72;
          goto LABEL_4;
        }
      }
    }

    v10 = v1;
    v8 = v72;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v1 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v1 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v1);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v41 = v73[36];
  v42 = v73[34];
  v43 = v73[18];

  sub_2313690B0();
  v44 = sub_2313698A0();
  v45 = sub_23136A3A0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v73[17];
  v48 = v73[18];
  v49 = v73[16];
  if (v46)
  {
    v50 = v73[18];
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v74[0] = v52;
    *v51 = 136315138;
    sub_231369EE0();
    v53 = sub_231369E90();
    v55 = v54;

    v56 = sub_2311CFD58(v53, v55, v74);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_2311CB000, v44, v45, "AppUsageDataService data %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v47 + 8))(v50, v49);
  }

  else
  {

    (*(v47 + 8))(v48, v49);
  }

  v57 = v73[13];
  v58 = type metadata accessor for AppUsageDataProvider();
  OUTLINED_FUNCTION_54();
  v59 = swift_allocObject();
  *(v59 + 16) = v9;
  *(v57 + 24) = v58;
  *(v57 + 32) = &off_2845F7948;
  v60 = v73[27];
  v61 = v73[23];
  v62 = v73[24];
  v63 = v73[22];
  v65 = v73[18];
  v64 = v73[19];
  *v73[13] = v59;

  OUTLINED_FUNCTION_56_0();

  v66();
}

void (*sub_23135A744(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23135A9B0(v6, a2, a3);
  return sub_23135A7B8;
}

void sub_23135A7B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t AppUsageDataService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_23135A85C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23122A888;

  return AppUsageDataService.createDataProvider(candidates:generationId:environment:)();
}

double sub_23135A908@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_231215F6C(a1, a2), (v7 & 1) != 0))
  {
    result = *(*(v5 + 56) + 8 * v6);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = result;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void (*sub_23135A9B0(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_23135ACC4(v7);
  v7[9] = sub_23135AAA8(v7 + 4, a2, a3);
  return sub_23135AA48;
}

void sub_23135AA48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23135AAA8(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_231215F6C(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E48, &qword_231379A20);
  if (sub_23136A700())
  {
    v14 = *v4;
    v15 = sub_231215F6C(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_23135ABE8;
}

void sub_23135ABE8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_23125A900(v4, v1[1], v1[2], v2, v5);
      sub_231369EE0();
    }
  }

  else if ((*a1)[5])
  {
    sub_23135AF88(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    sub_23136A720();
  }

  v6 = *v1;
  sub_231369EE0();

  free(v1);
}

uint64_t (*sub_23135ACC4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23135ACEC;
}

uint64_t *sub_23135ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_23135AE08(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t *sub_23135AE08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t sub_23135AE78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NoOpSystemEnvironmentService.getDeviceLocation()()
{
  v0 = sub_23135B5F0();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

unint64_t sub_23135B010()
{
  result = qword_280F7CB90;
  if (!qword_280F7CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CB90);
  }

  return result;
}

uint64_t sub_23135B078()
{
  sub_23135B010();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NoOpSystemEnvironmentService.getUserInterface()()
{
  v0 = sub_23135B5F0();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t NoOpSystemEnvironmentService.getDeviceState()@<X0>(uint64_t *a1@<X8>)
{
  v34 = *v1;
  v3 = sub_231367D90();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_2313698C0();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  sub_2313690C0();

  v21 = sub_2313698A0();
  v22 = sub_23136A3A0();

  if (os_log_type_enabled(v21, v22))
  {
    v33 = v15;
    v23 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v23 = 136315138;

    v24 = sub_23136A010();
    v35 = v12;
    v26 = v6;
    v27 = v3;
    v28 = v11;
    v29 = a1;
    v30 = sub_2311CFD58(v24, v25, &v36);

    *(v23 + 4) = v30;
    a1 = v29;
    v11 = v28;
    v3 = v27;
    v6 = v26;
    _os_log_impl(&dword_2311CB000, v21, v22, "%s getting deviceState", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v33 + 8))(v20, v35);
  }

  else
  {

    (*(v15 + 8))(v20, v12);
  }

  (*(v6 + 104))(v11, *MEMORY[0x277D60BE0], v3);
  a1[3] = sub_231367090();
  a1[4] = sub_23135CE74(&qword_280F7CB08, MEMORY[0x277D60858]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_231367060();
}

uint64_t sub_23135B434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23135B4C0;

  return NoOpSystemEnvironmentService.getMotionActivity()();
}

uint64_t sub_23135B4C0()
{
  OUTLINED_FUNCTION_7_30();
  v5 = *(v4 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_23135B5F0()
{
  sub_23135B010();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

Swift::Double __swiftcall DefaultSystemEnvironmentService.getCurrentTime()()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  sub_231368F20();
  return result;
}

uint64_t DefaultSystemEnvironmentService.getDeviceState()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_231366860();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = sub_2313684A0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_4();
  v74 = v13 - v12;
  v14 = sub_231367D90();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v71 = v16;
  v72 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v73 = v20 - v19;
  v21 = sub_231367650();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v69 = v23;
  v70 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v68 = (v27 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  v67 = *(v28 - 8);
  v29 = *(v67 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v64 - v33;
  v66 = sub_2313698C0();
  v35 = OUTLINED_FUNCTION_0_0(v66);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_4();
  v42 = v41 - v40;
  sub_2313690C0();

  v43 = sub_2313698A0();
  v44 = sub_23136A3A0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v64[1] = v9;
    v46 = v45;
    v47 = swift_slowAlloc();
    v65 = a1;
    v48 = v47;
    v75 = v2;
    v76 = v47;
    *v46 = 136315138;

    v49 = sub_23136A010();
    v51 = sub_2311CFD58(v49, v50, &v76);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_2311CB000, v43, v44, "%s getting deviceState", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    a1 = v65;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v37 + 8))(v42, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E50, &qword_231379AD8);
  v52 = *(v67 + 72);
  v53 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_23136B670;
  static DefaultSystemEnvironmentService.getDeviceType()(v54 + v53);
  sub_23135CB14(v54 + v53, v34);
  sub_23135CB84(v34, v31);
  v55 = v70;
  if (__swift_getEnumTagSinglePayload(v31, 1, v70) == 1)
  {
    sub_23135CBF4(v31);
  }

  else
  {
    v56 = *(v69 + 32);
    v56(v68, v31, v55);
    v57 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126F5F0(0, *(v57 + 16) + 1, 1, v57);
      v57 = v62;
    }

    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_23126F5F0(v58 > 1, v59 + 1, 1, v57);
      v57 = v63;
    }

    *(v57 + 16) = v59 + 1;
    v56(v57 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v59, v68, v55);
  }

  swift_setDeallocating();
  sub_231322C34();
  v60 = [objc_opt_self() sharedPreferences];
  sub_23135CC5C(v60);
  (*(v71 + 104))(v73, *MEMORY[0x277D60BE8], v72);
  sub_231368490();
  sub_2313667B0();
  a1[3] = sub_2313674E0();
  a1[4] = sub_23135CE74(&qword_280F7CAD0, MEMORY[0x277D608E8]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2313674D0();
}

id static DefaultSystemEnvironmentService.getDeviceType()@<X0>(uint64_t a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    switch(deviceClassNumber)
    {
      case 1:
        v5 = MEMORY[0x277D609A8];
        goto LABEL_12;
      case 2:
        v5 = MEMORY[0x277D60990];
        goto LABEL_12;
      case 3:
        v5 = MEMORY[0x277D60998];
        goto LABEL_12;
      case 4:
        v5 = MEMORY[0x277D609B0];
        goto LABEL_12;
      case 6:
        v5 = MEMORY[0x277D609A0];
        goto LABEL_12;
      case 7:
        v5 = MEMORY[0x277D609C0];
        goto LABEL_12;
      case 9:
        v5 = MEMORY[0x277D60988];
        goto LABEL_12;
      case 11:
        v5 = MEMORY[0x277D609C8];
LABEL_12:
        v9 = *v5;
        v10 = sub_231367650();
        OUTLINED_FUNCTION_11(v10);
        (*(v11 + 104))(a1, v9, v10);
        v7 = a1;
        v8 = 0;
        v6 = v10;
        break;
      default:
        v6 = sub_231367650();
        v7 = a1;
        v8 = 1;
        break;
    }

    return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DefaultSystemEnvironmentService.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

uint64_t DefaultSystemEnvironmentService.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_23135BE48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23135D59C;

  return DefaultSystemEnvironmentService.getMotionActivity()();
}

uint64_t DeviceTypeLocalePair.deviceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_231367650();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t DeviceTypeLocalePair.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceTypeLocalePair() + 20);
  v4 = sub_231366860();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DeviceTypeLocalePair.description.getter()
{
  v4 = sub_231367640();
  MEMORY[0x23192A730](95, 0xE100000000000000);
  v1 = v0 + *(type metadata accessor for DeviceTypeLocalePair() + 20);
  v2 = sub_2313667C0();
  MEMORY[0x23192A730](v2);

  return v4;
}

uint64_t DeviceTypeLocalePair.init(deviceType:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231367650();
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 32))(a3, a1);
  v8 = *(type metadata accessor for DeviceTypeLocalePair() + 20);
  v9 = sub_231366860();
  OUTLINED_FUNCTION_11(v9);
  v11 = *(v10 + 32);

  return v11(a3 + v8, a2);
}

uint64_t static DeviceTypeLocalePair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2313119B0(a1, a2))
  {
    v2 = *(type metadata accessor for DeviceTypeLocalePair() + 20);

    JUMPOUT(0x231926EC0);
  }

  return 0;
}

uint64_t sub_23135C16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656369766564 && a2 == 0xEA00000000006570;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23135C238(char a1)
{
  if (a1)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x7954656369766564;
  }
}

uint64_t sub_23135C278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23135C16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23135C2A0(uint64_t a1)
{
  v2 = sub_23135CD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23135C2DC(uint64_t a1)
{
  v2 = sub_23135CD18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceTypeLocalePair.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E58, &qword_231379AE0);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23135CD18();
  sub_23136AA40();
  v18[15] = 0;
  sub_231367650();
  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v12, v13);
  OUTLINED_FUNCTION_8_32();
  if (!v1)
  {
    v14 = *(type metadata accessor for DeviceTypeLocalePair() + 20);
    v18[14] = 1;
    sub_231366860();
    OUTLINED_FUNCTION_0_43();
    sub_23135CE74(v15, v16);
    OUTLINED_FUNCTION_8_32();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t DeviceTypeLocalePair.hash(into:)()
{
  sub_231367650();
  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v0, v1);
  sub_231369F40();
  v2 = *(type metadata accessor for DeviceTypeLocalePair() + 20);
  sub_231366860();
  OUTLINED_FUNCTION_0_43();
  sub_23135CE74(v3, v4);
  return sub_231369F40();
}

uint64_t DeviceTypeLocalePair.hashValue.getter()
{
  sub_23136A9D0();
  sub_231367650();
  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v0, v1);
  sub_231369F40();
  v2 = *(type metadata accessor for DeviceTypeLocalePair() + 20);
  sub_231366860();
  OUTLINED_FUNCTION_0_43();
  sub_23135CE74(v3, v4);
  sub_231369F40();
  return sub_23136AA00();
}

uint64_t DeviceTypeLocalePair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_231366860();
  v4 = OUTLINED_FUNCTION_0_0(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v40 = sub_231367650();
  v11 = OUTLINED_FUNCTION_0_0(v40);
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v39 = v16 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E88, &qword_231379AE8);
  v17 = OUTLINED_FUNCTION_0_0(v41);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = type metadata accessor for DeviceTypeLocalePair();
  v21 = OUTLINED_FUNCTION_11(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23135CD18();
  sub_23136AA20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v28, v29);
  sub_23136A820();
  (*(v37 + 32))(v26, v39, v40);
  OUTLINED_FUNCTION_0_43();
  sub_23135CE74(v30, v31);
  sub_23136A820();
  v32 = OUTLINED_FUNCTION_6_32();
  v33(v32);
  (*(v35 + 32))(v26 + *(v20 + 20), v10, v38);
  sub_23135CD6C(v26, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_23135CDD0(v26);
}

uint64_t sub_23135C9F4(uint64_t a1, uint64_t a2)
{
  sub_23136A9D0();
  sub_231367650();
  sub_23135CE74(&qword_27DD44E78, MEMORY[0x277D609D0]);
  sub_231369F40();
  v3 = *(a2 + 20);
  sub_231366860();
  sub_23135CE74(&qword_27DD44E80, MEMORY[0x277CC9788]);
  sub_231369F40();
  return sub_23136AA00();
}

uint64_t sub_23135CB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135CB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135CBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23135CC5C(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

uint64_t type metadata accessor for DeviceTypeLocalePair()
{
  result = qword_27DD44EA8;
  if (!qword_27DD44EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23135CD18()
{
  result = qword_27DD44E60;
  if (!qword_27DD44E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44E60);
  }

  return result;
}

uint64_t sub_23135CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceTypeLocalePair();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135CDD0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceTypeLocalePair();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23135CE74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of SystemEnvironmentService.getMotionActivity()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23135CFFC;

  return v9(a1, a2);
}

uint64_t sub_23135CFFC()
{
  OUTLINED_FUNCTION_7_30();
  v4 = *(v3 + 16);
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(v1, v0);
}

uint64_t sub_23135D200()
{
  result = sub_231367650();
  if (v1 <= 0x3F)
  {
    result = sub_231366860();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceTypeLocalePair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23135D440()
{
  result = qword_27DD44EB8;
  if (!qword_27DD44EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44EB8);
  }

  return result;
}

unint64_t sub_23135D498()
{
  result = qword_27DD44EC0;
  if (!qword_27DD44EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44EC0);
  }

  return result;
}

unint64_t sub_23135D4F0()
{
  result = qword_27DD44EC8;
  if (!qword_27DD44EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44EC8);
  }

  return result;
}

unint64_t sub_23135D548()
{
  result = qword_27DD44ED0;
  if (!qword_27DD44ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44ED0);
  }

  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultSystemEnvironmentService.getDeviceLocation()()
{
  v2 = NoOpSystemEnvironmentService.getDeviceLocation()();
  internal = v2._internal;
  isa = v2.super.isa;
  result._internal = internal;
  result.super.isa = isa;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultSystemEnvironmentService.getUserInterface()()
{
  v2 = NoOpSystemEnvironmentService.getUserInterface()();
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t type metadata accessor for Environment()
{
  result = qword_280F84DE0;
  if (!qword_280F84DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23135D68C()
{
  sub_23135D928(319, &qword_280F7C7F0, sub_23135D880, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2312AFEC4();
    if (v1 <= 0x3F)
    {
      sub_23135D928(319, &qword_280F7C840, MEMORY[0x277D60AA0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23135D8C4();
        if (v3 <= 0x3F)
        {
          sub_231367D90();
          if (v4 <= 0x3F)
          {
            sub_23135D928(319, &qword_280F7C848, MEMORY[0x277D609D0], MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_2313684A0();
              if (v6 <= 0x3F)
              {
                sub_231366860();
                if (v7 <= 0x3F)
                {
                  sub_231367070();
                  if (v8 <= 0x3F)
                  {
                    sub_231367CF0();
                    if (v9 <= 0x3F)
                    {
                      sub_23135D98C();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_23135D880()
{
  result = qword_280F7C7F8;
  if (!qword_280F7C7F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7F8);
  }

  return result;
}

void sub_23135D8C4()
{
  if (!qword_280F7C858)
  {
    v0 = sub_231369EF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C858);
    }
  }
}

void sub_23135D928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23135D98C()
{
  if (!qword_280F7C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44ED8, qword_231379EF8);
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C870);
    }
  }
}

void sub_23135D9F0()
{
  v31 = sub_231367890();
  v1 = OUTLINED_FUNCTION_0_0(v31);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v7 = *(v0 + *(OUTLINED_FUNCTION_8_33(v6) + 60));
  v8 = MEMORY[0x231928390]();
  v10 = v8 + 64;
  v9 = *(v8 + 64);
  v11 = OUTLINED_FUNCTION_3_42(v8);
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v32 = v11;
  sub_231369EE0();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v16)
          {
            goto LABEL_18;
          }

          v14 = *(v10 + 8 * v19);
          ++v17;
          if (v14)
          {
            v17 = v19;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

LABEL_7:
      v20 = (*(v3 + 16))(v30, *(v32 + 56) + *(v3 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v31);
      v21 = MEMORY[0x231927F00](v20);
      (*(v3 + 8))(v30, v31);
      v22 = *(v21 + 16);
      v23 = *(v18 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_28;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v18 + 24) >> 1)
      {
        sub_23126E1B8();
        v18 = v24;
      }

      v14 &= v14 - 1;
      if (!*(v21 + 16))
      {
        break;
      }

      if ((*(v18 + 24) >> 1) - *(v18 + 16) < v22)
      {
        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE0, &qword_231370E88);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v25 = *(v18 + 16);
        v26 = __OFADD__(v25, v22);
        v27 = v25 + v22;
        if (v26)
        {
          goto LABEL_30;
        }

        *(v18 + 16) = v27;
      }
    }
  }

  while (!v22);
  __break(1u);
LABEL_18:

  v28 = 0;
  v29 = *(v18 + 16);
  while (1)
  {
    if (v29 == v28)
    {

      sub_231367A90();
      return;
    }

    if (v28 >= *(v18 + 16))
    {
      goto LABEL_27;
    }

    v33 = *(v18 + 16 * v28 + 32);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE0, &qword_231370E88);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v28;
  }
}

void sub_23135DCE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2313689A0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v59 = v12 - v11;
  v56 = sub_231367890();
  v13 = OUTLINED_FUNCTION_0_0(v56);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v19 = *(v3 + *(OUTLINED_FUNCTION_8_33(v18) + 60));
  v20 = MEMORY[0x231928390]();
  v22 = v20 + 64;
  v21 = *(v20 + 64);
  v23 = OUTLINED_FUNCTION_3_42(v20);
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v55 = v15;
  v57 = v23;
  sub_231369EE0();
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v52 = a2;
  v53 = v5;
  do
  {
    while (1)
    {
      if (!v26)
      {
        while (1)
        {
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v31 >= v28)
          {
            goto LABEL_21;
          }

          v26 = *(v22 + 8 * v31);
          ++v29;
          if (v26)
          {
            v29 = v31;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

LABEL_7:
      (*(v55 + 16))(v54, *(v57 + 56) + *(v55 + 72) * (__clz(__rbit64(v26)) | (v29 << 6)), v56);
      v32 = sub_231367860();
      (*(v55 + 8))(v54, v56);
      v33 = *(v32 + 16);
      v34 = *(v30 + 16);
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v35 > *(v30 + 24) >> 1)
      {
        if (v34 <= v35)
        {
          v37 = v34 + v33;
        }

        else
        {
          v37 = v34;
        }

        sub_23126DA08(isUniquelyReferenced_nonNull_native, v37, 1, v30);
        v30 = v38;
      }

      a2 = v52;
      v5 = v53;
      v26 &= v26 - 1;
      if (!*(v32 + 16))
      {
        break;
      }

      if ((*(v30 + 24) >> 1) - *(v30 + 16) < v33)
      {
        goto LABEL_37;
      }

      v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v40 = *(v8 + 72);
      swift_arrayInitWithCopy();

      if (v33)
      {
        v41 = *(v30 + 16);
        v42 = __OFADD__(v41, v33);
        v43 = v41 + v33;
        if (v42)
        {
          goto LABEL_38;
        }

        *(v30 + 16) = v43;
      }
    }
  }

  while (!v33);
  __break(1u);
LABEL_21:

  v44 = 0;
  v45 = *(v30 + 16);
  while (1)
  {
    if (v45 == v44)
    {

      v49 = 1;
      v50 = a3;
      goto LABEL_33;
    }

    if (v44 >= *(v30 + 16))
    {
      goto LABEL_35;
    }

    (*(v8 + 16))(v59, v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44, v5);
    if (sub_231368980() == a1 && v46 == a2)
    {
      break;
    }

    v48 = sub_23136A900();

    if (v48)
    {
      goto LABEL_32;
    }

    (*(v8 + 8))(v59, v5);
    ++v44;
  }

LABEL_32:

  v50 = a3;
  (*(v8 + 32))(a3, v59, v5);
  v49 = 0;
LABEL_33:
  __swift_storeEnumTagSinglePayload(v50, v49, 1, v5);
}

uint64_t sub_23135E0C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43730, &qword_23136D550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v76 - v4;
  v6 = sub_231366750();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = sub_2313698C0();
  v16 = OUTLINED_FUNCTION_0_0(v15);
  v77 = v17;
  v78 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v76 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_2313690F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44040, &qword_231370EF8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_231377310;
  *(v24 + 32) = 0x6E6F697461636F6CLL;
  *(v24 + 40) = 0xE800000000000000;
  v79 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EE0, &qword_231379FF8);
  v25 = sub_23136A4C0();
  v26 = MEMORY[0x277D837D0];
  *(v24 + 48) = v25;
  *(v24 + 56) = v27;
  *(v24 + 72) = v26;
  strcpy((v24 + 80), "motionActivity");
  *(v24 + 95) = -18;
  if (v0[2])
  {
    v28 = v0[1];
    v29 = v0[2];
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v26 = 0;
    *(v24 + 112) = 0;
  }

  *(v24 + 96) = v28;
  *(v24 + 104) = v29;
  *(v24 + 120) = v26;
  strcpy((v24 + 128), "userInterface");
  *(v24 + 142) = -4864;
  v30 = v0[4];
  if (v30)
  {
    v31 = v1[3];
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    *(v24 + 160) = 0;
  }

  *(v24 + 144) = v31;
  *(v24 + 152) = v30;
  *(v24 + 168) = v32;
  strcpy((v24 + 176), "generationTs");
  *(v24 + 189) = 0;
  *(v24 + 190) = -5120;
  v33 = v1[7];
  sub_231369EE0();
  sub_231369EE0();
  sub_2313666D0();
  sub_231366820();
  v34 = sub_231366860();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v34);
  v35 = sub_2313666F0();
  v37 = v36;
  sub_2311EB450(v5, &qword_27DD43730, &qword_23136D550);
  (*(v9 + 8))(v14, v6);
  *(v24 + 192) = v35;
  *(v24 + 200) = v37;
  *(v24 + 216) = MEMORY[0x277D837D0];
  *(v24 + 224) = 0xD000000000000013;
  *(v24 + 232) = 0x80000002313825E0;
  v38 = type metadata accessor for Environment();
  v39 = v38[12];
  v40 = sub_2313684A0();
  *(v24 + 264) = v40;
  __swift_allocate_boxed_opaque_existential_1((v24 + 240));
  OUTLINED_FUNCTION_26_0(v40);
  (*(v41 + 16))();
  *(v24 + 272) = 0xD000000000000011;
  *(v24 + 280) = 0x8000000231382600;
  v42 = v38[10];
  v43 = sub_231367D90();
  *(v24 + 312) = v43;
  __swift_allocate_boxed_opaque_existential_1((v24 + 288));
  OUTLINED_FUNCTION_26_0(v43);
  (*(v44 + 16))();
  *(v24 + 320) = 0x7954656369766564;
  *(v24 + 328) = 0xEB00000000736570;
  v45 = *(v1 + v38[11]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EE8, &unk_23137A000);
  *(v24 + 336) = v45;
  *(v24 + 360) = v46;
  *(v24 + 368) = 0x61636F4C69726973;
  *(v24 + 376) = 0xEA0000000000656CLL;
  v47 = v38[13];
  *(v24 + 408) = v34;
  __swift_allocate_boxed_opaque_existential_1((v24 + 384));
  OUTLINED_FUNCTION_26_0(v34);
  (*(v48 + 16))();
  strcpy((v24 + 416), "responseMode");
  *(v24 + 429) = 0;
  *(v24 + 430) = -5120;
  v49 = v38[14];
  v50 = sub_231367070();
  *(v24 + 456) = v50;
  __swift_allocate_boxed_opaque_existential_1((v24 + 432));
  OUTLINED_FUNCTION_26_0(v50);
  (*(v51 + 16))();
  *(v24 + 464) = 0xD000000000000010;
  *(v24 + 472) = 0x8000000231382620;
  v52 = *(v1 + v38[16]);
  if (v52)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44ED8, qword_231379EF8);
  }

  else
  {
    v53 = 0;
    *(v24 + 488) = 0;
    *(v24 + 496) = 0;
  }

  *(v24 + 480) = v52;
  *(v24 + 504) = v53;
  sub_231369EE0();
  sub_231369EE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44048, &unk_231370F00);
  OUTLINED_FUNCTION_2_34();
  v54 = sub_231369870();
  v56 = v55;

  v57 = v78;
  v58 = *(v77 + 8);
  v58(v23, v78);
  MEMORY[0x23192A730](v54, v56);

  OUTLINED_FUNCTION_7_31();
  v59 = v76;
  sub_2313690F0();
  v60 = v1[5];
  sub_231367B30();
  OUTLINED_FUNCTION_2_34();
  v61 = OUTLINED_FUNCTION_6_33();
  v63 = v62;
  v58(v59, v57);
  MEMORY[0x23192A730](v61, v63);

  MEMORY[0x23192A730](0xD000000000000015, 0x8000000231382660);
  sub_2313690F0();
  v64 = v1[6];
  v65 = sub_231369EE0();
  sub_23122AB7C(v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
  OUTLINED_FUNCTION_2_34();
  v66 = OUTLINED_FUNCTION_6_33();
  v68 = v67;

  v58(v59, v57);
  MEMORY[0x23192A730](v66, v68);

  OUTLINED_FUNCTION_7_31();
  v69 = sub_2313690F0();
  v70 = *(v1 + v38[15]);
  v71 = MEMORY[0x231928390](v69);
  sub_23122ABA8(v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  OUTLINED_FUNCTION_2_34();
  v72 = OUTLINED_FUNCTION_6_33();
  v74 = v73;

  v58(v59, v57);
  MEMORY[0x23192A730](v72, v74);

  return v80;
}

uint64_t sub_23135E8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_2311EB398(a3, v6 + 64, &qword_27DD443C0, &unk_23136E000);
  sub_231369EE0();
  return v6;
}

uint64_t sub_23135E974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_23136D290;
  *(v0 + 56) = v1;
  *(v0 + 32) = 8224;
  *(v0 + 40) = 0xE200000000000000;
  *(v0 + 88) = sub_231368100();
  __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  sub_231367B00();
  sub_231367AE0();
  v2 = v8;
  if (v8)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 120) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_2311EB450(v7, &qword_27DD432F8, &qword_23136DEE0);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_231367B10();
  *(v0 + 152) = MEMORY[0x277D839F8];
  *(v0 + 128) = v5;
  return v0;
}

uint64_t sub_23135EAA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_23136D280;
  *(v2 + 56) = v3;
  *(v2 + 32) = 8224;
  *(v2 + 40) = 0xE200000000000000;
  sub_2311EB398(a1, v9, &qword_27DD43558, &qword_231374890);
  v4 = v9[0];
  v5 = v9[1];
  *(v2 + 88) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  sub_2311EB398(a1, &v7, &qword_27DD43558, &qword_231374890);

  sub_2312250F8(&v8, (v2 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v2;
}

uint64_t sub_23135EB94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D837D0];
  *(v10 + 16) = xmmword_23136D280;
  *(v10 + 56) = v11;
  *(v10 + 32) = 8224;
  *(v10 + 40) = 0xE200000000000000;
  sub_2311EB398(a1, v9, &qword_27DD43908, &unk_23136EBA0);
  v12 = *v9;
  v13 = *(v9 + 1);
  v14 = *(v3 + 56);
  *(v10 + 88) = v11;
  *(v10 + 64) = v12;
  *(v10 + 72) = v13;
  sub_2311EB398(a1, v6, &qword_27DD43908, &unk_23136EBA0);
  v15 = *(v6 + 1);

  v16 = *(v3 + 56);
  v17 = sub_231367890();
  *(v10 + 120) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 96));
  v19 = *(v17 - 8);
  (*(v19 + 32))(boxed_opaque_existential_1, &v6[v16], v17);
  (*(v19 + 8))(&v9[v14], v17);
  return v10;
}

id sub_23135ED58()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_23135ED80()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_231369EE0();
  return v1;
}

uint64_t sub_23135EDB0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_231369EE0();
  return v1;
}

uint64_t sub_23135EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_2313684A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23135EE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_231367D90();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23135EEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_231366860();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23135EF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_231367070();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_23135EFE0(uint64_t a1)
{
  result = sub_23135F008();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23135F008()
{
  result = qword_280F84DF0[0];
  if (!qword_280F84DF0[0])
  {
    type metadata accessor for Environment();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F84DF0);
  }

  return result;
}

void OUTLINED_FUNCTION_7_31()
{

  JUMPOUT(0x23192A730);
}

uint64_t sub_23135F080(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_23135F0EC(a1, a2, a3, a4);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v4 + 16) = v7;
  return v4;
}

uint64_t sub_23135F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a2;
  v50 = sub_2313698C0();
  v7 = OUTLINED_FUNCTION_0_0(v50);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v47 - v15;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v52 = a4;
  v51 = a3;
  if (v16)
  {
    v48 = v14;
    v53 = v9;
    *&v57[0] = MEMORY[0x277D84F90];
    sub_2311F581C(0, v16, 0);
    type metadata accessor for Generators();
    v17 = *&v57[0];
    v18 = a1 + 32;
    v55 = xmmword_23136B670;
    do
    {
      sub_231361B84(v18, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EF0, &qword_23137A218);
      inited = swift_initStackObject();
      *(inited + 16) = v55;
      *(inited + 32) = sub_23135FF6C(v58);
      *(inited + 40) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F0, &unk_23136BC80);
      OUTLINED_FUNCTION_11_28();
      v21 = swift_allocObject();
      *(v21 + 16) = v55;
      sub_2311CF324(&v59, v21 + 32);
      *(inited + 48) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FB0, &unk_231370E40);
      v22 = sub_231369EC0();
      sub_231361BBC(v58);
      *&v57[0] = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2311F581C(v23 > 1, v24 + 1, 1);
        v17 = *&v57[0];
      }

      *(v17 + 16) = v24 + 1;
      *(v17 + 8 * v24 + 32) = v22;
      v18 += 80;
      --v16;
    }

    while (v16);
    v9 = v53;
    v14 = v48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FB0, &unk_231370E40);
  v25 = sub_231369EC0();
  v26 = 0;
  v27 = *(v17 + 16);
  while (v27 != v26)
  {
    if (v26 >= *(v17 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v28 = *(v17 + 8 * v26 + 32);
    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = v25;
    sub_231361BEC(v28, sub_231362010, 0, isUniquelyReferenced_nonNull_native, v58);
    ++v26;
    v25 = *&v58[0];
  }

  v30 = v49;
  sub_231369170();
  sub_231369880();
  v33 = *(v9 + 8);
  v32 = v9 + 8;
  v31 = v33;
  v34 = v50;
  v33(v30, v50);
  sub_231369170();
  v35 = v54;
  sub_2311CF324(v54, v58);
  v36 = sub_2313698A0();
  v37 = sub_23136A390();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315138;
    sub_2311CF324(v58, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EF8, &unk_23137A220);
    v40 = sub_23136A010();
    v53 = v32;
    v41 = v34;
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v44 = sub_2311CFD58(v40, v43, &v56);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_2311CB000, v36, v37, "OwnerDispatcherGenerator:: using owner extractors: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v35 = v54;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v31(v14, v41);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v31(v14, v34);
  }

  sub_2311CF324(v35, v58);
  sub_2311CF324(v51, v57);
  type metadata accessor for Generators();
  v45 = swift_allocObject();
  sub_2313602F0(v25, v58, v57, v52);

  return v45;
}

uint64_t sub_23135F690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23135F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14[15] + 16);
  sub_23135F934(v14[12], v14[13], v14 + 7);
  if (v14[10])
  {
    sub_2311D38A8((v14 + 7), (v14 + 2));
    v16 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
    v17 = *(v16 + 8);
    v18 = *(MEMORY[0x277D60D88] + 4);
    v19 = swift_task_alloc();
    v14[16] = v19;
    *v19 = v14;
    v19[1] = sub_23135F7EC;
    v20 = v14[13];
    v21 = v14[14];
    v22 = OUTLINED_FUNCTION_13_26(v14[12]);

    return MEMORY[0x2821C6CE8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_231228E9C((v14 + 7), &qword_27DD44F08, &qword_23137A240);
    OUTLINED_FUNCTION_14();
    v31 = MEMORY[0x277D84F90];

    return v30(v31);
  }
}

uint64_t sub_23135F7EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23135F8D8()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_23135F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_2313698C0();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = v4[6];
  v20 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v19);
  v21 = (*(v20 + 8))(a1, a2, v19, v20);
  sub_231369170();
  sub_231369EE0();
  v22 = sub_2313698A0();
  v23 = sub_23136A390();

  v24 = os_log_type_enabled(v22, v23);
  v74 = v9;
  v75 = v4;
  v72 = v12;
  v73 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v77[0] = v26;
    *v25 = 136315138;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v28 = MEMORY[0x23192A860](v21, v27);
    v30 = v12;
    v31 = sub_2311CFD58(v28, v29, v77);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_2311CB000, v22, v23, "OwnerDispatcherGenerator:: calculated owners of interaction: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v4 = v75;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v70 = *(v30 + 8);
    v70(v18, v74);
  }

  else
  {

    v70 = *(v12 + 8);
    v70(v18, v9);
  }

  v32 = 0;
  v33 = *(v21 + 16);
  v34 = MEMORY[0x277D84F90];
LABEL_5:
  v35 = v21 + 32 + 40 * v32;
  while (v33 != v32)
  {
    if (v32 >= *(v21 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1Tm(v77);

      __break(1u);
      return result;
    }

    sub_2311CF324(v35, v77);
    sub_231360334(v77, v4, &v76);
    ++v32;
    v35 += 40;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    v36 = v76;
    if (v76)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v34 + 16);
        sub_23126E324();
        v34 = v39;
      }

      v37 = *(v34 + 16);
      if (v37 >= *(v34 + 24) >> 1)
      {
        sub_23126E324();
        v34 = v40;
      }

      *(v34 + 16) = v37 + 1;
      *(v34 + 8 * v37 + 32) = v36;
      v4 = v75;
      goto LABEL_5;
    }
  }

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v43 = *(v34 + 16);
  while (v43 != v41)
  {
    if (v41 >= *(v34 + 16))
    {
      goto LABEL_32;
    }

    v44 = v34 + 8 * v41;
    v45 = *(v44 + 32);
    v46 = *(v45 + 16);
    v47 = *(v42 + 16);
    if (__OFADD__(v47, v46))
    {
      goto LABEL_33;
    }

    v48 = *(v44 + 32);
    sub_231369EE0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v47 + v46 > *(v42 + 24) >> 1)
    {
      sub_23126DF2C();
      v42 = v49;
    }

    if (*(v45 + 16))
    {
      if ((*(v42 + 24) >> 1) - *(v42 + 16) < v46)
      {
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
      swift_arrayInitWithCopy();

      if (v46)
      {
        v50 = *(v42 + 16);
        v51 = __OFADD__(v50, v46);
        v52 = v50 + v46;
        if (v51)
        {
          goto LABEL_36;
        }

        *(v42 + 16) = v52;
      }
    }

    else
    {

      if (v46)
      {
        goto LABEL_34;
      }
    }

    ++v41;
  }

  v53 = v71;
  sub_231369170();
  sub_231369EE0();
  v54 = sub_2313698A0();
  v55 = sub_23136A390();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v77[0] = v57;
    *v56 = 136315138;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
    v59 = MEMORY[0x23192A860](v42, v58);
    v61 = sub_2311CFD58(v59, v60, v77);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_2311CB000, v54, v55, "OwnerDispatcherGenerator:: Using generators: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v70(v53, v74);
  v62 = v73;
  v63 = v75;
  sub_2311CF324((v75 + 8), v77);
  v64 = v63[13];
  v65 = type metadata accessor for GeneratorDelegation();
  OUTLINED_FUNCTION_11_28();
  v66 = swift_allocObject();
  *(v66 + 16) = v42;
  sub_2311D38A8(v77, v66 + 24);
  *(v66 + 64) = v64;
  v62[3] = v65;
  v62[4] = sub_231362554(&qword_280F82C50, v67, type metadata accessor for GeneratorDelegation);
  *v62 = v66;
}

uint64_t sub_23135FF6C(void *a1)
{
  v2 = sub_231366B70();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_231366B50();
  v8 = sub_231366B60();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_28();
  v11(v10);
  v16 = v8;
  MEMORY[0x23192A730](95, 0xE100000000000000);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = MEMORY[0x231929610](v12, v13);
  MEMORY[0x23192A730](v14);

  return v16;
}

unint64_t sub_2313600A0()
{
  sub_23136A650();

  v1 = *(v0 + 16);
  v2 = sub_231360228();
  MEMORY[0x23192A730](v2);

  MEMORY[0x23192A730](41, 0xE100000000000000);
  return 0xD000000000000025;
}

uint64_t sub_231360178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2313625B0;

  return sub_23135F690(a1, a2, a3);
}

unint64_t sub_231360228()
{
  v1 = *(v0 + 16);
  v2 = sub_231369EE0();
  sub_23122AB50(v2);
  v3 = sub_231367BB0();
  v5 = v4;

  MEMORY[0x23192A730](v3, v5);

  sub_231369EE0();
  MEMORY[0x23192A730](41, 0xE100000000000000);

  return 0xD000000000000018;
}

uint64_t sub_2313602F0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_32(a1, a2);
  sub_2311D38A8(a3, v4 + 64);
  *(v4 + 104) = a4;
  return v4;
}

uint64_t sub_231360334@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = sub_23135FF6C(a1);
  v7 = sub_2312177D8(v5, v6, v4);

  v9 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
  }

  *a3 = v9;
  return result;
}

void *sub_231360398()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v2 = v0[13];

  return v0;
}

uint64_t sub_2313603D0()
{
  sub_231360398();

  return swift_deallocClassInstance();
}

uint64_t sub_23136044C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_32(a1, a2);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_231360478()
{
  OUTLINED_FUNCTION_8();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_2313698C0();
  v1[36] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[37] = v6;
  v8 = *(v7 + 64);
  v1[38] = OUTLINED_FUNCTION_43();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF0, &unk_23137A250) - 8) + 64);
  v1[39] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF8, &qword_231370C00);
  v1[40] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[41] = v11;
  v13 = *(v12 + 64);
  v1[42] = OUTLINED_FUNCTION_43();
  v14 = sub_231367C70();
  v1[43] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[44] = v15;
  v17 = *(v16 + 64);
  v1[45] = OUTLINED_FUNCTION_43();
  v18 = sub_231368210();
  v1[46] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[47] = v19;
  v21 = *(v20 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v22 = sub_2313681A0();
  v1[50] = v22;
  OUTLINED_FUNCTION_0(v22);
  v1[51] = v23;
  v25 = *(v24 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2313606B4()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 256);
  v5 = *(*(v0 + 280) + 16);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_231369EE0();
  sub_2313677D0();
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D60AC0])
  {
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    v73 = *(v0 + 392);
    v11 = *(v0 + 368);
    v12 = *(v0 + 376);
    v13 = *(v0 + 360);
    (*(*(v0 + 352) + 96))(v13, *(v0 + 344));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    (*(v10 + 32))(v8, v13, v9);
    (*(v12 + 32))(v73, v13 + v14, v11);
    (*(v10 + 104))(v7, *MEMORY[0x277D60DB8], v9);
    LOBYTE(v8) = sub_231368190();
    v15 = *(v10 + 8);
    v16 = OUTLINED_FUNCTION_28();
    v15(v16);
    if (v8)
    {
      v17 = sub_2313686F0();
      v18 = sub_2313686E0();
      v19 = type metadata accessor for HabitualActionsGenerator();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v22 = swift_allocObject();
      v23 = (v22 + OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_featureFlagProvider);
      v24 = MEMORY[0x277D60FF0];
      v23[3] = v17;
      v23[4] = v24;
      *v23 = v18;
      v25 = OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_channel;
      v26 = *MEMORY[0x277D60F70];
      v27 = sub_231368450();
      OUTLINED_FUNCTION_7_0(v27);
      (*(v28 + 104))(v22 + v25, v26);
      v29 = *MEMORY[0x277D61308];
      v30 = sub_231369330();
      OUTLINED_FUNCTION_7_0(v30);
      (*(v31 + 104))(v22 + v25, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_43();
        v5 = v66;
      }

      v32 = *(v5 + 16);
      if (v32 >= *(v5 + 24) >> 1)
      {
        sub_23126DF2C();
        v5 = v67;
      }

      *(v0 + 240) = v19;
      *(v0 + 248) = sub_231362554(&qword_27DD44C38, 255, type metadata accessor for HabitualActionsGenerator);
      *(v0 + 216) = v22;
      *(v5 + 16) = v32 + 1;
      sub_2311D38A8((v0 + 216), v5 + 40 * v32 + 32);
    }

    v33 = *(v0 + 384);
    v34 = *(v0 + 368);
    v35 = *(v0 + 376);
    (*(v35 + 104))(v33, *MEMORY[0x277D60E10], v34);
    v36 = OUTLINED_FUNCTION_28();
    v38 = sub_23131222C(v36, v37);
    v39 = *(v35 + 8);
    v39(v33, v34);
    if (v38)
    {
      type metadata accessor for DefaultToolRetriever();
      v40 = swift_allocObject();
      v74 = sub_231362438(v40, 2u);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_43();
        v5 = v68;
      }

      v41 = *(v5 + 16);
      if (v41 >= *(v5 + 24) >> 1)
      {
        sub_23126DF2C();
        v5 = v69;
      }

      v42 = *(v0 + 424);
      v43 = *(v0 + 400);
      v39(*(v0 + 392), *(v0 + 368));
      (v15)(v42, v43);
      *(v0 + 200) = type metadata accessor for ContextualActionsGenerator(0);
      *(v0 + 208) = sub_231362554(&qword_27DD44B70, 255, type metadata accessor for ContextualActionsGenerator);
      *(v0 + 176) = v74;
      *(v5 + 16) = v41 + 1;
      sub_2311D38A8((v0 + 176), v5 + 40 * v41 + 32);
    }

    else
    {
      v44 = *(v0 + 424);
      v45 = *(v0 + 400);
      v39(*(v0 + 392), *(v0 + 368));
      v46 = OUTLINED_FUNCTION_28();
      v15(v46);
    }
  }

  else
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  }

  v47 = *(*(v0 + 280) + 64);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_43();
    v5 = v64;
  }

  v48 = *(v5 + 16);
  if (v48 >= *(v5 + 24) >> 1)
  {
    sub_23126DF2C();
    v5 = v65;
  }

  *(v0 + 432) = v5;
  v49 = *(v0 + 328);
  v50 = *(v0 + 336);
  v52 = *(v0 + 312);
  v51 = *(v0 + 320);
  v53 = v5;
  v54 = *(v0 + 280);
  v72 = *(v0 + 264);
  v75 = *(v0 + 272);
  v71 = *(v0 + 256);
  *(v0 + 40) = type metadata accessor for SignalGenerator();
  *(v0 + 48) = sub_231362554(qword_280F845E0, 255, type metadata accessor for SignalGenerator);
  *(v0 + 16) = v47;
  *(v53 + 16) = v48 + 1;
  sub_2311D38A8((v0 + 16), v53 + 40 * v48 + 32);
  v56 = v54[6];
  v55 = v54[7];
  __swift_project_boxed_opaque_existential_1(v54 + 3, v56);
  (*(v55 + 16))(v56, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  sub_231367FE0();
  (*(v49 + 16))(v52, v50, v51);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v51);
  sub_2311CF324(v71, v0 + 56);
  sub_2311CF324(v72, v0 + 96);
  sub_2311CF324(v75, v0 + 136);
  v58 = swift_allocObject();
  *(v0 + 440) = v58;
  sub_2311D38A8((v0 + 56), v58 + 16);
  sub_2311D38A8((v0 + 96), v58 + 56);
  sub_2311D38A8((v0 + 136), v58 + 96);
  v59 = *(MEMORY[0x277D60B28] + 4);
  v60 = swift_task_alloc();
  *(v0 + 448) = v60;
  *v60 = v0;
  v60[1] = sub_231360DD8;
  v63 = *(v0 + 312);

  return MEMORY[0x2821C6B08](v53, v63, &unk_23137A268, v58, v57, &type metadata for GeneratorOutput, v61, v62);
}

void sub_231360DD8()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 448);
  *v4 = *v1;
  v3[57] = v7;

  if (v0)
  {
  }

  else
  {
    v8 = v3[55];
    sub_231228E9C(v3[39], &qword_27DD43EF0, &unk_23137A250);

    MEMORY[0x2822009F8](sub_231360F2C, 0, 0);
  }
}

void sub_231360F2C()
{
  v1 = v0[57];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  sub_231369170();
  sub_231369890();
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_28();
  v7(v6);
  v8 = 0;
  v9 = *(v1 + 16);
  v10 = MEMORY[0x277D84F90];
  v11 = (v1 + 32);
  while (v9 != v8)
  {
    if (v8 >= *(v1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v12 = *v11;
    v13 = *(*v11 + 16);
    v14 = *(v10 + 16);
    if (__OFADD__(v14, v13))
    {
      goto LABEL_19;
    }

    v15 = *v11;
    sub_231369EE0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v10 + 24) >> 1)
    {
      sub_23126DF64();
      v10 = v16;
    }

    if (*(v12 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v13)
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (v13)
      {
        v17 = *(v10 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_22;
        }

        *(v10 + 16) = v19;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_20;
      }
    }

    v11 += 5;
    ++v8;
  }

  v20 = v0[57];
  v22 = v0[53];
  v21 = v0[54];
  v23 = v0[52];
  v25 = v0[48];
  v24 = v0[49];
  v26 = v0[41];
  v27 = v0[42];
  v28 = v0[40];
  v30 = v0[45];
  v31 = v0[39];
  v32 = v0[38];

  (*(v26 + 8))(v27, v28);

  OUTLINED_FUNCTION_14();

  v29(v10);
}

uint64_t sub_2313611B0(void *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369170();
  sub_2311CF324(a1, v22);
  v7 = sub_2313698A0();
  v8 = sub_23136A3B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    swift_getDynamicType();
    v11 = sub_23136AA70();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v14 = sub_2311CFD58(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v7, v8, "Unable to generate candidates for %s due to timeout", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23192B930](v10, -1, -1);
    MEMORY[0x23192B930](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v17 = a1[4];
  v22[0] = DynamicType;
  v22[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v18 = sub_23136A010();
  *(v15 + 32) = MEMORY[0x277D84F90];
  *(v15 + 40) = v18;
  *(v15 + 48) = v19;
  *(v15 + 56) = 0x756F2064656D6954;
  *(v15 + 64) = 0xE900000000000074;
  return v15;
}

uint64_t sub_231361444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_231361468, 0, 0);
}

uint64_t sub_231361468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[9];
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v17 = *(MEMORY[0x277D60D88] + 4);
  v18 = swift_task_alloc();
  v14[13] = v18;
  *v18 = v14;
  v18[1] = sub_23136151C;
  v19 = v14[11];
  v20 = v14[12];
  v21 = OUTLINED_FUNCTION_13_26(v14[10]);

  return MEMORY[0x2821C6CE8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23136151C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231361608()
{
  v1 = v0[14];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  OUTLINED_FUNCTION_11_28();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  v4 = *(v2 + 24);
  v5 = OUTLINED_FUNCTION_44_0();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  DynamicType = swift_getDynamicType();
  v8 = *(v2 + 32);
  v0[7] = DynamicType;
  v0[8] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v15 = sub_23136A010();
  v16 = v9;
  sub_231369EE0();
  MEMORY[0x23192A730](0x20203E3C2020, 0xE600000000000000);

  sub_2311CF324(v2, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  v10 = sub_23136A010();
  v12 = v11;
  sub_231369EE0();
  MEMORY[0x23192A730](v10, v12);

  *(v3 + 32) = v1;
  *(v3 + 40) = v15;
  *(v3 + 48) = v16;
  *(v3 + 56) = 6369134;
  *(v3 + 64) = 0xE300000000000000;
  OUTLINED_FUNCTION_14();

  return v13(v3);
}

void *sub_2313617A8()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t sub_2313617D8()
{
  sub_2313617A8();
  OUTLINED_FUNCTION_11_28();

  return swift_deallocClassInstance();
}

uint64_t sub_23136182C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E9060;

  return sub_231360478();
}

uint64_t sub_231361A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
  v7 = swift_allocObject();
  *(v6 + 64) = v7;
  sub_2311CF324(a3, v7 + 16);
  sub_231369EE0();
  return v6;
}

uint64_t sub_231361ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23136C1C0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(v10 + 64) = a3;
  sub_231369EE0();
  sub_231369EE0();
  return v10;
}

uint64_t sub_231361BEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_2312B7234(v46);
  v7 = v46[1];
  v8 = v46[3];
  v9 = v46[4];
  v40 = v46[5];
  v41 = v46[0];
  v10 = (v46[2] + 64) >> 6;
  sub_231369EE0();

  v37 = v10;
  v38 = v7;
  v39 = a5;
  if (v9)
  {
    while (1)
    {
      v47 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v41 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v41 + 56) + 8 * v13);
      v45[0] = *v14;
      v45[1] = v15;
      v45[2] = v16;
      sub_231369EE0();
      sub_231369EE0();
      v40(&v42, v45);

      v17 = v42;
      v18 = v43;
      v19 = v44;
      v20 = *a5;
      v22 = sub_231215F6C(v42, v43);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v21;
      if (v20[3] >= v23 + v24)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44F00, &qword_23137A230);
          sub_23136A710();
        }
      }

      else
      {
        sub_2312B4318();
        v26 = *a5;
        v27 = sub_231215F6C(v17, v18);
        if ((v25 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v22 = v27;
      }

      v9 &= v9 - 1;
      v29 = *a5;
      if (v25)
      {
        v45[0] = *(v29[7] + 8 * v22);
        sub_231369EE0();
        sub_231267390();

        v30 = v29[7];
        v31 = *(v30 + 8 * v22);
        *(v30 + 8 * v22) = v45[0];
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v32 = (v29[6] + 16 * v22);
        *v32 = v17;
        v32[1] = v18;
        *(v29[7] + 8 * v22) = v19;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v8 = v11;
      v7 = v38;
      a5 = v39;
      v10 = v37;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_2311D3BBC();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_231361EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231367890();
  OUTLINED_FUNCTION_7_0(v6);
  (*(v7 + 16))(a1, a4);
  sub_231369EE0();
  return OUTLINED_FUNCTION_44_0();
}

uint64_t sub_231361F28()
{
  v0 = sub_231367E50();
  OUTLINED_FUNCTION_7_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_44_0();
  v4(v3);

  return sub_231369EE0();
}

uint64_t sub_231361F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2311D1D6C(a4, a1);
  sub_231369EE0();
  return a2;
}

uint64_t sub_231362010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2311DDBBC(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_231362054()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231241E68;

  return sub_231361444(v3, v0 + 16, v0 + 56, v0 + 96);
}

uint64_t sub_2313620F0(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v30 = a2;
  v32[3] = type metadata accessor for DefaultToolRetriever();
  v32[4] = &off_2845F6F40;
  v32[0] = a1;
  v5 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_channel;
  v6 = *MEMORY[0x277D612F0];
  v7 = sub_231369330();
  (*(*(v7 - 8) + 104))(a3 + v5, v6, v7);
  v29 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_typesToIgnore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D88, &qword_2313706D0);
  v8 = sub_231369D50();
  v9 = *(v8 - 8);
  v27 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23136C1C0;
  v12 = (v11 + v10);
  v13 = sub_231369D40();
  v14 = swift_allocBox();
  v15 = *(*(v13 - 8) + 104);
  v15(v16, *MEMORY[0x277D72CB0], v13);
  *v12 = v14;
  v17 = *MEMORY[0x277D72D50];
  v18 = *(v9 + 104);
  v18(v12, v17, v8);
  v19 = swift_allocBox();
  v15(v20, *MEMORY[0x277D72CE0], v13);
  *(v12 + v27) = v19;
  v18((v12 + v27), v17, v8);
  *(a3 + v29) = v11;
  sub_2311CF324(v32, a3 + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_toolRetriever);
  if (v30 == 2)
  {
    v21 = sub_231367570();
    v31[3] = v21;
    v31[4] = sub_231362554(&qword_280F7CAC0, 255, MEMORY[0x277D60980]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60978], v21);
    LOBYTE(v21) = sub_231366960();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v23 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_enabled;
    v24 = v21 & 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v23 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_enabled;
    v24 = a2 & 1;
  }

  *(a3 + v23) = v24;
  return a3;
}

uint64_t sub_231362438(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for DefaultToolRetriever();
  v18[3] = v4;
  v18[4] = &off_2845F6F40;
  v18[0] = a1;
  v5 = type metadata accessor for ContextualActionsGenerator(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  v10 = *(*(v4 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = sub_2313620F0(*v13, a2, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

uint64_t sub_231362554(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_231362618(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_23136263C, 0, 0);
}

uint64_t sub_23136263C()
{
  if (qword_280F81F00 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v1 = v0[17];
  v2 = sub_2313673A0();
  __swift_project_value_buffer(v2, qword_280F8E628);
  v0[5] = sub_231367760();
  OUTLINED_FUNCTION_1_50();
  v0[6] = sub_231364ECC(v3, 255, v4);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_231367750();
  OUTLINED_FUNCTION_0_44();
  v5 = *(v1 + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_5_36(v6);

  return v8(v7);
}

uint64_t sub_23136277C()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v5 = *v0;
  *(v1 + 168) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_231362880, 0, 0);
}

uint64_t sub_231362880()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 152);
  sub_231362CC8(*(v0 + 168), v0 + 96);
  v2 = *(v0 + 168);
  if (*(v0 + 120))
  {
    sub_2311D38A8((v0 + 96), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23136B670;
    sub_2311D38A8((v0 + 56), v3 + 32);
  }

  else
  {
    sub_231228E9C(v0 + 96, &qword_27DD44F10, &qword_23137A3E0);

    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_231362970(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_231362994, 0, 0);
}

uint64_t sub_231362994()
{
  if (qword_27DD42DF8 != -1)
  {
    OUTLINED_FUNCTION_3_44();
  }

  v1 = v0[17];
  v2 = sub_2313673A0();
  __swift_project_value_buffer(v2, qword_27DD4BA48);
  v0[5] = sub_231367760();
  OUTLINED_FUNCTION_1_50();
  v0[6] = sub_231364ECC(v3, 255, v4);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_231367750();
  OUTLINED_FUNCTION_0_44();
  v5 = *(v1 + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_5_36(v6);

  return v8(v7);
}

uint64_t sub_231362AD4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v5 = *v0;
  *(v1 + 168) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_231362BD8, 0, 0);
}

uint64_t sub_231362BD8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 152);
  sub_2313633B8(*(v0 + 168), v0 + 96);
  v2 = *(v0 + 168);
  if (*(v0 + 120))
  {
    sub_2311D38A8((v0 + 96), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23136B670;
    sub_2311D38A8((v0 + 56), v3 + 32);
  }

  else
  {
    sub_231228E9C(v0 + 96, &qword_27DD44F10, &qword_23137A3E0);

    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

double sub_231362CC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = sub_231367AB0();
  v45 = *(v47 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_231369110();
  v13 = sub_2313698A0();
  v14 = sub_23136A3A0();
  v15 = &unk_280F81000;
  if (os_log_type_enabled(v13, v14))
  {
    v43 = v9;
    v44 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v52 = v17;
    *v16 = 136315138;
    strcpy(v54, "intentBridge_");
    HIWORD(v54[1]) = -4864;
    if (qword_280F81F00 != -1)
    {
      swift_once();
    }

    v18 = sub_2313673A0();
    __swift_project_value_buffer(v18, qword_280F8E628);
    v19 = sub_231367380();
    MEMORY[0x23192A730](v19);

    v20 = sub_2311CFD58(v54[0], v54[1], &v52);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2311CB000, v13, v14, "Configuring SuggestionBuilder for suggestion bridge. suggestionId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x23192B930](v17, -1, -1);
    MEMORY[0x23192B930](v16, -1, -1);

    v21 = *(v44 + 8);
    v21(v12, v5);
    v9 = v43;
    v15 = &unk_280F81000;
  }

  else
  {

    v21 = *(v6 + 8);
    v21(v12, v5);
  }

  sub_231364AC8(&v52);
  if (v53)
  {
    sub_2311D38A8(&v52, v54);
    strcpy(&v52, "intentBridge_");
    HIWORD(v52) = -4864;
    if (v15[480] != -1)
    {
      swift_once();
    }

    v22 = sub_2313673A0();
    __swift_project_value_buffer(v22, qword_280F8E628);
    v23 = sub_231367380();
    MEMORY[0x23192A730](v23);

    v24 = type metadata accessor for IntentDetailsDialogProvider();
    v25 = swift_allocObject();
    v4[3] = v24;
    v4[4] = sub_231364ECC(qword_280F7F570, 255, type metadata accessor for IntentDetailsDialogProvider);
    *v4 = v25;
    v26 = v45;
    v27 = v47;
    v28 = (*(v45 + 104))(v4, *MEMORY[0x277D60A88], v47);
    MEMORY[0x28223BE20](v28);
    v29 = v46;
    *(&v42 - 2) = v54;
    *(&v42 - 1) = v29;
    sub_231368EC0();

    (*(v26 + 8))(v4, v27);
    if (qword_280F81EF0 != -1)
    {
      swift_once();
    }

    sub_231364E54(&xmmword_280F8E600, &v50);
    if (v51)
    {
      sub_2311D38A8(&v50, &v52);
      sub_231368EA0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    }

    else
    {
      sub_231228E9C(&v50, &qword_27DD43258, &unk_23136BD00);
    }

    sub_231368ED0();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {
    sub_231228E9C(&v52, &qword_27DD43878, &unk_23136E490);
    sub_2313690F0();
    v30 = sub_2313698A0();
    v31 = v9;
    v32 = sub_23136A3A0();
    if (os_log_type_enabled(v30, v32))
    {
      v48 = v5;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v52 = v34;
      *v33 = 136315138;
      strcpy(v54, "intentBridge_");
      HIWORD(v54[1]) = -4864;
      if (v15[480] != -1)
      {
        swift_once();
      }

      v35 = sub_2313673A0();
      __swift_project_value_buffer(v35, qword_280F8E628);
      v36 = sub_231367380();
      MEMORY[0x23192A730](v36);

      v37 = sub_2311CFD58(v54[0], v54[1], &v52);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2311CB000, v30, v32, "Configuring builder for suggestionId: %s. Unable to get intentDetailsResolver. Returning nil ownerDefinition", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x23192B930](v34, -1, -1);
      MEMORY[0x23192B930](v33, -1, -1);

      v38 = v31;
      v39 = v48;
    }

    else
    {

      v38 = v31;
      v39 = v5;
    }

    v21(v38, v39);
    v41 = v49;
    *(v49 + 32) = 0;
    result = 0.0;
    *v41 = 0u;
    v41[1] = 0u;
  }

  return result;
}

double sub_2313633B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = sub_231367AB0();
  v45 = *(v47 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_231369110();
  v13 = sub_2313698A0();
  v14 = sub_23136A3A0();
  v15 = 0x27DD42000uLL;
  if (os_log_type_enabled(v13, v14))
  {
    v43 = v9;
    v44 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v52 = v17;
    *v16 = 136315138;
    strcpy(v54, "intentBridge_");
    HIWORD(v54[1]) = -4864;
    if (qword_27DD42DF8 != -1)
    {
      swift_once();
    }

    v18 = sub_2313673A0();
    __swift_project_value_buffer(v18, qword_27DD4BA48);
    v19 = sub_231367380();
    MEMORY[0x23192A730](v19);

    v20 = sub_2311CFD58(v54[0], v54[1], &v52);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2311CB000, v13, v14, "Configuring SuggestionBuilder for suggestion bridge. suggestionId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x23192B930](v17, -1, -1);
    MEMORY[0x23192B930](v16, -1, -1);

    v21 = *(v44 + 8);
    v21(v12, v5);
    v9 = v43;
    v15 = 0x27DD42000;
  }

  else
  {

    v21 = *(v6 + 8);
    v21(v12, v5);
  }

  sub_2313643E4(&v52);
  if (v53)
  {
    sub_2311D38A8(&v52, v54);
    strcpy(&v52, "intentBridge_");
    HIWORD(v52) = -4864;
    if (*(v15 + 3576) != -1)
    {
      swift_once();
    }

    v22 = sub_2313673A0();
    __swift_project_value_buffer(v22, qword_27DD4BA48);
    v23 = sub_231367380();
    MEMORY[0x23192A730](v23);

    v24 = type metadata accessor for IntentDetailsDialogProvider();
    v25 = swift_allocObject();
    v4[3] = v24;
    v4[4] = sub_231364ECC(qword_280F7F570, 255, type metadata accessor for IntentDetailsDialogProvider);
    *v4 = v25;
    v26 = v45;
    v27 = v47;
    v28 = (*(v45 + 104))(v4, *MEMORY[0x277D60A88], v47);
    MEMORY[0x28223BE20](v28);
    v29 = v46;
    *(&v42 - 2) = v54;
    *(&v42 - 1) = v29;
    sub_231368EC0();

    (*(v26 + 8))(v4, v27);
    if (qword_27DD42E08 != -1)
    {
      swift_once();
    }

    sub_231364E54(&qword_27DD4BA68, &v50);
    if (v51)
    {
      sub_2311D38A8(&v50, &v52);
      sub_231368EA0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    }

    else
    {
      sub_231228E9C(&v50, &qword_27DD43258, &unk_23136BD00);
    }

    sub_231368ED0();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {
    sub_231228E9C(&v52, &qword_27DD43878, &unk_23136E490);
    sub_2313690F0();
    v30 = sub_2313698A0();
    v31 = v9;
    v32 = sub_23136A3A0();
    if (os_log_type_enabled(v30, v32))
    {
      v48 = v5;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v52 = v34;
      *v33 = 136315138;
      strcpy(v54, "intentBridge_");
      HIWORD(v54[1]) = -4864;
      if (*(v15 + 3576) != -1)
      {
        swift_once();
      }

      v35 = sub_2313673A0();
      __swift_project_value_buffer(v35, qword_27DD4BA48);
      v36 = sub_231367380();
      MEMORY[0x23192A730](v36);

      v37 = sub_2311CFD58(v54[0], v54[1], &v52);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2311CB000, v30, v32, "Configuring builder for suggestionId: %s. Unable to get intentDetailsResolver. Returning nil ownerDefinition", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x23192B930](v34, -1, -1);
      MEMORY[0x23192B930](v33, -1, -1);

      v38 = v31;
      v39 = v48;
    }

    else
    {

      v38 = v31;
      v39 = v5;
    }

    v21(v38, v39);
    v41 = v49;
    *(v49 + 32) = 0;
    result = 0.0;
    *v41 = 0u;
    v41[1] = 0u;
  }

  return result;
}

uint64_t sub_231363ABC(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[5];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311CF324(a2, v39);
  sub_231368540();
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12 = *(v11 + 8);
  sub_231367F20();
  sub_231368510();
  sub_231368B60();

  sub_231228E9C(v39, &qword_27DD43878, &unk_23136E490);
  (*(v7 + 8))(v10, v4);
  v13 = a1[3];
  v14 = a1[5];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v16 = *(v13 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IntentDetailsActionKeyMapper();
  inited = swift_initStaticObject();
  v39[3] = v20;
  v39[4] = sub_231364ECC(&unk_280F7EF30, 255, type metadata accessor for IntentDetailsActionKeyMapper);
  v39[0] = inited;
  sub_231368B20();
  (*(v16 + 8))(v19, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v22 = a1[3];
  v23 = a1[5];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v25 = *(v22 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v39[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F81F00 != -1)
  {
    swift_once();
  }

  v29 = sub_2313673A0();
  __swift_project_value_buffer(v29, qword_280F8E628);
  sub_231368AC0();
  (*(v25 + 8))(v28, v22);
  v30 = a1[3];
  v31 = a1[5];
  v32 = __swift_project_boxed_opaque_existential_1(a1, v30);
  v33 = *(v30 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v39[-1] - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F81EE8 != -1)
  {
    swift_once();
  }

  sub_231369EE0();
  sub_231368B30();

  return (*(v33 + 8))(v36, v30);
}

uint64_t sub_231363F40(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[5];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311CF324(a2, v39);
  sub_231368540();
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12 = *(v11 + 8);
  sub_231367F20();
  sub_231368510();
  sub_231368B60();

  sub_231228E9C(v39, &qword_27DD43878, &unk_23136E490);
  (*(v7 + 8))(v10, v4);
  v13 = a1[3];
  v14 = a1[5];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v16 = *(v13 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IntentDetailsActionKeyMapper();
  inited = swift_initStaticObject();
  v39[3] = v20;
  v39[4] = sub_231364ECC(&unk_280F7EF30, 255, type metadata accessor for IntentDetailsActionKeyMapper);
  v39[0] = inited;
  sub_231368B20();
  (*(v16 + 8))(v19, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v22 = a1[3];
  v23 = a1[5];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v25 = *(v22 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v39[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DD42DF8 != -1)
  {
    swift_once();
  }

  v29 = sub_2313673A0();
  __swift_project_value_buffer(v29, qword_27DD4BA48);
  sub_231368AC0();
  (*(v25 + 8))(v28, v22);
  v30 = a1[3];
  v31 = a1[5];
  v32 = __swift_project_boxed_opaque_existential_1(a1, v30);
  v33 = *(v30 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v39[-1] - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DD42E00 != -1)
  {
    swift_once();
  }

  sub_231369EE0();
  sub_231368B30();

  return (*(v33 + 8))(v36, v30);
}

double sub_2313643E4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitIntentService();
  v8 = sub_231368EF0();
  if (v8)
  {
    v9 = v8;
    if (sub_23125D7A0(v8))
    {
      sub_23120DE34(0, (v9 & 0xC000000000000001) == 0);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23192AD10](0, v9);
      }

      else
      {
        v10 = *(v9 + 32);
      }

      if (qword_27DD42DF8 != -1)
      {
        OUTLINED_FUNCTION_3_44();
      }

      v11 = sub_2313673A0();
      __swift_project_value_buffer(v11, qword_27DD4BA48);
      v30 = sub_231367380();
      v31 = v12;
      MEMORY[0x23192A730](95, 0xE100000000000000);
      v13 = OUTLINED_FUNCTION_4_35();
      MEMORY[0x23192A730](v13);
      v14 = v30;
      v15 = v31;
      v32 = v7;
      v33 = &off_2845F63B0;
      v30 = v10;
      v16 = type metadata accessor for ToolKitIntentDetailsResolver();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v7);
      v19 = *(*(v7 - 8) + 64);
      v20 = MEMORY[0x28223BE20](v18);
      v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22, v20);
      v24 = *v22;
      v17[7] = v7;
      v17[8] = &off_2845F63B0;
      v17[3] = v15;
      v17[4] = v24;
      v17[2] = v14;

      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
      *(a1 + 24) = v16;
      *(a1 + 32) = sub_231364ECC(&qword_27DD44F20, 255, type metadata accessor for ToolKitIntentDetailsResolver);

      *a1 = v17;
      return result;
    }
  }

  sub_2313690F0();
  v26 = sub_2313698A0();
  v27 = sub_23136A3A0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2311CB000, v26, v27, "Fetching the ToolKitIntentDetailsResolver. Unable to get toolKitIntentService. Returning nil", v28, 2u);
    MEMORY[0x23192B930](v28, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_231364744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v0 = sub_231367D80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136C1C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D60B78], v0);
  result = (v6)(v5 + v2, *MEMORY[0x277D60B80], v0);
  qword_27DD4BA60 = v4;
  return result;
}

uint64_t sub_231364854()
{
  strcpy(v6, "intentBridge_");
  HIWORD(v6[1]) = -4864;
  if (qword_27DD42DF8 != -1)
  {
    swift_once();
  }

  v0 = sub_2313673A0();
  __swift_project_value_buffer(v0, qword_27DD4BA48);
  v1 = sub_231367380();
  MEMORY[0x23192A730](v1);

  v2 = v6[1];
  v3 = type metadata accessor for AppIntentsSignalConfigurator();
  v4 = swift_allocObject();
  *(v4 + 16) = v6[0];
  *(v4 + 24) = v2;
  qword_27DD4BA80 = v3;
  result = sub_231364ECC(&qword_27DD44F18, 255, type metadata accessor for AppIntentsSignalConfigurator);
  qword_27DD4BA88 = result;
  qword_27DD4BA68 = v4;
  return result;
}

uint64_t sub_231364998(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311F93E8;

  return sub_231362970(a1, a2);
}

uint64_t sub_231364A70(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_2313673A0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_231364AC8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280F81F00 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v2 = sub_2313673A0();
  __swift_project_value_buffer(v2, qword_280F8E628);
  v8 = sub_231367380();
  v9 = v3;
  MEMORY[0x23192A730](95, 0xE100000000000000);
  v4 = OUTLINED_FUNCTION_4_35();
  MEMORY[0x23192A730](v4);
  v5 = type metadata accessor for ContextValuesIntentDetailsResolver();
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 24) = v9;
  a1[3] = v5;
  result = sub_231364ECC(&qword_280F7D730, 255, type metadata accessor for ContextValuesIntentDetailsResolver);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_231364BC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v0 = sub_231367D80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136B670;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x277D60B80], v0);
  qword_280F8E5F8 = v4;
  return result;
}

double sub_231364CA8()
{
  qword_280F8E620 = 0;
  result = 0.0;
  xmmword_280F8E600 = 0u;
  *algn_280F8E610 = 0u;
  return result;
}

uint64_t sub_231364CE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311F4480;

  return sub_231362618(a1, a2);
}

uint64_t sub_231364D9C(uint64_t a1, uint64_t a2)
{
  result = sub_231364ECC(&qword_280F81EE0, a2, type metadata accessor for INIntentBridgeFactory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_231364DF4(uint64_t a1, uint64_t a2)
{
  result = sub_231364ECC(&qword_27DD43C00, a2, type metadata accessor for AppIntentBridgeFactory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_231364E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43258, &unk_23136BD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231364ECC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_36(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 144);
  return v2 + 16;
}

uint64_t sub_231364F30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23136C1C0;
  sub_2311CF324(a2, v16);
  v6 = type metadata accessor for RecentUsagePolicy();
  swift_allocObject();
  v7 = sub_2312EC7E0(v16, v4);
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_2845F62D0;
  *(v5 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v8 = sub_231367D80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23136B670;
  (*(v9 + 104))(v12 + v11, *MEMORY[0x277D60B98], v8);
  sub_2311CF324(a2, v16);
  v13 = type metadata accessor for NotShownPreviousSuggestionTooSoonPolicy();
  swift_allocObject();
  v14 = sub_2312EA284(v16, v12, v3);
  *(v5 + 96) = v13;
  *(v5 + 104) = &off_2845F6310;
  *(v5 + 72) = v14;
  return v5;
}

uint64_t sub_231365104()
{
  v1 = *(v0 + 432);
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v3 = *(v2 + 8);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 440) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_8_0(v5);

  return v8(v6);
}

uint64_t sub_231365220()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 440);
  *v2 = *v0;
  *(v1 + 448) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231365308()
{
  v38 = v0;
  v1 = 0;
  v2 = *(v0 + 448);
  v35 = *(v2 + 16);
  v3 = MEMORY[0x277D84F90];
  v34 = v2;
  v4 = v2 + 32;
  while (v35 != v1)
  {
    if (v1 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    sub_2311CF324(v4, v0 + 16);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_231367DD0();
    v6 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    sub_231368720();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    sub_2311CF324(v0 + 136, v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436B0, &qword_23137A4E0);
    sub_231368620();
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 424);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    else
    {
      v8 = type metadata accessor for FilterToFinalizerAdaptor();
      sub_2311CF324(v0 + 136, v0 + 256);
      v9 = *(v0 + 280);
      v10 = *(v0 + 288);
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v9);
      v12 = *(v9 - 8);
      v13 = *(v12 + 64) + 15;
      v14 = swift_task_alloc();
      (*(v12 + 16))(v14, v11, v9);
      v15 = sub_231365F8C(v14, v8, v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

      *(v0 + 120) = v8;
      OUTLINED_FUNCTION_0_45();
      *(v0 + 128) = sub_231366024(qword_280F80988);
      *(v0 + 96) = v15;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    if (*(v0 + 120))
    {
      sub_2311D38A8((v0 + 96), v0 + 56);
      sub_2311D38A8((v0 + 56), v0 + 296);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v3 + 16);
        sub_23126EF9C();
        v3 = v25;
        v37 = v25;
      }

      v17 = *(v3 + 16);
      if (v17 >= *(v3 + 24) >> 1)
      {
        sub_23126EF9C();
        v3 = v26;
        v37 = v26;
      }

      v18 = *(v0 + 320);
      v19 = *(v0 + 328);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v18);
      v21 = *(v18 - 8);
      v22 = *(v21 + 64) + 15;
      v23 = swift_task_alloc();
      (*(v21 + 16))(v23, v20, v18);
      sub_2311EA1F8(v17, v23, &v37, v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    }

    else
    {
      sub_231366064(v0 + 96);
    }

    v4 += 40;
    ++v1;
  }

  v27 = *(v0 + 448);
  v28 = *(v0 + 432);

  *(v0 + 416) = v3;
  v29 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v28[5]);
  v30 = *(v29 + 8);
  v36 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  *(v0 + 456) = v32;
  *v32 = v0;
  v33 = OUTLINED_FUNCTION_8_0(v32);

  v36(v33);
}

uint64_t sub_231365778()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 456);
  *v2 = *v0;
  *(v1 + 464) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231365860()
{
  v1 = *(v0 + 464);
  sub_23126775C();
  v2 = sub_2313684F0();
  v3 = sub_2313684E0();
  v4 = MEMORY[0x277D60FA0];
  *(v0 + 360) = v2;
  *(v0 + 368) = v4;
  *(v0 + 336) = v3;
  v5 = type metadata accessor for FilterToFinalizerAdaptor();
  v6 = swift_allocObject();
  sub_2311D38A8((v0 + 336), v6 + 16);
  v7 = *(v0 + 416);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = *(v7 + 16);
    sub_23126EF9C();
    v7 = v13;
  }

  v8 = *(v7 + 16);
  if (v8 >= *(v7 + 24) >> 1)
  {
    sub_23126EF9C();
    v7 = v14;
  }

  *(v0 + 400) = v5;
  OUTLINED_FUNCTION_0_45();
  *(v0 + 408) = sub_231366024(v9);
  *(v0 + 376) = v6;
  *(v7 + 16) = v8 + 1;
  sub_2311D38A8((v0 + 376), v7 + 40 * v8 + 32);
  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_2313659D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231365A64;

  return sub_2313650F0();
}

uint64_t sub_231365A64()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v2);
}

uint64_t sub_231365B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_231365B70()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x277D60D60] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_231365C30;
  v7 = v0[3];
  v6 = v0[4];

  return MEMORY[0x2821C6CA0](v7, v6, v2, v3);
}

uint64_t sub_231365C30()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231365D18()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 56) == 1)
  {
    sub_2311CF324(*(v0 + 24), *(v0 + 16));
  }

  else
  {
    v1 = *(v0 + 16);
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231365DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231365E6C;

  return sub_231365B58(a1, a2, a3);
}

uint64_t sub_231365E6C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_231365F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  sub_2311D38A8(&v9, v7 + 16);
  return v7;
}

uint64_t sub_231366024(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FilterToFinalizerAdaptor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231366064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44F28, &qword_23137A4E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313660CC()
{
  v0 = sub_2313698C0();
  __swift_allocate_value_buffer(v0, qword_27DD44F30);
  __swift_project_value_buffer(v0, qword_27DD44F30);
  sub_2313691B0();
  return sub_2313698B0();
}

uint64_t static Logger.generalLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DD42E18 != -1)
  {
    swift_once();
  }

  v2 = sub_2313698C0();
  v3 = __swift_project_value_buffer(v2, qword_27DD44F30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2313661FC()
{
  sub_23128DC20(v0[7], (v0 + 2));
  if (v0[5])
  {
    v1 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_231368320();
    v4 = v3;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = v5 | 0x2000000000000000;
  }

  else
  {
    sub_23128DC90((v0 + 2));
    v6 = 0xF000000000000007;
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2313662EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2313661DC(a1);
}