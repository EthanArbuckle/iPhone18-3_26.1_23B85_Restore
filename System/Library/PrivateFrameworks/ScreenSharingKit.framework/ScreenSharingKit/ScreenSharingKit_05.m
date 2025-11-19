uint64_t sub_264A423D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FF8, &unk_264B496F0);
  v7[35] = v9;
  v10 = *(v9 - 8);
  v7[36] = v10;
  v11 = *(v10 + 64) + 15;
  v7[37] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A000, &qword_264B471A8);
  v7[38] = v12;
  v13 = *(v12 - 8);
  v7[39] = v13;
  v14 = *(v13 + 64) + 15;
  v7[40] = swift_task_alloc();
  v7[41] = sub_264B41244();
  v7[42] = sub_264B41234();
  v16 = sub_264B411C4();
  v7[43] = v16;
  v7[44] = v15;

  return MEMORY[0x2822009F8](sub_264A42584, v16, v15);
}

uint64_t sub_264A42584()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = sub_264B40964();
  v0[45] = __swift_project_value_buffer(v2, qword_27FF8AE70);

  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v5;

    _os_log_impl(&dword_2649C6000, v3, v4, "Setting up audioVideoMessageStreams for session #%{public}ld", v6, 0xCu);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[31];

  return MEMORY[0x2822009F8](sub_264A426DC, v7, 0);
}

uint64_t sub_264A426DC()
{
  (*(v0[39] + 16))(v0[40], v0[31] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_audioVideoStreams, v0[38]);
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_264A42764, v1, v2);
}

uint64_t sub_264A42764()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  sub_264B412C4();
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v0[46] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables;
  v0[47] = v4;
  v5 = v0[41];
  v6 = sub_264B41234();
  v0[48] = v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = sub_264A42840;
  v9 = v0[37];
  v10 = v0[35];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v6, v11, v10);
}

uint64_t sub_264A42840()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v7 = *v0;

  v4 = *(v1 + 352);
  v5 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_264A42984, v5, v4);
}

uint64_t sub_264A42984()
{
  v64 = v0;
  if (*(v0 + 40))
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 256);
    sub_2649D2AAC((v0 + 16), v0 + 56);
    sub_2649CB5C0(v0 + 56, v0 + 96);
    v3 = v2;
    v4 = sub_264B40944();
    v5 = sub_264B41484();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 376);
      v7 = *(v0 + 256);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v62 = v9;
      *v8 = 134349314;
      *(v8 + 4) = *&v7[v6];

      *(v8 + 12) = 2082;
      v10 = *(v0 + 120);
      v11 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v10);
      (*(v11 + 8))(&v63, v10, v11);
      *(v0 + 400) = v63;
      v12 = sub_264B41064();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v15 = sub_2649CC004(v12, v14, &v62);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_2649C6000, v4, v5, "Session #%{public}ld received media message stream of type: %{public}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v27 = *(v0 + 328);
    v28 = *(v0 + 264);
    v29 = *(v0 + 272);
    v30 = *(v0 + 256);
    v31 = sub_264B41274();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v29, 1, 1, v31);
    sub_2649CB5C0(v0 + 56, v0 + 136);
    v33 = v30;
    v34 = sub_264B41234();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v33;
    sub_2649D2AAC((v0 + 136), (v35 + 5));
    sub_2649D046C(v29, v28, &qword_27FF898C0, &unk_264B44190);
    LODWORD(v28) = (*(v32 + 48))(v28, 1, v31);

    v37 = *(v0 + 264);
    if (v28 == 1)
    {
      sub_2649D04D4(*(v0 + 264), &qword_27FF898C0, &unk_264B44190);
    }

    else
    {
      sub_264B41264();
      (*(v32 + 8))(v37, v31);
    }

    v39 = v35[2];
    v38 = v35[3];
    swift_unknownObjectRetain();

    if (v39)
    {
      swift_getObjectType();
      v40 = sub_264B411C4();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    sub_2649D04D4(*(v0 + 272), &qword_27FF898C0, &unk_264B44190);
    v43 = swift_allocObject();
    *(v43 + 16) = &unk_264B49708;
    *(v43 + 24) = v35;
    if (v42 | v40)
    {
      *(v0 + 176) = 0;
      *(v0 + 184) = 0;
      *(v0 + 192) = v40;
      *(v0 + 200) = v42;
    }

    v44 = *(v0 + 368);
    v45 = *(v0 + 256);
    v46 = swift_task_create();
    swift_beginAccess();
    v47 = *(v45 + v44);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + v44) = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = *(v0 + 368);
      v61 = *(v0 + 256);
      v47 = sub_2649D8218(0, v47[2] + 1, 1, v47);
      *(v61 + v60) = v47;
    }

    v50 = v47[2];
    v49 = v47[3];
    if (v50 >= v49 >> 1)
    {
      v47 = sub_2649D8218((v49 > 1), v50 + 1, 1, v47);
    }

    v51 = *(v0 + 368);
    v52 = *(v0 + 256);
    v47[2] = v50 + 1;
    v47[v50 + 4] = v46;
    *(v52 + v51) = v47;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v53 = *(v0 + 328);
    v54 = sub_264B41234();
    *(v0 + 384) = v54;
    v55 = *(MEMORY[0x277D85798] + 4);
    v56 = swift_task_alloc();
    *(v0 + 392) = v56;
    *v56 = v0;
    v56[1] = sub_264A42840;
    v57 = *(v0 + 296);
    v58 = *(v0 + 280);
    v59 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 16, v54, v59, v58);
  }

  else
  {
    v16 = *(v0 + 336);
    v18 = *(v0 + 312);
    v17 = *(v0 + 320);
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);

    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_264A42F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[55] = a4;
  v5[56] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = sub_264B41244();
  v5[59] = sub_264B41234();
  v8 = sub_264B411C4();
  v5[60] = v8;
  v5[61] = v7;

  return MEMORY[0x2822009F8](sub_264A43040, v8, v7);
}

uint64_t sub_264A43040()
{
  if (sub_264B41314())
  {
    v1 = *(v0 + 472);

    v2 = *(v0 + 456);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 440);
    v5 = *(v0 + 448);
    sub_2649CB5C0(v6 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_taskSleepPrimitives, v0 + 16);
    v7 = *(v0 + 40);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64) + 15;
    v11 = swift_task_alloc();
    (*(v9 + 16))(v11, v8, v7);
    v12 = *v11;
    v13 = type metadata accessor for TimeBackedTaskSleepPrimitives();
    *(v0 + 80) = v13;
    *(v0 + 88) = &off_28765C058;
    *(v0 + 56) = v12;
    type metadata accessor for TaskBackedTimer();
    v14 = swift_allocObject();
    *(v0 + 496) = v14;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v13);
    v16 = *(v13 - 8);
    v17 = *(v16 + 64) + 15;
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v13);
    v19 = *v18;
    *(v14 + 40) = v13;
    *(v14 + 48) = &off_28765C058;
    *(v14 + 16) = v19;
    *(v14 + 88) = 0;
    *(v14 + 72) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 96) = 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v20 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_timeoutPrimitives);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2649CB5C0(v5, v0 + 96);
    sub_2649CB5C0(v20, v0 + 136);
    v22 = swift_allocObject();
    sub_2649D2AAC((v0 + 96), v22 + 16);
    sub_2649D2AAC((v0 + 136), v22 + 56);
    *(v22 + 96) = v21;
    v23 = *(v14 + 64);
    v24 = *(v14 + 72);
    *(v14 + 64) = sub_264A55684;
    *(v14 + 72) = v22;

    sub_2649CB67C(v23);

    v25 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v26 = sub_264B41C14();
    sub_264B0D954(v26, v27);
    v28 = v5[3];
    v29 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v28);
    v30 = *(v29 + 16);
    v33 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 504) = v32;
    *v32 = v0;
    v32[1] = sub_264A43450;

    return v33(v0 + 176, v28, v29);
  }
}

uint64_t sub_264A43450()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = sub_264A43DC0;
  }

  else
  {
    v7 = sub_264A4358C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264A4358C()
{
  v1 = v0[25];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 22, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[35] = swift_getAssociatedTypeWitness();
  v0[36] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 32);
  sub_264B41334();

  v6 = v0[58];
  v7 = sub_264B41234();
  v0[65] = v7;
  v8 = v0[35];
  v9 = v0[36];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v8);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[66] = v11;
  *v11 = v0;
  v11[1] = sub_264A43760;
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 537, v7, v12, v0 + 53, v8, v9);
}

uint64_t sub_264A43760()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v9 = *v1;

  v4 = v2[65];

  v5 = v2[60];
  v6 = v2[61];
  if (v0)
  {
    v7 = sub_264A4414C;
  }

  else
  {
    v7 = sub_264A43880;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_264A43880()
{
  v47 = v0;
  v1 = *(v0 + 537);
  if (v1 == 6 || (sub_264B41314() & 1) != 0)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 472);

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v4 = *(v0 + 456);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (v1 == 1)
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 448);
      v8 = sub_264B40964();
      __swift_project_value_buffer(v8, qword_27FFA71B8);
      sub_2649CB5C0(v7, v0 + 376);
      v9 = sub_264B40944();
      v10 = sub_264B414B4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v45 = v12;
        *v11 = 136446210;
        v13 = *(v0 + 400);
        v14 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v13);
        (*(v14 + 8))(&v46, v13, v14);
        *(v0 + 541) = v46;
        v15 = sub_264B41064();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        v18 = sub_2649CC004(v15, v17, &v45);

        *(v11 + 4) = v18;
        _os_log_impl(&dword_2649C6000, v9, v10, "Media stream type: %{public}s activated, cancelling timeout", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x266749940](v12, -1, -1);
        MEMORY[0x266749940](v11, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
      }

      v34 = *(v0 + 496);
      *(v34 + 80) = 0;
      *(v34 + 88) = 0;
      *(v34 + 96) = 1;
      if (*(v34 + 56))
      {
        v35 = *(v0 + 496);
        v36 = *(v34 + 56);

        sub_264B41304();

        v37 = *(v35 + 56);
      }

      *(*(v0 + 496) + 56) = 0;
    }

    else
    {
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 448);
      v20 = sub_264B40964();
      __swift_project_value_buffer(v20, qword_27FF8AE70);
      sub_2649CB5C0(v19, v0 + 336);
      v21 = sub_264B40944();
      v22 = sub_264B414B4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v45 = v24;
        *v23 = 136446466;
        v25 = *(v0 + 360);
        v26 = *(v0 + 368);
        __swift_project_boxed_opaque_existential_1((v0 + 336), v25);
        (*(v26 + 8))(&v46, v25, v26);
        *(v0 + 539) = v46;
        v27 = sub_264B41064();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_0((v0 + 336));
        v30 = sub_2649CC004(v27, v29, &v45);

        *(v23 + 4) = v30;
        *(v23 + 12) = 2082;
        *(v0 + 540) = v1;
        v31 = sub_264B41064();
        v33 = sub_2649CC004(v31, v32, &v45);

        *(v23 + 14) = v33;
        _os_log_impl(&dword_2649C6000, v21, v22, "Media stream of type: %{public}s transitioned to %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v24, -1, -1);
        MEMORY[0x266749940](v23, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      }
    }

    v38 = *(v0 + 464);
    v39 = sub_264B41234();
    *(v0 + 520) = v39;
    v40 = *(v0 + 280);
    v41 = *(v0 + 288);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v40);
    v42 = *(MEMORY[0x277D856D8] + 4);
    v43 = swift_task_alloc();
    *(v0 + 528) = v43;
    *v43 = v0;
    v43[1] = sub_264A43760;
    v44 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 537, v39, v44, v0 + 424, v40, v41);
  }
}

uint64_t sub_264A43DC0()
{
  v35 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);

  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  if (*(v1 + 56))
  {
    v3 = *(v0 + 496);

    sub_264B41304();

    v4 = *(v3 + 56);
  }

  *(*(v0 + 496) + 56) = 0;

  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 512);
  v6 = *(v0 + 448);
  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FF8AE70);
  sub_2649CB5C0(v6, v0 + 216);
  v8 = v5;
  v9 = sub_264B40944();
  v10 = sub_264B41494();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 512);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136446466;
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v14);
    (*(v15 + 8))(&v34, v14, v15);
    *(v0 + 536) = v34;
    v16 = sub_264B41064();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    v19 = sub_2649CC004(v16, v18, &v32);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2082;
    *(v0 + 416) = v11;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v32);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_2649C6000, v9, v10, "Failed to activate stream of type: %{public}s with error: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v24 = *(v0 + 512);
  v25 = *(v0 + 496);
  v26 = *(v0 + 456);
  v27 = *(v0 + 440);
  v32 = 5;
  v33 = 0x80;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  sub_264A380B0(&v32, v26);

  sub_2649D04D4(v26, &unk_27FF899E0, &qword_264B53440);
  v29 = *(v0 + 456);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_264A4414C()
{
  v33 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);

  v3 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  if (*(v1 + 56))
  {
    v4 = *(v0 + 496);

    sub_264B41304();

    v5 = *(v4 + 56);
  }

  *(*(v0 + 496) + 56) = 0;

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71B8);
  sub_2649CB5C0(v6, v0 + 296);
  v8 = v3;
  v9 = sub_264B40944();
  v10 = sub_264B41494();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446466;
    v13 = *(v0 + 320);
    v14 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v13);
    (*(v14 + 8))(&v32, v13, v14);
    *(v0 + 538) = v32;
    v15 = sub_264B41064();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    v18 = sub_2649CC004(v15, v17, &v30);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2082;
    *(v0 + 432) = v3;
    v19 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v20 = sub_264B41064();
    v22 = sub_2649CC004(v20, v21, &v30);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_2649C6000, v9, v10, "Media stream type: %{public}s interrupted with: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  }

  v23 = *(v0 + 496);
  v24 = *(v0 + 456);
  v25 = *(v0 + 440);
  v30 = 4;
  v31 = 0x80;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  sub_264A380B0(&v30, v24);

  sub_2649D04D4(v24, &unk_27FF899E0, &qword_264B53440);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v27 = *(v0 + 456);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_264A444E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-v6];
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  __swift_project_value_buffer(v8, qword_27FFA71B8);
  sub_2649CB5C0(a1, v35);
  sub_2649CB5C0(a2, &v31);
  v9 = sub_264B40944();
  v10 = sub_264B41494();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446466;
    v13 = v36;
    v14 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v14 + 8))(&v29, v13, v14);
    v28[6] = v29;
    v15 = sub_264B41064();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(v35);
    v18 = sub_2649CC004(v15, v17, &v30);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2082;
    v19 = v34;
    __swift_project_boxed_opaque_existential_1(&v31, v33);
    v20 = *(v19 + 8);
    v21 = sub_264B41A64();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v24 = sub_2649CC004(v21, v23, &v30);

    *(v11 + 14) = v24;
    _os_log_impl(&dword_2649C6000, v9, v10, "Failed to activate %{public}s after %{public}s seconds, tearing down", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v35);
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v31 = 6;
    v32 = 0x80;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_264A380B0(&v31, v7);

    return sub_2649D04D4(v7, &unk_27FF899E0, &qword_264B53440);
  }

  return result;
}

uint64_t sub_264A44824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E20, &unk_264B49588);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89248, &qword_264B471A0);
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = sub_264B41244();
  v7[15] = sub_264B41234();
  v15 = sub_264B411C4();
  v7[16] = v15;
  v7[17] = v14;

  return MEMORY[0x2822009F8](sub_264A44994, v15, v14);
}

uint64_t sub_264A44994()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_264B40964();
  v0[18] = __swift_project_value_buffer(v2, qword_27FF8AE70);

  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v5;

    _os_log_impl(&dword_2649C6000, v3, v4, "Setting up controlMessageStreams for session #%{public}ld", v6, 0xCu);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[6];

  return MEMORY[0x2822009F8](sub_264A44AEC, v7, 0);
}

uint64_t sub_264A44AEC()
{
  (*(v0[12] + 16))(v0[13], v0[6] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlMessageStreams, v0[11]);
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x2822009F8](sub_264A44B74, v1, v2);
}

uint64_t sub_264A44B74()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  sub_264B412C4();
  v4 = v0[14];
  v5 = sub_264B41234();
  v0[19] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_264A44C3C;
  v8 = v0[10];
  v9 = v0[8];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v5, v10, v9);
}

uint64_t sub_264A44C3C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_264A44D80, v5, v4);
}

uint64_t sub_264A44D80()
{
  v45 = v0;
  v1 = v0[2];
  v0[21] = v1;
  if (!v1)
  {
LABEL_4:
    v3 = v0[15];
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    v9 = v0[9];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  v2 = v0[3];
  if (sub_264B41314())
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v12 = v0[18];
  v13 = v0[5];

  swift_unknownObjectRetain();
  v14 = sub_264B40944();
  v15 = sub_264B414B4();
  swift_unknownObjectRelease();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[5];
  if (v16)
  {
    v43 = v15;
    v18 = v0[4];
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v19 = 134349314;
    *(v19 + 4) = v18;

    *(v19 + 12) = 2082;
    ObjectType = swift_getObjectType();
    v21 = *(v2 + 16);
    v22 = v21(ObjectType, v2);
    v24 = v2;
    v25 = sub_2649CC004(v22, v23, &v44);

    *(v19 + 14) = v25;
    v2 = v24;
    v26 = v21;
    _os_log_impl(&dword_2649C6000, v14, v43, "3. Session #%{public}ld received control message stream with identifier: %{public}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x266749940](v42, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  else
  {

    v26 = *(v2 + 16);
  }

  v27 = swift_getObjectType();
  if (v26(v27, v2) == 0xD000000000000027 && 0x8000000264B5C640 == v28)
  {
  }

  else
  {
    v30 = sub_264B41AA4();

    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRelease();
      v31 = v0[14];
      v32 = sub_264B41234();
      v0[19] = v32;
      v33 = *(MEMORY[0x277D85798] + 4);
      v34 = swift_task_alloc();
      v0[20] = v34;
      *v34 = v0;
      v34[1] = sub_264A44C3C;
      v35 = v0[10];
      v36 = v0[8];
      v37 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 2, v32, v37, v36);
    }
  }

  v38 = swift_task_alloc();
  v0[22] = v38;
  *v38 = v0;
  v38[1] = sub_264A4515C;
  v39 = v0[7];
  v40 = v0[4];
  v41 = v0[5];

  return sub_264A45340(v1, v2, v40, v41);
}

uint64_t sub_264A4515C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_264A4527C, v4, v3);
}

uint64_t sub_264A4527C()
{
  v1 = v0[21];
  swift_unknownObjectRelease();
  v2 = v0[14];
  v3 = sub_264B41234();
  v0[19] = v3;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_264A44C3C;
  v6 = v0[10];
  v7 = v0[8];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v3, v8, v7);
}

uint64_t sub_264A45340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = type metadata accessor for ContinuityDevice(0);
  v5[34] = v6;
  v7 = *(v6 - 8);
  v5[35] = v7;
  v8 = *(v7 + 64) + 15;
  v5[36] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270) - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v11 = type metadata accessor for ContinuityDeviceInfo(0);
  v5[39] = v11;
  v12 = *(v11 - 8);
  v5[40] = v12;
  v13 = *(v12 + 64) + 15;
  v5[41] = swift_task_alloc();
  v14 = sub_264B41534();
  v5[42] = v14;
  v15 = *(v14 - 8);
  v5[43] = v15;
  v16 = *(v15 + 64) + 15;
  v5[44] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  sub_264B41244();
  v5[49] = sub_264B41234();
  v20 = sub_264B411C4();
  v5[50] = v20;
  v5[51] = v19;

  return MEMORY[0x2822009F8](sub_264A455EC, v20, v19);
}

