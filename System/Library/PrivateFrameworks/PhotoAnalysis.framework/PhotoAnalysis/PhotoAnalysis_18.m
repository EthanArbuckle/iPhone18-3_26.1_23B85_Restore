uint64_t sub_22FBE8798()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBE88A8, v1, 0);
}

uint64_t sub_22FBE88A8()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[49];
  swift_beginAccess();
  sub_22FB041F0(v3, v2, (v0 + 22));
  sub_22FA2B420((v0 + 22), &unk_27DAD8720);
  swift_endAccess();
  if (*(v1 + *(*v1 + 152)))
  {
    v4 = *(v0[53] + *(*v1 + 160));
    if (!v4)
    {
      return sub_22FCC94D4();
    }

    v5 = v4;

    swift_willThrow();

    v6 = v0[1];
  }

  else
  {

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_22FBE8A7C(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBE8B40, v2, 0);
}

uint64_t sub_22FBE8B40()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBE9290;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F58);
  swift_allocObject();
  v57 = sub_22FBDCED0((v0 + 136), v55, v51);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8F60, &qword_27DAD8F58);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBE96C8;

  return sub_22FBF39EC(v57);
}

uint64_t sub_22FBE9290()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBE93A0, v1, 0);
}

uint64_t sub_22FBE93A0()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F58);
  swift_allocObject();
  v20 = sub_22FBDCED0((v0 + 136), v18, v14);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8F60, &qword_27DAD8F58);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBE96C8;

  return sub_22FBF39EC(v20);
}

uint64_t sub_22FBE96C8()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBE97D8, v1, 0);
}

uint64_t sub_22FBE97D8()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[49];
  swift_beginAccess();
  sub_22FB041F0(v3, v2, (v0 + 22));
  sub_22FA2B420((v0 + 22), &unk_27DAD8720);
  swift_endAccess();
  v4 = (v1 + *(*v1 + 152));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = v0[1];

    return v7(v6, v5);
  }

  else
  {
    v9 = *(v0[53] + *(*v1 + 160));
    if (v9)
    {
      v10 = v9;

      swift_willThrow();

      v11 = v0[1];

      return v11();
    }

    else
    {
      return sub_22FCC94D4();
    }
  }
}

uint64_t sub_22FBE99F4(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBE9AB8, v2, 0);
}

uint64_t sub_22FBE9AB8()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEA21C;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F70);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_2814813F0, &qword_27DAD8F70);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FBF5CE4(v57);
}

uint64_t sub_22FBEA21C()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEA32C, v1, 0);
}

uint64_t sub_22FBEA32C()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F70);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_2814813F0, &qword_27DAD8F70);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FBF5CE4(v20);
}

uint64_t sub_22FBEA668()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FC1280C, v1, 0);
}

uint64_t sub_22FBEA778(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBEA83C, v2, 0);
}

uint64_t sub_22FBEA83C()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEAFA0;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F40);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8F48, &qword_27DAD8F40);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FBF7FDC(v57);
}

uint64_t sub_22FBEAFA0()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEB0B0, v1, 0);
}

uint64_t sub_22FBEB0B0()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F40);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8F48, &qword_27DAD8F40);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FBF7FDC(v20);
}

uint64_t sub_22FBEB3EC(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBEB4B0, v2, 0);
}

uint64_t sub_22FBEB4B0()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEBC14;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F28);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8F30, &qword_27DAD8F28);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FBFA2D4(v57);
}

uint64_t sub_22FBEBC14()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEBD24, v1, 0);
}

uint64_t sub_22FBEBD24()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F28);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8F30, &qword_27DAD8F28);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FBFA2D4(v20);
}

uint64_t sub_22FBEC060(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBEC124, v2, 0);
}

uint64_t sub_22FBEC124()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEC888;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F10);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8F18, &qword_27DAD8F10);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FBFC5CC(v57);
}

uint64_t sub_22FBEC888()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEC998, v1, 0);
}

uint64_t sub_22FBEC998()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F10);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8F18, &qword_27DAD8F10);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FBFC5CC(v20);
}

uint64_t sub_22FBECCD4(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBECD98, v2, 0);
}

uint64_t sub_22FBECD98()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBED4FC;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EF8);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8F00, &qword_27DAD8EF8);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBED948;

  return sub_22FBFE8C4(v57);
}

