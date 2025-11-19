uint64_t sub_26104582C()
{
  v1[8] = v0;
  sub_2610BCC74();
  v1[9] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_2610458C4, v3, v2);
}

uint64_t sub_2610458C4()
{
  v21 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136446466;
    v0[7] = v6;
    type metadata accessor for PASFlowStepBase(0);

    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = *v6;
    v13 = sub_2610BD634();
    v15 = sub_260FA5970(v13, v14, v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_260F97000, v3, v4, "%{public}s prepareForPresentation %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v16 = v0[8];
  v0[12] = sub_2610437A0();
  v17 = *v16;
  v0[13] = sub_2610BD634();
  v0[14] = v18;

  return MEMORY[0x2822009F8](sub_261045B20, 0, 0);
}

uint64_t sub_261045B20()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 24) = v1;
  *(v0 + 32) = 1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_261045BE8;
  v3 = *(v0 + 96);

  return sub_261047124(v0 + 16, 0, 0);
}

void sub_261045BE8()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[12];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v6 = v2[10];
    v7 = v2[11];

    MEMORY[0x2822009F8](sub_261045D28, v6, v7);
  }
}

uint64_t sub_261045D28()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261045D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_261045DB0, v3, 0);
}

uint64_t sub_261045DB0()
{
  v21 = v0;
  v2 = v0[4];
  v1 = v0[5];
  sub_2610BC574();
  if (*(v1 + 144) == 1)
  {
    v4 = v0[5];
    v5 = v3 - *(v4 + 112);
    *(v4 + 136) = v5;
    *(v1 + 144) = 0;
    v6 = *(v4 + 160);
    v19 = (*(v4 + 152) + **(v4 + 152));
    v7 = *(*(v4 + 152) + 4);
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_261046030;
    v9.n128_f64[0] = v5;

    return v19(v0 + 2, v9);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = v0[5];
    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[5];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_260FA5970(*(v15 + 120), *(v15 + 128), &v20);
      _os_log_impl(&dword_260F97000, v13, v14, "PASTimer %{public}s already stopped", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x2666F8720](v17, -1, -1);
      MEMORY[0x2666F8720](v16, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_261046030()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26102F524, v2, 0);
}

uint64_t PASTargetFlowStepBase.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASTargetFlowStepBase.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  return v0;
}

uint64_t sub_26104626C(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_2610462C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_26104632C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261050280;
}

unint64_t sub_2610463CC()
{
  sub_260FA99E0(v0 + 80, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 24))(v9, 0xD000000000000017, 0x80000002610D4C10, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  sub_260FA9918(v9, v6, &qword_27FE63830, &qword_2610BE8E0);
  if (!v7)
  {
    sub_260FA9980(v6, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65A00, &unk_2610C8A18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = sub_260FA8E30(MEMORY[0x277D84F90]);
    goto LABEL_6;
  }

  v3 = v5;
LABEL_6:
  sub_260FA9980(v9, &qword_27FE63830, &qword_2610BE8E0);
  return v3;
}

uint64_t sub_261046500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 120) = a6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 64) = a3;
  *(v7 + 56) = a7;
  if (a1)
  {
    v8 = a1;
    v10 = swift_allocObject();
    a1 = v8;
    *(v10 + 16) = v8;
    *(v10 + 24) = a2;
    v11 = &unk_2610C8A00;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v7 + 88) = v11;
  *(v7 + 96) = v10;
  sub_260F9C55C(a1);

  return MEMORY[0x2822009F8](sub_2610465C8, 0, 0);
}

uint64_t sub_2610465C8()
{
  v1 = *(v0 + 56);
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  v2 = *(v0 + 120);
  *(v0 + 32) = v2;
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  v4 = *(v0 + 72);
  *(v0 + 16) = v4;
  v5 = *(&v4 + 1);
  v6 = v4;
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  sub_26104FE88(v4, *(&v4 + 1), v2);
  sub_26104FE88(v6, v5, v2);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_261044EA8;
  v8 = *(v0 + 64);

  return sub_261047124(v0 + 16, &unk_2610C9220, v3);
}

uint64_t sub_261046704(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_2610467F4;

  return v5(v1 + 16);
}

uint64_t sub_2610467F4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);
    v8 = *(v4 + 8);

    return v8(v7);
  }
}

uint64_t sub_261046934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  *(v6 + 136) = a6;
  *(v6 + 168) = a5;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  *(v6 + 104) = a1;
  *(v6 + 112) = a2;
  return MEMORY[0x2822009F8](sub_261046960, 0, 0);
}

uint64_t sub_261046960()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[13];
    v15 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_261046B60;

    return v15();
  }

  else
  {
    v7 = sub_260FA8F34(MEMORY[0x277D84F90]);
    v8 = v0[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0xD00000000000001ALL;
    v10 = inited + 32;
    v11 = MEMORY[0x277D839F8];
    *(inited + 40) = 0x80000002610D4BF0;
    *(inited + 72) = v11;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v8;
    v12 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(v10, &qword_27FE63BA0, &qword_2610BED60);
    v13 = sub_26103ABE4(v7, v12);

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_261046B60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_261046DB0;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_261046C88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261046C88()
{
  v1 = v0[20];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v4 = inited + 32;
  v5 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v2;
  v6 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v4, &qword_27FE63BA0, &qword_2610BED60);
  v7 = sub_26103ABE4(v1, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_261046DB0()
{
  v36 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 168);
  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65930);
  sub_26104FE88(v3, v2, v4);
  v6 = v1;
  v7 = sub_2610BC794();
  v8 = sub_2610BCD64();
  sub_26104E3D0(v3, v2, v4);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    v13 = 0xD000000000000012;
    *v10 = 136446466;
    v14 = "PASFlowStepPresented";
    v15 = ".invalidContinuation - ";
    v16 = 0xD000000000000013;
    v17 = "PASFlowStepReset";
    v18 = 0xD000000000000010;
    if (v9 == 3)
    {
      v18 = 0xD000000000000014;
    }

    else
    {
      v17 = "PASAnalyticsStepNameKey";
    }

    if (v9 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v9)
    {
      v13 = 0xD000000000000014;
      v14 = "PASFlowStepCancelled";
    }

    if (v9 <= 1)
    {
      v19 = v13;
    }

    else
    {
      v19 = v16;
    }

    if (v9 <= 1)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    v21 = *(v0 + 152);
    v22 = sub_260FA5970(v19, v20 | 0x8000000000000000, &v35);

    *(v10 + 4) = v22;
    *(v10 + 12) = 2114;
    v23 = v21;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v24;
    *v11 = v24;
    _os_log_impl(&dword_260F97000, v7, v8, "PASAnalytics timer failed to gather timer context for event %{public}s\n%{public}@", v10, 0x16u);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2666F8720](v12, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  v25 = *(v0 + 152);
  v26 = sub_260FA8F34(MEMORY[0x277D84F90]);

  v27 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v29 = inited + 32;
  v30 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v30;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v27;
  v31 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v29, &qword_27FE63BA0, &qword_2610BED60);
  v32 = sub_26103ABE4(v26, v31);

  v33 = *(v0 + 8);

  return v33(v32);
}

uint64_t sub_261047124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_2610471C4);
}

uint64_t sub_2610471C4()
{
  v31 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v29 = *(v13 + 16);
  v30 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v30;
  v0[12] = v29;
  v0[13] = v19;
  v20 = *(v13 + 72);
  if ((*(v13 + 64))())
  {
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_2610474C4;
    v22 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];

    return sub_261048CCC(v25, v24, v22);
  }

  else
  {
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2610474C4(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_2610475DC, v3, 0);
}

uint64_t sub_2610475DC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v6(v2, v3, sub_261050274, v7);

  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2610476AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26104774C);
}

uint64_t sub_26104774C()
{
  v31 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v29 = *(v13 + 16);
  v30 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v30;
  v0[12] = v29;
  v0[13] = v19;
  v20 = *(v13 + 72);
  if ((*(v13 + 64))())
  {
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_261047A4C;
    v22 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];

    return sub_261048CCC(v25, v24, v22);
  }

  else
  {
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_261047A4C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261047B64, v3, 0);
}

uint64_t sub_261047B64()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v6(v2, v3, sub_261050274, v7);

  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261047C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261047CD4);
}

uint64_t sub_261047CD4()
{
  v31 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v29 = *(v13 + 16);
  v30 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v30;
  v0[12] = v29;
  v0[13] = v19;
  v20 = *(v13 + 72);
  if ((*(v13 + 64))())
  {
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_261047FD4;
    v22 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];

    return sub_2610490A4(v25, v24, v22);
  }

  else
  {
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_261047FD4(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_2610480EC, v3, 0);
}

uint64_t sub_2610480EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v6(v2, v3, sub_261050274, v7);

  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2610481BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26104825C);
}

uint64_t sub_26104825C()
{
  v31 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v29 = *(v13 + 16);
  v30 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v30;
  v0[12] = v29;
  v0[13] = v19;
  v20 = *(v13 + 72);
  if ((*(v13 + 64))())
  {
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_26104855C;
    v22 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];

    return sub_261048CCC(v25, v24, v22);
  }

  else
  {
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_26104855C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261048674, v3, 0);
}

uint64_t sub_261048674()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v6(v2, v3, sub_261050274, v7);

  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261048744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[11] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_2610487E4);
}

uint64_t sub_2610487E4()
{
  v31 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65930);
  sub_260FA99E0(v1, (v0 + 2));
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136446210;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = sub_260FA5970(v9, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAnalytics send event %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = *(v13 + 24);
  v29 = *(v13 + 16);
  v30 = v15;

  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](*(v13 + 32), *(v13 + 40));
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  v18 = (*(v17 + 8))(v16, v17);
  MEMORY[0x2666F7380](v18);

  v19 = v30;
  v0[12] = v29;
  v0[13] = v19;
  v20 = *(v13 + 72);
  if ((*(v13 + 64))())
  {
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_261048AE4;
    v22 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];

    return sub_261048CCC(v25, v24, v22);
  }

  else
  {
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_261048AE4(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261048BFC, v3, 0);
}

uint64_t sub_261048BFC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v6(v2, v3, sub_2610500C8, v7);

  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261048CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[21] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261048D6C);
}

uint64_t sub_261048D6C()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  sub_26103B51C(v4);
  v6 = v5;

  if (!v6)
  {
    v6 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v0[22] = v6;
  v7 = v0[18];
  if (v7)
  {
    v8 = v0[19];
    v9 = v0[18];
    v20 = (v7 + *v7);
    v10 = v7[1];
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = sub_261048F68;

    return v20();
  }

  else
  {
    v13 = sub_260FA8E30(MEMORY[0x277D84F90]);

    v14 = v0[22];
    v15 = v0[20];
    v16 = sub_2610463CC();
    v17 = sub_26103A9B0(v14, v16);

    v18 = sub_26103A9B0(v13, v17);

    v19 = v0[1];

    return v19(v18);
  }
}

uint64_t sub_261048F68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = v1;

  v7 = v4[21];
  if (v1)
  {
    v8 = sub_261050294;
  }

  else
  {
    v4[25] = a1;
    v8 = sub_261050290;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2610490A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4[21] = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_261049144);
}

uint64_t sub_261049144()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  sub_26103B51C(v4);
  v6 = v5;

  if (!v6)
  {
    v6 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v0[22] = v6;
  v7 = v0[18];
  if (v7)
  {
    v8 = v0[19];
    v9 = v0[18];
    v20 = (v7 + *v7);
    v10 = v7[1];
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = sub_261049340;

    return v20();
  }

  else
  {
    v13 = sub_260FA8E30(MEMORY[0x277D84F90]);

    v14 = v0[22];
    v15 = v0[20];
    v16 = sub_2610463CC();
    v17 = sub_26103A9B0(v14, v16);

    v18 = sub_26103A9B0(v13, v17);

    v19 = v0[1];

    return v19(v18);
  }
}

uint64_t sub_261049340(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = v1;

  v7 = v4[21];
  if (v1)
  {
    v8 = sub_261049564;
  }

  else
  {
    v4[25] = a1;
    v8 = sub_26104947C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26104947C()
{
  sub_26103B51C(v0[25]);
  v2 = v1;

  if (!v2)
  {
    v2 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_2610463CC();
  v6 = sub_26103A9B0(v3, v5);

  v7 = sub_26103A9B0(v2, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_261049564()
{
  v35 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[17];
  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65930);
  sub_260FA99E0(v2, (v0 + 9));
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136446466;
    v11 = v0[12];
    v12 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
    v16 = sub_260FA5970(v13, v15, &v34);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2114;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v18;
    *v9 = v18;
    _os_log_impl(&dword_260F97000, v5, v6, "PASAnalytics failed to gather additional data for event %{public}s.\n%{public}@", v8, 0x16u);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  }

  v19 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE659E0, &unk_2610C89C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000002610D4B70;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BD0A4();
  v21 = v0[14];
  v22 = v0[15];
  v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v24 = sub_2610BC9D4();

  v25 = [v23 initWithString_];

  *(inited + 48) = v25;
  v26 = sub_260FA8E30(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE659E8, &unk_2610C89D0);

  v27 = v0[22];
  v28 = v0[20];
  v29 = sub_2610463CC();
  v30 = sub_26103A9B0(v27, v29);

  v31 = sub_26103A9B0(v26, v30);

  v32 = v0[1];

  return v32(v31);
}

unint64_t PASFlowStepError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 1)
  {
    if (*(v0 + 32))
    {
      sub_2610BCF84();

      v4 = 0xD000000000000027;
    }

    else
    {
      sub_2610BCF84();

      v4 = 0xD000000000000024;
    }
  }

  else if (v3 == 2)
  {
    sub_2610BCF84();

    v4 = 0xD00000000000002ELL;
  }

  else
  {
    if (v3 != 3)
    {
      return 0xD000000000000018;
    }

    sub_2610BCF84();

    v4 = 0xD000000000000021;
  }

  v6 = v4;
  MEMORY[0x2666F7380](v2, v1);
  return v6;
}

unint64_t sub_261049AB4()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v10 = v0[1];
  v9 = *v0;
  v5 = PASFlowStepError.description.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

unint64_t sub_261049B84()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return PASFlowStepError.description.getter();
}

uint64_t sub_261049BC4(uint64_t a1)
{
  v2 = sub_26104E5B0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261049C00(uint64_t a1)
{
  v2 = sub_26104E5B0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASSourceFlowStep._delegate.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    v4 = *(v3 + 8);
  }

  return result;
}

uint64_t PASSourceFlowStep._delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26104E230(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

void (*PASSourceFlowStep._delegate.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = (*(a3 + 16))(a2, a3);
  if (v9)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  *v8 = v9;
  v8[1] = v11;
  return sub_261049D64;
}

uint64_t PASTargetFlowStep._delegate.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    v4 = *(v3 + 8);
  }

  return result;
}

uint64_t sub_261049DB8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = swift_unknownObjectRetain();
  a5(v11, v9, v7, v6);

  return swift_unknownObjectRelease();
}