uint64_t sub_264A455EC()
{
  v1 = v0[32];
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_264A45828, v1, 0);
  }

  else
  {
    v2 = v0[48];
    v3 = sub_264B40104();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    if (sub_264B41314())
    {
      v4 = v0[49];
      sub_2649D04D4(v0[48], &unk_27FF8BFC0, &qword_264B47140);

      v6 = v0[47];
      v5 = v0[48];
      v8 = v0[45];
      v7 = v0[46];
      v9 = v0[44];
      v10 = v0[41];
      v12 = v0[37];
      v11 = v0[38];
      v13 = v0[36];

      v14 = v0[1];

      return v14();
    }

    else
    {
      v15 = v0[44];
      v16 = (v0[33] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_continuityDevicePrimitives);
      v17 = v16[3];
      v18 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v17);
      sub_264B41524();
      v19 = swift_task_alloc();
      v0[52] = v19;
      *v19 = v0;
      v19[1] = sub_264A45B14;
      v20 = v0[46];
      v21 = v0[44];

      return ContinuityDevicePrimitives.currentContinuityDeviceInfo(timeout:)(v20, v21, v17, v18);
    }
  }
}

uint64_t sub_264A45828()
{
  v1 = *(v0[32] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  if (v1 && (v2 = [v1 destinationDevice]) != 0)
  {
    v3 = v2;
    v4 = [v2 identifier];

    v5 = v0[48];
    if (v4)
    {
      sub_264B41044();

      sub_264B40094();
      swift_bridgeObjectRelease_n();
      goto LABEL_7;
    }
  }

  else
  {
    v5 = v0[48];
  }

  v6 = sub_264B40104();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
LABEL_7:
  v7 = v0[50];
  v8 = v0[51];

  return MEMORY[0x2822009F8](sub_264A45964, v7, v8);
}

uint64_t sub_264A45964()
{
  if (sub_264B41314())
  {
    v1 = v0[49];
    sub_2649D04D4(v0[48], &unk_27FF8BFC0, &qword_264B47140);

    v3 = v0[47];
    v2 = v0[48];
    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    v7 = v0[41];
    v9 = v0[37];
    v8 = v0[38];
    v10 = v0[36];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[44];
    v14 = (v0[33] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_continuityDevicePrimitives);
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_264B41524();
    v17 = swift_task_alloc();
    v0[52] = v17;
    *v17 = v0;
    v17[1] = sub_264A45B14;
    v18 = v0[46];
    v19 = v0[44];

    return ContinuityDevicePrimitives.currentContinuityDeviceInfo(timeout:)(v18, v19, v15, v16);
  }
}

uint64_t sub_264A45B14()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);
  v5 = *(*v0 + 336);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 408);
  v7 = *(v1 + 400);

  return MEMORY[0x2822009F8](sub_264A45C98, v7, v6);
}

uint64_t sub_264A45C98()
{
  v56 = v0;
  if (sub_264B41314())
  {
    v2 = v0[48];
    v1 = v0[49];
    v3 = v0[46];

    sub_2649D04D4(v3, &qword_27FF88800, qword_264B4CC90);
    v4 = v2;
LABEL_12:
    sub_2649D04D4(v4, &unk_27FF8BFC0, &qword_264B47140);
    v29 = v0[47];
    v28 = v0[48];
    v31 = v0[45];
    v30 = v0[46];
    v32 = v0[44];
    v33 = v0[41];
    v35 = v0[37];
    v34 = v0[38];
    v36 = v0[36];

    v37 = v0[1];

    return v37();
  }

  v5 = v0[45];
  v6 = v0[39];
  v7 = v0[40];
  sub_2649D046C(v0[46], v5, &qword_27FF88800, qword_264B4CC90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = v0[49];
    v9 = v0[45];

    v10 = &qword_27FF88800;
    v11 = qword_264B4CC90;
LABEL_7:
    sub_2649D04D4(v9, v10, v11);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v18 = sub_264B40964();
    __swift_project_value_buffer(v18, qword_27FF8AE70);
    v19 = sub_264B40944();
    v20 = sub_264B41494();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[31];
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v19, v20, "Unable to fetch current continuity device information for session #%{public}ld, tearing down", v22, 0xCu);
      MEMORY[0x266749940](v22, -1, -1);
    }

    v23 = v0[48];
    v24 = v0[46];
    v25 = v0[38];
    v26 = v0[33];

    v54 = 18;
    v55 = 0x80;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    sub_264A380B0(&v54, v25);
    sub_2649D04D4(v25, &unk_27FF899E0, &qword_264B53440);
    sub_2649D04D4(v24, &qword_27FF88800, qword_264B4CC90);
    v4 = v23;
    goto LABEL_12;
  }

  v13 = v0[47];
  v12 = v0[48];
  sub_264A547BC(v0[45], v0[41], type metadata accessor for ContinuityDeviceInfo);
  sub_2649D046C(v12, v13, &unk_27FF8BFC0, &qword_264B47140);
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v16 = v0[49];
    v9 = v0[47];
    v17 = v0[41];

    sub_264A551F0(v17, type metadata accessor for ContinuityDeviceInfo);
    v10 = &unk_27FF8BFC0;
    v11 = &qword_264B47140;
    goto LABEL_7;
  }

  v39 = v0[47];
  v0[53] = sub_264B400A4();
  v0[54] = v40;
  (*(v15 + 8))(v39, v14);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v41 = sub_264B40964();
  v0[55] = __swift_project_value_buffer(v41, qword_27FF8AE70);
  v42 = sub_264B40944();
  v43 = sub_264B414B4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[31];
    v45 = swift_slowAlloc();
    *v45 = 134349056;
    *(v45 + 4) = v44;
    _os_log_impl(&dword_2649C6000, v42, v43, "3.5. Session #%{public}ld Checking iCloud health", v45, 0xCu);
    MEMORY[0x266749940](v45, -1, -1);
  }

  v46 = v0[33];

  v47 = (v46 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_iCloudHealthPrimitives);
  v48 = *(v46 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_iCloudHealthPrimitives + 24);
  v49 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v50 = *(v49 + 8);
  v53 = (v50 + *v50);
  v51 = v50[1];
  v52 = swift_task_alloc();
  v0[56] = v52;
  *v52 = v0;
  v52[1] = sub_264A46274;

  return v53(v48, v49);
}

uint64_t sub_264A46274(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = *(v4 + 400);
    v8 = *(v4 + 408);
    v9 = sub_264A47420;
  }

  else
  {
    *(v4 + 73) = a1 & 1;
    v7 = *(v4 + 400);
    v8 = *(v4 + 408);
    v9 = sub_264A463A0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_264A463A0()
{
  v83 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  if (*(v0 + 73) == 1)
  {
    v3 = *(v0 + 392);

    v4 = sub_264B40944();
    v5 = sub_264B41494();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 248);
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_2649C6000, v4, v5, "Mac iCloud needs repair for session #%{public}ld, tearing down", v7, 0xCu);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v0 + 384);
    v9 = *(v0 + 368);
    v10 = *(v0 + 328);
    v11 = *(v0 + 304);
    v12 = *(v0 + 264);

    v81 = 19;
    v82 = 0x80;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_264A380B0(&v81, v11);
    sub_2649D04D4(v11, &unk_27FF899E0, &qword_264B53440);
    sub_2649D04D4(v9, &qword_27FF88800, qword_264B4CC90);
    sub_2649D04D4(v8, &unk_27FF8BFC0, &qword_264B47140);
    v14 = v10;
LABEL_26:
    sub_264A551F0(v14, type metadata accessor for ContinuityDeviceInfo);
    v70 = *(v0 + 376);
    v69 = *(v0 + 384);
    v72 = *(v0 + 360);
    v71 = *(v0 + 368);
    v73 = *(v0 + 352);
    v74 = *(v0 + 328);
    v76 = *(v0 + 296);
    v75 = *(v0 + 304);
    v77 = *(v0 + 288);

    v78 = *(v0 + 8);

    v78();
  }

  else
  {
    v15 = *(v0 + 432);

    v16 = sub_264B40944();
    v17 = sub_264B41484();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 424);
      v18 = *(v0 + 432);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v81 = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_2649CC004(v19, v18, &v81);
      _os_log_impl(&dword_2649C6000, v16, v17, "Current continuity device is: %{private}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v22 = *(*(v0 + 328) + *(*(v0 + 312) + 20));
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = 0;
      v26 = *(v0 + 280);
      v25 = *(v0 + 288);
      v79 = *(v0 + 272);
      v27 = v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      while (v24 < *(v22 + 16))
      {
        v29 = *(v0 + 424);
        v30 = *(v0 + 432);
        v31 = *(v0 + 288);
        sub_264A55188(v27 + *(v26 + 72) * v24, v31, type metadata accessor for ContinuityDevice);
        v32 = *v31 == v29 && *(v25 + 8) == v30;
        if (v32 || (v33 = *(v0 + 424), v34 = *(v0 + 432), (sub_264B41AA4() & 1) != 0))
        {
          v28 = *(v0 + 288);
          if (*(v28 + *(v79 + 44)))
          {
            v58 = *(v0 + 432);
            v60 = *(v0 + 384);
            v59 = *(v0 + 392);
            v61 = *(v0 + 368);
            v80 = *(v0 + 328);
            v62 = *(v0 + 296);
            v63 = *(v0 + 304);
            v65 = *(v0 + 272);
            v64 = *(v0 + 280);
            v66 = *(v0 + 264);
            v67 = *(v0 + 288);

            sub_264A547BC(v67, v62, type metadata accessor for ContinuityDevice);
            (*(v64 + 56))(v62, 0, 1, v65);
            v81 = 0;
            v82 = 0x80;
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
            (*(*(v68 - 8) + 56))(v63, 1, 1, v68);
            sub_264A380B0(&v81, v63);
            sub_2649D04D4(v63, &unk_27FF899E0, &qword_264B53440);
            sub_2649D04D4(v62, &unk_27FF89E30, &qword_264B44270);
            sub_2649D04D4(v61, &qword_27FF88800, qword_264B4CC90);
            sub_2649D04D4(v60, &unk_27FF8BFC0, &qword_264B47140);
            v14 = v80;
            goto LABEL_26;
          }
        }

        else
        {
          v28 = *(v0 + 288);
        }

        ++v24;
        sub_264A551F0(v28, type metadata accessor for ContinuityDevice);
        if (v23 == v24)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      v35 = *(v0 + 432);
      v36 = *(v0 + 440);
      v37 = *(v0 + 296);
      v38 = *(v0 + 272);
      v39 = *(v0 + 280);

      (*(v39 + 56))(v37, 1, 1, v38);
      v40 = sub_264B40944();
      v41 = sub_264B414B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 248);
        v43 = swift_slowAlloc();
        *v43 = 134349056;
        *(v43 + 4) = v42;
        _os_log_impl(&dword_2649C6000, v40, v41, "4. Session #%{public}ld Creating Scene interactor", v43, 0xCu);
        MEMORY[0x266749940](v43, -1, -1);
      }

      v44 = *(v0 + 440);
      v45 = *(v0 + 264);

      v46 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 24);
      v47 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 32);
      __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor), v46);
      (*(v47 + 16))(v46, v47);
      sub_2649CB5C0(v0 + 80, v0 + 120);
      v48 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
      swift_beginAccess();
      sub_2649FECCC(v0 + 120, v45 + v48, &qword_27FF89DA8, &qword_264B49498);
      swift_endAccess();
      v49 = sub_264B40944();
      v50 = sub_264B414B4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 248);
        v52 = swift_slowAlloc();
        *v52 = 134349056;
        *(v52 + 4) = v51;
        _os_log_impl(&dword_2649C6000, v49, v50, "5. Session #%{public}ld Standing up the PlaybackServer in the .paused state", v52, 0xCu);
        MEMORY[0x266749940](v52, -1, -1);
      }

      v53 = *(v0 + 240);

      v54 = *(v53 + 8);
      v55 = swift_task_alloc();
      *(v0 + 464) = v55;
      *v55 = v0;
      v55[1] = sub_264A46B30;
      v56 = *(v0 + 264);
      v57 = *(v0 + 232);

      sub_264A47AB0(v57, v54, v0 + 80);
    }
  }
}

uint64_t sub_264A46B30()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_264A472A8;
  }

  else
  {
    v7 = sub_264A46C6C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264A46C6C()
{
  v74 = v0;
  v1 = *(v0 + 392);

  if (sub_264B41314())
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 368);
    v4 = *(v0 + 328);
    v5 = *(v0 + 296);
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    sub_2649D04D4(v5, &unk_27FF89E30, &qword_264B44270);
    sub_2649D04D4(v3, &qword_27FF88800, qword_264B4CC90);
    sub_2649D04D4(v2, &unk_27FF8BFC0, &qword_264B47140);
    v6 = v4;
    goto LABEL_18;
  }

  v7 = *(v0 + 440);
  v8 = sub_264B40944();
  v9 = sub_264B414B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 248);
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v8, v9, "5a. Session #%{public}ld Checking device eligibility", v11, 0xCu);
    MEMORY[0x266749940](v11, -1, -1);
  }

  v12 = *(v0 + 264);

  v13 = (v12 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceEligibilityPrimitives);
  v14 = *(v12 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceEligibilityPrimitives + 24);
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if (((*(v15 + 8))(v14, v15) & 1) == 0)
  {
    v25 = *(v0 + 384);
    v26 = *(v0 + 368);
    v27 = *(v0 + 328);
    v29 = *(v0 + 296);
    v28 = *(v0 + 304);
    v32 = *(v0 + 264);
    v31 = 15;
    goto LABEL_11;
  }

  v16 = *(v0 + 440);
  v17 = sub_264B40944();
  v18 = sub_264B414B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 248);
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    *(v20 + 4) = v19;
    _os_log_impl(&dword_2649C6000, v17, v18, "5b. Session #%{public}ld Checking if device restricted by profile", v20, 0xCu);
    MEMORY[0x266749940](v20, -1, -1);
  }

  v21 = *(v0 + 264);

  v22 = (v21 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceRestrictionPrimitives);
  v23 = *(v21 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceRestrictionPrimitives + 24);
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  if ((*(v24 + 8))(v23, v24))
  {
    v25 = *(v0 + 384);
    v26 = *(v0 + 368);
    v27 = *(v0 + 328);
    v29 = *(v0 + 296);
    v28 = *(v0 + 304);
    v30 = *(v0 + 264);
    v31 = 16;
LABEL_11:
    *&v71 = v31;
    BYTE8(v71) = 0x80;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
    sub_264A380B0(&v71, v28);
    sub_2649D04D4(v28, &unk_27FF899E0, &qword_264B53440);
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    sub_2649D04D4(v29, &unk_27FF89E30, &qword_264B44270);
    sub_2649D04D4(v26, &qword_27FF88800, qword_264B4CC90);
    sub_2649D04D4(v25, &unk_27FF8BFC0, &qword_264B47140);
    v6 = v27;
    goto LABEL_18;
  }

  v34 = *(v0 + 440);
  v35 = sub_264B40944();
  v36 = sub_264B414B4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v0 + 248);
    v38 = swift_slowAlloc();
    *v38 = 134349056;
    *(v38 + 4) = v37;
    _os_log_impl(&dword_2649C6000, v35, v36, "6. Session #%{public}ld Letting client know we're alive and waking up", v38, 0xCu);
    MEMORY[0x266749940](v38, -1, -1);
  }

  v68 = *(v0 + 368);
  v69 = *(v0 + 384);
  v70 = *(v0 + 328);
  v67 = *(v0 + 296);
  v39 = *(v0 + 264);

  v40 = (v39 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceInformationPrimitives);
  *(v0 + 184) = &type metadata for OnenessFeatureFlags;
  *(v0 + 192) = sub_264A033E8();
  *(v0 + 160) = 0;
  v41 = sub_264B401C4();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  if (v41)
  {
    v42 = 7;
  }

  else
  {
    v42 = 3;
  }

  v43 = v40[3];
  v44 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v43);
  (*(v44 + 8))(&v71, v43, v44);
  v45 = v71;
  v46 = v40[3];
  v47 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v46);
  v48 = (*(v47 + 16))(v46, v47);
  v50 = v49;
  v51 = v40[3];
  v52 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v51);
  v53 = (*(v52 + 32))(v51, v52);
  *&v71 = 3;
  *(&v71 + 1) = v45;
  *&v72 = v48;
  *(&v72 + 1) = v50;
  *v73 = v53;
  *&v73[8] = v54;
  *&v73[16] = v42;
  v73[24] = 0;
  sub_264A40100(&v71);
  v55 = v72;
  *(v0 + 16) = v71;
  *(v0 + 32) = v55;
  *(v0 + 48) = *v73;
  *(v0 + 57) = *&v73[9];
  sub_264A52520(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  sub_2649D04D4(v67, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v68, &qword_27FF88800, qword_264B4CC90);
  sub_2649D04D4(v69, &unk_27FF8BFC0, &qword_264B47140);
  v6 = v70;
LABEL_18:
  sub_264A551F0(v6, type metadata accessor for ContinuityDeviceInfo);
  v57 = *(v0 + 376);
  v56 = *(v0 + 384);
  v59 = *(v0 + 360);
  v58 = *(v0 + 368);
  v60 = *(v0 + 352);
  v61 = *(v0 + 328);
  v63 = *(v0 + 296);
  v62 = *(v0 + 304);
  v64 = *(v0 + 288);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_264A472A8()
{
  v1 = v0[59];
  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[41];
  v5 = v0[37];
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  sub_2649D04D4(v5, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v3, &qword_27FF88800, qword_264B4CC90);
  sub_2649D04D4(v2, &unk_27FF8BFC0, &qword_264B47140);
  sub_264A551F0(v4, type metadata accessor for ContinuityDeviceInfo);
  sub_264B41754();
  MEMORY[0x266748390](0xD000000000000035, 0x8000000264B5C670);
  v0[28] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v7 = sub_264B41064();
  MEMORY[0x266748390](v7);

  return sub_264B41874();
}

void sub_264A47420()
{
  v74 = v0;
  v1 = *(v0 + 440);
  v2 = sub_264B40944();
  v3 = sub_264B41494();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Unable to fetch iCloud health, trying connection anyways", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v6 = *(v0 + 432);
  v5 = *(v0 + 440);

  v7 = sub_264B40944();
  v8 = sub_264B41484();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 424);
    v9 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v72 = v12;
    *v11 = 136380675;
    *(v11 + 4) = sub_2649CC004(v10, v9, &v72);
    _os_log_impl(&dword_2649C6000, v7, v8, "Current continuity device is: %{private}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  v13 = *(*(v0 + 328) + *(*(v0 + 312) + 20));
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_16:
    v26 = *(v0 + 432);
    v27 = *(v0 + 440);
    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 280);

    (*(v30 + 56))(v28, 1, 1, v29);
    v31 = sub_264B40944();
    v32 = sub_264B414B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 248);
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = v33;
      _os_log_impl(&dword_2649C6000, v31, v32, "4. Session #%{public}ld Creating Scene interactor", v34, 0xCu);
      MEMORY[0x266749940](v34, -1, -1);
    }

    v35 = *(v0 + 440);
    v36 = *(v0 + 264);

    v37 = *(v36 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 24);
    v38 = *(v36 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 32);
    __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor), v37);
    (*(v38 + 16))(v37, v38);
    sub_2649CB5C0(v0 + 80, v0 + 120);
    v39 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
    swift_beginAccess();
    sub_2649FECCC(v0 + 120, v36 + v39, &qword_27FF89DA8, &qword_264B49498);
    swift_endAccess();
    v40 = sub_264B40944();
    v41 = sub_264B414B4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 248);
      v43 = swift_slowAlloc();
      *v43 = 134349056;
      *(v43 + 4) = v42;
      _os_log_impl(&dword_2649C6000, v40, v41, "5. Session #%{public}ld Standing up the PlaybackServer in the .paused state", v43, 0xCu);
      MEMORY[0x266749940](v43, -1, -1);
    }

    v44 = *(v0 + 240);

    v45 = *(v44 + 8);
    v46 = swift_task_alloc();
    *(v0 + 464) = v46;
    *v46 = v0;
    v46[1] = sub_264A46B30;
    v47 = *(v0 + 264);
    v48 = *(v0 + 232);

    sub_264A47AB0(v48, v45, v0 + 80);
    return;
  }

  v15 = 0;
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v70 = *(v0 + 272);
  v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    v20 = *(v0 + 424);
    v21 = *(v0 + 432);
    v22 = *(v0 + 288);
    sub_264A55188(v18 + *(v17 + 72) * v15, v22, type metadata accessor for ContinuityDevice);
    if (*v22 != v20 || *(v16 + 8) != v21)
    {
      v24 = *(v0 + 424);
      v25 = *(v0 + 432);
      if ((sub_264B41AA4() & 1) == 0)
      {
        v19 = *(v0 + 288);
        goto LABEL_8;
      }
    }

    v19 = *(v0 + 288);
    if (*(v19 + *(v70 + 44)))
    {
      break;
    }