uint64_t sub_22FBED4FC()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBED60C, v1, 0);
}

uint64_t sub_22FBED60C()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EF8);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8F00, &qword_27DAD8EF8);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBED948;

  return sub_22FBFE8C4(v20);
}

uint64_t sub_22FBED948()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEDA58, v1, 0);
}

uint64_t sub_22FBEDA58()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[49];
  swift_beginAccess();
  sub_22FB041F0(v3, v2, (v0 + 22));
  sub_22FA2B420((v0 + 22), &unk_27DAD8720);
  swift_endAccess();
  v4 = *(v1 + *(*v1 + 152));
  if (v4)
  {

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = *(v0[53] + *(*v1 + 160));
    if (v7)
    {
      v8 = v7;

      swift_willThrow();

      v9 = v0[1];

      return v9();
    }

    else
    {
      return sub_22FCC94D4();
    }
  }
}

uint64_t sub_22FBEDC68(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBEDD2C, v2, 0);
}

uint64_t sub_22FBEDD2C()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEE490;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EE0);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8EE8, &qword_27DAD8EE0);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FC00BBC(v57);
}

uint64_t sub_22FBEE490()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEE5A0, v1, 0);
}

uint64_t sub_22FBEE5A0()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EE0);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8EE8, &qword_27DAD8EE0);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FC00BBC(v20);
}

uint64_t sub_22FBEE8DC(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBEE9A0, v2, 0);
}

uint64_t sub_22FBEE9A0()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEF104;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8ED0);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_281481400, &qword_27DAD8ED0);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FC02EB4(v57);
}

uint64_t sub_22FBEF104()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBEF214, v1, 0);
}

uint64_t sub_22FBEF214()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8ED0);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_281481400, &qword_27DAD8ED0);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FC02EB4(v20);
}

uint64_t sub_22FBEF550(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 336) = a2;
  *(v4 + 344) = v3;
  *(v4 + 448) = a3;
  *(v4 + 328) = a1;
  v5 = sub_22FCC8684();
  *(v4 + 352) = v5;
  *(v4 + 360) = *(v5 - 8);
  *(v4 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBEF618, v3, 0);
}

uint64_t sub_22FBEF618()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 376) = 0;
  v1 = *(v0 + 344);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 384) = v2;
  *(v0 + 392) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 336);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 400) = v7;
  *(v0 + 408) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 416) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 336);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 448);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 424) = v24;
      *v24 = v0;
      v24[1] = sub_22FBEFD68;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 336);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 336);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 376);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 384);
  if (*(v38 + *(v0 + 392)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 336);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 408);
  v61 = *(v0 + 400);
  v52 = *(v0 + 360);
  v51 = *(v0 + 368);
  v53 = *(v0 + 344);
  v54 = *(v0 + 352);
  v55 = *(v0 + 448);
  sub_22FA2D328(*(v0 + 336), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EA8);
  swift_allocObject();
  v57 = sub_22FBDD0B4((v0 + 136), v55, v51);
  *(v0 + 432) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(qword_281481408, &qword_27DAD8EA8);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 440) = v58;
  *v58 = v0;
  v58[1] = sub_22FBF01A0;

  return sub_22FC051AC(v57);
}

uint64_t sub_22FBEFD68()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_22FBEFE78, v1, 0);
}

uint64_t sub_22FBEFE78()
{
  v24 = v0;
  v1 = *(v0 + 376);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 384);
  if (*(v2 + *(v0 + 392)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 336);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 408);
  v22 = *(v0 + 400);
  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 448);
  sub_22FA2D328(*(v0 + 336), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EA8);
  swift_allocObject();
  v20 = sub_22FBDD0B4((v0 + 136), v18, v14);
  *(v0 + 432) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(qword_281481408, &qword_27DAD8EA8);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 440) = v21;
  *v21 = v0;
  v21[1] = sub_22FBF01A0;

  return sub_22FC051AC(v20);
}

uint64_t sub_22FBF01A0()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_22FBF02B0, v1, 0);
}