uint64_t PASTargetFlowStep._delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26104E2DC(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

void (*PASTargetFlowStep._delegate.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = (*(a3 + 16))(a2, a3);
  if (v9)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  *v8 = v9;
  v8[1] = v11;
  return sub_261049F14;
}

void sub_261049F2C(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[1];
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    v10 = swift_unknownObjectRetain();
    a3(v10, v5, v8, v7);
    swift_unknownObjectRelease();
    v11 = *v4;
  }

  else
  {
    a3(v9, v5, v8, v7);
  }

  swift_unknownObjectRelease();

  free(v4);
}

Swift::Void __swiftcall PASFlowStepIntermediate.stepDidFinish()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v1 + 8);
  v7 = *(v6 + 16);
  if (v7())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);
    swift_unknownObjectRetain();
    v9 = sub_2610BC794();
    v10 = sub_2610BCD74();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v19 = v10;
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v11 = 136446210;
      swift_unknownObjectRetain();
      v12 = sub_2610BCA34();
      v14 = sub_260FA5970(v12, v13, &v20);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_260F97000, v9, v19, "%{public}s delegate is nil in setFinished", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x2666F8720](v18, -1, -1);
      MEMORY[0x2666F8720](v11, -1, -1);
    }
  }

  if ((v7)(v5, v6))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v3, v4, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_26104A1D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  v7 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 72) = v7;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0x80000002610D4EF0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_26104FE88(a1, a2, a3);
  v8 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63BA0, &qword_2610BED60);
  return v8;
}

unint64_t sub_26104A2F8()
{
  v1 = 0xD000000000000014;
  v2 = *(v0 + 16);
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000010;
  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*(v0 + 16))
  {
    v1 = 0xD000000000000012;
  }

  if (*(v0 + 16) <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *(v0 + 16);
  return result;
}

uint64_t PASFlowStepBase.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PASFlowStepBase.init()();
  return v3;
}

char *PASFlowStepBase.init()()
{
  v1 = v0;
  v2 = sub_2610BC5D4();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v45 = 0;
  sub_2610BC804();
  (*(v10 + 32))(&v1[v14], v13, v9);
  if (MEMORY[0x277D84F90] >> 62 && sub_2610BD0E4())
  {
    v15 = sub_26100978C(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables] = v15;
  v41 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer;
  *&v1[OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer] = 0;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *&v1[v16] = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics;
  *&v1[OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics] = 0;
  v19 = sub_2610437A0();
  v20 = *v1;
  v21 = sub_2610BD634();
  v23 = v22;
  v24 = sub_2610BCC94();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = qword_27FE63820;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_27FE65948;
  v27 = sub_26104E388(&qword_27FE646F8, type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  *(v28 + 32) = v19;
  *(v28 + 40) = v21;
  *(v28 + 48) = v23;
  *(v28 + 56) = 0;

  sub_261042434(0, 0, v8, &unk_2610C8B98, v28);

  v29 = *&v1[v18];

  v30 = sub_2610BD634();
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 2;

  v34 = v42;
  sub_2610BC5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65958, &qword_2610C8BB0);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 136) = 0;
  *(v35 + 144) = 1;
  *(v35 + 168) = 0;
  sub_2610BC574();
  v37 = v36;

  (*(v43 + 8))(v34, v44);
  *(v35 + 112) = v37;
  *(v35 + 120) = 0xD000000000000013;
  *(v35 + 128) = 0x80000002610D4D60;
  *(v35 + 152) = &unk_2610C8BA8;
  *(v35 + 160) = v33;
  v38 = *&v1[v41];
  *&v1[v41] = v35;

  return v1;
}

uint64_t sub_26104A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = sub_2610BCC34();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26104A994, 0, 0);
}

uint64_t sub_26104A994()
{
  v19 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_2610BC7B4();
  v0[21] = __swift_project_value_buffer(v2, qword_27FE65900);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446466;
    v0[13] = v5;
    type metadata accessor for PASFlowStepBase(0);

    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2050;
    *(v7 + 14) = v6;
    _os_log_impl(&dword_260F97000, v3, v4, "%{public}s will timeout after %{public}llu seconds", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v13 = v0[15];
  if (is_mul_ok(v13, 0x3B9ACA00uLL))
  {
    v14 = 1000000000 * v13;
    v15 = *(MEMORY[0x277D857E8] + 4);
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_26104ABB0;
    v12 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](v12);
}

uint64_t sub_26104ABB0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v5 = *(v2 + 160);

    v6 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26104AD00, 0, 0);
}

uint64_t sub_26104AD00()
{
  v60 = v0;
  v1 = *(v0 + 184);
  sub_2610BCCD4();
  if (v1)
  {
    *(v0 + 200) = v1;
    v2 = *(v0 + 160);
    v3 = *(v0 + 144);
    *(v0 + 56) = v1;
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 168);
      v6 = *(v0 + 112);

      v7 = sub_2610BC794();
      v8 = sub_2610BCD84();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 112);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v59[0] = v11;
        *v10 = 136446210;
        *(v0 + 88) = v9;
        type metadata accessor for PASFlowStepBase(0);

        v12 = sub_2610BCA34();
        v14 = sub_260FA5970(v12, v13, v59);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_260F97000, v7, v8, "%{public}s timeout cancelled", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x2666F8720](v11, -1, -1);
        MEMORY[0x2666F8720](v10, -1, -1);
      }

      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      v15 = *(v0 + 160);

      v16 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 64) = v1;
    v19 = v1;
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 16);
      v21 = *(v0 + 24);
      v22 = *(v0 + 32);
      v23 = *(v0 + 40);
      v24 = *(v0 + 48);
      if (v24 == 4 && !(v21 | v20 | v22 | v23))
      {
        v42 = *(v0 + 168);
        v43 = *(v0 + 112);

        v44 = sub_2610BC794();
        v45 = sub_2610BCD64();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = *(v0 + 112);
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v59[0] = v48;
          *v47 = 136446210;
          *(v0 + 80) = v46;
          type metadata accessor for PASFlowStepBase(0);

          v49 = sub_2610BCA34();
          v51 = sub_260FA5970(v49, v50, v59);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_260F97000, v44, v45, "%{public}s timed out.", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x2666F8720](v48, -1, -1);
          MEMORY[0x2666F8720](v47, -1, -1);
        }

        v52 = *(v0 + 128);
        sub_260FC3450();
        *(v0 + 208) = swift_allocError();
        *v53 = 0u;
        *(v53 + 16) = 0u;
        *(v53 + 32) = 4;
        v58 = v52 + *v52;
        v54 = v52[1];
        v55 = swift_task_alloc();
        *(v0 + 216) = v55;
        *v55 = v0;
        v55[1] = sub_26104BC5C;
        v56 = *(v0 + 136);
LABEL_18:

        __asm { BRAA            X1, X16 }
      }

      sub_26102880C(v20, v21, v22, v23, v24);
    }

    v25 = *(v0 + 168);
    v26 = *(v0 + 112);

    v27 = v1;
    v28 = sub_2610BC794();
    v29 = sub_2610BCD64();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 112);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59[0] = v33;
      *v31 = 136446466;
      *(v0 + 72) = v30;
      type metadata accessor for PASFlowStepBase(0);

      v34 = sub_2610BCA34();
      v36 = sub_260FA5970(v34, v35, v59);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2114;
      v37 = v1;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&dword_260F97000, v28, v29, "%{public}s timeout error: %{public}@", v31, 0x16u);
      sub_260FA9980(v32, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x2666F8720](v33, -1, -1);
      MEMORY[0x2666F8720](v31, -1, -1);
    }

    v58 = (*(v0 + 128) + **(v0 + 128));
    v39 = *(*(v0 + 128) + 4);
    v40 = swift_task_alloc();
    *(v0 + 224) = v40;
    *v40 = v0;
    v40[1] = sub_26104BDE0;
    v41 = *(v0 + 136);
    goto LABEL_18;
  }

  sub_2610BCC74();
  *(v0 + 192) = sub_2610BCC64();
  v18 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26104B3F8, v18, v17);
}

uint64_t sub_26104B3F8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 112);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *(v0 + 50) = *(v0 + 49);

  return MEMORY[0x2822009F8](sub_26104B4B8, 0, 0);
}

uint64_t sub_26104B4B8()
{
  v68 = v0;
  if (*(v0 + 50) == 1)
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 112);

    v3 = sub_2610BC794();
    v4 = sub_2610BCD84();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 112);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v67[0] = v7;
      *v6 = 136446210;
      *(v0 + 96) = v5;
      type metadata accessor for PASFlowStepBase(0);

      v8 = sub_2610BCA34();
      v10 = sub_260FA5970(v8, v9, v67);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_260F97000, v3, v4, "%{public}s timeout was not cancelled when the step was finished", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

LABEL_9:
    v26 = *(v0 + 160);

    v27 = *(v0 + 8);

    return v27();
  }

  sub_260FC3450();
  v11 = swift_allocError();
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 4;
  swift_willThrow();
  *(v0 + 200) = v11;
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);
  *(v0 + 56) = v11;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 112);

    v18 = sub_2610BC794();
    v19 = sub_2610BCD84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 112);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v67[0] = v22;
      *v21 = 136446210;
      *(v0 + 88) = v20;
      type metadata accessor for PASFlowStepBase(0);

      v23 = sub_2610BCA34();
      v25 = sub_260FA5970(v23, v24, v67);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_260F97000, v18, v19, "%{public}s timeout cancelled", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x2666F8720](v22, -1, -1);
      MEMORY[0x2666F8720](v21, -1, -1);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    goto LABEL_9;
  }

  *(v0 + 64) = v11;
  v29 = v11;
  if (swift_dynamicCast())
  {
    v30 = *(v0 + 16);
    v31 = *(v0 + 24);
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    if (v34 == 4 && !(v31 | v30 | v32 | v33))
    {
      v53 = *(v0 + 168);
      v54 = *(v0 + 112);

      v55 = sub_2610BC794();
      v56 = sub_2610BCD64();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 112);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v67[0] = v59;
        *v58 = 136446210;
        *(v0 + 80) = v57;
        type metadata accessor for PASFlowStepBase(0);

        v60 = sub_2610BCA34();
        v62 = sub_260FA5970(v60, v61, v67);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_260F97000, v55, v56, "%{public}s timed out.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x2666F8720](v59, -1, -1);
        MEMORY[0x2666F8720](v58, -1, -1);
      }

      v63 = *(v0 + 128);
      v11 = swift_allocError();
      *(v0 + 208) = v11;
      *v64 = 0u;
      *(v64 + 16) = 0u;
      *(v64 + 32) = 4;
      v66 = (v63 + *v63);
      v65 = v63[1];
      v50 = swift_task_alloc();
      *(v0 + 216) = v50;
      *v50 = v0;
      v51 = sub_26104BC5C;
      goto LABEL_19;
    }

    sub_26102880C(v30, v31, v32, v33, v34);
  }

  v35 = *(v0 + 168);
  v36 = *(v0 + 112);

  v37 = v11;
  v38 = sub_2610BC794();
  v39 = sub_2610BCD64();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 112);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v67[0] = v43;
    *v41 = 136446466;
    *(v0 + 72) = v40;
    type metadata accessor for PASFlowStepBase(0);

    v44 = sub_2610BCA34();
    v46 = sub_260FA5970(v44, v45, v67);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2114;
    v47 = v11;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v48;
    *v42 = v48;
    _os_log_impl(&dword_260F97000, v38, v39, "%{public}s timeout error: %{public}@", v41, 0x16u);
    sub_260FA9980(v42, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x2666F8720](v43, -1, -1);
    MEMORY[0x2666F8720](v41, -1, -1);
  }

  v66 = (*(v0 + 128) + **(v0 + 128));
  v49 = *(*(v0 + 128) + 4);
  v50 = swift_task_alloc();
  *(v0 + 224) = v50;
  *v50 = v0;
  v51 = sub_26104BDE0;
LABEL_19:
  v50[1] = v51;
  v52 = *(v0 + 136);

  return v66(v11);
}

uint64_t sub_26104BC5C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26104BD74, 0, 0);
}

uint64_t sub_26104BD74()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26104BDE0()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26104BEDC, 0, 0);
}

uint64_t sub_26104BEDC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PASFlowStepBase.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  return v0;
}

uint64_t PASFlowStepBase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_26104C0DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PASFlowStepBase(0);
  result = sub_2610BC7F4();
  *a1 = result;
  return result;
}

uint64_t PASTargetFlowStepBase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t (*sub_26104C254(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261050280;
}

uint64_t sub_26104C2F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PASTargetFlowStep._delegate.getter(a1, WitnessTable);
}

uint64_t (*sub_26104C374(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  WitnessTable = swift_getWitnessTable();
  *(v5 + 32) = PASTargetFlowStep._delegate.modify(v5, a2, WitnessTable);
  return sub_261050284;
}

void (*sub_26104C410(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

uint64_t sub_26104C4B4()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return v6();
}

uint64_t sub_26104C5EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PASTargetFlowStepBase(0);
  result = sub_2610BCF94();
  *a1 = result;
  return result;
}

uint64_t sub_26104C694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v5;
  return result;
}

uint64_t sub_26104C724(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_26104C794(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_26104C808(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_26104C9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = a3(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_26104CA10()
{
  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate);
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert, v2);
  v3 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert;

  return (v5)(v3, v2);
}

uint64_t PASSourceFlowStepBase.__deallocating_deinit()
{
  PASSourceFlowStepBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26104CB54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  return result;
}

uint64_t sub_26104CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_26104CC14(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_261050280;
}

void sub_26104CCB4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_26104CD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PASSourceFlowStep._delegate.getter(a1, WitnessTable);
}

uint64_t sub_26104CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  a6(a1, a2, a3, WitnessTable);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_26104CE30(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  WitnessTable = swift_getWitnessTable();
  *(v5 + 32) = PASSourceFlowStep._delegate.modify(v5, a2, WitnessTable);
  return sub_26104CECC;
}

void sub_26104CED0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26104CF18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_26104CF8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void (*sub_26104CFFC(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_261050278;
}

uint64_t sub_26104D0A0()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FB6DB4;

  return v6();
}

uint64_t sub_26104D1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v20 - v15;
  v17 = sub_2610BCC94();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v9;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;

  return sub_261042D5C(0, 0, v16, a7, v18);
}

uint64_t sub_26104D2FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PASSourceFlowStepBase(0);
  result = sub_2610BCF94();
  *a1 = result;
  return result;
}

uint64_t sub_26104D340(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26105026C;

  return v7(a1);
}

uint64_t sub_26104D438(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26104D530;

  return v7(a1);
}

uint64_t sub_26104D530()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26104D628(void (*a1)(void))
{
  a1();

  return sub_2610BD634();
}

uint64_t sub_26104D664(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_260FB6DB4;

  return sub_261046500(v7, v8, a2, v9, v10, v11, a4);
}

uint64_t sub_26104D738(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FB6F34;

  return sub_261046934(a1, a2, v8, v9, v10, a4);
}