LABEL_8:
    ++v15;
    sub_264A551F0(v19, type metadata accessor for ContinuityDevice);
    if (v14 == v15)
    {
      goto LABEL_16;
    }
  }

  v49 = *(v0 + 432);
  v51 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 368);
  v71 = *(v0 + 328);
  v53 = *(v0 + 296);
  v54 = *(v0 + 304);
  v56 = *(v0 + 272);
  v55 = *(v0 + 280);
  v57 = *(v0 + 264);
  v58 = *(v0 + 288);

  sub_264A547BC(v58, v53, type metadata accessor for ContinuityDevice);
  (*(v55 + 56))(v53, 0, 1, v56);
  v72 = 0;
  v73 = 0x80;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v59 - 8) + 56))(v54, 1, 1, v59);
  sub_264A380B0(&v72, v54);
  sub_2649D04D4(v54, &unk_27FF899E0, &qword_264B53440);
  sub_2649D04D4(v53, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v52, &qword_27FF88800, qword_264B4CC90);
  sub_2649D04D4(v51, &unk_27FF8BFC0, &qword_264B47140);
  sub_264A551F0(v71, type metadata accessor for ContinuityDeviceInfo);
  v61 = *(v0 + 376);
  v60 = *(v0 + 384);
  v63 = *(v0 + 360);
  v62 = *(v0 + 368);
  v64 = *(v0 + 352);
  v65 = *(v0 + 328);
  v67 = *(v0 + 296);
  v66 = *(v0 + 304);
  v68 = *(v0 + 288);

  v69 = *(v0 + 8);

  v69();
}

uint64_t sub_264A47AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[95] = v3;
  v4[94] = a3;
  v4[93] = a2;
  v4[92] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v4[96] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v4[97] = v6;
  v7 = *(v6 - 8);
  v4[98] = v7;
  v8 = *(v7 + 64) + 15;
  v4[99] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  v4[100] = v9;
  v10 = *(v9 - 8);
  v4[101] = v10;
  v11 = *(v10 + 64) + 15;
  v4[102] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E58, &qword_264B495B8);
  v4[103] = v12;
  v13 = *(v12 - 8);
  v4[104] = v13;
  v14 = *(v13 + 64) + 15;
  v4[105] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
  v4[106] = v15;
  v16 = *(v15 - 8);
  v4[107] = v16;
  v17 = *(v16 + 64) + 15;
  v4[108] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E68, &qword_264B4E4E0);
  v4[109] = v18;
  v19 = *(v18 - 8);
  v4[110] = v19;
  v20 = *(v19 + 64) + 15;
  v4[111] = swift_task_alloc();
  v4[112] = sub_264B41244();
  v4[113] = sub_264B41234();
  v22 = sub_264B411C4();
  v4[114] = v22;
  v4[115] = v21;

  return MEMORY[0x2822009F8](sub_264A47D9C, v22, v21);
}

uint64_t sub_264A47D9C()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[108];
  v5 = v0[107];
  v16 = v0[109];
  v17 = v0[106];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[103];
  v9 = type metadata accessor for ProxyingClientStatusEventConsumer();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v0[116] = v12;
  swift_defaultActor_initialize();
  *(v12 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) = 0;
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_264B41284();
  (*(v7 + 8))(v6, v8);
  (*(v3 + 32))(v12 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventStream, v2, v16);
  (*(v5 + 32))(v12 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventContinuation, v4, v17);
  v0[117] = sub_264B41234();
  v14 = sub_264B411C4();
  v0[118] = v14;
  v0[119] = v13;

  return MEMORY[0x2822009F8](sub_264A47F48, v14, v13);
}

uint64_t sub_264A47F48()
{
  v1 = v0[116];
  v2 = v0[112];
  v3 = v0[95];
  v0[120] = sub_264B41234();
  v4 = swift_task_alloc();
  v0[121] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[122] = v6;
  *v6 = v0;
  v6[1] = sub_264A4805C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A4805C()
{
  v1 = *v0;
  v2 = *(*v0 + 976);
  v3 = *(*v0 + 968);
  v4 = *(*v0 + 960);
  v8 = *v0;

  v5 = *(v1 + 952);
  v6 = *(v1 + 944);

  return MEMORY[0x2822009F8](sub_264A481BC, v6, v5);
}

uint64_t sub_264A481BC()
{
  v1 = v0[117];

  v2 = v0[115];
  v3 = v0[114];

  return MEMORY[0x2822009F8](sub_264A48224, v3, v2);
}

uint64_t sub_264A48224()
{
  sub_2649CB5C0(*(v0 + 760) + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives, v0 + 16);
  type metadata accessor for ProxyingAccessibilityMessageConsumer();
  v1 = swift_allocObject();
  *(v0 + 984) = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  *(v1 + 120) = 0u;
  sub_2649D2AAC((v0 + 16), v0 + 56);
  swift_beginAccess();
  sub_2649FECCC(v0 + 56, v1 + 120, &qword_27FF89E70, &unk_264B495D0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_264A48318, v1, 0);
}

uint64_t sub_264A48318()
{
  v1 = v0[123];
  v2 = sub_264A54920(&qword_27FF89E78, type metadata accessor for ProxyingAccessibilityMessageConsumer);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
  v0[124] = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_264B409D4();
  type metadata accessor for NotifyingPlaybackEventConsumer();
  v7 = swift_allocObject();
  v0[125] = v7;
  swift_defaultActor_initialize();
  v7[14] = v1;
  v7[15] = v2;
  v7[16] = v6;
  v8 = v0[115];
  v9 = v0[114];

  return MEMORY[0x2822009F8](sub_264A48414, v9, v8);
}

uint64_t sub_264A48414()
{
  v54 = v0;
  v49 = *(v0 + 1000);
  v1 = *(v0 + 992);
  v2 = *(v0 + 760);
  v50 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v52 = v2;
  *(v0 + 1008) = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityMessageProducer);
  v53 = 1;
  v5 = type metadata accessor for ControlMessageSession();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_retain_n();

  v10 = swift_unknownObjectRetain();
  v51 = sub_264A78D6C(v10, &v53, v8, ObjectType, v3);
  *(v0 + 1016) = v51;
  v11 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  *(v0 + 1024) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  v12 = *(v2 + v11);
  type metadata accessor for UHIDKitBackedControlEventConsumerVendor();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = v12;
  *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E88, &qword_264B495E0);
  v14 = swift_allocObject();
  *(v0 + 1040) = v14;
  v15 = *(v1 + 48);
  v16 = *(v1 + 52);
  swift_allocObject();
  v17 = v12;
  v18 = sub_264B409D4();
  v48 = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v18;
  sub_2649CB5C0(v50, v0 + 136);
  v19 = *(v0 + 160);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v19);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  (*(v21 + 16))(v23, v20, v19);
  v24 = *v23;
  v25 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  *(v0 + 200) = v25;
  *(v0 + 208) = &off_28765B720;
  *(v0 + 176) = v24;
  type metadata accessor for SpringBoardBackedSystemEventConsumerVendor();
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v25);
  v28 = *(v25 - 8);
  v29 = *(v28 + 64) + 15;
  v30 = swift_task_alloc();
  (*(v28 + 16))(v30, v27, v25);
  v31 = *v30;
  *(v0 + 240) = v25;
  *(v0 + 248) = &off_28765B720;
  *(v0 + 216) = v31;
  sub_2649D2AAC((v0 + 216), v26 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  *(v0 + 1048) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E90, &qword_264B495E8);
  v32 = swift_allocObject();
  *(v0 + 1056) = v32;
  v33 = *(v1 + 48);
  v34 = *(v1 + 52);
  swift_allocObject();
  v35 = sub_264B409D4();
  v47 = v32;
  *(v32 + 16) = v26;
  *(v32 + 24) = v35;
  v36 = *(v1 + 48);
  v37 = *(v1 + 52);
  swift_allocObject();
  v38 = sub_264B409D4();
  *(v0 + 1064) = v38;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v51;
  *(v40 + 24) = v38;
  v41 = *(v52 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_dragAndDropShieldWindowSceneContainer);
  *(v0 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E98, &unk_264B49600);
  v42 = swift_allocObject();
  *(v0 + 1080) = v42;
  v43 = *(v1 + 48);
  v44 = *(v1 + 52);
  swift_allocObject();

  v45 = sub_264B409D4();
  v42[6] = v41;
  v42[7] = v45;
  v42[2] = &unk_264B495F8;
  v42[3] = v40;
  v42[4] = sub_264A5482C;
  v42[5] = v39;
  *(v0 + 696) = v45;
  *(v0 + 1088) = sub_2649CB4C8(&unk_27FF89EA0, &qword_27FF89E80, &unk_264B51AB0);

  *(v0 + 688) = sub_264B40AB4();
  *(v0 + 1096) = *(v52 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubject);
  *(v0 + 1104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887B0, &qword_264B44018);
  *(v0 + 1112) = sub_2649CB4C8(&qword_27FF89EB0, &qword_27FF887B0, &qword_264B44018);
  *(v0 + 1120) = sub_2649CB4C8(&qword_27FF89EB8, &qword_27FF89E80, &unk_264B51AB0);
  sub_264B40B34();
  *(v0 + 1128) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubscriptions;
  swift_beginAccess();
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  *(v0 + 1144) = sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020);
  sub_264B40984();
  swift_endAccess();

  *(v0 + 680) = v38;
  *(v0 + 656) = sub_264B40AB4();
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  *(v0 + 624) = *(v48 + 24);
  *(v0 + 632) = sub_264B40AB4();
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  *(v0 + 640) = *(v47 + 24);
  *(v0 + 648) = sub_264B40AB4();
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_264A48C0C, v49, 0);
}

uint64_t sub_264A48C0C()
{
  v1 = v0[136];
  v2 = v0[124];
  v0[83] = *(v0[125] + 128);
  v0[144] = sub_264B40AB4();
  v3 = v0[115];
  v4 = v0[114];

  return MEMORY[0x2822009F8](sub_264A48C8C, v4, v3);
}

uint64_t sub_264A48C8C()
{
  v113 = (v0 + 376);
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1112);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1096);
  v8 = *(v0 + 1016);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 992);
  v11 = *(v0 + 760);
  *(v0 + 672) = *(v0 + 1152);
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  v12 = *(v10 + 48);
  v13 = *(v10 + 52);
  swift_allocObject();
  v14 = sub_264B409D4();
  *(v0 + 1160) = v14;
  v15 = sub_264A49BB0(v8, v14);
  if (v15)
  {
    v19 = v15;
    v98 = *(v0 + 1144);
    v112 = *(v0 + 1136);
    v107 = *(v0 + 1120);
    v109 = *(v0 + 1112);
    v101 = *(v0 + 1104);
    v104 = *(v0 + 1096);
    v20 = *(v0 + 1088);
    v21 = *(v0 + 992);
    v95 = *(v0 + 760);
    v96 = *(v0 + 1128);
    v22 = v16;
    v23 = v17;
    v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EF0, &qword_264B49618);
    v25 = swift_allocObject();
    v26 = *(v21 + 48);
    v27 = *(v21 + 52);
    swift_allocObject();
    v28 = sub_264B409D4();
    v25[5] = v24;
    v25[6] = v28;
    v25[2] = v19;
    v25[3] = v22;
    v25[4] = v23;
    *(v0 + 704) = v28;

    *(v0 + 712) = sub_264B40AB4();
    sub_264B40B34();
    swift_beginAccess();
    sub_264B40984();
    swift_endAccess();

    *(v0 + 720) = v14;
    *(v0 + 728) = sub_264B40AB4();
    sub_264B40B34();
    swift_beginAccess();
    sub_264B40984();
    swift_endAccess();
  }

  else
  {
    v25 = 0;
  }

  v29 = *(v0 + 1080);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1048);
  v33 = *(v0 + 1024);
  v34 = *(v0 + 760);
  *v113 = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0;
  *(v0 + 360) = v32;
  *(v0 + 368) = &off_281EDF320;
  *(v0 + 328) = &off_281EDF320;
  *(v0 + 336) = v31;
  *(v0 + 320) = v30;
  *(v0 + 296) = v29;
  v35 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_statusEventProxy);
  v108 = v35;
  v110 = *(v34 + v33);
  if (v25)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EF0, &qword_264B49618);
    v37 = &off_281EDF320;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
  }

  *(v0 + 1168) = v25;
  v38 = *(v0 + 1040);
  v39 = *(v0 + 1032);
  v105 = *(v0 + 1008);
  v91 = *(v0 + 928);
  v92 = *(v0 + 1016);
  v40 = *(v0 + 816);
  v41 = *(v0 + 808);
  v42 = *(v0 + 792);
  v43 = *(v0 + 784);
  v93 = *(v0 + 800);
  v94 = *(v0 + 776);
  *(v0 + 256) = v25;
  *(v0 + 280) = v36;
  *(v0 + 288) = v37;
  v44 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v97 = sub_264A54920(&unk_27FF89ED0, type metadata accessor for ProxyingClientStatusEventConsumer);
  v99 = sub_264A54920(&qword_27FF887A0, type metadata accessor for NotifyingPlaybackEventConsumer);
  *(v0 + 120) = v39;
  *(v0 + 128) = sub_264A54968();
  *(v0 + 96) = v38;
  v45 = type metadata accessor for PlaybackServer();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  *(v0 + 1176) = v48;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v49 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  *(v0 + 608) = 0;
  *(v0 + 616) = 1;
  v102 = v110;

  swift_retain_n();

  sub_264B40A44();
  (*(v41 + 32))(v48 + v49, v40, v93);
  v50 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  *(v0 + 617) = 0;
  sub_264B40A44();
  (*(v43 + 32))(v48 + v50, v42, v94);
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue) = MEMORY[0x277D84F90];
  v51 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *v52 = 0;
  v52[1] = 0;
  v53 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *v53 = 0;
  v53[1] = 0;
  v54 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *v54 = 0;
  v54[1] = 0;
  v55 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *v55 = 0;
  v55[1] = 0;
  v56 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v57 - 8) + 56))(v48 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v59 - 8) + 56))(v48 + v58, 1, 1, v59);
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription) = 0;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session) = v92;
  v60 = v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(v0 + 400))
  {
    sub_2649CB5C0(v113, v60);
  }

  else
  {
    v61 = *(v0 + 392);
    *v60 = *v113;
    *(v60 + 16) = v61;
    *(v60 + 32) = *(v0 + 408);
  }

  sub_2649CB5C0(v0 + 96, v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider);
  v62 = v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(v0 + 360))
  {
    sub_2649CB5C0(v0 + 336, v62);
  }

  else
  {
    v63 = *(v0 + 352);
    *v62 = *(v0 + 336);
    *(v62 + 16) = v63;
    *(v62 + 32) = *(v0 + 368);
  }

  v64 = (v0 + 296);
  v65 = v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(v0 + 320))
  {
    sub_2649CB5C0(v64, v65);
  }

  else
  {
    v66 = *(v0 + 312);
    *v65 = *v64;
    *(v65 + 16) = v66;
    *(v65 + 32) = *(v0 + 328);
  }

  v67 = *(v0 + 1000);
  v68 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  *v68 = v91;
  v68[1] = v97;
  v69 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  *v69 = v108;
  v69[1] = &off_287660260;
  *(v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_telemetry) = v110;
  v70 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  *v70 = v67;
  v70[1] = v99;
  v71 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  *v71 = v105;
  v71[1] = &off_287660260;
  v72 = v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (*(v0 + 280))
  {
    sub_2649CB5C0(v0 + 256, v72);
    v73 = *(v0 + 1000);
  }

  else
  {
    v74 = *(v0 + 272);
    *v72 = *(v0 + 256);
    *(v72 + 16) = v74;
    *(v72 + 32) = *(v0 + 288);
  }

  v111 = *(v0 + 1040);
  v106 = *(v0 + 1016);
  v75 = *(v0 + 1008);
  v100 = *(v0 + 928);
  v76 = *(v0 + 896);
  v77 = *(v0 + 768);
  v78 = (v48 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler);
  *v78 = sub_264A54918;
  v78[1] = v44;

  v103 = v102;

  sub_264B41254();
  v79 = sub_264B41274();
  (*(*(v79 - 8) + 56))(v77, 0, 1, v79);
  v80 = swift_allocObject();
  swift_weakInit();

  v81 = sub_264B41234();
  v82 = swift_allocObject();
  v83 = MEMORY[0x277D85700];
  v82[2] = v81;
  v82[3] = v83;
  v82[4] = v80;

  sub_264A10C20(0, 0, v77, &unk_264B49610, v82);

  if (*(v0 + 400))
  {
    __swift_destroy_boxed_opaque_existential_0(v113);
  }

  if (*(v0 + 280))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  }

  if (*(v0 + 320))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  }

  if (*(v0 + 360))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  }

  v84 = *(v0 + 896);
  v85 = *(v0 + 760);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v86 = *(v85 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer);
  *(v85 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer) = v48;

  *(v0 + 1184) = sub_264B41234();
  v87 = swift_task_alloc();
  *(v0 + 1192) = v87;
  *(v87 + 16) = v85;
  *(v87 + 24) = v48;
  v88 = *(MEMORY[0x277D85A40] + 4);
  v89 = swift_task_alloc();
  *(v0 + 1200) = v89;
  *v89 = v0;
  v89[1] = sub_264A49754;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264A49754()
{
  v2 = *v1;
  v3 = *(*v1 + 1200);
  v4 = *(*v1 + 1192);
  v5 = *(*v1 + 1184);
  v6 = *v1;
  *(*v1 + 1208) = v0;

  v7 = *(v2 + 920);
  v8 = *(v2 + 912);
  if (v0)
  {
    v9 = sub_264A49A50;
  }

  else
  {
    v9 = sub_264A498D0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_264A498D0()
{
  v1 = v0[113];
  v2 = v0[95];

  v3 = v0[145];
  v4 = v0[133];
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription))
  {

    sub_264B40994();
  }

  v5 = v0[146];
  v6 = v0[135];
  v7 = v0[132];
  v8 = v0[130];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[125];
  v12 = v0[116];
  v13 = v0[111];
  v14 = v0[108];
  v17 = v0[147];
  v18 = v0[105];
  v19 = v0[102];
  v20 = v0[99];
  v21 = v0[96];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264A49A50()
{
  v1 = v0[147];
  v2 = v0[146];
  v3 = v0[145];
  v4 = v0[135];
  v5 = v0[133];
  v6 = v0[127];
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[116];
  v10 = v0[113];
  v14 = v0[132];
  v15 = v0[111];
  v16 = v0[130];
  v17 = v0[108];
  v18 = v0[105];
  v19 = v0[102];
  v20 = v0[99];
  v21 = v0[96];

  v11 = v0[1];
  v12 = v0[151];

  return v11();
}

void *sub_264A49BB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives + 24);
  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives), v5);
  v13 = 0;
  if ((*(v6 + 8))(&v13, v5, v6))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    return &unk_264B49628;
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AEB8);
    v10 = sub_264B40944();
    v11 = sub_264B414B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "RemoteTextInput feature is not enabled, skipping RTI setup", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_264A49D7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - v4;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE70);
  v7 = a1;
  v8 = sub_264B40944();
  v9 = sub_264B41494();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[1] = a1;
    v20 = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v13 = sub_264B41064();
    v15 = sub_2649CC004(v13, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v8, v9, "PlaybackServer interrupted with fatal error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = 12;
  v21 = 0x80;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_264A380B0(&v20, v5);

  return sub_2649D04D4(v5, &unk_27FF899E0, &qword_264B53440);
}