uint64_t sub_22FBF02B0()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[50];
  swift_beginAccess();
  sub_22FB041F0(v3, v2, (v0 + 22));
  sub_22FA2B420((v0 + 22), &unk_27DAD8720);
  swift_endAccess();
  v4 = v1 + *(*v1 + 152);
  v5 = *(v4 + 8);
  if (v5 >> 60 == 15)
  {
    v6 = *(v0[54] + *(*v1 + 160));
    if (!v6)
    {
      return sub_22FCC94D4();
    }

    v7 = v6;

    swift_willThrow();

    v8 = v0[1];
  }

  else
  {
    v9 = v0[41];
    v10 = *v4;
    sub_22FA7E820(*v4, *(v4 + 8));

    *v9 = v10;
    v9[1] = v5;

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_22FBF04B8(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBF057C, v2, 0);
}

uint64_t sub_22FBF057C()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBF0CE0;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 216);
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EB8);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_27DAD8EC0, &qword_27DAD8EB8);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FC07744(v57);
}

uint64_t sub_22FBF0CE0()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBF0DF0, v1, 0);
}

uint64_t sub_22FBF0DF0()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EB8);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_27DAD8EC0, &qword_27DAD8EB8);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FC07744(v20);
}

uint64_t sub_22FBF112C()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_22FBF123C, v1, 0);
}

uint64_t sub_22FBF123C()
{
  v24 = v0;
  v1 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v1)
  {

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 376);
  if (*(v2 + *(v0 + 384)) != 2)
  {

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v4, v5);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0);
  }

  v13 = *(v0 + 400);
  v22 = *(v0 + 392);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v15 + 16))(v14, v16 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E98);
  swift_allocObject();
  v20 = sub_22FA2E764(v0 + 136, v18, v14, sub_22FA2D89C);
  *(v0 + 424) = v20;
  v23[3] = v19;
  v23[4] = sub_22FA2CF90(&qword_2814813F8, &qword_27DAD8E98);
  v23[0] = v20;
  swift_beginAccess();

  sub_22FA2E954(v23, v22, v13);
  swift_endAccess();
  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_22FBEA668;

  return sub_22FA2EA78(v20);
}

uint64_t sub_22FBF1578(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBF1734, v1, 0);
}

uint64_t sub_22FBF1734()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBF1F2C;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF3A8, &unk_22FCDC610);
    v28 = sub_22FBF31A4;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0DBB0(v33, v31, v32);
}

uint64_t sub_22FBF1F2C()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBF1FA8, v1, 0);
}

uint64_t sub_22FBF1FA8()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC113B4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_32;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBF2908;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FBF3498;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF3A8, &unk_22FCDC610);
      v29 = sub_22FBF31A4;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0DBB0(v46, v44, v45);
  }
}

uint64_t sub_22FBF2908(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBF2A20, v4, 0);
}

uint64_t sub_22FBF2A20()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AF3A8, &unk_22FCDC610);
    v49 = sub_22FBF31A4;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0DBB0(v26, v24, v25);
}

uint64_t sub_22FBF3028()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 304);
  v4 = *(*v0 + 264);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22FC12798, v4, 0);
}

uint64_t sub_22FBF31A4()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FBF32BC;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FBF33F0, v6, 0);
  }
}

uint64_t sub_22FBF32BC()
{

  return MEMORY[0x2822009F8](sub_22FBF33D4, 0, 0);
}

uint64_t sub_22FBF33F0()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0DBB0(v4, v2, v3);
}

uint64_t sub_22FBF3498()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBF3548, v1, 0);
}

uint64_t sub_22FBF3548()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF3A8, &unk_22FCDC610);
    v30 = sub_22FBF31A4;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0DBB0(v6, v4, v5);
}

uint64_t sub_22FBF39EC(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBF3BA8, v1, 0);
}

uint64_t sub_22FBF3BA8()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBF43A0;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFE98, &unk_22FCDC9E0);
    v28 = sub_22FBF549C;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0E018(v33, v31, v32);
}

uint64_t sub_22FBF43A0()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBF441C, v1, 0);
}

uint64_t sub_22FBF441C()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_435;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBF4D7C;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FBF5790;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFE98, &unk_22FCDC9E0);
      v29 = sub_22FBF549C;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0E018(v46, v44, v45);
  }
}

uint64_t sub_22FBF4D7C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBF4E94, v4, 0);
}

uint64_t sub_22FBF4E94()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFE98, &unk_22FCDC9E0);
    v49 = sub_22FBF549C;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0E018(v26, v24, v25);
}