uint64_t sub_26104D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = *a5;
  *(v5 + 88) = *(a5 + 16);
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26104D8A8, v6, 0);
}

uint64_t sub_26104D8A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v3 = *(v0 + 88);
  *(v0 + 32) = v3;
  sub_26104FE88(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_260FDC73C;
  v5 = *(v0 + 56);

  return sub_261047124(v0 + 16, 0, 0);
}

uint64_t sub_26104D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = *a5;
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_260FBF860;

  return sub_261045D8C(v8, v9, a6);
}

uint64_t sub_26104DA3C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26104DB30;

  return v6(v2 + 32);
}

uint64_t sub_26104DB30()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26104DC44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet;
  v22 = 0;
  sub_2610BC804();
  v13 = *(v7 + 32);
  v13(v3 + v12, v10, v6);
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert;
  v22 = 0;
  sub_2610BC804();
  v13(v3 + v14, v10, v6);
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert;
  v22 = 0;
  sub_2610BC804();
  v13(v3 + v15, v10, v6);
  if (!a1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260F97000, v17, v18, "PASSourceFlowStepBase delegate is nil in init", v19, 2u);
      MEMORY[0x2666F8720](v19, -1, -1);
    }
  }

  swift_beginAccess();
  *(v11 + 8) = a2;
  swift_unknownObjectWeakAssign();
  PASFlowStepBase.init()();
  return v3;
}

uint64_t sub_26104DEC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260FBF860;

  return sub_26104A8D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26104DF94(uint64_t a1)
{
  v4 = *(sub_2610BC5D4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FBF860;

  return sub_26104D974(a1, v6, v7, v8, v1 + 5, v1 + v5);
}

uint64_t sub_26104E0E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (!a1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASTargetFlowStepBase delegate is nil in init", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }
  }

  swift_beginAccess();
  *(v6 + 8) = a2;
  swift_unknownObjectWeakAssign();
  PASFlowStepBase.init()();
  return v3;
}

uint64_t sub_26104E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a4;
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v4 = 0;
    }

    a4 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 24);

  return v7(v4, v6);
}

uint64_t sub_26104E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a4;
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v4 = 0;
    }

    a4 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 24);

  return v7(v4, v6);
}

uint64_t sub_26104E388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26104E3D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_26104E3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_26104D800(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_26104E4B4(uint64_t *a1, double a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return sub_26104D664(a1, v6, v2 + 24, a2);
}

unint64_t sub_26104E578(void *a1)
{
  a1[1] = sub_26104E5B0();
  a1[2] = sub_26104E604();
  result = sub_26104E658();
  a1[3] = result;
  return result;
}

unint64_t sub_26104E5B0()
{
  result = qword_27FE65A50;
  if (!qword_27FE65A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65A50);
  }

  return result;
}

unint64_t sub_26104E604()
{
  result = qword_27FE65A58;
  if (!qword_27FE65A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65A58);
  }

  return result;
}

unint64_t sub_26104E658()
{
  result = qword_27FE65A60;
  if (!qword_27FE65A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65A60);
  }

  return result;
}

uint64_t sub_26104E6AC(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A68, type metadata accessor for PASTargetFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26104E724(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26104E75C(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A70, type metadata accessor for PASTargetFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26104E7B4(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A48, type metadata accessor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26104E80C(uint64_t a1)
{
  result = sub_26104E388(&qword_27FE65A78, type metadata accessor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_get_45Tm@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void)@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  result = a4(*(a2 + a3 - 16), *(a2 + a3 - 8));
  *a5 = result;
  a5[1] = v8;
  return result;
}

uint64_t keypath_get_53Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_54Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2 + *a5;
  swift_beginAccess();
  *(v7 + 8) = v6;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup16PASFlowStepErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_26104E974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26104E9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26104EA04(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t dispatch thunk of PASFlowStepDelegate.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBF860;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASFlowStepDelegate.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBF860;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASSourceFlowStepDelegate.stepDidEndFlow(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowStepDelegate.performAIDASignIn(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBCD00;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowStepDelegate.stepDidEndFlow(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASFlowStep.prepareForPresentation()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return v9(a1, a2);
}

void sub_26104F268()
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PASFlowStepBase.prepareForPresentation()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return v6();
}

void sub_26104F698()
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PASSourceFlowStepBase.resetFlow()()
{
  v2 = *(*v0 + 504);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return v6();
}

uint64_t dispatch thunk of PASSourceFlowStepBase.cancelFlow()()
{
  v2 = *(*v0 + 528);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return v6();
}

uint64_t sub_26104FDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26104FE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26104FE88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_26104FEA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FBF860;

  return sub_26104D438(a1, v5);
}

uint64_t sub_26104FF58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FBF860;

  return sub_26104DA3C(a1, v5);
}

uint64_t sub_261050010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AD0, qword_2610C7BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2610500D0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBD298;

  return sub_26104D738(v2, v3, (v0 + 4), v4);
}

uint64_t sub_261050190(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FBF860;

  return sub_26104D340(a1, v5);
}

id PASExtensionAuthenticateExtrasProtocolXPCInterface.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = [v0 interfaceWithProtocol_];
  [v1 setInterface:v2 forSelector:sel_fetchExtrasWithCompletion_ argumentIndex:0 ofReply:1];

  return v1;
}

id PASExtensionInfoProviderXPCInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t PASExtensionInfoProviderError.hashValue.getter()
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](0);
  return sub_2610BD574();
}

unint64_t sub_261050424()
{
  result = qword_27FE65AC0;
  if (!qword_27FE65AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AC0);
  }

  return result;
}

unint64_t sub_261050478(void *a1)
{
  a1[1] = sub_2610504B0();
  a1[2] = sub_261050504();
  result = sub_261050558();
  a1[3] = result;
  return result;
}

unint64_t sub_2610504B0()
{
  result = qword_27FE65AC8;
  if (!qword_27FE65AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AC8);
  }

  return result;
}

unint64_t sub_261050504()
{
  result = qword_27FE65AD0;
  if (!qword_27FE65AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AD0);
  }

  return result;
}

unint64_t sub_261050558()
{
  result = qword_27FE65AD8;
  if (!qword_27FE65AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AD8);
  }

  return result;
}

unint64_t sub_2610505AC()
{
  result = qword_27FE65AE0;
  if (!qword_27FE65AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AE0);
  }

  return result;
}

unint64_t sub_261050600()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x80000002610D4F90;
  v3 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v3;
}

uint64_t sub_2610506D8(uint64_t a1)
{
  v2 = sub_2610504B0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261050714(uint64_t a1)
{
  v2 = sub_2610504B0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261050774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2610507BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261050808@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63AB0, qword_2610C95B0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63AB0, qword_2610C95B0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA1D7C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_261053F84(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_26105094C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASExtensionLocator allIdentities querying for extensions", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  sub_261050808(v0 + 16);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_261050AD0;

  return (sub_2610AF8B4)(0xD00000000000002ELL, 0x80000002610D5010);
}

uint64_t sub_261050AD0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_261050BD0, 0, 0);
}

uint64_t sub_261050BD0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_261050C38()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_261050CC4;

  return sub_26105092C();
}

uint64_t sub_261050CC4(uint64_t a1)
{
  v3 = *(*v2 + 176);
  v4 = *v2;
  *(v4 + 184) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261050DF8, 0, 0);
}

uint64_t sub_261050DF8()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2610BD044();
    v3 = v1 + 32;
    do
    {
      sub_260FA99E0(v3, (v0 + 2));
      sub_260FA99E0((v0 + 2), (v0 + 7));
      v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
      type metadata accessor for PASExtensionHandle();
      v5 = swift_allocObject();
      v6 = sub_2610BC774();
      v0[15] = v6;
      v0[16] = &off_28738BA98;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      v8 = *(*(v6 - 8) + 16);
      v8(boxed_opaque_existential_1, v4, v6);
      sub_260FA99E0((v0 + 12), v5 + 16);
      v0[20] = v6;
      v0[21] = &off_28738BA98;
      v9 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      v8(v9, boxed_opaque_existential_1, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v10 = swift_allocObject();
      sub_260F98E14((v0 + 17), v10 + 16);
      type metadata accessor for PASExtensionProxy();
      v11 = swift_allocObject();
      *(v11 + 16) = &unk_2610C9598;
      *(v11 + 24) = v10;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      *(v5 + 56) = v11;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      sub_2610BD024();
      v12 = *(v18 + 16);
      sub_2610BD054();
      sub_2610BD064();
      sub_2610BD034();
      v3 += 40;
      --v2;
    }

    while (v2);
    v13 = v0[23];

    v14 = v18;
  }

  else
  {
    v15 = v0[23];

    v14 = MEMORY[0x277D84F90];
  }

  v16 = v0[1];

  return v16(v14);
}

uint64_t sub_261051028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2610510D4, 0, 0);
}

uint64_t sub_2610510D4()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v19 = *(v0 + 88);
    }

    result = sub_2610BD0E4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v20 = **(v0 + 80);
    v21 = swift_task_alloc();
    *(v0 + 112) = v21;
    *v21 = v0;
    v21[1] = sub_261051480;

    return sub_261053AB0(v20);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v22 = *(v0 + 88) + 32;
    v24 = **(v0 + 80);
    v25 = v1 & 0xC000000000000001;
    v23 = result;
    while (1)
    {
      if (v25)
      {
        v5 = MEMORY[0x2666F78E0](v3, *(v0 + 88));
      }

      else
      {
        v5 = *(v22 + 8 * v3);
      }

      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v8 = sub_2610BCC94();
      v9 = *(v8 - 8);
      (*(v9 + 56))(v7, 1, 1, v8);
      v10 = swift_allocObject();
      v10[2] = 0;
      v11 = v10 + 2;
      v10[3] = 0;
      v10[4] = v5;
      sub_260FA9918(v7, v6, &unk_27FE65800, &qword_2610BF910);
      LODWORD(v6) = (*(v9 + 48))(v6, 1, v8);

      v12 = *(v0 + 96);
      if (v6 == 1)
      {
        sub_260FA9980(*(v0 + 96), &unk_27FE65800, &qword_2610BF910);
        if (!*v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_2610BCC84();
        (*(v9 + 8))(v12, v8);
        if (!*v11)
        {
LABEL_13:
          v14 = 0;
          v16 = 0;
          goto LABEL_14;
        }
      }

      v13 = v10[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_2610BCBF4();
      v16 = v15;
      swift_unknownObjectRelease();
LABEL_14:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_2610C9570;
      *(v17 + 24) = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
      v18 = v16 | v14;
      if (v16 | v14)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      ++v3;
      v4 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_260FA9980(v4, &unk_27FE65800, &qword_2610BF910);
      if (v23 == v3)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261051480(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261051580, 0, 0);
}

uint64_t sub_261051580()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  **(v0 + 72) = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2610515F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_261051614, 0, 0);
}

uint64_t sub_261051614()
{
  v15 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2610BC7B4();
  v0[4] = __swift_project_value_buffer(v2, qword_27FE65900);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v8 = sub_2610BC764();
    v10 = sub_260FA5970(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASExtensionLocator allLocatedExtensions fetching manifest for extension %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v11 = *(v0[3] + 56);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_2610517F4;

  return sub_261018F4C();
}

uint64_t sub_2610517F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_26105198C;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_26105191C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26105191C()
{
  v1 = v0[7];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_26105198C()
{
  v22 = v0;
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];

  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136446466;
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    v13 = sub_2610BC764();
    v15 = sub_260FA5970(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_260F97000, v5, v6, "PASExtensionLocator allLocatedExtensions failed to fetch manifest for extension %{public}s: %{public}@", v10, 0x16u);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2666F8720](v12, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[2];
  *v18 = 0;
  v18[1] = 0;
  v19 = v0[1];

  return v19();
}

uint64_t sub_261051B7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_261051C0C;

  return sub_261050C38();
}

uint64_t sub_261051C0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 56) = a1;

  return MEMORY[0x2822009F8](sub_261051D5C, 0, 0);
}

uint64_t sub_261051D5C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AE8, &qword_2610C9558);
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_261051E7C;

  return MEMORY[0x282200600](v0 + 2, v3, v5, 0, 0, &unk_2610C9550, v4, v3);
}

uint64_t sub_261051E7C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_261051FB0, 0, 0);
}

uint64_t sub_261051FB0()
{
  v49 = v1;
  v2 = 0;
  v3 = v1[2];
  v4 = *(v3 + 2);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 16 * v2 + 40;
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 2))
    {
      __break(1u);
      goto LABEL_32;
    }

    v7 = v6 + 16;
    ++v2;
    v8 = *&v3[v6];
    v6 += 16;
    if (*(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable))
    {
      v0 = *&v3[v7 - 24];

      v9 = v8;
      v48[0] = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2610525F4(0, *(v5 + 2) + 1, 1);
        v5 = v48[0];
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_2610525F4((v10 > 1), v11 + 1, 1);
        v5 = v48[0];
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v0;
      *(v12 + 5) = v9;
      goto LABEL_2;
    }
  }

  v13 = v1[6];

  v48[0] = v5;

  sub_261052974(v48);
  if (!v13)
  {

    v3 = v48[0];
    v15 = *(v48[0] + 2);
    v0 = MEMORY[0x277D84F90];
    if (v15)
    {
      v48[0] = MEMORY[0x277D84F90];
      sub_2610525D4(0, v15, 0);
      v0 = v48[0];
      v16 = (v3 + 40);
      do
      {
        v17 = *v16;
        __swift_project_boxed_opaque_existential_1(*(v16 - 1) + 2, *(*(v16 - 1) + 5));

        v18 = v17;
        v19 = sub_2610BC764();
        v21 = v20;

        v48[0] = v0;
        v23 = *(v0 + 2);
        v22 = *(v0 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_2610525D4((v22 > 1), v23 + 1, 1);
          v0 = v48[0];
        }

        *(v0 + 2) = v23 + 1;
        v24 = &v0[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        v16 += 2;
        --v15;
      }

      while (v15);
    }

    if (qword_27FE63808 != -1)
    {
LABEL_32:
      swift_once();
    }

    v25 = sub_2610BC7B4();
    __swift_project_value_buffer(v25, qword_27FE65900);

    v26 = sub_2610BC794();
    v27 = sub_2610BCD44();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136446210;
      v30 = MEMORY[0x2666F7460](v0, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_260FA5970(v30, v32, v48);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_260F97000, v26, v27, "PASExtensionLocator designatedExtension extensions with available account pickers: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x2666F8720](v29, -1, -1);
      MEMORY[0x2666F8720](v28, -1, -1);

      if (*(v3 + 2))
      {
LABEL_23:
        v34 = *(v3 + 4);
        v35 = *(v3 + 5);
        swift_retain_n();
        v36 = v35;

        v37 = v36;
        v38 = sub_2610BC794();
        v39 = sub_2610BCD44();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v48[0] = v41;
          *v40 = 136446210;
          __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));
          v42 = sub_2610BC764();
          v44 = sub_260FA5970(v42, v43, v48);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_260F97000, v38, v39, "PASExtensionLocator designatedExtension picking user picker extension %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x2666F8720](v41, -1, -1);
          MEMORY[0x2666F8720](v40, -1, -1);
        }

        v45 = v1[3];
        *v45 = v34;
        v45[1] = v37;
        goto LABEL_28;
      }
    }

    else
    {

      if (*(v3 + 2))
      {
        goto LABEL_23;
      }
    }

    v46 = v1[3];

    *v46 = 0;
    v46[1] = 0;