uint64_t sub_264A49FD8(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v13, v7, v3);
  sub_2649CB4C8(&qword_27FF89B38, &unk_27FF89F00, &unk_264B48E00);
  v15 = sub_264B40B54();

  (*(v9 + 8))(v12, v8);
  v16 = *(v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription);
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription) = v15;
}

void sub_264A4A264(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_2649C6000, v3, v4, "Playback server isActive: %{BOOL,public}d", v5, 8u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
    sub_264B411E4();
  }
}

uint64_t sub_264A4A37C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (*(Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24) && (*(v2 + 56) & 1) == 0)
  {
    v3 = *(v2 + 48) & 1;
  }

  else
  {
    v3 = 0;
  }

  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEA0);
  v5 = sub_264B40944();
  v6 = sub_264B414B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    if (v3)
    {
      v9 = 7562617;
    }

    else
    {
      v9 = 28526;
    }

    if (v3)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = sub_2649CC004(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v5, v6, "Client supports drag and drop: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  return v3;
}

uint64_t sub_264A4A540(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = *a3;
  *(v3 + 48) = 0;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_264A4A618;

  return sub_264A75684(a1, (v3 + 48));
}

uint64_t sub_264A4A618()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_264A558E0;
  }

  else
  {
    v3 = sub_264A558E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A4A72C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (*(Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24) && (*(v2 + 56) & 1) == 0)
  {
    v3 = (*(v2 + 48) >> 2) & 1;
  }

  else
  {
    v3 = 0;
  }

  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEA0);
  v5 = sub_264B40944();
  v6 = sub_264B414B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    if (v3)
    {
      v9 = 7562617;
    }

    else
    {
      v9 = 28526;
    }

    if (v3)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = sub_2649CC004(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v5, v6, "doesClientSupportRemoteTextInput: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  return v3;
}

uint64_t sub_264A4A8F0(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = *a3;
  *(v3 + 48) = 0;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_264A4A9C8;

  return sub_264A75684(a1, (v3 + 48));
}

uint64_t sub_264A4A9C8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_264A4AB78;
  }

  else
  {
    v3 = sub_264A4AADC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A4AADC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2649CB4C8(&qword_27FF89EB8, &qword_27FF89E80, &unk_264B51AB0);
  sub_264B40A34();
  v3 = v0[1];

  return v3();
}

void sub_264A4AB90(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  if ((*&v1[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v6 = *(*&v1[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityMessageProducer] + 16);
    v21 = &type metadata for AccessibilityMessage;
    v22 = &off_28765A468;
    v19 = v4;
    v20 = v3;
    sub_264A5448C(v4, v3);
    sub_264B409C4();
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  else
  {
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FF8AE58);
    sub_264A5448C(v4, v3);
    v8 = v1;
    oslog = sub_264B40944();
    v9 = sub_264B41484();
    sub_2649E7004(v4, v3);

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315394;
      v19 = v4;
      v20 = v3;
      sub_264A5448C(v4, v3);
      v12 = sub_264B41064();
      v14 = sub_2649CC004(v12, v13, &v23);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      sub_264A32420(*&v2[v5]);
      v15 = sub_264B41064();
      v17 = sub_2649CC004(v15, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_2649C6000, oslog, v9, "Cannot send accessibility message: %s, invalid state: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v11, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_264A4AE00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = v1;
    v6 = v2;
    sub_2649DEF18(v1, v2);
    sub_264A4AB90(&v5);

    return sub_2649E7004(v5, v6);
  }

  return result;
}

uint64_t sub_264A4AE80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v24 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = sub_264B41274();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  sub_264B41244();

  v16 = a3;
  v17 = sub_264B41234();
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  (*(v7 + 32))(v20 + v18, v10, v24);
  *(v20 + v19) = a2;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_264A10C20(0, 0, v14, &unk_264B49638, v20);
}

uint64_t sub_264A4B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[134] = a6;
  v6[133] = a5;
  v6[132] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F10, &qword_264B49640);
  v6[135] = v7;
  v8 = *(v7 - 8);
  v6[136] = v8;
  v9 = *(v8 + 64) + 15;
  v6[137] = swift_task_alloc();
  v6[138] = sub_264B41244();
  v6[139] = sub_264B41234();
  v11 = sub_264B411C4();
  v6[140] = v11;
  v6[141] = v10;

  return MEMORY[0x2822009F8](sub_264A4B1D4, v11, v10);
}

uint64_t sub_264A4B1D4()
{
  v1 = v0[132];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  v0[142] = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventStream;
  v2 = v0[141];
  v3 = v0[140];

  return MEMORY[0x2822009F8](sub_264A4B264, v3, v2);
}

uint64_t sub_264A4B264()
{
  v1 = v0[142];
  v2 = v0[137];
  v3 = v0[133];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E68, &qword_264B4E4E0);
  sub_264B412C4();
  v4 = v0[138];
  v5 = sub_264B41234();
  v0[143] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[144] = v7;
  *v7 = v0;
  v7[1] = sub_264A4B354;
  v8 = v0[137];
  v9 = v0[135];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v5, v10, v9);
}

uint64_t sub_264A4B354()
{
  v1 = *v0;
  v2 = *(*v0 + 1152);
  v3 = *(*v0 + 1144);
  v7 = *v0;

  v4 = *(v1 + 1128);
  v5 = *(v1 + 1120);

  return MEMORY[0x2822009F8](sub_264A4B498, v5, v4);
}

uint64_t sub_264A4B498()
{
  v56 = v0;
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = *(v0 + 168);
  *(v0 + 48) = *(v0 + 152);
  *(v0 + 64) = v2;
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  v4 = *(v0 + 216);
  *(v0 + 112) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 72);
  if (v5 >> 2 == 0xFFFFFFFF && v6 < 2)
  {
    v7 = *(v0 + 1112);
    (*(*(v0 + 1088) + 8))(*(v0 + 1096), *(v0 + 1080));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v44 = *(v0 + 104);
    v45 = *(v0 + 96);
    v46 = *(v0 + 88);
    v47 = *(v0 + 80);
    v48 = *(v0 + 64);
    v49 = *(v0 + 56);
    v50 = *(v0 + 48);
    v51 = *(v0 + 40);
    v52 = *(v0 + 32);
    v53 = *(v0 + 16);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FF8AE70);
    v11 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v11;
    *(v0 + 320) = *(v0 + 112);
    v12 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v12;
    v13 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v13;
    sub_264A54F24(v0 + 224, v0 + 328);
    v14 = sub_264B40944();
    v15 = sub_264B41484();
    sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
    v43 = v4;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v55 = v17;
      *v16 = 136446210;
      *(v0 + 848) = v53;
      *(v0 + 856) = v5;
      *(v0 + 864) = v52;
      *(v0 + 872) = v51;
      *(v0 + 880) = v50;
      *(v0 + 888) = v49;
      *(v0 + 896) = v48;
      *(v0 + 904) = v6;
      *(v0 + 912) = v47;
      *(v0 + 920) = v46;
      *(v0 + 928) = v45;
      *(v0 + 936) = v44;
      *(v0 + 944) = v4;
      v18 = *(v0 + 32);
      *(v0 + 744) = *(v0 + 16);
      *(v0 + 760) = v18;
      v19 = *(v0 + 48);
      v20 = *(v0 + 64);
      v21 = *(v0 + 80);
      v22 = *(v0 + 96);
      *(v0 + 840) = *(v0 + 112);
      *(v0 + 808) = v21;
      *(v0 + 824) = v22;
      *(v0 + 776) = v19;
      *(v0 + 792) = v20;
      sub_264A54F24(v0 + 744, v0 + 952);
      v23 = sub_264B41064();
      v25 = sub_2649CC004(v23, v24, &v55);

      *(v16 + 4) = v25;
      _os_log_impl(&dword_2649C6000, v14, v15, "Received client status event: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    if (v6 >> 62)
    {
      if (v6 >> 62 == 1)
      {
        v26 = *(v0 + 1072);
        v54 = v53;
        sub_264A4BC08(&v54);
      }

      else
      {
        v33 = sub_264B40944();
        v34 = sub_264B41494();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_2649C6000, v33, v34, "Received unknown client status event, ignoring", v35, 2u);
          MEMORY[0x266749940](v35, -1, -1);

          sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
        }

        else
        {
        }
      }
    }

    else
    {
      v27 = *(v0 + 1072);
      *(v0 + 536) = v53;
      *(v0 + 544) = v5;
      *(v0 + 552) = v52;
      *(v0 + 560) = v51;
      *(v0 + 568) = v50;
      *(v0 + 576) = v49;
      *(v0 + 584) = v48;
      *(v0 + 592) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *(v0 + 600) = v47;
      *(v0 + 608) = v46;
      *(v0 + 616) = v45;
      *(v0 + 624) = v44;
      *(v0 + 632) = v43;
      v28 = *(v0 + 32);
      *(v0 + 432) = *(v0 + 16);
      *(v0 + 448) = v28;
      v29 = *(v0 + 48);
      v30 = *(v0 + 64);
      v31 = *(v0 + 80);
      v32 = *(v0 + 96);
      *(v0 + 528) = *(v0 + 112);
      *(v0 + 496) = v31;
      *(v0 + 512) = v32;
      *(v0 + 464) = v29;
      *(v0 + 480) = v30;
      sub_264A54F24(v0 + 432, v0 + 640);
      sub_264A4B998((v0 + 536));
      sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
      sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
    }

    v36 = *(v0 + 1104);
    v37 = sub_264B41234();
    *(v0 + 1144) = v37;
    v38 = *(MEMORY[0x277D85798] + 4);
    v39 = swift_task_alloc();
    *(v0 + 1152) = v39;
    *v39 = v0;
    v39[1] = sub_264A4B354;
    v40 = *(v0 + 1096);
    v41 = *(v0 + 1080);
    v42 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 120, v37, v42, v41);
  }
}

void sub_264A4B998(__int128 *a1)
{
  v2 = a1[5];
  v27 = a1[4];
  v28 = v2;
  v29 = *(a1 + 12);
  v3 = a1[1];
  v23 = *a1;
  v24 = v3;
  v4 = a1[3];
  v25 = a1[2];
  v26 = v4;
  v5 = v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24))
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    oslog = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v7, "We already have a client configuration, we shouldn't be getting another. Ignoring.", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE70);
    v10 = sub_264B40944();
    v11 = sub_264B414B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "7. Received client startup configuration", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v13 = *(v5 + 80);
    v21[4] = *(v5 + 64);
    v21[5] = v13;
    v22 = *(v5 + 96);
    v14 = *(v5 + 16);
    v21[0] = *v5;
    v21[1] = v14;
    v15 = *(v5 + 48);
    v21[2] = *(v5 + 32);
    v21[3] = v15;
    v16 = v24;
    *v5 = v23;
    *(v5 + 16) = v16;
    *(v5 + 96) = v29;
    v17 = v28;
    *(v5 + 64) = v27;
    *(v5 + 80) = v17;
    v18 = v26;
    *(v5 + 32) = v25;
    *(v5 + 48) = v18;
    sub_264A189F8(&v23, v20);
    sub_2649D04D4(v21, &qword_27FF89DC8, &unk_264B494D0);
    sub_264A4BF04();
  }
}

void sub_264A4BC08(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
  swift_beginAccess();
  sub_2649D046C(v1 + v3, &v22, &qword_27FF89DA8, &qword_264B49498);
  if (v23)
  {
    sub_2649D2AAC(&v22, v24);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE70);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v22 = v8;
      *v7 = 136446210;
      v9 = sub_264B41064();
      v11 = sub_2649CC004(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v5, v6, "Window capture event of type %{public}s received, notifying SceneInteractor", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v12 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    LOBYTE(v22) = v2;
    v13 = *v12;
    sub_264A7FAA8(&v22);
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    sub_2649D04D4(&v22, &qword_27FF89DA8, &qword_264B49498);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FF8AE70);
    v15 = sub_264B40944();
    v16 = sub_264B41494();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136446210;
      LOBYTE(v22) = v2;
      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v15, v16, "Window capture event of type %{public}s arrived before SceneInteractor exists, ignoring", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }
  }
}

uint64_t sub_264A4BF04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v74 - v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F20, &qword_264B49650);
  v87 = *(v88 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F28, &qword_264B49658);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v7);
  v86 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F30, &qword_264B49660);
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F38, &qword_264B49668);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v94 = v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F40, &qword_264B49670);
  v83 = *(v21 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F48, &qword_264B49678);
  v84 = *(v25 - 8);
  v26 = *(v84 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v74 - v27;
  v29 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
  swift_beginAccess();
  sub_2649D046C(v0 + v29, &v96, &qword_27FF89DA8, &qword_264B49498);
  if (v97)
  {
    sub_2649D2AAC(&v96, &v98);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v74[0] = v25;
    v77 = v0;
    v80 = v17;
    v81 = v14;
    v82 = v13;
    v30 = sub_264B40964();
    v79 = __swift_project_value_buffer(v30, qword_27FF8AE70);
    v31 = sub_264B40944();
    v32 = sub_264B414B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2649C6000, v31, v32, "7.5. Monitoring SceneInteractor status changes", v33, 2u);
      MEMORY[0x266749940](v33, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(&v98, v100);
    v34 = off_28765B730;
    v35 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
    *&v96 = v34(v35, &off_28765B720);
    v36 = sub_2649CB2F0();
    v37 = sub_264B41554();
    v95 = v37;
    v38 = sub_264B41514();
    v39 = *(v38 - 8);
    v40 = *(v39 + 56);
    v41 = v94;
    v76 = v38;
    v75 = v40;
    v74[2] = v39 + 56;
    (v40)(v94, 1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F50, &qword_264B49680);
    sub_2649CB4C8(&qword_27FF89F58, &qword_27FF89F50, &qword_264B49680);
    v42 = sub_264A54920(&qword_27FF887B8, sub_2649CB2F0);
    v78 = v36;
    v74[1] = v42;
    sub_264B40B14();
    sub_2649D04D4(v41, &qword_27FF89DE0, &qword_264B4BC00);

    sub_2649CB4C8(&qword_27FF89F60, &qword_27FF89F40, &qword_264B49670);
    sub_264B40AE4();
    (*(v83 + 8))(v24, v21);
    v43 = swift_allocObject();
    v44 = v77;
    swift_unknownObjectUnownedInit();
    sub_2649CB5C0(&v98, &v96);
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    sub_2649D2AAC(&v96, v45 + 24);
    sub_2649CB4C8(&qword_27FF89F68, &qword_27FF89F48, &qword_264B49678);
    v46 = v74[0];
    sub_264B40B54();

    (*(v84 + 8))(v28, v46);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
    sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020);
    sub_264B40984();
    swift_endAccess();

    v47 = sub_264B40944();
    v48 = sub_264B41484();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2649C6000, v47, v48, "7.75. Monitoring bring up sensor observers", v49, 2u);
      MEMORY[0x266749940](v49, -1, -1);
    }

    v50 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives + 24);
    v51 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives + 32);
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives), v50);
    *&v96 = (*(v51 + 8))(v50, v51);
    v52 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 24);
    v53 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 32);
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives), v52);
    v95 = (*(v53 + 8))(v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F70, &qword_264B49688);
    sub_2649CB4C8(&qword_27FF89F78, &qword_27FF89F70, &qword_264B49688);
    v54 = v85;
    sub_264B40AD4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
    sub_2649CB4C8(&qword_27FF89F80, &qword_27FF89F20, &qword_264B49650);
    v55 = v86;
    v56 = v88;
    sub_264B40AC4();
    (*(v87 + 8))(v54, v56);
    sub_2649CB4C8(&qword_27FF89F88, &qword_27FF89F28, &qword_264B49658);
    v57 = v90;
    v58 = v91;
    sub_264B40AE4();
    (*(v89 + 8))(v55, v57);
    v59 = sub_264B41554();
    *&v96 = v59;
    v60 = v94;
    v75(v94, 1, 1, v76);
    sub_2649CB4C8(&qword_27FF89F90, &qword_27FF89F30, &qword_264B49660);
    v61 = v80;
    v62 = v93;
    sub_264B40B14();
    sub_2649D04D4(v60, &qword_27FF89DE0, &qword_264B4BC00);

    (*(v92 + 8))(v58, v62);
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_2649CB4C8(&qword_27FF89F98, &qword_27FF89F38, &qword_264B49668);
    v63 = v82;
    v64 = sub_264B40B54();

    (*(v81 + 8))(v61, v63);
    v65 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription);
    *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription) = v64;

    v66 = sub_264B40944();
    v67 = sub_264B414B4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2649C6000, v66, v67, "8. Activating the scene interactor, steps are not necessarily monotonic from here forward", v68, 2u);
      MEMORY[0x266749940](v68, -1, -1);
    }

    v69 = __swift_project_boxed_opaque_existential_1(&v98, v100);
    v70 = *v69;
    v71 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session;
    [*(*v69 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) activate];
    [*(v70 + v71) staging_adoptedMacDrivenScreenCaptureNotifications];
    return __swift_destroy_boxed_opaque_existential_0(&v98);
  }

  else
  {
    sub_2649D04D4(&v96, &qword_27FF89DA8, &qword_264B49498);
    v98 = 8;
    v99 = 0x80;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v73 - 8) + 56))(v4, 1, 1, v73);
    sub_264A380B0(&v98, v4);
    return sub_2649D04D4(v4, &unk_27FF899E0, &qword_264B53440);
  }
}