uint64_t sub_22FBF549C()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FBF55B4;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FBF56E8, v6, 0);
  }
}

uint64_t sub_22FBF55B4()
{

  return MEMORY[0x2822009F8](sub_22FBF56CC, 0, 0);
}

uint64_t sub_22FBF56E8()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0E018(v4, v2, v3);
}

uint64_t sub_22FBF5790()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBF5840, v1, 0);
}

uint64_t sub_22FBF5840()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFE98, &unk_22FCDC9E0);
    v30 = sub_22FBF549C;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0E018(v6, v4, v5);
}

uint64_t sub_22FBF5CE4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBF5EA0, v1, 0);
}

uint64_t sub_22FBF5EA0()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBF6698;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFF60, &unk_22FCDCA40);
    v28 = sub_22FBF7794;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0E480(v33, v31, v32);
}

uint64_t sub_22FBF6698()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBF6714, v1, 0);
}

uint64_t sub_22FBF6714()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_465;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBF7074;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FBF7A88;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFF60, &unk_22FCDCA40);
      v29 = sub_22FBF7794;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0E480(v46, v44, v45);
  }
}

uint64_t sub_22FBF7074(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBF718C, v4, 0);
}

uint64_t sub_22FBF718C()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFF60, &unk_22FCDCA40);
    v49 = sub_22FBF7794;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0E480(v26, v24, v25);
}

uint64_t sub_22FBF7794()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FBF78AC;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FBF79E0, v6, 0);
  }
}

uint64_t sub_22FBF78AC()
{

  return MEMORY[0x2822009F8](sub_22FBF79C4, 0, 0);
}

uint64_t sub_22FBF79E0()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0E480(v4, v2, v3);
}

uint64_t sub_22FBF7A88()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBF7B38, v1, 0);
}

uint64_t sub_22FBF7B38()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFF60, &unk_22FCDCA40);
    v30 = sub_22FBF7794;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0E480(v6, v4, v5);
}

uint64_t sub_22FBF7FDC(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBF8198, v1, 0);
}

uint64_t sub_22FBF8198()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBF8990;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFD58, &unk_22FCDC970);
    v28 = sub_22FBF9A8C;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0E8E8(v33, v31, v32);
}

uint64_t sub_22FBF8990()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBF8A0C, v1, 0);
}

uint64_t sub_22FBF8A0C()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_389;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBF936C;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FBF9D80;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFD58, &unk_22FCDC970);
      v29 = sub_22FBF9A8C;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0E8E8(v46, v44, v45);
  }
}

uint64_t sub_22FBF936C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBF9484, v4, 0);
}

uint64_t sub_22FBF9484()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFD58, &unk_22FCDC970);
    v49 = sub_22FBF9A8C;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0E8E8(v26, v24, v25);
}

uint64_t sub_22FBF9A8C()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FBF9BA4;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FBF9CD8, v6, 0);
  }
}

uint64_t sub_22FBF9BA4()
{

  return MEMORY[0x2822009F8](sub_22FBF9CBC, 0, 0);
}

uint64_t sub_22FBF9CD8()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0E8E8(v4, v2, v3);
}

uint64_t sub_22FBF9D80()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBF9E30, v1, 0);
}

uint64_t sub_22FBF9E30()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFD58, &unk_22FCDC970);
    v30 = sub_22FBF9A8C;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0E8E8(v6, v4, v5);
}

uint64_t sub_22FBFA2D4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBFA490, v1, 0);
}

uint64_t sub_22FBFA490()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBFAC88;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFC90, &unk_22FCDC920);
    v28 = sub_22FBFBD84;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0ED50(v33, v31, v32);
}

uint64_t sub_22FBFAC88()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBFAD04, v1, 0);
}

uint64_t sub_22FBFAD04()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_360;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBFB664;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FBFC078;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFC90, &unk_22FCDC920);
      v29 = sub_22FBFBD84;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0ED50(v46, v44, v45);
  }
}

uint64_t sub_22FBFB664(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBFB77C, v4, 0);
}

uint64_t sub_22FBFB77C()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFC90, &unk_22FCDC920);
    v49 = sub_22FBFBD84;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0ED50(v26, v24, v25);
}