LABEL_28:
    v47 = v1[1];

    return v47();
  }
}

uint64_t sub_2610524A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_261052500(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return sub_261051028(a1, a2, v7);
}

void *sub_2610525B4(void *a1, int64_t a2, char a3)
{
  result = sub_261052614(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2610525D4(char *a1, int64_t a2, char a3)
{
  result = sub_26105275C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2610525F4(char *a1, int64_t a2, char a3)
{
  result = sub_261052868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261052614(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65B00, &qword_2610C95A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65B08, &qword_2610C95A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26105275C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67030, &unk_2610C4160);
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

char *sub_261052868(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64678, &qword_2610C2280);
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

uint64_t sub_261052974(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2610538DC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2610529E0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2610529E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2610BD2F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2610BCB84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_261052C54(v7, v8, a1, v4);
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
    return sub_261052AD8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261052AD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v17 = a3;
    v6 = *(v19 + 16 * a3);
    v15 = v5;
    v16 = v4;
    while (1)
    {
      v18 = *(&v6 + 1);
      v8 = *v4;
      v7 = *(v4 + 8);
      __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));

      v9 = v18;

      v10 = v7;
      sub_2610BC764();
      __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
      sub_2610BC764();
      sub_2610538F0();
      v11 = sub_2610BCE84();

      if (v11 != -1)
      {
LABEL_4:
        a3 = v17 + 1;
        v4 = v16 + 16;
        v5 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v12 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v12;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261052C54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v100 = result;
    while (1)
    {
      v104 = v9;
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v101 = v10;
        v102 = v5;
        v11 = (*v6 + 16 * (v9 + 1));
        v12 = v11[1];
        v13 = v9;
        v108 = 16 * v9;
        v14 = (*v6 + 16 * v9);
        v16 = *v14;
        v15 = v14[1];
        __swift_project_boxed_opaque_existential_1((*v11 + 16), *(*v11 + 40));

        v17 = v12;

        v115 = v15;
        sub_2610BC764();
        __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
        sub_2610BC764();
        sub_2610538F0();
        v113 = sub_2610BCE84();

        v18 = v13 + 2;
        v19 = (v14 + 3);
        v111 = v8;
        while (v8 != v18)
        {
          v20 = *v19;
          v22 = v19 + 2;
          v21 = v19[2];
          v23 = *(v19 - 1);
          __swift_project_boxed_opaque_existential_1(v19[1] + 2, *(v19[1] + 5));

          v24 = v21;

          v25 = v20;
          sub_2610BC764();
          __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
          sub_2610BC764();
          v26 = sub_2610BCE84();

          ++v18;
          v19 = v22;
          v8 = v111;
          if ((v113 == -1) == (v26 != -1))
          {
            v8 = v18 - 1;
            break;
          }
        }

        v10 = v101;
        v5 = v102;
        v9 = v104;
        v6 = a3;
        v27 = v108;
        if (v113 == -1)
        {
          v7 = v100;
          if (v8 < v104)
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v104 < v8)
          {
            v78 = 16 * v8 - 16;
            v79 = v8;
            v80 = v104;
            do
            {
              if (v80 != --v79)
              {
                v82 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v81 = *(v82 + v27);
                *(v82 + v27) = *(v82 + v78);
                *(v82 + v78) = v81;
              }

              ++v80;
              v78 -= 16;
              v27 += 16;
            }

            while (v80 < v79);
          }
        }

        else
        {
          v7 = v100;
        }
      }

      v28 = v6[1];
      if (v8 >= v28)
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v8, v9))
      {
        goto LABEL_118;
      }

      if (v8 - v9 >= a4)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 >= v28)
      {
        v29 = v6[1];
      }

      else
      {
        v29 = v9 + a4;
      }

      if (v29 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v8 == v29)
      {
LABEL_21:
        v30 = v8;
        if (v8 < v9)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v103 = v5;
        v114 = *v6;
        v83 = *v6 + 16 * v8 - 16;
        v84 = v9 - v8;
        v107 = v29;
        do
        {
          v110 = v83;
          v112 = v8;
          v85 = *(v114 + 16 * v8);
          v109 = v84;
          do
          {
            v116 = *(&v85 + 1);
            v87 = *v83;
            v86 = *(v83 + 8);
            __swift_project_boxed_opaque_existential_1((v85 + 16), *(v85 + 40));

            v88 = v116;

            v89 = v86;
            sub_2610BC764();
            __swift_project_boxed_opaque_existential_1((v87 + 16), *(v87 + 40));
            sub_2610BC764();
            sub_2610538F0();
            v90 = sub_2610BCE84();

            if (v90 != -1)
            {
              break;
            }

            if (!v114)
            {
              goto LABEL_123;
            }

            v91 = *v83;
            v85 = *(v83 + 16);
            *v83 = v85;
            *(v83 + 16) = v91;
            v83 -= 16;
          }

          while (!__CFADD__(v84++, 1));
          v8 = v112 + 1;
          v83 = v110 + 16;
          v30 = v107;
          v84 = v109 - 1;
        }

        while (v112 + 1 != v107);
        v5 = v103;
        v6 = a3;
        v7 = v100;
        if (v107 < v104)
        {
          goto LABEL_117;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_260FD1D3C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v32 = *(v10 + 2);
      v31 = *(v10 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_260FD1D3C((v31 > 1), v32 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v33;
      v34 = &v10[16 * v32];
      *(v34 + 4) = v104;
      *(v34 + 5) = v30;
      v35 = *v7;
      if (!*v7)
      {
        goto LABEL_127;
      }

      v106 = v30;
      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v10 + 4);
            v38 = *(v10 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_41:
            if (v40)
            {
              goto LABEL_106;
            }

            v53 = &v10[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_109;
            }

            v59 = &v10[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_113;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v63 = &v10[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_55:
          if (v58)
          {
            goto LABEL_108;
          }

          v66 = &v10[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_111;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_62:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_120;
          }

          if (!*v6)
          {
            goto LABEL_124;
          }

          v75 = *&v10[16 * v74 + 32];
          v76 = *&v10[16 * v36 + 40];
          sub_261053460((*v6 + 16 * v75), (*v6 + 16 * *&v10[16 * v36 + 32]), (*v6 + 16 * v76), v35);
          if (v5)
          {
          }

          if (v76 < v75)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2610538B4(v10);
          }

          if (v74 >= *(v10 + 2))
          {
            goto LABEL_103;
          }

          v77 = &v10[16 * v74];
          *(v77 + 4) = v75;
          *(v77 + 5) = v76;
          result = sub_261053828(v36);
          v33 = *(v10 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v10[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_104;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_105;
        }

        v48 = &v10[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_107;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v52 >= v44)
        {
          v70 = &v10[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_114;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v106;
      if (v106 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_90:
  v93 = v7;
  v7 = v10;
  v10 = *v93;
  if (!*v93)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_2610538B4(v7);
    v7 = result;
  }

  v94 = *(v7 + 2);
  if (v94 >= 2)
  {
    while (1)
    {
      v95 = *v6;
      if (!*v6)
      {
        goto LABEL_125;
      }

      v6 = (v94 - 1);
      v96 = *&v7[16 * v94];
      v97 = *&v7[16 * v94 + 24];
      sub_261053460((v95 + 16 * v96), (v95 + 16 * *&v7[16 * v94 + 16]), (v95 + 16 * v97), v10);
      if (v5)
      {
      }

      if (v97 < v96)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2610538B4(v7);
      }

      if (v94 - 2 >= *(v7 + 2))
      {
        goto LABEL_116;
      }

      v98 = &v7[16 * v94];
      *v98 = v96;
      *(v98 + 1) = v97;
      result = sub_261053828(v94 - 1);
      v94 = *(v7 + 2);
      v6 = a3;
      if (v94 <= 1)
      {
      }
    }
  }
}

uint64_t sub_261053460(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v41 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v36 = v4;
      v39 = v7;
LABEL_25:
      v35 = v6 - 16;
      v24 = v5 - 16;
      v25 = v41;
      v37 = v6;
      do
      {
        v40 = v24;
        v26 = v24 + 16;
        v28 = *(v25 - 2);
        v27 = *(v25 - 1);
        v25 -= 16;
        v30 = *(v6 - 2);
        v29 = *(v6 - 1);
        __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));

        v31 = v27;

        v32 = v29;
        sub_2610BC764();
        __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
        sub_2610BC764();
        sub_2610538F0();
        v33 = sub_2610BCE84();

        if (v33 == -1)
        {
          v5 = v40;
          if (v26 != v37)
          {
            *v40 = *v35;
          }

          v4 = v36;
          if (v41 <= v36 || (v6 = v35, v35 <= v39))
          {
            v6 = v35;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v26 != v41)
        {
          *v40 = *v25;
        }

        v24 = v40 - 16;
        v41 = v25;
        v4 = v36;
        v6 = v37;
      }

      while (v25 > v36);
      v41 = v25;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v41 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v38 = v7;
        v14 = *(v6 + 1);
        v16 = *v4;
        v15 = *(v4 + 1);
        __swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40));

        v17 = v14;

        v18 = v6;
        v19 = v15;
        sub_2610BC764();
        __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
        sub_2610BC764();
        sub_2610538F0();
        v20 = sub_2610BCE84();

        if (v20 != -1)
        {
          break;
        }

        v21 = v18;
        v6 = v18 + 16;
        v22 = v38;
        if (v38 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 = v22 + 16;
        if (v4 >= v41 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v21 = v4;
      v22 = v38;
      v23 = v38 == v4;
      v4 += 16;
      v6 = v18;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v22 = *v21;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= &v4[(v41 - v4 + (v41 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v41 - v4) / 16));
  }

  return 1;
}

uint64_t sub_261053828(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2610538B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_2610538F0()
{
  result = qword_27FE65AF0;
  if (!qword_27FE65AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AF0);
  }

  return result;
}

uint64_t sub_261053944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_2610515F4(a1, v4, v5, v6);
}

uint64_t sub_2610539F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FB6DB4;

  return sub_26104D438(a1, v5);
}

uint64_t sub_261053AB0(uint64_t a1)
{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AF8, &unk_2610C9588);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261053B7C, 0, 0);
}

uint64_t sub_261053B7C()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  sub_2610BCC44();
  v0[8] = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D856B0] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261053C5C;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_261053C5C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261053D58, 0, 0);
}

uint64_t sub_261053D58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 16);
  if (v2 == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v13 = *(v0 + 8);
    v14 = *(v0 + 64);

    return v13(v14);
  }

  else
  {
    if (v2)
    {
      v17 = *(v0 + 16);
      v3 = *(v0 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v0 + 64);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_260FD1E40(0, *(v5 + 2) + 1, 1, v5);
      }

      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      v8 = v17;
      if (v7 >= v6 >> 1)
      {
        v15 = sub_260FD1E40((v6 > 1), v7 + 1, 1, v5);
        v8 = v17;
        v5 = v15;
      }

      *(v5 + 2) = v7 + 1;
      *&v5[16 * v7 + 32] = v8;
      *(v0 + 64) = v5;
    }

    v9 = *(MEMORY[0x277D856B0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_261053C5C;
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);

    return MEMORY[0x2822002E8](v0 + 16, 0, 0, v12);
  }
}

uint64_t sub_261053EF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBD298;

  return sub_261018E90(v0 + 16);
}

uint64_t sub_261053F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63AB0, qword_2610C95B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PASExtensionManifest.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD000000000000022, 0x80000002610D5040);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v2, v3);

  MEMORY[0x2666F7380](0xD000000000000024, 0x80000002610D5070);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v4, v5);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASExtensionManifest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable) == v7[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable])
      {
        v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
        v6 = v7[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation];

        v3 = v5 ^ v6 ^ 1;
        return v3 & 1;
      }
    }
  }

  else
  {
    sub_260FAC3F0(v8);
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t PASExtensionManifest.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  v2 = sub_2610BCBE4();
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  return sub_2610BCBE4() ^ v2;
}

uint64_t static PASExtensionManifest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE65B10 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionManifest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];
}

id PASExtensionManifest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_261054C08(a1);

  return v4;
}

id PASExtensionManifest.init(coder:)(void *a1)
{
  v2 = sub_261054C08(a1);

  return v2;
}

id PASExtensionManifest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261054870()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2610548B4(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_261054964()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2610549A8(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_261054A58()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = type metadata accessor for PASExtensionManifest();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable] = v2;
  v6[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PASExtensionManifestBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionManifestBuilder.init()()
{
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionManifestBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PASExtensionManifestBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionManifestBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_261054C08(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2610BC9D4();
  v5 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable] = v5;
  v6 = sub_2610BC9D4();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.__allocating_init(delegate:selectedFamilyMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_2610571A8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_261054F54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t PASFlowStepPasscodeBiometricsRequest.familyMemberFirstName.getter()
{
  sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember, &v6);
  if (v8 == 1)
  {
    v1 = v6;
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v2 = [*(v1 + 16) firstName];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2610BCA04();

      return v4;
    }
  }

  else
  {
    sub_260FDD4F8(&v6);
  }

  return 0;
}

uint64_t sub_26105514C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_261055288@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63C00, &qword_2610BEDD0);
  swift_endAccess();
}

uint64_t PASFlowStepPasscodeBiometricsRequest.init(delegate:selectedFamilyMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2610571A8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_261055418()
{
  v1 = v0[17];
  sub_261054F54((v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v0[21] = *(v3 + 16);
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xC375000000000000;
  sub_2610BCC74();
  v0[23] = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610554D8, v5, v4);
}

uint64_t sub_2610554D8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];

  v4(v6, v5);

  return MEMORY[0x2822009F8](sub_261055568, 0, 0);
}

uint64_t sub_261055568()
{
  if (*(v0 + 120))
  {
    sub_260F98E14((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = (*(v2 + 40))(v1, v2) ^ 1;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_260FA9980(v0 + 96, &unk_27FE641F0, qword_2610C0210);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    LOBYTE(v3) = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2610556FC;

  return sub_26104582C();
}

uint64_t sub_2610556FC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v7 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FF5690, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[7] = v8;
    *v8 = v3;
    v8[1] = sub_261055880;
    v9 = v3[2];

    return sub_2610553F8();
  }
}

uint64_t sub_261055880(char a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 64) = a1;

  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610559C4, v6, v5);
}

uint64_t sub_2610559C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  if (v1 == 1)
  {
    v3 = *(v0 + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    sub_260FC3450();
    swift_allocError();
    *v5 = 0xD00000000000004ELL;
    *(v5 + 8) = 0x80000002610D51C0;
    *(v5 + 16) = &unk_2610C9658;
    *(v5 + 24) = v4;
    *(v5 + 32) = 0;
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261055ACC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_2610BCC74();
  *(v1 + 48) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261055B64, v3, v2);
}