uint64_t _s16ScreenSharingKit19SceneInteractorStepO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_2649E127C(*a2, 0);
      sub_2649E127C(v2, 0);
      v6 = sub_264B0EF58(v2, v4);
      sub_2649E12C0(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_2649E127C(*a2, 1u);
      sub_2649E127C(v2, 1u);
      LOBYTE(v6) = sub_264B0EF58(v2, v4);
      sub_2649E12C0(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_19:
      sub_2649E12C0(v7, v8);
      return v6 & 1;
    }

    goto LABEL_6;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 2 || v4 != 3)
      {
        goto LABEL_6;
      }

      sub_2649E12C0(3, 2u);
      v9 = 3;
    }

    else if (v2 == 4)
    {
      if (v5 != 2 || v4 != 4)
      {
        goto LABEL_6;
      }

      sub_2649E12C0(4, 2u);
      v9 = 4;
    }

    else
    {
      if (v5 != 2 || v4 != 5)
      {
        goto LABEL_6;
      }

      sub_2649E12C0(5, 2u);
      v9 = 5;
    }

    goto LABEL_32;
  }

  if (!v2)
  {
    if (v5 != 2 || v4)
    {
      goto LABEL_6;
    }

    sub_2649E12C0(0, 2u);
    v9 = 0;
    goto LABEL_32;
  }

  if (v2 != 1)
  {
    if (v5 != 2 || v4 != 2)
    {
      goto LABEL_6;
    }

    sub_2649E12C0(2, 2u);
    v9 = 2;
LABEL_32:
    sub_2649E12C0(v9, 2u);
    return 1;
  }

  if (v5 == 2 && v4 == 1)
  {
    sub_2649E12C0(1, 2u);
    sub_2649E12C0(1, 2u);
    return v4;
  }

LABEL_6:
  sub_2649E127C(*a2, *(a2 + 8));
  sub_2649E127C(v2, v3);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return 0;
}

void sub_264A4CF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_264A53554(v4, v5, *v6, Strong);
}

uint64_t sub_264A4CFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = sub_264AB54B4(v5, v3);
  *a2 = result;
  return result;
}

void sub_264A4D010(uint64_t *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_264A4D068(v1);
}

void sub_264A4D068(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2649CB2F0();
  *v8 = sub_264B41554();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = sub_264B40F34();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    swift_once();
LABEL_43:
    v57 = sub_264B40964();
    __swift_project_value_buffer(v57, qword_27FF8AE70);
    v49 = sub_264B40944();
    v58 = sub_264B414B4();
    if (os_log_type_enabled(v49, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2649C6000, v49, v58, "In use device sensors changed, but we're too far along. Ignore and let the alert catch it.", v59, 2u);
      MEMORY[0x266749940](v59, -1, -1);
    }

LABEL_45:

    __swift_destroy_boxed_opaque_existential_0(v63);
    return;
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
  swift_beginAccess();
  sub_2649D046C(v2 + v10, &v61, &qword_27FF89DA8, &qword_264B49498);
  if (v62)
  {
    sub_2649D2AAC(&v61, v63);
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v11 = off_28765B728[0];
    type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
    v11();
    v12 = v61;
    if (BYTE8(v61))
    {
      if (BYTE8(v61) == 1)
      {
        v13 = 1;
        goto LABEL_42;
      }

      if (v61 > 2)
      {
        if (v61 != 3 && v61 != 4)
        {
          v12 = 5;
        }

        goto LABEL_41;
      }

      if (v61)
      {
        if (v61 != 1)
        {
          v12 = 2;
        }

LABEL_41:
        v13 = 2;
LABEL_42:
        sub_2649E12C0(v12, v13);
        sub_2649E12C0(1, 2u);
        if (qword_27FF88408 == -1)
        {
          goto LABEL_43;
        }

        goto LABEL_50;
      }

      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    sub_2649E12C0(v61, v18);
    sub_2649E12C0(1, 2u);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v19 = sub_264B40964();
    v20 = __swift_project_value_buffer(v19, qword_27FF8AE70);

    v21 = sub_264B40944();
    v22 = sub_264B41484();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v61 = v24;
      *v23 = 136315138;
      sub_2649E5670();
      v25 = sub_264B41424();
      v27 = sub_2649CC004(v25, v26, &v61);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2649C6000, v21, v22, "In use device sensors changed, updating sceneInteractor: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    v28 = sub_264A54FD4();
    v29 = MEMORY[0x266748730](2, &type metadata for SceneInteractorBlockedReasons, v28);
    v30 = sub_264AABDA8(0, a1);
    v60[0] = v28;
    v60[1] = v20;
    if (v30)
    {
      v31 = *(v29 + 40);
      sub_264B41B84();
      sub_264B41084();
      v32 = sub_264B41BB4();
      v33 = -1 << *(v29 + 32);
      v34 = v32 & ~v33;
      if ((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = *(*(v29 + 48) + v34);
          if (v36 >= 4)
          {
            break;
          }

          v37 = sub_264B41AA4();

          if (v37)
          {
            goto LABEL_23;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61 = v29;
        sub_264A14944(4, v34, isUniquelyReferenced_nonNull_native);
        v29 = v61;
      }
    }

LABEL_23:
    if (sub_264AABDA8(1, a1))
    {
      v39 = *(v29 + 40);
      sub_264B41B84();
      sub_264B41084();
      v40 = sub_264B41BB4();
      v41 = -1 << *(v29 + 32);
      v42 = v40 & ~v41;
      if ((*(v29 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = *(*(v29 + 48) + v42);
          if (v44 > 2 && v44 != 4)
          {
            break;
          }

          v45 = sub_264B41AA4();

          if (v45)
          {
            goto LABEL_31;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v29 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v61 = v29;
        sub_264A14944(3, v42, v46);
      }
    }

LABEL_31:
    v47 = *__swift_project_boxed_opaque_existential_1(v63, v64);

    sub_264A7E734(v48);

    v49 = sub_264B40944();
    v50 = sub_264B41484();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v61 = v52;
      *v51 = 136446210;

      v53 = sub_264B41424();
      v55 = v54;

      v56 = sub_2649CC004(v53, v55, &v61);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_2649C6000, v49, v50, "Device sensors currently in use updated to %{public}s on sceneInteractor", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x266749940](v52, -1, -1);
      MEMORY[0x266749940](v51, -1, -1);
    }

    goto LABEL_45;
  }

  sub_2649D04D4(&v61, &qword_27FF89DA8, &qword_264B49498);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FF8AE70);
  v15 = sub_264B40944();
  v16 = sub_264B41484();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "SceneInteractor is unavailable to receive sensor status update, ignoring change", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }
}

uint64_t sub_264A4D998(uint64_t a1)
{
  v2 = sub_264B40F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2649CB2F0();
  *v6 = sub_264B41554();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = sub_264B40F34();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FF88408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_264B40964();
  __swift_project_value_buffer(v8, qword_27FF8AE70);

  v9 = sub_264B40944();
  v10 = sub_264B41484();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v19[0] = v12;
    *v11 = 136315138;
    sub_2649E5670();
    v13 = sub_264B41424();
    v15 = sub_2649CC004(v13, v14, v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v9, v10, "Device sensors current in use updated to %s, notifying client", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  *&v17[0] = a1;
  v18[24] = 96;

  sub_264A40100(v17);
  v19[0] = v17[0];
  v19[1] = v17[1];
  v20[0] = *v18;
  *(v20 + 9) = *&v18[9];
  return sub_264A52520(v19);
}

uint64_t sub_264A4DC28(uint64_t a1)
{
  v2 = type metadata accessor for HIDMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_264AAFCD0(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_264A55188(v9, v6, type metadata accessor for HIDMessage);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_264AAFCD0((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_28765E6C8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_264A55188(v6, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
      *(v8 + 16) = v12 + 1;
      sub_2649D2AAC(&v15, v8 + 40 * v12 + 32);
      sub_264A551F0(v6, type metadata accessor for HIDMessage);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_264A4DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = sub_264B41244();
  v6[8] = sub_264B41234();
  v10 = sub_264B411C4();
  v6[9] = v10;
  v6[10] = v9;

  return MEMORY[0x2822009F8](sub_264A4DF08, v10, v9);
}

uint64_t sub_264A4DF08()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 88) = __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Moving PlaybackServer to .control", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  return MEMORY[0x2822009F8](sub_264A4E028, 0, 0);
}

uint64_t sub_264A4E028()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = sub_264B41274();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = sub_264B41234();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v3;
  *(v6 + 40) = 1;
  *(v6 + 48) = 1;
  v8 = sub_2649CD944(0, 0, v1, &unk_264B496B8, v6);
  v0[12] = v8;
  v9 = *(MEMORY[0x277D857C8] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  *v10 = v0;
  v10[1] = sub_264A4E1A8;
  v12 = MEMORY[0x277D84950];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v11, v8, v13, v11, v12);
}

uint64_t sub_264A4E1A8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_264A4E4BC;
  }

  else
  {
    v3 = sub_264A4E2BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A4E2BC()
{
  v1 = v0[12];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_264A4E320, v2, v3);
}

uint64_t sub_264A4E320()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "PlaybackServer changed to .control, notifying SceneInteractor", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = v0[3];

  v7 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v8 = *v7;
  if ((*(*v7 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_hasNotifiedSpringBoardOfConfiguredHIDServices) & 1) == 0)
  {
    *(v8 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_hasNotifiedSpringBoardOfConfiguredHIDServices) = 1;
    [*(v8 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) noteHIDServicesConfigured];
  }

  v9 = v0[11];
  v10 = sub_264B40944();
  v11 = sub_264B414B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Notified SceneInteractor that HID services are configured.", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }

  v14 = v0[5];
  v13 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264A4E4BC()
{
  v1 = v0[12];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_264A4E520, v2, v3);
}

uint64_t sub_264A4E520()
{
  v22 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2649C6000, v5, v6, "Failed to move PlaybackServer to .control, tearing down: %{public}@", v8, 0xCu);
    sub_2649D04D4(v9, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[4];
  v14 = v0[5];

  v20 = 13;
  v21 = 0x80;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_264A380B0(&v20, v14);

  sub_2649D04D4(v14, &unk_27FF899E0, &qword_264B53440);
  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_264A4E718()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_264B40104();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_264B41244();
  v1[12] = sub_264B41234();
  v7 = sub_264B411C4();
  v1[13] = v7;
  v1[14] = v6;

  return MEMORY[0x2822009F8](sub_264A4E85C, v7, v6);
}

uint64_t sub_264A4E85C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration + 8);
  v0[15] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_264A4EA40, v1, 0);
  }

  else
  {
    v2 = v0[12];
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[7];

    (*(v4 + 56))(v5, 1, 1, v3);
    sub_2649D04D4(v0[7], &unk_27FF8BFC0, &qword_264B47140);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    v7 = sub_264B40944();
    v8 = sub_264B41494();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Cannot start session because transport session lacks device ID", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[6];
    v12 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_264A4EA40()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  if (v1)
  {
    v2 = [v1 destinationDevice];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 identifier];

      v5 = v0[15];
      if (v4)
      {
        v6 = v0[7];
        sub_264B41044();

        sub_264B40094();
        swift_bridgeObjectRelease_n();
        goto LABEL_7;
      }
    }

    else
    {
      v7 = v0[15];
    }
  }

  (*(v0[9] + 56))(v0[7], 1, 1, v0[8]);
LABEL_7:

  v8 = v0[13];
  v9 = v0[14];

  return MEMORY[0x2822009F8](sub_264A4EB70, v8, v9);
}

uint64_t sub_264A4EB70()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];

    sub_2649D04D4(v0[7], &unk_27FF8BFC0, &qword_264B47140);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AE70);
    v6 = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Cannot start session because transport session lacks device ID", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[6];
    v11 = v0[7];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    (*(v2 + 32))(v0[11], v3, v1);
    v16 = *__swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker), *(v15 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker + 24));
    v17 = *(MEMORY[0x277D4B7E8] + 4);
    v20 = (*MEMORY[0x277D4B7E8] + MEMORY[0x277D4B7E8]);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_264A4EDBC;
    v19 = v0[11];

    return v20(v19);
  }
}

uint64_t sub_264A4EDBC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_264A4F208;
  }

  else
  {
    v7 = sub_264A4EEF8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264A4EEF8()
{
  v36 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  v7 = *(v4 + 16);
  v7(v5, v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  v8 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  swift_beginAccess();
  sub_2649FECCC(v5, v6 + v8, &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[8];
  v12 = sub_264B40964();
  __swift_project_value_buffer(v12, qword_27FF8AE70);
  v7(v9, v10, v11);
  v13 = sub_264B40944();
  v14 = sub_264B414B4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[10];
  v17 = v0[11];
  v19 = v0[8];
  v18 = v0[9];
  if (v15)
  {
    v34 = v0[11];
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v20 = 136315138;
    sub_264A54920(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v21 = sub_264B41A64();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v16, v19);
    v25 = sub_2649CC004(v21, v23, &v35);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2649C6000, v13, v14, "Started session for device: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x266749940](v33, -1, -1);
    MEMORY[0x266749940](v20, -1, -1);

    v24(v34, v19);
  }

  else
  {

    v26 = *(v18 + 8);
    v26(v16, v19);
    v26(v17, v19);
  }

  v28 = v0[10];
  v27 = v0[11];
  v30 = v0[6];
  v29 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_264A4F208()
{
  v1 = v0[12];

  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FF8AE70);
  v4 = v2;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2649C6000, v5, v6, "Unable to record start of session: %{public}@", v12, 0xCu);
    sub_2649D04D4(v13, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v9, v10);
  v17 = v0[10];
  v16 = v0[11];
  v19 = v0[6];
  v18 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_264A4F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = a5;
  return MEMORY[0x2822009F8](sub_264A4F420, 0, 0);
}

uint64_t sub_264A4F420()
{
  v1 = *(v0 + 168);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = *(v0 + 8);

    return v4();
  }

  v3 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  v6 = off_28765B770;
  v7 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v10 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_264A4F5D0;

  return (v10)(v7, &off_28765B720);
}

uint64_t sub_264A4F5D0()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A4F6CC, 0, 0);
}

uint64_t sub_264A4F6CC()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AE70);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2649C6000, v4, v5, "Local rendering is now active, notifying client", v6, 2u);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v0 + 16) = 4;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = -96;
    *(v0 + 200) = sub_264B41244();
    *(v0 + 208) = sub_264B41234();
    v8 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A4F884, v8, v7);
  }
}

uint64_t sub_264A4F884()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);

  sub_264A40100((v0 + 16));

  return MEMORY[0x2822009F8](sub_264A4F8F8, 0, 0);
}

uint64_t sub_264A4F8F8()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_264A4F9C8;
    v4 = *(v0 + 184);

    return sub_264A4E718();
  }
}

uint64_t sub_264A4F9C8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A4FAC4, 0, 0);
}

uint64_t sub_264A4FAC4()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 200);
    *(v0 + 224) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
    *(v0 + 232) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A4FB9C, v5, v4);
  }
}

uint64_t sub_264A4FB9C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[23];

  swift_beginAccess();
  if (*(v3 + v2 + 24))
  {
    sub_2649CB5C0(v0[23] + v0[28], (v0 + 10));
    v4 = sub_264A4FD18;
  }

  else
  {
    v4 = sub_264A4FC4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264A4FC4C()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 200);
    *(v0 + 248) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A5000C, v5, v4);
  }
}

uint64_t sub_264A4FD18()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  v3 = *(v2 + 8);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_264A4FE3C;

  return v7(v1, v2);
}

uint64_t sub_264A4FE3C()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A4FF38, 0, 0);
}

uint64_t sub_264A4FF38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 200);
    *(v0 + 248) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A5000C, v5, v4);
  }
}

uint64_t sub_264A5000C()
{
  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[23];

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_264A53F38(*v4, v3);

  return MEMORY[0x2822009F8](sub_264A50090, 0, 0);
}

uint64_t sub_264A50090()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 200);
    *(v0 + 256) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A5015C, v5, v4);
  }
}

uint64_t sub_264A5015C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 184);

  sub_264A50368();

  return MEMORY[0x2822009F8](sub_264A501CC, 0, 0);
}

uint64_t sub_264A501CC()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 200);
    *(v0 + 264) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A50298, v5, v4);
  }
}

uint64_t sub_264A50298()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);

  sub_264A509E4();

  return MEMORY[0x2822009F8](sub_264A50308, 0, 0);
}

uint64_t sub_264A50308()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A50368()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F20, &qword_264B49650);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F28, &qword_264B49658);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F30, &qword_264B49660);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F38, &qword_264B49668);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v41 = &v38 - v22;
  v42 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives + 24);
  v23 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives), v24);
  v49 = (*(v23 + 8))(v24, v23);
  v25 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 24);
  v26 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives), v25);
  v48 = (*(v26 + 8))(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F70, &qword_264B49688);
  sub_2649CB4C8(&qword_27FF89F78, &qword_27FF89F70, &qword_264B49688);
  sub_264B40AD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  sub_2649CB4C8(&qword_27FF89F80, &qword_27FF89F20, &qword_264B49650);
  sub_264B40AC4();
  (*(v5 + 8))(v8, v4);
  sub_2649CB4C8(&qword_27FF89F88, &qword_27FF89F28, &qword_264B49658);
  v27 = v39;
  sub_264B40AE4();
  (*(v40 + 8))(v13, v27);
  sub_2649CB2F0();
  v28 = sub_264B41554();
  v49 = v28;
  v29 = sub_264B41514();
  v30 = v45;
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
  sub_2649CB4C8(&qword_27FF89F90, &qword_27FF89F30, &qword_264B49660);
  sub_264A54920(&qword_27FF887B8, sub_2649CB2F0);
  v31 = v41;
  v32 = v43;
  sub_264B40B14();
  sub_2649D04D4(v30, &qword_27FF89DE0, &qword_264B4BC00);

  (*(v44 + 8))(v18, v32);
  swift_allocObject();
  v33 = v42;
  swift_unknownObjectUnownedInit();
  sub_2649CB4C8(&qword_27FF89F98, &qword_27FF89F38, &qword_264B49668);
  v34 = v46;
  v35 = sub_264B40B54();

  (*(v47 + 8))(v31, v34);
  v36 = *(v33 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription);
  *(v33 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription) = v35;
}

void sub_264A509E4()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator;
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator))
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine;
    if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine))
    {
      v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine);
    }

    else
    {
      v5 = sub_264A50E4C();
      v6 = *(v0 + v3);
      *(v2 + v3) = v5;
    }

    v7 = sub_264A79FA4();

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = type metadata accessor for ServerPolicyApplicator();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    v12[3] = 0;

    sub_264B400F4();
    v12[2] = v7;
    v12[4] = sub_264A554E4;
    v12[5] = v8;

    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FF8AE70);
    v14 = sub_264B40944();
    v15 = sub_264B414B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "Starting policy application", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    sub_264B3F3BC();
    v17 = *(v2 + v1);
    *(v2 + v1) = v12;
  }
}