uint64_t sub_22FBFBD84()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FBFBE9C;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FBFBFD0, v6, 0);
  }
}

uint64_t sub_22FBFBE9C()
{

  return MEMORY[0x2822009F8](sub_22FBFBFB4, 0, 0);
}

uint64_t sub_22FBFBFD0()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0ED50(v4, v2, v3);
}

uint64_t sub_22FBFC078()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBFC128, v1, 0);
}

uint64_t sub_22FBFC128()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFC90, &unk_22FCDC920);
    v30 = sub_22FBFBD84;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0ED50(v6, v4, v5);
}

uint64_t sub_22FBFC5CC(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBFC788, v1, 0);
}

uint64_t sub_22FBFC788()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBFCF80;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFBC8, &unk_22FCDC8D0);
    v28 = sub_22FBFE07C;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0F1B8(v33, v31, v32);
}

uint64_t sub_22FBFCF80()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBFCFFC, v1, 0);
}

uint64_t sub_22FBFCFFC()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_331;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBFD95C;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FBFE370;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFBC8, &unk_22FCDC8D0);
      v29 = sub_22FBFE07C;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0F1B8(v46, v44, v45);
  }
}

uint64_t sub_22FBFD95C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBFDA74, v4, 0);
}

uint64_t sub_22FBFDA74()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFBC8, &unk_22FCDC8D0);
    v49 = sub_22FBFE07C;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0F1B8(v26, v24, v25);
}

uint64_t sub_22FBFE07C()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FBFE194;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FBFE2C8, v6, 0);
  }
}

uint64_t sub_22FBFE194()
{

  return MEMORY[0x2822009F8](sub_22FBFE2AC, 0, 0);
}

uint64_t sub_22FBFE2C8()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0F1B8(v4, v2, v3);
}

uint64_t sub_22FBFE370()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FBFE420, v1, 0);
}

uint64_t sub_22FBFE420()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFBC8, &unk_22FCDC8D0);
    v30 = sub_22FBFE07C;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0F1B8(v6, v4, v5);
}

uint64_t sub_22FBFE8C4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FBFEA80, v1, 0);
}

uint64_t sub_22FBFEA80()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FBFF278;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFB00, &unk_22FCDC880);
    v28 = sub_22FC00374;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0F620(v33, v31, v32);
}

uint64_t sub_22FBFF278()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FBFF2F4, v1, 0);
}

uint64_t sub_22FBFF2F4()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_302;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FBFFC54;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FC00668;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFB00, &unk_22FCDC880);
      v29 = sub_22FC00374;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0F620(v46, v44, v45);
  }
}

uint64_t sub_22FBFFC54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FBFFD6C, v4, 0);
}

uint64_t sub_22FBFFD6C()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFB00, &unk_22FCDC880);
    v49 = sub_22FC00374;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0F620(v26, v24, v25);
}

uint64_t sub_22FC00374()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FC0048C;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FC005C0, v6, 0);
  }
}

uint64_t sub_22FC0048C()
{

  return MEMORY[0x2822009F8](sub_22FC005A4, 0, 0);
}

uint64_t sub_22FC005C0()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0F620(v4, v2, v3);
}

uint64_t sub_22FC00668()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FC00718, v1, 0);
}

uint64_t sub_22FC00718()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFB00, &unk_22FCDC880);
    v30 = sub_22FC00374;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0F620(v6, v4, v5);
}

uint64_t sub_22FC00BBC(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC00D78, v1, 0);
}

uint64_t sub_22FC00D78()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FC01570;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFA38, &unk_22FCDC830);
    v28 = sub_22FC0266C;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0FA88(v33, v31, v32);
}

uint64_t sub_22FC01570()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FC015EC, v1, 0);
}

uint64_t sub_22FC015EC()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_273;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FC01F4C;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FC02960;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFA38, &unk_22FCDC830);
      v29 = sub_22FC0266C;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0FA88(v46, v44, v45);
  }
}

uint64_t sub_22FC01F4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FC02064, v4, 0);
}

uint64_t sub_22FC02064()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AFA38, &unk_22FCDC830);
    v49 = sub_22FC0266C;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0FA88(v26, v24, v25);
}

uint64_t sub_22FC0266C()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FC02784;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FC028B8, v6, 0);
  }
}