uint64_t sub_261055B64()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
    v5 = *(Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result);
    *v4 = 1;
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    sub_260FEBBC8(v5, v6);
    sub_2610439BC();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_261055C38()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[14] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepPasscodeBiometricsRequest requestSetup", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[13];

  sub_26105514C((v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_261055E30;

  return (v12)(v0 + 7, v6, v7);
}

uint64_t sub_261055E30()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_261056284;
  }

  else
  {
    v3 = sub_261055F44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261055F44()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_261056034;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 21), 0, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_261056034()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_261056464;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_261056150;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261056150()
{
  v1 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 104) + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  sub_260FEBBC8(v3, v4);
  sub_2610BCC74();
  *(v0 + 160) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26105621C, v6, v5);
}

uint64_t sub_26105621C()
{
  v1 = v0[20];
  v2 = v0[13];

  sub_2610439BC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_261056284()
{
  v19 = v0;
  v1 = v0[16];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v0[12] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepPasscodeBiometricsRequest requestSetup failed:\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v12 = v0[13] + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  v13 = *v12;
  *v12 = v1;
  v14 = *(v12 + 8);
  *(v12 + 8) = 1;
  sub_260FEBBC8(v13, v14);
  sub_2610BCC74();
  v0[20] = sub_2610BCC64();
  v16 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26105621C, v16, v15);
}

uint64_t sub_261056464()
{
  v20 = v0;
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[19];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v2;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[12] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepPasscodeBiometricsRequest requestSetup failed:\n%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v13 = v0[13] + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  v14 = *v13;
  *v13 = v2;
  v15 = *(v13 + 8);
  *(v13 + 8) = 1;
  sub_260FEBBC8(v14, v15);
  sub_2610BCC74();
  v0[20] = sub_2610BCC64();
  v17 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26105621C, v17, v16);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8);
  if (v1 == 255)
  {
    v5 = 0x80000002610D5210;
    sub_260FC3450();
    swift_allocError();
    *v11 = 0xD000000000000032;
    *(v11 + 8) = 0x80000002610D5210;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();
    return v5;
  }

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result);
  sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember, &v76);
  if (v1)
  {
    sub_260FEBC04(v2, 1);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v3 = sub_2610BC7B4();
    __swift_project_value_buffer(v3, qword_27FE65900);
    sub_260FEBC04(v2, 1);
    v4 = sub_2610BC794();
    v5 = sub_2610BCD64();
    sub_260FEBBC8(v2, v1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v75[0] = v7;
      *v6 = 136446210;
      v72[0] = v2;
      sub_260FEBC04(v2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v8 = sub_2610BCA34();
      v10 = sub_260FA5970(v8, v9, v75);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepPasscodeBiometricsRequest failed with error:\n%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    swift_willThrow();
    sub_260FDD4F8(&v76);
    return v5;
  }

  if (v78 <= 1u)
  {
    if (v78)
    {
      v47 = v76;
      sub_260F98E14((&v76 + 8), v75);
      sub_261055288(v72);
      v48 = v73;
      v49 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      LOBYTE(v69) = 1;
      LOBYTE(v48) = (*(v49 + 8))(&v69, v48, v49);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      v50 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      if ((v48 & 1) == 0)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v65 = *(v50 + 8);
        v66 = type metadata accessor for PASFlowStepProxiedAuth();
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        swift_allocObject();
        v5 = sub_261011064(Strong, v65, v47);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        v40 = &unk_27FE65420;
        v41 = type metadata accessor for PASFlowStepProxiedAuth;
        goto LABEL_19;
      }

      swift_beginAccess();
      v51 = swift_unknownObjectWeakLoadStrong();
      v52 = *(v50 + 8);
      sub_260FA99E0(v75, v72);
      *(&v70 + 1) = type metadata accessor for PASFamilyMember();
      v71 = sub_261057620(&unk_27FE64210, type metadata accessor for PASFamilyMember);
      *&v69 = v47;
      v53 = type metadata accessor for PASFlowStepSourceAuthentication();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      v56 = swift_allocObject();
      v57 = v73;
      v58 = v74;
      v59 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
      v60 = *(*(v57 - 8) + 64);
      MEMORY[0x28223BE20](v59);
      v62 = &v69 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v62);
      v5 = sub_26101F940(v51, v52, v62, &v69, v56, v57, v58);
      goto LABEL_17;
    }

    sub_260F98E14(&v76, v75);
    v24 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = *(v24 + 8);
    sub_260FA99E0(v75, v72);
    v27 = type metadata accessor for PASFlowStepSourceAuthentication();
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
LABEL_16:
    v30 = *(v27 + 48);
    v31 = *(v27 + 52);
    v32 = swift_allocObject();
    v33 = v73;
    v34 = v74;
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v36 = *(*(v33 - 8) + 64);
    MEMORY[0x28223BE20](v35);
    v38 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38);
    v5 = sub_26101F940(v25, v26, v38, &v69, v32, v33, v34);
LABEL_17:
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    goto LABEL_18;
  }

  if (v78 == 2)
  {
    v28 = v76;
    sub_260F98E14((&v76 + 8), v75);
    v29 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = *(v29 + 8);
    sub_260FA99E0(v75, v72);
    *(&v70 + 1) = type metadata accessor for PASAccountWithImage();
    v71 = sub_261057620(&unk_27FE65010, type metadata accessor for PASAccountWithImage);
    *&v69 = v28;
    v27 = type metadata accessor for PASFlowStepSourceAuthentication();
    goto LABEL_16;
  }

  if (v78 == 3)
  {
    v12 = v76;
    v13 = v77;
    v14 = *(*(&v76 + 1) + 56);
    type metadata accessor for PASExtensionAuthController();
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    v18 = *(v16 + 8);
    v75[3] = type metadata accessor for PASExtensionPickedAccount();
    v75[4] = sub_261057620(&qword_27FE65B68, type metadata accessor for PASExtensionPickedAccount);
    v75[0] = v12;
    v19 = type metadata accessor for PASFlowStepSourceAuthentication();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    v23 = v12;

    v5 = sub_261057390(v17, v18, v15, v75, v22);

    swift_unknownObjectRelease();
LABEL_18:
    v40 = &unk_27FE65B70;
    v41 = type metadata accessor for PASFlowStepSourceAuthentication;
LABEL_19:
    sub_261057620(v40, v41);
    return v5;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v43 = sub_2610BC7B4();
  __swift_project_value_buffer(v43, qword_27FE65900);
  v44 = sub_2610BC794();
  v5 = sub_2610BCD64();
  if (os_log_type_enabled(v44, v5))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_260F97000, v44, v5, "PASFlowStepPasscodeBiometricsRequest failed with with no selection", v45, 2u);
    MEMORY[0x2666F8720](v45, -1, -1);
  }

  sub_261028960();
  swift_allocError();
  *v46 = 0;
  swift_willThrow();
  sub_260FEBBC8(v2, v1);
  return v5;
}

uint64_t sub_261056F98()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider);

  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__deviceProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider);

  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__deviceProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider);

  return v0;
}

uint64_t PASFlowStepPasscodeBiometricsRequest.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider);

  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__deviceProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2610571A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  *v9 = 0;
  *(v9 + 8) = -1;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v3 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v3 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v3 + v14) = v15;
  sub_260FDD49C(a3, v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  v16 = sub_26104DC44(a1, a2);
  sub_260FDD4F8(a3);
  return v16;
}

uint64_t sub_261057300()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_261055ACC(v0);
}

uint64_t sub_261057390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[3] = type metadata accessor for PASExtensionAuthController();
  v26[4] = &off_287388CE0;
  v26[0] = a3;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a5 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(a5 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(a5 + v14) = v15;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(a5 + v16) = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(a5 + v18) = v19;
  v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(a5 + v20) = v21;
  *(v21 + 48) = 0;
  v22 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  sub_260FA99E0(v26, a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController);
  swift_beginAccess();
  sub_261020090(a4, v22);
  swift_endAccess();
  v24 = sub_26104DC44(a1, a2);
  sub_260FA9980(a4, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v24;
}

uint64_t sub_2610575C8(uint64_t a1)
{
  result = sub_261057620(&unk_27FE65BA0, type metadata accessor for PASFlowStepPasscodeBiometricsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_261057620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepPasscodeBiometricsRequest()
{
  result = qword_27FE65BB0;
  if (!qword_27FE65BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261057758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26105777C, 0, 0);
}

uint64_t sub_26105777C()
{
  if (*(v0 + 32) < 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASExtensionAuthenticator authenticate with contextProvider maximum authentication attempts reached", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    sub_26105807C();
    swift_allocError();
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 24);
    v3 = (*(v0 + 16))();
    *(v0 + 48) = v3;
    [v3 setAuthenticationType_];
    v6 = v1 + 16;
    v5 = *(v1 + 16);
    v4 = *(v6 + 8);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_261057960;

    return sub_261019F7C(v5, v3);
  }
}

uint64_t sub_261057960(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_261057AF4;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_261057A88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261057A88()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261057AF4()
{
  v1 = *(v0 + 64);

  v2 = v1;
  v3 = sub_2610BC4E4();
  v4 = [v3 domain];
  v5 = sub_2610BCA04();
  v7 = v6;

  if (v5 == 0xD000000000000022 && 0x80000002610D25B0 == v7)
  {
  }

  else
  {
    v9 = sub_2610BD384();

    if ((v9 & 1) == 0)
    {

LABEL_16:
      v22 = *(v0 + 64);
      swift_willThrow();
      v23 = *(v0 + 64);
      v24 = *(v0 + 8);

      return v24();
    }
  }

  v10 = *(v0 + 64);
  v11 = [v3 code];

  if (v11 != 3200)
  {
    goto LABEL_16;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASExtensionAuthenticator authenticate with contextProvider extension asked for authentication re-try", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  v16 = *(v0 + 32);

  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_261057D78;
  v18 = *(v0 + 40);
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);

  return sub_261057758(v20, v19, v16 - 1);
}

uint64_t sub_261057D78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_261057F08;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_261057EA0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261057EA0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261057F08()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261057F6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_261057FD0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB6F34;

  return sub_261057758(a1, a2, 10);
}

unint64_t sub_26105807C()
{
  result = qword_27FE65BC8;
  if (!qword_27FE65BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BC8);
  }

  return result;
}

unint64_t sub_2610580D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000045;
  *(inited + 56) = 0x80000002610D5340;
  v3 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v3;
}

uint64_t sub_2610581A8(uint64_t a1)
{
  v2 = sub_261058268();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610581E4(uint64_t a1)
{
  v2 = sub_261058268();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_261058230(void *a1)
{
  a1[1] = sub_261058268();
  a1[2] = sub_2610582BC();
  result = sub_261058310();
  a1[3] = result;
  return result;
}

unint64_t sub_261058268()
{
  result = qword_27FE65BD0;
  if (!qword_27FE65BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BD0);
  }

  return result;
}

unint64_t sub_2610582BC()
{
  result = qword_27FE65BD8;
  if (!qword_27FE65BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BD8);
  }

  return result;
}

unint64_t sub_261058310()
{
  result = qword_27FE65BE0;
  if (!qword_27FE65BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BE0);
  }

  return result;
}

unint64_t sub_261058368()
{
  result = qword_27FE65BE8;
  if (!qword_27FE65BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BE8);
  }

  return result;
}

uint64_t sub_2610583C0@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_2610BC664();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2610BC674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BF0, &qword_2610C9928);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v23 - v13;
  v15 = sub_2610BC5D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2610BC654();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9968], v1);
  sub_2610BC644();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  v20 = sub_2610BC3E4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_2610586EC(v14);
    return (*(v16 + 16))(v23[0], v23[1], v15);
  }

  else
  {
    sub_2610BC3D4();
    (*(v21 + 8))(v14, v20);
    return (*(v16 + 32))(v23[0], v19, v15);
  }
}