void sub_264A50C00(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4[0] = v1;
  v5 = v2;
  sub_264A50C64(v4);
}

void sub_264A50C64(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FF8AE70);
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    LOBYTE(v12) = v1;
    *(&v12 + 1) = v2;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Orientation availability changed, notifying client: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  *&v12 = v1;
  *(&v12 + 1) = v2;
  v13 = 64;
  sub_264A40100(&v12);
}

void sub_264A50DF4(uint64_t *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_264A4D998(v1);
}

uint64_t sub_264A50E4C()
{
  v1 = sub_264A51028(0xD000000000000021, 0x8000000264B5C710, v0);
  if (v3)
  {
    v4 = 0x43561A8829300000;
  }

  else
  {
    v4 = v1;
  }

  if (v3)
  {
    v5 = 16;
  }

  else
  {
    v5 = v2;
  }

  v6 = sub_264A51028(0xD000000000000021, 0x8000000264B5C740, v0);
  if (v8)
  {
    v9 = 0x94049F30F7200000;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = 97;
  }

  else
  {
    v10 = v7;
  }

  sub_2649CB5C0(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_taskSleepPrimitives, v18);
  v11 = type metadata accessor for MediaExperienceBackedMediaPlaybackStatusPrimitives();
  swift_allocObject();
  v12 = sub_264AFA780();
  v20 = v11;
  v21 = &off_281EE4E98;
  v19 = v12;
  v13 = type metadata accessor for UIDeviceBackedPowerPrimitives();
  swift_allocObject();
  v14 = sub_264B0E248();
  v23 = v13;
  v24 = &off_281EE57E0;
  v22 = v14;
  v17[0] = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
  sub_2649CB4C8(&unk_27FF89EA0, &qword_27FF89E80, &unk_264B51AB0);
  v25 = sub_264B40AB4();
  v26 = v4;
  v27 = v5;
  v28 = v9;
  v29 = v10;
  sub_2649CB564(v18, v17);
  type metadata accessor for ServerPolicyEngine();
  swift_allocObject();
  v15 = sub_264A79C48(v17);
  sub_2649CB510(v18);
  return v15;
}

uint64_t sub_264A51028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives + 24);
  v6 = *(a3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives), v5);
  (*(v6 + 8))(&v14, a1, a2, 1, MEMORY[0x277D83B88], v5, v6);
  if (v15)
  {
    return 0;
  }

  v8 = v14;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FF8AE70);

  v10 = sub_264B40944();
  v11 = sub_264B414B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_2649CC004(a1, a2, &v14);
    *(v12 + 12) = 2050;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_2649C6000, v10, v11, "Policy engine: %{public}s is overridden by user defaults to %{public}ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  return 1000000000000000000 * v8;
}

uint64_t sub_264A51218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v12 = v6;
    v13 = v7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_2649E1260(v6, v7);
    sub_264A380B0(&v12, v5);

    sub_2649D04D4(v5, &unk_27FF899E0, &qword_264B53440);
    return sub_2649E1290(v6, v7);
  }

  return result;
}

id AngelServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AngelServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AngelServer.clientName.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t AngelServer.tearDownFromLiveActivity()()
{
  v1[2] = v0;
  v1[3] = sub_264B41244();
  v1[4] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_264A519A4, v3, v2);
}

uint64_t sub_264A519A4()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Tear down from live activity", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  v0[7] = sub_264B41234();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_264A51B5C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A51B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_264A51CBC, v6, v5);
}

uint64_t sub_264A51CBC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A51D1C()
{
  v1 = v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_264A51D6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return AngelServer.tearDownFromLiveActivity()();
}

void sub_264A51DF8(id a1)
{
  if (a1 >= 7)
  {
  }
}

uint64_t type metadata accessor for AngelServer()
{
  result = qword_27FF89D60;
  if (!qword_27FF89D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A51EA4()
{
  sub_264A0DF00();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264A52108(319, &qword_27FF88BB0, &unk_27FF89D80, &qword_264B45588, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264A52108(319, &unk_27FF897E0, &qword_27FF893A0, &unk_264B44E60, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264A52108(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_264A5216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  if (a4)
  {

    sub_264A187C4(a10, a11, a12, a13);
  }
}

uint64_t sub_264A521E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2649E12C0(a1, a2);
  }

  return a1;
}

uint64_t sub_264A521FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);
  if (v6 <= 0xFB)
  {
    sub_2649E12A4(*(v0 + 32), v6);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_264A52368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A523D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649CD850;

  return sub_264A3C530(a1, v7, v8, v9, v11, v1 + v6, v10);
}

unint64_t sub_264A52574()
{
  result = qword_27FF89DD0;
  if (!qword_27FF89DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89DD0);
  }

  return result;
}

uint64_t sub_264A52624()
{
  sub_264A52680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

void sub_264A52680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  if ((a8 & 0x2000000000000000) != 0)
  {
    sub_264A52734(a1, a2, a3, a4, a5, a6, a7, a8 & 0xDFFFFFFFFFFFFFFFLL, a9, a10, a11, a12, a13);
  }

  else
  {
    sub_264A526A8(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_264A526A8(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 5;
  if (v9 <= 2)
  {
    if (!(a8 >> 5))
    {
    }

    if (v9 != 1)
    {
      return result;
    }

LABEL_10:
  }

  if (v9 == 3)
  {
    goto LABEL_10;
  }

  if (v9 == 4)
  {

    return sub_2649E1290(result, a2);
  }

  return result;
}

void sub_264A52734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  if (!(a8 >> 62))
  {

    sub_264A187C4(a10, a11, a12, a13);
  }
}

uint64_t sub_264A527B4(void *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v75 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v75 - v10;
  v90 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v91 = &off_28765B720;
  v89[0] = a1;
  v12 = (*__swift_project_boxed_opaque_existential_1(v89, v90) + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier);
  v13 = v12[1];
  if (!v13)
  {
    v43 = qword_27FF88408;
    v44 = a1;
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = sub_264B40964();
    __swift_project_value_buffer(v45, qword_27FF8AE70);
    v46 = sub_264B40944();
    v47 = sub_264B41494();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2649C6000, v46, v47, "SceneInteractor does not have targetedDisplayIdentifier, tearing down", v48, 2u);
      MEMORY[0x266749940](v48, -1, -1);
    }

    v49 = 9;
    goto LABEL_20;
  }

  v76 = v11;
  v14 = *v12;
  v15 = qword_27FF88408;
  v16 = a1;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FF8AE70);

  v18 = sub_264B40944();
  v19 = sub_264B41484();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v85[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_2649CC004(v14, v13, v85);
    _os_log_impl(&dword_2649C6000, v18, v19, "SceneInteractor provided displayIdentifier: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x266749940](v21, -1, -1);
    MEMORY[0x266749940](v20, -1, -1);
  }

  v22 = *&a2[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer];
  if (!v22)
  {

    v50 = sub_264B40944();
    v51 = sub_264B41494();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2649C6000, v50, v51, "Missing playback server when trying to connect HID services, tearing down", v52, 2u);
      MEMORY[0x266749940](v52, -1, -1);
    }

    v49 = 10;
LABEL_20:
    *&v85[0] = v49;
    BYTE8(v85[0]) = 0x80;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v53 - 8) + 56))(v7, 1, 1, v53);
    sub_264A380B0(v85, v7);
    sub_2649D04D4(v7, &unk_27FF899E0, &qword_264B53440);
    return __swift_destroy_boxed_opaque_existential_0(v89);
  }

  v77 = a2;

  v23 = sub_264B40944();
  v24 = sub_264B41484();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2649C6000, v23, v24, "Enqueueing known startup events", v25, 2u);
    MEMORY[0x266749940](v25, -1, -1);
  }

  swift_beginAccess();
  v26 = *(v22 + 24);
  *(v22 + 16) = v14;
  *(v22 + 24) = v13;

  v27 = v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  v28 = *(v27 + 24);
  v29 = *(v27 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v30 = *(v29 + 24);

  v30(v14, v13, v28, v29);
  swift_endAccess();
  v31 = v77;
  v32 = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 80];
  v86 = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 64];
  v87 = v32;
  v33 = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32];
  v85[3] = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 48];
  v34 = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16];
  v85[0] = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration];
  v85[1] = v34;
  v84 = MEMORY[0x277D84F90];
  v35 = *&v77[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 96];
  v88 = v35;
  v85[2] = v33;
  if (*(&v34 + 1))
  {
    v36 = *(&v86 + 1);
    v37 = v87;
    v38 = v86;

    sub_264A18764(v36, v37, *(&v37 + 1), v35);
    v39 = sub_264A4DC28(v38);
    sub_2649D7A48(v39);

    sub_264A18764(v36, v37, *(&v37 + 1), v35);
    v40 = sub_264B40944();
    v41 = sub_264B41484();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134349056;
      *(v42 + 4) = *(v38 + 16);
      sub_2649D04D4(v85, &qword_27FF89DC8, &unk_264B494D0);
      _os_log_impl(&dword_2649C6000, v40, v41, "Enqueued %{public}ld HID services", v42, 0xCu);
      MEMORY[0x266749940](v42, -1, -1);
    }

    else
    {
      sub_2649D04D4(v85, &qword_27FF89DC8, &unk_264B494D0);
    }

    v31 = v77;
    if (v37 == 4)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v81 = 0;
      *(&v80 + 1) = 0;
    }

    else
    {
      v54 = swift_allocObject();
      *(v54 + 16) = v36;
      *(v54 + 24) = v37;
      *(v54 + 40) = v35;
      v56 = &off_28765C718;
      v55 = &type metadata for SystemGestureEvent;
    }

    *&v80 = v54;
    v82 = v55;
    v83 = v56;
    sub_264A18764(v36, v37, *(&v37 + 1), v35);
    sub_264A37FAC(&v80);
    sub_2649D04D4(&v80, &qword_27FF89FB0, &qword_264B496A0);
    v57 = *(&v86 + 1);
    v58 = v87;
    v59 = v88;

    sub_264A18764(v57, v58, *(&v58 + 1), v59);
    v60 = sub_264B40944();
    v61 = sub_264B41484();
    sub_2649D04D4(v85, &qword_27FF89DC8, &unk_264B494D0);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v79 = v63;
      *v62 = 136446210;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FB8, &qword_264B496A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FC0, &qword_264B496B0);
      v64 = sub_264B41064();
      v66 = sub_2649CC004(v64, v65, &v79);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_2649C6000, v60, v61, "Enqueue launching payload: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x266749940](v63, -1, -1);
      MEMORY[0x266749940](v62, -1, -1);
    }

    sub_2649D04D4(v85, &qword_27FF89DC8, &unk_264B494D0);
  }

  v67 = v84;
  swift_beginAccess();
  sub_2649D7A48(v67);
  swift_endAccess();
  v68 = sub_264B41274();
  v69 = v76;
  (*(*(v68 - 8) + 56))(v76, 1, 1, v68);
  sub_2649CB5C0(v89, &v80);
  sub_264B41244();

  v70 = v31;
  v71 = sub_264B41234();
  v72 = swift_allocObject();
  v73 = MEMORY[0x277D85700];
  v72[2] = v71;
  v72[3] = v73;
  v72[4] = v22;
  sub_2649D2AAC(&v80, (v72 + 5));
  v72[10] = v70;
  sub_264A10C20(0, 0, v69, &unk_264B49698, v72);

  return __swift_destroy_boxed_opaque_existential_0(v89);
}

uint64_t sub_264A53194(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v35[3] = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v35[4] = &off_28765B720;
  v35[0] = a1;
  v8 = qword_27FF88408;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FF8AE70);
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2649C6000, v11, v12, "1x+1. SceneInteractor is active, starting animation transaction and notifying client", v13, 2u);
    MEMORY[0x266749940](v13, -1, -1);
  }

  v14 = sub_264B40944();
  v15 = sub_264B41474();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "Cancelling device sensor bring up monitoring, sceneInteractor is now active", v16, 2u);
    MEMORY[0x266749940](v16, -1, -1);
  }

  v17 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription;
  if (*(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription))
  {
    v18 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription);

    sub_264B40994();

    v19 = *(a2 + v17);
  }

  *(a2 + v17) = 0;

  v20 = a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_screenContinuityLiveActivityVendor;
  swift_beginAccess();
  if (*(v20 + 24))
  {
    sub_2649CB5C0(v20, &v30);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    (*(v22 + 16))(v33, v21, v22);
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
  }

  v23 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
  swift_beginAccess();
  sub_264A5536C(v33, a2 + v23);
  swift_endAccess();
  v24 = sub_264B41274();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2649CB5C0(v35, &v30);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  sub_2649D2AAC(&v30, (v26 + 5));
  v27 = sub_2649F62D0(0, 0, v7, &unk_264B496C8, v26);
  sub_2649D04D4(v7, &qword_27FF898C0, &unk_264B44190);
  sub_2649D04D4(v33, &unk_27FF89DB0, &unk_264B494A0);
  v28 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask);
  *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask) = v27;

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_264A53554(uint64_t a1, unsigned __int8 a2, uint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v66 - v10;
  v12 = sub_264B40F14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v73 = &off_28765B720;
  v71[0] = a3;
  sub_2649CB2F0();
  v17 = a3;
  *v16 = sub_264B41554();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  LOBYTE(a3) = sub_264B40F34();
  (*(v13 + 8))(v16, v12);
  if (a3)
  {
    if (qword_27FF88408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_264B40964();
  __swift_project_value_buffer(v18, qword_27FF8AE70);
  sub_2649E127C(a1, a2);
  v19 = sub_264B40944();
  v20 = sub_264B41484();
  sub_2649E12C0(a1, a2);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67 = v11;
    v23 = a4;
    v24 = v22;
    *&v68[0] = v22;
    *v21 = 136446210;
    *v70 = a1;
    v70[8] = a2;
    sub_2649E127C(a1, a2);
    v25 = sub_264B41064();
    v27 = sub_2649CC004(v25, v26, v68);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_2649C6000, v19, v20, "SceneInteractor step changed: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    a4 = v23;
    v11 = v67;
    MEMORY[0x266749940](v28, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v56 = sub_264B40944();
          v57 = sub_264B414B4();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_2649C6000, v56, v57, "11. SceneInteractor is ready for HID services to connect, enqueueing startup events", v58, 2u);
            MEMORY[0x266749940](v58, -1, -1);
          }

          v59 = __swift_project_boxed_opaque_existential_1(v71, v72);
          sub_264A527B4(*v59, a4);
          return __swift_destroy_boxed_opaque_existential_0(v71);
        }

        if (a1 != 4)
        {
          v63 = __swift_project_boxed_opaque_existential_1(v71, v72);
          sub_264A53194(*v63, a4);
          return __swift_destroy_boxed_opaque_existential_0(v71);
        }

        v50 = sub_264B40944();
        v51 = sub_264B414B4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_2649C6000, v50, v51, "1x. SceneInteractor is waiting for active, notifying client", v52, 2u);
          MEMORY[0x266749940](v52, -1, -1);
        }

        v49 = 3;
      }

      else
      {
        if (!a1)
        {
          v53 = sub_264B40944();
          v54 = sub_264B41494();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_2649C6000, v53, v54, "Unknown SceneInteractor step, ignoring", v55, 2u);
            MEMORY[0x266749940](v55, -1, -1);
          }

          return __swift_destroy_boxed_opaque_existential_0(v71);
        }

        if (a1 == 1)
        {
          v46 = sub_264B40944();
          v47 = sub_264B414B4();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_2649C6000, v46, v47, "9. SceneInteractor is ready to unlock, notifying client", v48, 2u);
            MEMORY[0x266749940](v48, -1, -1);
          }

          v49 = 1;
        }

        else
        {
          v60 = sub_264B40944();
          v61 = sub_264B414B4();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_2649C6000, v60, v61, "10. SceneInteractor is ready for audio/video streams, notifying client", v62, 2u);
            MEMORY[0x266749940](v62, -1, -1);
          }

          v49 = 2;
        }
      }

      *v70 = v49;
      memset(&v70[8], 0, 48);
      v70[56] = -96;
      sub_264A40100(v70);
      return __swift_destroy_boxed_opaque_existential_0(v71);
    }

    v67 = a4;

    v29 = sub_264B40944();
    v30 = sub_264B41484();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2649C6000, v29, v30, "SceneInteractor invalidated, tearing down", v31, 2u);
      MEMORY[0x266749940](v31, -1, -1);
    }

    if (*(a1 + 16) && (v32 = *(a1 + 40), sub_264B41B84(), sub_264B41084(), v33 = sub_264B41BB4(), v34 = -1 << *(a1 + 32), v35 = v33 & ~v34, ((*(a1 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      while (*(*(a1 + 48) + v35) > 2u || !*(*(a1 + 48) + v35) || *(*(a1 + 48) + v35) == 2)
      {
        v37 = sub_264B41AA4();

        if (v37)
        {
          goto LABEL_44;
        }

        v35 = (v35 + 1) & v36;
        if (((*(a1 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_44:
      sub_2649E12C0(a1, 1u);
      *v70 = 11;
      v70[8] = 0x80;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
      (*(*(v64 - 8) + 56))(v11, 1, 1, v64);
      sub_264A380B0(v70, v11);
      sub_2649D04D4(v11, &unk_27FF899E0, &qword_264B53440);
    }

    else
    {
LABEL_17:
      *v70 = a1;
      v70[8] = 64;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
      (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
      sub_264A380B0(v70, v11);
      sub_2649D04D4(v11, &unk_27FF899E0, &qword_264B53440);
      sub_2649E1290(a1, 0x40u);
    }
  }

  else
  {

    v39 = sub_264B40944();
    v40 = sub_264B414B4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v70 = v42;
      *v41 = 136446210;
      sub_264A54FD4();
      v43 = sub_264B41424();
      v45 = sub_2649CC004(v43, v44, v70);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2649C6000, v39, v40, "8.5. SceneInteractor is blocked because: %{public}s, notifying client", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x266749940](v42, -1, -1);
      MEMORY[0x266749940](v41, -1, -1);
    }

    *&v68[0] = a1;
    v69[24] = 32;
    sub_264A40100(v68);
    *v70 = v68[0];
    *&v70[16] = v68[1];
    *&v70[32] = *v69;
    *&v70[41] = *&v69[9];
    sub_264A52520(v70);
  }

  return __swift_destroy_boxed_opaque_existential_0(v71);
}

uint64_t sub_264A53F38(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FC8, &qword_264B496D8);
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FD0, &qword_264B496E0);
  v12 = *(v11 - 8);
  v26 = v11;
  v27 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v31[3] = v16;
  v31[4] = &off_28765B720;
  v31[0] = a1;
  __swift_project_boxed_opaque_existential_1(v31, v16);
  v17 = off_28765B740;
  v18 = a1;
  v29 = v17(v16, &off_28765B720);
  sub_2649CB2F0();
  v19 = sub_264B41554();
  v30 = v19;
  v20 = sub_264B41514();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FD8, &qword_264B496E8);
  sub_2649CB4C8(&qword_27FF89FE0, &qword_27FF89FD8, &qword_264B496E8);
  sub_264A54920(&qword_27FF887B8, sub_2649CB2F0);
  sub_264B40B14();
  sub_2649D04D4(v6, &qword_27FF89DE0, &qword_264B4BC00);

  sub_2649CB4C8(&qword_27FF89FE8, &qword_27FF89FC8, &qword_264B496D8);
  v21 = v25;
  sub_264B40AE4();
  (*(v7 + 8))(v10, v21);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_2649CB4C8(&qword_27FF89FF0, &qword_27FF89FD0, &qword_264B496E0);
  v22 = v26;
  sub_264B40B54();

  (*(v27 + 8))(v15, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020);
  sub_264B40984();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t sub_264A5444C()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A5448C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_2649DEF18(a1, a2);
  }

  return a1;
}

uint64_t sub_264A544A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_264A544EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264A41084(a1, v4, v5, (v1 + 4), v6, v7);
}

void sub_264A545B0(id a1)
{
  if (a1 != 4)
  {
    sub_2649FE684(a1);
  }
}

uint64_t sub_264A545C4(uint64_t a1)
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
  v10[1] = sub_2649CD850;

  return sub_264A423D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264A546E8(uint64_t a1)
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
  v10[1] = sub_2649E0EE4;

  return sub_264A44824(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_264A547BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A54838(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A4A540(a1, v5, v4);
}

uint64_t sub_264A548E0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A54920(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264A54968()
{
  result = qword_27FF89EE0;
  if (!qword_27FF89EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89E88, &qword_264B495E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89EE0);
  }

  return result;
}

uint64_t sub_264A549E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A54A24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B24554(a1, v4, v5, v6);
}

uint64_t sub_264A54AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_264A54B74(unsigned __int8 *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390) - 8) + 80);

  sub_264A4A264(a1);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A54C38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A4A8F0(a1, v5, v4);
}