uint64_t sub_2610586EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BF0, &qword_2610C9928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261058754(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 64;
  v28 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v26 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(*(v2 + 48) + 8 * v10);
    v12 = *(v2 + 56) + 48 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = *(v12 + 41);
    v20 = v11;
    v32 = v13;
    sub_260FF3588(v13, v14, v16, v15, v17, v18, v19);
    result = v20 == 0;
    if (!v20)
    {
      return result;
    }

    v30 = v19;
    v21 = sub_260FA5F28(v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      sub_260FF3648(v32, v14, v16, v15, v17, v18, v19);
      return 0;
    }

    v24 = *(a2 + 56) + 48 * v21;
    v29 = *v24;
    v34 = *(v24 + 8);
    v35 = *(v24 + 16);
    v36 = *(v24 + 24);
    v37 = *(v24 + 32);
    v38 = *(v24 + 40);
    v39 = *(v24 + 41);
    sub_260FF3588(*v24, v34, v35, v36, v37, v38, v39);
    sub_261060DC0();
    sub_261060D68();
    v25 = sub_2610BD5B4();
    sub_260FF3648(v32, v14, v16, v15, v17, v18, v30);
    sub_260FF3648(v29, v34, v35, v36, v37, v38, v39);
    v2 = v28;
    v6 = v31;
    result = 0;
    if ((v25 & 1) == 0)
    {
      return result;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v26)
    {
      return 1;
    }

    v9 = *(v27 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2610589F4(uint64_t a1)
{
  v2 = sub_26105F028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058A30(uint64_t a1)
{
  v2 = sub_26105F028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261058A6C(uint64_t a1)
{
  v2 = sub_26105EFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058AA8(uint64_t a1)
{
  v2 = sub_26105EFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261058AE4(uint64_t a1)
{
  v2 = sub_26105F124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058B20(uint64_t a1)
{
  v2 = sub_26105F124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261058B5C(uint64_t a1)
{
  v2 = sub_26105F0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058B98(uint64_t a1)
{
  v2 = sub_26105F0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.Request.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BF8, &qword_2610C9930);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C00, &qword_2610C9938);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C08, &qword_2610C9940);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C10, &qword_2610C9948);
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26105EFD4();
  sub_2610BD5F4();
  v20 = v2[11];
  v76[10] = v2[10];
  v76[11] = v20;
  v76[12] = v2[12];
  v21 = v2[7];
  v76[6] = v2[6];
  v76[7] = v21;
  v22 = v2[9];
  v76[8] = v2[8];
  v76[9] = v22;
  v23 = v2[3];
  v76[2] = v2[2];
  v76[3] = v23;
  v24 = v2[5];
  v76[4] = v2[4];
  v76[5] = v24;
  v25 = v2[1];
  v76[0] = *v2;
  v76[1] = v25;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v76);
  v27 = sub_260F9C514(v76);
  v28 = v27;
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      LOBYTE(v63) = 1;
      sub_26105F0D0();
      v29 = v62;
      sub_2610BD234();
      v30 = *v28;
      v31 = *(v28 + 16);
      v32 = *(v28 + 48);
      v65 = *(v28 + 32);
      v66 = v32;
      v63 = v30;
      v64 = v31;
      v33 = *(v28 + 64);
      v34 = *(v28 + 80);
      v35 = *(v28 + 112);
      v69 = *(v28 + 96);
      v70 = v35;
      v67 = v33;
      v68 = v34;
      v36 = *(v28 + 128);
      v37 = *(v28 + 144);
      v38 = *(v28 + 160);
      *&v74 = *(v28 + 176);
      v72 = v37;
      v73 = v38;
      v71 = v36;
      sub_260FF2D78();
      v39 = v57;
      sub_2610BD2A4();
      (*(v56 + 8))(v10, v39);
    }

    else
    {
      LOBYTE(v63) = 2;
      sub_26105F028();
      v44 = v58;
      v29 = v62;
      sub_2610BD234();
      v63 = *v28;
      v45 = *(v28 + 16);
      v46 = *(v28 + 32);
      v47 = *(v28 + 64);
      v66 = *(v28 + 48);
      v67 = v47;
      v64 = v45;
      v65 = v46;
      v48 = *(v28 + 80);
      v49 = *(v28 + 96);
      v50 = *(v28 + 128);
      v70 = *(v28 + 112);
      v71 = v50;
      v68 = v48;
      v69 = v49;
      v51 = *(v28 + 144);
      v52 = *(v28 + 160);
      v53 = *(v28 + 192);
      v74 = *(v28 + 176);
      v75 = v53;
      v72 = v51;
      v73 = v52;
      sub_26105F07C();
      v54 = v60;
      sub_2610BD2A4();
      (*(v59 + 8))(v44, v54);
    }

    return (*(v61 + 8))(v18, v29);
  }

  else
  {
    v40 = *v27;
    v41 = *(v27 + 1);
    LOBYTE(v63) = 0;
    sub_26105F124();
    v42 = v62;
    sub_2610BD234();
    LOBYTE(v63) = v40;
    *(&v63 + 1) = v41;
    sub_260FEF448();
    sub_2610BD2A4();
    (*(v55 + 8))(v14, v11);
    return (*(v61 + 8))(v18, v42);
  }
}

uint64_t V1Command.Request.hash(into:)(__int128 *a1)
{
  v3 = v1[11];
  v41[10] = v1[10];
  v41[11] = v3;
  v41[12] = v1[12];
  v4 = v1[7];
  v41[6] = v1[6];
  v41[7] = v4;
  v5 = v1[9];
  v41[8] = v1[8];
  v41[9] = v5;
  v6 = v1[3];
  v41[2] = v1[2];
  v41[3] = v6;
  v7 = v1[5];
  v41[4] = v1[4];
  v41[5] = v7;
  v8 = v1[1];
  v41[0] = *v1;
  v41[1] = v8;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v41);
  v10 = sub_260F9C514(v41);
  v11 = v10;
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      MEMORY[0x2666F7E40](1);
      v12 = *(v11 + 22);
      v37 = *(v11 + 8);
      *v39 = *(v11 + 9);
      *&v39[9] = *(v11 + 153);
      v29 = *(v11 + 4);
      v31 = *(v11 + 5);
      v33 = *(v11 + 6);
      v35 = *(v11 + 7);
      v21 = *v11;
      v23 = *(v11 + 1);
      v25 = *(v11 + 2);
      v27 = *(v11 + 3);
      IdMSAccount.hash(into:)(a1);
      return PASAuthResults.hash(into:)();
    }

    MEMORY[0x2666F7E40](2);
    v17 = *(v11 + 22);
    v18 = *(v11 + 23);
    v19 = *(v11 + 24);
    v20 = *(v11 + 25);
    v38 = *(v11 + 8);
    *v40 = *(v11 + 9);
    *&v40[9] = *(v11 + 153);
    v30 = *(v11 + 4);
    v32 = *(v11 + 5);
    v34 = *(v11 + 6);
    v36 = *(v11 + 7);
    v22 = *v11;
    v24 = *(v11 + 1);
    v26 = *(v11 + 2);
    v28 = *(v11 + 3);
    IdMSAccount.hash(into:)(a1);
    if (v18)
    {
      sub_2610BD534();
      sub_2610BCA54();
      return sub_2610BCA54();
    }
  }

  else
  {
    v14 = *v10;
    v15 = v10[1];
    v16 = v10[2];
    MEMORY[0x2666F7E40](0);
    sub_2610BD534();
    sub_2610BD534();
  }

  return sub_2610BD534();
}

uint64_t V1Command.Request.hashValue.getter()
{
  sub_2610BD514();
  V1Command.Request.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t V1Command.Request.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C40, &qword_2610C9950);
  v55 = *(v59 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C48, &qword_2610C9958);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C50, &qword_2610C9960);
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C58, &unk_2610C9968);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26105EFD4();
  v19 = v60;
  sub_2610BD5D4();
  if (!v19)
  {
    v50 = v9;
    v51 = 0;
    v21 = v58;
    v20 = v59;
    v22 = v57;
    v60 = v16;
    v23 = sub_2610BD214();
    v24 = (2 * *(v23 + 16)) | 1;
    v100 = v23;
    v101 = v23 + 32;
    v102 = 0;
    v103 = v24;
    v25 = sub_260FD5DC0();
    v26 = v13;
    if (v25 == 3 || v102 != v103 >> 1)
    {
      v32 = sub_2610BCFF4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650) + 48);
      *v34 = &type metadata for V1Command.Request;
      v36 = v26;
      v37 = v60;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v22 + 8))(v37, v36);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v104);
    }

    if (!v25)
    {
      LOBYTE(v74) = 0;
      sub_26105F124();
      v28 = v60;
      v39 = v51;
      sub_2610BD164();
      if (!v39)
      {
        sub_260FEF3F4();
        v40 = v50;
        sub_2610BD1E4();
        (*(v52 + 8))(v12, v40);
        (*(v22 + 8))(v28, v13);
        swift_unknownObjectRelease();
        LOBYTE(v74) = v61;
        *(&v74 + 1) = *(&v61 + 1);
        sub_260F99F8C(&v74);
        v97 = v84;
        v98 = v85;
        v99 = v86;
        v93 = v80;
        v94 = v81;
        v95 = v82;
        v96 = v83;
        v89 = v76;
        v90 = v77;
        v91 = v78;
        v92 = v79;
        v87 = v74;
        v88 = v75;
        v30 = v56;
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v25 == 1)
    {
      LOBYTE(v74) = 1;
      sub_26105F0D0();
      v27 = v8;
      v28 = v60;
      v29 = v51;
      sub_2610BD164();
      v30 = v56;
      if (!v29)
      {
        sub_260FF2D24();
        v31 = v54;
        sub_2610BD1E4();
        (*(v53 + 8))(v27, v31);
        (*(v22 + 8))(v28, v13);
        swift_unknownObjectRelease();
        v82 = v69;
        v83 = v70;
        v84 = v71;
        *&v85 = v72;
        v78 = v65;
        v79 = v66;
        v80 = v67;
        v81 = v68;
        v74 = v61;
        v75 = v62;
        v76 = v63;
        v77 = v64;
        sub_260F99FD4(&v74);
        v97 = v84;
        v98 = v85;
        v99 = v86;
        v93 = v80;
        v94 = v81;
        v95 = v82;
        v96 = v83;
        v89 = v76;
        v90 = v77;
        v91 = v78;
        v92 = v79;
        v87 = v74;
        v88 = v75;
LABEL_17:
        v43 = v98;
        v30[10] = v97;
        v30[11] = v43;
        v30[12] = v99;
        v44 = v94;
        v30[6] = v93;
        v30[7] = v44;
        v45 = v96;
        v30[8] = v95;
        v30[9] = v45;
        v46 = v90;
        v30[2] = v89;
        v30[3] = v46;
        v47 = v92;
        v30[4] = v91;
        v30[5] = v47;
        v48 = v88;
        *v30 = v87;
        v30[1] = v48;
        return __swift_destroy_boxed_opaque_existential_0Tm(v104);
      }

LABEL_13:
      (*(v22 + 8))(v28, v13);
      goto LABEL_9;
    }

    LOBYTE(v74) = 2;
    sub_26105F028();
    v41 = v60;
    v42 = v51;
    sub_2610BD164();
    v30 = v56;
    if (!v42)
    {
      sub_26105F178();
      sub_2610BD1E4();
      (*(v55 + 8))(v21, v20);
      (*(v22 + 8))(v60, v13);
      swift_unknownObjectRelease();
      v71 = v84;
      v72 = v85;
      v73 = v86;
      v67 = v80;
      v68 = v81;
      v69 = v82;
      v70 = v83;
      v63 = v76;
      v64 = v77;
      v65 = v78;
      v66 = v79;
      v61 = v74;
      v62 = v75;
      sub_260F9B85C(&v61);
      v97 = v71;
      v98 = v72;
      v99 = v73;
      v93 = v67;
      v94 = v68;
      v95 = v69;
      v96 = v70;
      v89 = v63;
      v90 = v64;
      v91 = v65;
      v92 = v66;
      v87 = v61;
      v88 = v62;
      goto LABEL_17;
    }

    (*(v22 + 8))(v41, v13);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v104);
}

uint64_t sub_261059B84()
{
  sub_2610BD514();
  V1Command.Request.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_261059BC8()
{
  sub_2610BD514();
  V1Command.Request.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_261059C08(uint64_t a1)
{
  v2 = sub_26105F96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059C44(uint64_t a1)
{
  v2 = sub_26105F96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261059C80(uint64_t a1)
{
  v2 = sub_26105F918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059CBC(uint64_t a1)
{
  v2 = sub_26105F918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261059CF8(uint64_t a1)
{
  v2 = sub_26105FA68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059D34(uint64_t a1)
{
  v2 = sub_26105FA68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261059D70(uint64_t a1)
{
  v2 = sub_26105FA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059DAC(uint64_t a1)
{
  v2 = sub_26105FA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.Response.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C68, &qword_2610C9978);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v50 - v6;
  *&v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C70, &qword_2610C9980);
  *&v52 = *(v54 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C78, &qword_2610C9988);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C80, &qword_2610C9990);
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26105F918();
  sub_2610BD5F4();
  v19 = *(v2 + 144);
  v71[8] = *(v2 + 128);
  v71[9] = v19;
  v71[10] = *(v2 + 160);
  v72 = *(v2 + 176);
  v20 = *(v2 + 80);
  v71[4] = *(v2 + 64);
  v71[5] = v20;
  v21 = *(v2 + 112);
  v71[6] = *(v2 + 96);
  v71[7] = v21;
  v22 = *(v2 + 16);
  v71[0] = *v2;
  v71[1] = v22;
  v23 = *(v2 + 48);
  v71[2] = *(v2 + 32);
  v71[3] = v23;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v71);
  v25 = sub_260F9C514(v71);
  v26 = v25;
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      LOBYTE(v59) = 1;
      sub_26105FA14();
      v27 = v58;
      sub_2610BD234();
      v28 = *v26;
      v29 = *(v26 + 1);
      v30 = *(v26 + 3);
      v61 = *(v26 + 2);
      v62 = v30;
      v59 = v28;
      v60 = v29;
      v31 = *(v26 + 4);
      v32 = *(v26 + 5);
      v33 = *(v26 + 7);
      v65 = *(v26 + 6);
      v66 = v33;
      v63 = v31;
      v64 = v32;
      v34 = *(v26 + 8);
      v35 = *(v26 + 9);
      v36 = *(v26 + 10);
      v70 = *(v26 + 22);
      v68 = v35;
      v69 = v36;
      v67 = v34;
      sub_260FF3058();
      v37 = v54;
      sub_2610BD2A4();
      (*(v52 + 8))(v9, v37);
      return (*(v57 + 8))(v17, v27);
    }

    else
    {
      v43 = *(v25 + 4);
      v44 = v25[40];
      v45 = v25[41];
      LOBYTE(v59) = 2;
      sub_26105F96C();
      v46 = *(v26 + 1);
      v54 = *v26;
      v52 = v46;
      v47 = v53;
      v48 = v58;
      sub_2610BD234();
      v59 = v54;
      v60 = v52;
      *&v61 = v43;
      BYTE8(v61) = v44;
      BYTE9(v61) = v45;
      sub_26105F9C0();
      v49 = v56;
      sub_2610BD2A4();
      (*(v55 + 8))(v47, v49);
      return (*(v57 + 8))(v17, v48);
    }
  }

  else
  {
    LODWORD(v56) = *v25;
    v39 = v25[1];
    v40 = v25[2];
    v41 = v25[3];
    LOBYTE(v59) = 0;
    sub_26105FA68();
    v42 = v58;
    sub_2610BD234();
    LOBYTE(v59) = v56;
    BYTE1(v59) = v39;
    BYTE2(v59) = v40;
    BYTE3(v59) = v41;
    sub_260FEF728();
    sub_2610BD2A4();
    (*(v51 + 8))(v13, v10);
    return (*(v57 + 8))(v17, v42);
  }
}

uint64_t V1Command.Response.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 144);
  v32[8] = *(v1 + 128);
  v32[9] = v3;
  v32[10] = *(v1 + 160);
  v33 = *(v1 + 176);
  v4 = *(v1 + 80);
  v32[4] = *(v1 + 64);
  v32[5] = v4;
  v5 = *(v1 + 112);
  v32[6] = *(v1 + 96);
  v32[7] = v5;
  v6 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v6;
  v7 = *(v1 + 48);
  v32[2] = *(v1 + 32);
  v32[3] = v7;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v32);
  v9 = sub_260F9C514(v32);
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      v10 = v9;
      MEMORY[0x2666F7E40](1);
      v11 = *(v10 + 22);
      v29 = *(v10 + 7);
      v30 = *(v10 + 8);
      *v31 = *(v10 + 9);
      *&v31[9] = *(v10 + 153);
      v25 = *(v10 + 3);
      v26 = *(v10 + 4);
      v27 = *(v10 + 5);
      v28 = *(v10 + 6);
      v22 = *v10;
      v23 = *(v10 + 1);
      v24 = *(v10 + 2);
      IdMSAccount.hash(into:)(a1);
      return sub_260FF1FCC(a1, v11);
    }

    else
    {
      v17 = *(v9 + 4);
      v18 = v9[40];
      v19 = v9[41];
      v20 = *(v9 + 1);
      v21 = *v9;
      MEMORY[0x2666F7E40](2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
      sub_26105FABC();
      sub_260FF35F4();
      return sub_2610BD5A4();
    }
  }

  else
  {
    v13 = *v9;
    v14 = v9[1];
    v15 = v9[2];
    v16 = v9[3];
    MEMORY[0x2666F7E40](0);
    sub_2610BD534();
    sub_2610BD534();
    if (v16 != 1)
    {
      sub_2610BD534();
    }

    return sub_2610BD534();
  }
}

uint64_t V1Command.Response.hashValue.getter()
{
  sub_2610BD514();
  V1Command.Response.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t V1Command.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CC0, &qword_2610C99A0);
  v54 = *(v58 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CC8, &qword_2610C99A8);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CD0, &qword_2610C99B0);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CD8, &qword_2610C99B8);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26105F918();
  v19 = v59;
  sub_2610BD5D4();
  if (!v19)
  {
    v49 = v9;
    v50 = 0;
    v21 = v57;
    v20 = v58;
    v22 = v56;
    v59 = v16;
    v23 = sub_2610BD214();
    v24 = (2 * *(v23 + 16)) | 1;
    v96 = v23;
    v97 = v23 + 32;
    v98 = 0;
    v99 = v24;
    v25 = sub_260FD5DC0();
    v26 = v13;
    if (v25 == 3 || v98 != v99 >> 1)
    {
      v32 = sub_2610BCFF4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650) + 48);
      *v34 = &type metadata for V1Command.Response;
      v36 = v26;
      v37 = v59;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v22 + 8))(v37, v36);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v100);
    }

    if (!v25)
    {
      LOBYTE(v72) = 0;
      sub_26105FA68();
      v28 = v59;
      v39 = v50;
      sub_2610BD164();
      if (!v39)
      {
        sub_260FEF6D4();
        v40 = v49;
        sub_2610BD1E4();
        (*(v51 + 8))(v12, v40);
        (*(v22 + 8))(v28, v13);
        swift_unknownObjectRelease();
        LODWORD(v72) = v60;
        sub_260F99F8C(&v72);
        v92 = v80;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v88 = v76;
        v89 = v77;
        v90 = v78;
        v91 = v79;
        v84 = v72;
        v85 = v73;
        v86 = v74;
        v87 = v75;
        v30 = v55;
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v25 == 1)
    {
      LOBYTE(v72) = 1;
      sub_26105FA14();
      v27 = v8;
      v28 = v59;
      v29 = v50;
      sub_2610BD164();
      v30 = v55;
      if (!v29)
      {
        sub_260FF3004();
        v31 = v53;
        sub_2610BD1E4();
        (*(v52 + 8))(v27, v31);
        (*(v22 + 8))(v28, v13);
        swift_unknownObjectRelease();
        v68 = v80;
        v69 = v81;
        v70 = v82;
        v71 = v83;
        v64 = v76;
        v65 = v77;
        v66 = v78;
        v67 = v79;
        v60 = v72;
        v61 = v73;
        v62 = v74;
        v63 = v75;
        sub_260F99FD4(&v60);
        v92 = v68;
        v93 = v69;
        v94 = v70;
        v95 = v71;
        v88 = v64;
        v89 = v65;
        v90 = v66;
        v91 = v67;
        v84 = v60;
        v85 = v61;
        v86 = v62;
        v87 = v63;
LABEL_17:
        v43 = v93;
        *(v30 + 128) = v92;
        *(v30 + 144) = v43;
        *(v30 + 160) = v94;
        *(v30 + 176) = v95;
        v44 = v89;
        *(v30 + 64) = v88;
        *(v30 + 80) = v44;
        v45 = v91;
        *(v30 + 96) = v90;
        *(v30 + 112) = v45;
        v46 = v85;
        *v30 = v84;
        *(v30 + 16) = v46;
        v47 = v87;
        *(v30 + 32) = v86;
        *(v30 + 48) = v47;
        return __swift_destroy_boxed_opaque_existential_0Tm(v100);
      }

LABEL_13:
      (*(v22 + 8))(v28, v13);
      goto LABEL_9;
    }

    LOBYTE(v72) = 2;
    sub_26105F96C();
    v41 = v59;
    v42 = v50;
    sub_2610BD164();
    v30 = v55;
    if (!v42)
    {
      sub_26105FB10();
      sub_2610BD1E4();
      (*(v54 + 8))(v21, v20);
      (*(v22 + 8))(v59, v13);
      swift_unknownObjectRelease();
      v72 = v60;
      v73 = v61;
      *&v74 = v62;
      WORD4(v74) = WORD4(v62);
      sub_260F9B85C(&v72);
      v92 = v80;
      v93 = v81;
      v94 = v82;
      v95 = v83;
      v88 = v76;
      v89 = v77;
      v90 = v78;
      v91 = v79;
      v84 = v72;
      v85 = v73;
      v86 = v74;
      v87 = v75;
      goto LABEL_17;
    }

    (*(v22 + 8))(v41, v13);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v100);
}

uint64_t sub_26105ADE0()
{
  sub_2610BD514();
  V1Command.Response.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_26105AE24()
{
  sub_2610BD514();
  V1Command.Response.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t static V1CommandError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v58[0] = v4;
  v58[1] = v3;
  v58[2] = v6;
  v58[3] = v5;
  v58[4] = v7;
  v59 = v8;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v65 = v14;
  if (v8)
  {
    if (v8 == 1)
    {
      if (v14 == 1)
      {
        v48 = *(v4 + 80);
        v49 = *(v4 + 64);
        v15 = *(v4 + 96);
        v16 = *(v4 + 104);
        v17 = *(v4 + 56);
        v18 = *(v4 + 48);
        v19 = *(v9 + 48);
        v20 = *(v9 + 56);
        v46 = *(v9 + 80);
        v47 = *(v9 + 64);
        v21 = *(v9 + 96);
        v22 = *(v9 + 104);
        v23 = *(v4 + 32);
        v54 = *(v4 + 16);
        v55 = v23;
        v56 = v18;
        v57 = v17;
        v24 = *(v9 + 32);
        v50 = *(v9 + 16);
        v51 = v24;
        v52 = v19;
        v53 = v20;
        sub_260FF3594(v9, v10, v11, v12, v13, 1);
        sub_260FF3594(v4, v3, v6, v5, v7, 1);
        if (static V1CommandError.== infix(_:_:)(&v54, &v50))
        {
          v54 = v49;
          v55 = v48;
          v56 = v15;
          v57 = v16;
          v50 = v47;
          v51 = v46;
          v52 = v21;
          v53 = v22;
          v25 = static V1CommandError.== infix(_:_:)(&v54, &v50);
          sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
          return v25 & 1;
        }

LABEL_35:
        sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
        v25 = 0;
        return v25 & 1;
      }

      goto LABEL_33;
    }

    if (!(v6 | v3 | v4 | v5 | v7))
    {
      if (v14 != 2 || v11 | v10 | v9 | v12 | v13)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v33 = v6 | v3 | v5 | v7;
    if (v4 != 1 || v33)
    {
      if (v4 != 2 || v33)
      {
        if (v14 != 2 || v9 != 3)
        {
          goto LABEL_33;
        }
      }

      else if (v14 != 2 || v9 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v14 != 2 || v9 != 1)
    {
      goto LABEL_33;
    }

    if (!(v11 | v10 | v12 | v13))
    {
LABEL_32:
      sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
      v25 = 1;
      return v25 & 1;
    }

LABEL_33:
    sub_260FF3594(v9, v10, v11, v12, v13, v14);
    v34 = v4;
    v35 = v3;
    v36 = v6;
    v37 = v5;
    v38 = v7;
    v39 = v8;
    goto LABEL_34;
  }

  if (v14)
  {
    goto LABEL_33;
  }

  if (v4 != v9 || v3 != v10)
  {
    v26 = v9;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = sub_2610BD384();
    v11 = v28;
    v10 = v27;
    v12 = v29;
    v13 = v30;
    v32 = v31;
    v9 = v26;
    if ((v32 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v6 != v11)
  {
LABEL_28:
    sub_260FF3594(v9, v10, v11, v12, v13, 0);
    v34 = v4;
    v35 = v3;
    v36 = v6;
    v37 = v5;
    v38 = v7;
    v39 = 0;
LABEL_34:
    sub_260FF3594(v34, v35, v36, v37, v38, v39);
    goto LABEL_35;
  }

  if (v5 == v12 && v7 == v13)
  {
    sub_260FF3594(v9, v10, v6, v5, v7, 0);
    sub_260FF3594(v4, v3, v6, v5, v7, 0);
    goto LABEL_32;
  }

  v41 = v9;
  v42 = v10;
  v43 = v12;
  v44 = v13;
  v45 = sub_2610BD384();
  sub_260FF3594(v41, v42, v6, v43, v44, 0);
  sub_260FF3594(v4, v3, v6, v5, v7, 0);
  sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
  return v45 & 1;
}

uint64_t sub_26105B218()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_26105B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261062778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26105B29C(uint64_t a1)
{
  v2 = sub_261060124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B2D8(uint64_t a1)
{
  v2 = sub_261060124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105B314(uint64_t a1)
{
  v2 = sub_261060178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B350(uint64_t a1)
{
  v2 = sub_261060178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105B38C(uint64_t a1)
{
  v2 = sub_261060274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B3C8(uint64_t a1)
{
  v2 = sub_261060274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105B404(uint64_t a1)
{
  v2 = sub_2610601CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B440(uint64_t a1)
{
  v2 = sub_2610601CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CF0, &qword_2610C99C8);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  *&v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CF8, &qword_2610C99D0);
  *&v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D00, &qword_2610C99D8);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D08, &qword_2610C99E0);
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261060124();
  sub_2610BD5F4();
  v20 = v2[11];
  v77[10] = v2[10];
  v77[11] = v20;
  v77[12] = v2[12];
  v21 = v2[7];
  v77[6] = v2[6];
  v77[7] = v21;
  v22 = v2[9];
  v77[8] = v2[8];
  v77[9] = v22;
  v23 = v2[3];
  v77[2] = v2[2];
  v77[3] = v23;
  v24 = v2[5];
  v77[4] = v2[4];
  v77[5] = v24;
  v25 = v2[1];
  v77[0] = *v2;
  v77[1] = v25;
  v26 = sub_260FEE778(v77);
  v27 = sub_260F9C524(v77);
  v28 = v27;
  if (!v26)
  {
    LOBYTE(v64) = 0;
    sub_261060274();
    v29 = v63;
    sub_2610BD234();
    v64 = *v28;
    v40 = v28[1];
    v41 = v28[2];
    v42 = v28[4];
    v67 = v28[3];
    v68 = v42;
    v65 = v40;
    v66 = v41;
    v43 = v28[5];
    v44 = v28[6];
    v45 = v28[8];
    v71 = v28[7];
    v72 = v45;
    v69 = v43;
    v70 = v44;
    v46 = v28[9];
    v47 = v28[10];
    v48 = v28[12];
    v75 = v28[11];
    v76 = v48;
    v73 = v46;
    v74 = v47;
    sub_2610602C8();
    v49 = v57;
    sub_2610BD2A4();
    (*(v56 + 8))(v14, v49);
    return (*(v62 + 8))(v18, v29);
  }

  if (v26 == 1)
  {
    LOBYTE(v64) = 1;
    sub_2610601CC();
    v29 = v63;
    sub_2610BD234();
    v30 = *v28;
    v31 = v28[1];
    v32 = v28[3];
    v66 = v28[2];
    v67 = v32;
    v64 = v30;
    v65 = v31;
    v33 = v28[4];
    v34 = v28[5];
    v35 = v28[7];
    v70 = v28[6];
    v71 = v35;
    v68 = v33;
    v69 = v34;
    v36 = v28[8];
    v37 = v28[9];
    v38 = v28[10];
    *&v75 = *(v28 + 22);
    v73 = v37;
    v74 = v38;
    v72 = v36;
    sub_261060220();
    v39 = v59;
    sub_2610BD2A4();
    (*(v58 + 8))(v10, v39);
    return (*(v62 + 8))(v18, v29);
  }

  v51 = *(v27 + 32);
  v52 = *(v27 + 40);
  LOBYTE(v64) = 2;
  sub_261060178();
  v53 = *v28;
  v58 = v28[1];
  v59 = v53;
  v54 = v63;
  sub_2610BD234();
  v64 = v59;
  v65 = v58;
  *&v66 = v51;
  BYTE8(v66) = v52;
  sub_260FF28D0();
  v55 = v61;
  sub_2610BD2A4();
  (*(v60 + 8))(v7, v55);
  return (*(v62 + 8))(v18, v54);
}

uint64_t V1Command.hash(into:)(__int128 *a1)
{
  v3 = v1[11];
  v42[10] = v1[10];
  v42[11] = v3;
  v42[12] = v1[12];
  v4 = v1[7];
  v42[6] = v1[6];
  v42[7] = v4;
  v5 = v1[9];
  v42[8] = v1[8];
  v42[9] = v5;
  v6 = v1[3];
  v42[2] = v1[2];
  v42[3] = v6;
  v7 = v1[5];
  v42[4] = v1[4];
  v42[5] = v7;
  v8 = v1[1];
  v42[0] = *v1;
  v42[1] = v8;
  v9 = sub_260FEE778(v42);
  v10 = sub_260F9C524(v42);
  v11 = v10;
  if (v9)
  {
    if (v9 == 1)
    {
      MEMORY[0x2666F7E40](1);
      v33 = *(v11 + 128);
      v35 = *(v11 + 144);
      v37 = *(v11 + 160);
      v39 = *(v11 + 176);
      v25 = *(v11 + 64);
      v27 = *(v11 + 80);
      v29 = *(v11 + 96);
      v31 = *(v11 + 112);
      v17 = *v11;
      v19 = *(v11 + 16);
      v21 = *(v11 + 32);
      v23 = *(v11 + 48);
      return V1Command.Response.hash(into:)(a1);
    }

    else
    {
      v13 = *(v10 + 32);
      v14 = *(v10 + 40);
      v15 = *(v10 + 16);
      v16 = *v10;
      MEMORY[0x2666F7E40](2);
      return V1CommandError.hash(into:)(a1);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    v38 = *(v11 + 160);
    v40 = *(v11 + 176);
    v41 = *(v11 + 192);
    v30 = *(v11 + 96);
    v32 = *(v11 + 112);
    v34 = *(v11 + 128);
    v36 = *(v11 + 144);
    v22 = *(v11 + 32);
    v24 = *(v11 + 48);
    v26 = *(v11 + 64);
    v28 = *(v11 + 80);
    v18 = *v11;
    v20 = *(v11 + 16);
    return V1Command.Request.hash(into:)(a1);
  }
}

uint64_t V1Command.hashValue.getter()
{
  sub_2610BD514();
  v1 = v0[11];
  v41[10] = v0[10];
  v41[11] = v1;
  v41[12] = v0[12];
  v2 = v0[7];
  v41[6] = v0[6];
  v41[7] = v2;
  v3 = v0[9];
  v41[8] = v0[8];
  v41[9] = v3;
  v4 = v0[3];
  v41[2] = v0[2];
  v41[3] = v4;
  v5 = v0[5];
  v41[4] = v0[4];
  v41[5] = v5;
  v6 = v0[1];
  v41[0] = *v0;
  v41[1] = v6;
  v7 = sub_260FEE778(v41);
  v8 = sub_260F9C524(v41);
  v9 = v8;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666F7E40](1);
      v31 = *(v9 + 128);
      v33 = *(v9 + 144);
      v35 = *(v9 + 160);
      v37 = *(v9 + 176);
      v23 = *(v9 + 64);
      v25 = *(v9 + 80);
      v27 = *(v9 + 96);
      v29 = *(v9 + 112);
      v15 = *v9;
      v17 = *(v9 + 16);
      v19 = *(v9 + 32);
      v21 = *(v9 + 48);
      V1Command.Response.hash(into:)(v40);
    }

    else
    {
      v10 = *(v8 + 32);
      v11 = *(v8 + 40);
      v13 = *(v8 + 16);
      v14 = *v8;
      MEMORY[0x2666F7E40](2);
      V1CommandError.hash(into:)(v40);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    v36 = *(v9 + 160);
    v38 = *(v9 + 176);
    v39 = *(v9 + 192);
    v28 = *(v9 + 96);
    v30 = *(v9 + 112);
    v32 = *(v9 + 128);
    v34 = *(v9 + 144);
    v20 = *(v9 + 32);
    v22 = *(v9 + 48);
    v24 = *(v9 + 64);
    v26 = *(v9 + 80);
    v16 = *v9;
    v18 = *(v9 + 16);
    V1Command.Request.hash(into:)(v40);
  }

  return sub_2610BD574();
}

uint64_t V1Command.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D40, &qword_2610C99E8);
  v55 = *(v59 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D48, &qword_2610C99F0);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D50, &qword_2610C99F8);
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D58, &qword_2610C9A00);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_261060124();
  v19 = v60;
  sub_2610BD5D4();
  if (!v19)
  {
    v50 = v9;
    v51 = 0;
    v21 = v58;
    v20 = v59;
    v22 = v57;
    v60 = v16;
    v23 = sub_2610BD214();
    v24 = (2 * *(v23 + 16)) | 1;
    v100 = v23;
    v101 = v23 + 32;
    v102 = 0;
    v103 = v24;
    v25 = sub_260FD5DC0();
    v26 = v13;
    if (v25 == 3 || v102 != v103 >> 1)
    {
      v32 = sub_2610BCFF4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650) + 48);
      *v34 = &type metadata for V1Command;
      v36 = v26;
      v37 = v60;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v22 + 8))(v37, v36);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v104);
    }

    if (!v25)
    {
      LOBYTE(v74) = 0;
      sub_261060274();
      v28 = v60;
      v39 = v51;
      sub_2610BD164();
      if (!v39)
      {
        sub_261060390();
        v40 = v50;
        sub_2610BD1E4();
        (*(v52 + 8))(v12, v40);
        (*(v22 + 8))(v28, v13);
        swift_unknownObjectRelease();
        v71 = v84;
        v72 = v85;
        v73 = v86;
        v67 = v80;
        v68 = v81;
        v69 = v82;
        v70 = v83;
        v63 = v76;
        v64 = v77;
        v65 = v78;
        v66 = v79;
        v61 = v74;
        v62 = v75;
        sub_260FEDCB8(&v61);
        v97 = v71;
        v98 = v72;
        v99 = v73;
        v93 = v67;
        v94 = v68;
        v95 = v69;
        v96 = v70;
        v89 = v63;
        v90 = v64;
        v91 = v65;
        v92 = v66;
        v87 = v61;
        v88 = v62;
        v30 = v56;
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v25 == 1)
    {
      LOBYTE(v74) = 1;
      sub_2610601CC();
      v27 = v8;
      v28 = v60;
      v29 = v51;
      sub_2610BD164();
      v30 = v56;
      if (!v29)
      {
        sub_26106033C();
        v31 = v54;
        sub_2610BD1E4();
        (*(v53 + 8))(v27, v31);
        (*(v22 + 8))(v28, v13);
        swift_unknownObjectRelease();
        v82 = v69;
        v83 = v70;
        v84 = v71;
        *&v85 = v72;
        v78 = v65;
        v79 = v66;
        v80 = v67;
        v81 = v68;
        v74 = v61;
        v75 = v62;
        v76 = v63;
        v77 = v64;
        sub_260FEE86C(&v74);
        v97 = v84;
        v98 = v85;
        v99 = v86;
        v93 = v80;
        v94 = v81;
        v95 = v82;
        v96 = v83;
        v89 = v76;
        v90 = v77;
        v91 = v78;
        v92 = v79;
        v87 = v74;
        v88 = v75;
LABEL_17:
        v43 = v98;
        v30[10] = v97;
        v30[11] = v43;
        v30[12] = v99;
        v44 = v94;
        v30[6] = v93;
        v30[7] = v44;
        v45 = v96;
        v30[8] = v95;
        v30[9] = v45;
        v46 = v90;
        v30[2] = v89;
        v30[3] = v46;
        v47 = v92;
        v30[4] = v91;
        v30[5] = v47;
        v48 = v88;
        *v30 = v87;
        v30[1] = v48;
        return __swift_destroy_boxed_opaque_existential_0Tm(v104);
      }

LABEL_13:
      (*(v22 + 8))(v28, v13);
      goto LABEL_9;
    }

    LOBYTE(v74) = 2;
    sub_261060178();
    v41 = v60;
    v42 = v51;
    sub_2610BD164();
    v30 = v56;
    if (!v42)
    {
      sub_260FF2A88();
      sub_2610BD1E4();
      (*(v55 + 8))(v21, v20);
      (*(v22 + 8))(v60, v13);
      swift_unknownObjectRelease();
      v74 = v61;
      v75 = v62;
      *&v76 = v63;
      BYTE8(v76) = BYTE8(v63);
      sub_26106031C(&v74);
      v97 = v84;
      v98 = v85;
      v99 = v86;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v96 = v83;
      v89 = v76;
      v90 = v77;
      v91 = v78;
      v92 = v79;
      v87 = v74;
      v88 = v75;
      goto LABEL_17;
    }

    (*(v22 + 8))(v41, v13);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v104);
}