uint64_t sub_264A54CE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_264A54DDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264A4B0C4(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_264A54F80()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_264A54FD4()
{
  result = qword_27FF89FA0;
  if (!qword_27FF89FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89FA0);
  }

  return result;
}

uint64_t sub_264A55028()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_264A55078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264A4DDF8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_264A55140()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A55188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A551F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_67Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_264A552A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264B2245C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264A5536C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89DB0, &unk_264B494A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A553DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264A55424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264A4F400(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_264A554FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264A55544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264A42F6C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_264A55604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A5563C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_264A556AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264A556EC()
{
  result = qword_27FF8A080;
  if (!qword_27FF8A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A080);
  }

  return result;
}

uint64_t sub_264A55740()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_264A557DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t dispatch thunk of MediaTransportSessionProviding.activate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649E0EE4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MediaTransportSessionProviding.invalidate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return v9(a1, a2);
}

uint64_t sub_264A55B34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_264A55B94()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_264A55BE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_264A55C34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_264A55C94()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_264A55CCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void sub_264A55D14()
{
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FF8AE40);
  oslog = sub_264B40944();
  v1 = sub_264B41494();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "Should be using a subclass", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

void *CATelemetryConsumer.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  return v0;
}

uint64_t CATelemetryConsumer.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_264A55E74()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_264A55EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_264A55F4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void sub_264A560D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_264B408F4();
  v41 = *(v10 - 8);
  isa = v41[8].isa;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v15 = 0x27FF88000uLL;
  if (kdebug_trace())
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AE40);
    v17 = sub_264B40944();
    v18 = sub_264B41494();
    if (os_log_type_enabled(v17, v18))
    {
      v37 = v10;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 67109378;
      *(v19 + 4) = MEMORY[0x266747C70]();
      *(v19 + 8) = 2080;
      v21 = MEMORY[0x266747C70]();
      if (!strerror(v21))
      {
LABEL_29:
        __break(1u);
        return;
      }

      v22 = sub_264B410A4();
      v24 = sub_2649CC004(v22, v23, &v42);

      *(v19 + 10) = v24;
      _os_log_impl(&dword_2649C6000, v17, v18, "SignpostConsumer: kdebug_trace returned %d %s", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);

      v10 = v37;
      v15 = 0x27FF88000;
    }

    else
    {
    }
  }

  if (sub_264B40914())
  {
    LOBYTE(v42) = v14;
    v25 = SignpostCode.signpostName.getter();
    v15 = v26;
    sub_264B408E4();
    v27 = sub_264B40924();
    v28 = sub_264B41584();
    if ((sub_264B41604() & 1) == 0)
    {
LABEL_25:

      (v41[1].isa)(v13, v10);
      return;
    }

    if ((v15 & 1) == 0)
    {
      if (!v25)
      {
        __break(1u);
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    if (v25 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v25 & 0xFFFFF800) == 0xD800)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v25 >> 16 <= 0x10)
      {
        v25 = &v43;
LABEL_24:
        v33 = swift_slowAlloc();
        *v33 = 134218752;
        *(v33 + 4) = a2;
        *(v33 + 12) = 2048;
        v34 = v39;
        *(v33 + 14) = v38;
        *(v33 + 22) = 2048;
        *(v33 + 24) = v34;
        *(v33 + 32) = 2048;
        *(v33 + 34) = v40;
        v35 = sub_264B408D4();
        _os_signpost_emit_with_name_impl(&dword_2649C6000, v27, v28, v35, v25, "param1=%llu, param2=%llu, param3=%llu, param4=%llu", v33, 0x2Au);
        MEMORY[0x266749940](v33, -1, -1);
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_13:
  if (*(v15 + 1016) != -1)
  {
    swift_once();
  }

  v29 = sub_264B40964();
  __swift_project_value_buffer(v29, qword_27FF8AE40);
  v41 = sub_264B40944();
  v30 = sub_264B41494();
  if (os_log_type_enabled(v41, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2649C6000, v41, v30, "signposter is not activated", v31, 2u);
    MEMORY[0x266749940](v31, -1, -1);
  }

  v32 = v41;
}

uint64_t sub_264A5652C()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit21SignpostingPrimitives_signposter;
  v2 = sub_264B40934();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostingPrimitives()
{
  result = qword_27FF8A098;
  if (!qword_27FF8A098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A5661C()
{
  result = sub_264B40934();
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

BOOL sub_264A566AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_264B41044();

    sub_264B41074();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  if (!has_internal_ui)
  {
    return 0;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_264B41014();
  v5 = [v3 integerForKey_];

  return v5 == 1;
}

uint64_t sub_264A567D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = sub_264B3FFD4();
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A56948, 0, 0);
}

uint64_t sub_264A56948()
{
  v96 = v0;
  v1 = v0[13];
  v2 = (*(v0[12] + 104))(v0[11]);
  if (v2)
  {

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = v0[13];
    v4 = v0[10];
    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71D0);
    v6 = v4;
    swift_unknownObjectRetain();
    v7 = sub_264B40944();
    v8 = sub_264B41494();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = v0[13];
    v11 = v0[10];
    v10 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v95 = v13;
    *v12 = 136446466;
    v0[8] = v9;
    swift_unknownObjectRetain();
    v14 = sub_264B41064();
    v16 = sub_2649CC004(v14, v15, &v95);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v0[9] = v11;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v18 = sub_264B41064();
    v20 = sub_2649CC004(v18, v19, &v95);

    *(v12 + 14) = v20;
    v21 = "%{public}s has already interrupted, ignoring: %{public}s";
LABEL_16:
    _os_log_impl(&dword_2649C6000, v7, v8, v21, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
LABEL_17:

    goto LABEL_18;
  }

  v22 = v0[13];
  v23 = *(v0[12] + 48);
  v23(&v95, v0[11]);
  if (v95 == 5)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v24 = v0[13];
    v25 = v0[10];
    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FFA71D0);
    v27 = v25;
    swift_unknownObjectRetain();
    v7 = sub_264B40944();
    v8 = sub_264B41494();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v28 = v0[13];
    v30 = v0[10];
    v29 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v95 = v13;
    *v12 = 136446466;
    v0[6] = v28;
    swift_unknownObjectRetain();
    v31 = sub_264B41064();
    v33 = sub_2649CC004(v31, v32, &v95);

    *(v12 + 4) = v33;
    *(v12 + 12) = 2082;
    v0[7] = v30;
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v35 = sub_264B41064();
    v37 = sub_2649CC004(v35, v36, &v95);

    *(v12 + 14) = v37;
    v21 = "%{public}s is already invalidated, ignoring interruption due to: %{public}s)";
    goto LABEL_16;
  }

  v38 = v0[13];
  (v23)(&v95, v0[11], v0[12]);
  if (v95 == 4)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v39 = v0[13];
    v40 = v0[10];
    v41 = sub_264B40964();
    __swift_project_value_buffer(v41, qword_27FFA71D0);
    v42 = v40;
    swift_unknownObjectRetain();
    v7 = sub_264B40944();
    v8 = sub_264B41494();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v43 = v0[13];
    v45 = v0[10];
    v44 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v95 = v13;
    *v12 = 136446466;
    v0[4] = v43;
    swift_unknownObjectRetain();
    v46 = sub_264B41064();
    v48 = sub_2649CC004(v46, v47, &v95);

    *(v12 + 4) = v48;
    *(v12 + 12) = 2082;
    v0[5] = v45;
    v49 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v50 = sub_264B41064();
    v52 = sub_2649CC004(v50, v51, &v95);

    *(v12 + 14) = v52;
    v21 = "%{public}s is already tearing down, ignoring interruption due to: %{public}s)";
    goto LABEL_16;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v60 = v0[20];
  v59 = v0[21];
  v61 = v0[19];
  v62 = v0[10];
  v63 = sub_264B40964();
  __swift_project_value_buffer(v63, qword_27FFA71D0);
  v64 = sub_264B41494();
  v0[2] = v62;
  v65 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v66 = sub_264B41064();
  v68 = v67;
  sub_264B3FF94();
  v69 = sub_264B3FFA4();
  v71 = v70;
  (*(v60 + 8))(v59, v61);
  v72 = sub_264B40944();
  if (os_log_type_enabled(v72, v64))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v95 = v74;
    *v73 = 136446978;
    v75 = sub_2649CC004(v69, v71, &v95);

    *(v73 + 4) = v75;
    *(v73 + 12) = 2050;
    *(v73 + 14) = 60;
    *(v73 + 22) = 2082;
    *(v73 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5A2B0, &v95);
    *(v73 + 32) = 2082;
    *(v73 + 34) = sub_2649CC004(v66, v68, &v95);
    _os_log_impl(&dword_2649C6000, v72, v64, "%{public}s:%{public}ld %{public}s %{public}s", v73, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v74, -1, -1);
    MEMORY[0x266749940](v73, -1, -1);
  }

  else
  {
  }

  v76 = v0[18];
  v77 = v0[14];
  v78 = v0[15];
  v79 = v0[12];
  v80 = v0[10];
  v81 = v0[11];
  v82 = *(v79 + 112);
  v83 = v80;
  v82(v80, v81, v79);
  (*(v79 + 56))(v81, v79);
  v84 = (*(v78 + 48))(v76, 1, v77);
  v85 = v0[18];
  if (v84)
  {
    sub_264A58C44(v0[18]);
  }

  else
  {
    v87 = v0[15];
    v86 = v0[16];
    v88 = v0[14];
    v89 = v0[10];
    (*(v87 + 16))(v86, v0[18], v88);
    sub_264A58C44(v85);
    v0[3] = v80;
    v90 = v89;
    sub_264B41384();
    (*(v87 + 8))(v86, v88);
  }

  v91 = v0[17];
  v93 = v0[12];
  v92 = v0[13];
  v94 = v0[11];
  (*(v0[15] + 56))(v91, 1, 1, v0[14]);
  (*(v93 + 64))(v91, v94, v93);
LABEL_18:
  v53 = v0[21];
  v54 = v0[17];
  v55 = v0[18];
  v56 = v0[16];

  v57 = v0[1];

  return v57();
}

uint64_t sub_264A5720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649E0EE4;

  return sub_264A567D8(a1, a2, a3);
}

uint64_t sub_264A572B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264A57374;

  return sub_264A57478(a1, a2, a3, a4);
}

uint64_t sub_264A57374(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_264A57478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_264B3FFD4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A57540, 0, 0);
}

uint64_t sub_264A57540()
{
  v32 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v31);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 105;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001CLL, 0x8000000264B5C920, v31);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = objc_allocWithZone(MEMORY[0x277CE5708]);
  sub_2649DEF18(v14, v13);
  v16 = sub_264A58B84();
  v0[10] = v16;
  v0[11] = 0;
  v17 = v0[6];
  v30 = v0[5];
  v18 = v0[4];
  v19 = v16;
  sub_2649DEF6C(v0[2], v0[3]);
  v20 = *(v30 + 32);
  v21 = v19;
  v20(v19, v18, v30);
  (*(v30 + 88))(1, v18);
  v22 = *(v30 + 144);
  v29 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[12] = v24;
  *v24 = v0;
  v24[1] = sub_264A57A44;
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[4];

  return v29(v27, v25);
}

uint64_t sub_264A57A44()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A57B40, 0, 0);
}

uint64_t sub_264A57B40()
{
  v1 = v0[10];
  v2 = [v1 answer];
  v3 = sub_264B40024();
  v5 = v4;

  v6 = v0[9];

  v7 = v0[1];

  return v7(v3, v5);
}

uint64_t sub_264A57BE4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A57CE0, 0, 0);
}

uint64_t sub_264A57CE0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0, 0xF000000000000000);
}

uint64_t sub_264A57D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649CD850;

  return sub_264A57E0C(a1, a2, a3, a4);
}

uint64_t sub_264A57E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_264B3FFD4();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A57F00, 0, 0);
}

uint64_t sub_264A57F00()
{
  v52 = v0;
  v51[1] = *MEMORY[0x277D85DE8];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v51);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 123;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001DLL, 0x8000000264B5C900, v51);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[7];
  v14 = (*(v0[6] + 24))(v0[5]);
  v0[11] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = v0[3];
    v17 = v0[4];
    v18 = sub_264B40014();
    v0[2] = 0;
    v19 = [v15 setAnswer:v18 withError:v0 + 2];

    v20 = v0[2];
    if (v19)
    {
      v21 = v0[7];
      v48 = v0[6];
      v22 = v0[5];
      v23 = *(v48 + 88);
      v24 = v20;
      v23(1, v22, v48);
      v46 = (*(v48 + 144) + **(v48 + 144));
      v25 = *(*(v48 + 144) + 4);
      v26 = swift_task_alloc();
      v0[12] = v26;
      *v26 = v0;
      v26[1] = sub_264A58528;
      v27 = v0[6];
      v28 = v0[7];
      v29 = v0[5];
      v30 = *MEMORY[0x277D85DE8];

      return v46(v29, v27);
    }

    v50 = v0[6];
    v40 = v20;
    v35 = sub_264B3FF84();
    v0[15] = v35;

    swift_willThrow();
    v47 = (*(v50 + 128) + **(v50 + 128));
    v41 = *(*(v50 + 128) + 4);
    v38 = swift_task_alloc();
    v0[16] = v38;
    *v38 = v0;
    v39 = sub_264A58844;
  }

  else
  {
    v32 = sub_264B40944();
    v33 = sub_264B41494();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2649C6000, v32, v33, "Negotiator is not available", v34, 2u);
      MEMORY[0x266749940](v34, -1, -1);
    }

    v49 = v0[6];

    sub_264A02DF0();
    v35 = swift_allocError();
    v0[13] = v35;
    *v36 = 5;
    v47 = (*(v49 + 128) + **(v49 + 128));
    v37 = *(*(v49 + 128) + 4);
    v38 = swift_task_alloc();
    v0[14] = v38;
    *v38 = v0;
    v39 = sub_264A586E4;
  }

  v38[1] = v39;
  v42 = v0[6];
  v43 = v0[7];
  v44 = v0[5];
  v45 = *MEMORY[0x277D85DE8];

  return v47(v35, v44, v42);
}

uint64_t sub_264A58528()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 96);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A58650, 0, 0);
}

uint64_t sub_264A58650()
{
  v5 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 80);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_264A586E4()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v9 = *v0;

  v4 = *(v1 + 80);

  v5 = *(v9 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_264A58844()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 128);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A5896C, 0, 0);
}

uint64_t sub_264A5896C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);

  v2 = *(v0 + 80);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_264A58A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264A58CAC;

  return sub_264A57478(a1, a2, a3, a4);
}

uint64_t sub_264A58AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return sub_264A57E0C(a1, a2, a3, a4);
}

id sub_264A58B84()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_264B40014();
  v7[0] = 0;
  v2 = [v0 initWithOffer:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_264B3FF84();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_264A58C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_264A58CB0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_264A58CFC(void *a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  [v4 removeFromSuperlayer];
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    [v1 addSublayer_];
  }
}

void (*sub_264A58D98(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_264A58E34;
}

void sub_264A58E34(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {
    v6 = v3;
    sub_264A58CFC(v3);
  }

  else
  {
    sub_264A58CFC(*(*a1 + 24));
  }

  free(v2);
}

void sub_264A58EA0()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v34, sel_layoutSublayers);
  v1 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v35.origin.x = v5;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    rect = CGRectGetWidth(v35);
    v27 = v5;
    v36.origin.x = v5;
    v36.origin.y = v7;
    v28 = v11;
    v36.size.width = v9;
    v36.size.height = v11;
    v20 = rect / CGRectGetHeight(v36);
    v37.origin.x = v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v19;
    Width = CGRectGetWidth(v37);
    v38.origin.x = v13;
    v38.origin.y = v15;
    v38.size.width = v17;
    v38.size.height = v19;
    if (v20 >= Width / CGRectGetHeight(v38))
    {
      v41.origin.x = v27;
      v41.origin.y = v7;
      v41.size.width = v9;
      v41.size.height = v28;
      Height = CGRectGetWidth(v41);
      v42.origin.x = v13;
      v42.origin.y = v15;
      v42.size.width = v17;
      v42.size.height = v19;
      v23 = CGRectGetWidth(v42);
    }

    else
    {
      v39.origin.x = v27;
      v39.origin.y = v7;
      v39.size.width = v9;
      v39.size.height = v28;
      Height = CGRectGetHeight(v39);
      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      v23 = CGRectGetHeight(v40);
    }

    CGAffineTransformMakeScale(&v32, Height / v23, Height / v23);
    m21 = v32.m21;
    m22 = v32.m22;
    v29 = *&v32.m13;
    recta = *&v32.m11;
    [v3 setGeometryFlipped_];
    *&m.c = v29;
    *&m.a = recta;
    m.tx = m21;
    m.ty = m22;
    CATransform3DMakeAffineTransform(&v32, &m);
    [v3 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v43);
    [v0 bounds];
    [v3 setPosition_];
  }
}

id CAPackageViewLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAPackageViewLayer.init()()
{
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CAPackageViewLayer.__allocating_init(layer:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id CAPackageViewLayer.init(layer:)(uint64_t *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_264B41A94();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CAPackageViewLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id CAPackageViewLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CAPackageViewLayer.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAPackageViewLayer();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CAPackageViewLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264A59510@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_264A59578(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_264A58CFC(v2);
}

uint64_t sub_264A5966C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return sub_264A59FDC(a1, a2, a3, a4);
}

uint64_t sub_264A5973C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a2;
  *(v5 + 232) = a3;
  *(v5 + 320) = a1;
  v6 = sub_264B3FFD4();
  *(v5 + 256) = v6;
  v7 = *(v6 - 8);
  *(v5 + 264) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A59804, v4, 0);
}

uint64_t sub_264A59804()
{
  v33 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v32);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 70;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000011, 0x8000000264B5C9B0, v32);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 320);
  v15 = sub_264AA0BE0();
  *(v0 + 280) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  *(inited + 32) = 1701869940;
  v17 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (v14 <= 1)
  {
    v18 = 0xE700000000000000;
    if (v14)
    {
      v19 = 0x646570706F7473;
    }

    else
    {
      v19 = 0x64657472617473;
    }
  }

  else if (v14 == 2)
  {
    v18 = 0x8000000264B58C30;
    v19 = 0xD000000000000019;
  }

  else if (v14 == 3)
  {
    v18 = 0x8000000264B58C50;
    v19 = 0xD000000000000011;
  }

  else
  {
    v19 = 0x746169746F67656ELL;
    v18 = 0xEF617461446E6F69;
  }

  v20 = *(v0 + 224);
  v21 = *(v0 + 320);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v19;
  *(inited + 56) = v18;
  v22 = sub_264A24308(inited);
  swift_setDeallocating();
  sub_2649D04D4(v17, &qword_27FF89220, &qword_264B48430);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = v22;
  sub_264A5B9D0(v20, sub_264A5B684, 0, isUniquelyReferenced_nonNull_native, v32);

  v24 = v32[0];
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  v27 = sub_264B41014();
  *(v0 + 288) = v27;

  sub_264AB4744(v24);

  v28 = sub_264B40F54();
  *(v0 + 296) = v28;

  v29 = sub_264B41014();
  *(v0 + 304) = v29;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_264A59D98;
  v30 = swift_continuation_init();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  *(v0 + 160) = MEMORY[0x277D85DD0];
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_2649F4D64;
  *(v0 + 184) = &block_descriptor_24;
  *(v0 + 192) = v30;
  [v15 sendEventID:v27 event:v28 destinationID:v29 options:0 completion:v0 + 160];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264A59D98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 248);
  if (v3)
  {
    v5 = sub_264A59F40;
  }

  else
  {
    v5 = sub_264A59EB8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A59EB8()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264A59F40()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[39];

  return v7();
}

uint64_t sub_264A59FDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a2;
  *(v5 + 232) = a3;
  *(v5 + 320) = a1;
  v6 = sub_264B3FFD4();
  *(v5 + 256) = v6;
  v7 = *(v6 - 8);
  *(v5 + 264) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A5A0A4, v4, 0);
}

uint64_t sub_264A5A0A4()
{
  v37 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v36);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 70;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000011, 0x8000000264B5C9B0, v36);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(*(v0 + 248) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  *(v0 + 280) = v13;
  if (v13)
  {
    v14 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 1701869940;
    v16 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    if (v14 <= 1)
    {
      v17 = 0xE700000000000000;
      if (v14)
      {
        v18 = 0x646570706F7473;
      }

      else
      {
        v18 = 0x64657472617473;
      }
    }

    else if (v14 == 2)
    {
      v17 = 0x8000000264B58C30;
      v18 = 0xD000000000000019;
    }

    else if (v14 == 3)
    {
      v17 = 0x8000000264B58C50;
      v18 = 0xD000000000000011;
    }

    else
    {
      v18 = 0x746169746F67656ELL;
      v17 = 0xEF617461446E6F69;
    }

    v23 = *(v0 + 224);
    v24 = *(v0 + 320);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v17;
    v25 = inited;
    v26 = v13;
    v27 = sub_264A24308(v25);
    swift_setDeallocating();
    sub_2649D04D4(v16, &qword_27FF89220, &qword_264B48430);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v27;
    sub_264A5B9D0(v23, sub_264A5B684, 0, isUniquelyReferenced_nonNull_native, v36);

    v29 = v36[0];
    v31 = *(v0 + 232);
    v30 = *(v0 + 240);
    v32 = sub_264B41014();
    *(v0 + 288) = v32;

    sub_264AB4744(v29);

    v33 = sub_264B40F54();
    *(v0 + 296) = v33;

    v34 = sub_264B41014();
    *(v0 + 304) = v34;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_264A5A6C8;
    v35 = swift_continuation_init();
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    *(v0 + 160) = MEMORY[0x277D85DD0];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_2649F4D64;
    *(v0 + 184) = &block_descriptor_12;
    *(v0 + 192) = v35;
    [v26 sendEventID:v32 event:v33 destinationID:v34 options:0 completion:v0 + 160];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2649FEC60();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = *(v0 + 272);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_264A5A6C8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 248);
  if (v3)
  {
    v5 = sub_264A5A870;
  }

  else
  {
    v5 = sub_264A5A7E8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A5A7E8()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264A5A870()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  swift_willThrow();

  v6 = v0[39];
  v7 = v0[34];

  v8 = v0[1];

  return v8();
}

uint64_t sub_264A5A904(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649E0EE4;

  return (sub_264A5AF18)(v6, a2, a3);
}

uint64_t sub_264A5A9C8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;
  *(v4 + 352) = a2;
  *(v4 + 440) = a1;
  v5 = sub_264B3FFD4();
  *(v4 + 376) = v5;
  v6 = *(v5 - 8);
  *(v4 + 384) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A5AA90, v3, 0);
}

uint64_t sub_264A5AA90()
{
  v27 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v26);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 83;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001FLL, 0x8000000264B5C990, &v26);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 368);
  v25 = *(v0 + 360);
  v24 = *(v0 + 352);
  v14 = *(v0 + 440);
  v15 = sub_264AA0BE0();
  *(v0 + 400) = v15;
  v16 = sub_264B41014();
  *(v0 + 408) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  *(v0 + 320) = 1701869940;
  *(v0 + 328) = 0xE400000000000000;
  v18 = MEMORY[0x277D837D0];
  sub_264B416F4();
  *(inited + 96) = v18;
  *(inited + 72) = 0xD000000000000011;
  *(inited + 80) = 0x8000000264B58C50;
  *(v0 + 336) = 0x79546D6165727473;
  *(v0 + 344) = 0xEA00000000006570;
  sub_264B416F4();
  v19 = 0x6F69647561;
  if (v14)
  {
    v19 = 0x6F65646976;
  }

  *(inited + 168) = v18;
  *(inited + 144) = v19;
  *(inited + 152) = 0xE500000000000000;
  sub_264A240D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
  swift_arrayDestroy();
  v20 = sub_264B40F54();
  *(v0 + 416) = v20;

  v21 = sub_264B41014();
  *(v0 + 424) = v21;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2649EB72C;
  v22 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_2649F4D64;
  *(v0 + 280) = &block_descriptor_18_0;
  *(v0 + 288) = v22;
  [v15 sendEventID:v16 event:v20 destinationID:v21 options:0 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264A5AF18(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;
  *(v4 + 352) = a2;
  *(v4 + 440) = a1;
  v5 = sub_264B3FFD4();
  *(v4 + 376) = v5;
  v6 = *(v5 - 8);
  *(v4 + 384) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A5AFE0, v3, 0);
}

uint64_t sub_264A5AFE0()
{
  v30 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v29);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 83;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001FLL, 0x8000000264B5C990, v29);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(*(v0 + 368) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  *(v0 + 400) = v13;
  if (v13)
  {
    v14 = *(v0 + 352);
    v27 = *(v0 + 360);
    v15 = *(v0 + 440);
    v28 = v13;
    v16 = sub_264B41014();
    *(v0 + 408) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46A70;
    *(v0 + 320) = 1701869940;
    *(v0 + 328) = 0xE400000000000000;
    v18 = MEMORY[0x277D837D0];
    sub_264B416F4();
    *(inited + 96) = v18;
    *(inited + 72) = 0xD000000000000011;
    *(inited + 80) = 0x8000000264B58C50;
    *(v0 + 336) = 0x79546D6165727473;
    *(v0 + 344) = 0xEA00000000006570;
    sub_264B416F4();
    v19 = 0x6F69647561;
    if (v15)
    {
      v19 = 0x6F65646976;
    }

    *(inited + 168) = v18;
    *(inited + 144) = v19;
    *(inited + 152) = 0xE500000000000000;
    sub_264A240D0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v20 = sub_264B40F54();
    *(v0 + 416) = v20;

    v21 = sub_264B41014();
    *(v0 + 424) = v21;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2649EAEB4;
    v22 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_2649F4D64;
    *(v0 + 280) = &block_descriptor_9;
    *(v0 + 288) = v22;
    [v28 sendEventID:v16 event:v20 destinationID:v21 options:0 completion:v0 + 256];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2649FEC60();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    v24 = *(v0 + 392);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_264A5B4F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return sub_264A5973C(a1, a2, a3, a4);
}

uint64_t sub_264A5B5C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return sub_264A5A9C8(v6, a2, a3);
}

uint64_t sub_264A5B684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2649C964C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_264A5B6D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2649C964C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_264A23FD8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_2649D04D4(v22, &qword_27FF8A0B0, &unk_264B49928);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_264A5B830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_264A1FB04(*(v3 + 48) + 40 * v13, &v18);
    sub_2649C964C(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_264A23FD8(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_2649D04D4(&v18, &qword_27FF8A0B8, qword_264B49950);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_264A5B9D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_264A5B6D0(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_264A23FD8(v49, v47);
  v14 = *a5;
  result = sub_264A20ACC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_264A20FA0(v20, a4 & 1);
    v22 = *a5;
    result = sub_264A20ACC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_264B41AE4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_264A23238();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_2649C964C(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_0(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0((v26 + v25));
    sub_264A23FD8(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_264A23FD8(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_264A5B6D0(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_264A23FD8(v49, v47);
        v35 = *a5;
        result = sub_264A20ACC(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_264A20FA0(v39, 1);
          v40 = *a5;
          result = sub_264A20ACC(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_2649C964C(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_0(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0((v34 + v33));
          sub_264A23FD8(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_264A23FD8(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_264A5B6D0(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_264A0E7A0();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t MockFeatureFlagPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_264A24768(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_264A5BDB8(char *a1, char a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_264A22F68(a2, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_264A5BE40(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_264A20BD8(v2), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + v4);
  }

  else
  {
    return 1;
  }
}

uint64_t MockFeatureFlagPrimitives.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MockFeatureFlagPrimitives.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.__allocating_init(userDefaults:timeoutPrimitives:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2649D2AAC(a1, v4 + 16);
  v5 = *(a2 + 80);
  *(v4 + 120) = *(a2 + 64);
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 56) = *a2;
  *(v4 + 72) = v6;
  v7 = *(a2 + 48);
  *(v4 + 88) = *(a2 + 32);
  *(v4 + 168) = *(a2 + 112);
  *(v4 + 104) = v7;
  return v4;
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.init(userDefaults:timeoutPrimitives:)(__int128 *a1, uint64_t a2)
{
  sub_2649D2AAC(a1, v2 + 16);
  v4 = *(a2 + 80);
  *(v2 + 120) = *(a2 + 64);
  *(v2 + 136) = v4;
  *(v2 + 152) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v2 + 56) = *a2;
  *(v2 + 72) = v5;
  v6 = *(a2 + 48);
  *(v2 + 88) = *(a2 + 32);
  *(v2 + 168) = *(a2 + 112);
  *(v2 + 104) = v6;
  return v2;
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2649D2BB4(v0 + 56);
  return v0;
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2649D2BB4(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.createMediaTransportClientSession(continuityDevice:sessionConfig:discoveryTimeout:discoveryBluetoothRSSIThreshold:telemetry:)(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, void *a4, double a5)
{
  v10 = *a2;
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  v13 = (*(v12 + 24))(0xD000000000000016, 0x8000000264B5A720, 1, v11, v12);
  if (v13)
  {
    v46 = a4;
    v14 = v5[10];
    v15 = __swift_project_boxed_opaque_existential_1(v5 + 7, v14);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v19);
    if (sub_264B41644() < 65)
    {
      v22 = sub_264B41654();
      v45 = v10;
      v23 = v22;
      v24 = sub_264B41634();
      (*(v16 + 8))(v19, v14);
      v20 = v24;
      v10 = v45;
      if ((v23 & 1) == 0)
      {
        v20 = v24;
      }
    }

    else
    {
      sub_2649D376C();
      sub_2649D37C0();
      sub_264B40F44();
      (*(v16 + 8))(v19, v14);
      v20 = *v47;
    }

    v21 = *&v20;
    a4 = v46;
  }

  else
  {
    v21 = 0;
  }

  if (v10)
  {
    v25 = 512;
  }

  else
  {
    v25 = 0x1000000;
  }

  v26 = type metadata accessor for RapportBackedMediaTransportDeviceDiscoverer();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_264B02258(a3, 0, v25, a5);
  v30 = *a1;
  v31 = a1[1];
  v47[3] = v26;
  v47[4] = &off_28765F938;
  v47[0] = v29;
  v32 = type metadata accessor for MediaTransportClientSession();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v47, v26);
  v37 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v44[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v40 + 16))(v39);
  v41 = *v39;

  v42 = sub_264A5C500(1, v30, v31, v41, a4, v21, ((v13 & 1) == 0) << 8, v35);
  __swift_destroy_boxed_opaque_existential_0(v47);
  sub_264A5CB50(&qword_27FF8A0C0, type metadata accessor for MediaTransportClientSession);
  return v42;
}

uint64_t sub_264A5C500(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v51 = a7;
  v49 = a5;
  v50 = a6;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v10 = sub_264B3FFD4();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_264B41544();
  v13 = *(v42 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v42);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264B414F4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_264B40EE4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v54 = type metadata accessor for RapportBackedMediaTransportDeviceDiscoverer();
  v55 = &off_28765F938;
  *&v53 = a4;
  swift_defaultActor_initialize();
  sub_2649CB2F0();
  sub_264B40ED4();
  v52 = MEMORY[0x277D84F90];
  sub_264A5CB50(&qword_27FF88CA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_264A5CB98();
  sub_264B41684();
  (*(v13 + 104))(v16, *MEMORY[0x277D85260], v42);
  *(a8 + 184) = sub_264B41574();
  *(a8 + 192) = 0;
  *(a8 + 200) = MEMORY[0x277D84FA0];
  v21 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID;
  v22 = sub_264B40104();
  (*(*(v22 - 8) + 56))(a8 + v21, 1, 1, v22);
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation) = 0;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  (*(*(v24 - 8) + 56))(a8 + v23, 1, 1, v24);
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_didRemoteStop) = 0;
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState) = 0;
  v25 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
  v26 = MEMORY[0x277D84F90];
  *(a8 + v25) = sub_264A2420C(MEMORY[0x277D84F90]);
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations) = v26;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v27 = sub_264B40964();
  __swift_project_value_buffer(v27, qword_27FFA71D0);
  v28 = sub_264B41484();
  v29 = v43;
  sub_264B3FF94();
  v30 = sub_264B3FFA4();
  v32 = v31;
  (*(v44 + 8))(v29, v45);

  v33 = sub_264B40944();

  if (os_log_type_enabled(v33, v28))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136446722;
    v36 = sub_2649CC004(v30, v32, &v52);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2050;
    *(v34 + 14) = 126;
    *(v34 + 22) = 2082;
    *(v34 + 24) = sub_2649CC004(0xD000000000000043, 0x8000000264B5CB20, &v52);
    _os_log_impl(&dword_2649C6000, v33, v28, "%{public}s:%{public}ld %{public}s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v35, -1, -1);
    MEMORY[0x266749940](v34, -1, -1);
  }

  else
  {
  }

  *(a8 + 112) = v46 & 1;
  v37 = v48;
  *(a8 + 120) = v47;
  *(a8 + 128) = v37;
  sub_2649D2AAC(&v53, a8 + 136);
  v38 = v50;
  *(a8 + 176) = v49;
  if ((v51 & 0x100) != 0)
  {
    v38 = 0;
  }

  v39 = v51 | BYTE1(v51) & 1;
  v40 = a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_avStreamActivationDelay;
  *v40 = v38;
  *(v40 + 8) = v39 & 1;
  return a8;
}

uint64_t sub_264A5CB50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264A5CB98()
{
  result = qword_27FF88CB0;
  if (!qword_27FF88CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88CA8, &unk_264B471C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88CB0);
  }

  return result;
}

uint64_t NotifyBackedRTIStateCoordinator.NotifyBackedRTIStateCoordinatorError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

ScreenSharingKit::NotifyBackedRTIStateCoordinator __swiftcall NotifyBackedRTIStateCoordinator.init()()
{
  *v0 = 0xD000000000000026;
  v0[1] = 0x8000000264B5CB70;
  return result;
}

BOOL NotifyBackedRTIStateCoordinator.isRTIEnabled.getter()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  out_token = 0;
  v3 = sub_264B41074();
  v4 = notify_register_check((v3 + 32), &out_token);

  if (v4)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AEB8);
    v6 = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_2649C6000, v6, v7, "Registering token for RTI failed with status: %u", v8, 8u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    sub_264A5D2DC();
    swift_allocError();
    *v9 = 0;
  }

  else
  {
    state64 = 0;
    if (notify_get_state(out_token, &state64))
    {
      v10 = state64 != 0;
      goto LABEL_10;
    }

    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FF8AEB8);
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      _os_log_impl(&dword_2649C6000, v14, v15, "Getting state for RTI failed with status: %u", v16, 8u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    sub_264A5D2DC();
    swift_allocError();
    *v17 = 1;
  }

  swift_willThrow();
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NotifyBackedRTIStateCoordinator.setIsRTIEnabled(_:)(Swift::Bool a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  out_token = 0;
  v5 = sub_264B41074();
  v6 = notify_register_check((v5 + 32), &out_token);

  if (v6)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FF8AEB8);
    v8 = sub_264B40944();
    v9 = sub_264B41494();
    if (!os_log_type_enabled(v8, v9))
    {
      v11 = 0;
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_2649C6000, v8, v9, "Registering token for RTI failed with status: %u", v10, 8u);
    v11 = 0;
LABEL_11:
    MEMORY[0x266749940](v10, -1, -1);
LABEL_19:

    sub_264A5D2DC();
    swift_allocError();
    *v21 = v11;
    swift_willThrow();
    goto LABEL_20;
  }

  v12 = notify_set_state(out_token, a1);
  if (v12)
  {
    v13 = v12;
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FF8AEB8);
    v8 = sub_264B40944();
    v15 = sub_264B41494();
    if (!os_log_type_enabled(v8, v15))
    {
      v11 = 2;
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v8, v15, "Setting state for RTI failed with status: %u", v10, 8u);
    v11 = 2;
    goto LABEL_11;
  }

  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AEB8);
  v17 = sub_264B40944();
  v18 = sub_264B414B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_2649CC004(0xD000000000000013, 0x8000000264B5CBA0, v24);
    *(v19 + 12) = 1024;
    *(v19 + 14) = a1;
    _os_log_impl(&dword_2649C6000, v17, v18, "%s successfully set rti enabled state to %{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

unint64_t sub_264A5D2DC()
{
  result = qword_27FF8A0C8;
  if (!qword_27FF8A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0C8);
  }

  return result;
}

unint64_t sub_264A5D334()
{
  result = qword_27FF8A0D0;
  if (!qword_27FF8A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0D0);
  }

  return result;
}

uint64_t sub_264A5D3B8(uint64_t a1)
{
  v2 = sub_264A5E128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A5D3F4(uint64_t a1)
{
  v2 = sub_264A5E128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A5D43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}