uint64_t sub_26105C534()
{
  sub_2610BD514();
  v1 = v0[11];
  v41[10] = v0[10];
  v41[11] = v1;
  v41[12] = v0[12];
  v2 = v0[7];
  v41[6] = v0[6];
  v41[7] = v2;
  v3 = v0[9];
  v41[8] = v0[8];
  v41[9] = v3;
  v4 = v0[3];
  v41[2] = v0[2];
  v41[3] = v4;
  v5 = v0[5];
  v41[4] = v0[4];
  v41[5] = v5;
  v6 = v0[1];
  v41[0] = *v0;
  v41[1] = v6;
  v7 = sub_260FEE778(v41);
  v8 = sub_260F9C524(v41);
  v9 = v8;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666F7E40](1);
      v31 = *(v9 + 128);
      v33 = *(v9 + 144);
      v35 = *(v9 + 160);
      v37 = *(v9 + 176);
      v23 = *(v9 + 64);
      v25 = *(v9 + 80);
      v27 = *(v9 + 96);
      v29 = *(v9 + 112);
      v15 = *v9;
      v17 = *(v9 + 16);
      v19 = *(v9 + 32);
      v21 = *(v9 + 48);
      V1Command.Response.hash(into:)(v40);
    }

    else
    {
      v10 = *(v8 + 32);
      v11 = *(v8 + 40);
      v13 = *(v8 + 16);
      v14 = *v8;
      MEMORY[0x2666F7E40](2);
      V1CommandError.hash(into:)(v40);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    v36 = *(v9 + 160);
    v38 = *(v9 + 176);
    v39 = *(v9 + 192);
    v28 = *(v9 + 96);
    v30 = *(v9 + 112);
    v32 = *(v9 + 128);
    v34 = *(v9 + 144);
    v20 = *(v9 + 32);
    v22 = *(v9 + 48);
    v24 = *(v9 + 64);
    v26 = *(v9 + 80);
    v16 = *v9;
    v18 = *(v9 + 16);
    V1Command.Request.hash(into:)(v40);
  }

  return sub_2610BD574();
}

unint64_t V1CommandError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v6 = *(v1 + 48);
      v7 = *(v1 + 56);
      v8 = *(v1 + 96);
      v9 = *(v1 + 104);
      v18 = *(v1 + 32);
      v19 = *(v1 + 16);
      v20 = *(v1 + 80);
      v21 = *(v1 + 64);
      sub_2610BCF84();
      v10 = MEMORY[0x2666F7380](0xD000000000000020, 0x80000002610D53F0);
      v11 = V1CommandError.description.getter(v10);
      MEMORY[0x2666F7380](v11);

      v12 = MEMORY[0x2666F7380](0xD000000000000010, 0x80000002610D5420);
      v13 = V1CommandError.description.getter(v12);
      MEMORY[0x2666F7380](v13);

      return 0;
    }

    else
    {
      result = 0xD00000000000001ELL;
      if (v4 | v2 | v1 | v3 | v5)
      {
        v16 = v4 | v2 | v3 | v5;
        v17 = v1 == 1 && v16 == 0;
        if (!v17 && v1 == 2 && !v16)
        {
          return 0xD00000000000001FLL;
        }
      }

      else
      {
        return 0xD000000000000014;
      }
    }
  }

  else
  {
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D5440);
    MEMORY[0x2666F7380](v1, v2);
    MEMORY[0x2666F7380](0x3A65646F63202CLL, 0xE700000000000000);
    v15 = sub_2610BD304();
    MEMORY[0x2666F7380](v15);

    MEMORY[0x2666F7380](0x697263736564202CLL, 0xEE003A6E6F697470);
    MEMORY[0x2666F7380](v3, v5);
    return 0;
  }

  return result;
}

unint64_t sub_26105C948()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x636972656E6567;
  if (v1 != 1)
  {
    v5 = 0x64657473656ELL;
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

uint64_t sub_26105CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261062890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26105CA38(uint64_t a1)
{
  v2 = sub_2610603E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CA74(uint64_t a1)
{
  v2 = sub_2610603E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CAB0()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_26105CB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261062A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26105CB30(uint64_t a1)
{
  v2 = sub_261060588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CB6C(uint64_t a1)
{
  v2 = sub_261060588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CBA8()
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

uint64_t sub_26105CBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_26105CC90(uint64_t a1)
{
  v2 = sub_261060534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CCCC(uint64_t a1)
{
  v2 = sub_261060534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CD08(uint64_t a1)
{
  v2 = sub_261060438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CD44(uint64_t a1)
{
  v2 = sub_261060438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CD80(uint64_t a1)
{
  v2 = sub_2610604E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CDBC(uint64_t a1)
{
  v2 = sub_2610604E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CDF8(uint64_t a1)
{
  v2 = sub_26106048C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CE34(uint64_t a1)
{
  v2 = sub_26106048C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CE70(uint64_t a1)
{
  v2 = sub_2610605DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CEAC(uint64_t a1)
{
  v2 = sub_2610605DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1CommandError.encode(to:)(void *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D70, &qword_2610C9A08);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v51 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D78, &qword_2610C9A10);
  v53 = *(v54 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D80, &qword_2610C9A18);
  v59 = *(v60 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D88, &qword_2610C9A20);
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v51 - v11;
  *&v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D90, &qword_2610C9A28);
  v63 = *(v65 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v51 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D98, &qword_2610C9A30);
  v61 = *(v62 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DA0, &qword_2610C9A38);
  v18 = *(v17 - 8);
  v72 = v17;
  v73 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v23 = *v1;
  v22 = v1[1];
  v24 = v1[3];
  *&v71 = v1[2];
  *&v69 = v24;
  *&v70 = v1[4];
  v25 = *(v1 + 40);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610603E4();
  v27 = v21;
  sub_2610BD5F4();
  if (v25)
  {
    if (v25 == 1)
    {
      v28 = *(v23 + 48);
      v29 = *(v23 + 56);
      v30 = *(v23 + 64);
      v65 = *(v23 + 80);
      v69 = v30;
      v31 = *(v23 + 96);
      v32 = *(v23 + 104);
      LOBYTE(v75) = 2;
      sub_261060534();
      v33 = *(v23 + 16);
      v70 = *(v23 + 32);
      v71 = v33;
      v34 = v66;
      v35 = v72;
      v36 = v27;
      sub_2610BD234();
      v76 = v70;
      v75 = v71;
      v77 = v28;
      v78 = v29;
      v79 = 0;
      sub_260FF28D0();
      v37 = v68;
      v38 = v74;
      sub_2610BD2A4();
      if (!v38)
      {
        v76 = v65;
        v75 = v69;
        v77 = v31;
        v78 = v32;
        v79 = 1;
        sub_2610BD2A4();
      }

      (*(v67 + 8))(v34, v37);
      return (*(v73 + 8))(v36, v35);
    }

    else
    {
      v46 = v72;
      if (v71 | v22 | v23 | v69 | v70)
      {
        v47 = v71 | v22 | v69 | v70;
        if (v23 != 1 || v47)
        {
          if (v23 != 2 || v47)
          {
            LOBYTE(v75) = 5;
            sub_261060438();
            v50 = v55;
            sub_2610BD234();
            (*(v56 + 8))(v50, v57);
          }

          else
          {
            LOBYTE(v75) = 4;
            sub_26106048C();
            v49 = v52;
            sub_2610BD234();
            (*(v53 + 8))(v49, v54);
          }
        }

        else
        {
          LOBYTE(v75) = 3;
          sub_2610604E0();
          v48 = v58;
          sub_2610BD234();
          (*(v59 + 8))(v48, v60);
        }
      }

      else
      {
        LOBYTE(v75) = 0;
        sub_2610605DC();
        sub_2610BD234();
        (*(v61 + 8))(v16, v62);
      }

      return (*(v73 + 8))(v21, v46);
    }
  }

  else
  {
    v39 = v63;
    LOBYTE(v75) = 1;
    sub_261060588();
    v40 = v64;
    v41 = v72;
    v42 = v27;
    sub_2610BD234();
    LOBYTE(v75) = 0;
    v43 = v65;
    v44 = v74;
    sub_2610BD274();
    if (!v44)
    {
      LOBYTE(v75) = 1;
      sub_2610BD294();
      LOBYTE(v75) = 2;
      sub_2610BD274();
    }

    (*(v39 + 8))(v40, v43);
    return (*(v73 + 8))(v42, v41);
  }
}

uint64_t V1CommandError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      v8 = *(v3 + 48);
      v9 = *(v3 + 56);
      v10 = *(v3 + 96);
      v11 = *(v3 + 104);
      v16 = *(v3 + 32);
      v17 = *(v3 + 16);
      v18 = *(v3 + 80);
      v19 = *(v3 + 64);
      MEMORY[0x2666F7E40](2);
      V1CommandError.hash(into:)(a1);
      return V1CommandError.hash(into:)(a1);
    }

    else
    {
      if (v6 | v4 | v3 | v5 | v7)
      {
        v13 = v6 | v4 | v5 | v7;
        if (v3 == 1 && v13 == 0)
        {
          v15 = 3;
        }

        else if (v3 != 2 || v13)
        {
          v15 = 5;
        }

        else
        {
          v15 = 4;
        }
      }

      else
      {
        v15 = 0;
      }

      return MEMORY[0x2666F7E40](v15);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](1);
    sub_2610BCA54();
    MEMORY[0x2666F7E40](v6);

    return sub_2610BCA54();
  }
}